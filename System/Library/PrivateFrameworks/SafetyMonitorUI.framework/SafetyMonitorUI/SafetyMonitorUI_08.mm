uint64_t sub_2646E7A0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C10, &qword_26478ECC8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26460CCE8(a1, &v5 - v3, &qword_27FF77C10, &qword_26478ECC8);
  return sub_264784454();
}

uint64_t sub_2646E7AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CheckInView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646E7B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  result = a2;
  v8 = (a7 >> 21) & 7;
  if (v8 > 1)
  {
    if (v8 - 2 >= 2)
    {
      if (v8 != 4)
      {
        return result;
      }

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v8)
  {

LABEL_6:
  }

LABEL_8:
}

uint64_t sub_2646E7BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CheckInView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2646E7C10(double *a1)
{
  v3 = *(type metadata accessor for CheckInView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_2646E4AD4(a1, v4);
}

unint64_t sub_2646E7C80()
{
  result = qword_27FF77BA0;
  if (!qword_27FF77BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77B78, &qword_26478EB10);
    sub_2646E7D38();
    sub_26460CDF0(&qword_27FF77268, &qword_27FF77270, &qword_26478C710, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77BA0);
  }

  return result;
}

unint64_t sub_2646E7D38()
{
  result = qword_27FF77BA8;
  if (!qword_27FF77BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77B70, &qword_26478EB08);
    sub_2646E7DC4();
    sub_2646E8020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77BA8);
  }

  return result;
}

unint64_t sub_2646E7DC4()
{
  result = qword_27FF77BB0;
  if (!qword_27FF77BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77B68, &qword_26478EB00);
    sub_2646E7E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77BB0);
  }

  return result;
}

unint64_t sub_2646E7E50()
{
  result = qword_27FF77BB8;
  if (!qword_27FF77BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77B60, &qword_26478EAF8);
    sub_2646E7EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77BB8);
  }

  return result;
}

unint64_t sub_2646E7EDC()
{
  result = qword_27FF77BC0;
  if (!qword_27FF77BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77B48, &qword_26478EAE0);
    sub_2646E7F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77BC0);
  }

  return result;
}

unint64_t sub_2646E7F68()
{
  result = qword_27FF77BC8;
  if (!qword_27FF77BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77B58, &qword_26478EAF0);
    sub_26460CDF0(&qword_27FF77BD0, &qword_27FF77B50, &qword_26478EAE8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77BC8);
  }

  return result;
}

unint64_t sub_2646E8020()
{
  result = qword_27FF77BD8;
  if (!qword_27FF77BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77BD8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SafetyMonitorUI16CheckInViewStateO(uint64_t a1)
{
  v1 = *(a1 + 50);
  if ((v1 >> 6) <= 2u)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2646E80CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFF9 && *(a1 + 51))
  {
    return (*a1 + 2097146);
  }

  if ((((*(a1 + 50) << 16) & 0x1E0000 | (8 * ((*(a1 + 48) >> 2) & 0x3F80 | (*(a1 + 48) >> 1))) | (*(a1 + 50) >> 5)) ^ 0x1FFFFFu) >= 0x1FFFF9)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*(a1 + 50) << 16) & 0x1E0000 | (8 * ((*(a1 + 48) >> 2) & 0x3F80 | (*(a1 + 48) >> 1))) | (*(a1 + 50) >> 5)) ^ 0x1FFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_2646E813C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x1FFFFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 2097146;
    if (a3 > 0x1FFFF9)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 > 0x1FFFF9)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x3FFFF) - (a2 << 18);
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 50) = (v3 >> 13) & 0xFE;
      *(result + 48) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_2646E81D0(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = a1 + 48;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x1F;
  *result = v2;
  return result;
}

uint64_t sub_2646E81EC(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    v2 = *(result + 48);
    result += 48;
    v3 = (v2 | (*(result + 2) << 16)) & 0x1010101 | (a2 << 21);
    *result = v2 & 0x101;
    *(result + 2) = BYTE2(v3);
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 50) = -64;
    *(result + 48) = 0;
  }

  return result;
}

uint64_t sub_2646E8260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 152);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77BE0, &qword_26478ECB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2646E8330(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 152) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77BE0, &qword_26478ECB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2646E83E0(uint64_t a1)
{
  sub_2646E8588(319, &qword_27FF77BF8, &qword_27FF77B38, &qword_26478EAA0, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_2646E8538();
    if (v2 <= 0x3F)
    {
      sub_264613E28();
      if (v3 <= 0x3F)
      {
        sub_2646E8588(319, &qword_27FF77C08, &qword_27FF77C10, &qword_26478ECC8, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UIEdgeInsets(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2646E8538()
{
  if (!qword_27FF77C00)
  {
    v0 = sub_264785B44();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF77C00);
    }
  }
}

void sub_2646E8588(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2646E85F0()
{
  result = qword_27FF77C18;
  if (!qword_27FF77C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77C20, &qword_26478ECD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77B78, &qword_26478EB10);
    sub_2646E7C80();
    swift_getOpaqueTypeConformance2();
    sub_2646E99E4(&qword_27FF76008, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77C18);
  }

  return result;
}

uint64_t sub_2646E86E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2646E8730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for CheckInView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  sub_2646E7B20(*(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72) | (*(v5 + 74) << 16));

  v6 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B40, &qword_26478EAD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2647854C4();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_2646E8A04()
{
  result = qword_27FF77CA0;
  if (!qword_27FF77CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77C98, &qword_26478EE50);
    sub_2646E8A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77CA0);
  }

  return result;
}

unint64_t sub_2646E8A88()
{
  result = qword_27FF77CA8;
  if (!qword_27FF77CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77CB0, &qword_26478EE58);
    sub_2646E8B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77CA8);
  }

  return result;
}

unint64_t sub_2646E8B14()
{
  result = qword_27FF77CB8;
  if (!qword_27FF77CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77CC0, &qword_26478EE60);
    sub_2646E8BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77CB8);
  }

  return result;
}

unint64_t sub_2646E8BA0()
{
  result = qword_27FF77CC8;
  if (!qword_27FF77CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77CD0, &qword_26478EE68);
    sub_2646E8C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77CC8);
  }

  return result;
}

unint64_t sub_2646E8C2C()
{
  result = qword_27FF77CD8;
  if (!qword_27FF77CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77CE0, &qword_26478EE70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77CE8, &unk_26478EE78);
    sub_2646E8CF4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77CD8);
  }

  return result;
}

unint64_t sub_2646E8CF4()
{
  result = qword_27FF77CF0;
  if (!qword_27FF77CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77CE8, &unk_26478EE78);
    sub_26460CDF0(&qword_27FF765C0, &qword_27FF765C8, &qword_26478A6E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77CF0);
  }

  return result;
}

unint64_t sub_2646E8DAC()
{
  result = qword_27FF77D00;
  if (!qword_27FF77D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77D00);
  }

  return result;
}

unint64_t sub_2646E8E10()
{
  result = qword_27FF77D48;
  if (!qword_27FF77D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77D40, &qword_26478EF20);
    sub_2646E8EC8();
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77D48);
  }

  return result;
}

unint64_t sub_2646E8EC8()
{
  result = qword_27FF77D50;
  if (!qword_27FF77D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77D58, &qword_26478EF28);
    sub_2646E8F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77D50);
  }

  return result;
}

unint64_t sub_2646E8F54()
{
  result = qword_27FF77D60;
  if (!qword_27FF77D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77D68, &unk_26478EF30);
    sub_26460CDF0(&qword_27FF77D70, &qword_27FF77D78, &unk_264792F00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77D60);
  }

  return result;
}

unint64_t sub_2646E900C()
{
  result = qword_27FF77D88;
  if (!qword_27FF77D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77D80, &qword_26478EF48);
    sub_2646E90C4();
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77D88);
  }

  return result;
}

unint64_t sub_2646E90C4()
{
  result = qword_27FF77D90;
  if (!qword_27FF77D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77D98, &qword_26478EF50);
    sub_2646E9150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77D90);
  }

  return result;
}

unint64_t sub_2646E9150()
{
  result = qword_27FF77DA0;
  if (!qword_27FF77DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77DA8, &qword_26478EF58);
    sub_2646E8F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77DA0);
  }

  return result;
}

unint64_t sub_2646E91DC()
{
  result = qword_27FF77E00;
  if (!qword_27FF77E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77DE0, &unk_26478EF90);
    sub_2646E9294();
    sub_2646E9550(&qword_27FF77E28, &qword_27FF77DC8, &qword_26478EF78, sub_2646E9604);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E00);
  }

  return result;
}

unint64_t sub_2646E9294()
{
  result = qword_27FF77E08;
  if (!qword_27FF77E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77DF0, &qword_26478EFA8);
    sub_2646E934C();
    sub_26460CDF0(&qword_27FF76260, &qword_27FF76268, &qword_26478EFD0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E08);
  }

  return result;
}

unint64_t sub_2646E934C()
{
  result = qword_27FF77E10;
  if (!qword_27FF77E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77DE8, &qword_26478EFA0);
    sub_2646E93D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E10);
  }

  return result;
}

unint64_t sub_2646E93D8()
{
  result = qword_27FF77E18;
  if (!qword_27FF77E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77E20, &unk_26478EFC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF771E0, &qword_264792500);
    sub_264784A74();
    sub_26460CDF0(&qword_27FF771E8, &qword_27FF771E0, &qword_264792500, MEMORY[0x277CDD7F8]);
    sub_2646E99E4(&qword_27FF771F0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    swift_getOpaqueTypeConformance2();
    sub_26460CDF0(&qword_27FF77138, &qword_27FF76C20, &qword_26478B740, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E18);
  }

  return result;
}

uint64_t sub_2646E9550(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2646E99E4(&qword_27FF76008, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2646E9604()
{
  result = qword_27FF77E30;
  if (!qword_27FF77E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77E38, &unk_26478EFD8);
    sub_264690BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E30);
  }

  return result;
}

unint64_t sub_2646E9690()
{
  result = qword_27FF77E50;
  if (!qword_27FF77E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77E48, &unk_26478EFE8);
    sub_26465D720();
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E50);
  }

  return result;
}

unint64_t sub_2646E975C()
{
  result = qword_27FF77E60;
  if (!qword_27FF77E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77C30, &qword_26478EDE8);
    sub_26460CDF0(&qword_27FF77E68, &qword_27FF77C28, &qword_26478EDE0, MEMORY[0x277CE04B0]);
    sub_26460CDF0(&qword_27FF76B00, &qword_27FF76B08, &unk_26478B650, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E60);
  }

  return result;
}

unint64_t sub_2646E9844()
{
  result = qword_27FF77E70;
  if (!qword_27FF77E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77C48, &qword_26478EE00);
    sub_2646E98FC();
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E70);
  }

  return result;
}

unint64_t sub_2646E98FC()
{
  result = qword_27FF77E78;
  if (!qword_27FF77E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77C38, &qword_26478EDF0);
    sub_2646E99E4(&qword_27FF77E80, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    sub_26460CDF0(&qword_27FF77E88, &qword_27FF77C40, &qword_26478EDF8, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E78);
  }

  return result;
}

uint64_t sub_2646E99E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2646E9A30(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for SafetyCacheMapView.Annotation(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_2646F4B44(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_2646F2398(v10, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_2646E9AF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*v1)
  {
    sub_264785F64();
    v4 = v3;
    sub_264785AF4();
  }

  else
  {
    sub_264785F64();
  }

  v5 = *(v2 + 1);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x26673FCA0](*&v5);
  v6 = *(v2 + 2);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x26673FCA0](*&v6);
  sub_264785794();

  v7 = v2[4];
  sub_264785F64();
  if (v7)
  {
    v8 = v7;
    sub_264785AF4();
  }

  v9 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  sub_264783AF4();
  sub_2646F1F30(&qword_27FF77F80, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_264785644();
  v10 = v2 + *(v9 + 36);
  if (v10[8] == 1)
  {
    return sub_264785F64();
  }

  v12 = *v10;
  sub_264785F64();
  if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return MEMORY[0x26673FCA0](v13);
}

uint64_t sub_2646E9D5C()
{
  sub_264785CE4();
  MEMORY[0x26673F4D0](0xD000000000000012, 0x8000000264798F50);
  sub_264785D84();
  MEMORY[0x26673F4D0](0x75746974616C202CLL, 0xEC000000203A6564);
  sub_264785934();
  MEMORY[0x26673F4D0](0x7469676E6F6C202CLL, 0xED0000203A656475);
  sub_264785934();
  MEMORY[0x26673F4D0](0x203A636E7568202CLL, 0xE800000000000000);
  type metadata accessor for SafetyCacheMapView.Annotation(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v0 = sub_264785764();
  MEMORY[0x26673F4D0](v0);

  return 0;
}

uint64_t sub_2646E9EE4()
{
  sub_264785F44();
  sub_2646E9AF0(v1);
  return sub_264785F94();
}

uint64_t sub_2646E9F28(uint64_t a1)
{
  sub_264785F44();
  sub_2646E9AF0(v2);
  return sub_264785F94();
}

id sub_2646E9F68()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CD4EC8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F90, &qword_26478F380);
  sub_264784AB4();
  [v2 setDelegate_];

  type metadata accessor for SafetyCacheMapView.EnrouteAnnotationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_264785714();
  [v2 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v4];

  sub_264784AB4();
  sub_2646EA6D4(*v1, v2);

  sub_264784AB4();
  type metadata accessor for SafetyCacheMapView(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F98, &qword_26478F388);
  MEMORY[0x26673F100](v9, v5);
  sub_2646EC928(v9, v2);

  return v2;
}

id sub_2646EA0E8(void *a1)
{
  v2 = v1;
  v53 = a1;
  v52 = sub_264783F74();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2647841F4();
  v4 = *(v47 - 8);
  v5 = MEMORY[0x28223BE20](v47);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v54 = sub_264784574();
  v10 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SafetyCacheMapView(0) - 8;
  MEMORY[0x28223BE20](v50);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F90, &qword_26478F380);
  sub_264784AB4();
  v15 = v61[0];
  sub_2646F54B0(v2, v14, type metadata accessor for SafetyCacheMapView);
  v16 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
  swift_beginAccess();
  sub_2646F53EC(v14, v15 + v16);
  swift_endAccess();

  sub_264784AB4();
  v17 = v55;
  sub_264784AC4();
  sub_264784424();
  v18 = *(v10 + 8);
  v45 = v10 + 8;
  v46 = v18;
  v18(v12, v54);
  v19 = v7;
  v20 = v7;
  v21 = v47;
  (*(v4 + 104))(v20, *MEMORY[0x277CDFA90], v47);
  LOBYTE(v14) = sub_2647841E4();
  v22 = *(v4 + 8);
  v22(v19, v21);
  v22(v9, v21);
  v23 = &v17[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_contactImageRenderingContext];
  swift_beginAccess();
  v23[8] = v14 & 1;

  sub_264784AB4();
  v24 = v55;
  sub_264784AC4();
  sub_2647843E4();
  v26 = v25;
  v27 = v54;
  v28 = v46;
  v46(v12, v54);
  v29 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_contactImageRenderingContext;
  swift_beginAccess();
  *&v24[v29] = v26;

  sub_264784AB4();
  v30 = v61[0];
  sub_264784AC4();
  v31 = v49;
  sub_2647843A4();
  v28(v12, v27);
  v32 = &v30[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_contactImageRenderingContext];
  swift_beginAccess();
  v33 = type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext(0);
  (*(v51 + 40))(&v32[*(v33 + 24)], v31, v52);
  swift_endAccess();

  sub_264784AB4();
  v34 = v55;
  v35 = v48;
  v36 = v53;
  sub_2646EA6D4(*v48, v53);

  sub_264784AB4();
  v37 = v60;
  v38 = v50;
  v39 = v35 + *(v50 + 32);
  v40 = *(v39 + 1);
  v41 = v39[48];
  v55 = *v39;
  v56 = v40;
  v42 = *(v39 + 2);
  v57 = *(v39 + 1);
  v58 = v42;
  v59 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F98, &qword_26478F388);
  MEMORY[0x26673F100](v61, v43);
  sub_2646EC928(v61, v36);

  [v36 setZoomEnabled_];
  [v36 setScrollEnabled_];
  [v36 setPitchEnabled_];
  return [v36 setRotateEnabled_];
}

uint64_t sub_2646EA6D4(uint64_t a1, void *a2)
{
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FD0, &qword_26478F3A8);
  MEMORY[0x28223BE20](v159);
  v6 = &v137 - v5;
  v167 = type metadata accessor for SafetyCacheMapView(0);
  MEMORY[0x28223BE20](v167);
  v158 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v150 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v137 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v137 - v14;
  v156 = sub_264783E24();
  v147 = *(v156 - 8);
  v16 = MEMORY[0x28223BE20](v156);
  v144 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v143 = &v137 - v19;
  MEMORY[0x28223BE20](v18);
  v160 = &v137 - v20;
  v157 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v139 = *(v157 - 8);
  v21 = MEMORY[0x28223BE20](v157);
  v151 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v154 = (&v137 - v24);
  MEMORY[0x28223BE20](v23);
  v153 = &v137 - v25;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FE8, &qword_26478F3D8);
  v169 = *(v166 - 8);
  v26 = MEMORY[0x28223BE20](v166);
  v155 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v137 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = (&v137 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF77FF0, qword_26478F3E0);
  v140 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v149 = &v137 - v34;
  v35 = 494.0 / *(a1 + 16);
  v145 = v2;
  *(v2 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_priorityDistanceBetweenEnrouteAnnotations) = v35;
  v36 = [a2 annotations];
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FE0, &qword_26478F3D0);
  v37 = sub_2647857F4();

  v175[0] = v37;
  v175[1] = sub_2646EC358;
  v175[2] = 0;
  v175[3] = sub_2646F49D8;
  v175[4] = 0;
  v175[5] = sub_2646F4A3C;
  v175[6] = 0;
  v171 = sub_2646F4B58(v175);
  v38 = 0;
  sub_2646E9A30(&v171, sub_2646F6B00, sub_2646F6B18);
  v161 = v6;
  v168 = a2;

  v39 = v171;
  v171 = a1;

  sub_2646E9A30(&v171, sub_2646F6B00, sub_2646F6B18);
  v162 = v15;
  v163 = v13;
  v141 = a1;
  v164 = v171;
  v165 = v39;
  v174 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756F0, &qword_264787DE8);
  sub_26460CDF0(&unk_27FF78000, &qword_27FF756F0, &qword_264787DE8, MEMORY[0x277D83958]);
  sub_2646F1F30(&qword_27FF76748, type metadata accessor for SafetyCacheMapView.Annotation, &unk_26478F1A4);
  sub_264785664();
  v148 = v33;
  v40 = sub_264785E04();
  v171 = MEMORY[0x277D84F90];
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = 0;
    v43 = (v41 - 1);
    v146 = MEMORY[0x277D84F90];
    while (v42 < *(v40 + 16))
    {
      sub_26460CCE8(v40 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v42, v32, &qword_27FF77FE8, &qword_26478F3D8);
      sub_2646EC414(v32, v168, &v174);
      v44 = sub_26460CD50(v32, &qword_27FF77FE8, &qword_26478F3D8);
      if (v174)
      {
        v152 = v43;
        MEMORY[0x26673F500](v44);
        if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v146 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_264785814();
        }

        v138 = v42 + 1;
        sub_264785844();
        v146 = v171;
        v43 = v152;
        v45 = v152 == v42;
        v42 = v138;
        if (v45)
        {
          goto LABEL_13;
        }
      }

      else if (v41 == ++v42)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  v146 = MEMORY[0x277D84F90];
LABEL_13:

  v46 = sub_264785DF4();
  v32 = v46;
  v41 = MEMORY[0x277D84F90];
  v171 = MEMORY[0x277D84F90];
  v165 = *(v46 + 16);
  if (v165)
  {
    v47 = 0;
    v164 = v46 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
    v38 = &qword_27FF77FE8;
    v152 = (v147 + 8);
    v48 = v160;
    v42 = v155;
    while (v47 < v32[2])
    {
      sub_26460CCE8(v164 + *(v169 + 72) * v47, v30, &qword_27FF77FE8, &qword_26478F3D8);
      sub_26460CCE8(v30, v42, &qword_27FF77FE8, &qword_26478F3D8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26460CD50(v42, &qword_27FF77FE8, &qword_26478F3D8);
        sub_264783E04();
        v49 = sub_264783E14();
        v50 = sub_2647859D4();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_264605000, v49, v50, "#SafetyCacheMapView: found an inserted item that was actually a removal?", v51, 2u);
          v52 = v51;
          v48 = v160;
          MEMORY[0x266740650](v52, -1, -1);
        }

        (*v152)(v48, v156);
        sub_26460CD50(v30, &qword_27FF77FE8, &qword_26478F3D8);
      }

      else
      {
        v53 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78030, &unk_26478F410) + 48);
        v54 = v153;
        sub_2646F5518(v53, v153);
        v55 = v154;
        sub_2646F54B0(v54, v154, type metadata accessor for SafetyCacheMapView.Annotation);
        v56 = type metadata accessor for SafetyCacheMapView._Annotation(0);
        v57 = objc_allocWithZone(v56);
        sub_2646F54B0(v55, v57 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, type metadata accessor for SafetyCacheMapView.Annotation);
        v170.receiver = v57;
        v170.super_class = v56;
        objc_msgSendSuper2(&v170, sel_init);
        sub_2646F5450(v55, type metadata accessor for SafetyCacheMapView.Annotation);
        sub_2646F5450(v54, type metadata accessor for SafetyCacheMapView.Annotation);
        v58 = sub_26460CD50(v30, &qword_27FF77FE8, &qword_26478F3D8);
        MEMORY[0x26673F500](v58);
        if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_264785814();
        }

        sub_264785844();
        v41 = v171;
        v48 = v160;
        v42 = v155;
      }

      if (v165 == ++v47)
      {
        goto LABEL_24;
      }
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_24:

  v42 = v146;
  if (!(v146 >> 62))
  {
    v59 = v168;
    v60 = v144;
    v61 = v143;
    if (!*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    goto LABEL_26;
  }

LABEL_37:
  v79 = sub_264785C14();
  v59 = v168;
  v60 = v144;
  v61 = v143;
  if (!v79)
  {
LABEL_38:

    if (v41 >> 62)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

LABEL_26:
  sub_264783E04();

  v62 = sub_264783E14();
  v38 = sub_2647859B4();

  if (os_log_type_enabled(v62, v38))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v173 = 0;
    v174 = v64;
    *v63 = 136642819;
    v171 = v42;
    v172 = sub_2646F6B30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78010, &qword_26478F400);
    v65 = v41;
    sub_2646F5A40();
    v66 = sub_264785674();
    v68 = v67;

    v69 = sub_2646DF234(v66, v68, &v174);
    v41 = v65;

    *(v63 + 4) = v69;
    _os_log_impl(&dword_264605000, v62, v38, "#SafetyCacheMapView: removing annotations %{sensitive}s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x266740650](v64, -1, -1);
    v70 = v63;
    v60 = v144;
    MEMORY[0x266740650](v70, -1, -1);

    (*(v147 + 8))(v143, v156);
  }

  else
  {

    (*(v147 + 8))(v61, v156);
  }

  v32 = sub_2647857E4();

  [v59 removeAnnotations_];

  if (v41 >> 62)
  {
LABEL_39:
    if (!sub_264785C14())
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_40:

    goto LABEL_41;
  }

LABEL_31:
  sub_264783E04();

  v71 = sub_264783E14();
  v38 = sub_2647859B4();

  if (os_log_type_enabled(v71, v38))
  {
    v72 = v60;
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v173 = 0;
    v174 = v74;
    *v73 = 136642819;
    v171 = v41;
    v172 = sub_2646F6B30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78010, &qword_26478F400);
    sub_2646F5A40();
    v75 = sub_264785674();
    v77 = v76;

    v78 = sub_2646DF234(v75, v77, &v174);

    *(v73 + 4) = v78;
    _os_log_impl(&dword_264605000, v71, v38, "#SafetyCacheMapView: inserted annotations %{sensitive}s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x266740650](v74, -1, -1);
    MEMORY[0x266740650](v73, -1, -1);

    (*(v147 + 8))(v72, v156);
  }

  else
  {

    (*(v147 + 8))(v60, v156);
  }

  v32 = sub_2647857E4();

  [v59 addAnnotations_];

LABEL_41:
  v80 = [v59 annotations];
  v81 = sub_2647857F4();

  if (v81 >> 62)
  {
    v165 = sub_264785C14();
    if (v165)
    {
      goto LABEL_43;
    }

LABEL_122:

    v135 = [v59 overlays];
    if (!v135)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76940, &qword_26478B1E0);
      sub_2647857F4();
      v135 = sub_2647857E4();
    }

    [v59 removeOverlays_];

    sub_2646F55FC(v141, v59);
    sub_2646EDF10(v59);
    return (*(v140 + 8))(v149, v148);
  }

  v165 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v165)
  {
    goto LABEL_122;
  }

LABEL_43:
  if (v165 >= 1)
  {
    v82 = v145 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
    v164 = v81 & 0xC000000000000001;
    swift_beginAccess();
    v83 = 0;
    v160 = (v139 + 56);
    v84 = (v139 + 48);
    v85 = &qword_27FF766A8;
    v86 = &unk_26478AA80;
    v156 = v81;
    v155 = v82;
    v154 = (v139 + 48);
    while (1)
    {
      if (v164)
      {
        v89 = MEMORY[0x26673FA30](v83, v81);
      }

      else
      {
        v89 = *(v81 + 8 * v83 + 32);
        swift_unknownObjectRetain();
      }

      type metadata accessor for SafetyCacheMapView._Annotation(0);
      v90 = swift_dynamicCastClass();
      if (!v90)
      {
        goto LABEL_46;
      }

      v169 = v89;
      v166 = v90;
      v91 = v86;
      v92 = v85;
      v93 = v162;
      sub_2646F54B0(v90 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, v162, type metadata accessor for SafetyCacheMapView.Annotation);
      v94 = v157;
      (*v160)(v93, 0, 1, v157);
      v95 = v158;
      sub_2646F54B0(v82, v158, type metadata accessor for SafetyCacheMapView);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
      v97 = v163;
      MEMORY[0x26673F100](v96);
      sub_2646F5450(v95, type metadata accessor for SafetyCacheMapView);
      v98 = *(v159 + 48);
      v99 = v161;
      sub_26460CCE8(v93, v161, v92, v91);
      sub_26460CCE8(v97, v99 + v98, v92, v91);
      v100 = *v84;
      if ((*v84)(v99, 1, v94) != 1)
      {
        break;
      }

      sub_26460CD50(v97, v92, v91);
      sub_26460CD50(v93, v92, v91);
      v45 = v100(v99 + v98, 1, v94) == 1;
      v101 = v99;
      v59 = v168;
      v85 = v92;
      v86 = v91;
      if (!v45)
      {
        goto LABEL_57;
      }

      sub_26460CD50(v101, v85, v91);
      v87 = &selRef_selectAnnotation_animated_;
      v81 = v156;
      v82 = v155;
      v88 = v166;
LABEL_45:
      [v59 *v87];
LABEL_46:
      ++v83;
      swift_unknownObjectRelease();
      if (v165 == v83)
      {
        goto LABEL_122;
      }
    }

    v102 = v150;
    sub_26460CCE8(v99, v150, v92, v91);
    v85 = v92;
    if (v100(v99 + v98, 1, v94) == 1)
    {
      sub_26460CD50(v163, v92, v91);
      sub_26460CD50(v162, v92, v91);
      sub_2646F5450(v102, type metadata accessor for SafetyCacheMapView.Annotation);
      v101 = v99;
      v59 = v168;
      v84 = v154;
      v86 = v91;
LABEL_57:
      sub_26460CD50(v101, &qword_27FF77FD0, &qword_26478F3A8);
      v81 = v156;
      v82 = v155;
      v88 = v166;
LABEL_117:
      v87 = &selRef_deselectAnnotation_animated_;
      goto LABEL_45;
    }

    v103 = v99 + v98;
    v104 = v151;
    sub_2646F5518(v103, v151);
    v105 = *v102;
    v106 = *v104;
    v86 = v91;
    if (*v102)
    {
      v107 = v166;
      if (!v106)
      {
        goto LABEL_116;
      }

      sub_264659B70(0, &qword_27FF77F50, 0x277CBFC40);
      v108 = v106;
      v109 = v105;
      v110 = sub_264785AE4();

      v102 = v150;
      if ((v110 & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v107 = v166;
      if (v106)
      {
        goto LABEL_116;
      }
    }

    if (vabdd_f64(*(v102 + 8), *(v151 + 8)) >= 0.000001 || vabdd_f64(*(v102 + 16), *(v151 + 16)) >= 0.000001)
    {
      goto LABEL_116;
    }

    v111 = *(v102 + 24);
    if (v111 > 2)
    {
      if (v111 == 3)
      {
        v115 = 0xEA0000000000746ELL;
        v114 = 0x6563655274736F6DLL;
      }

      else
      {
        if (v111 == 4)
        {
          v114 = 0x6574756F726E65;
        }

        else
        {
          v114 = 0x6E776F6E6B6E75;
        }

        v115 = 0xE700000000000000;
      }
    }

    else
    {
      if (v111 == 1)
      {
        v112 = 0x6F6C6E557473616CLL;
      }

      else
      {
        v112 = 0x636F4C7472617473;
      }

      if (v111 == 1)
      {
        v113 = 0xEA00000000006B63;
      }

      else
      {
        v113 = 0xED00006E6F697461;
      }

      if (*(v102 + 24))
      {
        v114 = v112;
      }

      else
      {
        v114 = 0x74616E6974736564;
      }

      if (*(v102 + 24))
      {
        v115 = v113;
      }

      else
      {
        v115 = 0xEB000000006E6F69;
      }
    }

    v116 = *(v151 + 24);
    v117 = 0xEA0000000000746ELL;
    v118 = 0x6574756F726E65;
    if (v116 != 4)
    {
      v118 = 0x6E776F6E6B6E75;
    }

    if (v116 == 3)
    {
      v118 = 0x6563655274736F6DLL;
    }

    else
    {
      v117 = 0xE700000000000000;
    }

    if (v116 == 1)
    {
      v119 = 0x6F6C6E557473616CLL;
    }

    else
    {
      v119 = 0x636F4C7472617473;
    }

    if (v116 == 1)
    {
      v120 = 0xEA00000000006B63;
    }

    else
    {
      v120 = 0xED00006E6F697461;
    }

    if (!*(v151 + 24))
    {
      v119 = 0x74616E6974736564;
      v120 = 0xEB000000006E6F69;
    }

    if (*(v151 + 24) <= 2u)
    {
      v121 = v119;
    }

    else
    {
      v121 = v118;
    }

    if (*(v151 + 24) <= 2u)
    {
      v122 = v120;
    }

    else
    {
      v122 = v117;
    }

    if (v114 == v121 && v115 == v122)
    {

      v102 = v150;
    }

    else
    {
      v123 = sub_264785E84();

      v102 = v150;
      if ((v123 & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    v124 = *(v102 + 32);
    v125 = *(v151 + 32);
    if (v124)
    {
      if (v125)
      {
        sub_264659B70(0, &unk_27FF75FA0, 0x277CBDA58);
        v126 = v125;
        v127 = v124;
        v128 = sub_264785AE4();

        v102 = v150;
        if (v128)
        {
LABEL_112:
          v129 = sub_264783AB4();
          v102 = v150;
          if (v129)
          {
            v130 = *(v94 + 36);
            v131 = (v150 + v130);
            v132 = *(v150 + v130 + 8);
            v133 = v151 + v130;
            v134 = v132 & *(v133 + 8);
            if (v132)
            {
              v59 = v168;
              v81 = v156;
              v84 = v154;
            }

            else
            {
              v59 = v168;
              v81 = v156;
              v84 = v154;
              if ((*(v133 + 8) & 1) == 0)
              {
                v134 = *v131 == *v133;
              }
            }

            sub_2646F5450(v151, type metadata accessor for SafetyCacheMapView.Annotation);
            sub_26460CD50(v163, v85, v86);
            sub_26460CD50(v162, v85, v86);
            sub_2646F5450(v150, type metadata accessor for SafetyCacheMapView.Annotation);
            sub_26460CD50(v161, v85, v86);
            v87 = &selRef_selectAnnotation_animated_;
            v82 = v155;
            v88 = v107;
            if (v134)
            {
              goto LABEL_45;
            }

            goto LABEL_117;
          }
        }
      }
    }

    else if (!v125)
    {
      goto LABEL_112;
    }

LABEL_116:
    sub_2646F5450(v151, type metadata accessor for SafetyCacheMapView.Annotation);
    sub_26460CD50(v163, v85, v86);
    sub_26460CD50(v162, v85, v86);
    sub_2646F5450(v102, type metadata accessor for SafetyCacheMapView.Annotation);
    sub_26460CD50(v161, v85, v86);
    v59 = v168;
    v81 = v156;
    v82 = v155;
    v84 = v154;
    v88 = v107;
    goto LABEL_117;
  }

  __break(1u);

  sub_26460CD50(v32, &qword_27FF77FE8, &qword_26478F3D8);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2646EBFDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_264783B64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v35 - v16;
  v18 = qword_26478F438[*(a1 + 24)];
  v19 = qword_26478F438[*(a2 + 24)];
  if (v18 != v19)
  {
    v32 = v18 < v19;
    return v32 & 1;
  }

  v20 = *(a1 + 8);
  v21 = *(a2 + 8);
  v22 = v20 < v21;
  if (v20 != v21 || (v23 = *(a1 + 16), v24 = *(a2 + 16), v22 = v23 < v24, v23 != v24))
  {
    v32 = v22;
    return v32 & 1;
  }

  v25 = v15;
  type metadata accessor for SafetyCacheMapView.Annotation(0);
  sub_264783AF4();
  sub_2646F1F30(&qword_27FF78038, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  if (sub_264785684())
  {
    v26 = *(a1 + 32);
    if (v26)
    {
      v27 = [v26 id];
      sub_264783B44();

      v28 = *(v5 + 32);
      v28(v17, v14, v25);
      v29 = *(a2 + 32);
      if (v29)
      {
        v30 = [v29 id];
        sub_264783B44();

        v28(v11, v8, v25);
        sub_2646F1F30(&qword_27FF78040, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        if ((sub_264785684() & 1) == 0)
        {
          v32 = MEMORY[0x26673D850](v17, v11);
          v34 = *(v5 + 8);
          v34(v11, v25);
          v34(v17, v25);
          return v32 & 1;
        }

        v31 = *(v5 + 8);
        v31(v11, v25);
        v31(v17, v25);
      }

      else
      {
        (*(v5 + 8))(v17, v25);
      }
    }

    v32 = 0;
    return v32 & 1;
  }

  return sub_264783A84();
}

uint64_t sub_2646EC358@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for SafetyCacheMapView._Annotation(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    sub_2646F54B0(v3 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, a2, type metadata accessor for SafetyCacheMapView.Annotation);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t sub_2646EC414@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a3;
  v24 = sub_264783E24();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FE8, &qword_26478F3D8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26460CCE8(a1, v10, &qword_27FF77FE8, &qword_26478F3D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78030, &unk_26478F410);
    sub_2646F5518(&v10[*(v14 + 48)], v13);
    v15 = [a2 annotations];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FE0, &qword_26478F3D0);
    v16 = sub_2647857F4();

    MEMORY[0x28223BE20](v17);
    *(&v24 - 2) = v13;
    v18 = sub_264684DB0(sub_2646F5AF0, (&v24 - 4), v16);

    *v25 = v18;
    return sub_2646F5450(v13, type metadata accessor for SafetyCacheMapView.Annotation);
  }

  else
  {
    v20 = v25;
    sub_26460CD50(v10, &qword_27FF77FE8, &qword_26478F3D8);
    sub_264783E04();
    v21 = sub_264783E14();
    v22 = sub_2647859D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_264605000, v21, v22, "#SafetyCacheMapView: found a removed item that was actually an insertion?", v23, 2u);
      MEMORY[0x266740650](v23, -1, -1);
    }

    result = (*(v5 + 8))(v7, v24);
    *v20 = 0;
  }

  return result;
}

uint64_t sub_2646EC74C(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SafetyCacheMapView._Annotation(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    sub_2646F54B0(v6 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, v5, type metadata accessor for SafetyCacheMapView.Annotation);
    v7 = sub_2646F526C(v5, a2);
    sub_2646F5450(v5, type metadata accessor for SafetyCacheMapView.Annotation);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_2646EC83C@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SafetyCacheMapView._Annotation(0);
  v6 = swift_dynamicCastClassUnconditional();
  sub_2646F54B0(v6 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, v5, type metadata accessor for SafetyCacheMapView.Annotation);
  v7 = sub_2646E9D5C();
  v9 = v8;
  result = sub_2646F5450(v5, type metadata accessor for SafetyCacheMapView.Annotation);
  *a2 = v7;
  a2[1] = v9;
  return result;
}

void sub_2646EC928(uint64_t a1, void *a2)
{
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v34[-v10];
  if (*(a1 + 32))
  {
    sub_264783E04();
    v12 = sub_264783E14();
    v13 = sub_2647859B4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_264605000, v12, v13, "#SafetyCacheMapView, setting a nil region—letting MapKit handle visibility of annotations", v14, 2u);
      MEMORY[0x266740650](v14, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    v15 = [a2 annotations];
    if (!v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FE0, &qword_26478F3D0);
      sub_2647857F4();
      v15 = sub_2647857E4();
    }

    [a2 showAnnotations:v15 animated:0];
  }

  else
  {
    v16 = *a1;
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    sub_264783E04();
    v20 = v2;
    v21 = sub_264783E14();
    v22 = sub_2647859B4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41 = v36;
      *v23 = 136315651;
      v24 = v20;
      v25 = [v24 description];
      v26 = sub_264785724();
      v35 = v22;
      v28 = v27;

      v29 = sub_2646DF234(v26, v28, &v41);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2646DF234(0xD000000000000019, 0x8000000264799070, &v41);
      *(v23 + 22) = 2085;
      v37 = v16;
      v38 = v17;
      v39 = v18;
      v40 = v19;
      type metadata accessor for MKCoordinateRegion(0);
      v30 = sub_264785764();
      v32 = sub_2646DF234(v30, v31, &v41);

      *(v23 + 24) = v32;
      _os_log_impl(&dword_264605000, v21, v35, "#SafetyCacheMapView, %s, %s: reset map region to be %{sensitive}s", v23, 0x20u);
      v33 = v36;
      swift_arrayDestroy();
      MEMORY[0x266740650](v33, -1, -1);
      MEMORY[0x266740650](v23, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    [a2 setRegion:1 animated:{v16, v17, v18, v19}];
  }
}

_BYTE *sub_2646ECD08(void *a1, uint64_t a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v98 - v9;
  v11 = type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v98 - v18;
  type metadata accessor for SafetyCacheMapView._Annotation(0);
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v107 = v20;
    v104 = v20 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation;
    v105 = v5;
    v21 = *(v20 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation + 24);
    swift_unknownObjectRetain();
    v106 = a2;
    if (v21 > 3)
    {
      v51 = sub_264785714();
      v52 = [a1 dequeueReusableAnnotationViewWithIdentifier_];

      if (!v52)
      {
        v53 = objc_allocWithZone(type metadata accessor for SafetyCacheMapView.EnrouteAnnotationView());
        swift_unknownObjectRetain();
        v54 = sub_264785714();
        v52 = [v53 initWithAnnotation:v107 reuseIdentifier:v54];
        swift_unknownObjectRelease();
      }

      v50 = v52;
      [v50 setEnabled_];
      sub_264783E04();
      swift_unknownObjectRetain();
      v55 = sub_264783E14();
      v56 = sub_2647859F4();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v103 = v4;
        v59 = v58;
        v111[0] = v58;
        *v57 = 136642819;
        sub_2646F54B0(v104, v19, type metadata accessor for SafetyCacheMapView.Annotation);
        v60 = sub_2646E9D5C();
        v62 = v61;
        sub_2646F5450(v19, type metadata accessor for SafetyCacheMapView.Annotation);
        v63 = sub_2646DF234(v60, v62, v111);

        *(v57 + 4) = v63;
        _os_log_impl(&dword_264605000, v55, v56, "#SafetyCacheMap, created non selectable map annotation with (annotation: %{sensitive}s)", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x266740650](v59, -1, -1);
        MEMORY[0x266740650](v57, -1, -1);

        (*(v105 + 8))(v8, v103);
      }

      else
      {

        (*(v105 + 8))(v8, v4);
      }

      goto LABEL_30;
    }

    v101 = v17;
    v102 = v10;
    v103 = v4;
    v22 = sub_264785714();
    v23 = [a1 dequeueReusableAnnotationViewWithIdentifier_];

    if (v23)
    {
      type metadata accessor for SafetyCacheMapView.SelectableMarkerAnnotationView();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        goto LABEL_7;
      }
    }

    v25 = v108 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
    swift_beginAccess();
    v26 = *(v25 + *(type metadata accessor for SafetyCacheMapView(0) + 28));
    v27 = type metadata accessor for SafetyCacheMapView.SelectableMarkerAnnotationView();
    v28 = objc_allocWithZone(v27);
    v29 = &v28[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_onTapHandler];
    v28[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_isSelectionAnimated] = v26;
    *v29 = 0;
    v29[1] = 0;
    swift_unknownObjectRetain();
    v30 = sub_264785714();
    v110.receiver = v28;
    v110.super_class = v27;
    v24 = objc_msgSendSuper2(&v110, sel_initWithAnnotation_reuseIdentifier_, v107, v30);

    swift_unknownObjectRelease();
LABEL_7:
    v31 = v108;
    v32 = v108 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
    swift_beginAccess();
    v99 = type metadata accessor for SafetyCacheMapView(0);
    v33 = *(v99 + 28);
    v100 = v32;
    v24[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_isSelectionAnimated] = *(v32 + v33);
    sub_2646EF684();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v36 = v107;
    *(v35 + 16) = v34;
    *(v35 + 24) = v36;
    v37 = &v24[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_onTapHandler];
    v39 = *&v24[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_onTapHandler];
    v38 = *&v24[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_onTapHandler + 8];
    *v37 = sub_2646F55F4;
    v37[1] = v35;
    swift_unknownObjectRetain();

    sub_26460C9A0(v39, v38);

    v40 = v19;
    v41 = v104;
    sub_2646F54B0(v104, v40, type metadata accessor for SafetyCacheMapView.Annotation);
    v42 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_contactImageRenderingContext;
    swift_beginAccess();
    sub_2646F54B0(v31 + v42, v13, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
    v43 = v24;
    v44 = sub_2646EDA2C(v13);
    sub_2646F5450(v13, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
    v45 = v40;
    sub_2646F5450(v40, type metadata accessor for SafetyCacheMapView.Annotation);
    [v43 setGlyphImage_];

    v46 = v101;
    sub_2646F54B0(v41, v101, type metadata accessor for SafetyCacheMapView.Annotation);
    v47 = *(v46 + 24);
    v48 = &selRef_systemGrayColor;
    if (v47 > 2)
    {
      v64 = 0;
      v49 = v45;
      if (v47 - 4 < 2)
      {
        goto LABEL_21;
      }
    }

    else if (*(v46 + 24))
    {
      v49 = v40;
      if (v47 != 1)
      {
        v48 = &selRef_systemGreenColor;
      }
    }

    else
    {
      v48 = &selRef_systemRedColor;
      v49 = v40;
    }

    v64 = [objc_opt_self() *v48];
LABEL_21:
    sub_2646F5450(v46, type metadata accessor for SafetyCacheMapView.Annotation);
    [v43 setMarkerTintColor_];

    v65 = [objc_opt_self() systemWhiteColor];
    [v43 setGlyphTintColor_];

    v66 = *(v100 + *(v99 + 28));
    v67 = v43;
    [v67 setEnabled_];
    v68 = v67;
    v69 = v102;
    sub_264783E04();
    v70 = v68;
    swift_unknownObjectRetain();
    v50 = v70;
    v71 = sub_264783E14();
    v72 = sub_2647859F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v109 = v101;
      *v73 = 136643587;
      sub_2646F54B0(v104, v49, type metadata accessor for SafetyCacheMapView.Annotation);
      v74 = sub_2646E9D5C();
      v76 = v75;
      sub_2646F5450(v49, type metadata accessor for SafetyCacheMapView.Annotation);
      v77 = sub_2646DF234(v74, v76, &v109);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2080;
      v78 = [v50 glyphImage];
      if (v78)
      {
        v79 = v78;
        v80 = [v78 description];

        v81 = sub_264785724();
        v83 = v82;
      }

      else
      {
        v83 = 0xE300000000000000;
        v81 = 7104878;
      }

      v84 = sub_2646DF234(v81, v83, &v109);

      *(v73 + 14) = v84;
      *(v73 + 22) = 2080;
      v85 = [v50 markerTintColor];
      v86 = v103;
      if (v85)
      {
        v87 = v85;
        v88 = [v85 description];

        v89 = sub_264785724();
        v91 = v90;
      }

      else
      {

        v91 = 0xE300000000000000;
        v89 = 7104878;
      }

      v92 = sub_2646DF234(v89, v91, &v109);

      *(v73 + 24) = v92;
      *(v73 + 32) = 1024;
      v93 = [v50 isEnabled];

      *(v73 + 34) = v93;
      _os_log_impl(&dword_264605000, v71, v72, "#SafetyCacheMap, created map annotation with (annotation: %{sensitive}s, image: %s, tint color: %s, enabled: %{BOOL}d", v73, 0x26u);
      v94 = v101;
      swift_arrayDestroy();
      MEMORY[0x266740650](v94, -1, -1);
      MEMORY[0x266740650](v73, -1, -1);

      (*(v105 + 8))(v102, v86);
    }

    else
    {

      (*(v105 + 8))(v69, v103);
    }

LABEL_30:
    v95 = v107;
    [v50 setAnnotation_];
    LODWORD(v96) = 1148846080;
    [v50 setDisplayPriority_];
    sub_2646EE710(v95);
    [v50 setZPriority_];

    swift_unknownObjectRelease();
    return v50;
  }

  return 0;
}

void *sub_2646ED7F4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  v9 = type metadata accessor for SafetyCacheMapView(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
    v14 = result;
    swift_beginAccess();
    sub_2646F54B0(v14 + v13, v11, type metadata accessor for SafetyCacheMapView);

    sub_2646F54B0(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, v8, type metadata accessor for SafetyCacheMapView.Annotation);
    v15 = type metadata accessor for SafetyCacheMapView.Annotation(0);
    (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
    sub_26460CCE8(v8, v6, &qword_27FF766A8, &unk_26478AA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
    sub_2647853E4();
    sub_26460CD50(v8, &qword_27FF766A8, &unk_26478AA80);
    return sub_2646F5450(v11, type metadata accessor for SafetyCacheMapView);
  }

  return result;
}

id sub_2646EDA2C(double *a1)
{
  if (*(v1 + 24) <= 2u)
  {
    goto LABEL_6;
  }

  if (*(v1 + 24) - 4 < 2)
  {
    return 0;
  }

  v3 = *(v1 + 32);
  if (!v3 || (v5 = v3, v2 = sub_2646F09C8(v5, a1), v5, !v2))
  {
LABEL_6:
    v6 = sub_264785714();
    v2 = [objc_opt_self() systemImageNamed_];
  }

  return v2;
}

uint64_t sub_2646EDC14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SafetyCacheMapView(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
  swift_beginAccess();
  sub_2646F54B0(a1 + v13, v12, type metadata accessor for SafetyCacheMapView);
  sub_2646F54B0(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, v9, type metadata accessor for SafetyCacheMapView.Annotation);
  v14 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  sub_26460CCE8(v9, v7, &qword_27FF766A8, &unk_26478AA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
  sub_2647853E4();
  sub_26460CD50(v9, &qword_27FF766A8, &unk_26478AA80);
  return sub_2646F5450(v12, type metadata accessor for SafetyCacheMapView);
}

uint64_t sub_2646EDF10(void *a1)
{
  v62 = a1;
  v2 = sub_264783E24();
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v63 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v60 = &v57 - v6;
  MEMORY[0x28223BE20](v5);
  v61 = &v57 - v7;
  v65 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v8 = *(v65 - 8);
  v9 = MEMORY[0x28223BE20](v65);
  v58 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v57 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v57 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v57 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  MEMORY[0x28223BE20](v17);
  v66 = &v57 - v20;
  v21 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
  swift_beginAccess();
  v22 = *(v1 + v21);
  v23 = *(v22 + 16);

  if (v23)
  {
    v25 = 0;
    v26 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v25 >= *(v22 + 16))
      {
        __break(1u);
        return result;
      }

      v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v28 = *(v8 + 72);
      sub_2646F54B0(v22 + v27 + v28 * v25, v19, type metadata accessor for SafetyCacheMapView.Annotation);
      if (v19[24] == 3)
      {
        break;
      }

      v29 = sub_264785E84();

      if (v29)
      {
        goto LABEL_10;
      }

      result = sub_2646F5450(v19, type metadata accessor for SafetyCacheMapView.Annotation);
LABEL_4:
      if (v23 == ++v25)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    sub_2646F5518(v19, v69);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2646F2094(0, *(v26 + 16) + 1, 1);
      v26 = v70;
    }

    v32 = *(v26 + 16);
    v31 = *(v26 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_2646F2094((v31 > 1), v32 + 1, 1);
      v26 = v70;
    }

    *(v26 + 16) = v32 + 1;
    result = sub_2646F5518(v69, v26 + v27 + v32 * v28);
    goto LABEL_4;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_16:

  if (*(v26 + 16))
  {
    v33 = v64;
    sub_2646F54B0(v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v64, type metadata accessor for SafetyCacheMapView.Annotation);

    v34 = v66;
    sub_2646F5518(v33, v66);
    v35 = v34 + *(v65 + 36);
    if (*(v35 + 8))
    {
      v36 = v60;
      sub_264783E04();
      v37 = sub_264783E14();
      v38 = sub_2647859D4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_264605000, v37, v38, "#SafetyCacheMapView, missing hunc for most recent location", v39, 2u);
        MEMORY[0x266740650](v39, -1, -1);
      }

      (*(v67 + 8))(v36, v68);
    }

    else
    {
      v44 = *v35;
      v45 = v61;
      sub_264783E04();
      v46 = v59;
      sub_2646F54B0(v34, v59, type metadata accessor for SafetyCacheMapView.Annotation);
      v47 = sub_264783E14();
      v48 = sub_2647859F4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v70 = v50;
        *v49 = 136642819;
        sub_2646F54B0(v46, v58, type metadata accessor for SafetyCacheMapView.Annotation);
        v51 = sub_264785764();
        v53 = v52;
        sub_2646F5450(v46, type metadata accessor for SafetyCacheMapView.Annotation);
        v54 = sub_2646DF234(v51, v53, &v70);

        *(v49 + 4) = v54;
        _os_log_impl(&dword_264605000, v47, v48, "#SafetyCacheMapView, Creating background circle for most recent location: %{sensitive}s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x266740650](v50, -1, -1);
        MEMORY[0x266740650](v49, -1, -1);
      }

      else
      {

        sub_2646F5450(v46, type metadata accessor for SafetyCacheMapView.Annotation);
      }

      (*(v67 + 8))(v45, v68);
      v55 = v62;
      v56 = [objc_opt_self() circleWithCenterCoordinate:*(v34 + 8) radius:{*(v34 + 16), v44}];
      [v55 addOverlay_];
    }

    return sub_2646F5450(v34, type metadata accessor for SafetyCacheMapView.Annotation);
  }

  else
  {

    v40 = v63;
    sub_264783E04();
    v41 = sub_264783E14();
    v42 = sub_2647859D4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_264605000, v41, v42, "#SafetyCacheMapView, missing most recent location in map annotations", v43, 2u);
      MEMORY[0x266740650](v43, -1, -1);
    }

    return (*(v67 + 8))(v40, v68);
  }
}

uint64_t sub_2646EE710(uint64_t a1)
{
  v3 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v73 = *(v3 - 8);
  v4 = v73;
  v5 = MEMORY[0x28223BE20](v3);
  v75 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v74 = &v67 - v8;
  MEMORY[0x28223BE20](v7);
  v70 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FD0, &qword_26478F3A8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - v12;
  v14 = type metadata accessor for SafetyCacheMapView(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v71 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v67 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v67 - v23;
  v72 = a1 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation;
  sub_2646F54B0(a1 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, &v67 - v23, type metadata accessor for SafetyCacheMapView.Annotation);
  v25 = v3;
  (*(v4 + 56))(v24, 0, 1, v3);
  v26 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
  swift_beginAccess();
  v68 = v26;
  v69 = v1;
  sub_2646F54B0(v1 + v26, v16, type metadata accessor for SafetyCacheMapView);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
  MEMORY[0x26673F100](v27);
  sub_2646F5450(v16, type metadata accessor for SafetyCacheMapView);
  v28 = *(v11 + 56);
  sub_26460CCE8(v24, v13, &qword_27FF766A8, &unk_26478AA80);
  sub_26460CCE8(v22, &v13[v28], &qword_27FF766A8, &unk_26478AA80);
  v29 = *(v73 + 48);
  if (v29(v13, 1, v25) == 1)
  {
    sub_26460CD50(v22, &qword_27FF766A8, &unk_26478AA80);
    sub_26460CD50(v24, &qword_27FF766A8, &unk_26478AA80);
    if (v29(&v13[v28], 1, v25) == 1)
    {
      return sub_26460CD50(v13, &qword_27FF766A8, &unk_26478AA80);
    }
  }

  else
  {
    v31 = v71;
    sub_26460CCE8(v13, v71, &qword_27FF766A8, &unk_26478AA80);
    if (v29(&v13[v28], 1, v25) != 1)
    {
      v65 = v70;
      sub_2646F5518(&v13[v28], v70);
      v66 = sub_2646F526C(v31, v65);
      sub_2646F5450(v65, type metadata accessor for SafetyCacheMapView.Annotation);
      sub_26460CD50(v22, &qword_27FF766A8, &unk_26478AA80);
      sub_26460CD50(v24, &qword_27FF766A8, &unk_26478AA80);
      sub_2646F5450(v31, type metadata accessor for SafetyCacheMapView.Annotation);
      result = sub_26460CD50(v13, &qword_27FF766A8, &unk_26478AA80);
      if (v66)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_26460CD50(v22, &qword_27FF766A8, &unk_26478AA80);
    sub_26460CD50(v24, &qword_27FF766A8, &unk_26478AA80);
    sub_2646F5450(v31, type metadata accessor for SafetyCacheMapView.Annotation);
  }

  sub_26460CD50(v13, &qword_27FF77FD0, &qword_26478F3A8);
LABEL_7:
  result = v72;
  if (*(v72 + 24) != 4)
  {
    return result;
  }

  v32 = *(v69 + v68);
  sub_2646F54B0(v72, v74, type metadata accessor for SafetyCacheMapView.Annotation);
  v33 = *(v32 + 16);

  v72 = v33;
  if (!v33)
  {
    goto LABEL_76;
  }

  v71 = v25;
  v34 = 0;
  while (v34 < *(v32 + 16))
  {
    v35 = v75;
    sub_2646F54B0(v32 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v34, v75, type metadata accessor for SafetyCacheMapView.Annotation);
    v36 = *v35;
    v37 = *v74;
    if (v36)
    {
      if (!v37)
      {
        goto LABEL_69;
      }

      sub_264659B70(0, &qword_27FF77F50, 0x277CBFC40);
      v38 = v37;
      v39 = v36;
      v40 = sub_264785AE4();

      if ((v40 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (v37)
    {
      goto LABEL_69;
    }

    if (vabdd_f64(*(v75 + 8), *(v74 + 8)) >= 0.000001 || vabdd_f64(*(v75 + 16), *(v74 + 16)) >= 0.000001)
    {
      goto LABEL_69;
    }

    v41 = *(v75 + 24);
    if (v41 > 2)
    {
      if (v41 == 3)
      {
        v45 = 0xEA0000000000746ELL;
        v44 = 0x6563655274736F6DLL;
      }

      else
      {
        if (v41 == 4)
        {
          v44 = 0x6574756F726E65;
        }

        else
        {
          v44 = 0x6E776F6E6B6E75;
        }

        v45 = 0xE700000000000000;
      }
    }

    else
    {
      if (v41 == 1)
      {
        v42 = 0x6F6C6E557473616CLL;
      }

      else
      {
        v42 = 0x636F4C7472617473;
      }

      if (v41 == 1)
      {
        v43 = 0xEA00000000006B63;
      }

      else
      {
        v43 = 0xED00006E6F697461;
      }

      if (*(v75 + 24))
      {
        v44 = v42;
      }

      else
      {
        v44 = 0x74616E6974736564;
      }

      if (*(v75 + 24))
      {
        v45 = v43;
      }

      else
      {
        v45 = 0xEB000000006E6F69;
      }
    }

    v46 = *(v74 + 24);
    v47 = 0xEA0000000000746ELL;
    v48 = 0x6574756F726E65;
    if (v46 != 4)
    {
      v48 = 0x6E776F6E6B6E75;
    }

    if (v46 == 3)
    {
      v48 = 0x6563655274736F6DLL;
    }

    else
    {
      v47 = 0xE700000000000000;
    }

    if (v46 == 1)
    {
      v49 = 0x6F6C6E557473616CLL;
    }

    else
    {
      v49 = 0x636F4C7472617473;
    }

    v50 = 0xEA00000000006B63;
    if (v46 != 1)
    {
      v50 = 0xED00006E6F697461;
    }

    if (!*(v74 + 24))
    {
      v49 = 0x74616E6974736564;
      v50 = 0xEB000000006E6F69;
    }

    if (*(v74 + 24) <= 2u)
    {
      v51 = v49;
    }

    else
    {
      v51 = v48;
    }

    if (*(v74 + 24) <= 2u)
    {
      v52 = v50;
    }

    else
    {
      v52 = v47;
    }

    if (v44 == v51 && v45 == v52)
    {
    }

    else
    {
      v53 = sub_264785E84();

      if ((v53 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    v54 = *(v75 + 32);
    v55 = *(v74 + 32);
    if (v54)
    {
      if (!v55)
      {
        goto LABEL_69;
      }

      sub_264659B70(0, &unk_27FF75FA0, 0x277CBDA58);
      v56 = v55;
      v57 = v54;
      v58 = sub_264785AE4();

      if ((v58 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (v55)
    {
      goto LABEL_69;
    }

    if ((sub_264783AB4() & 1) == 0)
    {
      goto LABEL_69;
    }

    v59 = *(v71 + 36);
    v60 = (v75 + v59);
    v61 = *(v75 + v59 + 8);
    v62 = v74 + v59;
    if (v61)
    {
      if (*(v62 + 8))
      {
        goto LABEL_78;
      }

LABEL_69:
      sub_2646F5450(v75, type metadata accessor for SafetyCacheMapView.Annotation);
      goto LABEL_70;
    }

    if (*(v62 + 8))
    {
      goto LABEL_69;
    }

    v63 = *v60;
    v64 = *v62;
    sub_2646F5450(v75, type metadata accessor for SafetyCacheMapView.Annotation);
    if (v63 == v64)
    {
      goto LABEL_76;
    }

LABEL_70:
    if (v72 == ++v34)
    {
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_78:
  sub_2646F5450(v75, type metadata accessor for SafetyCacheMapView.Annotation);
LABEL_76:
  sub_2646F5450(v74, type metadata accessor for SafetyCacheMapView.Annotation);
}

uint64_t sub_2646EF1B8(uint64_t a1)
{
  result = type metadata accessor for SafetyCacheMapView(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2646EF388(uint64_t a1)
{
  result = type metadata accessor for SafetyCacheMapView.Annotation(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_2646EF438(uint64_t a1, uint64_t a2)
{
  sub_26460CCE8(a1, v15, &qword_27FF77FC8, &qword_26478F3A0);
  v5 = v16;
  if (v16)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v15, v16);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_264785E74();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for SafetyCacheMapView.SelectableMarkerAnnotationView.IdentifiableTapGestureRecognizer();
  v14.receiver = v2;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, sel_initWithTarget_action_, v10, a2);
  swift_unknownObjectRelease();
  sub_26460CD50(a1, &qword_27FF77FC8, &qword_26478F3A0);
  return v12;
}

id sub_2646EF644(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2646EF684()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_isSelectionAnimated) == 1)
  {
    v2 = [v0 gestureRecognizers];
    if (!v2)
    {
      [v0 setGestureRecognizers_];
      return;
    }

    v3 = v2;
    v31 = sub_264659B70(0, &qword_27FF77018, 0x277D75548);
    v4 = sub_2647857F4();

    v33 = v4;
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    v6 = v4 >> 62;
    if (v4 >> 62)
    {
      goto LABEL_76;
    }

    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (v7 == v8)
      {
        if (v6)
        {
          v8 = sub_264785C14();
        }

        else
        {
          v8 = *(v5 + 16);
        }

        goto LABEL_29;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26673FA30](v8, v4);
      }

      else
      {
        if (v8 >= *(v5 + 16))
        {
          goto LABEL_69;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      type metadata accessor for SafetyCacheMapView.SelectableMarkerAnnotationView.IdentifiableTapGestureRecognizer();
      v11 = swift_dynamicCastClass();

      v12 = v8 + 1;
      v13 = __OFADD__(v8, 1);
      if (v11)
      {
        break;
      }

      ++v8;
      if (v13)
      {
        goto LABEL_70;
      }
    }

    if (!v13)
    {
      if (v6)
      {
        if (v12 != sub_264785C14())
        {
LABEL_36:
          v5 = v8 + 5;
          do
          {
            v16 = v5 - 4;
            if ((v4 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x26673FA30](v5 - 4, v4);
            }

            else
            {
              if ((v16 & 0x8000000000000000) != 0)
              {
                goto LABEL_71;
              }

              if (v16 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_72;
              }

              v17 = *(v4 + 8 * v5);
            }

            v18 = v17;
            v19 = swift_dynamicCastClass();

            if (!v19)
            {
              if (v16 != v8)
              {
                if ((v4 & 0xC000000000000001) != 0)
                {
                  v20 = MEMORY[0x26673FA30](v8, v4);
                  v21 = MEMORY[0x26673FA30](v5 - 4, v4);
                }

                else
                {
                  if (v8 < 0)
                  {
                    goto LABEL_79;
                  }

                  v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v8 >= v22)
                  {
                    goto LABEL_80;
                  }

                  if (v16 >= v22)
                  {
                    goto LABEL_81;
                  }

                  v23 = *(v4 + 8 * v5);
                  v20 = *(v4 + 8 * v8 + 32);
                  v21 = v23;
                }

                v24 = v21;
                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
                {
                  v4 = sub_264681790(v4);
                  v6 = (v4 >> 62) & 1;
                }

                else
                {
                  v6 = 0;
                }

                v25 = v4 & 0xFFFFFFFFFFFFFF8;
                v26 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
                *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v24;

                if ((v4 & 0x8000000000000000) != 0 || v6)
                {
                  v4 = sub_264681790(v4);
                  v25 = v4 & 0xFFFFFFFFFFFFFF8;
                  if ((v16 & 0x8000000000000000) != 0)
                  {
LABEL_68:
                    __break(1u);
LABEL_69:
                    __break(1u);
LABEL_70:
                    __break(1u);
LABEL_71:
                    __break(1u);
LABEL_72:
                    __break(1u);
LABEL_73:
                    __break(1u);
LABEL_74:
                    __break(1u);
LABEL_75:
                    __break(1u);
LABEL_76:
                    v7 = sub_264785C14();
                    goto LABEL_5;
                  }
                }

                else if ((v16 & 0x8000000000000000) != 0)
                {
                  goto LABEL_68;
                }

                if (v16 >= *(v25 + 16))
                {
                  goto LABEL_75;
                }

                v27 = *(v25 + 8 * v5);
                *(v25 + 8 * v5) = v20;

                v33 = v4;
              }

              if (__OFADD__(v8++, 1))
              {
                goto LABEL_74;
              }
            }

            v29 = v5 - 3;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_73;
            }

            if (v4 >> 62)
            {
              v30 = sub_264785C14();
            }

            else
            {
              v30 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v5;
          }

          while (v29 != v30);
        }
      }

      else if (v12 != *(v5 + 16))
      {
        goto LABEL_36;
      }

LABEL_29:
      if (v4 >> 62)
      {
        v14 = sub_264785C14();
        if (v14 >= v8)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14 >= v8)
        {
LABEL_31:
          sub_2646A236C(v8, v14);
          if (v33)
          {
            v15 = sub_2647857E4();
          }

          else
          {
            v15 = 0;
          }

          [v1 setGestureRecognizers_];

          return;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    __break(1u);
    return;
  }

  v32 = [objc_allocWithZone(type metadata accessor for SafetyCacheMapView.SelectableMarkerAnnotationView.IdentifiableTapGestureRecognizer()) initWithTarget:v0 action:sel_tapHandler_];
  [v0 addGestureRecognizer_];
}

void sub_2646EFD20()
{
  v1 = v0;
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FA8, &unk_26478F390));
  v3 = sub_264784784();
  v4 = [v3 view];
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  v6 = [v3 view];
  if (!v6)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = v6;
  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];

  v9 = [v1 subviews];
  sub_264659B70(0, &unk_27FF77FB0, 0x277D75D18);
  v10 = sub_2647857F4();

  if (v10 >> 62)
  {
    v11 = sub_264785C14();
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  for (i = 0; i != v11; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26673FA30](i, v10);
    }

    else
    {
      v13 = *(v10 + 8 * i + 32);
    }

    v14 = v13;
    [v13 removeFromSuperview];
  }

LABEL_12:

  v15 = [v3 view];
  if (!v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v15;
  [v1 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26478B4E0;
  v18 = [v3 view];
  if (!v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = v18;
  v20 = [v18 widthAnchor];

  v21 = [v20 constraintEqualToConstant_];
  *(v17 + 32) = v21;
  v22 = [v3 view];
  if (!v22)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v23 = v22;
  v24 = [v22 heightAnchor];

  v25 = [v24 constraintEqualToConstant_];
  *(v17 + 40) = v25;
  v26 = [v3 view];
  if (!v26)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v26;
  v28 = [v26 centerXAnchor];

  v29 = [v1 centerXAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v17 + 48) = v30;
  v31 = [v3 view];

  if (!v31)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v32 = objc_opt_self();
  v33 = [v31 centerYAnchor];

  v34 = [v1 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v17 + 56) = v35;
  sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
  v36 = sub_2647857E4();

  [v32 activateConstraints_];

  v37 = *&v1[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118621EnrouteAnnotationView_annotationHostingController];
  *&v1[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118621EnrouteAnnotationView_annotationHostingController] = v3;
}

void sub_2646F019C()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_prepareForReuse);
  v1 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118621EnrouteAnnotationView_annotationHostingController;
  v2 = *&v0[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118621EnrouteAnnotationView_annotationHostingController];
  if (!v2)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 removeFromSuperview];

    v5 = *&v0[v1];
LABEL_5:
    *&v0[v1] = 0;

    return;
  }

  __break(1u);
}

double sub_2646F0280@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_264785174();
  sub_264783FD4();
  v3 = sub_264785504();
  v5 = v4;
  v6 = sub_2647851C4();
  KeyPath = swift_getKeyPath();
  v8 = sub_264785504();
  *a1 = v11 * 0.5;
  *(a1 + 8) = v11;
  result = v12;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *(a1 + 48) = v2;
  *(a1 + 56) = 256;
  *(a1 + 64) = v3;
  *(a1 + 72) = v5;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v6;
  *(a1 + 96) = 0x3FE6666666666666;
  *(a1 + 104) = v8;
  *(a1 + 112) = v10;
  return result;
}

double sub_2646F0374@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_2647845C4();
  v19 = 1;
  sub_2646F0280(&v10);
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v28[0] = v10;
  v28[1] = v11;
  v28[2] = v12;
  v28[3] = v13;
  v28[4] = v14;
  v28[5] = v15;
  v28[6] = v16;
  v29 = v17;
  sub_2646F1F94(&v20, &v9);
  sub_2646F2004(v28);
  *(&v18[4] + 7) = v24;
  *(&v18[5] + 7) = v25;
  *(&v18[6] + 7) = v26;
  *(&v18[7] + 7) = v27;
  *(v18 + 7) = v20;
  *(&v18[1] + 7) = v21;
  *(&v18[2] + 7) = v22;
  *(&v18[3] + 7) = v23;
  v4 = v18[5];
  *(a2 + 81) = v18[4];
  *(a2 + 97) = v4;
  *(a2 + 113) = v18[6];
  *(a2 + 128) = *(&v18[6] + 15);
  v5 = v18[1];
  *(a2 + 17) = v18[0];
  *(a2 + 33) = v5;
  result = *&v18[2];
  v7 = v18[3];
  *(a2 + 49) = v18[2];
  v8 = v19;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 65) = v7;
  return result;
}

id _s15SafetyMonitorUI14CachedGeocoderC13GeocodeStatusCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2646F0670@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2646F54B0(v5, v4, type metadata accessor for SafetyCacheMapView);
  v6 = type metadata accessor for SafetyCacheMapView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_priorityDistanceBetweenEnrouteAnnotations] = 0;
  v8 = &v7[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_contactImageRenderingContext];
  *v8 = 0;
  v8[8] = 0;
  v9 = *(type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext(0) + 24);
  v10 = *MEMORY[0x277CDF3D0];
  v11 = sub_264783F74();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  sub_2646F54B0(v4, &v7[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent], type metadata accessor for SafetyCacheMapView);
  v14.receiver = v7;
  v14.super_class = v6;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  result = sub_2646F5450(v4, type metadata accessor for SafetyCacheMapView);
  *a2 = v12;
  return result;
}

uint64_t sub_2646F07DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2646F1F30(&qword_27FF77FA0, type metadata accessor for SafetyCacheMapView, &unk_26478F25C);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2646F0870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2646F1F30(&qword_27FF77FA0, type metadata accessor for SafetyCacheMapView, &unk_26478F25C);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2646F0904(uint64_t a1)
{
  sub_2646F1F30(&qword_27FF77FA0, type metadata accessor for SafetyCacheMapView, &unk_26478F25C);
  sub_264784834();
  __break(1u);
}

void sub_2646F095C()
{
  v0 = [objc_opt_self() defaultSettings];
  v1 = [objc_allocWithZone(MEMORY[0x277CBDBD0]) initWithSettings_];

  qword_27FF77E90 = v1;
}

id sub_2646F09C8(void *a1, double *a2)
{
  v66 = sub_264783F74();
  v69 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext(0);
  v6 = MEMORY[0x28223BE20](v73);
  v74 = (&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - v8;
  v10 = sub_264783E24();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D4AA90]) init];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v15 = swift_allocObject();
  v75 = xmmword_264788990;
  *(v15 + 16) = xmmword_264788990;
  *(v15 + 32) = a1;
  v16 = sub_264659B70(0, &unk_27FF75FA0, 0x277CBDA58);
  v64 = a1;
  v17 = sub_2647857E4();

  v18 = swift_allocObject();
  *(v18 + 16) = v75;
  *(v18 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FB0, &unk_26478F3C0);
  v19 = sub_2647857E4();

  v20 = [v13 fetchAdditionalInfoFor:v17 keysToFetch:v19];

  v70 = v13;
  v67 = v14;
  v68 = v5;
  if (v20)
  {
    v21 = sub_2647857F4();

    v22 = v16;
    if (v21 >> 62)
    {
      result = sub_264785C14();
    }

    else
    {
      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v12;
    v25 = v74;
    if (result)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x26673FA30](0, v21);
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v26 = *(v21 + 32);
      }

      v27 = v26;
    }

    else
    {

      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v22 = v16;
    v24 = v12;
    v25 = v74;
  }

  sub_264783E04();
  sub_2646F54B0(a2, v9, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
  sub_2646F54B0(a2, v25, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
  v28 = sub_264783E14();
  v29 = sub_2647859F4();
  v30 = os_log_type_enabled(v28, v29);
  v65 = v22;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v63 = v24;
    v32 = v31;
    v33 = swift_slowAlloc();
    v77[0] = v33;
    *v32 = 136315650;
    v34 = sub_264785914();
    v74 = a2;
    v35 = v25;
    v36 = v34;
    v38 = v37;
    sub_2646F5450(v9, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
    v39 = sub_2646DF234(v36, v38, v77);

    *(v32 + 4) = v39;
    *(v32 + 12) = 2080;
    if (*(v35 + 8))
    {
      v40 = 1702195828;
    }

    else
    {
      v40 = 0x65736C6166;
    }

    if (*(v35 + 8))
    {
      v41 = 0xE400000000000000;
    }

    else
    {
      v41 = 0xE500000000000000;
    }

    sub_2646F5450(v35, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
    v42 = sub_2646DF234(v40, v41, v77);

    *(v32 + 14) = v42;
    *(v32 + 22) = 2080;
    a2 = v74;
    v76 = vdupq_n_s64(0x4044000000000000uLL);
    type metadata accessor for CGSize(0);
    v43 = sub_264785764();
    v45 = sub_2646DF234(v43, v44, v77);

    *(v32 + 24) = v45;
    _os_log_impl(&dword_264605000, v28, v29, "#SafetyCacheMapView generating avatar image (display scale: %s, isRTL: %s, size: %s)", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v33, -1, -1);
    MEMORY[0x266740650](v32, -1, -1);

    (*(v71 + 8))(v63, v72);
  }

  else
  {

    sub_2646F5450(v25, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
    sub_2646F5450(v9, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
    (*(v71 + 8))(v24, v72);
  }

  if (v27)
  {
    v46 = v27;
  }

  else
  {
    v46 = v64;
  }

  v47 = *a2;
  v48 = *(a2 + 8);
  v50 = v68;
  v49 = v69;
  v51 = v66;
  (*(v69 + 104))(v68, *MEMORY[0x277CDF3D0], v66);
  v52 = v27;
  v53 = sub_264783F64();
  (*(v49 + 8))(v50, v51);
  v54 = [objc_opt_self() scopeWithPointSize:v48 scale:0 rightToLeft:(v53 & 1) == 0 style:40.0 backgroundStyle:{40.0, v47}];
  if (qword_27FF74FF8 != -1)
  {
    swift_once();
  }

  v55 = qword_27FF77E90;
  v56 = swift_allocObject();
  *(v56 + 16) = v75;
  *(v56 + 32) = v46;
  v57 = v46;
  v58 = sub_2647857E4();

  v59 = [v55 avatarImageForContacts:v58 scope:v54];

  v60 = [v59 CGImage];
  if (v60)
  {
    v61 = v60;
    v62 = [objc_allocWithZone(type metadata accessor for NeverTemplatedImage()) initWithCGImage_];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    return 0;
  }

  return v62;
}

id sub_2646F1348(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for NeverTemplatedImage();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id sub_2646F13A8(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for NeverTemplatedImage();
  return objc_msgSendSuper2(&v11, *a6, a4, a5, a2);
}

id sub_2646F1590(void *a1, uint64_t a2, void *a3, const char **a4)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for NeverTemplatedImage();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_2646F166C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_264783F74();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2646F172C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = sub_264783F74();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2646F17CC(uint64_t a1)
{
  result = sub_264783F74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2646F1864(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2646F1934(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2646F19E4(uint64_t a1)
{
  sub_2646F1AC4(319);
  if (v1 <= 0x3F)
  {
    sub_2646F1B1C(319, &unk_27FF77F20, &qword_27FF766A8, &unk_26478AA80);
    if (v2 <= 0x3F)
    {
      sub_2646F1B1C(319, &qword_27FF77F30, &qword_27FF766B8, &qword_26478F190);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2646F1AC4(uint64_t a1)
{
  if (!qword_27FF77F18)
  {
    type metadata accessor for SafetyCacheMapView.Annotation(255);
    v1 = sub_264785854();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF77F18);
    }
  }
}

void sub_2646F1B1C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_264785414();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2646F1B84(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_264783AF4();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_2646F1C50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_264783AF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2646F1CF4(uint64_t a1)
{
  sub_2646F1DF8(319, &qword_27FF77F48, &qword_27FF77F50, 0x277CBFC40);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CLLocationCoordinate2D(319);
    if (v2 <= 0x3F)
    {
      sub_2646F1DF8(319, &unk_27FF77F58, &unk_27FF75FA0, 0x277CBDA58);
      if (v3 <= 0x3F)
      {
        sub_264783AF4();
        if (v4 <= 0x3F)
        {
          sub_2646F1E50();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2646F1DF8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_264659B70(255, a3, a4);
    v5 = sub_264785B44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2646F1E50()
{
  if (!qword_27FF77F68)
  {
    v0 = sub_264785B44();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF77F68);
    }
  }
}

uint64_t sub_2646F1F30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2646F1F94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F88, &qword_26478F348);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646F2004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F88, &qword_26478F348);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_2646F2074(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2646F20B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2646F2094(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2646F21C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2646F20B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78060, &qword_264789860);
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

void *sub_2646F21C0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FD8, &unk_26478F3B0);
  v10 = *(type metadata accessor for SafetyCacheMapView.Annotation(0) - 8);
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
  v15 = *(type metadata accessor for SafetyCacheMapView.Annotation(0) - 8);
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

uint64_t sub_2646F2398(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_264785E34();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SafetyCacheMapView.Annotation(0);
        v10 = sub_264785834();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for SafetyCacheMapView.Annotation(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_2646F24D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v66 = sub_264783B64();
  v8 = *(v66 - 8);
  v9 = MEMORY[0x28223BE20](v66);
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v72 = &v57 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v65 = &v57 - v14;
  MEMORY[0x28223BE20](v13);
  v73 = &v57 - v15;
  v75 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v16 = MEMORY[0x28223BE20](v75);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v57 - v20);
  result = MEMORY[0x28223BE20](v19);
  v25 = (&v57 - v24);
  v59 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v27 = *(v23 + 72);
    v61 = (v8 + 32);
    v63 = (v8 + 8);
    v64 = v18;
    v28 = v26 + v27 * (a3 - 1);
    v29 = -v27;
    v30 = a1 - a3;
    v74 = v26;
    v58 = v27;
    v31 = v26 + v27 * a3;
    v62 = -v27;
LABEL_8:
    v69 = v28;
    v70 = a3;
    v67 = v31;
    v68 = v30;
    v32 = v30;
    while (1)
    {
      sub_2646F54B0(v31, v25, type metadata accessor for SafetyCacheMapView.Annotation);
      sub_2646F54B0(v28, v21, type metadata accessor for SafetyCacheMapView.Annotation);
      v33 = qword_26478F438[*(v25 + 24)];
      v34 = qword_26478F438[*(v21 + 24)];
      if (v33 == v34)
      {
        v35 = v25[1];
        v36 = v21[1];
        v37 = v35 < v36;
        if (v35 == v36 && (v38 = v25[2], v39 = v21[2], v37 = v38 < v39, v38 == v39))
        {
          sub_264783AF4();
          sub_2646F1F30(&qword_27FF78038, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
          if (sub_264785684())
          {
            v40 = *(v25 + 4);
            if (!v40)
            {
              goto LABEL_6;
            }

            v41 = [v40 id];
            v42 = v65;
            sub_264783B44();

            v43 = v73;
            v44 = v66;
            v71 = *v61;
            v71(v73, v42, v66);
            v45 = *(v21 + 4);
            if (!v45)
            {
              (*v63)(v43, v44);
              goto LABEL_5;
            }

            v46 = [v45 id];
            v47 = v60;
            sub_264783B44();

            v71(v72, v47, v44);
            sub_2646F1F30(&qword_27FF78040, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
            v48 = v73;
            if (sub_264785684())
            {
              v56 = *v63;
              (*v63)(v72, v44);
              v56(v48, v44);
LABEL_5:
              v18 = v64;
              v29 = v62;
LABEL_6:
              sub_2646F5450(v21, type metadata accessor for SafetyCacheMapView.Annotation);
              result = sub_2646F5450(v25, type metadata accessor for SafetyCacheMapView.Annotation);
LABEL_7:
              a3 = v70 + 1;
              v28 = v69 + v58;
              v30 = v68 - 1;
              v31 = v67 + v58;
              if (v70 + 1 == v59)
              {
                return result;
              }

              goto LABEL_8;
            }

            v49 = v72;
            v50 = MEMORY[0x26673D850](v48, v72);
            v51 = v44;
            v52 = *v63;
            v53 = v49;
            v54 = v51;
            (*v63)(v53);
            v52(v73, v54);
            v18 = v64;
            v29 = v62;
          }

          else
          {
            v50 = sub_264783A84();
          }
        }

        else
        {
          v50 = v37;
        }
      }

      else
      {
        v50 = v33 < v34;
      }

      sub_2646F5450(v21, type metadata accessor for SafetyCacheMapView.Annotation);
      result = sub_2646F5450(v25, type metadata accessor for SafetyCacheMapView.Annotation);
      if ((v50 & 1) == 0)
      {
        goto LABEL_7;
      }

      if (!v74)
      {
        __break(1u);
        return result;
      }

      sub_2646F5518(v31, v18);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2646F5518(v18, v28);
      v28 += v29;
      v31 += v29;
      if (__CFADD__(v32++, 1))
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_2646F2A84(double **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v183 = a1;
  v193 = sub_264783B64();
  v8 = *(v193 - 8);
  v9 = MEMORY[0x28223BE20](v193);
  v188 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v200 = &v173 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v189 = &v173 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v202 = &v173 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v174 = &v173 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v173 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v175 = &v173 - v23;
  MEMORY[0x28223BE20](v22);
  v178 = &v173 - v24;
  v207 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v199 = *(v207 - 8);
  v25 = MEMORY[0x28223BE20](v207);
  v186 = &v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v205 = &v173 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v206 = &v173 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = (&v173 - v32);
  v34 = MEMORY[0x28223BE20](v31);
  v198 = &v173 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v180 = &v173 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v177 = &v173 - v39;
  result = MEMORY[0x28223BE20](v38);
  v176 = &v173 - v41;
  v42 = a3[1];
  if (v42 < 1)
  {
    v44 = MEMORY[0x277D84F90];
LABEL_128:
    v33 = *v183;
    if (!*v183)
    {
      goto LABEL_166;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_130:
      v208 = v44;
      v169 = *(v44 + 2);
      if (v169 >= 2)
      {
        while (*a3)
        {
          v170 = *&v44[16 * v169];
          v171 = *&v44[16 * v169 + 24];
          sub_2646F3B90(*a3 + *(v199 + 72) * v170, (*a3 + *(v199 + 72) * *&v44[16 * v169 + 16]), (*a3 + *(v199 + 72) * v171), v33);
          if (v5)
          {
          }

          if (v171 < v170)
          {
            goto LABEL_153;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_2646F47DC(v44);
          }

          if (v169 - 2 >= *(v44 + 2))
          {
            goto LABEL_154;
          }

          v172 = &v44[16 * v169];
          *v172 = v170;
          *(v172 + 1) = v171;
          v208 = v44;
          result = sub_2646F4750(v169 - 1);
          v44 = v208;
          v169 = *(v208 + 2);
          if (v169 <= 1)
          {
          }
        }

        goto LABEL_164;
      }
    }

LABEL_160:
    result = sub_2646F47DC(v44);
    v44 = result;
    goto LABEL_130;
  }

  v173 = v21;
  v43 = 0;
  v192 = (v8 + 32);
  v44 = MEMORY[0x277D84F90];
  v191 = (v8 + 8);
  v182 = a4;
  v185 = a3;
  while (2)
  {
    v197 = v44;
    if (v43 + 1 >= v42)
    {
      v80 = v43 + 1;
      goto LABEL_43;
    }

    v203 = v42;
    v181 = v5;
    v196 = *a3;
    v45 = v196;
    v46 = *(v199 + 72);
    v47 = &v196[v46 * (v43 + 1)];
    v48 = v176;
    sub_2646F54B0(v47, v176, type metadata accessor for SafetyCacheMapView.Annotation);
    v49 = &v45[v46 * v43];
    v50 = v177;
    sub_2646F54B0(v49, v177, type metadata accessor for SafetyCacheMapView.Annotation);
    LODWORD(v201) = sub_2646EBFDC(v48, v50);
    sub_2646F5450(v50, type metadata accessor for SafetyCacheMapView.Annotation);
    result = sub_2646F5450(v48, type metadata accessor for SafetyCacheMapView.Annotation);
    v179 = v43;
    v51 = v43 + 2;
    v204 = v46;
    v52 = &v196[v46 * (v43 + 2)];
    v53 = v180;
    do
    {
      if (v203 == v51)
      {
        v5 = v181;
        v80 = v203;
        goto LABEL_29;
      }

      sub_2646F54B0(v52, v53, type metadata accessor for SafetyCacheMapView.Annotation);
      v55 = v198;
      sub_2646F54B0(v47, v198, type metadata accessor for SafetyCacheMapView.Annotation);
      v56 = v55;
      v57 = qword_26478F438[*(v53 + 24)];
      v58 = qword_26478F438[*(v55 + 24)];
      if (v57 != v58)
      {
        v54 = v57 < v58;
        goto LABEL_7;
      }

      v59 = *(v53 + 8);
      v60 = *(v55 + 8);
      v61 = v59 < v60;
      if (v59 == v60 && (v62 = *(v53 + 16), v63 = *(v55 + 16), v61 = v62 < v63, v62 == v63))
      {
        sub_264783AF4();
        sub_2646F1F30(&qword_27FF78038, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        if ((sub_264785684() & 1) == 0)
        {
          v54 = sub_264783A84();
          v56 = v55;
LABEL_22:
          a3 = v185;
          goto LABEL_7;
        }

        v64 = *(v53 + 32);
        if (!v64)
        {
          v54 = 0;
          v56 = v198;
          goto LABEL_22;
        }

        v65 = [v64 id];
        v66 = v175;
        sub_264783B44();

        v67 = v193;
        v68 = v178;
        v196 = *v192;
        (v196)(v178, v66, v193);
        v69 = *(v198 + 32);
        a3 = v185;
        if (v69)
        {
          v70 = v68;
          v71 = [v69 id];
          v72 = v174;
          sub_264783B44();

          v73 = v173;
          (v196)(v173, v72, v67);
          v74 = v73;
          sub_2646F1F30(&qword_27FF78040, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v75 = v70;
          if (sub_264785684())
          {
            a3 = v185;
            v76 = *v191;
            v77 = v193;
            (*v191)(v73, v193);
            v76(v75, v77);
            v54 = 0;
          }

          else
          {
            a3 = v185;
            v54 = MEMORY[0x26673D850](v75, v73);
            v78 = *v191;
            v79 = v193;
            (*v191)(v74, v193);
            v78(v178, v79);
          }
        }

        else
        {
          (*v191)(v68, v67);
          v54 = 0;
        }

        v44 = v197;
        v56 = v198;
        v53 = v180;
      }

      else
      {
        v54 = v61;
      }

LABEL_7:
      sub_2646F5450(v56, type metadata accessor for SafetyCacheMapView.Annotation);
      result = sub_2646F5450(v53, type metadata accessor for SafetyCacheMapView.Annotation);
      ++v51;
      v52 += v204;
      v47 += v204;
    }

    while ((v201 & 1) == (v54 & 1));
    v80 = v51 - 1;
    v5 = v181;
LABEL_29:
    a4 = v182;
    v43 = v179;
    if (v201)
    {
      if (v80 < v179)
      {
        goto LABEL_157;
      }

      if (v179 < v80)
      {
        v181 = v5;
        v81 = v204 * (v80 - 1);
        v82 = v80 * v204;
        v203 = v80;
        v83 = v179;
        v84 = v179 * v204;
        do
        {
          if (v83 != --v80)
          {
            v85 = *a3;
            if (!*a3)
            {
              goto LABEL_163;
            }

            sub_2646F5518(v85 + v84, v186);
            if (v84 < v81 || v85 + v84 >= (v85 + v82))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v84 != v81)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_2646F5518(v186, v85 + v81);
            a3 = v185;
            v44 = v197;
          }

          ++v83;
          v81 -= v204;
          v82 -= v204;
          v84 += v204;
        }

        while (v83 < v80);
        v5 = v181;
        a4 = v182;
        v43 = v179;
        v80 = v203;
      }
    }

LABEL_43:
    v86 = a3[1];
    if (v80 >= v86)
    {
      goto LABEL_77;
    }

    if (__OFSUB__(v80, v43))
    {
      goto LABEL_156;
    }

    if (v80 - v43 >= a4)
    {
LABEL_77:
      if (v80 < v43)
      {
        goto LABEL_155;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2646F48D4(0, *(v44 + 2) + 1, 1, v44);
        v44 = result;
      }

      v123 = *(v44 + 2);
      v122 = *(v44 + 3);
      v124 = v123 + 1;
      if (v123 >= v122 >> 1)
      {
        result = sub_2646F48D4((v122 > 1), v123 + 1, 1, v44);
        v44 = result;
      }

      *(v44 + 2) = v124;
      v125 = &v44[16 * v123];
      *(v125 + 4) = v43;
      *(v125 + 5) = v80;
      v190 = v80;
      v126 = *v183;
      if (!*v183)
      {
        goto LABEL_165;
      }

      if (!v123)
      {
LABEL_3:
        v42 = a3[1];
        v43 = v190;
        a4 = v182;
        if (v190 >= v42)
        {
          goto LABEL_128;
        }

        continue;
      }

      while (1)
      {
        v127 = v124 - 1;
        if (v124 >= 4)
        {
          break;
        }

        if (v124 == 3)
        {
          v128 = *(v44 + 4);
          v129 = *(v44 + 5);
          v138 = __OFSUB__(v129, v128);
          v130 = v129 - v128;
          v131 = v138;
LABEL_97:
          if (v131)
          {
            goto LABEL_144;
          }

          v144 = &v44[16 * v124];
          v146 = *v144;
          v145 = *(v144 + 1);
          v147 = __OFSUB__(v145, v146);
          v148 = v145 - v146;
          v149 = v147;
          if (v147)
          {
            goto LABEL_147;
          }

          v150 = &v44[16 * v127 + 32];
          v152 = *v150;
          v151 = *(v150 + 1);
          v138 = __OFSUB__(v151, v152);
          v153 = v151 - v152;
          if (v138)
          {
            goto LABEL_150;
          }

          if (__OFADD__(v148, v153))
          {
            goto LABEL_151;
          }

          if (v148 + v153 >= v130)
          {
            if (v130 < v153)
            {
              v127 = v124 - 2;
            }

            goto LABEL_118;
          }

          goto LABEL_111;
        }

        v154 = &v44[16 * v124];
        v156 = *v154;
        v155 = *(v154 + 1);
        v138 = __OFSUB__(v155, v156);
        v148 = v155 - v156;
        v149 = v138;
LABEL_111:
        if (v149)
        {
          goto LABEL_146;
        }

        v157 = &v44[16 * v127];
        v159 = *(v157 + 4);
        v158 = *(v157 + 5);
        v138 = __OFSUB__(v158, v159);
        v160 = v158 - v159;
        if (v138)
        {
          goto LABEL_149;
        }

        if (v160 < v148)
        {
          goto LABEL_3;
        }

LABEL_118:
        v165 = v127 - 1;
        if (v127 - 1 >= v124)
        {
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
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        if (!*a3)
        {
          goto LABEL_162;
        }

        v166 = *&v44[16 * v165 + 32];
        v167 = *&v44[16 * v127 + 40];
        sub_2646F3B90(*a3 + *(v199 + 72) * v166, (*a3 + *(v199 + 72) * *&v44[16 * v127 + 32]), (*a3 + *(v199 + 72) * v167), v126);
        if (v5)
        {
        }

        if (v167 < v166)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_2646F47DC(v44);
        }

        if (v165 >= *(v44 + 2))
        {
          goto LABEL_141;
        }

        v168 = &v44[16 * v165];
        *(v168 + 4) = v166;
        *(v168 + 5) = v167;
        v208 = v44;
        result = sub_2646F4750(v127);
        v44 = v208;
        v124 = *(v208 + 2);
        if (v124 <= 1)
        {
          goto LABEL_3;
        }
      }

      v132 = &v44[16 * v124 + 32];
      v133 = *(v132 - 64);
      v134 = *(v132 - 56);
      v138 = __OFSUB__(v134, v133);
      v135 = v134 - v133;
      if (v138)
      {
        goto LABEL_142;
      }

      v137 = *(v132 - 48);
      v136 = *(v132 - 40);
      v138 = __OFSUB__(v136, v137);
      v130 = v136 - v137;
      v131 = v138;
      if (v138)
      {
        goto LABEL_143;
      }

      v139 = &v44[16 * v124];
      v141 = *v139;
      v140 = *(v139 + 1);
      v138 = __OFSUB__(v140, v141);
      v142 = v140 - v141;
      if (v138)
      {
        goto LABEL_145;
      }

      v138 = __OFADD__(v130, v142);
      v143 = v130 + v142;
      if (v138)
      {
        goto LABEL_148;
      }

      if (v143 >= v135)
      {
        v161 = &v44[16 * v127 + 32];
        v163 = *v161;
        v162 = *(v161 + 1);
        v138 = __OFSUB__(v162, v163);
        v164 = v162 - v163;
        if (v138)
        {
          goto LABEL_152;
        }

        if (v130 < v164)
        {
          v127 = v124 - 2;
        }

        goto LABEL_118;
      }

      goto LABEL_97;
    }

    break;
  }

  if (__OFADD__(v43, a4))
  {
    goto LABEL_158;
  }

  if (v43 + a4 < v86)
  {
    v86 = v43 + a4;
  }

  if (v86 < v43)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v190 = v86;
  if (v80 == v86)
  {
    goto LABEL_77;
  }

  v181 = v5;
  v87 = *a3;
  v44 = v197;
  v88 = *(v199 + 72);
  v89 = (v87 + v88 * (v80 - 1));
  v204 = -v88;
  v179 = v43;
  v90 = v43 - v80;
  v184 = v88;
  v91 = v87 + v80 * v88;
  v187 = v33;
  v201 = v87;
  while (2)
  {
    v203 = v80;
    v194 = v91;
    v195 = v90;
    v92 = v91;
    v196 = v89;
    v93 = v89;
LABEL_56:
    sub_2646F54B0(v92, v33, type metadata accessor for SafetyCacheMapView.Annotation);
    v94 = v206;
    sub_2646F54B0(v93, v206, type metadata accessor for SafetyCacheMapView.Annotation);
    v95 = v94;
    v96 = qword_26478F438[*(v33 + 24)];
    v97 = qword_26478F438[*(v94 + 24)];
    if (v96 == v97)
    {
      v98 = v33[1];
      v99 = *(v94 + 8);
      v100 = v98 < v99;
      if (v98 == v99 && (v101 = v33[2], v102 = *(v94 + 16), v100 = v101 < v102, v101 == v102))
      {
        v103 = v33;
        v104 = v94;
        sub_264783AF4();
        sub_2646F1F30(&qword_27FF78038, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        if (sub_264785684())
        {
          v105 = *(v103 + 4);
          v33 = v103;
          if (!v105)
          {
            goto LABEL_53;
          }

          v106 = [v105 id];
          v107 = v189;
          sub_264783B44();

          v108 = *v192;
          v109 = v107;
          v110 = v193;
          (*v192)(v202, v109, v193);
          v111 = *(v206 + 32);
          if (v111)
          {
            v112 = [v111 id];
            v113 = v200;
            v114 = v188;
            sub_264783B44();

            v108(v113, v114, v110);
            sub_2646F1F30(&qword_27FF78040, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
            if ((sub_264785684() & 1) == 0)
            {
              v115 = v202;
              v116 = v200;
              v117 = MEMORY[0x26673D850](v202, v200);
              v118 = *v191;
              (*v191)(v116, v110);
              v118(v115, v110);
              v44 = v197;
              v95 = v206;
              v33 = v187;
              goto LABEL_69;
            }

            v121 = *v191;
            (*v191)(v200, v110);
            v121(v202, v110);
            v44 = v197;
            v33 = v187;
          }

          else
          {
            (*v191)(v202, v110);
            v44 = v197;
          }

LABEL_53:
          sub_2646F5450(v206, type metadata accessor for SafetyCacheMapView.Annotation);
          sub_2646F5450(v33, type metadata accessor for SafetyCacheMapView.Annotation);
          v87 = v201;
LABEL_54:
          v80 = v203 + 1;
          v89 = &v196[v184];
          v90 = v195 - 1;
          v91 = v194 + v184;
          if (v203 + 1 == v190)
          {
            v5 = v181;
            a3 = v185;
            v43 = v179;
            v80 = v190;
            goto LABEL_77;
          }

          continue;
        }

        v117 = sub_264783A84();
        v95 = v104;
        v33 = v103;
LABEL_69:
        v87 = v201;
      }

      else
      {
        v117 = v100;
      }
    }

    else
    {
      v117 = v96 < v97;
    }

    break;
  }

  sub_2646F5450(v95, type metadata accessor for SafetyCacheMapView.Annotation);
  result = sub_2646F5450(v33, type metadata accessor for SafetyCacheMapView.Annotation);
  if ((v117 & 1) == 0)
  {
    goto LABEL_54;
  }

  if (v87)
  {
    v119 = v205;
    sub_2646F5518(v92, v205);
    swift_arrayInitWithTakeFrontToBack();
    sub_2646F5518(v119, v93);
    v93 += v204;
    v92 += v204;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_54;
    }

    goto LABEL_56;
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
  return result;
}

uint64_t sub_2646F3B90(unint64_t a1, char *a2, char *a3, char *a4)
{
  v102 = sub_264783B64();
  v8 = *(v102 - 8);
  v9 = MEMORY[0x28223BE20](v102);
  v11 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v98 = (v95 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v99 = v95 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v101 = v95 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v103 = v95 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v100 = (v95 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v104 = v95 - v23;
  MEMORY[0x28223BE20](v22);
  v105 = v95 - v24;
  v108 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v25 = MEMORY[0x28223BE20](v108);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = (v95 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (v95 - v30);
  result = MEMORY[0x28223BE20](v29);
  v35 = (v95 - v34);
  v106 = *(v36 + 72);
  if (!v106)
  {
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v106 == -1)
  {
    goto LABEL_94;
  }

  v37 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v106 == -1)
  {
    goto LABEL_95;
  }

  v107 = a2;
  v38 = &a2[-a1] / v106;
  v111 = a1;
  v110 = a4;
  if (v38 >= v37 / v106)
  {
    v41 = v37 / v106 * v106;
    v105 = v33;
    if (a4 < v107 || &v107[v41] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v107)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v41];
    if (v41 >= 1)
    {
      v69 = -v106;
      v95[1] = v11;
      v96 = (v8 + 8);
      v70 = &a4[v41];
      v106 = -v106;
      v100 = (v8 + 32);
      do
      {
        v97 = v68;
        v71 = v107;
        v107 += v69;
        v104 = v71;
        while (1)
        {
          if (v71 <= a1)
          {
            v111 = v71;
            v109 = v97;
            goto LABEL_92;
          }

          v72 = a4;
          v73 = a3;
          v74 = &v70[v69];
          sub_2646F54B0(v74, v28, type metadata accessor for SafetyCacheMapView.Annotation);
          v75 = v105;
          sub_2646F54B0(v107, v105, type metadata accessor for SafetyCacheMapView.Annotation);
          v76 = v75;
          v77 = qword_26478F438[*(v28 + 24)];
          v78 = qword_26478F438[*(v75 + 24)];
          v103 = v68;
          if (v77 == v78)
          {
            v79 = v28[1];
            v80 = *(v75 + 8);
            v81 = v79 < v80;
            if (v79 == v80 && (v82 = v28[2], v83 = *(v75 + 16), v81 = v82 < v83, v82 == v83))
            {
              sub_264783AF4();
              sub_2646F1F30(&qword_27FF78038, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
              if (sub_264785684())
              {
                v84 = *(v28 + 4);
                if (v84)
                {
                  v85 = [v84 id];
                  v86 = v99;
                  sub_264783B44();

                  v87 = v101;
                  v88 = v102;
                  v95[0] = *v100;
                  (v95[0])(v101, v86, v102);
                  v89 = *(v105 + 32);
                  if (v89)
                  {
                    v90 = [v89 id];
                    sub_264783B44();

                    v91 = v98;
                    (v95[0])();
                    sub_2646F1F30(&qword_27FF78040, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                    if (sub_264785684())
                    {
                      v92 = v91;
                      v93 = *v96;
                      (*v96)(v92, v88);
                      v93(v101, v88);
                      v94 = 0;
                    }

                    else
                    {
                      v94 = MEMORY[0x26673D850](v101, v91);
                      v95[0] = *v96;
                      (v95[0])(v91, v88);
                      (v95[0])(v101, v88);
                    }
                  }

                  else
                  {
                    (*v96)(v87, v88);
                    v94 = 0;
                  }
                }

                else
                {
                  v94 = 0;
                }

                v76 = v105;
              }

              else
              {
                v94 = sub_264783A84();
                v76 = v75;
              }
            }

            else
            {
              v94 = v81;
            }
          }

          else
          {
            v94 = v77 < v78;
          }

          a3 = &v73[v106];
          sub_2646F5450(v76, type metadata accessor for SafetyCacheMapView.Annotation);
          sub_2646F5450(v28, type metadata accessor for SafetyCacheMapView.Annotation);
          if (v94)
          {
            break;
          }

          v68 = v74;
          if (v73 < v70 || a3 >= v70)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v70)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v70 = v74;
          a4 = v72;
          v43 = v74 > v72;
          v69 = v106;
          v71 = v104;
          if (!v43)
          {
            v107 = v104;
            goto LABEL_91;
          }
        }

        if (v73 < v104 || a3 >= v104)
        {
          swift_arrayInitWithTakeFrontToBack();
          v68 = v103;
          v69 = v106;
        }

        else
        {
          v68 = v103;
          v69 = v106;
          if (v73 != v104)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a4 = v72;
      }

      while (v70 > v72);
    }

LABEL_91:
    v111 = v107;
    v109 = v68;
  }

  else
  {
    v39 = v38 * v106;
    v40 = v106;
    if (a4 < a1 || a1 + v39 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = &a4[v39];
    v109 = &a4[v39];
    v43 = v39 < 1;
    v44 = v107;
    if (!v43 && v107 < a3)
    {
      v97 = (v8 + 8);
      v98 = (v8 + 32);
      do
      {
        sub_2646F54B0(v44, v35, type metadata accessor for SafetyCacheMapView.Annotation);
        sub_2646F54B0(a4, v31, type metadata accessor for SafetyCacheMapView.Annotation);
        v46 = qword_26478F438[*(v35 + 24)];
        v47 = qword_26478F438[*(v31 + 24)];
        if (v46 == v47)
        {
          v48 = v35[1];
          v49 = v31[1];
          v50 = v48 < v49;
          if (v48 == v49 && (v51 = v35[2], v52 = v31[2], v50 = v51 < v52, v51 == v52))
          {
            v107 = v44;
            sub_264783AF4();
            sub_2646F1F30(&qword_27FF78038, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
            if (sub_264785684())
            {
              v53 = *(v35 + 4);
              if (!v53)
              {
                goto LABEL_42;
              }

              v101 = a4;
              v54 = [v53 id];
              v55 = v104;
              sub_264783B44();

              v56 = v105;
              v57 = v55;
              v58 = v102;
              v99 = *v98;
              (v99)(v105, v57, v102);
              v59 = *(v31 + 4);
              if (!v59)
              {
                (*v97)(v56, v58);
                a4 = v101;
                goto LABEL_42;
              }

              v60 = [v59 id];
              sub_264783B44();

              v61 = v100;
              (v99)();
              sub_2646F1F30(&qword_27FF78040, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
              v62 = v105;
              if (sub_264785684())
              {
                v63 = v61;
                v64 = *v97;
                (*v97)(v63, v58);
                v64(v62, v58);
                a4 = v101;
                v40 = v106;
LABEL_42:
                sub_2646F5450(v31, type metadata accessor for SafetyCacheMapView.Annotation);
                sub_2646F5450(v35, type metadata accessor for SafetyCacheMapView.Annotation);
                v44 = v107;
                goto LABEL_43;
              }

              v65 = MEMORY[0x26673D850](v62, v61);
              v66 = v61;
              v67 = *v97;
              (*v97)(v66, v58);
              v67(v105, v58);
              v44 = v107;
              a4 = v101;
            }

            else
            {
              v65 = sub_264783A84();
              v44 = v107;
            }
          }

          else
          {
            v65 = v50;
          }
        }

        else
        {
          v65 = v46 < v47;
        }

        sub_2646F5450(v31, type metadata accessor for SafetyCacheMapView.Annotation);
        sub_2646F5450(v35, type metadata accessor for SafetyCacheMapView.Annotation);
        v40 = v106;
        if (v65)
        {
          if (a1 < v44 || a1 >= &v44[v106])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v44 += v40;
          goto LABEL_49;
        }

LABEL_43:
        if (a1 < a4 || a1 >= &a4[v40])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v110 = &a4[v40];
        a4 += v40;
LABEL_49:
        a1 += v40;
        v111 = a1;
      }

      while (a4 < v42 && v44 < a3);
    }
  }

LABEL_92:
  sub_2646F47F0(&v111, &v110, &v109);
  return 1;
}

uint64_t sub_2646F4750(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2646F47DC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2646F47F0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2646F48D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78048, &unk_26478FCD0);
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

uint64_t sub_2646F4A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_26460CCE8(a1, &v9 - v5, &qword_27FF766A8, &unk_26478AA80);
  v7 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result != 1)
  {
    return sub_2646F5518(v6, a2);
  }

  __break(1u);
  return result;
}

void *sub_2646F4B58(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF78050, &qword_26478F420);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v68 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v65 = &v54 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v6 = *(v63 - 8);
  v7 = MEMORY[0x28223BE20](v63);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v54 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v54 - v13;
  MEMORY[0x28223BE20](v12);
  v67 = &v54 - v15;
  v64 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v69 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = a1[1];
  v19 = a1[2];
  v72 = a1[3];
  v73 = v17;
  v77 = a1[4];
  v78 = v19;
  v80[0] = v18;
  if (v18 >> 62)
  {
LABEL_54:
    v74 = v18 & 0xFFFFFFFFFFFFFF8;
    v20 = sub_264785C14();
  }

  else
  {
    v74 = v18 & 0xFFFFFFFFFFFFFF8;
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = v66;
  v55 = *(v66 + 80);
  v71 = MEMORY[0x277D84F90];
  v54 = (v55 + 32) & ~v55;
  v70 = MEMORY[0x277D84F90] + v54;
  v22 = a1[6];
  v57 = a1[5];
  v56 = v22;
  sub_26460CCE8(v80, &v79, &qword_27FF78028, &qword_26478F408);
  v75 = v18;
  v76 = v18 & 0xC000000000000001;
  v61 = (v6 + 6);
  v62 = (v6 + 7);
  v60 = (v21 + 56);
  v59 = (v21 + 48);

  v23 = 0;
  v24 = 0;
  a1 = &qword_27FF766A8;
  v18 = &unk_26478AA80;
  if (v20)
  {
    goto LABEL_5;
  }

LABEL_4:
  while (1)
  {
    v25 = 1;
    v24 = v20;
LABEL_16:
    v28 = v63;
    v29 = v65;
    (*v62)(v65, v25, 1, v63);
    v30 = v29;
    v31 = v68;
    sub_26460E7E4(v30, v68, &unk_27FF78050, &qword_26478F420);
    if ((*v61)(v31, 1, v28) != 1)
    {
      v32 = v58;
      sub_26460E7E4(v68, v58, &qword_27FF766A8, &unk_26478AA80);
      v57(v32);
      sub_26460CD50(v32, &qword_27FF766A8, &unk_26478AA80);
    }

    v6 = v67;
    v33 = v64;
    (*v60)();
    if ((*v59)(v6, 1, v33) == 1)
    {
      break;
    }

    sub_2646F5518(v6, v69);
    if (v23)
    {
      v6 = v71;
      v34 = __OFSUB__(v23--, 1);
      if (v34)
      {
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    v35 = v71[3];
    if (((v35 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_51;
    }

    v36 = v35 & 0xFFFFFFFFFFFFFFFELL;
    if (v36 <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v36;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FD8, &unk_26478F3B0);
    v38 = *(v66 + 72);
    v39 = v54;
    v6 = swift_allocObject();
    v40 = _swift_stdlib_malloc_size(v6);
    if (!v38)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v41 = v40 - v39;
    if (v40 - v39 == 0x8000000000000000 && v38 == -1)
    {
      goto LABEL_53;
    }

    v43 = v39;
    v44 = v41 / v38;
    v6[2] = v37;
    v6[3] = 2 * (v41 / v38);
    v45 = v6 + v43;
    v46 = v71[3] >> 1;
    v47 = v46 * v38;
    if (v71[2])
    {
      if (v6 < v71 || v45 >= v71 + v43 + v47)
      {
        v70 = v6 + v43;
        swift_arrayInitWithTakeFrontToBack();
LABEL_38:
        v45 = v70;
      }

      else if (v6 != v71)
      {
        v70 = v6 + v43;
        swift_arrayInitWithTakeBackToFront();
        goto LABEL_38;
      }

      v71[2] = 0;
    }

    v70 = v45 + v47;
    v48 = (v44 & 0x7FFFFFFFFFFFFFFFLL) - v46;

    v34 = __OFSUB__(v48, 1);
    v23 = v48 - 1;
    if (v34)
    {
      goto LABEL_50;
    }

LABEL_41:
    v49 = v70;
    sub_2646F5518(v69, v70);
    v70 = v49 + *(v66 + 72);
    v71 = v6;
    if (v24 != v20)
    {
      while (1)
      {
LABEL_5:
        if (v76)
        {
          v26 = MEMORY[0x26673FA30](v24, v75);
          v27 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if ((v24 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          if (v24 >= *(v74 + 16))
          {
            goto LABEL_49;
          }

          v26 = *(v75 + 8 * v24 + 32);
          swift_unknownObjectRetain();
          v27 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_48;
          }
        }

        v79 = v26;
        v73(&v79);
        swift_unknownObjectRelease();
        sub_26460E7E4(v11, v14, &qword_27FF766A8, &unk_26478AA80);
        v6 = v77;
        if (v72(v14))
        {
          sub_26460E7E4(v14, v65, &qword_27FF766A8, &unk_26478AA80);
          v25 = 0;
          v24 = v27;
          goto LABEL_16;
        }

        sub_26460CD50(v14, &qword_27FF766A8, &unk_26478AA80);
        ++v24;
        if (v27 == v20)
        {
          goto LABEL_4;
        }
      }
    }
  }

  sub_26460CD50(v80, &qword_27FF78028, &qword_26478F408);

  sub_26460CD50(v6, &qword_27FF766A8, &unk_26478AA80);
  result = v71;
  v51 = v71[3];
  if (v51 >= 2)
  {
    v52 = v51 >> 1;
    v34 = __OFSUB__(v52, v23);
    v53 = v52 - v23;
    if (v34)
    {
      __break(1u);
    }

    else
    {
      v71[2] = v53;
    }
  }

  return result;
}

uint64_t sub_2646F526C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF77F50, 0x277CBFC40);
    v6 = v5;
    v7 = v4;
    v8 = sub_264785AE4();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (vabdd_f64(*(a1 + 8), *(a2 + 8)) >= 0.000001 || vabdd_f64(*(a1 + 16), *(a2 + 16)) >= 0.000001 || (sub_264692780(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  sub_264659B70(0, &unk_27FF75FA0, 0x277CBDA58);
  v11 = v10;
  v12 = v9;
  v13 = sub_264785AE4();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v14 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  if ((sub_264783AB4() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v14 + 36);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = a2 + v15;
  result = *(v18 + 8);
  if ((v17 & 1) == 0)
  {
    return (*v16 == *v18) & ~result;
  }

  return result;
}

uint64_t sub_2646F53EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyCacheMapView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646F5450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2646F54B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2646F5518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646F557C()
{
  MEMORY[0x2667406F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2646F55B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2646F55FC(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = sub_264783E24();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SafetyCacheMapView.Annotation(0) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = MEMORY[0x277D84F90];
    v12 = *(v6 + 72);
    while (1)
    {
      sub_2646F54B0(v10, v8, type metadata accessor for SafetyCacheMapView.Annotation);
      if (v8[24] > 2u || v8[24])
      {
        v13 = sub_264785E84();

        if ((v13 & 1) == 0)
        {
          v14 = *(v8 + 1);
          v15 = *(v8 + 2);
          sub_2646F5450(v8, type metadata accessor for SafetyCacheMapView.Annotation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_2647036FC(0, *(v11 + 2) + 1, 1, v11);
          }

          v17 = *(v11 + 2);
          v16 = *(v11 + 3);
          if (v17 >= v16 >> 1)
          {
            v11 = sub_2647036FC((v16 > 1), v17 + 1, 1, v11);
          }

          *(v11 + 2) = v17 + 1;
          v18 = &v11[16 * v17];
          *(v18 + 4) = v14;
          *(v18 + 5) = v15;
          goto LABEL_5;
        }
      }

      else
      {
      }

      sub_2646F5450(v8, type metadata accessor for SafetyCacheMapView.Annotation);
LABEL_5:
      v10 += v12;
      if (!--v9)
      {
        goto LABEL_15;
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_15:
  v19 = v25;
  sub_264783E04();

  v20 = sub_264783E14();
  v21 = sub_2647859F4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = *(v11 + 2);

    _os_log_impl(&dword_264605000, v20, v21, "#SafetyCacheMapView, connecting %ld annotations to make route on map", v22, 0xCu);
    MEMORY[0x266740650](v22, -1, -1);
  }

  else
  {
  }

  v23 = v28;
  (*(v26 + 8))(v19, v27);
  v24 = [objc_opt_self() polylineWithCoordinates:v11 + 32 count:*(v11 + 2)];

  [v23 addOverlay_];
}

unint64_t sub_2646F5A40()
{
  result = qword_27FF78018;
  if (!qword_27FF78018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78010, &qword_26478F400);
    sub_26460CDF0(&qword_27FF78020, &qword_27FF78028, &qword_26478F408, MEMORY[0x277D83958]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78018);
  }

  return result;
}

id sub_2646F5B10(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SafetyCacheMapView(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
  swift_beginAccess();
  sub_2646F54B0(v1 + v13, v12, type metadata accessor for SafetyCacheMapView);
  v14 = &v12[*(v4 + 24)];
  v15 = *(v14 + 1);
  v16 = v14[48];
  v43 = *v14;
  v44 = v15;
  v17 = *(v14 + 2);
  v45 = *(v14 + 1);
  v46 = v17;
  v47 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F98, &qword_26478F388);
  MEMORY[0x26673F100](&v40);
  v19 = v42;
  sub_2646F5450(v12, type metadata accessor for SafetyCacheMapView);
  if ((v19 & 1) != 0 || (sub_2646F54B0(v2 + v13, v10, type metadata accessor for SafetyCacheMapView), v20 = &v10[*(v4 + 24)], v21 = *(v20 + 1), v22 = v20[48], v43 = *v20, v44 = v21, v23 = *(v20 + 2), v45 = *(v20 + 1), v46 = v23, v47 = v22, MEMORY[0x26673F100](&v40, v18), v38 = v41, v39 = v40, v24 = v42, result = sub_2646F5450(v10, type metadata accessor for SafetyCacheMapView), (v24 & 1) == 0) && (result = [a1 region], v27.f64[1] = v26, v29.f64[1] = v28, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v39, v27), vceqq_f64(v38, v29)))) & 1) == 0))
  {
    sub_2646F54B0(v2 + v13, v7, type metadata accessor for SafetyCacheMapView);
    [a1 region];
    v30 = &v7[*(v4 + 24)];
    v31 = *(v30 + 1);
    v32 = v30[48];
    v43 = *v30;
    v44 = v31;
    v33 = *(v30 + 2);
    v45 = *(v30 + 1);
    v46 = v33;
    v47 = v32;
    v40.f64[0] = v34;
    v40.f64[1] = v35;
    v41.f64[0] = v36;
    v41.f64[1] = v37;
    v42 = 0;

    sub_2647853E4();
    sub_2646F5450(v7, type metadata accessor for SafetyCacheMapView);
  }

  return result;
}

uint64_t sub_2646F5DD4(void *a1)
{
  v2 = v1;
  v4 = sub_264785594();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v63 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2647855C4();
  v62 = *(v64 - 1);
  MEMORY[0x28223BE20](v64);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264783E24();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v56 - v13;
  sub_264783E04();
  v15 = sub_264783E14();
  v16 = sub_2647859F4();
  v17 = os_log_type_enabled(v15, v16);
  v65 = v8;
  if (v17)
  {
    v18 = v4;
    v19 = a1;
    v20 = v12;
    v21 = v9;
    v22 = v5;
    v23 = v2;
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_264605000, v15, v16, "#SafetyCacheMapView, didSelect is called.", v24, 2u);
    v25 = v24;
    v2 = v23;
    v5 = v22;
    v9 = v21;
    v12 = v20;
    a1 = v19;
    v4 = v18;
    v8 = v65;
    MEMORY[0x266740650](v25, -1, -1);
  }

  v26 = *(v9 + 8);
  v26(v14, v8);
  if (![a1 annotation])
  {
    goto LABEL_26;
  }

  type metadata accessor for SafetyCacheMapView._Annotation(0);
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v58 = v4;
    v59 = v5;
    v28 = v27 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation;
    v29 = *(v27 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation + 24);
    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v30 = v26;
        v60 = v2;
        v31 = v8;
        v57 = v27;
      }

      else
      {
        if (v29 == 4)
        {
          swift_unknownObjectRelease();

          goto LABEL_26;
        }

        v30 = v26;
        v60 = v2;
        v31 = v8;
        v57 = v27;
      }
    }

    else
    {
      v57 = v27;
      v60 = v2;
      v30 = v26;
      v31 = v8;
    }

    v32 = sub_264785E84();

    if (v32)
    {
      swift_unknownObjectRelease();
      v8 = v31;
LABEL_14:
      v2 = v60;
      v26 = v30;
      goto LABEL_26;
    }

    v33 = *(v28 + 24);
    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v8 = v31;
        v34 = v59;
      }

      else
      {
        v8 = v31;
        v34 = v59;
        if (v33 != 4)
        {
          swift_unknownObjectRelease();

          goto LABEL_14;
        }
      }

      v2 = v60;
      v26 = v30;
    }

    else if (*(v28 + 24))
    {
      v34 = v59;
      v26 = v30;
      v8 = v31;
      v2 = v60;
    }

    else
    {
      v8 = v31;
      v34 = v59;
      v2 = v60;
      v26 = v30;
    }

    v35 = sub_264785E84();

    if ((v35 & 1) == 0)
    {
      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      v48 = sub_264785A44();
      v49 = swift_allocObject();
      v50 = v57;
      *(v49 + 16) = v2;
      *(v49 + 24) = v50;
      aBlock[4] = sub_2646F6A98;
      aBlock[5] = v49;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = &block_descriptor_13;
      v51 = _Block_copy(aBlock);
      v52 = v2;
      swift_unknownObjectRetain();

      v53 = v61;
      sub_2647855B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_2646F1F30(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
      v54 = v63;
      v55 = v58;
      sub_264785BD4();
      MEMORY[0x26673F780](0, v53, v54, v51);
      _Block_release(v51);
      swift_unknownObjectRelease();

      (*(v34 + 8))(v54, v55);
      return (*(v62 + 8))(v53, v64);
    }
  }

  swift_unknownObjectRelease();
LABEL_26:
  sub_264783E04();
  v36 = v2;
  v37 = sub_264783E14();
  v38 = sub_2647859F4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315394;
    v41 = v36;
    v42 = [v41 description];
    v43 = sub_264785724();
    v64 = v26;
    v45 = v44;

    v46 = sub_2646DF234(v43, v45, aBlock);

    *(v39 + 4) = v46;
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264799090, aBlock);
    _os_log_impl(&dword_264605000, v37, v38, "#SafetyCacheMapView, %s, %s: early return for selecting enroute annotation", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v40, -1, -1);
    MEMORY[0x266740650](v39, -1, -1);

    return v64(v12, v65);
  }

  else
  {

    return (v26)(v12, v8);
  }
}

id sub_2646F67C4(uint64_t a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(MEMORY[0x277CD4F30]);
    swift_unknownObjectRetain();
    v5 = [v4 initWithPolyline_];
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 systemBlueColor];
    [v7 setStrokeColor_];

    [v7 setLineWidth_];
    [v7 setLineCap_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26478B4D0;
    sub_264659B70(0, &qword_27FF75EF8, 0x277CCABB0);
    *(v9 + 32) = sub_264785AC4();
    *(v9 + 40) = sub_264785AC4();
    v10 = sub_2647857E4();

    [v7 setLineDashPattern_];

LABEL_5:
    swift_unknownObjectRelease();
    return v7;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = objc_allocWithZone(MEMORY[0x277CD4DA8]);
    swift_unknownObjectRetain();
    v14 = [v13 initWithCircle_];
    v15 = objc_opt_self();
    v7 = v14;
    v16 = [v15 systemBlueColor];
    v17 = [v16 colorWithAlphaComponent_];

    [v7 setFillColor_];
    goto LABEL_5;
  }

  v19 = objc_allocWithZone(MEMORY[0x277CD4EE8]);

  return [v19 initWithOverlay_];
}

uint64_t sub_2646F6A58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2646F6B34()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = &v0[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel];
  swift_beginAccess();
  v10 = *(v9 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  sub_264783ED4(&v34);

  v30 = v36;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v28 = v34;
  v29 = v35;
  sub_2646BBAB4(&v28);

  sub_2646F8DA0();
  sub_2646F77C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v34);

  if (v35)
  {
    v12 = *(&v36 + 1);
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v28 = v34;
    v29 = v35;
    v13 = *(&v36 + 1);
    sub_26460CD50(&v28, &qword_27FF756F8, &qword_264787DF0);
    if (v12)
    {

      sub_264783DE4();
      v14 = sub_264783E14();
      v15 = sub_2647859F4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_264605000, v14, v15, "#SafetyCacheDetailViewModel: trying to resolve most recent location when safety cache is set", v16, 2u);
        MEMORY[0x266740650](v16, -1, -1);
      }

      return (*(v3 + 8))(v8, v2);
    }
  }

  else
  {
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v28 = v34;
    v29 = v35;
    sub_26460CD50(&v28, &qword_27FF756F8, &qword_264787DF0);
  }

  sub_264783DE4();
  v18 = v1;
  v19 = sub_264783E14();
  v20 = sub_2647859D4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v34);

    v30 = v36;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v28 = v34;
    v29 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756F8, &qword_264787DF0);
    v23 = sub_264785764();
    v25 = sub_2646DF234(v23, v24, &v27);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_264605000, v19, v20, "#SafetyCacheDetailViewModel: missing most recent location in safety cache: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x266740650](v22, -1, -1);
    MEMORY[0x266740650](v21, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2646F6FB8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1);
}

uint64_t sub_2646F7030()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

double sub_2646F70F4()
{
  v1 = v0 + OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_routeIconSize;
  swift_beginAccess();
  return *v1;
}

void sub_2646F713C(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_routeIconSize);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2646F71F4()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_isTransparencyMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2646F7238(char a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_isTransparencyMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2646F72E8(uint64_t a1, uint64_t *a2)
{
  sub_26460CCE8(a1, v6, &qword_27FF75710, &qword_264787E40);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_callFunctionProvider;
  swift_beginAccess();
  sub_26460CE38(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_2646F735C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_callFunctionProvider;
  swift_beginAccess();
  return sub_26460CCE8(v1 + v3, a1, &qword_27FF75710, &qword_264787E40);
}

uint64_t sub_2646F73C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_callFunctionProvider;
  swift_beginAccess();
  sub_26460CE38(a1, v1 + v3);
  return swift_endAccess();
}

void sub_2646F7484(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_contact;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_2646F74E4()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2646F7530(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_contact;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2646F75E8()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sessionType;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2646F762C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sessionType;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_2646F76DC(__int128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v11 = a1[2];
  v12 = v2;
  v3 = a1[5];
  v13 = a1[4];
  v14 = v3;
  v4 = a1[1];
  v9 = *a1;
  v10 = v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    v8[8] = v11;
    v8[9] = v12;
    v8[10] = v13;
    v8[11] = v14;
    v8[6] = v9;
    v8[7] = v10;
    sub_26460CCE8(&v9, v8, &qword_27FF756F8, &qword_264787DF0);
    v7 = v6;
    sub_264783EE4();
    sub_2646F6B34();
  }
}

uint64_t sub_2646F77C4()
{
  v1 = v0;
  v37 = sub_264783E24();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_264785594();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2647855C4();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2647855A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v46);

  if (v47)
  {
    v12 = *(&v50 + 1);
    v13 = v51;
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v40 = v46;
    v41 = v47;
    sub_2646C6804(*(&v50 + 1), v51);
    sub_26460CD50(&v40, &qword_27FF756F8, &qword_264787DF0);
    if (v13 >> 60 != 15)
    {
      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      (*(v9 + 104))(v11, *MEMORY[0x277D851C0], v8);
      v37 = sub_264785A64();
      (*(v9 + 8))(v11, v8);
      v14 = swift_allocObject();
      v14[2] = v12;
      v14[3] = v13;
      v14[4] = v1;
      aBlock[4] = sub_264703840;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = &block_descriptor_14;
      v15 = _Block_copy(aBlock);
      sub_2646C6804(v12, v13);
      v16 = v1;
      sub_2647855B4();
      v38 = MEMORY[0x277D84F90];
      sub_264703CEC(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
      v17 = v35;
      sub_264785BD4();
      v18 = v37;
      MEMORY[0x26673F780](0, v7, v5, v15);
      _Block_release(v15);

      sub_264655900(v12, v13);
      (*(v34 + 8))(v5, v17);
      (*(v32 + 8))(v7, v33);
    }
  }

  else
  {
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v40 = v46;
    v41 = v47;
    sub_26460CD50(&v40, &qword_27FF756F8, &qword_264787DF0);
  }

  sub_264783DE4();
  v20 = v1;
  v21 = sub_264783E14();
  v22 = sub_2647859B4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v46 = v24;
    *v23 = 136315394;
    v25 = v20;
    v26 = [v25 description];
    v27 = sub_264785724();
    v29 = v28;

    v30 = sub_2646DF234(v27, v29, &v46);

    *(v23 + 4) = v30;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_2646DF234(0xD00000000000001BLL, 0x80000002647990B0, &v46);
    _os_log_impl(&dword_264605000, v21, v22, "%s, %s: Destination map item is not available in the safetyCacheViewModel", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v24, -1, -1);
    MEMORY[0x266740650](v23, -1, -1);
  }

  return (*(v36 + 8))(v3, v37);
}

void sub_2646F7EBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = sub_264783A04();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v9[4] = sub_264706914;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26464CCBC;
  v9[3] = &block_descriptor_203_0;
  v7 = _Block_copy(v9);
  v8 = a3;

  [v4 _mapItemFromHandle_completionHandler_];
  _Block_release(v7);
}

uint64_t sub_2646F7FCC(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_264785594();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v68 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = sub_2647855C4();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v10 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_264783E24();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v59[-v16];
  if (a2)
  {
    v65 = v7;
    v66 = v6;
    sub_264783DE4();
    v18 = a3;
    v19 = sub_264783E14();
    v20 = sub_2647859D4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v61 = v19;
      v22 = v21;
      v62 = swift_slowAlloc();
      aBlock[0] = v62;
      *v22 = 136315394;
      v23 = v18;
      v24 = [v23 description];
      v60 = v20;
      v25 = v15;
      v26 = v24;
      v27 = sub_264785724();
      v63 = a1;
      v64 = a3;
      v28 = v27;
      v29 = v12;
      v30 = v10;
      v31 = v11;
      v33 = v32;

      v15 = v25;
      v34 = sub_2646DF234(v28, v33, aBlock);
      v11 = v31;
      v10 = v30;
      v12 = v29;
      a1 = v63;

      *(v22 + 4) = v34;
      a3 = v64;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2646DF234(0xD00000000000001BLL, 0x80000002647990B0, aBlock);
      v35 = v61;
      _os_log_impl(&dword_264605000, v61, v60, "#DetailView, %s, %s: Error resolving map item from map data handle", v22, 0x16u);
      v36 = v62;
      swift_arrayDestroy();
      MEMORY[0x266740650](v36, -1, -1);
      MEMORY[0x266740650](v22, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v17, v11);
    v7 = v65;
    v6 = v66;
  }

  if (a1)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v37 = a1;
    v38 = sub_264785A44();
    v39 = swift_allocObject();
    *(v39 + 16) = a3;
    *(v39 + 24) = v37;
    aBlock[4] = sub_26470695C;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = &block_descriptor_209;
    v40 = _Block_copy(aBlock);
    v41 = a3;
    v42 = v37;

    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_264703CEC(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
    v43 = v68;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v10, v43, v40);
    _Block_release(v40);

    (*(v7 + 8))(v43, v6);
    return (*(v67 + 8))(v10, v69);
  }

  else
  {
    sub_264783DE4();
    v45 = a3;
    v46 = sub_264783E14();
    v47 = sub_2647859D4();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v69 = v11;
      aBlock[0] = v49;
      v50 = v49;
      *v48 = 136315394;
      v51 = v45;
      v52 = [v51 description];
      v53 = v12;
      v54 = sub_264785724();
      v55 = v15;
      v57 = v56;

      v58 = sub_2646DF234(v54, v57, aBlock);

      *(v48 + 4) = v58;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_2646DF234(0xD00000000000001BLL, 0x80000002647990B0, aBlock);
      _os_log_impl(&dword_264605000, v46, v47, "#DetailView, %s, %s: Fail to resolve destination map item", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v50, -1, -1);
      MEMORY[0x266740650](v48, -1, -1);

      return (*(v53 + 8))(v55, v69);
    }

    else
    {

      return (*(v12 + 8))(v15, v11);
    }
  }
}

id sub_2646F86C4(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v79 - v5;
  v7 = sub_264783B94();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264785704();
  MEMORY[0x28223BE20](v10 - 8);
  v86 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_264783E24();
  v12 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DE4();
  v15 = a1;
  v16 = a2;
  v17 = sub_264783E14();
  v18 = sub_2647859F4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v94 = v81;
    *v19 = 136315651;
    v20 = v15;
    v82 = v9;
    v21 = v20;
    v22 = [v20 description];
    v84 = v16;
    v23 = v22;
    v24 = sub_264785724();
    v83 = v6;
    v25 = v24;
    v80 = v15;
    v27 = v26;

    v28 = sub_2646DF234(v25, v27, &v94);

    *(v19 + 4) = v28;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_2646DF234(0xD00000000000001BLL, 0x80000002647990B0, &v94);
    *(v19 + 22) = 2085;
    v29 = v84;
    v30 = [v29 description];
    v31 = sub_264785724();
    v33 = v32;

    v34 = v31;
    v6 = v83;
    v35 = sub_2646DF234(v34, v33, &v94);
    v16 = v84;

    *(v19 + 24) = v35;
    _os_log_impl(&dword_264605000, v17, v18, "#DetailView, %s, %s: Setting new map model for mapitem %{sensitive}s", v19, 0x20u);
    v36 = v81;
    swift_arrayDestroy();
    MEMORY[0x266740650](v36, -1, -1);
    MEMORY[0x266740650](v19, -1, -1);

    v37 = v80;
    (*(v12 + 8))(v14, v85);
  }

  else
  {

    (*(v12 + 8))(v14, v85);
    v37 = v15;
  }

  v38 = [v16 placemark];
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v41 = sub_264785754();
  v43 = v42;
  v44 = [v16 placemark];
  [v44 coordinate];
  v46 = v45;
  v48 = v47;

  v49 = objc_allocWithZone(type metadata accessor for SafetyCacheRouteInfoCellViewModel(0));
  v50 = sub_264705580(v38, v41, v43, v49, v46, v48);

  swift_getKeyPath();
  swift_getKeyPath();
  *&v94 = v50;
  v51 = v37;
  sub_264783EE4();
  result = [v16 place];
  if (result)
  {
    v53 = result;
    [result coordinate];
    v55 = v54;
    v57 = v56;

    v58 = &v51[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel];
    swift_beginAccess();
    v59 = *(v58 + 1);
    v60 = &v59[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_destinationLocation];
    *v60 = v55;
    *(v60 + 1) = v57;
    v60[16] = 0;
    v61 = *&v59[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 16];
    v88 = *&v59[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache];
    v89 = v61;
    v62 = *&v59[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 80];
    v64 = *&v59[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 32];
    v63 = *&v59[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 48];
    v92 = *&v59[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 64];
    v93 = v62;
    v90 = v64;
    v91 = v63;
    v65 = *&v59[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 16];
    v94 = *&v59[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache];
    v95 = v65;
    v66 = *&v59[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 80];
    v68 = *&v59[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 32];
    v67 = *&v59[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 48];
    v98 = *&v59[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 64];
    v99 = v66;
    v96 = v68;
    v97 = v67;
    v69 = sub_2647858E4();
    (*(*(v69 - 8) + 56))(v6, 1, 1, v69);
    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    *(v70 + 24) = 0;
    *(v70 + 32) = v59;
    v71 = v91;
    *(v70 + 72) = v90;
    *(v70 + 88) = v71;
    v72 = v93;
    *(v70 + 104) = v92;
    *(v70 + 120) = v72;
    v73 = v89;
    *(v70 + 40) = v88;
    *(v70 + 56) = v73;
    v74 = v94;
    *(v70 + 152) = v95;
    *(v70 + 136) = v74;
    v75 = v96;
    v76 = v97;
    v77 = v98;
    *(v70 + 216) = v99;
    *(v70 + 200) = v77;
    *(v70 + 184) = v76;
    *(v70 + 168) = v75;
    *(v70 + 232) = v55;
    *(v70 + 240) = v57;
    *(v70 + 248) = 0;
    v78 = v59;
    sub_26460CCE8(&v88, v87, &qword_27FF756F8, &qword_264787DF0);
    sub_26460CCE8(&v94, v87, &qword_27FF756F8, &qword_264787DF0);
    sub_264635430(0, 0, v6, &unk_26478D7D8, v70);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2646F8DA0()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v37);

  if (v38)
  {
    v9 = v40;
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v31 = v37;
    v32 = v38;
    v10 = v40;
    sub_26460CD50(&v31, &qword_27FF756F8, &qword_264787DF0);
    if (v9)
    {
      v11 = sub_2647858E4();
      (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
      sub_2647858B4();
      v12 = v10;
      v13 = v1;
      v14 = sub_2647858A4();
      v15 = swift_allocObject();
      v16 = MEMORY[0x277D85700];
      v15[2] = v14;
      v15[3] = v16;
      v15[4] = v12;
      v15[5] = v13;
      sub_264635430(0, 0, v8, &unk_26478F4D0, v15);

      return;
    }
  }

  else
  {
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v31 = v37;
    v32 = v38;
    sub_26460CD50(&v31, &qword_27FF756F8, &qword_264787DF0);
  }

  sub_264783DE4();
  v17 = v1;
  v18 = sub_264783E14();
  v19 = sub_2647859F4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v37 = v21;
    *v20 = 136315394;
    v22 = v17;
    v23 = [v22 description];
    v30 = v2;
    v24 = v23;
    v25 = sub_264785724();
    v27 = v26;

    v28 = sub_2646DF234(v25, v27, &v37);

    *(v20 + 4) = v28;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_2646DF234(0xD000000000000016, 0x80000002647990D0, &v37);
    _os_log_impl(&dword_264605000, v18, v19, "#DetailView, %s, %s: Missing start location in safety cache", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v21, -1, -1);
    MEMORY[0x266740650](v20, -1, -1);

    (*(v3 + 8))(v5, v30);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_2646F91D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_264783E24();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_264785594();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = sub_2647855C4();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v9 = sub_264783AF4();
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  sub_2647858B4();
  v5[23] = sub_2647858A4();
  v11 = sub_264785874();
  v5[24] = v11;
  v5[25] = v10;

  return MEMORY[0x2822009F8](sub_2646F93D8, v11, v10);
}

uint64_t sub_2646F93D8()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[9];
  [v4 latitude];
  v6 = v5;
  [v4 longitude];
  v8 = v7;
  [v4 altitude];
  v10 = v9;
  [v4 hunc];
  v12 = v11;
  [v4 vunc];
  v14 = v13;
  v15 = [v4 date];
  sub_264783AC4();

  v16 = [v4 referenceFrame];
  v17 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v18 = sub_264783A64();
  v19 = [v17 initWithCoordinate:v18 altitude:v16 horizontalAccuracy:v6 verticalAccuracy:v8 timestamp:v10 referenceFrame:{v12, v14}];
  v0[26] = v19;

  (*(v2 + 8))(v1, v3);
  if (qword_27FF74FF0 != -1)
  {
    swift_once();
  }

  v20 = v19;
  v21 = swift_task_alloc();
  v0[27] = v21;
  *v21 = v0;
  v21[1] = sub_2646F95E4;

  return sub_2646DCEB0(v19);
}

uint64_t sub_2646F95E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = *(v4 + 192);
    v6 = *(v4 + 200);
    v7 = sub_2646F99C0;
  }

  else
  {

    *(v4 + 232) = a1;
    v5 = *(v4 + 192);
    v6 = *(v4 + 200);
    v7 = sub_2646F9714;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2646F9714()
{
  v1 = v0[29];
  v2 = v0[19];
  v16 = v0[26];
  v17 = v0[18];
  v3 = v0[16];
  v18 = v0[17];
  v4 = v0[14];
  v15 = v0[15];
  v6 = v0[9];
  v5 = v0[10];

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v14 = sub_264785A44();
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v1;
  v7[4] = v6;
  v0[6] = sub_264706908;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_264659F60;
  v0[5] = &block_descriptor_197;
  v8 = _Block_copy(v0 + 2);
  v13 = v1;
  v9 = v6;
  v10 = v5;
  sub_2647855B4();
  v0[8] = MEMORY[0x277D84F90];
  sub_264703CEC(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v2, v3, v8);
  _Block_release(v8);

  (*(v15 + 8))(v3, v4);
  (*(v17 + 8))(v2, v18);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2646F99C0()
{
  v30 = v0;
  v1 = *(v0 + 208);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  sub_264783DE4();
  v4 = v2;
  v5 = v3;
  v6 = sub_264783E14();
  v7 = sub_2647859D4();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 88);
  if (v8)
  {
    v27 = *(v0 + 224);
    v28 = *(v0 + 104);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v14 = 136315651;
    v15 = v12;
    v16 = [v15 description];
    v26 = v11;
    v17 = sub_264785724();
    v19 = v18;

    v20 = sub_2646DF234(v17, v19, &v29);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2646DF234(0xD000000000000016, 0x80000002647990D0, &v29);
    *(v14 + 22) = 2117;
    *(v14 + 24) = v13;
    *v24 = v13;
    v21 = v13;
    _os_log_impl(&dword_264605000, v6, v7, "#DetailView, %s, %s: Error happened when trying to resolve address for %{sensitive}@", v14, 0x20u);
    sub_26460CD50(v24, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v24, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v25, -1, -1);
    MEMORY[0x266740650](v14, -1, -1);

    (*(v10 + 8))(v28, v26);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2646F9C78(void *a1, void *a2, void *a3)
{
  v6 = sub_264783B94();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_264785704();
  MEMORY[0x28223BE20](v7 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v10 = sub_264785754();
  v12 = v11;
  v13 = objc_allocWithZone(type metadata accessor for SafetyCacheRouteInfoCellViewModel(0));
  v14 = a2;
  sub_264705884(a2, v10, v12, a3, v13);

  swift_getKeyPath();
  swift_getKeyPath();
  v15 = a1;
  return sub_264783EE4();
}

id SafetyCacheDetailViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SafetyCacheDetailViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetyCacheDetailViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2646FA128@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SafetyCacheDetailViewModel(0);
  result = sub_264783E64();
  *a2 = result;
  return result;
}

uint64_t SafetyCacheDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v150 = a1;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78088, &qword_26478F4D8);
  MEMORY[0x28223BE20](v133);
  v135 = v116 - v2;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78090, &qword_26478F4E0);
  MEMORY[0x28223BE20](v141);
  v136 = v116 - v3;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78098, &unk_26478F4E8);
  MEMORY[0x28223BE20](v134);
  v121 = v116 - v4;
  v5 = sub_264783B94();
  MEMORY[0x28223BE20](v5 - 8);
  v116[1] = v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264785704();
  MEMORY[0x28223BE20](v7 - 8);
  v131 = v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v118 = (v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v119 = (v116 - v12);
  v13 = sub_264783AF4();
  v124 = *(v13 - 8);
  v125 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v117 = v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v122 = v116 - v16;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780A0, &qword_26478F4F8);
  MEMORY[0x28223BE20](v129);
  v123 = v116 - v17;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780A8, &qword_26478F500);
  MEMORY[0x28223BE20](v143);
  v144 = v116 - v18;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780B0, &qword_26478F508);
  MEMORY[0x28223BE20](v137);
  v139 = v116 - v19;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780B8, &qword_26478F510);
  MEMORY[0x28223BE20](v130);
  v127 = v116 - v20;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780C0, &qword_26478F518);
  MEMORY[0x28223BE20](v138);
  v128 = v116 - v21;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780C8, &qword_26478F520);
  MEMORY[0x28223BE20](v142);
  v140 = v116 - v22;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780D0, &qword_26478F528);
  MEMORY[0x28223BE20](v126);
  v120 = v116 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780D8, &qword_26478F530);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v149 = v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v147 = v116 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780E0, &qword_26478F538);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v148 = v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v151 = v116 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780E8, &unk_26478F540);
  v145 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v132 = v116 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = v116 - v35;
  v37 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo(0);
  v38 = v37 - 8;
  MEMORY[0x28223BE20](v37);
  v40 = (v116 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780F0, &qword_26478F550);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v146 = v116 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v152 = v116 - v44;
  v45 = v1[1];
  v171 = *v1;
  v172 = v45;
  v173 = v1[2];
  v174 = v45;
  v46 = *(&v45 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  v47 = v46;
  sub_264783ED4(v40);

  sub_26460CD50(&v174, &qword_27FF780F8, &qword_26478F5A0);
  sub_26460CCE8(v40 + *(v38 + 36), v36, &qword_27FF767D0, &qword_26478AC98);
  sub_26470510C(v40, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  v48 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v49 = 1;
  LODWORD(v38) = (*(*(v48 - 8) + 48))(v36, 1, v48);
  sub_26460CD50(v36, &qword_27FF767D0, &qword_26478AC98);
  if (v38 != 1)
  {
    v175 = v171;
    sub_26460CCE8(&v174, &v162, &qword_27FF780F8, &qword_26478F5A0);
    sub_26460CCE8(&v175, &v162, &qword_27FF781D0, &qword_26478F638);
    type metadata accessor for SafetyCacheDetailViewModel(0);
    sub_264703CEC(&qword_27FF781E0, type metadata accessor for SafetyCacheDetailViewModel, &protocol conformance descriptor for SafetyCacheDetailViewModel);
    v50 = sub_264784174();
    v52 = v51;
    type metadata accessor for SafetyCacheMapViewModel(0);
    sub_264703CEC(&qword_27FF75700, type metadata accessor for SafetyCacheMapViewModel, &unk_26478D5D0);
    v53 = sub_264784174();
    v55 = v54;
    *&v156 = v50;
    *(&v156 + 1) = v52;
    *&v157 = v53;
    *(&v157 + 1) = v54;
    v56 = swift_allocObject();
    v57 = v172;
    v56[1] = v171;
    v56[2] = v57;
    v56[3] = v173;
    sub_2647040B0(&v171, &v162);
    sub_2647040E8();
    v58 = v132;
    sub_264784F14();

    sub_264785504();
    sub_2647840A4();
    v59 = (v58 + *(v32 + 36));
    v60 = v169;
    *v59 = v168;
    v59[1] = v60;
    v59[2] = v170;
    sub_26460E7E4(v58, v152, &qword_27FF780E8, &unk_26478F540);
    v49 = 0;
  }

  (v145[7])(v152, v49, 1, v32);
  v162 = v171;
  v163 = v172;
  v164 = v173;
  sub_2646FBD74(v151);
  v176[0] = v171;
  v61 = *(&v171 + 1);
  v62 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sessionType;
  swift_beginAccess();
  v63 = *&v61[v62];
  if (v63 <= 1)
  {
    v64 = v147;
    if (!v63)
    {
      goto LABEL_14;
    }

    if (v63 != 1)
    {
LABEL_16:
      swift_storeEnumTagMultiPayload();
      sub_2647039C0();
      sub_264784874();
      goto LABEL_26;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v70 = v61;
    v71 = v119;
    sub_264783ED4(v119);

    sub_26460CD50(v176, &qword_27FF781D0, &qword_26478F638);
    v73 = v124;
    v72 = v125;
    v74 = *(v124 + 48);
    if (v74(v71, 1, v125) == 1)
    {
      sub_26460CD50(v71, &qword_27FF756B8, &qword_26478AC90);
    }

    else
    {
      v85 = *(v73 + 32);
      v85(v122, v71, v72);
      swift_getKeyPath();
      swift_getKeyPath();
      v86 = v70;
      v87 = v118;
      sub_264783ED4(v118);
      v88 = v125;

      sub_26460CD50(v176, &qword_27FF781D0, &qword_26478F638);
      if (v74(v87, 1, v88) != 1)
      {
        v94 = v117;
        v95 = (v85)(v117, v87, v88);
        v145 = v116;
        MEMORY[0x28223BE20](v95);
        v96 = v122;
        v116[-2] = v122;
        v116[-1] = v94;
        sub_264785694();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v97 = v88;
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v99 = [objc_opt_self() bundleForClass_];
        sub_264783B84();
        *&v162 = sub_264785754();
        *(&v162 + 1) = v100;
        sub_264613FC4();
        *&v162 = sub_264784E44();
        *(&v162 + 1) = v101;
        LOBYTE(v163) = v102 & 1;
        *(&v163 + 1) = v103;
        type metadata accessor for TimerInfoView(0);
        sub_264703CEC(&qword_27FF78160, type metadata accessor for TimerInfoView, &unk_264790808);
        v89 = v123;
        sub_264785444();
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78158, &qword_26478F5C0);
        (*(*(v104 - 8) + 56))(v89, 0, 1, v104);
        v105 = *(v124 + 8);
        v105(v94, v97);
        v105(v96, v97);
        goto LABEL_24;
      }

      sub_26460CD50(v87, &qword_27FF756B8, &qword_26478AC90);
      (*(v124 + 8))(v122, v88);
    }

    v89 = v123;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78158, &qword_26478F5C0);
    (*(*(v90 - 8) + 56))(v89, 1, 1, v90);
LABEL_24:
    sub_26460CCE8(v89, v127, &qword_27FF780A0, &qword_26478F4F8);
    swift_storeEnumTagMultiPayload();
    sub_264703DEC(&qword_27FF78110, &qword_27FF780D0, &qword_26478F528, sub_264703B30);
    sub_264703DEC(&qword_27FF78148, &qword_27FF780A0, &qword_26478F4F8, sub_264703C24);
    v106 = v128;
    sub_264784874();
    sub_26460CCE8(v106, v139, &qword_27FF780C0, &qword_26478F518);
    swift_storeEnumTagMultiPayload();
    sub_264703A4C();
    sub_264703D34();
    v107 = v140;
    sub_264784874();
    sub_26460CD50(v106, &qword_27FF780C0, &qword_26478F518);
    sub_26460CCE8(v107, v144, &qword_27FF780C8, &qword_26478F520);
    swift_storeEnumTagMultiPayload();
    sub_2647039C0();
    sub_264784874();
    sub_26460CD50(v107, &qword_27FF780C8, &qword_26478F520);
    v82 = v89;
    v83 = &qword_27FF780A0;
    v84 = &qword_26478F4F8;
    goto LABEL_25;
  }

  v64 = v147;
  if (v63 == 4)
  {
    v162 = v171;
    v163 = v172;
    v164 = v173;
    v79 = v121;
    sub_2646FC51C(v121);
    sub_26460CCE8(v79, v135, &qword_27FF78098, &unk_26478F4E8);
    swift_storeEnumTagMultiPayload();
    sub_264703DEC(&qword_27FF78170, &qword_27FF78098, &unk_26478F4E8, sub_264703E68);
    v80 = v136;
    sub_264784874();
    sub_26460CCE8(v80, v139, &qword_27FF78090, &qword_26478F4E0);
    swift_storeEnumTagMultiPayload();
    sub_264703A4C();
    sub_264703D34();
    v81 = v140;
    sub_264784874();
    sub_26460CD50(v80, &qword_27FF78090, &qword_26478F4E0);
    sub_26460CCE8(v81, v144, &qword_27FF780C8, &qword_26478F520);
    swift_storeEnumTagMultiPayload();
    sub_2647039C0();
    sub_264784874();
    sub_26460CD50(v81, &qword_27FF780C8, &qword_26478F520);
    v82 = v79;
    v83 = &qword_27FF78098;
    v84 = &unk_26478F4E8;
LABEL_25:
    sub_26460CD50(v82, v83, v84);
    goto LABEL_26;
  }

  if (v63 != 3)
  {
    if (v63 == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v65 = v61;
      sub_264783ED4(&v162);

      sub_26460CD50(v176, &qword_27FF781D0, &qword_26478F638);
      if (v163)
      {
        v66 = *(&v166 + 1);
        v67 = v167;
        v158 = v164;
        v159 = v165;
        v160 = v166;
        v161 = v167;
        v156 = v162;
        v157 = v163;
        sub_2646C6804(*(&v166 + 1), v167);
        sub_26460CD50(&v156, &qword_27FF756F8, &qword_264787DF0);
        v68 = v120;
        if (v67 >> 60 != 15)
        {
          sub_264655900(v66, v67);
          v153 = v171;
          v154 = v172;
          v155 = v173;
          sub_2646FC0F4(v68);
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78120, &qword_26478F5A8);
          (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
LABEL_22:
          sub_26460CCE8(v68, v127, &qword_27FF780D0, &qword_26478F528);
          swift_storeEnumTagMultiPayload();
          sub_264703DEC(&qword_27FF78110, &qword_27FF780D0, &qword_26478F528, sub_264703B30);
          sub_264703DEC(&qword_27FF78148, &qword_27FF780A0, &qword_26478F4F8, sub_264703C24);
          v92 = v128;
          sub_264784874();
          sub_26460CCE8(v92, v139, &qword_27FF780C0, &qword_26478F518);
          swift_storeEnumTagMultiPayload();
          sub_264703A4C();
          sub_264703D34();
          v93 = v140;
          sub_264784874();
          sub_26460CD50(v92, &qword_27FF780C0, &qword_26478F518);
          sub_26460CCE8(v93, v144, &qword_27FF780C8, &qword_26478F520);
          swift_storeEnumTagMultiPayload();
          sub_2647039C0();
          sub_264784874();
          sub_26460CD50(v93, &qword_27FF780C8, &qword_26478F520);
          sub_26460CD50(v68, &qword_27FF780D0, &qword_26478F528);
          goto LABEL_26;
        }
      }

      else
      {
        v158 = v164;
        v159 = v165;
        v160 = v166;
        v161 = v167;
        v156 = v162;
        v157 = v163;
        sub_26460CD50(&v156, &qword_27FF756F8, &qword_264787DF0);
        v68 = v120;
      }

      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78120, &qword_26478F5A8);
      (*(*(v91 - 8) + 56))(v68, 1, 1, v91);
      goto LABEL_22;
    }

    goto LABEL_16;
  }

LABEL_14:
  swift_storeEnumTagMultiPayload();
  sub_264703DEC(&qword_27FF78170, &qword_27FF78098, &unk_26478F4E8, sub_264703E68);
  v75 = v64;
  v76 = v136;
  sub_264784874();
  sub_26460CCE8(v76, v139, &qword_27FF78090, &qword_26478F4E0);
  swift_storeEnumTagMultiPayload();
  sub_264703A4C();
  sub_264703D34();
  v77 = v140;
  sub_264784874();
  v78 = v76;
  v64 = v75;
  sub_26460CD50(v78, &qword_27FF78090, &qword_26478F4E0);
  sub_26460CCE8(v77, v144, &qword_27FF780C8, &qword_26478F520);
  swift_storeEnumTagMultiPayload();
  sub_2647039C0();
  sub_264784874();
  sub_26460CD50(v77, &qword_27FF780C8, &qword_26478F520);
LABEL_26:
  v108 = v146;
  sub_26460CCE8(v152, v146, &qword_27FF780F0, &qword_26478F550);
  v109 = v151;
  v110 = v148;
  sub_26460CCE8(v151, v148, &qword_27FF780E0, &qword_26478F538);
  v111 = v149;
  sub_26460CCE8(v64, v149, &qword_27FF780D8, &qword_26478F530);
  v112 = v64;
  v113 = v150;
  sub_26460CCE8(v108, v150, &qword_27FF780F0, &qword_26478F550);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF781C0, &qword_26478F5E8);
  sub_26460CCE8(v110, v113 + *(v114 + 48), &qword_27FF780E0, &qword_26478F538);
  sub_26460CCE8(v111, v113 + *(v114 + 64), &qword_27FF780D8, &qword_26478F530);
  sub_26460CD50(v112, &qword_27FF780D8, &qword_26478F530);
  sub_26460CD50(v109, &qword_27FF780E0, &qword_26478F538);
  sub_26460CD50(v152, &qword_27FF780F0, &qword_26478F550);
  sub_26460CD50(v111, &qword_27FF780D8, &qword_26478F530);
  sub_26460CD50(v110, &qword_27FF780E0, &qword_26478F538);
  return sub_26460CD50(v108, &qword_27FF780F0, &qword_26478F550);
}

uint64_t sub_2646FBA5C(uint64_t a1)
{
  v1 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_26460CCE8(v7, v4, &qword_27FF766A8, &unk_26478AA80);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  (*(*(v9 - 8) + 56))(v4, 0, 3, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = sub_264783EC4();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_2647031F4(0, v13[2] + 1, 1, v13, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_2647031F4((v15 > 1), v16 + 1, 1, v13, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  sub_264706140(v4, v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, type metadata accessor for SafetyMonitorUINavigationPathItem);
  v10(v18, 0);

  return sub_26460CD50(v7, &qword_27FF766A8, &unk_26478AA80);
}

uint64_t sub_2646FBD74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264783B94();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_264785704();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = v1[1];
  v20[0] = *v1;
  v20[1] = v5;
  v20[2] = v1[2];
  v28 = v20[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = *(&v20[0] + 1);
  sub_264783ED4(&v18);

  v7 = sub_26460CD50(&v28, &qword_27FF781D0, &qword_26478F638);
  v29[2] = v19[1];
  v29[3] = v19[2];
  v29[4] = v19[3];
  v29[5] = v19[4];
  v29[0] = v18;
  v29[1] = v19[0];
  if (*&v19[0])
  {
    v21 = v18;
    v22 = *&v19[0];
    v24 = *(&v19[1] + 8);
    v25 = *(&v19[2] + 8);
    v26 = *(&v19[3] + 8);
    v27 = *(&v19[4] + 1);
    v23 = *(v19 + 8);
    MEMORY[0x28223BE20](v7);
    *&v17[-16] = v20;
    *&v17[-8] = &v21;
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    *&v18 = sub_264785754();
    *(&v18 + 1) = v10;
    sub_264613FC4();
    *&v18 = sub_264784E44();
    *(&v18 + 1) = v11;
    LOBYTE(v19[0]) = v12 & 1;
    *(&v19[0] + 1) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF783E8, &qword_26478FDD0);
    sub_26460CDF0(&qword_27FF783F0, &qword_27FF783E8, &qword_26478FDD0, MEMORY[0x277CE14C0]);
    sub_264785444();
    sub_26460CD50(v29, &qword_27FF756F8, &qword_264787DF0);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF783E0, &qword_26478FDC8);
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

uint64_t sub_2646FC0F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264783B94();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_264785704();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = v1[1];
  v25[0] = *v1;
  v25[1] = v5;
  v25[2] = v1[2];
  v26 = v25[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = *(&v25[0] + 1);
  sub_264783ED4(&v21);
  sub_26460CD50(&v26, &qword_27FF781D0, &qword_26478F638);

  v7 = v21;
  if (!v21)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  sub_264783ED4(&v21);
  sub_26460CD50(&v26, &qword_27FF781D0, &qword_26478F638);

  v10 = v21;
  if (!v21)
  {

LABEL_5:
    v17 = 1;
    goto LABEL_6;
  }

  MEMORY[0x28223BE20](v9);
  *&v20[-32] = v25;
  *&v20[-24] = v7;
  *&v20[-16] = v10;
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v21 = sub_264785754();
  v22 = v13;
  sub_264613FC4();
  v21 = sub_264784E44();
  v22 = v14;
  v23 = v15 & 1;
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78140, &qword_26478F5B8);
  sub_26460CDF0(&qword_27FF78138, &qword_27FF78140, &qword_26478F5B8, MEMORY[0x277CE14C0]);
  sub_264785444();

  v17 = 0;
LABEL_6:
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78130, &qword_26478F5B0);
  return (*(*(v18 - 8) + 56))(a1, v17, 1, v18);
}

uint64_t sub_2646FC470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_264783AF4();
  v7 = *(*(v6 - 8) + 16);
  v7(a3, a1, v6);
  v8 = type metadata accessor for TimerInfoView(0);
  result = (v7)(a3 + *(v8 + 20), a2, v6);
  *(a3 + *(v8 + 24)) = 1;
  return result;
}

uint64_t sub_2646FC51C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264783B94();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_264785704();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  sub_264783ED4(&v29);

  if (v30)
  {
    v7 = *(&v34 + 1);
    v25 = v31;
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v23 = v29;
    v24 = v30;

    v8 = sub_26460CD50(&v23, &qword_27FF756F8, &qword_264787DF0);
    if (v7)
    {
      MEMORY[0x28223BE20](v8);
      *(&v18 - 2) = v7;
      sub_264785694();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      v19 = sub_264785754();
      v20 = v11;
      sub_264613FC4();
      v19 = sub_264784E44();
      v20 = v12;
      v21 = v13 & 1;
      v22 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78190, &qword_26478F5D0);
      sub_264703F00();
      sub_264785444();

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78180, &qword_26478F5C8);
      return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
    }
  }

  else
  {
    v25 = v31;
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v23 = v29;
    v24 = v30;
    sub_26460CD50(&v23, &qword_27FF756F8, &qword_264787DF0);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78180, &qword_26478F5C8);
  return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
}

uint64_t sub_2646FC8A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v132 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF783F8, &qword_26478FDD8);
  v126 = *(v5 - 8);
  v127 = v5;
  MEMORY[0x28223BE20](v5);
  v112 = (&v110 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78400, &qword_26478FDE0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v131 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v129 = &v110 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78408, &qword_26478FDE8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v130 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v128 = &v110 - v14;
  v15 = sub_2647849E4();
  v116 = *(v15 - 8);
  v117 = v15;
  MEMORY[0x28223BE20](v15);
  v115 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2647846B4();
  v139 = *(v17 - 8);
  v140 = v17;
  MEMORY[0x28223BE20](v17);
  v138 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_264784AA4();
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v20 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78410, &qword_26478FDF0);
  v136 = *(v21 - 8);
  v137 = v21;
  MEMORY[0x28223BE20](v21);
  v134 = &v110 - v22;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78418, &qword_26478FDF8);
  v124 = *(v141 - 8);
  v23 = MEMORY[0x28223BE20](v141);
  v113 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v123 = &v110 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78420, &qword_26478FE00);
  v121 = *(v26 - 8);
  v122 = v26;
  MEMORY[0x28223BE20](v26);
  v114 = &v110 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78428, &qword_26478FE08);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v125 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v143 = &v110 - v31;
  v118 = a1;
  v32 = *(a1 + 8);
  v33 = v32 + OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel;
  swift_beginAccess();
  v142 = v33;
  v34 = *(*(v33 + 8) + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  v35 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_isTransparencyMode;
  swift_beginAccess();
  v144 = v32;
  v120 = v35;
  v36 = *(v32 + v35);
  v37 = objc_allocWithZone(type metadata accessor for PhoneCacheInfoViewModel());
  v38 = *a2;
  v119 = v20;
  if (v38)
  {
    v39 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
    *&v37[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact] = 0;
    v40 = v37;
    swift_beginAccess();
    *&v40[v39] = v34;
    v41 = &v40[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
    v42 = *(a2 + 1);
    *v41 = *a2;
    v41[1] = v42;
    v43 = *(a2 + 2);
    v44 = *(a2 + 3);
    v45 = *(a2 + 5);
    v41[4] = *(a2 + 4);
    v41[5] = v45;
    v41[2] = v43;
    v41[3] = v44;
    v40[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode] = v36;
    v46 = v34;
    sub_26467A834(a2, &v147);
    v47 = type metadata accessor for DeviceCacheInfoViewModel();
    v145.receiver = v40;
    v145.super_class = v47;
    v48 = objc_msgSendSuper2(&v145, sel_init);
    sub_264703CEC(&qword_27FF76538, type metadata accessor for DeviceCacheInfoViewModel, &protocol conformance descriptor for DeviceCacheInfoViewModel);
    v111 = v48;
    v147 = sub_264784174();
    v148 = v49;
    sub_264784A94();
    v50 = sub_2647065EC();
    v51 = v134;
    sub_264784FF4();
    (*(v133 + 8))(v20, v135);

    v52 = v138;
    sub_2647846A4();
    v147 = &type metadata for DeviceCacheInfoView;
    v148 = v50;
    swift_getOpaqueTypeConformance2();
    v53 = v113;
    v54 = v137;
    sub_264785024();
    (*(v139 + 8))(v52, v140);
    (*(v136 + 8))(v51, v54);
    v55 = swift_allocObject();
    v56 = v118;
    v57 = v118[1];
    v55[1] = *v118;
    v55[2] = v57;
    v55[3] = v56[2];
    sub_2647040B0(v56, &v147);
    v58 = v115;
    sub_2647849D4();
    v59 = v123;
    v60 = v141;
    sub_264784234();

    (*(v116 + 8))(v58, v117);
    sub_26460CD50(v53, &qword_27FF78418, &qword_26478FDF8);
    v61 = swift_allocObject();
    v62 = v56[1];
    v61[1] = *v56;
    v61[2] = v62;
    v61[3] = v56[2];
    sub_2647040B0(v56, &v147);
    sub_2647066C4();
    v63 = v114;
    sub_264784F14();

    sub_26460CD50(v59, &qword_27FF78418, &qword_26478FDF8);
    v65 = v121;
    v64 = v122;
    v66 = v143;
    (*(v121 + 32))(v143, v63, v122);
    v67 = 0;
    v68 = v60;
    v69 = v64;
    v70 = v65;
  }

  else
  {
    swift_deallocPartialClassInstance();
    v67 = 1;
    v66 = v143;
    v68 = v141;
    v69 = v122;
    v59 = v123;
    v70 = v121;
  }

  (*(v70 + 56))(v66, v67, 1, v69);
  v71 = *(*(v142 + 8) + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  v72 = *(v144 + v120);
  v73 = objc_allocWithZone(type metadata accessor for WatchCacheInfoViewModel());
  v74 = v129;
  if (a2[1])
  {
    v75 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
    *&v73[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact] = 0;
    v76 = v73;
    swift_beginAccess();
    *&v76[v75] = v71;
    v77 = &v76[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
    v78 = *(a2 + 1);
    *v77 = *a2;
    v77[1] = v78;
    v79 = *(a2 + 2);
    v80 = *(a2 + 3);
    v81 = *(a2 + 5);
    v77[4] = *(a2 + 4);
    v77[5] = v81;
    v77[2] = v79;
    v77[3] = v80;
    v76[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode] = v72;
    sub_26467A834(a2, &v147);
    v82 = type metadata accessor for DeviceCacheInfoViewModel();
    v146.receiver = v76;
    v146.super_class = v82;
    v83 = v71;
    v84 = objc_msgSendSuper2(&v146, sel_init);
    sub_264703CEC(&qword_27FF76538, type metadata accessor for DeviceCacheInfoViewModel, &protocol conformance descriptor for DeviceCacheInfoViewModel);
    v85 = v84;
    v147 = sub_264784174();
    v148 = v86;
    v87 = v119;
    sub_264784A94();
    v88 = sub_2647065EC();
    v89 = v134;
    sub_264784FF4();
    (*(v133 + 8))(v87, v135);

    v90 = v138;
    sub_2647846A4();
    v147 = &type metadata for DeviceCacheInfoView;
    v148 = v88;
    swift_getOpaqueTypeConformance2();
    v91 = v137;
    sub_264785024();

    v92 = v90;
    v68 = v141;
    (*(v139 + 8))(v92, v140);
    (*(v136 + 8))(v89, v91);
    v93 = v128;
    sub_26460E7E4(v59, v128, &qword_27FF78418, &qword_26478FDF8);
    v94 = 0;
  }

  else
  {
    swift_deallocPartialClassInstance();
    v94 = 1;
    v93 = v128;
  }

  (*(v124 + 56))(v93, v94, 1, v68);
  v95 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_callFunctionProvider;
  v96 = v144;
  swift_beginAccess();
  sub_26460CCE8(v96 + v95, &v149, &qword_27FF75710, &qword_264787E40);
  if (!v150)
  {
    sub_26460CD50(&v149, &qword_27FF75710, &qword_264787E40);
LABEL_12:
    (*(v126 + 56))(v74, 1, 1, v127);
    goto LABEL_13;
  }

  sub_264689B0C(&v149, &v147);
  v97 = *(*(v142 + 8) + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  if (!v97)
  {
    __swift_destroy_boxed_opaque_existential_0(&v147);
    goto LABEL_12;
  }

  v98 = v97;
  v99 = sub_2647845C4();
  v100 = v112;
  *v112 = v99;
  *(v100 + 8) = 0;
  *(v100 + 16) = 1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78438, &qword_26478FE18);
  sub_2646FDCDC(&v147, v98, v100 + *(v101 + 44));

  sub_26460E7E4(v100, v74, &qword_27FF783F8, &qword_26478FDD8);
  (*(v126 + 56))(v74, 0, 1, v127);
  __swift_destroy_boxed_opaque_existential_0(&v147);
LABEL_13:
  v102 = v74;
  v103 = v125;
  sub_26460CCE8(v66, v125, &qword_27FF78428, &qword_26478FE08);
  v104 = v130;
  sub_26460CCE8(v93, v130, &qword_27FF78408, &qword_26478FDE8);
  v105 = v93;
  v106 = v131;
  sub_26460CCE8(v74, v131, &qword_27FF78400, &qword_26478FDE0);
  v107 = v132;
  sub_26460CCE8(v103, v132, &qword_27FF78428, &qword_26478FE08);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78430, &qword_26478FE10);
  sub_26460CCE8(v104, v107 + *(v108 + 48), &qword_27FF78408, &qword_26478FDE8);
  sub_26460CCE8(v106, v107 + *(v108 + 64), &qword_27FF78400, &qword_26478FDE0);
  sub_26460CD50(v102, &qword_27FF78400, &qword_26478FDE0);
  sub_26460CD50(v105, &qword_27FF78408, &qword_26478FDE8);
  sub_26460CD50(v143, &qword_27FF78428, &qword_26478FE08);
  sub_26460CD50(v106, &qword_27FF78400, &qword_26478FDE0);
  sub_26460CD50(v104, &qword_27FF78408, &qword_26478FDE8);
  return sub_26460CD50(v103, &qword_27FF78428, &qword_26478FE08);
}

uint64_t sub_2646FD70C()
{
  v2 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  MEMORY[0x28223BE20](v7 - 8);
  v29 = &v25 - v8;
  v25 = *(v0 + 8);
  v9 = &v25[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel];
  swift_beginAccess();
  v10 = *(v9 + 1);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v12 = v10;
  sub_264783ED4(v30);

  v13 = v30[0];
  v14 = *(v30[0] + 16);
  if (!v14)
  {
LABEL_14:

    v14 = v29;
    (*(v4 + 56))(v29, 1, 1, v28);
    return sub_26460CD50(v14, &qword_27FF766A8, &unk_26478AA80);
  }

  v15 = 0;
  v16 = v30[0] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v17 = 0x6F6C6E557473616CLL;
  while (1)
  {
    if (v15 >= *(v13 + 2))
    {
      __break(1u);
      goto LABEL_22;
    }

    sub_264706858(v16 + *(v4 + 72) * v15, v6, type metadata accessor for SafetyCacheMapView.Annotation);
    v18 = v6[24];
    if (v18 <= 2)
    {
      break;
    }

    if (v18 == 3)
    {
      KeyPath = 0xEA0000000000746ELL;
    }

    else
    {
      KeyPath = 0xE700000000000000;
    }

LABEL_12:
    v1 = sub_264785E84();

    if (v1)
    {
      goto LABEL_16;
    }

    ++v15;
    sub_26470510C(v6, type metadata accessor for SafetyCacheMapView.Annotation);
    if (v14 == v15)
    {
      goto LABEL_14;
    }
  }

  if (!v6[24])
  {
    KeyPath = 0xEB000000006E6F69;
    goto LABEL_12;
  }

  if (v18 == 2)
  {
    KeyPath = 0xED00006E6F697461;
    goto LABEL_12;
  }

LABEL_16:

  v14 = v29;
  sub_264706140(v6, v29, type metadata accessor for SafetyCacheMapView.Annotation);
  (*(v4 + 56))(v14, 0, 1, v28);
  v16 = v26;
  sub_26460CCE8(v14, v26, &qword_27FF766A8, &unk_26478AA80);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  (*(*(v19 - 8) + 56))(v16, 0, 3, v19);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v25;
  v17 = sub_264783EC4();
  KeyPath = v20;
  v1 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *KeyPath = v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_17;
  }

LABEL_22:
  v1 = sub_2647031F4(0, *(v1 + 16) + 1, 1, v1, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
  *KeyPath = v1;
LABEL_17:
  v23 = *(v1 + 16);
  v22 = *(v1 + 24);
  if (v23 >= v22 >> 1)
  {
    v1 = sub_2647031F4((v22 > 1), v23 + 1, 1, v1, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
    *KeyPath = v1;
  }

  *(v1 + 16) = v23 + 1;
  sub_264706140(v16, v1 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, type metadata accessor for SafetyMonitorUINavigationPathItem);
  (v17)(v30, 0);

  return sub_26460CD50(v14, &qword_27FF766A8, &unk_26478AA80);
}

uint64_t sub_2646FDCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78450, &qword_26478FE20);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v22[-v11];
  sub_264689A40(a1, v24);
  v13 = swift_allocObject();
  sub_264689B0C(v24, v13 + 16);
  v23 = a2;
  sub_264785334();
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_0(a1, v14);
  LOBYTE(a1) = (*(v15 + 8))(v14, v15);
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = (a1 & 1) == 0;
  v18 = &v12[*(v7 + 44)];
  *v18 = KeyPath;
  v18[1] = sub_264664980;
  v18[2] = v17;
  sub_26460CCE8(v12, v10, &qword_27FF78450, &qword_26478FE20);
  *a3 = 0;
  *(a3 + 8) = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78458, &qword_26478FE58);
  sub_26460CCE8(v10, a3 + *(v19 + 48), &qword_27FF78450, &qword_26478FE20);
  v20 = a3 + *(v19 + 64);
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_26460CD50(v12, &qword_27FF78450, &qword_26478FE20);
  return sub_26460CD50(v10, &qword_27FF78450, &qword_26478FE20);
}

uint64_t sub_2646FDF24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_264785704();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2647856E4();
  MEMORY[0x28223BE20](v4 - 8);
  sub_2647856D4();
  sub_2647856C4();
  sub_264785B14();
  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264613FC4();
  result = sub_264784E44();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_2646FE128(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A00, &qword_26478FDC0);
  sub_264783B64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF781A0, &qword_26478F5D8);
  sub_26460CDF0(&qword_27FF783D0, &qword_27FF77A00, &qword_26478FDC0, MEMORY[0x277D83980]);
  sub_264703F84();
  sub_26470653C();
  return sub_264785434();
}

uint64_t sub_2646FE220@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *(swift_allocObject() + 16) = v3;
  type metadata accessor for SafetyCacheWorkoutEventRowViewModel(0);
  sub_264703CEC(&qword_27FF78250, type metadata accessor for SafetyCacheWorkoutEventRowViewModel, &protocol conformance descriptor for SafetyCacheWorkoutEventRowViewModel);
  v4 = v3;
  v5 = sub_264784374();
  v7 = v6;

  v8 = sub_264783FA4();

  v9 = sub_264783E54();

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v8;
  return result;
}

uint64_t sub_2646FE368@<X0>(_OWORD *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v62 = a4;
  v63 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78378, &qword_26478FCE0) - 8;
  v57 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v61 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78380, &qword_26478FCE8) - 8;
  v9 = MEMORY[0x28223BE20](v58);
  v60 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v53 = sub_2647845C4();
  LOBYTE(v66) = 1;
  sub_2646FEAE0(0, &v107);
  v89 = v115;
  v90 = v116;
  v91 = v117;
  v85 = v111;
  v86 = v112;
  v87 = v113;
  v88 = v114;
  v81 = v107;
  v82 = v108;
  v83 = v109;
  v84 = v110;
  v93[8] = v115;
  v93[9] = v116;
  v93[10] = v117;
  v93[4] = v111;
  v93[5] = v112;
  v93[6] = v113;
  v93[7] = v114;
  v93[0] = v107;
  v93[1] = v108;
  v92 = v118;
  v94 = v118;
  v93[2] = v109;
  v93[3] = v110;
  sub_26460CCE8(&v81, &v95, &qword_27FF78388, &qword_26478FCF0);
  sub_26460CD50(v93, &qword_27FF78388, &qword_26478FCF0);
  *(&v80[8] + 7) = v89;
  *(&v80[9] + 7) = v90;
  *(&v80[10] + 7) = v91;
  *(&v80[4] + 7) = v85;
  *(&v80[5] + 7) = v86;
  *(&v80[6] + 7) = v87;
  *(&v80[7] + 7) = v88;
  *(v80 + 7) = v81;
  *(&v80[1] + 7) = v82;
  *(&v80[2] + 7) = v83;
  *(&v80[11] + 7) = v92;
  *(&v80[3] + 7) = v84;
  v52 = v66;
  v13 = sub_264785504();
  v50 = v14;
  v51 = v13;
  v15 = &v12[*(v4 + 44)];
  v16 = sub_2647851A4();
  *&v95 = swift_getKeyPath();
  *(&v95 + 1) = v16;
  LOBYTE(v96) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = v63;
  v19 = v63[1];
  *(v17 + 24) = *v63;
  *(v17 + 40) = v19;
  *(v17 + 56) = *(v18 + 32);
  sub_2647040B0(v18, &v107);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78390, &qword_26478FCF8);
  v55 = sub_2647062A8();
  sub_264784F14();

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF783B8, &qword_26478FD18);
  v20 = &v15[*(v54 + 36)];
  v21 = v50;
  *v20 = v51;
  v20[1] = v21;
  v22 = v80[2];
  *(v12 + 65) = v80[3];
  *(v12 + 49) = v22;
  v23 = v80[0];
  *(v12 + 33) = v80[1];
  *(v12 + 17) = v23;
  v24 = v80[6];
  *(v12 + 129) = v80[7];
  *(v12 + 113) = v24;
  v25 = v80[4];
  *(v12 + 97) = v80[5];
  *(v12 + 81) = v25;
  *(v12 + 12) = *(&v80[10] + 15);
  v26 = v80[9];
  *(v12 + 177) = v80[10];
  v27 = v80[8];
  *(v12 + 161) = v26;
  *v12 = v53;
  *(v12 + 1) = 0;
  v12[16] = v52;
  *(v12 + 145) = v27;
  v28 = swift_allocObject();
  v29 = v63;
  v30 = v63[1];
  *(v28 + 1) = *v63;
  *(v28 + 2) = v30;
  *(v28 + 3) = v29[2];
  v31 = &v12[*(v58 + 44)];
  *v31 = sub_264706470;
  v31[1] = v28;
  sub_2647040B0(v29, &v107);
  v58 = sub_2647845C4();
  v79 = 1;
  sub_2646FEAE0(1, &v66);
  v103 = v74;
  v104 = v75;
  v105 = v76;
  v99 = v70;
  v100 = v71;
  v101 = v72;
  v102 = v73;
  v95 = v66;
  v96 = v67;
  v97 = v68;
  v98 = v69;
  v115 = v74;
  v116 = v75;
  v117 = v76;
  v111 = v70;
  v112 = v71;
  v113 = v72;
  v114 = v73;
  v107 = v66;
  v108 = v67;
  v106 = v77;
  v118 = v77;
  v109 = v68;
  v110 = v69;
  sub_26460CCE8(&v95, v64, &qword_27FF78388, &qword_26478FCF0);
  sub_26460CD50(&v107, &qword_27FF78388, &qword_26478FCF0);
  *(&v78[8] + 7) = v103;
  *(&v78[9] + 7) = v104;
  *(&v78[10] + 7) = v105;
  *(&v78[4] + 7) = v99;
  *(&v78[5] + 7) = v100;
  *(&v78[6] + 7) = v101;
  *(&v78[7] + 7) = v102;
  *(v78 + 7) = v95;
  *(&v78[1] + 7) = v96;
  *(&v78[2] + 7) = v97;
  *(&v78[11] + 7) = v106;
  *(&v78[3] + 7) = v98;
  LOBYTE(v4) = v79;
  v59 = sub_264785504();
  v33 = v32;
  v34 = &v8[*(v57 + 44)];
  v35 = sub_2647851A4();
  v64[0] = swift_getKeyPath();
  v64[1] = v35;
  v65 = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 1;
  v37 = v29[1];
  *(v36 + 24) = *v29;
  *(v36 + 40) = v37;
  *(v36 + 56) = v29[2];
  sub_2647040B0(v29, &v66);
  sub_264784F14();

  v38 = &v34[*(v54 + 36)];
  *v38 = v59;
  v38[1] = v33;
  v39 = v78[9];
  *(v8 + 145) = v78[8];
  *(v8 + 161) = v39;
  *(v8 + 177) = v78[10];
  *(v8 + 12) = *(&v78[10] + 15);
  v40 = v78[5];
  *(v8 + 81) = v78[4];
  *(v8 + 97) = v40;
  v41 = v78[7];
  *(v8 + 113) = v78[6];
  *(v8 + 129) = v41;
  v42 = v78[1];
  *(v8 + 17) = v78[0];
  *(v8 + 33) = v42;
  v43 = v78[3];
  *(v8 + 49) = v78[2];
  *v8 = v58;
  *(v8 + 1) = 0;
  v8[16] = v4;
  *(v8 + 65) = v43;
  v44 = v60;
  sub_26460CCE8(v12, v60, &qword_27FF78380, &qword_26478FCE8);
  v45 = v61;
  sub_26460CCE8(v8, v61, &qword_27FF78378, &qword_26478FCE0);
  v46 = v62;
  sub_26460CCE8(v44, v62, &qword_27FF78380, &qword_26478FCE8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF783C0, &qword_26478FD20);
  sub_26460CCE8(v45, v46 + *(v47 + 48), &qword_27FF78378, &qword_26478FCE0);
  sub_26460CD50(v8, &qword_27FF78378, &qword_26478FCE0);
  sub_26460CD50(v12, &qword_27FF78380, &qword_26478FCE8);
  sub_26460CD50(v45, &qword_27FF78378, &qword_26478FCE0);
  return sub_26460CD50(v44, &qword_27FF78380, &qword_26478FCE8);
}

uint64_t sub_2646FEAE0@<X0>(char a1@<W0>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v4 = sub_264785E84();

    if (v4)
    {
      v5 = sub_2647851B4();
    }

    else
    {
      v5 = sub_264785164();
    }
  }

  else
  {

    v5 = sub_2647851B4();
  }

  v6 = v5;
  v7 = sub_264785274();
  KeyPath = swift_getKeyPath();

  v9 = sub_264785504();
  v18 = v10;
  v19 = v9;
  v11 = sub_264784724();
  LOBYTE(v30[0]) = 1;
  sub_2646FEE34(v21);
  *&v20[7] = v21[0];
  *&v20[23] = v21[1];
  *&v20[39] = v21[2];
  *&v20[55] = v21[3];
  v12 = v30[0];
  v13 = sub_264785274();
  v14 = sub_264785214();
  v15 = swift_getKeyPath();
  v22 = v11;
  v23[0] = v12;
  *&v23[1] = *v20;
  *&v23[49] = *&v20[48];
  *&v23[33] = *&v20[32];
  *&v23[17] = *&v20[16];
  *&v23[64] = *&v20[63];
  v25 = *v23;
  v24 = v11;
  v29 = *&v20[63];
  v28 = *&v23[48];
  v27 = *&v23[32];
  v26 = *&v23[16];

  sub_26460CCE8(&v22, v30, &qword_27FF783C8, &qword_26478FD28);

  *a3 = v7;
  *(a3 + 8) = KeyPath;
  *(a3 + 16) = v6;
  *(a3 + 24) = sub_2646FEDF0;
  *(a3 + 32) = 0;
  *(a3 + 40) = v19;
  *(a3 + 48) = v18;
  *(a3 + 88) = v26;
  *(a3 + 104) = v27;
  *(a3 + 120) = v28;
  v16 = v29;
  *(a3 + 56) = v24;
  *(a3 + 72) = v25;
  *(a3 + 136) = v16;
  *(a3 + 144) = 0;
  *(a3 + 152) = 1;
  *(a3 + 160) = v13;
  *(a3 + 168) = v15;
  *(a3 + 176) = v14;

  v30[0] = v11;
  v30[1] = 0;
  v31 = v12;
  v33 = *&v20[16];
  v34 = *&v20[32];
  *v35 = *&v20[48];
  *&v35[15] = *&v20[63];
  v32 = *v20;
  sub_26460CD50(v30, &qword_27FF783C8, &qword_26478FD28);
}

void sub_2646FEDF0(uint64_t a2@<X8>)
{
  v3 = sub_2647851A4();
  sub_2647840E4();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
}

void sub_2646FEE34(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v45);

  v3 = v45;
  if (!v45)
  {
    v35 = 0;
LABEL_8:
    v21 = 0;
    v4 = 0;
    goto LABEL_9;
  }

  v4 = [v45 name];

  if (!v4)
  {
    v35 = 0;
    v3 = 0;
    v21 = 0;
LABEL_9:
    v31 = 0;
    v34 = 0;
    v37 = 0;
    v36 = 0;
    goto LABEL_10;
  }

  v5 = sub_264785724();
  v7 = v6;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v45);

  if (!v46)
  {

    v35 = 0;
    v3 = 0;
    goto LABEL_8;
  }

  v41 = v46;
  v42 = v45;
  v45 = v5;
  v46 = v7;
  sub_264613FC4();
  v8 = sub_264784E44();
  v10 = v9;
  v12 = v11;
  sub_264784CC4();
  v13 = sub_264784E24();
  v15 = v14;
  v17 = v16;

  sub_26460ECC4(v8, v10, v12 & 1);

  sub_264785204();
  v39 = sub_264784DE4();
  v3 = v18;
  v44 = v19;
  v21 = v20;

  sub_26460ECC4(v13, v15, v17 & 1);

  v45 = v42;
  v46 = v41;
  v22 = sub_264784E44();
  v24 = v23;
  v26 = v25;
  sub_264784D74();
  v27 = sub_264784E24();
  v43 = v28;
  v38 = v29;

  sub_26460ECC4(v22, v24, v26 & 1);

  sub_264785214();
  v4 = sub_264784DE4();
  v31 = v30;
  v40 = v32;
  v34 = v33;

  v35 = v39;
  sub_26460ECC4(v27, v43, v38 & 1);

  LOBYTE(v45) = v44 & 1;
  sub_26460C474(v39, v3, v44 & 1);

  sub_26460C474(v4, v31, v40 & 1);

  sub_26460ECC4(v4, v31, v40 & 1);

  sub_26460ECC4(v39, v3, v44 & 1);

  v36 = v45;
  v37 = v40 & 1;
LABEL_10:
  *a2 = v35;
  a2[1] = v3;
  a2[2] = v36;
  a2[3] = v21;
  a2[4] = v4;
  a2[5] = v31;
  a2[6] = v37;
  a2[7] = v34;
}

uint64_t sub_2646FF1C4(char a1, uint64_t a2)
{
  v4 = 0xEB000000006E6F69;
  v5 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v9 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = &v33 - v13;
  v37 = v8;
  if (a1)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_264785E84();
  }

  v34 = *(a2 + 8);
  v15 = v34 + OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel;
  swift_beginAccess();
  v16 = *(v15 + 8);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v18 = v16;
  sub_264783ED4(v38);

  v19 = v38[0];
  v20 = *(v38[0] + 16);
  if (v20)
  {
    v33 = v6;
    v21 = 0;
    v6 = v38[0] + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    if (v14)
    {
      v22 = 0x74616E6974736564;
    }

    else
    {
      v22 = 0x636F4C7472617473;
    }

    if (v14)
    {
      v23 = 0xEB000000006E6F69;
    }

    else
    {
      v23 = 0xED00006E6F697461;
    }

    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      sub_264706858(v6 + *(v9 + 72) * v21, v11, type metadata accessor for SafetyCacheMapView.Annotation);
      v24 = v11[24];
      if (v24 > 2)
      {
        if (v24 == 3)
        {
          KeyPath = 0xEA0000000000746ELL;
        }

        else
        {
          KeyPath = 0xE700000000000000;
        }

        goto LABEL_23;
      }

      if (!v11[24])
      {
        break;
      }

      if (v24 == 1)
      {
        KeyPath = 0xEA00000000006B63;
        goto LABEL_23;
      }

      KeyPath = 0xED00006E6F697461;
      if (v22 == 0x636F4C7472617473)
      {
        goto LABEL_22;
      }

LABEL_23:
      v4 = sub_264785E84();

      if (v4)
      {
        goto LABEL_30;
      }

      ++v21;
      sub_26470510C(v11, type metadata accessor for SafetyCacheMapView.Annotation);
      if (v20 == v21)
      {

        v25 = 1;
        v6 = v33;
        goto LABEL_27;
      }
    }

    KeyPath = 0xEB000000006E6F69;
    if (v22 != 0x74616E6974736564)
    {
      goto LABEL_23;
    }

LABEL_22:
    if (KeyPath == v23)
    {

LABEL_30:

      v26 = v11;
      v11 = v36;
      sub_264706140(v26, v36, type metadata accessor for SafetyCacheMapView.Annotation);
      v25 = 0;
      v6 = v33;
      v19 = v37;
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  v25 = 1;
LABEL_27:
  v11 = v36;
  v19 = v37;
LABEL_31:
  (*(v9 + 56))(v11, v25, 1, v35);
  sub_26460CCE8(v11, v19, &qword_27FF766A8, &unk_26478AA80);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  (*(*(v27 - 8) + 56))(v19, 0, 3, v27);
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = sub_264783EC4();
  KeyPath = v28;
  v4 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *KeyPath = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_36:
    v4 = sub_2647031F4(0, *(v4 + 16) + 1, 1, v4, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
    *KeyPath = v4;
  }

  v31 = *(v4 + 16);
  v30 = *(v4 + 24);
  if (v31 >= v30 >> 1)
  {
    v4 = sub_2647031F4((v30 > 1), v31 + 1, 1, v4, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
    *KeyPath = v4;
  }

  *(v4 + 16) = v31 + 1;
  sub_264706140(v19, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v31, type metadata accessor for SafetyMonitorUINavigationPathItem);
  v20(v38, 0);

  return sub_26460CD50(v11, &qword_27FF766A8, &unk_26478AA80);
}

void sub_2646FF870(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void *sub_2646FF880(void *result, void *(*a2)(__int128 *__return_ptr))
{
  v2 = result;
  if (*(result + 16) == 1)
  {
    result = a2(&v5);
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = *result;
  }

  *v2 = v3;
  *(v2 + 16) = v4;
  return result;
}

uint64_t sub_2646FF8E4@<X0>(char *a1@<X0>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = *&a1[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent];
    v6 = a1;
    v7 = [v5 location];
    if (v7)
    {

      v8 = sub_264785274();
      v9 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_iconColor;
      swift_beginAccess();
      v10 = *&v6[v9];

      KeyPath = swift_getKeyPath();
    }

    else
    {

      v8 = 0;
      KeyPath = 0;
      v10 = 0;
    }

    v18 = sub_264784724();
    sub_2646FFCBC(a1, &v35);
    v28 = *&v36[112];
    v29 = *&v36[128];
    v24 = *&v36[48];
    v25 = *&v36[64];
    v26 = *&v36[80];
    v27 = *&v36[96];
    v20 = v35;
    v21 = *v36;
    v22 = *&v36[16];
    v23 = *&v36[32];
    v31[8] = *&v36[112];
    v31[9] = *&v36[128];
    v31[4] = *&v36[48];
    v31[5] = *&v36[64];
    v31[6] = *&v36[80];
    v31[7] = *&v36[96];
    v31[0] = v35;
    v31[1] = *v36;
    v30 = v36[144];
    v32 = v36[144];
    v31[2] = *&v36[16];
    v31[3] = *&v36[32];
    sub_26460CCE8(&v20, &v33, &qword_27FF78258, &qword_26478FA08);
    sub_26460CD50(v31, &qword_27FF78258, &qword_26478FA08);
    *&v19[119] = v27;
    *&v19[135] = v28;
    *&v19[151] = v29;
    *&v19[55] = v23;
    *&v19[71] = v24;
    v19[167] = v30;
    *&v19[87] = v25;
    *&v19[103] = v26;
    *&v19[7] = v20;
    *&v19[23] = v21;
    *&v19[39] = v22;
    *(&v34[7] + 1) = *&v19[112];
    *(&v34[8] + 1) = *&v19[128];
    *(&v34[9] + 1) = *&v19[144];
    *(&v34[3] + 1) = *&v19[48];
    *(&v34[4] + 1) = *&v19[64];
    *(&v34[5] + 1) = *&v19[80];
    *(&v34[6] + 1) = *&v19[96];
    *(v34 + 1) = *v19;
    *(&v34[1] + 1) = *&v19[16];
    v33 = v18;
    LOBYTE(v34[0]) = 1;
    *(&v34[10] + 1) = *&v19[160];
    *(&v34[2] + 1) = *&v19[32];
    sub_26466D2FC(v8);
    sub_26460CCE8(&v33, &v35, &qword_27FF78260, &qword_26478FA10);
    sub_26466D34C(v8, KeyPath, v10);
    v12 = v34[8];
    *(a3 + 152) = v34[7];
    *(a3 + 168) = v12;
    *(a3 + 184) = v34[9];
    *(a3 + 193) = *(&v34[9] + 9);
    v13 = v34[4];
    *(a3 + 88) = v34[3];
    *(a3 + 104) = v13;
    v14 = v34[6];
    *(a3 + 120) = v34[5];
    *(a3 + 136) = v14;
    v15 = v34[0];
    *(a3 + 24) = v33;
    *(a3 + 40) = v15;
    v16 = v34[2];
    *(a3 + 56) = v34[1];
    *(a3 + 72) = v16;
    *&v36[113] = *&v19[112];
    *&v36[129] = *&v19[128];
    v37 = *&v19[144];
    *&v36[49] = *&v19[48];
    *&v36[65] = *&v19[64];
    *&v36[81] = *&v19[80];
    *&v36[97] = *&v19[96];
    *&v36[1] = *v19;
    *&v36[17] = *&v19[16];
    *a3 = v8;
    *(a3 + 8) = KeyPath;
    *(a3 + 16) = v10;
    v35 = v18;
    v36[0] = 1;
    v38 = *&v19[160];
    *&v36[33] = *&v19[32];
    sub_26460CD50(&v35, &qword_27FF78260, &qword_26478FA10);
    return sub_26466D34C(v8, KeyPath, v10);
  }

  else
  {
    type metadata accessor for SafetyCacheWorkoutEventRowViewModel(0);
    sub_264703CEC(&qword_27FF78250, type metadata accessor for SafetyCacheWorkoutEventRowViewModel, &protocol conformance descriptor for SafetyCacheWorkoutEventRowViewModel);
    result = sub_264784364();
    __break(1u);
  }

  return result;
}

uint64_t sub_2646FFCBC@<X0>(char *a1@<X0>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = &a1[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_title];
    swift_beginAccess();
    if (*(v5 + 1))
    {
      v6 = *v5;
      v7 = *(v5 + 1);
    }

    else
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    v70 = a3;
    v83 = v6;
    v84 = v7;
    sub_264613FC4();
    v74 = a1;

    v8 = sub_264784E44();
    v10 = v9;
    v12 = v11;
    sub_264784CC4();
    v13 = sub_264784E24();
    v15 = v14;
    v17 = v16;

    sub_26460ECC4(v8, v10, v12 & 1);

    sub_264785204();
    v18 = sub_264784DE4();
    v79 = v19;
    v80 = v18;
    v73 = v20;
    v78 = v21;

    sub_26460ECC4(v13, v15, v17 & 1);

    KeyPath = swift_getKeyPath();
    v22 = &v74[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_timeString];
    swift_beginAccess();
    v24 = *v22;
    v23 = *(v22 + 1);

    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = 0xE000000000000000;
    if (v23)
    {
      v26 = v23;
    }

    v81 = v25;
    v82 = v26;
    v27 = sub_264784E44();
    v29 = v28;
    v31 = v30;
    sub_264784D74();
    v32 = sub_264784E24();
    v34 = v33;
    v36 = v35;

    sub_26460ECC4(v27, v29, v31 & 1);

    sub_264785214();
    v75 = sub_264784DE4();
    v76 = v37;
    v72 = v38;
    v40 = v39;

    sub_26460ECC4(v32, v34, v36 & 1);

    v71 = swift_getKeyPath();
    v41 = *&v74[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent];
    v42 = [v41 location];

    if (v42)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v81);

      v43 = v81;
      v44 = v82;
      if (!v82)
      {
        v43 = 0;
        v44 = 0xE000000000000000;
      }

      v81 = v43;
      v82 = v44;
      v45 = sub_264784E44();
      v47 = v46;
      v49 = v48;
      sub_264784D74();
      v50 = sub_264784E24();
      v52 = v51;
      v54 = v53;

      sub_26460ECC4(v45, v47, v49 & 1);

      sub_264785214();
      v55 = sub_264784DE4();
      v57 = v56;
      v59 = v58;
      v61 = v60;

      sub_26460ECC4(v50, v52, v54 & 1);

      v62 = swift_getKeyPath();
      v63 = v55;
      v64 = v57;
      v65 = v59 & 1;
      sub_26460C474(v55, v57, v59 & 1);
      v66 = v61;

      v67 = v62;

      v68 = 2;
    }

    else
    {

      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
    }

    LOBYTE(v81) = v73 & 1;
    sub_26460C474(v80, v79, v73 & 1);

    sub_26460C474(v75, v72, v40 & 1);

    sub_264704CC4(v63, v64, v65, v66);
    sub_264704D14(v63, v64, v65, v66, v67);
    *v70 = v80;
    *(v70 + 8) = v79;
    *(v70 + 16) = v73 & 1;
    *(v70 + 24) = v78;
    *(v70 + 32) = KeyPath;
    *(v70 + 40) = 2;
    *(v70 + 48) = 0;
    *(v70 + 56) = v75;
    *(v70 + 64) = v72;
    *(v70 + 72) = v40 & 1;
    *(v70 + 80) = v76;
    *(v70 + 88) = v71;
    *(v70 + 96) = 1;
    *(v70 + 104) = 0;
    *(v70 + 112) = v63;
    *(v70 + 120) = v64;
    *(v70 + 128) = v65;
    *(v70 + 136) = v66;
    *(v70 + 144) = v67;
    *(v70 + 152) = v68;
    *(v70 + 160) = 0;
    sub_264704D14(v63, v64, v65, v66, v67);
    sub_26460ECC4(v75, v72, v40 & 1);

    sub_26460ECC4(v80, v79, v81);
  }

  else
  {
    type metadata accessor for SafetyCacheWorkoutEventRowViewModel(0);
    sub_264703CEC(&qword_27FF78250, type metadata accessor for SafetyCacheWorkoutEventRowViewModel, &protocol conformance descriptor for SafetyCacheWorkoutEventRowViewModel);
    result = sub_264784364();
    __break(1u);
  }

  return result;
}