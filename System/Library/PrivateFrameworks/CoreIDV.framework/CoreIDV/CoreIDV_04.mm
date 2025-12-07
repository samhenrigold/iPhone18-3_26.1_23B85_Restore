uint64_t storeEnumTagSinglePayload for IdentityDocumentPresentmentConfiguration.Credential.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21CCF5E9C()
{
  result = qword_27CE19E68;
  if (!qword_27CE19E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E68);
  }

  return result;
}

unint64_t sub_21CCF5EF4()
{
  result = qword_27CE19E70;
  if (!qword_27CE19E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E70);
  }

  return result;
}

unint64_t sub_21CCF5F4C()
{
  result = qword_27CE19E78;
  if (!qword_27CE19E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E78);
  }

  return result;
}

unint64_t sub_21CCF5FA4()
{
  result = qword_27CE19E80;
  if (!qword_27CE19E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E80);
  }

  return result;
}

unint64_t sub_21CCF5FFC()
{
  result = qword_27CE19E88;
  if (!qword_27CE19E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E88);
  }

  return result;
}

unint64_t sub_21CCF6054()
{
  result = qword_27CE19E90;
  if (!qword_27CE19E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E90);
  }

  return result;
}

unint64_t sub_21CCF60AC()
{
  result = qword_27CE19E98;
  if (!qword_27CE19E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19E98);
  }

  return result;
}

unint64_t sub_21CCF6104()
{
  result = qword_27CE19EA0;
  if (!qword_27CE19EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EA0);
  }

  return result;
}

unint64_t sub_21CCF615C()
{
  result = qword_27CE19EA8;
  if (!qword_27CE19EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EA8);
  }

  return result;
}

unint64_t sub_21CCF61B4()
{
  result = qword_27CE19EB0;
  if (!qword_27CE19EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EB0);
  }

  return result;
}

unint64_t sub_21CCF620C()
{
  result = qword_27CE19EB8;
  if (!qword_27CE19EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EB8);
  }

  return result;
}

unint64_t sub_21CCF6264()
{
  result = qword_27CE19EC0;
  if (!qword_27CE19EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EC0);
  }

  return result;
}

unint64_t sub_21CCF62BC()
{
  result = qword_27CE19EC8;
  if (!qword_27CE19EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EC8);
  }

  return result;
}

unint64_t sub_21CCF6314()
{
  result = qword_27CE19ED0;
  if (!qword_27CE19ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19ED0);
  }

  return result;
}

unint64_t sub_21CCF636C()
{
  result = qword_27CE19ED8;
  if (!qword_27CE19ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19ED8);
  }

  return result;
}

unint64_t sub_21CCF63C4()
{
  result = qword_27CE19EE0;
  if (!qword_27CE19EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EE0);
  }

  return result;
}

unint64_t sub_21CCF641C()
{
  result = qword_27CE19EE8;
  if (!qword_27CE19EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EE8);
  }

  return result;
}

unint64_t sub_21CCF6474()
{
  result = qword_27CE19EF0;
  if (!qword_27CE19EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EF0);
  }

  return result;
}

unint64_t sub_21CCF64CC()
{
  result = qword_27CE19EF8;
  if (!qword_27CE19EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19EF8);
  }

  return result;
}

unint64_t sub_21CCF6524()
{
  result = qword_27CE19F00;
  if (!qword_27CE19F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F00);
  }

  return result;
}

unint64_t sub_21CCF657C()
{
  result = qword_27CE19F08;
  if (!qword_27CE19F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F08);
  }

  return result;
}

unint64_t sub_21CCF65D4()
{
  result = qword_27CE19F10;
  if (!qword_27CE19F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F10);
  }

  return result;
}

unint64_t sub_21CCF662C()
{
  result = qword_27CE19F18;
  if (!qword_27CE19F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F18);
  }

  return result;
}

unint64_t sub_21CCF6684()
{
  result = qword_27CE19F20;
  if (!qword_27CE19F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F20);
  }

  return result;
}

unint64_t sub_21CCF66DC()
{
  result = qword_27CE19F28;
  if (!qword_27CE19F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F28);
  }

  return result;
}

unint64_t sub_21CCF6734()
{
  result = qword_27CE19F30;
  if (!qword_27CE19F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F30);
  }

  return result;
}

unint64_t sub_21CCF678C()
{
  result = qword_27CE19F38;
  if (!qword_27CE19F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F38);
  }

  return result;
}

unint64_t sub_21CCF67E4()
{
  result = qword_27CE19F40;
  if (!qword_27CE19F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F40);
  }

  return result;
}

unint64_t sub_21CCF683C()
{
  result = qword_27CE19F48;
  if (!qword_27CE19F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F48);
  }

  return result;
}

uint64_t sub_21CCF6890(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x800000021CD9F180 == a2;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021CD9F1A0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021CD9F1C0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65644973736170 && a2 == 0xEE00726569666974)
  {

    return 3;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t sub_21CCF6A04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9F1E0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9F200 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21CCF6B2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000021CD9F220 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6448503 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_21CD841A4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21CCF6C80(uint64_t a1)
{
  v2 = sub_21CCF7338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF6CBC(uint64_t a1)
{
  v2 = sub_21CCF7338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCF6CF8()
{
  v1 = 6448503;
  if (*v0 != 1)
  {
    v1 = 0x726564616572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_21CCF6D40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CCF7D60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CCF6D68(uint64_t a1)
{
  v2 = sub_21CCF723C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF6DA4(uint64_t a1)
{
  v2 = sub_21CCF723C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCF6DE0(uint64_t a1)
{
  v2 = sub_21CCF7290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF6E1C(uint64_t a1)
{
  v2 = sub_21CCF7290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCF6E58(uint64_t a1)
{
  v2 = sub_21CCF72E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCF6E94(uint64_t a1)
{
  v2 = sub_21CCF72E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentPresentmentSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19F50, &qword_21CD8DD40);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19F58, &qword_21CD8DD48);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19F60, &qword_21CD8DD50);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19F68, &qword_21CD8DD58);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCF723C();
  sub_21CD842B4();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_21CCF72E4();
      v9 = v21;
      sub_21CD840E4();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_21CCF7290();
      v9 = v24;
      sub_21CD840E4();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_21CCF7338();
    sub_21CD840E4();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_21CCF723C()
{
  result = qword_27CE19F70;
  if (!qword_27CE19F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F70);
  }

  return result;
}

unint64_t sub_21CCF7290()
{
  result = qword_27CE19F78;
  if (!qword_27CE19F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F78);
  }

  return result;
}

unint64_t sub_21CCF72E4()
{
  result = qword_27CE19F80;
  if (!qword_27CE19F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F80);
  }

  return result;
}

unint64_t sub_21CCF7338()
{
  result = qword_27CE19F88;
  if (!qword_27CE19F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19F88);
  }

  return result;
}

uint64_t IdentityDocumentPresentmentSource.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

uint64_t IdentityDocumentPresentmentSource.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19F90, &qword_21CD8DD60);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19F98, &qword_21CD8DD68);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19FA0, &qword_21CD8DD70);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19FA8, &unk_21CD8DD78);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v14);
  sub_21CCF723C();
  v15 = v36;
  sub_21CD842A4();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_21CD840D4();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_21CCD18D4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_21CD83FA4();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20);
      *v24 = &type metadata for IdentityDocumentPresentmentSource;
      sub_21CD84044();
      sub_21CD83F94();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_21CCF72E4();
          sub_21CD84034();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_21CCF7290();
          v26 = v17;
          sub_21CD84034();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_21CCF7338();
        sub_21CD84034();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v37);
}

unint64_t sub_21CCF79A4()
{
  result = qword_27CE19FB0;
  if (!qword_27CE19FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FB0);
  }

  return result;
}

unint64_t sub_21CCF7A4C()
{
  result = qword_27CE19FB8;
  if (!qword_27CE19FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FB8);
  }

  return result;
}

unint64_t sub_21CCF7AA4()
{
  result = qword_27CE19FC0;
  if (!qword_27CE19FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FC0);
  }

  return result;
}

unint64_t sub_21CCF7AFC()
{
  result = qword_27CE19FC8;
  if (!qword_27CE19FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FC8);
  }

  return result;
}

unint64_t sub_21CCF7B54()
{
  result = qword_27CE19FD0;
  if (!qword_27CE19FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FD0);
  }

  return result;
}

unint64_t sub_21CCF7BAC()
{
  result = qword_27CE19FD8;
  if (!qword_27CE19FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FD8);
  }

  return result;
}

unint64_t sub_21CCF7C04()
{
  result = qword_27CE19FE0;
  if (!qword_27CE19FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FE0);
  }

  return result;
}

unint64_t sub_21CCF7C5C()
{
  result = qword_27CE19FE8;
  if (!qword_27CE19FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FE8);
  }

  return result;
}

unint64_t sub_21CCF7CB4()
{
  result = qword_27CE19FF0;
  if (!qword_27CE19FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FF0);
  }

  return result;
}

unint64_t sub_21CCF7D0C()
{
  result = qword_27CE19FF8;
  if (!qword_27CE19FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19FF8);
  }

  return result;
}

uint64_t sub_21CCF7D60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v3 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6448503 && a2 == 0xE300000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564616572 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t IdentityDocumentRelyingParty.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdentityDocumentRelyingParty.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *IdentityDocumentRelyingParty.logo.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t IdentityDocumentRelyingParty.init(name:logo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21CCF7F90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21CCF7FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id IdentityProofingSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityProofingSession.init()()
{
  v1 = [objc_opt_self() interfaceWithProtocol_];
  memset(v25, 0, sizeof(v25));
  v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v3 = sub_21CD83B04();
  v4 = [v2 initWithMachServiceName:v3 options:4096];

  sub_21CCB3200(v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A000, &unk_21CD8E200);
  v5 = swift_allocObject();
  [v4 setRemoteObjectInterface_];
  v22 = sub_21CCF8418;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_21CCB3270;
  v21 = &block_descriptor_2;
  v6 = _Block_copy(&aBlock);

  [v4 setInvalidationHandler_];
  _Block_release(v6);
  v22 = sub_21CCF8424;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_21CCB3270;
  v21 = &block_descriptor_3_1;
  v7 = _Block_copy(&aBlock);

  [v4 setInterruptionHandler_];
  _Block_release(v7);
  [v4 setExportedInterface_];
  sub_21CCB3200(v24, &aBlock);
  v8 = v21;
  if (v21)
  {
    v9 = __swift_project_boxed_opaque_existential_0(&aBlock, v21);
    v10 = *(v8 - 1);
    MEMORY[0x28223BE20](v9);
    v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_21CD84194();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    v13 = 0;
  }

  [v4 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v4;
  v5[2] = v14;
  v5[3] = sub_21CCC6574;
  v5[4] = 0;
  [v4 activate];

  sub_21CCC947C(v24);
  sub_21CCC947C(v25);
  *&v0[OBJC_IVAR____TtC7CoreIDV23IdentityProofingSession_connection] = v5;
  v15 = type metadata accessor for IdentityProofingSession();
  v17.receiver = v0;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_21CCF8454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21CCF847C, 0, 0);
}

uint64_t sub_21CCF847C()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[7] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "IdentityProofingSession cancelProofing", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  v10 = *(v6 + OBJC_IVAR____TtC7CoreIDV23IdentityProofingSession_connection);
  v11 = swift_allocObject();
  v0[8] = v11;
  v11[2] = v9;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v5;

  v12 = swift_task_alloc();
  v0[9] = v12;
  v12[2] = v10;
  v12[3] = &unk_21CD8E220;
  v12[4] = v11;
  v13 = swift_task_alloc();
  v0[10] = v13;
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v10;
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_21CCF86AC;
  v15 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v14, &unk_21CD8E228, v12, sub_21CCF9440, v13, 0, 0, v15);
}

uint64_t sub_21CCF86AC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_21CCF88B8;
  }

  else
  {

    v2 = sub_21CCF87E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCF87E4(uint64_t a1)
{
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "IdentityProofingSession cancelProofing returned successfully", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_21CCF88B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CCF8930(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a3;
  v6[19] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  v6[24] = v9;
  v6[25] = v10;

  return MEMORY[0x2822009F8](sub_21CCF8A08, 0, 0);
}

uint64_t sub_21CCF8A08()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[24];
  v11 = v0[25];
  v6 = v0 + 22;
  v5 = v0[22];
  v4 = v6[1];
  v7 = sub_21CD83B04();
  v1[26] = v7;
  v8 = sub_21CD83B04();
  v1[27] = v8;
  v1[2] = v1;
  v1[3] = sub_21CCF8BE4;
  swift_continuation_init();
  v1[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v4 + 32))(boxed_opaque_existential_0, v3, v5);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_27;
  [v11 cancelProofingWithState:v7 country:v8 completionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CCF8BE4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_21CCF8D68;
  }

  else
  {
    v2 = sub_21CCF8CF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCF8CF4()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CCF8D68(uint64_t a1)
{
  v2 = v1[27];
  v3 = v1[26];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_21CCF8F84(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_21CD83B24();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_21CD83B24();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_21CCF9080;

  return sub_21CCF8454(v6, v8, v9, v11);
}

uint64_t sub_21CCF9080()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_21CD83634();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id IdentityProofingSession.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IdentityProofingSession();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21CCF92C4(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_21CCC498C;

  return sub_21CCF8930(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_21CCF938C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC01B8;

  return sub_21CCB3600(a1, v4, v5, v6);
}

uint64_t dispatch thunk of IdentityProofingSession.cancelProofing(state:country:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21CCC498C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_21CCF95B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21CCC01B8;

  return sub_21CCF8F84(v2, v3, v5, v4);
}

uint64_t sub_21CCF9674(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CD01E18(a1, v4, v5, v6);
}

id static DIIdentityProofingXPCInterface.interface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

id IdentityProvisioningSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityProvisioningSession.init()()
{
  v1 = v0;
  v2 = [objc_opt_self() interfaceWithProtocol_];
  memset(v44, 0, sizeof(v44));
  v3 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v4 = sub_21CD83B04();
  v5 = [v3 initWithMachServiceName:v4 options:4096];

  sub_21CCB3200(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A010, &unk_21CD8E2D0);
  v6 = swift_allocObject();
  [v5 setRemoteObjectInterface_];
  v41 = sub_21CCF9F44;
  v42 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_21CCB3270;
  v40 = &block_descriptor_3;
  v7 = _Block_copy(&aBlock);

  [v5 setInvalidationHandler_];
  _Block_release(v7);
  v41 = sub_21CCF9F50;
  v42 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_21CCB3270;
  v40 = &block_descriptor_3_2;
  v8 = _Block_copy(&aBlock);

  [v5 setInterruptionHandler_];
  _Block_release(v8);
  [v5 setExportedInterface_];
  sub_21CCB3200(v43, &aBlock);
  v9 = v40;
  if (v40)
  {
    v10 = __swift_project_boxed_opaque_existential_0(&aBlock, v40);
    v11 = *(v9 - 1);
    MEMORY[0x28223BE20](v10);
    v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    v14 = sub_21CD84194();
    (*(v11 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    v14 = 0;
  }

  [v5 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v5;
  v6[2] = v15;
  v6[3] = sub_21CCC6574;
  v6[4] = 0;
  [v5 activate];

  sub_21CCC947C(v43);
  sub_21CCC947C(v44);
  v16 = OBJC_IVAR____TtC7CoreIDV27IdentityProvisioningSession_connection;
  *&v1[OBJC_IVAR____TtC7CoreIDV27IdentityProvisioningSession_connection] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A020, &qword_21CD8E2E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21CD8E2C0;
  v18 = sub_21CCB17E8(0, &qword_27CE1A028, 0x277CBEA60);
  *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A030, &qword_21CD8E2E8);
  *(v17 + 32) = v18;
  v19 = sub_21CCB17E8(0, &qword_27CE190E0, 0x277CCACA8);
  *(v17 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A038, &qword_21CD8E2F0);
  *(v17 + 64) = v19;
  v20 = sub_21CCB17E8(0, &qword_27CE1A550, 0x277CBEA90);
  *(v17 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A040, &qword_21CD8E2F8);
  *(v17 + 96) = v20;
  v21 = sub_21CCB17E8(0, &qword_27CE19000, off_278320670);
  *(v17 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A048, &qword_21CD8E300);
  *(v17 + 128) = v21;
  v22 = sub_21CCB17E8(0, &qword_27CE1A050, off_278320678);
  *(v17 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A058, &qword_21CD8E308);
  *(v17 + 160) = v22;
  v23 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v24 = sub_21CD83C74();

  v25 = [v23 initWithArray_];

  aBlock = 0;
  sub_21CD83DF4();

  if (aBlock)
  {
    v26 = *(*&v1[v16] + 16);

    os_unfair_lock_lock((v26 + 24));
    v27 = *(v26 + 16);
    os_unfair_lock_unlock((v26 + 24));

    v28 = [v27 remoteObjectInterface];

    if (v28)
    {
      v29 = sub_21CD83DE4();

      [v28 setClasses:v29 forSelector:sel_generateIdentityProvisioningAttestationsWithCredentialIdentifier_pairingID_completionHandler_ argumentIndex:0 ofReply:1];
    }

    else
    {
    }
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v30 = sub_21CD839F4();
    __swift_project_value_buffer(v30, qword_280F78E40);
    v31 = sub_21CD839D4();
    v32 = sub_21CD83E24();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_21CC90000, v31, v32, "Failed to initialize IdentityProvisioning interface classes", v33, 2u);
      MEMORY[0x21CF18580](v33, -1, -1);
    }
  }

  v34 = type metadata accessor for IdentityProvisioningSession();
  v36.receiver = v1;
  v36.super_class = v34;
  return objc_msgSendSuper2(&v36, sel_init);
}

uint64_t sub_21CCF9F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_21CCF9FA8, 0, 0);
}

uint64_t sub_21CCF9FA8()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[8] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "DIIdentityProvisioningAttestationsManager generateIdentityProvisioningAttestations", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  v10 = *(v6 + OBJC_IVAR____TtC7CoreIDV27IdentityProvisioningSession_connection);
  v11 = swift_allocObject();
  v0[9] = v11;
  v11[2] = v9;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v5;

  v12 = swift_task_alloc();
  v0[10] = v12;
  v12[2] = v10;
  v12[3] = &unk_21CD8E320;
  v12[4] = v11;
  v13 = swift_task_alloc();
  v0[11] = v13;
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v10;
  v14 = swift_task_alloc();
  v0[12] = v14;
  v15 = sub_21CCB17E8(0, &qword_27CE19000, off_278320670);
  *v14 = v0;
  v14[1] = sub_21CCFA1F0;

  return MEMORY[0x282200830](v0 + 2, &unk_21CD8E330, v12, sub_21CCFB194, v13, 0, 0, v15);
}

uint64_t sub_21CCFA1F0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_21CCFA408;
  }

  else
  {

    *(v2 + 112) = *(v2 + 16);
    v3 = sub_21CCFA330;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CCFA330(uint64_t a1)
{
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "DIIdentityProvisioningAttestationsManager generateIdentityProvisioningAttestations returned successfully", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v5 = *(v1 + 8);
  v6 = *(v1 + 112);

  return v5(v6);
}

uint64_t sub_21CCFA408()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CCFA480(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[19] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19008, &unk_21CD8E3A0);
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  v6[26] = v9;
  v6[27] = v10;

  return MEMORY[0x2822009F8](sub_21CCFA55C, 0, 0);
}

uint64_t sub_21CCFA55C()
{
  v1 = v0[23];
  v10 = sub_21CD83B04();
  v0[28] = v10;
  if (v1)
  {
    v2 = sub_21CD83B04();
  }

  else
  {
    v2 = 0;
  }

  v0[29] = v2;
  v3 = v0[26];
  v8 = v2;
  v9 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21CCFA754;
  swift_continuation_init();
  v0[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_21CCB17E8(0, &qword_27CE19000, off_278320670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v4 + 32))(boxed_opaque_existential_0, v3, v5);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CCFA96C;
  v0[13] = &block_descriptor_29;
  [v9 generateIdentityProvisioningAttestationsWithCredentialIdentifier:v10 pairingID:v8 completionHandler:v0 + 10];
  (*(v4 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CCFA754()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_21CCFA8E0;
  }

  else
  {
    v2 = sub_21CCFA864;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCFA864()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  **(v0 + 152) = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CCFA8E0(uint64_t a1)
{
  v2 = v1[29];
  v3 = v1[28];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

void sub_21CCFA96C(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19008, &unk_21CD8E3A0);
    sub_21CD83CF4();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19008, &unk_21CD8E3A0);
    sub_21CD83D04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21CCFABAC(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = sub_21CD83B24();
  v9 = v8;
  v4[4] = v8;
  if (a2)
  {
    a2 = sub_21CD83B24();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v4[5] = v11;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_21CCFACB8;

  return sub_21CCF9F80(v7, v9, a2, v11);
}

uint64_t sub_21CCFACB8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);

  if (v3)
  {
    v9 = sub_21CD83634();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

id IdentityProvisioningSession.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IdentityProvisioningSession();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21CCFAF0C(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_21CCC498C;

  return sub_21CCFA480(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_21CCFAFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCFAFF8, 0, 0);
}

uint64_t sub_21CCFAFF8()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCC9AAC;
  v5 = v0[4];
  v4 = v0[5];

  return sub_21CCB522C(v5, v4);
}

uint64_t sub_21CCFB0CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC01B8;

  return sub_21CCFAFD4(a1, v4, v5, v6);
}

uint64_t dispatch thunk of IdentityProvisioningSession.generateIdentityProvisioningAttestations(credentialIdentifier:pairingID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21CCFB308;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_21CCFB308(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_21CCFB404()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21CCC01B8;

  return sub_21CCFABAC(v2, v3, v5, v4);
}

id static DIIdentityProvisioningXPCInterface.interface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

uint64_t sub_21CCFB5A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
LABEL_14:
    v13 = 16 * (v9 | (v4 << 6));
    v14 = (*(v3 + 48) + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(v3 + 56) + v13);
    v18 = *v17;
    v19 = v17[1];

    if (!v15)
    {
      return 1;
    }

    v31 = v10;
    v20 = sub_21CCA996C(v16, v15);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      goto LABEL_31;
    }

    v23 = (*(v2 + 56) + 16 * v20);
    v24 = *v23;
    v25 = v23[1];

    result = sub_21CCCBEC0(v24, v18);
    if ((result & 1) == 0 || (v26 = *(v25 + 16), v26 != *(v19 + 16)))
    {
LABEL_30:

LABEL_31:

      return 0;
    }

    if (v26)
    {
      v27 = v25 == v19;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      v28 = 0;
      while (v26)
      {
        result = *(v25 + v28 + 32);
        if (result != *(v19 + v28 + 32) || *(v25 + v28 + 40) != *(v19 + v28 + 40))
        {
          result = sub_21CD841A4();
          if ((result & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v28 += 16;
        if (!--v26)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_36;
    }

LABEL_6:

    v2 = a2;
    v7 = v31;
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_21CCFB7DC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_10:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      while (2)
      {
        v13 = 16 * (v10 | (v4 << 6));
        v14 = *(v3 + 48) + v13;
        v15 = *(v3 + 56) + v13;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = sub_21CCAAE2C(*v14, *(v14 + 8));
        if ((v19 & 1) == 0)
        {
          return 0;
        }

        v20 = *(v2 + 56) + 16 * v18;
        v21 = *v20;
        if (*(v20 + 8) == 1)
        {
          if (v21)
          {
            v22 = 0x65726F745379616DLL;
          }

          else
          {
            v22 = 0x53746F4E6C6C6977;
          }

          if (v21)
          {
            v23 = 0xE800000000000000;
          }

          else
          {
            v23 = 0xEC00000065726F74;
          }

          if (!v17)
          {
LABEL_24:
            sub_21CD83F74();

            v24 = sub_21CD84174();
            MEMORY[0x21CF175E0](v24);

            MEMORY[0x21CF175E0](41, 0xE100000000000000);
            v25 = 0x800000021CD9E7E0;
            if (v22 != 0xD000000000000010)
            {
              goto LABEL_7;
            }

LABEL_34:
            if (v23 == v25)
            {

              v2 = a2;
              if (!v7)
              {
                goto LABEL_10;
              }
            }

            else
            {
LABEL_7:
              v9 = sub_21CD841A4();

              v2 = a2;
              if ((v9 & 1) == 0)
              {
                return 0;
              }

              if (!v7)
              {
                goto LABEL_10;
              }
            }

LABEL_9:
            v10 = __clz(__rbit64(v7));
            v7 &= v7 - 1;
            continue;
          }
        }

        else
        {
          sub_21CD83F74();

          v26 = sub_21CD84174();
          MEMORY[0x21CF175E0](v26);

          MEMORY[0x21CF175E0](41, 0xE100000000000000);
          v22 = 0xD000000000000010;
          v23 = 0x800000021CD9E7E0;
          if (!v17)
          {
            goto LABEL_24;
          }
        }

        break;
      }

      if (v16)
      {
        v27 = 0x65726F745379616DLL;
      }

      else
      {
        v27 = 0x53746F4E6C6C6977;
      }

      if (v16)
      {
        v25 = 0xE800000000000000;
      }

      else
      {
        v25 = 0xEC00000065726F74;
      }

      if (v22 != v27)
      {
        goto LABEL_7;
      }

      goto LABEL_34;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21CCFBAF4(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_21CCAAEC8(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
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
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21CCFBBFC(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_21CCAAF0C(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
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
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CCFBD44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000021CD9F3D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_21CD841A4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21CCFBDD8(uint64_t a1)
{
  v2 = sub_21CCFBFFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCFBE14(uint64_t a1)
{
  v2 = sub_21CCFBFFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentProviderQueryAllApplicationsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A060, &qword_21CD8E3F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFBFFC();

  sub_21CD842B4();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A070, &qword_21CD8E3F8);
  sub_21CCFC37C(&qword_27CE1A078, sub_21CCFC050, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_21CD84164();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21CCFBFFC()
{
  result = qword_27CE1A068;
  if (!qword_27CE1A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A068);
  }

  return result;
}

unint64_t sub_21CCFC050()
{
  result = qword_27CE1A080;
  if (!qword_27CE1A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A080);
  }

  return result;
}

uint64_t MobileDocumentProviderQueryAllApplicationsResponse.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCD4BF4(v3, v1);
  return sub_21CD84294();
}

uint64_t MobileDocumentProviderQueryAllApplicationsResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A088, &qword_21CD8E400);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFBFFC();
  sub_21CD842A4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A070, &qword_21CD8E3F8);
    sub_21CCFC37C(&qword_27CE1A090, sub_21CCFC400, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_21CD840C4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CCFC2DC()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCD4BF4(v3, v1);
  return sub_21CD84294();
}

uint64_t sub_21CCFC32C()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCD4BF4(v3, v1);
  return sub_21CD84294();
}

uint64_t sub_21CCFC37C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1A070, &qword_21CD8E3F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CCFC400()
{
  result = qword_27CE1A098;
  if (!qword_27CE1A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A098);
  }

  return result;
}

unint64_t sub_21CCFC458()
{
  result = qword_27CE1A0A0;
  if (!qword_27CE1A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A0A0);
  }

  return result;
}

unint64_t sub_21CCFC4D0()
{
  result = qword_27CE1A0A8;
  if (!qword_27CE1A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A0A8);
  }

  return result;
}

unint64_t sub_21CCFC528()
{
  result = qword_27CE1A0B0;
  if (!qword_27CE1A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A0B0);
  }

  return result;
}

unint64_t sub_21CCFC580()
{
  result = qword_27CE1A0B8;
  if (!qword_27CE1A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A0B8);
  }

  return result;
}

uint64_t sub_21CCFC614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6172747369676572 && a2 == 0xED0000736E6F6974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CCFC6A4(uint64_t a1)
{
  v2 = sub_21CCFC8C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCFC6E0(uint64_t a1)
{
  v2 = sub_21CCFC8C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentProviderQueryRegistrationsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A0C0, &qword_21CD8E640);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFC8C8();

  sub_21CD842B4();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A0D0, &qword_21CD8E648);
  sub_21CCFCBF4(&qword_27CE1A0D8, &qword_27CE1A0E0, &protocol conformance descriptor for MobileDocumentRegistration, MEMORY[0x277D83948]);
  sub_21CD84164();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21CCFC8C8()
{
  result = qword_27CE1A0C8;
  if (!qword_27CE1A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A0C8);
  }

  return result;
}

uint64_t MobileDocumentProviderQueryRegistrationsResponse.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCCF730(v3, v1);
  return sub_21CD84294();
}

uint64_t MobileDocumentProviderQueryRegistrationsResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A0E8, &qword_21CD8E650);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFC8C8();
  sub_21CD842A4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A0D0, &qword_21CD8E648);
    sub_21CCFCBF4(&qword_27CE1A0F0, &qword_27CE1A0F8, &protocol conformance descriptor for MobileDocumentRegistration, MEMORY[0x277D83978]);
    sub_21CD840C4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CCFCB54()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCCF730(v3, v1);
  return sub_21CD84294();
}

uint64_t sub_21CCFCBA4()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCCF730(v3, v1);
  return sub_21CD84294();
}

uint64_t sub_21CCFCBF4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1A0D0, &qword_21CD8E648);
    sub_21CCFCC7C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CCFCC7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MobileDocumentRegistration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CCFCCC4()
{
  result = qword_27CE1A100;
  if (!qword_27CE1A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A100);
  }

  return result;
}

unint64_t sub_21CCFCD3C()
{
  result = qword_27CE1A108;
  if (!qword_27CE1A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A108);
  }

  return result;
}

unint64_t sub_21CCFCD94()
{
  result = qword_27CE1A110;
  if (!qword_27CE1A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A110);
  }

  return result;
}

unint64_t sub_21CCFCDEC()
{
  result = qword_27CE1A118;
  if (!qword_27CE1A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A118);
  }

  return result;
}

uint64_t sub_21CCFCE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentRegistration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CCFCF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6172747369676572 && a2 == 0xEC0000006E6F6974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CCFCF90(uint64_t a1)
{
  v2 = sub_21CCFDCDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCFCFCC(uint64_t a1)
{
  v2 = sub_21CCFDCDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentProviderRegistrationRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A120, &unk_21CD8E890);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFDCDC();
  sub_21CD842B4();
  type metadata accessor for MobileDocumentRegistration(0);
  sub_21CCFDE2C(&qword_27CE1A0E0, type metadata accessor for MobileDocumentRegistration, &protocol conformance descriptor for MobileDocumentRegistration);
  sub_21CD84164();
  return (*(v3 + 8))(v5, v2);
}

uint64_t MobileDocumentProviderRegistrationRequest.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21CD83744();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  sub_21CD83B74();
  v10 = *(v1 + 16);
  MEMORY[0x21CF17CC0](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      sub_21CCB18D4(v13, *v12);
      sub_21CD83704();
      sub_21CCB1880(v13, v14);
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  v15 = type metadata accessor for MobileDocumentRegistration(0);
  sub_21CCB1A4C(v2 + *(v15 + 24), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_21CD84284();
    sub_21CCFDE2C(&qword_27CE19360, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21CD83A64();
    (*(v4 + 8))(v6, v3);
  }

  return sub_21CD83B74();
}

uint64_t MobileDocumentProviderRegistrationRequest.hashValue.getter()
{
  v1 = v0;
  v2 = sub_21CD83744();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_21CD84264();
  sub_21CD83B74();
  v9 = *(v0 + 16);
  MEMORY[0x21CF17CC0](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      sub_21CCB18D4(v12, *v11);
      sub_21CD83704();
      sub_21CCB1880(v12, v13);
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  v14 = type metadata accessor for MobileDocumentRegistration(0);
  sub_21CCB1A4C(v1 + *(v14 + 24), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_21CD84284();
    sub_21CCFDE2C(&qword_27CE19360, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21CD83A64();
    (*(v3 + 8))(v5, v2);
  }

  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentProviderRegistrationRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for MobileDocumentRegistration(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A130, &qword_21CD8E8A0);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for MobileDocumentProviderRegistrationRequest(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFDCDC();
  sub_21CD842A4();
  if (!v2)
  {
    v12 = v15;
    sub_21CCFDE2C(&qword_27CE1A0F8, type metadata accessor for MobileDocumentRegistration, &protocol conformance descriptor for MobileDocumentRegistration);
    v13 = v17;
    sub_21CD840C4();
    (*(v16 + 8))(v8, v6);
    sub_21CCFDD7C(v13, v11, type metadata accessor for MobileDocumentRegistration);
    sub_21CCFDD7C(v11, v12, type metadata accessor for MobileDocumentProviderRegistrationRequest);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CCFD8E0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A120, &unk_21CD8E890);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFDCDC();
  sub_21CD842B4();
  type metadata accessor for MobileDocumentRegistration(0);
  sub_21CCFDE2C(&qword_27CE1A0E0, type metadata accessor for MobileDocumentRegistration, &protocol conformance descriptor for MobileDocumentRegistration);
  sub_21CD84164();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21CCFDA60()
{
  v1 = v0;
  v2 = sub_21CD83744();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_21CD84264();
  sub_21CD83B74();
  v9 = *(v0 + 16);
  MEMORY[0x21CF17CC0](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      sub_21CCB18D4(v12, *v11);
      sub_21CD83704();
      sub_21CCB1880(v12, v13);
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  v14 = type metadata accessor for MobileDocumentRegistration(0);
  sub_21CCB1A4C(v1 + *(v14 + 24), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_21CD84284();
    sub_21CCFDE2C(&qword_27CE19360, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21CD83A64();
    (*(v3 + 8))(v5, v2);
  }

  sub_21CD83B74();
  return sub_21CD84294();
}

unint64_t sub_21CCFDCDC()
{
  result = qword_27CE1A128;
  if (!qword_27CE1A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A128);
  }

  return result;
}

uint64_t type metadata accessor for MobileDocumentProviderRegistrationRequest(uint64_t a1)
{
  result = qword_27CE1A140;
  if (!qword_27CE1A140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CCFDD7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CCFDE2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CCFDE9C(uint64_t a1)
{
  result = type metadata accessor for MobileDocumentRegistration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21CCFDF1C()
{
  result = qword_27CE1A150;
  if (!qword_27CE1A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A150);
  }

  return result;
}

unint64_t sub_21CCFDF74()
{
  result = qword_27CE1A158;
  if (!qword_27CE1A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A158);
  }

  return result;
}

unint64_t sub_21CCFDFCC()
{
  result = qword_27CE1A160;
  if (!qword_27CE1A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A160);
  }

  return result;
}

uint64_t MobileDocumentProviderUnregisterRequest.documentIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static MobileDocumentProviderUnregisterRequest.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CD841A4();
  }
}

uint64_t sub_21CCFE0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000021CD9F3F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_21CD841A4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21CCFE138(uint64_t a1)
{
  v2 = sub_21CCFE2EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCFE174(uint64_t a1)
{
  v2 = sub_21CCFE2EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentProviderUnregisterRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A168, &qword_21CD8EAB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFE2EC();
  sub_21CD842B4();
  sub_21CD84134();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_21CCFE2EC()
{
  result = qword_27CE1A170;
  if (!qword_27CE1A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A170);
  }

  return result;
}

uint64_t MobileDocumentProviderUnregisterRequest.hashValue.getter()
{
  sub_21CD84264();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentProviderUnregisterRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A178, &qword_21CD8EAB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFE2EC();
  sub_21CD842A4();
  if (!v2)
  {
    v9 = sub_21CD84094();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CCFE520(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A168, &qword_21CD8EAB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFE2EC();
  sub_21CD842B4();
  sub_21CD84134();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21CCFE65C()
{
  sub_21CD84264();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t sub_21CCFE6B0()
{
  sub_21CD84264();
  sub_21CD83B74();
  return sub_21CD84294();
}

unint64_t sub_21CCFE6FC()
{
  result = qword_27CE1A180;
  if (!qword_27CE1A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A180);
  }

  return result;
}

uint64_t sub_21CCFE750(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CD841A4();
  }
}

unint64_t sub_21CCFE7A4()
{
  result = qword_27CE1A188;
  if (!qword_27CE1A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A188);
  }

  return result;
}

unint64_t sub_21CCFE7FC()
{
  result = qword_27CE1A190;
  if (!qword_27CE1A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A190);
  }

  return result;
}

unint64_t sub_21CCFE854()
{
  result = qword_27CE1A198;
  if (!qword_27CE1A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A198);
  }

  return result;
}

uint64_t MobileDocumentRegistration.documentType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileDocumentRegistration.invalidationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MobileDocumentRegistration(0) + 24);

  return sub_21CCB1A4C(v3, a1);
}

uint64_t type metadata accessor for MobileDocumentRegistration(uint64_t a1)
{
  result = qword_27CE1A1F8;
  if (!qword_27CE1A1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDocumentRegistration.documentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDocumentRegistration(0) + 28));

  return v1;
}

uint64_t MobileDocumentRegistration.init(documentType:authorityKeyIdentifiers:documentIdentifier:invalidationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  v11 = type metadata accessor for MobileDocumentRegistration(0);
  v12 = (a7 + *(v11 + 28));
  *v12 = a4;
  v12[1] = a5;
  v13 = a7 + *(v11 + 24);

  return sub_21CCFEA1C(a6, v13);
}

uint64_t sub_21CCFEA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CCFEA90()
{
  v1 = 0x746E656D75636F64;
  v2 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_21CCFEB18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD001F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CCFEB40(uint64_t a1)
{
  v2 = sub_21CCFFD5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCFEB7C(uint64_t a1)
{
  v2 = sub_21CCFFD5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentRegistration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A1A0, &qword_21CD8ECE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFFD5C();
  sub_21CD842B4();
  v12 = 0;
  sub_21CD84134();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A1B0, &qword_21CD8ECF0);
    sub_21CCFFE04(&qword_27CE1A1B8, sub_21CCFFDB0, MEMORY[0x277D83948]);
    sub_21CD84164();
    type metadata accessor for MobileDocumentRegistration(0);
    v10[14] = 2;
    sub_21CD83744();
    sub_21CD00364(&qword_27CE1A1C8, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_21CD84124();
    v10[13] = 3;
    sub_21CD84134();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MobileDocumentRegistration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21CD83744();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  sub_21CD83B74();
  v10 = *(v1 + 16);
  MEMORY[0x21CF17CC0](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      sub_21CCB18D4(v13, *v12);
      sub_21CD83704();
      sub_21CCB1880(v13, v14);
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  v15 = type metadata accessor for MobileDocumentRegistration(0);
  sub_21CCB1A4C(v2 + *(v15 + 24), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_21CD84284();
    sub_21CD00364(&qword_27CE19360, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21CD83A64();
    (*(v4 + 8))(v6, v3);
  }

  return sub_21CD83B74();
}

uint64_t MobileDocumentRegistration.hashValue.getter()
{
  v1 = v0;
  v2 = sub_21CD83744();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_21CD84264();
  sub_21CD83B74();
  v9 = *(v0 + 16);
  MEMORY[0x21CF17CC0](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      sub_21CCB18D4(v12, *v11);
      sub_21CD83704();
      sub_21CCB1880(v12, v13);
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  v14 = type metadata accessor for MobileDocumentRegistration(0);
  sub_21CCB1A4C(v1 + *(v14 + 24), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_21CD84284();
    sub_21CD00364(&qword_27CE19360, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21CD83A64();
    (*(v3 + 8))(v5, v2);
  }

  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentRegistration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A1D0, &qword_21CD8ECF8);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for MobileDocumentRegistration(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCFFD5C();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = a1;
  v29 = v6;
  v14 = v31;
  v15 = v32;
  v37 = 0;
  *v12 = sub_21CD84094();
  v12[1] = v16;
  v28 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A1B0, &qword_21CD8ECF0);
  v36 = 1;
  sub_21CCFFE04(&qword_27CE1A1D8, sub_21CCFFE7C, MEMORY[0x277D83978]);
  sub_21CD840C4();
  v12[2] = v33;
  sub_21CD83744();
  v35 = 2;
  sub_21CD00364(&qword_27CE1A1E8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v27 = v12;
  v17 = v29;
  sub_21CD84084();
  sub_21CCFEA1C(v17, v27 + *(v10 + 24));
  v34 = 3;
  v18 = sub_21CD84094();
  v29 = v19;
  v20 = v18;
  (*(v14 + 8))(v9, v15);
  v21 = v27;
  v22 = (v27 + *(v10 + 28));
  v24 = v29;
  v23 = v30;
  *v22 = v20;
  v22[1] = v24;
  sub_21CCFCE4C(v21, v23);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return sub_21CCFFED0(v21);
}

uint64_t sub_21CCFF76C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_21CD83744();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_21CD84264();
  sub_21CD83B74();
  v12 = *(v2 + 16);
  MEMORY[0x21CF17CC0](*(v12 + 16));
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      sub_21CCB18D4(v15, *v14);
      sub_21CD83704();
      sub_21CCB1880(v15, v16);
      v14 += 2;
      --v13;
    }

    while (v13);
  }

  sub_21CCB1A4C(v4 + *(a2 + 24), v11);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_21CD84284();
    sub_21CD00364(&qword_27CE19360, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21CD83A64();
    (*(v6 + 8))(v8, v5);
  }

  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t _s7CoreIDV41MobileDocumentProviderRegistrationRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_21CD83744();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19368, &qword_21CD8EF10);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  if (*a1 != *a2 && (sub_21CD841A4() & 1) == 0 || (sub_21CCCC4F8(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_10;
  }

  v26 = type metadata accessor for MobileDocumentRegistration(0);
  v14 = *(v26 + 24);
  v15 = *(v11 + 48);
  sub_21CCB1A4C(a1 + v14, v13);
  sub_21CCB1A4C(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21CCB1A4C(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21CD00364(&qword_27CE19370, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v19 = sub_21CD83A84();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_21CCB1928(v13, &qword_27CE18EC8, &unk_21CD885C0);
      if (v19)
      {
        goto LABEL_13;
      }

LABEL_10:
      v17 = 0;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_21CCB1928(v13, &qword_27CE19368, &qword_21CD8EF10);
    goto LABEL_10;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_21CCB1928(v13, &qword_27CE18EC8, &unk_21CD885C0);
LABEL_13:
  v21 = *(v26 + 28);
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if (v22 == *v24 && v23 == v24[1])
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_21CD841A4();
  }

  return v17 & 1;
}

unint64_t sub_21CCFFD5C()
{
  result = qword_27CE1A1A8;
  if (!qword_27CE1A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A1A8);
  }

  return result;
}

unint64_t sub_21CCFFDB0()
{
  result = qword_27CE1A1C0;
  if (!qword_27CE1A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A1C0);
  }

  return result;
}

uint64_t sub_21CCFFE04(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1A1B0, &qword_21CD8ECF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CCFFE7C()
{
  result = qword_27CE1A1E0;
  if (!qword_27CE1A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A1E0);
  }

  return result;
}

uint64_t sub_21CCFFED0(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentRegistration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21CCFFF9C(uint64_t a1)
{
  sub_21CD00030();
  if (v1 <= 0x3F)
  {
    sub_21CD00080(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CD00030()
{
  if (!qword_27CE1A208)
  {
    v0 = sub_21CD83CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE1A208);
    }
  }
}

void sub_21CD00080(uint64_t a1)
{
  if (!qword_27CE1A210)
  {
    sub_21CD83744();
    v1 = sub_21CD83EA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE1A210);
    }
  }
}

unint64_t sub_21CD000EC()
{
  result = qword_27CE1A218;
  if (!qword_27CE1A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A218);
  }

  return result;
}

unint64_t sub_21CD00144()
{
  result = qword_27CE1A220;
  if (!qword_27CE1A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A220);
  }

  return result;
}

unint64_t sub_21CD0019C()
{
  result = qword_27CE1A228;
  if (!qword_27CE1A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A228);
  }

  return result;
}

uint64_t sub_21CD001F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656D75636F64 && a2 == 0xEC00000065707954;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000021CD9F410 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9F430 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021CD9F3F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t sub_21CD00364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_21CD003AC()
{
  v1 = v0;
  v2 = OBJC_IVAR___DIIdentitySettingsProvider_walletSettingsAnalyticsReporter;
  type metadata accessor for WalletSettingsAnalyticsReporter();
  swift_allocObject();
  *&v0[v2] = WalletSettingsAnalyticsReporter.init()();
  type metadata accessor for SynchronousExtensionPointManager();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A258, &unk_21CD8EF80);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = MEMORY[0x277D84F98];
  v3[3] = 0x800000021CD9F5A0;
  v3[4] = v4;
  v3[2] = 0xD000000000000039;
  *&v1[OBJC_IVAR___DIIdentitySettingsProvider_extensionPointManager] = v3;
  type metadata accessor for FirstPartyDocumentProviderPreferencesManager();
  swift_allocObject();
  *&v1[OBJC_IVAR___DIIdentitySettingsProvider_firstPartyDocumentProviderPreferencesManager] = sub_21CD063F8(0);
  v6.receiver = v1;
  v6.super_class = DIIdentitySettingsProvider;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_21CD004E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21CD00508, 0, 0);
}

uint64_t sub_21CD00508()
{
  v1 = v0[2] == 0xD000000000000012 && 0x800000021CD9F540 == v0[3];
  if (v1 || (sub_21CD841A4() & 1) != 0)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    v0[5] = *(v0[4] + OBJC_IVAR___DIIdentitySettingsProvider_extensionPointManager);
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_21CD0063C;
    v7 = v0[2];
    v6 = v0[3];

    return sub_21CD1A270(v7, v6);
  }
}

uint64_t sub_21CD0063C()
{

  return MEMORY[0x2822009F8](sub_21CD00738, 0, 0);
}

uint64_t sub_21CD00738()
{
  sub_21CD1AE90(v0[2], v0[3]);
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_21CD00990(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_21CD83B24();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_21CD00A64;

  return sub_21CD004E4(v5, v7);
}

uint64_t sub_21CD00A64(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v3)
  {
    if (v6)
    {
      v9 = *(v5 + 24);
      v10 = sub_21CD83634();

      (v9)[2](v9, 0, v10);
      _Block_release(v9);
    }

    else
    {
    }
  }

  else if (v6)
  {
    v11 = *(v5 + 24);
    (v11)[2](v11, a1, 0);

    _Block_release(v11);
  }

  else
  {
  }

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_21CD00C40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000021CD9F540 == a2 || (sub_21CD841A4() & 1) != 0)
  {
    PartyDocumentProviderPreferences = FirstPartyDocumentProviderPreferencesManager.isFirstPartyExtensionEnabled.getter();
  }

  else
  {
    sub_21CD1B420(a1, a2);
  }

  return PartyDocumentProviderPreferences & 1;
}

uint64_t sub_21CD00E98(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  if (a1 == 0xD000000000000012 && 0x800000021CD9F540 == a2 || (sub_21CD841A4() & 1) != 0)
  {
    v11 = a3 & 1;
    FirstPartyDocumentProviderPreferencesManager.setFirstPartyExtensionEnablement(to:)(v11);
    v12 = sub_21CD83D74();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v4;
    *(v13 + 40) = v11;
    v14 = v4;
    v15 = &unk_21CD8EF30;
  }

  else
  {
    sub_21CD1B980(a1, a2, a3 & 1);
    v16 = sub_21CD83D74();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v4;
    *(v13 + 40) = a1;
    *(v13 + 48) = a2;
    *(v13 + 56) = a3 & 1;
    v17 = v4;

    v15 = &unk_21CD8EF20;
  }

  sub_21CD5C550(0, 0, v10, v15, v13);
}

uint64_t sub_21CD0120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 35) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](sub_21CD01230, 0, 0);
}

uint64_t sub_21CD01230()
{
  *(v0 + 32) = (*(v0 + 35) & 1) == 0;
  *(v0 + 33) = 1;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_21CCC0B40;

  return WalletSettingsAnalyticsReporter.sendWalletSettingsToggled(eventType:referralSource:issuerType:)((v0 + 32), (v0 + 33), (v0 + 34));
}

uint64_t sub_21CD01300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 83) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  return MEMORY[0x2822009F8](sub_21CD01328, 0, 0);
}

uint64_t sub_21CD01328()
{
  sub_21CD1C1EC(*(v0 + 24), *(v0 + 32));
  *(v0 + 40) = v1;
  v3 = v2;
  v4 = v1;
  type metadata accessor for MobileDocumentProviderRegistrationSession();
  v5 = swift_allocObject();
  *(v0 + 48) = sub_21CD024B0(v5);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_21CD01608;
  v7 = *(v0 + 83);

  return sub_21CD0BD10(v7, v3, v4);
}

uint64_t sub_21CD01608()
{
  *(*v1 + 64) = v0;

  if (v0)
  {

    v2 = sub_21CD01934;
  }

  else
  {

    v2 = sub_21CD0176C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD0176C()
{
  *(v0 + 80) = (*(v0 + 83) & 1) == 0;
  *(v0 + 81) = 257;
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_21CD01840;

  return WalletSettingsAnalyticsReporter.sendWalletSettingsToggled(eventType:referralSource:issuerType:)((v0 + 80), (v0 + 81), (v0 + 82));
}

uint64_t sub_21CD01840()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21CD01934()
{
  v16 = v0;
  v1 = v0[8];
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v2 = sub_21CD839F4();
  __swift_project_value_buffer(v2, qword_280F78E40);

  v3 = v1;
  v4 = sub_21CD839D4();
  v5 = sub_21CD83E34();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_21CCC02FC(v7, v6, &v15);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_21CC90000, v4, v5, "DIIdentitySettingsProvider failed notify enablement state updated for %s: %@", v8, 0x16u);
    sub_21CCB1928(v9, &qword_27CE18F68, &unk_21CD88800);
    MEMORY[0x21CF18580](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x21CF18580](v10, -1, -1);
    MEMORY[0x21CF18580](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

unint64_t type metadata accessor for DIIdentitySettingsProvider()
{
  result = qword_27CE1A248;
  if (!qword_27CE1A248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE1A248);
  }

  return result;
}

uint64_t sub_21CD01C58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21CCC498C;

  return sub_21CD01300(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_21CD01D30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_21CCC498C;

  return v6();
}

uint64_t sub_21CD01E18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_21CCC01B8;

  return v7();
}

uint64_t sub_21CD01F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_21CCD1750(a3, v23 - v10, &unk_27CE19190, &qword_21CD8E260);
  v12 = sub_21CD83D74();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21CCB1928(v11, &unk_27CE19190, &qword_21CD8E260);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_21CD83D64();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_21CD83CD4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_21CD83B54() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);

    return v21;
  }

LABEL_8:
  sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_21CD021FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21CD022F4;

  return v6(a1);
}

uint64_t sub_21CD022F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21CD023EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21CCC498C;

  return sub_21CD0120C(a1, v4, v5, v6, v7);
}

uint64_t sub_21CD024B0(uint64_t a1)
{
  v31 = &type metadata for MobileDocumentProviderRegistrationValidator;
  v32 = &protocol witness table for MobileDocumentProviderRegistrationValidator;
  swift_defaultActor_initialize();
  v2 = [objc_opt_self() interfaceWithProtocol_];
  v3 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v4 = sub_21CD83B04();
  v5 = [v3 initWithMachServiceName:v4 options:{4096, 0, 0}];

  sub_21CCD1750(&aBlock, v29, &qword_27CE19160, &unk_21CD88740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A250, &qword_21CD8EF38);
  v6 = swift_allocObject();
  [v5 setRemoteObjectInterface_];
  [v5 setInvalidationHandler_];
  v7 = &_swift_FORCE_LOAD___swiftOSLog___CoreIDV;
  [v5 setInterruptionHandler_];
  [v5 setExportedInterface_];
  sub_21CCD1750(v29, v27, &qword_27CE19160, &unk_21CD88740);
  v8 = v28;
  if (v28)
  {
    v9 = __swift_project_boxed_opaque_existential_0(v27, v28);
    v10 = *(v8 - 8);
    MEMORY[0x28223BE20](v9);
    v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_21CD84194();
    (*(v10 + 8))(v12, v8);
    v7 = &_swift_FORCE_LOAD___swiftOSLog___CoreIDV;
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    v13 = 0;
  }

  [v5 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v5;
  v6[2] = v14;
  v6[3] = sub_21CD088FC;
  v6[4] = 0;
  [v5 activate];

  sub_21CCB1928(v29, &qword_27CE19160, &unk_21CD88740);
  sub_21CCB1928(&aBlock, &qword_27CE19160, &unk_21CD88740);
  *(a1 + 112) = v6;

  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);
  v25 = sub_21CD08974;
  v26 = 0;
  aBlock = MEMORY[0x277D85DD0];
  aBlock_8 = 1107296256;
  v23 = sub_21CCB3270;
  v24 = &block_descriptor_4;
  v16 = _Block_copy(&aBlock);

  [v15 v7[385]];
  _Block_release(v16);
  os_unfair_lock_unlock((v14 + 24));

  v17 = *(*(a1 + 112) + 16);

  os_unfair_lock_lock((v17 + 24));
  v18 = *(v17 + 16);
  v25 = sub_21CD08980;
  v26 = 0;
  aBlock = MEMORY[0x277D85DD0];
  aBlock_8 = 1107296256;
  v23 = sub_21CCB3270;
  v24 = &block_descriptor_12;
  v19 = _Block_copy(&aBlock);

  [v18 setInvalidationHandler_];
  _Block_release(v19);
  os_unfair_lock_unlock((v17 + 24));

  sub_21CD02954(v30, a1 + 120);
  return a1;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21CD02954(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21CD0296C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21CCC498C;

  return sub_21CD00990(v2, v3, v4);
}

uint64_t sub_21CD02A20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CCC498C;

  return sub_21CD021FC(a1, v4);
}

uint64_t sub_21CD02AD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CCC01B8;

  return sub_21CD021FC(a1, v4);
}

uint64_t ExtensionIdentity.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExtensionIdentity.applicationExtensionRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExtensionIdentity(0) + 20);

  return sub_21CD02C58(v3, a1);
}

uint64_t type metadata accessor for ExtensionIdentity(uint64_t a1)
{
  result = qword_280F78070;
  if (!qword_280F78070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CD02C58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ExtensionIdentity.init(bundleIdentifier:applicationExtensionRecord:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for ExtensionIdentity(0);
  result = sub_21CD02D44(a3, a5 + *(v8 + 20));
  *(a5 + *(v8 + 24)) = a4;
  return result;
}

uint64_t sub_21CD02D44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ExtensionPointManager.__allocating_init(extensionPointIdentifier:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ExtensionPointManager.init(extensionPointIdentifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ExtensionPointManager.queryExtensionPoint()()
{
  v1[19] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
  v1[20] = swift_task_alloc();
  v2 = type metadata accessor for ExtensionIdentity(0);
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A268, &qword_21CD8EFA0);
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD02F6C, 0, 0);
}

uint64_t sub_21CD02F6C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v13 = objc_opt_self();
  v8 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v9 = sub_21CD83B04();
  v10 = [v8 initWithExtensionPointIdentifier_];
  v1[28] = v10;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_21CD03178;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A270, &qword_21CD8EFA8);
  sub_21CD83CE4();
  (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD03544;
  v1[13] = &block_descriptor_5;
  [v13 executeQuery:v10 completionHandler:v3];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD03178()
{

  return MEMORY[0x2822009F8](sub_21CD03258, 0, 0);
}

uint64_t sub_21CD03258()
{
  v1 = *(v0 + 144);

  result = v1;
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v27)
  {
    v4 = result;
    v34 = MEMORY[0x277D84F90];
    result = sub_21CCEA7AC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v4;
    v32 = v4;
    v33 = v4 & 0xC000000000000001;
    v29 = v4 & 0xFFFFFFFFFFFFFF8;
    v30 = *(v0 + 184);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v9 = v34;
    v31 = i;
    while (1)
    {
      if (v33)
      {
        v10 = MEMORY[0x21CF179D0](v5);
        goto LABEL_10;
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v5 >= *(v29 + 16))
      {
        goto LABEL_18;
      }

      v10 = *(v6 + 8 * v5 + 32);
LABEL_10:
      v11 = v10;
      v12 = *(v0 + 184);
      v13 = [v10 bundleIdentifier];
      v14 = sub_21CD83B24();
      v16 = v15;

      *v12 = v14;
      *(v30 + 8) = v16;
      v17 = [v11 applicationExtensionRecord];
      if (v17)
      {
        BundleRecord.init(_:)(v17, *(v0 + 160));
        v18 = 0;
      }

      else
      {
        v18 = 1;
      }

      v20 = *(v0 + 184);
      v19 = *(v0 + 192);
      v21 = *(v0 + 160);
      v22 = type metadata accessor for BundleRecord(0);
      (*(*(v22 - 8) + 56))(v21, v18, 1, v22);
      sub_21CD02D44(v21, v20 + *(v8 + 20));
      v23 = [v11 enabled];

      *(v20 + *(v8 + 24)) = v23;
      sub_21CD05830(v20, v19);
      v25 = *(v34 + 16);
      v24 = *(v34 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21CCEA7AC((v24 > 1), v25 + 1, 1);
      }

      v26 = *(v0 + 192);
      ++v5;
      *(v34 + 16) = v25 + 1;
      result = sub_21CD05830(v26, v34 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25);
      v6 = v32;
      if (v31 == v5)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v27 = result;
    i = sub_21CD83FE4();
  }

  v9 = MEMORY[0x277D84F90];
LABEL_21:

  v28 = *(v0 + 8);

  return v28(v9);
}

uint64_t sub_21CD03544(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_21CD05894();
  sub_21CD83C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A268, &qword_21CD8EFA0);
  return sub_21CD83D04();
}

uint64_t ExtensionPointManager.queryForAppExtension(applicationIdentifer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_21CD839B4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[11] = v5;
  *v5 = v3;
  v5[1] = sub_21CD03708;

  return sub_21CD03E44();
}

uint64_t sub_21CD03708(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_21CD03834, 0, 0);
}

uint64_t sub_21CD03834()
{
  v60 = v0;
  v59[1] = *MEMORY[0x277D85DE8];
  v1 = v0[12];
  v57 = *(v1 + 16);
  if (v57)
  {
    v2 = 0;
    v3 = v0[7];
    v54 = (v3 + 32);
    v55 = v3;
    v58 = (v3 + 8);
    v4 = MEMORY[0x277D84F90];
    v56 = v0[12];
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
      }

      v5 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v6 = *(v55 + 72);
      v7 = *(v55 + 16);
      v7(v0[10], v0[12] + v5 + v6 * v2, v0[6]);
      sub_21CD83954();
      v8 = objc_allocWithZone(MEMORY[0x277CC1E50]);
      v9 = sub_21CD83B04();

      v0[2] = 0;
      v10 = [v8 initWithBundleIdentifier:v9 error:v0 + 2];

      v11 = v0[2];
      if (v10)
      {
        v12 = v11;
        v13 = [v10 containingBundleRecord];

        if (v13)
        {
          v14 = [v13 applicationIdentifier];

          if (v14)
          {
            v15 = v4;
            v17 = v0[4];
            v16 = v0[5];
            v18 = sub_21CD83B24();
            v20 = v19;

            if (v18 == v17 && v20 == v16)
            {

              v4 = v15;
LABEL_18:
              v40 = *v54;
              (*v54)(v0[8], v0[10], v0[6]);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21CCEA768(0, *(v4 + 16) + 1, 1);
              }

              v42 = *(v4 + 16);
              v41 = *(v4 + 24);
              v1 = v56;
              if (v42 >= v41 >> 1)
              {
                sub_21CCEA768((v41 > 1), v42 + 1, 1);
              }

              v43 = v0[8];
              v44 = v0[6];
              *(v4 + 16) = v42 + 1;
              v40(v4 + v5 + v42 * v6, v43, v44);
              goto LABEL_5;
            }

            v39 = sub_21CD841A4();

            v4 = v15;
            if (v39)
            {
              goto LABEL_18;
            }
          }
        }
      }

      else
      {
        v21 = v11;
        v22 = sub_21CD83644();

        swift_willThrow();
        if (qword_280F77E40 != -1)
        {
          swift_once();
        }

        v24 = v0[9];
        v23 = v0[10];
        v25 = v0[6];
        v26 = sub_21CD839F4();
        __swift_project_value_buffer(v26, qword_280F78E40);
        v7(v24, v23, v25);
        v27 = sub_21CD839D4();
        v28 = sub_21CD83E24();
        v29 = os_log_type_enabled(v27, v28);
        v30 = v0[9];
        v31 = v0[6];
        if (v29)
        {
          v53 = v4;
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v59[0] = v33;
          *v32 = 136315138;
          v34 = sub_21CD83954();
          v52 = v22;
          v36 = v35;
          (*v58)(v30, v31);
          v37 = sub_21CCC02FC(v34, v36, v59);

          *(v32 + 4) = v37;
          _os_log_impl(&dword_21CC90000, v27, v28, "LSApplicationExtensionRecord could not be initialized for bundle identifier %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x21CF18580](v33, -1, -1);
          v38 = v32;
          v4 = v53;
          MEMORY[0x21CF18580](v38, -1, -1);
        }

        else
        {

          (*v58)(v30, v31);
        }
      }

      (*v58)(v0[10], v0[6]);
      v1 = v56;
LABEL_5:
      if (v57 == ++v2)
      {
        goto LABEL_25;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_25:
  v45 = 0xD00000000000001DLL;

  v46 = *(v4 + 16);
  if (v46)
  {
    if (v46 == 1)
    {
      (*(v0[7] + 16))(v0[3], v4 + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)), v0[6]);

      v47 = v0[1];
      goto LABEL_31;
    }

    v48 = "";
    v49 = 11;
  }

  else
  {
    v48 = "Found multiple app extensions";
    v45 = 0xD000000000000039;
    v49 = 10;
  }

  sub_21CCB14E0();
  swift_allocError();
  *v50 = v49;
  *(v50 + 8) = v45;
  *(v50 + 16) = v48 | 0x8000000000000000;
  *(v50 + 24) = 0;
  swift_willThrow();

  v47 = v0[1];
LABEL_31:

  return v47();
}

uint64_t sub_21CD03E44()
{
  v1[2] = v0;
  v2 = sub_21CD83944();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_21CD83924();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD03F60, 0, 0);
}

uint64_t sub_21CD03F60()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A278, &unk_21CD91B70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21CD884B0;
  v3 = *(v1 + 24);
  *(v2 + 32) = *(v1 + 16);
  *(v2 + 40) = v3;

  sub_21CD839A4();

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  sub_21CD83934();
  (*(v5 + 8))(v4, v6);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_21CD0420C;

  return sub_21CD1C9C4(0, 0);
}

uint64_t sub_21CD0420C(uint64_t a1)
{
  *(*v2 + 80) = a1;

  if (!v1)
  {

    return MEMORY[0x2822009F8](sub_21CD04320, 0, 0);
  }

  return result;
}

uint64_t sub_21CD04320()
{
  v1 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  if (v1)
  {
    v2 = v0[10];
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v3 = sub_21CD839F4();
    __swift_project_value_buffer(v3, qword_280F78E40);
    v4 = sub_21CD839D4();
    v5 = sub_21CD83E24();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21CC90000, v4, v5, "ExtensionPointManager appExtensionIdentities stream closed without returning a result", v6, 2u);
      MEMORY[0x21CF18580](v6, -1, -1);
    }

    v2 = MEMORY[0x277D84F90];
  }

  v7 = v0[1];

  return v7(v2);
}

uint64_t ExtensionPointManager.isEnabled(for:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v5 = sub_21CD839B4();
  v2[4] = v5;
  v2[5] = *(v5 - 8);
  v6 = swift_task_alloc();
  v2[6] = v6;
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v2;
  v7[1] = sub_21CD0458C;

  return ExtensionPointManager.queryForAppExtension(applicationIdentifer:)(v6, a1, a2);
}

uint64_t sub_21CD0458C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_21CD04738;
  }

  else
  {
    v2 = sub_21CD046A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD046A0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_21CD83994();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_21CD04738()
{
  v13 = v0;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  __swift_project_value_buffer(v1, qword_280F78E40);

  v2 = sub_21CD839D4();
  v3 = sub_21CD83E34();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21CCC02FC(v7, v6, &v12);
    _os_log_impl(&dword_21CC90000, v2, v3, "ExtensionPointManager could not get enablement status of extension %s; no matching extension found. default false", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x21CF18580](v9, -1, -1);
    MEMORY[0x21CF18580](v8, -1, -1);
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t ExtensionPointManager.isUnelected(for:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v5 = sub_21CD839B4();
  v2[4] = v5;
  v2[5] = *(v5 - 8);
  v2[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[7] = v6;
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_21CD049F0;

  return ExtensionPointManager.queryForAppExtension(applicationIdentifer:)(v6, a1, a2);
}

uint64_t sub_21CD049F0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_21CD04BF0;
  }

  else
  {
    v2 = sub_21CD04B04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD04B04()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_21CD05894();
  (*(v4 + 16))(v2, v1, v3);
  v5 = sub_21CD83E74();
  v6 = [v5 unelected];

  (*(v4 + 8))(v1, v3);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_21CD04BF0()
{
  v13 = v0;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  __swift_project_value_buffer(v1, qword_280F78E40);

  v2 = sub_21CD839D4();
  v3 = sub_21CD83E34();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  if (v4)
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21CCC02FC(v7, v6, &v12);
    _os_log_impl(&dword_21CC90000, v2, v3, "ExtensionPointManager could not get unelection status of extension %s; no matching extension found. default false", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x21CF18580](v9, -1, -1);
    MEMORY[0x21CF18580](v8, -1, -1);
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t ExtensionPointManager.setEnablement(for:to:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 72) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v6 = sub_21CD839B4();
  *(v3 + 32) = v6;
  *(v3 + 40) = *(v6 - 8);
  v7 = swift_task_alloc();
  *(v3 + 48) = v7;
  v8 = swift_task_alloc();
  *(v3 + 56) = v8;
  *v8 = v3;
  v8[1] = sub_21CD04EA8;

  return ExtensionPointManager.queryForAppExtension(applicationIdentifer:)(v7, a1, a2);
}

uint64_t sub_21CD04EA8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_21CD051B4;
  }

  else
  {
    v2 = sub_21CD04FBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD04FBC()
{
  v12 = v0;
  v1 = *(v0 + 64);
  if (*(v0 + 72) != 1)
  {
    sub_21CD83984();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_9:
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    goto LABEL_10;
  }

  sub_21CD83974();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_3:
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v2 = sub_21CD839F4();
  __swift_project_value_buffer(v2, qword_280F78E40);

  v3 = sub_21CD839D4();
  v4 = sub_21CD83E34();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_21CCC02FC(v6, v5, &v11);
    _os_log_impl(&dword_21CC90000, v3, v4, "ExtensionPointManager could not set enablement status of extension %s; no matching extension found.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x21CF18580](v8, -1, -1);
    MEMORY[0x21CF18580](v7, -1, -1);
  }

LABEL_10:

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21CD051B4()
{
  v12 = v0;
  v1 = v0[8];
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v2 = sub_21CD839F4();
  __swift_project_value_buffer(v2, qword_280F78E40);

  v3 = sub_21CD839D4();
  v4 = sub_21CD83E34();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_21CCC02FC(v6, v5, &v11);
    _os_log_impl(&dword_21CC90000, v3, v4, "ExtensionPointManager could not set enablement status of extension %s; no matching extension found.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x21CF18580](v8, -1, -1);
    MEMORY[0x21CF18580](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t ExtensionPointManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21CD053A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = result;
  return result;
}

uint64_t sub_21CD053F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21CD05480;

  return ExtensionPointManager.queryExtensionPoint()();
}

uint64_t sub_21CD05480(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_21CD0557C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC01B8;

  return ExtensionPointManager.queryForAppExtension(applicationIdentifer:)(a1, a2, a3);
}

uint64_t sub_21CD05630(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return ExtensionPointManager.setEnablement(for:to:)(a1, a2, a3);
}

uint64_t sub_21CD056E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CD060AC;

  return ExtensionPointManager.isEnabled(for:)(a1, a2);
}

uint64_t sub_21CD05788(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CD05480;

  return ExtensionPointManager.isUnelected(for:)(a1, a2);
}

uint64_t sub_21CD05830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionIdentity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CD05894()
{
  result = qword_280F77E18;
  if (!qword_280F77E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F77E18);
  }

  return result;
}

uint64_t dispatch thunk of ExtensionPointManaging.queryExtensionPoint()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CD05480;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ExtensionPointManaging.queryForAppExtension(applicationIdentifer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21CCC01B8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ExtensionPointManaging.setEnablement(for:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21CCC498C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ExtensionPointManaging.isEnabled(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21CD060AC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ExtensionPointManaging.isUnelected(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21CD05480;

  return v11(a1, a2, a3, a4);
}

void sub_21CD05F18(uint64_t a1)
{
  sub_21CD05F9C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21CD05F9C(uint64_t a1)
{
  if (!qword_280F780D8[0])
  {
    type metadata accessor for BundleRecord(255);
    v1 = sub_21CD83EA4();
    if (!v2)
    {
      atomic_store(v1, qword_280F780D8);
    }
  }
}

uint64_t sub_21CD06044(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F68, &unk_21CD88800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FirstPartyDocumentProviderPreferencesManager.__allocating_init(userDefaults:)(void *a1)
{
  swift_allocObject();
  v2 = sub_21CD063F8(a1);

  return v2;
}

id FirstPartyDocumentProviderPreferencesManager.isFirstPartyExtensionEnabled.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_21CD83B04();
  v3 = [v1 BOOLForKey_];

  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v4 = sub_21CD839F4();
  __swift_project_value_buffer(v4, qword_280F78E40);
  v5 = sub_21CD839D4();
  v6 = sub_21CD83E24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_21CC90000, v5, v6, "FirstPartyDocumentProviderPreferencesManager isFirstPartyExtensionEnabled returning user default value: %{BOOL}d", v7, 8u);
    MEMORY[0x21CF18580](v7, -1, -1);
  }

  return v3;
}

Swift::Void __swiftcall FirstPartyDocumentProviderPreferencesManager.setFirstPartyExtensionEnablement(to:)(Swift::Bool to)
{
  v2 = v1;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v4 = sub_21CD839F4();
  __swift_project_value_buffer(v4, qword_280F78E40);
  v5 = sub_21CD839D4();
  v6 = sub_21CD83E24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = to;
    _os_log_impl(&dword_21CC90000, v5, v6, "FirstPartyDocumentProviderPreferencesManager setting firstPartyExtension to %{BOOL}d", v7, 8u);
    MEMORY[0x21CF18580](v7, -1, -1);
  }

  v8 = *(v2 + 16);
  v9 = sub_21CD83B04();
  [v8 setBool:to forKey:v9];
}

uint64_t FirstPartyDocumentProviderPreferencesManager.init(userDefaults:)(void *a1)
{
  v2 = sub_21CD063F8(a1);

  return v2;
}

uint64_t FirstPartyDocumentProviderPreferencesManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21CD063F8(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = qword_280F77E40;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_21CD839F4();
    __swift_project_value_buffer(v5, qword_280F78E40);
    v6 = sub_21CD839D4();
    v7 = sub_21CD83E24();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21CC90000, v6, v7, "FirstPartyDocumentProviderPreferencesManager initializing with overrided user defaults", v8, 2u);
      MEMORY[0x21CF18580](v8, -1, -1);
    }

    goto LABEL_25;
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_21CD83B24();
    v13 = v12;

    if (v11 == 0xD00000000000001ALL && 0x800000021CD9F750 == v13)
    {
      goto LABEL_19;
    }

    v15 = sub_21CD841A4();

    if (v15)
    {
LABEL_20:
      if (qword_280F77E40 != -1)
      {
        swift_once();
      }

      v22 = sub_21CD839F4();
      __swift_project_value_buffer(v22, qword_280F78E40);
      v23 = sub_21CD839D4();
      v24 = sub_21CD83E24();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_21CC90000, v23, v24, "FirstPartyDocumentProviderPreferencesManager initializing with standard user defaults", v25, 2u);
        MEMORY[0x21CF18580](v25, -1, -1);
      }

      v4 = [objc_opt_self() standardUserDefaults];
      goto LABEL_25;
    }
  }

  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v16 = sub_21CD839F4();
  __swift_project_value_buffer(v16, qword_280F78E40);
  v17 = sub_21CD839D4();
  v18 = sub_21CD83E24();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_21CC90000, v17, v18, "FirstPartyDocumentProviderPreferencesManager initializing with coreidvd user defaults", v19, 2u);
    MEMORY[0x21CF18580](v19, -1, -1);
  }

  v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v21 = sub_21CD83B04();
  v4 = [v20 initWithSuiteName_];

  if (!v4)
  {
    __break(1u);
LABEL_19:

    goto LABEL_20;
  }

LABEL_25:
  *(v2 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18ED0, &unk_21CD8F110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CD884B0;
  *(inited + 32) = 0xD000000000000040;
  *(inited + 40) = 0x800000021CD9F6B0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v27 = v4;
  sub_21CD7D1E4(inited);
  swift_setDeallocating();
  sub_21CD068A0(inited + 32);
  v28 = sub_21CD83A14();

  [v27 registerDefaults_];

  return v2;
}

uint64_t sub_21CD068A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EE0, &qword_21CD885D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CoreIDV::MobileDocumentProviderRegisteredApplication __swiftcall MobileDocumentProviderRegisteredApplication.init(registrations:sceneIdentifiers:)(Swift::OpaquePointer registrations, Swift::OpaquePointer sceneIdentifiers)
{
  v2->_rawValue = registrations._rawValue;
  v2[1]._rawValue = sceneIdentifiers._rawValue;
  result.sceneIdentifiers = sceneIdentifiers;
  result.registrations = registrations;
  return result;
}

uint64_t static MobileDocumentProviderRegisteredApplication.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_21CCCBEC0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_21CCCC468(v2, v3);
}

uint64_t sub_21CD0697C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6172747369676572;
  }
}

uint64_t sub_21CD069C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6172747369676572 && a2 == 0xED0000736E6F6974;
  if (v6 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9F770 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CD06AB4(uint64_t a1)
{
  v2 = sub_21CD06D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD06AF0(uint64_t a1)
{
  v2 = sub_21CD06D60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentProviderRegisteredApplication.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A280, &unk_21CD8F120);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD06D60();

  sub_21CD842B4();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A0D0, &qword_21CD8E648);
  sub_21CCFCBF4(&qword_27CE1A0D8, &qword_27CE1A0E0, &protocol conformance descriptor for MobileDocumentRegistration, MEMORY[0x277D83948]);
  sub_21CD84164();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
    sub_21CD07280(&qword_27CE1A298, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_21CD84164();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_21CD06D60()
{
  result = qword_27CE1A288;
  if (!qword_27CE1A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A288);
  }

  return result;
}

uint64_t MobileDocumentProviderRegisteredApplication.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  sub_21CCCF730(a1, *v1);
  result = MEMORY[0x21CF17CC0](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {

      sub_21CD83B74();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t MobileDocumentProviderRegisteredApplication.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CD84264();
  sub_21CCCF730(v6, v1);
  MEMORY[0x21CF17CC0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_21CD83B74();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentProviderRegisteredApplication.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A2A0, &qword_21CD8F138);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD06D60();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A0D0, &qword_21CD8E648);
  v13 = 0;
  sub_21CCFCBF4(&qword_27CE1A0F0, &qword_27CE1A0F8, &protocol conformance descriptor for MobileDocumentRegistration, MEMORY[0x277D83978]);
  sub_21CD840C4();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
  v13 = 1;
  sub_21CD07280(&qword_27CE1A2A8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_21CD840C4();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD07190()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CD84264();
  sub_21CCCF730(v6, v1);
  MEMORY[0x21CF17CC0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_21CD83B74();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return sub_21CD84294();
}

uint64_t sub_21CD07224(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_21CCCBEC0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_21CCCC468(v2, v3);
}

uint64_t sub_21CD07280(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1A290, &qword_21CD8F130);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CD072F0()
{
  result = qword_27CE1A2B0;
  if (!qword_27CE1A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A2B0);
  }

  return result;
}

uint64_t sub_21CD07344(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CD0738C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21CD073EC()
{
  result = qword_27CE1A2B8;
  if (!qword_27CE1A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A2B8);
  }

  return result;
}

unint64_t sub_21CD07444()
{
  result = qword_27CE1A2C0;
  if (!qword_27CE1A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A2C0);
  }

  return result;
}

unint64_t sub_21CD0749C()
{
  result = qword_27CE1A2C8;
  if (!qword_27CE1A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A2C8);
  }

  return result;
}

uint64_t MobileDocumentProviderRegistrationEntitlementChecker.init(applicationBundleRecord:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for BundleRecord(0) + 52));
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  v6 = sub_21CD83B04();
  sub_21CD07724();
  v7 = [v5 objectForKey:v6 ofClass:swift_getObjCClassFromMetadata()];

  if (v7)
  {
    sub_21CD83EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  os_unfair_lock_unlock((v4 + 24));
  sub_21CD07770(a1);
  if (*(&v11 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
    result = swift_dynamicCast();
    v9 = v10;
    if (!result)
    {
      v9 = 0;
    }
  }

  else
  {
    result = sub_21CCC947C(v12);
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

unint64_t sub_21CD07724()
{
  result = qword_27CE1A2D0;
  if (!qword_27CE1A2D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE1A2D0);
  }

  return result;
}

uint64_t sub_21CD07770(uint64_t a1)
{
  v2 = type metadata accessor for BundleRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CoreIDV::MobileDocumentProviderRegistrationEntitlementChecker __swiftcall MobileDocumentProviderRegistrationEntitlementChecker.init()()
{
  v1 = v0;
  sub_21CD07870(&v6);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
    v2 = swift_dynamicCast();
    v4 = v5;
    if (!v2)
    {
      v4 = 0;
    }
  }

  else
  {
    v2 = sub_21CCC947C(&v6);
    v4 = 0;
  }

  *v1 = v4;
  result.entitledDocumentTypes.value._rawValue = v2;
  result.entitledDocumentTypes.is_nil = v3;
  return result;
}

void sub_21CD07870(_OWORD *a3@<X8>)
{
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CD83B04();
    v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

    if (v7)
    {
      ObjectType = swift_getObjectType();
      *&v9 = v7;
      sub_21CCB2190(&v9, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v8 = v12;
    *a3 = v11;
    a3[1] = v8;
  }

  else
  {
    *a3 = 0u;
    a3[1] = 0u;
  }
}

uint64_t static MobileDocumentProviderRegistrationEntitlementChecker.checkEntitlement(connection:)(void *a1)
{
  if (!a1)
  {
    sub_21CD07870(&v7);
    if (*(&v8 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
      if (swift_dynamicCast())
      {
        goto LABEL_10;
      }

      return 0;
    }

LABEL_11:
    sub_21CCC947C(&v7);
    return 0;
  }

  v1 = a1;
  v2 = sub_21CD83B04();
  v3 = [v1 valueForEntitlement_];

  if (v3)
  {
    sub_21CD83EE4();

    swift_unknownObjectRelease();
  }

  else
  {

    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
  if (swift_dynamicCast())
  {
LABEL_10:

    return 1;
  }

  return 0;
}

uint64_t static MobileDocumentProviderRegistrationEntitlementChecker.checkSettingsEntitlement(connection:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = sub_21CD83B04();
    v3 = [v1 valueForEntitlement_];

    if (v3)
    {
      sub_21CD83EE4();

      swift_unknownObjectRelease();
    }

    else
    {

      v6 = 0u;
      v7 = 0u;
    }

    v8 = v6;
    v9 = v7;
    if (*(&v7 + 1))
    {
      if (swift_dynamicCast())
      {
        return v5;
      }
    }

    else
    {
      sub_21CCC947C(&v8);
    }
  }

  sub_21CD07870(&v8);
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_21CCC947C(&v8);
  }

  return 0;
}

uint64_t static MobileDocumentProviderRegistrationEntitlementChecker.checkPrivilegedTestingRegistrationEntitlement(connection:)(void *a1)
{
  if (!a1)
  {
    sub_21CD07870(&v8);
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        return v6;
      }

      return 0;
    }

    goto LABEL_11;
  }

  v1 = a1;
  v2 = sub_21CD83B04();
  v3 = [v1 valueForEntitlement_];

  if (v3)
  {
    sub_21CD83EE4();

    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
LABEL_11:
    sub_21CCC947C(&v8);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  return 0;
}

Swift::Bool __swiftcall MobileDocumentProviderRegistrationEntitlementChecker.checkEntitled(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  if (*v1 && (v16 = a1, MEMORY[0x28223BE20](a1._countAndFlagsBits), v15[2] = &v16, , (sub_21CD07F90(sub_21CD08094, v15, v4) & 1) != 0))
  {

    return 1;
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v6 = sub_21CD839F4();
    __swift_project_value_buffer(v6, qword_280F78E40);

    v7 = sub_21CD839D4();
    v8 = sub_21CD83E24();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16._countAndFlagsBits = v10;
      *v9 = 136315394;
      if (!v4)
      {
        v4 = MEMORY[0x277D84F90];
      }

      v11 = MEMORY[0x21CF176E0](v4, MEMORY[0x277D837D0]);
      v13 = v12;

      v14 = sub_21CCC02FC(v11, v13, &v16._countAndFlagsBits);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_21CCC02FC(countAndFlagsBits, object, &v16._countAndFlagsBits);
      _os_log_impl(&dword_21CC90000, v7, v8, "MobileDocumentProviderRegistrationEntitlementChecker calling application is entitled for document types %s but not entitled for document type in request: %s.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF18580](v10, -1, -1);
      MEMORY[0x21CF18580](v9, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_21CD07F90(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_21CD0803C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CD841A4() & 1;
  }
}

uint64_t sub_21CD08094(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CD841A4() & 1;
  }
}

uint64_t sub_21CD0813C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21CD08198(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t MobileDocumentProviderRegistrationSession.__allocating_init(registrationValidator:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_21CD0D978(v7, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_21CD08318(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21CCC498C;

  return sub_21CD0C588(a1, 0, 0, &unk_21CD8F488, 0);
}

uint64_t sub_21CD083D0(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A2F0, &unk_21CD8F680);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD0849C, 0, 0);
}

uint64_t sub_21CD0849C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v9 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_21CD08644;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  type metadata accessor for XPCMobileDocumentProviderStatusResponse();
  sub_21CD83CE4();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD087B0;
  v1[13] = &block_descriptor_108;
  [v9 authorizationStatusWithCompletionHandler_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CD08644()
{

  return MEMORY[0x2822009F8](sub_21CD08724, 0, 0);
}

uint64_t sub_21CD08724()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v1[OBJC_IVAR____TtC7CoreIDV39XPCMobileDocumentProviderStatusResponse_value];

  *v2 = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_21CD087B0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A2F0, &unk_21CD8F680);
  return sub_21CD83D04();
}

uint64_t MobileDocumentProviderRegistrationSession.init(registrationValidator:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_21CD0D978(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_21CD088FC(void *a1)
{
  sub_21CD0DE48();
  v2 = swift_allocError();
  v4 = v3;
  *v3 = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = a1;
  v5 = a1;

  *(v4 + 16) = 0;
  *(v4 + 24) = 0;

  return v2;
}

uint64_t sub_21CD0898C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for MobileDocumentProviderRegistrationRequest(0) - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD08A50, v1, 0);
}

uint64_t sub_21CD08A50()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[18];
  v4 = v1[19];
  __swift_project_boxed_opaque_existential_0(v1 + 15, v3);
  (*(v4 + 8))(v2, 0, 1, v3, v4);
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];
  v8 = *v7;
  v9 = v7[1];
  sub_21CD0DE9C(v7, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v0[7] = v11;
  sub_21CD0DF00(v5, v11 + v10);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_21CD08C48;

  return sub_21CD0CC4C(v12, v8, v9, &unk_21CD8F4A8, v11);
}

uint64_t sub_21CD08C48()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_21CD08DD4;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_21CD08D70;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CD08D70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD08DD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD08E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  type metadata accessor for MobileDocumentProviderRegistrationRequest(0);
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD08F38, 0, 0);
}

uint64_t sub_21CD08F38()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0[24];
  v5 = v0[25];
  v8 = v0 + 22;
  v6 = v0[22];
  v7 = v8[1];
  v14 = v1[20];
  sub_21CD0DE9C(v1[21], v5);
  v9 = type metadata accessor for XPCMobileDocumentProviderRegistrationRequest(0);
  v10 = objc_allocWithZone(v9);
  sub_21CD0DE9C(v5, v10 + OBJC_IVAR____TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest_value);
  v1[18] = v10;
  v1[19] = v9;
  v11 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[26] = v11;
  sub_21CD0EEFC(v5);
  v1[2] = v1;
  v1[3] = sub_21CD09150;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v7 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_95;
  [v14 registerWithRequest:v11 applicationIdentifierOverride:0 completionHandler:v3];
  (*(v7 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD09150()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_21CD092D8;
  }

  else
  {
    v2 = sub_21CD09260;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD09260()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD092D8(uint64_t a1)
{
  v2 = *(v1 + 208);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_21CD09364(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_21CD0938C, v1, 0);
}

uint64_t sub_21CD0938C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_21CD09474;

  return sub_21CD0CC4C(v4, 0, 0, &unk_21CD8F4C8, v3);
}

uint64_t sub_21CD09474()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_21CD0959C;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_21CD0F488;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CD0959C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD09600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[20] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD096D0, 0, 0);
}

uint64_t sub_21CD096D0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v8 = v1[21];
  v7 = v1[22];
  v15 = v1[20];
  v9 = type metadata accessor for XPCMobileDocumentProviderUnregisterRequest();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest_value];
  *v11 = v8;
  *(v11 + 1) = v7;
  v1[18] = v10;
  v1[19] = v9;

  v12 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[26] = v12;
  v1[2] = v1;
  v1[3] = sub_21CD098E4;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_80;
  [v15 unregisterWithRequest:v12 applicationIdentifierOverride:0 completionHandler:v3];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD098E4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_21CD09A60;
  }

  else
  {
    v2 = sub_21CD099F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD099F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD09A60(uint64_t a1)
{
  v2 = *(v1 + 208);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_21CD09ADC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21CCC01B8;

  return sub_21CD0D1B4(a1, 0, 0, &unk_21CD8F4D8, 0);
}

uint64_t sub_21CD09B94(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A2E8, &qword_21CD8F648);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD09C60, 0, 0);
}

uint64_t sub_21CD09C60()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v11 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_21CD09E24;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  type metadata accessor for XPCMobileDocumentProviderQueryRegistrationsResponse();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD0A03C;
  v1[13] = &block_descriptor_76;
  [v11 registrationsWithApplicationIdentifierOverride:0 completionHandler:v4];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CD09E24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_21CD09FC8;
  }

  else
  {
    v2 = sub_21CD09F34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD09F34()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = *&v2[OBJC_IVAR____TtC7CoreIDV51XPCMobileDocumentProviderQueryRegistrationsResponse_value];

  *v1 = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_21CD09FC8(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_21CD0A050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(type metadata accessor for MobileDocumentProviderRegistrationRequest(0) - 8);
  v4[6] = v5;
  v4[7] = *(v5 + 64);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD0A118, v3, 0);
}

uint64_t sub_21CD0A118()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1[18];
  v4 = v1[19];
  __swift_project_boxed_opaque_existential_0(v1 + 15, v3);
  (*(v4 + 8))(v2, 0, 1, v3, v4);
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];
  v0[9] = *(v0[5] + 112);
  sub_21CD0DE9C(v10, v5);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v0[10] = v13;
  sub_21CD0DF00(v5, v13 + v11);
  v14 = (v13 + v12);
  *v14 = v9;
  v14[1] = v8;

  return MEMORY[0x2822009F8](sub_21CD0A2F8, 0, 0);
}

uint64_t sub_21CD0A2F8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_task_alloc();
  v0[11] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD8F4F8;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[12] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_21CD0A418;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v5, &unk_21CD8F500, v3, sub_21CD0E2D4, v4, 0, 0, v6);
}

uint64_t sub_21CD0A418()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_21CD0A5C0;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 40);

    v3 = sub_21CD0A55C;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_21CD0A55C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD0A5C0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_21CD0A648, v1, 0);
}

uint64_t sub_21CD0A648()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD0A6AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[20] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  type metadata accessor for MobileDocumentProviderRegistrationRequest(0);
  v8 = swift_task_alloc();
  v9 = *a2;
  v5[26] = v8;
  v5[27] = v9;

  return MEMORY[0x2822009F8](sub_21CD0A7B0, 0, 0);
}

uint64_t sub_21CD0A7B0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[26];
  v13 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[23];
  sub_21CD0DE9C(v1[20], v3);
  v7 = type metadata accessor for XPCMobileDocumentProviderRegistrationRequest(0);
  v8 = objc_allocWithZone(v7);
  sub_21CD0DE9C(v3, v8 + OBJC_IVAR____TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest_value);
  v1[18] = v8;
  v1[19] = v7;
  v9 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[28] = v9;
  sub_21CD0EEFC(v3);
  v10 = sub_21CD83B04();
  v1[29] = v10;
  v1[2] = v1;
  v1[3] = sub_21CD0A9E0;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_63_0;
  [v13 registerWithRequest:v9 applicationIdentifierOverride:v10 completionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD0A9E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_21CD0AB74;
  }

  else
  {
    v2 = sub_21CD0AAF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD0AAF0()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CD0AB74(uint64_t a1)
{
  v2 = v1[29];
  v3 = v1[28];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_21CD0AC08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v6 = a1[1];
  v4[4] = v3;
  v4[5] = v5;
  v4[6] = v6;
  return MEMORY[0x2822009F8](sub_21CD0AC34, v3, 0);
}

uint64_t sub_21CD0AC34()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v0[7] = *(v0[4] + 112);
  v5 = swift_allocObject();
  v0[8] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;

  return MEMORY[0x2822009F8](sub_21CD0ACE4, 0, 0);
}

uint64_t sub_21CD0ACE4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = swift_task_alloc();
  v0[9] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD8F518;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_21CD0AE04;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v5, &unk_21CD8F520, v3, sub_21CD0F494, v4, 0, 0, v6);
}

uint64_t sub_21CD0AE04()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_21CD0AF60;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 32);

    v3 = sub_21CD0AF48;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_21CD0AF60()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21CD0AFE8, v1, 0);
}

uint64_t sub_21CD0B000(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  v6[26] = v9;
  v6[27] = v10;

  return MEMORY[0x2822009F8](sub_21CD0B0D8, 0, 0);
}

uint64_t sub_21CD0B0D8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[26];
  v16 = v0[27];
  v6 = v0 + 24;
  v5 = v0[24];
  v4 = v6[1];
  v7 = v1[20];
  v8 = v1[21];
  v9 = type metadata accessor for XPCMobileDocumentProviderUnregisterRequest();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest_value];
  *v11 = v7;
  *(v11 + 1) = v8;
  v1[18] = v10;
  v1[19] = v9;

  v12 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[28] = v12;
  v13 = sub_21CD83B04();
  v1[29] = v13;
  v1[2] = v1;
  v1[3] = sub_21CD0B2FC;
  swift_continuation_init();
  v1[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v4 + 32))(boxed_opaque_existential_0, v3, v5);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_59;
  [v16 unregisterWithRequest:v12 applicationIdentifierOverride:v13 completionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD0B2FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_21CCFA8E0;
  }

  else
  {
    v2 = sub_21CD0B40C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD0B40C()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CD0B480(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_21CD0B4A0, v1, 0);
}

uint64_t sub_21CD0B4C8()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v2[2] = v1;
  v2[3] = &unk_21CD8F530;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_21CD0B5EC;
  v5 = v0[2];

  return MEMORY[0x282200830](v5, &unk_21CD8F538, v2, sub_21CD0E45C, v3, 0, 0, &type metadata for MobileDocumentProviderQueryAllApplicationsResponse);
}

uint64_t sub_21CD0B5EC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD0B734, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21CD0B734()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD0B7A0(uint64_t a1, uint64_t *a2)
{
  v2[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A2E0, &qword_21CD8F628);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[22] = v5;
  v2[23] = v6;

  return MEMORY[0x2822009F8](sub_21CD0B874, 0, 0);
}

uint64_t sub_21CD0B874()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[22];
  v12 = v0[23];
  v9 = v0 + 20;
  v7 = v0[20];
  v8 = v9[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_21CD0BA30;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  type metadata accessor for XPCMobileDocumentProviderQueryAllApplicationsResponse();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v8 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD0BC4C;
  v1[13] = &block_descriptor_55;
  [v12 allApplicationsWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CD0BA30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_21CD0BBD4;
  }

  else
  {
    v2 = sub_21CD0BB40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD0BB40()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = *&v2[OBJC_IVAR____TtC7CoreIDV53XPCMobileDocumentProviderQueryAllApplicationsResponse_value];

  *v1 = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_21CD0BBD4(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

void sub_21CD0BC60(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_21CD83CF4();
  }

  else if (a2)
  {
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_21CD83D04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21CD0BD10(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  return MEMORY[0x2822009F8](sub_21CD0BD38, v3, 0);
}

uint64_t sub_21CD0BD38()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(v0 + 88);
  *(v0 + 40) = *(*(v0 + 32) + 112);
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;

  return MEMORY[0x2822009F8](sub_21CD0BDE0, 0, 0);
}

uint64_t sub_21CD0BDE0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[7] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD8F550;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_21CD0BF00;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v5, &unk_21CD8F558, v3, sub_21CD0F494, v4, 0, 0, v6);
}

uint64_t sub_21CD0BF00()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_21CD0C044;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 32);

    v3 = sub_21CD0F488;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_21CD0C044()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21CD0C0CC, v1, 0);
}

uint64_t sub_21CD0C0E4(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  *(v5 + 208) = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  *(v5 + 160) = v7;
  *(v5 + 168) = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v5 + 176) = v8;
  *(v5 + 184) = v9;

  return MEMORY[0x2822009F8](sub_21CD0C1BC, 0, 0);
}

uint64_t sub_21CD0C1BC()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0[22];
  v12 = v0[23];
  v7 = v0 + 20;
  v6 = v0[20];
  v5 = v7[1];
  v11 = *(v1 + 208);
  v8 = sub_21CD83B04();
  v1[24] = v8;
  v1[2] = v1;
  v1[3] = sub_21CD0C38C;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_6;
  [v12 notifyEnablementUpdateTo:v11 for:v8 completionHandler:v3];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD0C38C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_21CD0C50C;
  }

  else
  {
    v2 = sub_21CD0C49C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD0C49C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD0C50C(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_21CD0C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return MEMORY[0x2822009F8](sub_21CD0C5B0, v5, 0);
}

uint64_t sub_21CD0C5B0()
{
  v27 = v0;
  v1 = 0xD00000000000004FLL;
  sub_21CD07870((v0 + 16));
  if (!*(v0 + 40))
  {
    sub_21CCC947C(v0 + 16);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v5 = sub_21CD839F4();
    __swift_project_value_buffer(v5, qword_280F78E40);
    v6 = sub_21CD839D4();
    v7 = sub_21CD83E24();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21CC90000, v6, v7, "MobileDocumentProviderRegistrationSession pre-flight check failed: missing base entitlement", v8, 2u);
      MEMORY[0x21CF18580](v8, -1, -1);
    }

    v9 = "stration request is invalid.";
    v1 = 0xD000000000000028;
    goto LABEL_14;
  }

  v2 = *(v0 + 112);

  if (!v2 || ((v3 = *(v0 + 112), sub_21CD07870((v0 + 48)), !*(v0 + 72)) ? (sub_21CCC947C(v0 + 48), v4 = 0) : !swift_dynamicCast() ? (v4 = 0) : (v4 = *(v0 + 88)), v15._countAndFlagsBits = *(v0 + 104), v26 = v4, v15._object = v3, v16 = MobileDocumentProviderRegistrationEntitlementChecker.checkEntitled(for:)(v15), , v16))
  {
    v17 = *(v0 + 128);
    v18 = *(v0 + 120);
    *(v0 + 144) = *(*(v0 + 136) + 112);
    v19 = swift_allocObject();
    *(v0 + 152) = v19;
    *(v19 + 16) = v18;
    *(v19 + 24) = v17;

    return MEMORY[0x2822009F8](sub_21CD0C9C8, 0, 0);
  }

  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v20 = sub_21CD839F4();
  __swift_project_value_buffer(v20, qword_280F78E40);

  v21 = sub_21CD839D4();
  v22 = sub_21CD83E24();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 104);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_21CCC02FC(v23, v3, &v26);
    _os_log_impl(&dword_21CC90000, v21, v22, "MobileDocumentProviderRegistrationSession pre-flight check failed: not entitled for document type %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x21CF18580](v25, -1, -1);
    MEMORY[0x21CF18580](v24, -1, -1);
  }

  v9 = "ication is not entitled.";
LABEL_14:
  v10 = v9 | 0x8000000000000000;
  sub_21CD0DE48();
  swift_allocError();
  v12 = v11;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *v11 = 3;
  *(v11 + 8) = 0;

  *(v12 + 16) = v1;
  *(v12 + 24) = v10;

  swift_willThrow();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21CD0C9C8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD8F670;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_21CD0CAEC;
  v6 = v0[12];

  return MEMORY[0x282200830](v6, &unk_21CD8F678, v3, sub_21CD0F428, v4, 0, 0, &type metadata for MobileDocumentProviderRegistrationSession.Status);
}

uint64_t sub_21CD0CAEC()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD0F490, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21CD0CC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return MEMORY[0x2822009F8](sub_21CD0CC74, v5, 0);
}

uint64_t sub_21CD0CC74()
{
  v27 = v0;
  v1 = 0xD00000000000004FLL;
  sub_21CD07870((v0 + 16));
  if (!*(v0 + 40))
  {
    sub_21CCC947C(v0 + 16);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v5 = sub_21CD839F4();
    __swift_project_value_buffer(v5, qword_280F78E40);
    v6 = sub_21CD839D4();
    v7 = sub_21CD83E24();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21CC90000, v6, v7, "MobileDocumentProviderRegistrationSession pre-flight check failed: missing base entitlement", v8, 2u);
      MEMORY[0x21CF18580](v8, -1, -1);
    }

    v9 = "stration request is invalid.";
    v1 = 0xD000000000000028;
    goto LABEL_14;
  }

  v2 = *(v0 + 112);

  if (!v2 || ((v3 = *(v0 + 112), sub_21CD07870((v0 + 48)), !*(v0 + 72)) ? (sub_21CCC947C(v0 + 48), v4 = 0) : !swift_dynamicCast() ? (v4 = 0) : (v4 = *(v0 + 88)), v15._countAndFlagsBits = *(v0 + 104), v26 = v4, v15._object = v3, v16 = MobileDocumentProviderRegistrationEntitlementChecker.checkEntitled(for:)(v15), , v16))
  {
    v17 = *(v0 + 128);
    v18 = *(v0 + 120);
    *(v0 + 144) = *(*(v0 + 136) + 112);
    v19 = swift_allocObject();
    *(v0 + 152) = v19;
    *(v19 + 16) = v18;
    *(v19 + 24) = v17;

    return MEMORY[0x2822009F8](sub_21CD0D08C, 0, 0);
  }

  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v20 = sub_21CD839F4();
  __swift_project_value_buffer(v20, qword_280F78E40);

  v21 = sub_21CD839D4();
  v22 = sub_21CD83E24();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 104);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_21CCC02FC(v23, v3, &v26);
    _os_log_impl(&dword_21CC90000, v21, v22, "MobileDocumentProviderRegistrationSession pre-flight check failed: not entitled for document type %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x21CF18580](v25, -1, -1);
    MEMORY[0x21CF18580](v24, -1, -1);
  }

  v9 = "ication is not entitled.";
LABEL_14:
  v10 = v9 | 0x8000000000000000;
  sub_21CD0DE48();
  swift_allocError();
  v12 = v11;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *v11 = 3;
  *(v11 + 8) = 0;

  *(v12 + 16) = v1;
  *(v12 + 24) = v10;

  swift_willThrow();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21CD0D08C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD8F658;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_21CD0CAEC;
  v6 = v0[12];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v6, &unk_21CD8F660, v3, sub_21CD0F494, v4, 0, 0, v7);
}

uint64_t sub_21CD0D1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return MEMORY[0x2822009F8](sub_21CD0D1DC, v5, 0);
}

uint64_t sub_21CD0D1DC()
{
  v27 = v0;
  v1 = 0xD00000000000004FLL;
  sub_21CD07870((v0 + 16));
  if (!*(v0 + 40))
  {
    sub_21CCC947C(v0 + 16);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v5 = sub_21CD839F4();
    __swift_project_value_buffer(v5, qword_280F78E40);
    v6 = sub_21CD839D4();
    v7 = sub_21CD83E24();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21CC90000, v6, v7, "MobileDocumentProviderRegistrationSession pre-flight check failed: missing base entitlement", v8, 2u);
      MEMORY[0x21CF18580](v8, -1, -1);
    }

    v9 = "stration request is invalid.";
    v1 = 0xD000000000000028;
    goto LABEL_14;
  }

  v2 = *(v0 + 112);

  if (!v2 || ((v3 = *(v0 + 112), sub_21CD07870((v0 + 48)), !*(v0 + 72)) ? (sub_21CCC947C(v0 + 48), v4 = 0) : !swift_dynamicCast() ? (v4 = 0) : (v4 = *(v0 + 88)), v15._countAndFlagsBits = *(v0 + 104), v26 = v4, v15._object = v3, v16 = MobileDocumentProviderRegistrationEntitlementChecker.checkEntitled(for:)(v15), , v16))
  {
    v17 = *(v0 + 128);
    v18 = *(v0 + 120);
    *(v0 + 144) = *(*(v0 + 136) + 112);
    v19 = swift_allocObject();
    *(v0 + 152) = v19;
    *(v19 + 16) = v18;
    *(v19 + 24) = v17;

    return MEMORY[0x2822009F8](sub_21CD0D5F4, 0, 0);
  }

  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v20 = sub_21CD839F4();
  __swift_project_value_buffer(v20, qword_280F78E40);

  v21 = sub_21CD839D4();
  v22 = sub_21CD83E24();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 104);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_21CCC02FC(v23, v3, &v26);
    _os_log_impl(&dword_21CC90000, v21, v22, "MobileDocumentProviderRegistrationSession pre-flight check failed: not entitled for document type %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x21CF18580](v25, -1, -1);
    MEMORY[0x21CF18580](v24, -1, -1);
  }

  v9 = "ication is not entitled.";
LABEL_14:
  v10 = v9 | 0x8000000000000000;
  sub_21CD0DE48();
  swift_allocError();
  v12 = v11;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *v11 = 3;
  *(v11 + 8) = 0;

  *(v12 + 16) = v1;
  *(v12 + 24) = v10;

  swift_willThrow();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21CD0D5F4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD8F638;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_21CD0D718;
  v6 = v0[12];

  return MEMORY[0x282200830](v6, &unk_21CD8F640, v3, sub_21CD0F1D8, v4, 0, 0, &type metadata for MobileDocumentProviderQueryRegistrationsResponse);
}

uint64_t sub_21CD0D718()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD0D878, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21CD0D878()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MobileDocumentProviderRegistrationSession.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MobileDocumentProviderRegistrationSession.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21CD0D978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v36);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  swift_defaultActor_initialize();
  v8 = [objc_opt_self() interfaceWithProtocol_];
  v9 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v10 = sub_21CD83B04();
  v11 = [v9 initWithMachServiceName:v10 options:{4096, 0, 0}];

  sub_21CCB3200(&aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A250, &qword_21CD8EF38);
  v12 = swift_allocObject();
  [v11 setRemoteObjectInterface_];
  [v11 setInvalidationHandler_];
  v13 = &_swift_FORCE_LOAD___swiftOSLog___CoreIDV;
  [v11 setInterruptionHandler_];
  [v11 setExportedInterface_];
  sub_21CCB3200(v35, v33);
  v14 = v34;
  if (v34)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v33, v34);
    v16 = *(v14 - 8);
    MEMORY[0x28223BE20](v15);
    v18 = &aBlock - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = sub_21CD84194();
    (*(v16 + 8))(v18, v14);
    v13 = &_swift_FORCE_LOAD___swiftOSLog___CoreIDV;
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    v19 = 0;
  }

  [v11 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v11;
  v12[2] = v20;
  v12[3] = sub_21CD088FC;
  v12[4] = 0;
  [v11 activate];

  sub_21CCC947C(v35);
  sub_21CCC947C(&aBlock);
  *(a2 + 112) = v12;

  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  v31 = sub_21CD08974;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  aBlock_8 = 1107296256;
  v29 = sub_21CCB3270;
  v30 = &block_descriptor_111;
  v22 = _Block_copy(&aBlock);

  [v21 v13[385]];
  _Block_release(v22);
  os_unfair_lock_unlock((v20 + 24));

  v23 = *(*(a2 + 112) + 16);

  os_unfair_lock_lock((v23 + 24));
  v24 = *(v23 + 16);
  v31 = sub_21CD08980;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  aBlock_8 = 1107296256;
  v29 = sub_21CCB3270;
  v30 = &block_descriptor_114;
  v25 = _Block_copy(&aBlock);

  [v24 setInvalidationHandler_];
  _Block_release(v25);
  os_unfair_lock_unlock((v23 + 24));

  sub_21CD02954(&v36, a2 + 120);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_21CD0DE48()
{
  result = qword_27CE1A2D8;
  if (!qword_27CE1A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A2D8);
  }

  return result;
}

uint64_t sub_21CD0DE9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderRegistrationRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD0DF00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderRegistrationRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD0DF64(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for MobileDocumentProviderRegistrationRequest(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CCC498C;

  return sub_21CD08E40(a1, a2, v2 + v7);
}

uint64_t sub_21CD0E048(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CCC498C;

  return sub_21CD09600(a1, a2, v7, v6);
}

uint64_t sub_21CD0E0FC(uint64_t a1, uint64_t *a2)
{
  v6 = *(type metadata accessor for MobileDocumentProviderRegistrationRequest(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_21CCC498C;

  return sub_21CD0A6AC(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_21CD0E220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CCB389C(a1, v4, v5, v6);
}

uint64_t sub_21CD0E2E0(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_21CCC498C;

  return sub_21CD0B000(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_21CD0E3A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CCB3B90(a1, v4, v5, v6);
}

uint64_t sub_21CD0E468(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v8 = *(v2 + 24);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21CCC498C;

  return sub_21CD0C0E4(a1, a2, v6, v8, v7);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.status.getter(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21CCC498C;

  return v6(a1);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.register(request:)(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21CCC498C;

  return v6(a1);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.unregister(request:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21CCC498C;

  return v6(a1);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.registrations()(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21CCC498C;

  return v6(a1);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.register(request:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 144) + **(*v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21CCC498C;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.unregister(request:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 152) + **(*v3 + 152));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21CCC498C;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.applications()(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21CCC498C;

  return v6(a1);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.notifyEnablementUpdate(to:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 168) + **(*v3 + 168));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21CCC498C;

  return v10(a1, a2, a3);
}

uint64_t sub_21CD0EEFC(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentProviderRegistrationRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CD0EF58(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21CCC498C;

  return v8(a1, v5);
}

uint64_t sub_21CD0F05C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CD0EF58(a1, a2, v6);
}

uint64_t sub_21CD0F124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC01B8;

  return sub_21CCB3A94(a1, v4, v5, v6);
}

uint64_t sub_21CD0F1E4(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CD0EF58(a1, a2, v6);
}

uint64_t sub_21CD0F2AC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CD0EF58(a1, a2, v6);
}

uint64_t sub_21CD0F374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CCB3998(a1, v4, v5, v6);
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *MobileDocumentProviderRegistrationSession.Error.init(code:underlyingError:debugDescription:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t sub_21CD0F4C0()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6F70707553746F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x6F68747541746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x5264696C61766E69;
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

uint64_t sub_21CD0F55C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD11D80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD0F584(uint64_t a1)
{
  v2 = sub_21CD0FC14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD0F5C0(uint64_t a1)
{
  v2 = sub_21CD0FC14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD0F5FC(uint64_t a1)
{
  v2 = sub_21CD0FD10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD0F638(uint64_t a1)
{
  v2 = sub_21CD0FD10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD0F674(uint64_t a1)
{
  v2 = sub_21CD0FC68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD0F6B0(uint64_t a1)
{
  v2 = sub_21CD0FC68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD0F6EC(uint64_t a1)
{
  v2 = sub_21CD0FCBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD0F728(uint64_t a1)
{
  v2 = sub_21CD0FCBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD0F764(uint64_t a1)
{
  v2 = sub_21CD0FD64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD0F7A0(uint64_t a1)
{
  v2 = sub_21CD0FD64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentProviderRegistrationSession.Error.Code.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A2F8, &qword_21CD8F6B0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A300, &qword_21CD8F6B8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A308, &qword_21CD8F6C0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A310, &qword_21CD8F6C8);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A318, &qword_21CD8F6D0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD0FC14();
  sub_21CD842B4();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_21CD0FCBC();
      v18 = v27;
      sub_21CD840E4();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_21CD0FC68();
      v18 = v30;
      sub_21CD840E4();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_21CD0FD10();
    v18 = v24;
    sub_21CD840E4();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_21CD0FD64();
  sub_21CD840E4();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_21CD0FC14()
{
  result = qword_27CE1A320;
  if (!qword_27CE1A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A320);
  }

  return result;
}

unint64_t sub_21CD0FC68()
{
  result = qword_27CE1A328;
  if (!qword_27CE1A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A328);
  }

  return result;
}

unint64_t sub_21CD0FCBC()
{
  result = qword_27CE1A330;
  if (!qword_27CE1A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A330);
  }

  return result;
}

unint64_t sub_21CD0FD10()
{
  result = qword_27CE1A338;
  if (!qword_27CE1A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A338);
  }

  return result;
}

unint64_t sub_21CD0FD64()
{
  result = qword_27CE1A340;
  if (!qword_27CE1A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A340);
  }

  return result;
}

uint64_t MobileDocumentProviderRegistrationSession.Error.Code.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

uint64_t MobileDocumentProviderRegistrationSession.Error.Code.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A348, &qword_21CD8F6D8);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A350, &qword_21CD8F6E0);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A358, &qword_21CD8F6E8);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A360, &qword_21CD8F6F0);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A368, &unk_21CD8F6F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v14);
  sub_21CD0FC14();
  v15 = v46;
  sub_21CD842A4();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_21CD840D4();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_21CCD18D8();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_21CD83FA4();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20);
      *v28 = &type metadata for MobileDocumentProviderRegistrationSession.Error.Code;
      sub_21CD84044();
      sub_21CD83F94();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_21CD0FD10();
        v32 = v35;
        sub_21CD84034();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_21CD0FD64();
        v25 = v35;
        sub_21CD84034();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_0(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_21CD0FCBC();
      v31 = v35;
      sub_21CD84034();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_21CD0FC68();
      v33 = v35;
      sub_21CD84034();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v47);
}

void *MobileDocumentProviderRegistrationSession.Error.underlyingError.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t MobileDocumentProviderRegistrationSession.Error.debugDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MobileDocumentProviderRegistrationSession.Error.debugDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MobileDocumentProviderRegistrationSession.Error.init(_bridgedNSError:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_21CD83B24();
  v7 = v6;

  sub_21CD10A20();
  if (v5 == sub_21CD834B4() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_21CD841A4();

    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v12 = [a1 userInfo];
  v13 = sub_21CD83A24();

  if (*(v13 + 16) && (v14 = sub_21CCA996C(0xD000000000000038, 0x800000021CD9FC50), (v15 & 1) != 0))
  {
    sub_21CCB15A8(*(v13 + 56) + 32 * v14, v41);

    result = swift_dynamicCast();
    if (result)
    {
      sub_21CD83574();
      swift_allocObject();
      sub_21CD83564();
      sub_21CD10DBC();
      sub_21CD83554();

      v16 = v41[0];
      v17 = [a1 code];
      if (v17 == v16)
      {
        v18 = v17;
        v19 = [a1 userInfo];
        v20 = sub_21CD83A24();

        v21 = sub_21CD83B24();
        if (*(v20 + 16))
        {
          v38 = v18;
          v23 = sub_21CCA996C(v21, v22);
          v25 = v24;

          if (v25)
          {
            sub_21CCB15A8(*(v20 + 56) + 32 * v23, v41);

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
            if (swift_dynamicCast())
            {
              v26 = v39;
            }

            else
            {
              v26 = 0;
            }
          }

          else
          {

            v26 = 0;
          }

          v18 = v38;
        }

        else
        {

          v26 = 0;
        }

        v27 = [a1 userInfo];
        v28 = sub_21CD83A24();

        v29 = sub_21CD83B24();
        if (*(v28 + 16))
        {
          v31 = sub_21CCA996C(v29, v30);
          v33 = v32;

          if (v33)
          {
            sub_21CCB15A8(*(v28 + 56) + 32 * v31, v41);
            sub_21CCB1880(v39, v40);

            v34 = swift_dynamicCast();
            v35 = v39;
            if (v34)
            {
              v36 = v40;
            }

            else
            {
              v35 = 0;
              v36 = 0;
            }

            goto LABEL_33;
          }

          sub_21CCB1880(v39, v40);
        }

        else
        {
          sub_21CCB1880(v39, v40);
        }

        v35 = 0;
        v36 = 0;
LABEL_33:
        *a2 = v18;
        a2[1] = v26;
        a2[2] = v35;
        a2[3] = v36;
        v37 = v26;
      }

      result = sub_21CCB1880(v39, v40);
    }
  }

  else
  {
  }

LABEL_13:
  *a2 = xmmword_21CD8F6A0;
  a2[2] = 0;
  a2[3] = 0;
  return result;
}

unint64_t sub_21CD10A20()
{
  result = qword_27CE1A370;
  if (!qword_27CE1A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A370);
  }

  return result;
}

uint64_t MobileDocumentProviderRegistrationSession.Error.errorUserInfo.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = MEMORY[0x277D84F98];
  v30 = MEMORY[0x277D84F98];
  sub_21CD835A4();
  swift_allocObject();
  sub_21CD83594();
  sub_21CD10E10();
  v5 = sub_21CD83584();
  v7 = v6;

  v29 = MEMORY[0x277CC9318];
  *&v28 = v5;
  *(&v28 + 1) = v7;
  sub_21CCB2190(&v28, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21CD113FC(v25, 0xD000000000000038, 0x800000021CD9FC50, isUniquelyReferenced_nonNull_native);
  v30 = v4;
  v9 = sub_21CD83B24();
  v11 = v9;
  v12 = v10;
  if (v3)
  {
    v29 = MEMORY[0x277D837D0];
    *&v28 = v2;
    *(&v28 + 1) = v3;
    sub_21CCB2190(&v28, v25);

    v13 = v30;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_21CD113FC(v25, v11, v12, v14);

    v30 = v13;
  }

  else
  {
    sub_21CD10E64(v9, v10, &v28);

    sub_21CCC947C(&v28);
  }

  v15 = sub_21CD83B24();
  v17 = v15;
  v18 = v16;
  if (v1)
  {
    swift_getErrorValue();
    v19 = v26;
    v20 = v27;
    v29 = v27;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v28);
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_0, v19, v20);
    sub_21CCB2190(&v28, v25);
    v22 = v30;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_21CD113FC(v25, v17, v18, v23);

    return v22;
  }

  else
  {
    sub_21CD10E64(v15, v16, &v28);

    sub_21CCC947C(&v28);
    return v30;
  }
}

uint64_t sub_21CD10D44(uint64_t a1)
{
  v2 = sub_21CD10A20();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21CD10D80(uint64_t a1)
{
  v2 = sub_21CD10A20();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_21CD10DBC()
{
  result = qword_27CE1A378;
  if (!qword_27CE1A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A378);
  }

  return result;
}

unint64_t sub_21CD10E10()
{
  result = qword_27CE1A380;
  if (!qword_27CE1A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A380);
  }

  return result;
}

double sub_21CD10E64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_21CCA996C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21CD7694C();
      v10 = v12;
    }

    sub_21CCB2190((*(v10 + 56) + 32 * v8), a3);
    sub_21CD11060(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_21CD10F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_21CCA996C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21CD76CAC();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for SynchronousExtensionPointManager.State(0);
    v19 = *(v12 - 8);
    sub_21CD11F5C(v11 + *(v19 + 72) * v8, a3);
    sub_21CD11210(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for SynchronousExtensionPointManager.State(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_21CD11060(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CD83F04() + 1) & ~v5;
    do
    {
      sub_21CD84264();

      sub_21CD83B74();
      v10 = sub_21CD84294();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_21CD11210(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CD83F04() + 1) & ~v5;
    while (1)
    {
      sub_21CD84264();

      sub_21CD83B74();
      v9 = sub_21CD84294();

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
      v15 = *(*(type metadata accessor for SynchronousExtensionPointManager.State(0) - 8) + 72);
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

_OWORD *sub_21CD113FC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21CCA996C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21CD7694C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21CD758AC(v16, a4 & 1);
    v11 = sub_21CCA996C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21CD841F4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_21CCB2190(a1, v22);
  }

  else
  {
    sub_21CD76764(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_21CD11550()
{
  result = qword_27CE1A388;
  if (!qword_27CE1A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A388);
  }

  return result;
}

uint64_t sub_21CD115A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21CD11600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21CD116C8()
{
  result = qword_27CE1A390;
  if (!qword_27CE1A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A390);
  }

  return result;
}

unint64_t sub_21CD11720()
{
  result = qword_27CE1A398;
  if (!qword_27CE1A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A398);
  }

  return result;
}

unint64_t sub_21CD11778()
{
  result = qword_27CE1A3A0;
  if (!qword_27CE1A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A3A0);
  }

  return result;
}

unint64_t sub_21CD117D0()
{
  result = qword_27CE1A3A8;
  if (!qword_27CE1A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A3A8);
  }

  return result;
}

unint64_t sub_21CD11828()
{
  result = qword_27CE1A3B0;
  if (!qword_27CE1A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A3B0);
  }

  return result;
}