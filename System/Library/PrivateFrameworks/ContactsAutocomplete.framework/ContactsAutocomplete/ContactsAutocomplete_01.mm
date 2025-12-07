unint64_t sub_2156428C8()
{
  result = qword_27CA680E0;
  if (!qword_27CA680E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680E0);
  }

  return result;
}

uint64_t sub_215642920(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA680E8, &qword_21565D460);
  swift_allocObject();
  v2 = sub_215656CFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA680F0, &qword_21565D468);
  swift_allocObject();
  sub_215656CFC();
  return v2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_215642A18(uint64_t *a1, int a2)
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

uint64_t sub_215642A60(uint64_t result, int a2, int a3)
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

uint64_t static ComposeRecipientHandleServiceAppEnumRepresentation.enumIdentifier.getter()
{
  swift_beginAccess();
  v0 = qword_27CA680F8;

  return v0;
}

uint64_t static ComposeRecipientHandleServiceAppEnumRepresentation.enumIdentifier.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_27CA680F8 = a1;
  off_27CA68100 = a2;
}

double sub_215642BB4@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27CA68100;
  *a1 = qword_27CA680F8;
  a1[1] = v2;

  return result;
}

uint64_t sub_215642C04(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27CA680F8 = v2;
  off_27CA68100 = v1;
}

ContactsAutocomplete::ComposeRecipientHandleServiceAppEnumRepresentation_optional __swiftcall ComposeRecipientHandleServiceAppEnumRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21565710C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ComposeRecipientHandleServiceAppEnumRepresentation.rawValue.getter()
{
  v1 = 0x6567617373654D69;
  if (*v0)
  {
    v1 = 5456722;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x656D695465636166;
  }
}

void sub_215642D68(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6567617373654D69;
  v4 = 0xED00006F65646956;
  if (*v1 != 2)
  {
    v4 = 0xED00006F69647541;
  }

  if (*v1)
  {
    v3 = 5456722;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656D695465636166;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_215642DF8()
{
  swift_beginAccess();
  v0 = qword_27CA680F8;

  return v0;
}

uint64_t sub_215642E58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6567617373654D69;
  v3 = a1;
  if (a1 > 1u)
  {
    v4 = 0x656D695465636166;
    if (v3 == 2)
    {
      v5 = 0xED00006F65646956;
    }

    else
    {
      v5 = 0xED00006F69647541;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 5456722;
    }

    else
    {
      v4 = 0x6567617373654D69;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xED00006F65646956;
  if (a2 != 2)
  {
    v7 = 0xED00006F69647541;
  }

  if (a2)
  {
    v2 = 5456722;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x656D695465636166;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21565713C();
  }

  return v10 & 1;
}

uint64_t sub_215642FBC()
{
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_215643090(uint64_t a1)
{
  sub_215656E8C();
}

uint64_t sub_215643150(uint64_t a1)
{
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t ComposeRecipientHandleServiceAppEnumRepresentation.description.getter()
{
  v1 = 0xE800000000000000;
  v2 = 0x6567617373654D69;
  v3 = 0xED00006F65646956;
  if (*v0 != 2)
  {
    v3 = 0xED00006F69647541;
  }

  if (*v0)
  {
    v2 = 5456722;
    v1 = 0xE300000000000000;
  }

  if (*v0 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x656D695465636166;
  }

  if (*v0 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x21606D140](v4, v5);

  return 46;
}

uint64_t sub_215643440()
{
  v1 = 0xE800000000000000;
  v2 = 0x6567617373654D69;
  v3 = 0xED00006F65646956;
  if (*v0 != 2)
  {
    v3 = 0xED00006F69647541;
  }

  if (*v0)
  {
    v2 = 5456722;
    v1 = 0xE300000000000000;
  }

  if (*v0 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x656D695465636166;
  }

  if (*v0 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x21606D140](v4, v5);

  return 46;
}

unint64_t sub_215643530()
{
  result = qword_27CA68108;
  if (!qword_27CA68108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68108);
  }

  return result;
}

unint64_t sub_215643588()
{
  result = qword_27CA68110;
  if (!qword_27CA68110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68110);
  }

  return result;
}

unint64_t sub_2156435E0()
{
  result = qword_27CA68118;
  if (!qword_27CA68118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68118);
  }

  return result;
}

unint64_t sub_215643638()
{
  result = qword_27CA68120;
  if (!qword_27CA68120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68120);
  }

  return result;
}

unint64_t sub_215643690()
{
  result = qword_27CA68128;
  if (!qword_27CA68128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68128);
  }

  return result;
}

unint64_t sub_2156436E8()
{
  result = qword_27CA68130;
  if (!qword_27CA68130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA68138, &qword_21565D600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68130);
  }

  return result;
}

unint64_t sub_21564374C()
{
  result = qword_27CA68140;
  if (!qword_27CA68140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68140);
  }

  return result;
}

unint64_t sub_2156437A4()
{
  result = qword_27CA68148;
  if (!qword_27CA68148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68148);
  }

  return result;
}

unint64_t sub_2156437FC()
{
  result = qword_27CA68150;
  if (!qword_27CA68150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68150);
  }

  return result;
}

unint64_t sub_215643864()
{
  result = qword_27CA68158;
  if (!qword_27CA68158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68158);
  }

  return result;
}

uint64_t sub_2156438C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x636972656E6567;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656D695465636166;
    }

    else
    {
      v4 = 0x7261646E656C6163;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x736567617373656DLL;
    }

    else
    {
      v4 = 0x636972656E6567;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x656D695465636166;
  if (a2 != 2)
  {
    v7 = 0x7261646E656C6163;
  }

  if (a2)
  {
    v2 = 0x736567617373656DLL;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21565713C();
  }

  return v10 & 1;
}

uint64_t sub_215643A04()
{
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_215643AC4(uint64_t a1)
{
  sub_215656E8C();
}

uint64_t sub_215643B70(uint64_t a1)
{
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

unint64_t sub_215643C2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_215643F38(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_215643C5C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x636972656E6567;
  v4 = 0x656D695465636166;
  if (*v1 != 2)
  {
    v4 = 0x7261646E656C6163;
  }

  if (*v1)
  {
    v3 = 0x736567617373656DLL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_215643CD8()
{
  swift_beginAccess();
  v0 = aClientappenum[0];

  return v0;
}

uint64_t sub_215643E7C()
{
  v1 = 0xE700000000000000;
  v2 = 0x636972656E6567;
  v3 = 0x656D695465636166;
  if (*v0 != 2)
  {
    v3 = 0x7261646E656C6163;
  }

  if (*v0)
  {
    v2 = 0x736567617373656DLL;
    v1 = 0xE800000000000000;
  }

  if (*v0 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (*v0 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  MEMORY[0x21606D140](v4, v5);

  return 46;
}

unint64_t sub_215643F38(uint64_t a1, uint64_t a2)
{
  v2 = sub_21565710C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_215643F88()
{
  result = qword_27CA68170;
  if (!qword_27CA68170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68170);
  }

  return result;
}

unint64_t sub_215643FE0()
{
  result = qword_27CA68178;
  if (!qword_27CA68178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68178);
  }

  return result;
}

unint64_t sub_215644038()
{
  result = qword_27CA68180;
  if (!qword_27CA68180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68180);
  }

  return result;
}

unint64_t sub_215644090()
{
  result = qword_27CA68188;
  if (!qword_27CA68188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68188);
  }

  return result;
}

unint64_t sub_2156440E8()
{
  result = qword_27CA68190;
  if (!qword_27CA68190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68190);
  }

  return result;
}

unint64_t sub_215644140()
{
  result = qword_27CA68198;
  if (!qword_27CA68198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA681A0, &qword_21565D8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68198);
  }

  return result;
}

unint64_t sub_2156441A4()
{
  result = qword_27CA681A8;
  if (!qword_27CA681A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA681A8);
  }

  return result;
}

unint64_t sub_2156441FC()
{
  result = qword_27CA681B0;
  if (!qword_27CA681B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA681B0);
  }

  return result;
}

unint64_t sub_215644254()
{
  result = qword_27CA681B8;
  if (!qword_27CA681B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA681B8);
  }

  return result;
}

unint64_t sub_2156442BC()
{
  result = qword_27CA681C0;
  if (!qword_27CA681C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA681C0);
  }

  return result;
}

void *sub_215644444@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 16))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2156444BC(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 24))(&v4);
}

uint64_t (*sub_215644548(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA681F0);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

void *sub_2156445E0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 48))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_215644658(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 56))(&v4);
}

uint64_t sub_2156446D8()
{

  sub_215656CCC();
}

uint64_t sub_215644730(char *a1, void *a2)
{

  sub_215656CDC();
}

uint64_t (*sub_21564477C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA68200);

  *(v4 + 40) = sub_215656CBC();
  return sub_21563FDD0;
}

uint64_t ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = qword_27CA681F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA681E8, "Ԙ");
  swift_allocObject();
  *(v2 + v3) = sub_215656CAC();
  v4 = qword_27CA68200;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA681F8, &qword_21565DA48);
  swift_allocObject();
  *(v2 + v4) = sub_215656CAC();
  v5 = sub_215656B2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = sub_215656B8C();
  (*(v6 + 8))(a1, v5);
  return v8;
}

uint64_t ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = qword_27CA681F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA681E8, "Ԙ");
  swift_allocObject();
  *(v1 + v3) = sub_215656CAC();
  v4 = qword_27CA68200;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA681F8, &qword_21565DA48);
  swift_allocObject();
  *(v1 + v4) = sub_215656CAC();
  v5 = sub_215656B2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = sub_215656B8C();
  (*(v6 + 8))(a1, v5);
  return v8;
}

uint64_t sub_215644B0C()
{
}

uint64_t ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation.deinit()
{
  v0 = sub_215656B7C();

  return v0;
}

uint64_t ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation.__deallocating_deinit()
{
  v0 = sub_215656B7C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation.description.getter()
{
  v1 = (*(*v0 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 16))(v9);
  if (LOBYTE(v9[0]) == 4)
  {
    v2 = 0xEC00000029656369;
    v3 = 0x76726573206F6E28;
  }

  else
  {
    v1 = ComposeRecipientHandleServiceAppEnumRepresentation.description.getter();
    v3 = v1;
    v2 = v4;
  }

  (*(*v0 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 48))(v9, v1);
  if (LOBYTE(v9[0]) == 3)
  {
    v5 = 0x8000000215665340;
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = ComposeRecipientHandleAvailabilityAppEnumRepresentation.description.getter();
    v5 = v7;
  }

  v9[0] = v3;
  v9[1] = v2;
  MEMORY[0x21606D140](2112032, 0xE300000000000000);
  MEMORY[0x21606D140](v6, v5);

  return v9[0];
}

uint64_t type metadata accessor for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation(uint64_t a1)
{
  result = qword_27CA6B4A0;
  if (!qword_27CA6B4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2156450B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*sub_2156453A4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA68270);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t (*sub_215645454(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA68278);

  *(v4 + 40) = sub_215656CBC();
  return sub_21563FDD0;
}

uint64_t sub_2156454EC(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = qword_27CA68270;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67FB0, &unk_21565CCF0);
  swift_allocObject();
  *(v2 + v3) = sub_215656CAC();
  v4 = qword_27CA68278;
  swift_allocObject();
  *(v2 + v4) = sub_215656CAC();
  v5 = sub_215656B2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = sub_215656B8C();
  (*(v6 + 8))(a1, v5);
  return v8;
}

uint64_t sub_215645664()
{
}

uint64_t sub_2156456A4()
{
  v0 = sub_215656B7C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t type metadata accessor for ComposeRecipientContactIdentifierAppEntityRepresentation(uint64_t a1)
{
  result = qword_27CA6B9B0;
  if (!qword_27CA6B9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2156459F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComposeRecipientContactIdentifierAppEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_215645AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA682E8, &qword_21565DF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215645B60()
{

  sub_215656CCC();
}

uint64_t sub_215645BB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA682E8, &qword_21565DF30);
  MEMORY[0x28223BE20](v2 - 8);
  sub_215645AF0(a1, &v5 - v3);

  sub_215656CDC();

  return sub_215635240(a1, &qword_27CA682E8, &qword_21565DF30);
}

uint64_t (*sub_215645C78(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA682F8);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t (*sub_215645D28(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA68308);

  *(v4 + 40) = sub_215656CBC();
  return sub_21563FDD0;
}

uint64_t sub_215645DC0()
{

  sub_215656CCC();

  return v1;
}

uint64_t sub_215645E10(uint64_t a1, char a2)
{

  sub_215656CDC();
}

uint64_t (*sub_215645E64(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA68318);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_215645EFC()
{

  sub_215656CCC();

  return v1;
}

uint64_t sub_215645F48(char a1)
{

  sub_215656CDC();
}

uint64_t (*sub_215645F94(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA68328);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_215646044(uint64_t a1, void *a2)
{

  sub_215656CDC();
}

uint64_t (*sub_21564609C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA68338);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_215646140(void *a1)
{

  sub_215656CCC();

  return v2;
}

uint64_t sub_215646188(uint64_t a1)
{

  sub_215656CDC();
}

uint64_t (*sub_2156461D4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA68348);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_2156462A8(uint64_t a1)
{
  v3 = qword_27CA682F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA682F0, &qword_21565DF38);
  swift_allocObject();
  *(v1 + v3) = sub_215656CAC();
  v4 = qword_27CA68308;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68300, &qword_21565DF40);
  swift_allocObject();
  *(v1 + v4) = sub_215656CAC();
  v5 = qword_27CA68318;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68310, &qword_21565DF48);
  swift_allocObject();
  *(v1 + v5) = sub_215656CAC();
  v6 = qword_27CA68328;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68320, &qword_21565DF50);
  swift_allocObject();
  *(v1 + v6) = sub_215656CAC();
  v7 = qword_27CA68338;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68330, &qword_21565DF58);
  swift_allocObject();
  *(v1 + v7) = sub_215656CAC();
  v8 = qword_27CA68348;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68340, &unk_21565DF60);
  swift_allocObject();
  *(v1 + v8) = sub_215656CAC();
  v9 = sub_215656B2C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  (*(v10 + 16))(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = sub_215656B8C();
  (*(v10 + 8))(a1, v9);
  return v12;
}

uint64_t sub_21564650C()
{
}

uint64_t sub_21564658C()
{
  v0 = sub_215656B7C();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_215646758@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = sub_215656A9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v94 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_215656D6C();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v107 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68350, &qword_21565DF70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v93 - v8;
  v98 = type metadata accessor for ComposeRecipient.Identifier(0);
  v10 = MEMORY[0x28223BE20](v98);
  v101 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v106 = (&v93 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA682E8, &qword_21565DF30);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v93 - v15;
  v17 = qword_27CA6E000;
  (*(*a1 + qword_27CA6E048 + 48))(v14);
  v18 = sub_215647174(v16);
  v99 = v19;
  v100 = v18;
  v20 = a1;
  v21 = sub_215635240(v16, &qword_27CA682E8, &qword_21565DF30);
  v22 = (*(*a1 + qword_27CA6E048 + 176))(v21);
  v104 = v3;
  v105 = a1;
  v102 = v9;
  v103 = v4;
  if (v22)
  {

    sub_21564899C(v23, &v111);
    v24 = v111;
    v25 = v112;
    v26 = v113;
    v27 = v114;
    v28 = v115;
    v29 = v116;
    v30 = sub_215631EFC(0, 1, 1, MEMORY[0x277D84F90]);
    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    v33 = v30;
    if (v32 >= v31 >> 1)
    {
      v33 = sub_215631EFC((v31 > 1), v32 + 1, 1, v30);
    }

    *(v33 + 2) = v32 + 1;
    v34 = &v33[48 * v32];
    v35 = v33;
    *(v34 + 4) = v24;
    *(v34 + 5) = v25;
    v34[48] = v26;
    *(v34 + 7) = v27;
    *(v34 + 8) = v28;
    *(v34 + 9) = v29;
    v3 = v104;
    v20 = v105;
    v9 = v102;
    v4 = v103;
    v17 = qword_27CA6E000;
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  result = (*(*v20 + v17[9] + 208))(v22);
  if (result)
  {
    if (result >> 62)
    {
      v62 = result;
      v37 = sub_2156570CC();
      result = v62;
      v108 = v62;
      if (v37)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v37 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      v108 = result;
      if (v37)
      {
LABEL_9:
        if (v37 < 1)
        {
          __break(1u);
          goto LABEL_42;
        }

        if ((result & 0xC000000000000001) != 0)
        {
          v38 = 0;
          v110 = v37;
          do
          {
            MEMORY[0x21606D2E0](v38, v108);

            sub_21564899C(v39, &v111);
            v40 = v111;
            v41 = v112;
            LODWORD(v109) = v113;
            v43 = v114;
            v42 = v115;
            v44 = v116;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_215631EFC(0, *(v35 + 2) + 1, 1, v35);
            }

            v45 = v35;
            v46 = *(v35 + 2);
            v47 = v45;
            v48 = *(v45 + 3);
            if (v46 >= v48 >> 1)
            {
              v47 = sub_215631EFC((v48 > 1), v46 + 1, 1, v47);
            }

            ++v38;
            swift_unknownObjectRelease();
            *(v47 + 2) = v46 + 1;
            v49 = &v47[48 * v46];
            v35 = v47;
            *(v49 + 4) = v40;
            *(v49 + 5) = v41;
            v49[48] = v109;
            *(v49 + 7) = v43;
            *(v49 + 8) = v42;
            *(v49 + 9) = v44;
          }

          while (v110 != v38);
        }

        else
        {
          v50 = result + 32;
          do
          {
            v110 = v37;
            v51 = swift_retain_n();
            sub_21564899C(v51, &v111);
            v52 = v112;
            v109 = v111;
            v53 = v113;
            v54 = v114;
            v55 = v115;
            v56 = v116;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_215631EFC(0, *(v35 + 2) + 1, 1, v35);
            }

            v57 = v35;
            v58 = *(v35 + 2);
            v59 = v57;
            v60 = *(v57 + 3);
            if (v58 >= v60 >> 1)
            {
              v59 = sub_215631EFC((v60 > 1), v58 + 1, 1, v59);
            }

            *(v59 + 2) = v58 + 1;
            v61 = &v59[48 * v58];
            v35 = v59;
            *(v61 + 4) = v109;
            *(v61 + 5) = v52;
            v61[48] = v53;
            *(v61 + 7) = v54;
            *(v61 + 8) = v55;
            *(v61 + 9) = v56;
            v50 += 8;
            v37 = v110 - 1;
          }

          while (v110 != 1);
        }
      }
    }

    v3 = v104;
    v20 = v105;
    v9 = v102;
    v4 = v103;
    v17 = qword_27CA6E000;
  }

  v63 = (*(*v20 + v17[9] + 80))();
  if (v63)
  {
    v64 = v63;
    v65 = (*(*v63 + qword_27CA6E038 + 16))();
    if (v66)
    {
      v67 = v106;
      *v106 = v65;
      v67[1] = v66;
LABEL_35:
      swift_storeEnumTagMultiPayload();

      goto LABEL_36;
    }

    (*(*v64 + qword_27CA6E038 + 48))(v65);
    if (!v69)
    {
      sub_215656A8C();
      goto LABEL_35;
    }

    sub_215656A6C();
    result = (*(v4 + 48))(v9, 1, v3);
    if (result != 1)
    {

      (*(v4 + 32))(v106, v9, v3);
      goto LABEL_35;
    }

LABEL_42:
    __break(1u);
    return result;
  }

  sub_215656A8C();
  v68 = swift_storeEnumTagMultiPayload();
LABEL_36:
  v70 = *(*v20 + v17[9] + 112);
  v71 = (v70)(v68);
  if (v72)
  {
    v71 = 0;
  }

  ComposeRecipient.Source.init(rawValue:)(v71, &v111);
  v73 = v111;
  sub_215656D5C();

  v74 = sub_215656D4C();
  v75 = sub_215656F9C();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = v35;
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v117[0] = v78;
    *v77 = 136315394;
    v111 = v70();
    LOBYTE(v112) = v79 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68358, qword_21565DF78);
    v80 = sub_215656E7C();
    v82 = sub_21563A06C(v80, v81, v117);

    *(v77 + 4) = v82;
    *(v77 + 12) = 2080;
    v111 = v73;
    sub_215647758();
    v83 = sub_21565711C();
    v85 = sub_21563A06C(v83, v84, v117);

    *(v77 + 14) = v85;
    _os_log_impl(&dword_2155FE000, v74, v75, "Representation (%s) --> Recipient (%s)", v77, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21606DDB0](v78, -1, -1);
    v86 = v77;
    v35 = v76;
    MEMORY[0x21606DDB0](v86, -1, -1);
  }

  v87 = v97;
  v88 = v96;
  v89 = v95;
  v90 = v94;
  v91 = v106;
  v92 = v101;
  sub_2156337F4(v106, v101);
  v111 = v73;
  sub_215635320();
  ComposeRecipient.init(id:name:handles:contactIdentifier:source:)(v90, v100, v99, v35, v92, &v111, v87);

  (*(v89 + 8))(v107, v88);
  return sub_215633B98(v91);
}

uint64_t sub_215647174(uint64_t a1)
{
  v2 = sub_215656A3C();
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_215656ABC();
  MEMORY[0x28223BE20](v5 - 8);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_215656E3C();
  MEMORY[0x28223BE20](v7 - 8);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_215656A4C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_215656A2C();
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_215656A0C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA682E8, &qword_21565DF30);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v28 - v18;
  sub_215645AF0(a1, &v28 - v18);
  if ((*(v14 + 48))(v19, 1, v13) == 1)
  {
    sub_215635240(v19, &qword_27CA682E8, &qword_21565DF30);
    return 0;
  }

  v28 = v4;
  v29 = v2;
  (*(v14 + 32))(v16, v19, v13);
  v20 = sub_2156569EC();
  v30 = &v28;
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2156569FC();
  v24 = (*(v21 + 88))(v23, v20);
  if (MEMORY[0x277CB9CF0] && v24 == *MEMORY[0x277CB9CF0])
  {
    (*(v14 + 8))(v16, v13);
    (*(v21 + 96))(v23, v20);
    return *v23;
  }

  if (MEMORY[0x277CB9D00] && v24 == *MEMORY[0x277CB9D00])
  {
    (*(v21 + 96))(v23, v20);
    v26 = v34;
    (*(v34 + 32))(v12, v23, v10);
    v27 = sub_215656A1C();
    (*(v26 + 8))(v12, v10);
  }

  else
  {
    if (!MEMORY[0x277CB9D10] || v24 != *MEMORY[0x277CB9D10])
    {
      (*(v14 + 8))(v16, v13);
      (*(v21 + 8))(v23, v20);
      return 0;
    }

    sub_215656E2C();
    sub_215656AAC();
    (*(v33 + 104))(v28, *MEMORY[0x277CC9110], v29);
    sub_215656A5C();
    v27 = sub_215656E6C();
  }

  (*(v14 + 8))(v16, v13);
  return v27;
}

unint64_t sub_215647758()
{
  result = qword_27CA68360;
  if (!qword_27CA68360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68360);
  }

  return result;
}

uint64_t type metadata accessor for ComposeRecipientAppEntityRepresentation(uint64_t a1)
{
  result = qword_27CA6BEC0;
  if (!qword_27CA6BEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2156479CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComposeRecipientAppEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_215647BA4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 24))();
  *a2 = result;
  return result;
}

uint64_t sub_215647C0C(void *a1, void **a2)
{
  v2 = *(**a2 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 32);

  return v2(v3);
}

uint64_t sub_215647C88(uint64_t a1)
{

  sub_215656CDC();
}

uint64_t (*sub_215647CE4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA683D0);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_215647D7C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 56))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_215647DE4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 64);

  return v4(v2, v3);
}

uint64_t sub_215647E6C()
{

  sub_215656CCC();

  return v1;
}

uint64_t sub_215647EB8(uint64_t a1, uint64_t a2)
{

  sub_215656CDC();
}

uint64_t (*sub_215647F04(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA683D8);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_215647F9C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_215648004(void *a1, void **a2)
{
  v2 = *(**a2 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 96);

  return v2(v3);
}

uint64_t sub_215648080(uint64_t a1)
{

  sub_215656CDC();
}

uint64_t (*sub_2156480CC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA683E8);

  *(v4 + 40) = sub_215656CBC();
  return sub_21563FDD0;
}

uint64_t ComposeRecipientHandleAppEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = qword_27CA683D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA683C8, &unk_21565E2A0);
  swift_allocObject();
  *(v2 + v3) = sub_215656CAC();
  v4 = qword_27CA683D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67FB0, &unk_21565CCF0);
  swift_allocObject();
  *(v2 + v4) = sub_215656CAC();
  v5 = qword_27CA683E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA683E0, &qword_21565E2B0);
  swift_allocObject();
  *(v2 + v5) = sub_215656CAC();
  v6 = sub_215656B2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = sub_215656B8C();
  (*(v7 + 8))(a1, v6);
  return v9;
}

uint64_t ComposeRecipientHandleAppEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = qword_27CA683D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA683C8, &unk_21565E2A0);
  swift_allocObject();
  *(v1 + v3) = sub_215656CAC();
  v4 = qword_27CA683D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67FB0, &unk_21565CCF0);
  swift_allocObject();
  *(v1 + v4) = sub_215656CAC();
  v5 = qword_27CA683E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA683E0, &qword_21565E2B0);
  swift_allocObject();
  *(v1 + v5) = sub_215656CAC();
  v6 = sub_215656B2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = sub_215656B8C();
  (*(v7 + 8))(a1, v6);
  return v9;
}

uint64_t sub_2156484D4()
{
}

uint64_t ComposeRecipientHandleAppEntityRepresentation.deinit()
{
  v0 = sub_215656B7C();

  return v0;
}

uint64_t ComposeRecipientHandleAppEntityRepresentation.__deallocating_deinit()
{
  v0 = sub_215656B7C();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t ComposeRecipientHandleAppEntityRepresentation.description.getter()
{
  v17 = sub_2156571DC();
  v1 = MEMORY[0x21606D140](40, 0xE100000000000000);
  if ((*(*v0 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 24))(v1))
  {
    v2 = ComposeRecipientHandleValueAppEntityRepresentation.description.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0x756C6176206F6E28;
    v4 = 0xEA00000000002965;
  }

  MEMORY[0x21606D140](v2, v4);

  v5 = MEMORY[0x21606D140](8236, 0xE200000000000000);
  v6 = (*(*v0 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 56))(v5);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 0x6562616C206F6E28;
    v8 = 0xEA0000000000296CLL;
  }

  MEMORY[0x21606D140](v6, v8);

  v9 = MEMORY[0x21606D140](8236, 0xE200000000000000);
  v10 = (*(*v0 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 88))(v9);
  if (v10)
  {
    v11 = v10;
    v12 = type metadata accessor for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation(0);
    v13 = MEMORY[0x21606D190](v11, v12);
    v15 = v14;
  }

  else
  {
    v15 = 0x8000000215665340;
    v13 = 0xD000000000000011;
  }

  MEMORY[0x21606D140](v13, v15);

  MEMORY[0x21606D140](41, 0xE100000000000000);
  return v17;
}

uint64_t sub_21564899C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21564E42C();
  v5 = (*(*a1 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 24))(v4);
  if (v5)
  {
    v6 = v5;
    v7 = (*(*v5 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 24))();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = 0;
LABEL_7:

      goto LABEL_8;
    }

    v12 = (*(*v6 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 56))(v7);
    if (v13)
    {
      v9 = v12;
      v10 = v13;
      v11 = 1;
      goto LABEL_7;
    }

    v9 = (*(*v6 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 88))(v12);
    v10 = v20;

    if (!v10)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    v11 = 2;
  }

  else
  {
    v9 = 0;
    v11 = 2;
    v10 = 0xE000000000000000;
  }

LABEL_8:
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  v14 = (*(*a1 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 56))(v5);
  sub_215648C20(v14, v15, &v21);

  *(a2 + 24) = v21;
  v17 = (*(*a1 + class metadata base offset for ComposeRecipientHandleAppEntityRepresentation + 88))(v16);
  v18 = sub_215649094(v17);

  *(a2 + 40) = v18;
  return result;
}

uint64_t sub_215648C20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  if (a2)
  {
    v7 = result;
    sub_215649388();

    if (!sub_215656FEC())
    {

      *a5 = 0;
      a5[1] = 0;
      return result;
    }

    if (sub_215656FEC())
    {
      if (sub_215656FEC())
      {
        if (sub_215656FEC())
        {
          if (sub_215656FEC())
          {
            if (sub_215656FEC())
            {
              if (sub_215656FEC())
              {
                if (sub_215656FEC())
                {
                  if (sub_215656FEC())
                  {
                    if (sub_215656FEC())
                    {
                      if (sub_215656FEC())
                      {
                        if (sub_215656FEC())
                        {
                          result = sub_215656FEC();
                          if (result)
                          {
                            *a5 = v7;
                            a5[1] = a2;
                            return result;
                          }

                          v8 = xmmword_21565E1D0;
                        }

                        else
                        {

                          v8 = xmmword_21565E1E0;
                        }
                      }

                      else
                      {

                        v8 = xmmword_21565E1F0;
                      }
                    }

                    else
                    {

                      v8 = xmmword_21565E200;
                    }
                  }

                  else
                  {

                    v8 = xmmword_21565E210;
                  }
                }

                else
                {

                  v8 = xmmword_21565E220;
                }
              }

              else
              {

                v8 = xmmword_21565E230;
              }
            }

            else
            {

              v8 = xmmword_21565E240;
            }
          }

          else
          {

            v8 = xmmword_21565E250;
          }
        }

        else
        {

          v8 = xmmword_21565E260;
        }
      }

      else
      {

        v8 = xmmword_21565E270;
      }
    }

    else
    {

      v8 = xmmword_21565E280;
    }
  }

  else
  {
    v8 = xmmword_21565E290;
  }

  *a5 = v8;
  return result;
}

void *sub_215649094(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = sub_21563C548(MEMORY[0x277D84F90]);
    v3 = (v1 & 0xFFFFFFFFFFFFFF8);
    if (v1 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2156570CC())
    {
      v26 = v3;
      v27 = v1;
      v5 = 0;
      v28 = v1 & 0xC000000000000001;
      while (v28)
      {
        v7 = MEMORY[0x21606D2E0](v5, v1);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_26;
        }

LABEL_13:
        v1 = i;
        (*(*v7 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 16))(&v30 + 2);
        v9 = sub_215643510(&v30 + 2, &v30 + 3);
        v10 = BYTE3(v30);
        (*(*v7 + class metadata base offset for ComposeRecipientHandleServiceAvailabilityAppEntityRepresentation + 48))(&v30, v9);
        sub_215641C20(&v30, &v30 + 1);
        v11 = BYTE1(v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v2;
        v3 = v2;
        v13 = sub_21563A720(v10);
        v15 = v2[2];
        v16 = (v14 & 1) == 0;
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          goto LABEL_27;
        }

        v19 = v14;
        if (v2[3] < v18)
        {
          sub_21563B1A4(v18, isUniquelyReferenced_nonNull_native);
          v3 = v29;
          v13 = sub_21563A720(v10);
          if ((v19 & 1) != (v20 & 1))
          {
            result = sub_21565714C();
            __break(1u);
            return result;
          }

LABEL_18:
          v2 = v29;
          if (v19)
          {
            goto LABEL_5;
          }

          goto LABEL_19;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_18;
        }

        v3 = &v29;
        v23 = v13;
        sub_21563BC74();
        v13 = v23;
        v2 = v29;
        if (v19)
        {
LABEL_5:
          *(v2[7] + v13) = v11;

          goto LABEL_6;
        }

LABEL_19:
        v2[(v13 >> 6) + 8] |= 1 << v13;
        *(v2[6] + v13) = v10;
        *(v2[7] + v13) = v11;

        v21 = v2[2];
        v17 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v17)
        {
          goto LABEL_28;
        }

        v2[2] = v22;
LABEL_6:
        ++v5;
        i = v1;
        v6 = v8 == v1;
        v1 = v27;
        if (v6)
        {
          return v2;
        }
      }

      if (v5 >= v26[2])
      {
        goto LABEL_29;
      }

      v7 = *(v1 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

    return v2;
  }

  else
  {
    v24 = MEMORY[0x277D84F90];

    return sub_21563C548(v24);
  }
}

unint64_t sub_215649388()
{
  result = qword_27CA683F0;
  if (!qword_27CA683F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA683F0);
  }

  return result;
}

uint64_t type metadata accessor for ComposeRecipientHandleAppEntityRepresentation(uint64_t a1)
{
  result = qword_27CA6C450;
  if (!qword_27CA6C450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2156495FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComposeRecipientHandleAppEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2156499B4()
{
  result = qword_27CA68440;
  if (!qword_27CA68440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68440);
  }

  return result;
}

uint64_t HandleAvailability.HandleStatus.handle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HandleAvailability.HandleStatus.handle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HandleAvailability.RemoteIntentLookup.__allocating_init(clientLabel:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_215656D5C();
  v5 = (v4 + OBJC_IVAR____TtCV20ContactsAutocomplete18HandleAvailability18RemoteIntentLookup_clientLabel);
  *v5 = a1;
  v5[1] = a2;
  return v4;
}

uint64_t HandleAvailability.RemoteIntentLookup.init(clientLabel:)(uint64_t a1, uint64_t a2)
{
  sub_215656D5C();
  v5 = (v2 + OBJC_IVAR____TtCV20ContactsAutocomplete18HandleAvailability18RemoteIntentLookup_clientLabel);
  *v5 = a1;
  v5[1] = a2;
  return v2;
}

uint64_t sub_215649C30()
{
  v1 = [objc_opt_self() defaultEnvironment];
  v2 = sub_21563F93C();
  v3 = MEMORY[0x277CEB180];
  v0[5] = v2;
  v0[6] = v3;
  v0[2] = v1;
  v4 = sub_215656C7C();
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F88, &qword_21565F030);
  swift_task_alloc();
  sub_215656C3C();
  v7 = *(sub_215656C4C() - 8);
  swift_task_alloc();
  (*(v7 + 104))();
  sub_215656C6C();

  v8 = sub_215656C5C();
  v10 = v9;
  (*(v5 + 8))(v6, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v11 = v0[1];

  return v11(v8, v10);
}

uint64_t sub_215649E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_215649FCC;

  return v10(a1, a2, a3);
}

uint64_t sub_215649FCC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_21564A108, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_21564A108()
{
  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t sub_21564A170(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 217) = a3;
  *(v4 + 64) = a1;
  return MEMORY[0x2822009F8](sub_21564A198, 0, 0);
}

uint64_t sub_21564A198()
{
  v1 = *(v0 + 217);
  v2 = *(v0 + 72);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_21564C558(0, v3, 0);
    v4 = v12;
    v5 = (v2 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_21564C558((v8 > 1), v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      *(v12 + v9 + 32) = 0x2030100u >> (8 * v6);
      --v3;
    }

    while (v3);
  }

  *(v0 + 40) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA680E8, &qword_21565D460);
  swift_allocObject();

  *(v0 + 88) = sub_215656CFC();
  *(v0 + 48) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68498, &qword_21565E548);
  swift_allocObject();
  *(v0 + 96) = sub_215656CFC();
  *(v0 + 216) = v1 ^ 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA684A0, &qword_21565E550);
  swift_allocObject();
  *(v0 + 104) = sub_215656CFC();
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = sub_21564A3A4;

  return sub_215649C10();
}

uint64_t sub_21564A3A4(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[15] = a1;
  v5[16] = v2;

  if (v2)
  {
    v6 = sub_21564AD64;
  }

  else
  {
    v5[17] = a2;
    v6 = sub_21564A4CC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21564A4CC()
{
  v1 = *(v0 + 104);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA684A8, &qword_21565E568);
  *(v0 + 144) = v2;
  *(v0 + 152) = *(v2 - 8);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  v12 = *(v0 + 88);
  ObjectType = swift_getObjectType();
  *(v0 + 16) = v12;
  *(v0 + 32) = v1;
  v5 = sub_215656C1C();
  *(v0 + 168) = v5;
  *(v0 + 176) = *(v5 - 8);
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  sub_21564C578();
  sub_21564C5CC();
  sub_21563EF68();
  sub_215656ADC();
  swift_allocObject();
  v7 = sub_215656ACC();
  *(v0 + 192) = v7;
  v8 = swift_task_alloc();
  *(v0 + 200) = v8;
  *v8 = v0;
  v8[1] = sub_21564A704;
  v9 = *(v0 + 136);
  v10 = MEMORY[0x277CEAFA8];

  return MEMORY[0x28213DA98](v3, v0 + 16, v6, v7, v10, ObjectType, &_s18RemoteIntentLookupC43FetchHandleAvailabilityIntentRepresentationVN, v9);
}

uint64_t sub_21564A704()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  (*(v2[22] + 8))(v2[23], v2[21]);

  if (v0)
  {
    v3 = sub_21564AECC;
  }

  else
  {

    v3 = sub_21564A86C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

char *sub_21564A86C()
{
  v38 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA684D0, &unk_21565E578);
  v2 = *(v1 - 8);
  v3 = swift_task_alloc();
  sub_215656BDC();
  sub_215656C9C();
  (*(v2 + 8))(v3, v1);
  v4 = v0[7];
  if (!v4)
  {

    v24 = sub_215656F6C();
    v25 = sub_215656D4C();
    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2155FE000, v25, v24, "No values were returned from the intent execution", v26, 2u);
      MEMORY[0x21606DDB0](v26, -1, -1);
    }

    v27 = v0[19];
    v28 = v0[20];
    v29 = v0[18];

    swift_unknownObjectRelease();
    (*(v27 + 8))(v28, v29);
LABEL_30:
    v23 = MEMORY[0x277D84F90];
LABEL_31:

    v33 = v0[1];

    return v33(v23);
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFF8);
  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_29:
    v31 = v0[19];
    v30 = v0[20];
    v32 = v0[18];

    swift_unknownObjectRelease();
    (*(v31 + 8))(v30, v32);
    goto LABEL_30;
  }

  while (1)
  {
    v35 = v5;
    v37 = MEMORY[0x277D84F90];
    v5 = &v37;
    result = sub_21564C538(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      break;
    }

    v34 = v0;
    v8 = 0;
    v9 = v37;
    v0 = qword_27CA6E000;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v36 = v9;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21606D2E0](v8, v4);
      }

      else
      {
        if (v8 >= v35[2])
        {
          goto LABEL_27;
        }

        v5 = *(v4 + 8 * v8 + 32);
      }

      result = (*(*v5 + v0[13] + 24))();
      if (!v11)
      {
        goto LABEL_35;
      }

      v12 = result;
      v13 = v11;
      result = (*(*v5 + v0[13] + 56))();
      if (result > 1u)
      {
        if (result == 2)
        {
          LOBYTE(result) = 3;
        }

        else
        {
          if (result != 3)
          {
            goto LABEL_37;
          }

          LOBYTE(result) = 2;
        }
      }

      v14 = result;
      v15 = v6;
      result = (*(*v5 + qword_27CA6E068 + 88))();
      if (result == 3)
      {
        goto LABEL_36;
      }

      v16 = result;

      v9 = v36;
      v37 = v36;
      v18 = *(v36 + 16);
      v17 = *(v36 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v5 = &v37;
        sub_21564C538((v17 > 1), v18 + 1, 1);
        v19 = v18 + 1;
        v9 = v37;
      }

      *(v9 + 16) = v19;
      v20 = v9 + 24 * v18;
      *(v20 + 32) = v12;
      *(v20 + 40) = v13;
      *(v20 + 48) = v14;
      *(v20 + 49) = v16;
      ++v8;
      v6 = v15;
      v21 = v10 == v15;
      v0 = qword_27CA6E000;
      if (v21)
      {
        v0 = v34;
        v22 = v9;
        (*(v34[19] + 8))(v34[20], v34[18]);

        v23 = v22;
        swift_unknownObjectRelease();
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v6 = sub_2156570CC();
    if (!v6)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_21564AD64()
{

  v1 = *(v0 + 128);
  v2 = v1;
  v3 = sub_215656D4C();
  v4 = sub_215656F8C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2155FE000, v3, v4, "Error executing intent: %@", v5, 0xCu);
    sub_21563F418(v6);
    MEMORY[0x21606DDB0](v6, -1, -1);
    MEMORY[0x21606DDB0](v5, -1, -1);
  }

  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21564AECC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 208);
  v2 = v1;
  v3 = sub_215656D4C();
  v4 = sub_215656F8C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2155FE000, v3, v4, "Error executing intent: %@", v5, 0xCu);
    sub_21563F418(v6);
    MEMORY[0x21606DDB0](v6, -1, -1);
    MEMORY[0x21606DDB0](v5, -1, -1);
  }

  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21564B080(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6567617373654D69;
  v3 = a1;
  if (a1 > 1u)
  {
    v4 = 0x656D695465636166;
    if (v3 == 2)
    {
      v5 = 0xED00006F69647541;
    }

    else
    {
      v5 = 0xED00006F65646956;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 5456722;
    }

    else
    {
      v4 = 0x6567617373654D69;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xED00006F69647541;
  if (a2 != 2)
  {
    v7 = 0xED00006F65646956;
  }

  if (a2)
  {
    v2 = 5456722;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x656D695465636166;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21565713C();
  }

  return v10 & 1;
}

uint64_t sub_21564B1E4()
{
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_21564B2B8(uint64_t a1)
{
  sub_215656E8C();
}

uint64_t sub_21564B378(uint64_t a1)
{
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

unint64_t sub_21564B448@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21564C890(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21564B478(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6567617373654D69;
  v4 = 0xED00006F69647541;
  if (*v1 != 2)
  {
    v4 = 0xED00006F65646956;
  }

  if (*v1)
  {
    v3 = 5456722;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656D695465636166;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_21564B668(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "ityAppEnum";
  }

  else
  {
    v4 = "useCachedAvailabilityOnly";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001BLL;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (*a2)
  {
    v7 = "useCachedAvailabilityOnly";
  }

  else
  {
    v7 = "ityAppEnum";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21565713C();
  }

  return v9 & 1;
}

uint64_t sub_21564B714()
{
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_21564B794(uint64_t a1)
{
  sub_215656E8C();
}

uint64_t sub_21564B800(uint64_t a1)
{
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_21564B87C@<X0>(char *a2@<X8>)
{
  v3 = sub_21565710C();

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

void sub_21564B8DC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001BLL;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1)
  {
    v3 = "useCachedAvailabilityOnly";
  }

  else
  {
    v3 = "ityAppEnum";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_21564BA7C()
{

  sub_215656CCC();

  return v1;
}

uint64_t sub_21564BAC8(uint64_t a1, uint64_t a2)
{

  sub_215656CDC();
}

uint64_t (*sub_21564BB14(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA684D8);

  *(v4 + 40) = sub_215656CBC();
  return sub_21563FDD0;
}

uint64_t (*sub_21564BBC4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA684E8);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_21564BC68(void *a1)
{

  sub_215656CCC();

  return v2;
}

uint64_t sub_21564BCBC(char a1, void *a2)
{

  sub_215656CDC();
}

uint64_t (*sub_21564BD04(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA684F8);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_21564BD9C(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = qword_27CA684D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67FB0, &unk_21565CCF0);
  swift_allocObject();
  *(v2 + v3) = sub_215656CAC();
  v4 = qword_27CA684E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA684E0, &qword_21565E588);
  swift_allocObject();
  *(v2 + v4) = sub_215656CAC();
  v5 = qword_27CA684F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA684F0, &qword_21565E590);
  swift_allocObject();
  *(v2 + v5) = sub_215656CAC();
  v6 = sub_215656B2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = sub_215656B8C();
  (*(v7 + 8))(a1, v6);
  return v9;
}

uint64_t sub_21564BF5C()
{
}

uint64_t sub_21564BFAC()
{
  v0 = sub_215656B7C();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_21564C148@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21564C8DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t HandleAvailability.RemoteIntentLookup.deinit()
{
  v1 = OBJC_IVAR____TtCV20ContactsAutocomplete18HandleAvailability18RemoteIntentLookup_logger;
  v2 = sub_215656D6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t HandleAvailability.RemoteIntentLookup.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV20ContactsAutocomplete18HandleAvailability18RemoteIntentLookup_logger;
  v2 = sub_215656D6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21564C3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 112) + **(**v3 + 112));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_215638294;

  return v10(a1, a2, a3);
}

char *sub_21564C538(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21564C680(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21564C558(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21564C79C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_21564C578()
{
  result = qword_27CA684B0;
  if (!qword_27CA684B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA684B0);
  }

  return result;
}

unint64_t sub_21564C5CC()
{
  result = qword_27CA684B8;
  if (!qword_27CA684B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA684C0, &qword_21565E570);
    sub_21564CF3C(&qword_27CA684C8, &unk_21565EB04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA684B8);
  }

  return result;
}

char *sub_21564C680(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68648, &qword_21565F018);
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

char *sub_21564C79C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68650, &qword_21565F038);
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

unint64_t sub_21564C890(uint64_t a1, uint64_t a2)
{
  v2 = sub_21565710C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21564C8DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_21565710C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21564C92C()
{
  result = qword_27CA68500;
  if (!qword_27CA68500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68500);
  }

  return result;
}

unint64_t sub_21564C984()
{
  result = qword_27CA68508;
  if (!qword_27CA68508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68508);
  }

  return result;
}

unint64_t sub_21564C9DC()
{
  result = qword_27CA68510;
  if (!qword_27CA68510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68510);
  }

  return result;
}

unint64_t sub_21564CA34()
{
  result = qword_27CA68518;
  if (!qword_27CA68518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68518);
  }

  return result;
}

unint64_t sub_21564CA8C()
{
  result = qword_27CA68520;
  if (!qword_27CA68520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68520);
  }

  return result;
}

unint64_t sub_21564CB10()
{
  result = qword_27CA68538;
  if (!qword_27CA68538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68538);
  }

  return result;
}

unint64_t sub_21564CB68()
{
  result = qword_27CA68540;
  if (!qword_27CA68540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68540);
  }

  return result;
}

unint64_t sub_21564CBC0()
{
  result = qword_27CA68548;
  if (!qword_27CA68548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68548);
  }

  return result;
}

unint64_t sub_21564CC1C()
{
  result = qword_27CA68550;
  if (!qword_27CA68550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68550);
  }

  return result;
}

unint64_t sub_21564CC74()
{
  result = qword_27CA68558;
  if (!qword_27CA68558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68558);
  }

  return result;
}

unint64_t sub_21564CCCC()
{
  result = qword_27CA68560;
  if (!qword_27CA68560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68560);
  }

  return result;
}

unint64_t sub_21564CD24()
{
  result = qword_27CA68568;
  if (!qword_27CA68568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68568);
  }

  return result;
}

unint64_t sub_21564CD7C()
{
  result = qword_27CA68570;
  if (!qword_27CA68570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68570);
  }

  return result;
}

unint64_t sub_21564CE00()
{
  result = qword_27CA68588;
  if (!qword_27CA68588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68588);
  }

  return result;
}

unint64_t sub_21564CE58()
{
  result = qword_27CA68590;
  if (!qword_27CA68590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68590);
  }

  return result;
}

unint64_t sub_21564CEB0()
{
  result = qword_27CA68598;
  if (!qword_27CA68598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68598);
  }

  return result;
}

uint64_t sub_21564CF3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s18RemoteIntentLookupC32HandleAvailabilityRepresentationCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21564D124()
{
  result = qword_27CA685E0;
  if (!qword_27CA685E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA685E0);
  }

  return result;
}

unint64_t sub_21564D17C()
{
  result = qword_27CA685E8;
  if (!qword_27CA685E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA685E8);
  }

  return result;
}

unint64_t sub_21564D1D4()
{
  result = qword_27CA685F0;
  if (!qword_27CA685F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA685F0);
  }

  return result;
}

unint64_t sub_21564D22C()
{
  result = qword_27CA685F8;
  if (!qword_27CA685F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA685F8);
  }

  return result;
}

unint64_t sub_21564D284()
{
  result = qword_27CA68600;
  if (!qword_27CA68600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68600);
  }

  return result;
}

uint64_t sub_21564D308(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21564D35C()
{
  result = qword_27CA68618;
  if (!qword_27CA68618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68618);
  }

  return result;
}

unint64_t sub_21564D3B4()
{
  result = qword_27CA68620;
  if (!qword_27CA68620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68620);
  }

  return result;
}

unint64_t sub_21564D40C()
{
  result = qword_27CA68628;
  if (!qword_27CA68628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68628);
  }

  return result;
}

uint64_t dispatch thunk of HandleAvailability.IntentLookup.status(for:on:useCachedAvailabilityOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_215638294;

  return v13(a1, a2, a3, a4, a5);
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_21564D5B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_21564D600(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21564D678(uint64_t a1)
{
  result = sub_215656D6C();
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

uint64_t dispatch thunk of HandleAvailability.RemoteIntentLookup.status(for:on:useCachedAvailabilityOnly:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 112) + **(*v3 + 112));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21563DA58;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of HandleAvailability.RemoteIntentLookup.fetchStatus(for:on:useCachedAvailabilityOnly:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21564D9AC;

  return v10(a1, a2, a3);
}

uint64_t sub_21564D9AC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t _s18RemoteIntentLookupC44AvailabilityCachePolicyAppEnumRepresentationOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s18RemoteIntentLookupC44AvailabilityCachePolicyAppEnumRepresentationOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21564DC90()
{
  result = qword_27CA68630;
  if (!qword_27CA68630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68630);
  }

  return result;
}

unint64_t sub_21564DCE4()
{
  result = qword_27CA68638;
  if (!qword_27CA68638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68638);
  }

  return result;
}

unint64_t sub_21564DD38()
{
  result = qword_27CA68640;
  if (!qword_27CA68640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68640);
  }

  return result;
}

void __swiftcall ComposeRecipientFetchRequest.init(names:client:)(ContactsAutocomplete::ComposeRecipientFetchRequest *__return_ptr retstr, Swift::OpaquePointer names, ContactsAutocomplete::ComposeRecipientFetchRequest::Client client)
{
  v3 = *client;
  retstr->shouldUnifyResults = 1;
  *(&retstr->maximumResultsCount.value + 6) = 20;
  LOBYTE(retstr[1].names._rawValue) = 0;
  retstr->names = names;
  retstr->client = v3;
}

void *ComposeRecipientFetchRequest.Client.services.getter()
{
  v1 = MEMORY[0x277D84F90];
  if (*v0 == 1)
  {
    v1 = &unk_2827872D0;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return &unk_2827872A8;
  }
}

uint64_t ComposeRecipientFetchRequest.Client.hashValue.getter()
{
  v1 = *v0;
  sub_21565719C();
  MEMORY[0x21606D450](v1);
  return sub_2156571BC();
}

unint64_t sub_21564DE80()
{
  result = qword_27CA68658;
  if (!qword_27CA68658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68658);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21564DEE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21564DF30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ComposeRecipient.Handle.Value.hash(into:)(uint64_t a1)
{
  MEMORY[0x21606D450](*(v1 + 16));

  return sub_215656E8C();
}

uint64_t ComposeRecipient.Handle.Value.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_21565719C();
  MEMORY[0x21606D450](v1);
  sub_215656E8C();
  return sub_2156571BC();
}

uint64_t sub_21564E054()
{
  v1 = *(v0 + 16);
  sub_21565719C();
  MEMORY[0x21606D450](v1);
  sub_215656E8C();
  return sub_2156571BC();
}

uint64_t sub_21564E0B8(uint64_t a1)
{
  MEMORY[0x21606D450](*(v1 + 16));

  return sub_215656E8C();
}

uint64_t sub_21564E10C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_21565719C();
  MEMORY[0x21606D450](v2);
  sub_215656E8C();
  return sub_2156571BC();
}

uint64_t ComposeRecipient.Handle.Label.hash(into:)(uint64_t a1)
{
  switch(*(v1 + 8))
  {
    case 0:
      v2 = 0;
      goto LABEL_18;
    case 1:
      v2 = 1;
      goto LABEL_18;
    case 2:
      v2 = 2;
      goto LABEL_18;
    case 3:
      v2 = 3;
      goto LABEL_18;
    case 4:
      v2 = 4;
      goto LABEL_18;
    case 5:
      v2 = 5;
      goto LABEL_18;
    case 6:
      v2 = 6;
      goto LABEL_18;
    case 7:
      v2 = 7;
      goto LABEL_18;
    case 8:
      v2 = 8;
      goto LABEL_18;
    case 9:
      v2 = 9;
      goto LABEL_18;
    case 0xALL:
      v2 = 10;
      goto LABEL_18;
    case 0xBLL:
      v2 = 11;
      goto LABEL_18;
    case 0xCLL:
      v2 = 12;
LABEL_18:
      result = MEMORY[0x21606D450](v2);
      break;
    default:
      MEMORY[0x21606D450](13);

      result = sub_215656E8C();
      break;
  }

  return result;
}

uint64_t ComposeRecipient.Handle.Label.hashValue.getter()
{
  v3 = *v0;
  sub_21565719C();
  ComposeRecipient.Handle.Label.hash(into:)(v2);
  return sub_2156571BC();
}

uint64_t sub_21564E2C0()
{
  v3 = *v0;
  sub_21565719C();
  ComposeRecipient.Handle.Label.hash(into:)(v2);
  return sub_2156571BC();
}

uint64_t sub_21564E310(uint64_t a1)
{
  v4 = *v1;
  sub_21565719C();
  ComposeRecipient.Handle.Label.hash(into:)(v3);
  return sub_2156571BC();
}

uint64_t ComposeRecipient.Handle.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_215633DC0(v2, v3, v4);
}

uint64_t ComposeRecipient.Handle.value.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_2156352F4(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ComposeRecipient.Handle.label.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_215633DD8(v2, v3);
}

uint64_t ComposeRecipient.Handle.label.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_21563530C(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t ComposeRecipient.Handle.availability.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t ComposeRecipient.Handle.init(_:label:availability:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = a2[1];
  sub_21563C548(MEMORY[0x277D84F90]);

  *a4 = v6;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 40) = a3;
  return result;
}

uint64_t sub_21564E504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = a3[1];
  sub_21563C548(MEMORY[0x277D84F90]);

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a5;
  *(a6 + 24) = v11;
  *(a6 + 32) = v12;
  *(a6 + 40) = a4;
  return result;
}

uint64_t ComposeRecipient.Handle.init(applicationDefined:label:availability:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_21563C548(MEMORY[0x277D84F90]);

  if (a4)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = 11;
  *a6 = a1;
  *(a6 + 8) = a2;
  if (a4)
  {
    v14 = a4;
  }

  *(a6 + 16) = 2;
  *(a6 + 24) = v13;
  *(a6 + 32) = v14;
  *(a6 + 40) = a5;
  return result;
}

double ComposeRecipient.Handle.init(autocompleteValue:availability:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21563C548(MEMORY[0x277D84F90]);
  v6 = a1;
  sub_21564E670(v6, &v9);
  v7 = v10;
  *a3 = v9;
  *(a3 + 16) = v7;
  sub_21564E828(v6, &v9);

  result = *&v9;
  *(a3 + 24) = v9;
  *(a3 + 40) = a2;
  return result;
}

void sub_21564E670(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 addressType];
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        goto LABEL_12;
      case 4:
        v4 = [a1 address];
        if (!v4)
        {
          __break(1u);
          goto LABEL_10;
        }

        break;
      case 5:
        v4 = [a1 address];
        if (!v4)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        break;
      default:
        goto LABEL_24;
    }

LABEL_19:
    v6 = v4;
    v7 = 2;
    goto LABEL_20;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [a1 address];
      if (v5)
      {
        v6 = v5;
        v7 = 1;
LABEL_20:
        v9 = sub_215656E5C();
        v11 = v10;

        *a2 = v9;
        *(a2 + 8) = v11;
        *(a2 + 16) = v7;
        return;
      }

      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_14;
  }

LABEL_10:
  v4 = [a1 address];
  if (v4)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_12:
  v4 = [a1 address];
  if (v4)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_14:
  if (v4 == 2)
  {
    v8 = [a1 address];
    if (v8)
    {
      v6 = v8;
      v7 = 0;
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_24:
  sub_2156570BC();
  __break(1u);
}

void sub_21564E828(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 label];
  if (!v4)
  {

LABEL_9:
    v6 = 0;
    v8 = 11;
    goto LABEL_12;
  }

  v5 = v4;
  v6 = sub_215656E5C();
  v8 = v7;

  if (v6 == sub_215656E5C() && v8 == v9)
  {

    goto LABEL_11;
  }

  v11 = sub_21565713C();

  if (v11)
  {

LABEL_11:

    v6 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  if (v6 == sub_215656E5C() && v8 == v12)
  {

    goto LABEL_20;
  }

  v14 = sub_21565713C();

  if (v14)
  {

LABEL_20:

    v6 = 0;
    v8 = 1;
    goto LABEL_12;
  }

  if (v6 == sub_215656E5C() && v8 == v15)
  {

LABEL_26:

    v6 = 0;
    v8 = 12;
    goto LABEL_12;
  }

  v16 = sub_21565713C();

  if (v16)
  {

    goto LABEL_26;
  }

  if (v6 == sub_215656E5C() && v8 == v17)
  {

    goto LABEL_9;
  }

  v18 = sub_21565713C();

  if (v18)
  {

    goto LABEL_9;
  }

  if (v6 == sub_215656E5C() && v8 == v19)
  {

LABEL_37:

    v6 = 0;
    v8 = 4;
    goto LABEL_12;
  }

  v20 = sub_21565713C();

  if (v20)
  {

    goto LABEL_37;
  }

  if (v6 == sub_215656E5C() && v8 == v21)
  {

LABEL_43:

    v6 = 0;
    v8 = 6;
    goto LABEL_12;
  }

  v22 = sub_21565713C();

  if (v22)
  {

    goto LABEL_43;
  }

  if (v6 == sub_215656E5C() && v8 == v23)
  {

LABEL_49:

    v6 = 0;
    v8 = 3;
    goto LABEL_12;
  }

  v24 = sub_21565713C();

  if (v24)
  {

    goto LABEL_49;
  }

  if (v6 == sub_215656E5C() && v8 == v25)
  {

LABEL_55:

    v6 = 0;
    v8 = 5;
    goto LABEL_12;
  }

  v26 = sub_21565713C();

  if (v26)
  {

    goto LABEL_55;
  }

  if (v6 == sub_215656E5C() && v8 == v27)
  {

LABEL_61:

    v6 = 0;
    v8 = 2;
    goto LABEL_12;
  }

  v28 = sub_21565713C();

  if (v28)
  {

    goto LABEL_61;
  }

  if (v6 == sub_215656E5C() && v8 == v29)
  {

LABEL_67:

    v6 = 0;
    v8 = 7;
    goto LABEL_12;
  }

  v30 = sub_21565713C();

  if (v30)
  {

    goto LABEL_67;
  }

  if (v6 == sub_215656E5C() && v8 == v31)
  {

LABEL_73:

    v6 = 0;
    v8 = 8;
    goto LABEL_12;
  }

  v32 = sub_21565713C();

  if (v32)
  {

    goto LABEL_73;
  }

  if (v6 == sub_215656E5C() && v8 == v33)
  {
  }

  else
  {
    v34 = sub_21565713C();

    if ((v34 & 1) == 0)
    {
      if (v6 == sub_215656E5C() && v8 == v35)
      {
      }

      else
      {
        v36 = sub_21565713C();

        if ((v36 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v6 = 0;
      v8 = 10;
      goto LABEL_12;
    }
  }

  v6 = 0;
  v8 = 9;
LABEL_12:
  *a2 = v6;
  a2[1] = v8;
}

ContactsAutocomplete::HandleAvailability::Status __swiftcall ComposeRecipient.Handle.availability(for:)(ContactsAutocomplete::HandleAvailability::Status result)
{
  v3 = v1;
  v4 = *(v2 + 40);
  if (*(v4 + 16) && (*&result = sub_21563A720(*result), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + result);
  }

  else
  {
    v6 = 2;
  }

  *v3 = v6;
  return result;
}

uint64_t ComposeRecipient.Handle.Value.stringValue.getter()
{
  v1 = *v0;
  sub_215633DC0(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t ComposeRecipient.Handle.Label.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 1701670760;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v3 = 1802661751;
      break;
    case 2uLL:
      v3 = 0x656E6F685069;
      break;
    case 3uLL:
      v3 = 0x615720656C707041;
      break;
    case 4uLL:
      v3 = 0x64756F6C4369;
      break;
    case 5uLL:
      v3 = 0x656C69626F6DLL;
      break;
    case 6uLL:
      v3 = 1852399981;
      break;
    case 7uLL:
      v4 = 1701670760;
      goto LABEL_15;
    case 8uLL:
      v4 = 1802661751;
LABEL_15:
      v3 = v4 | 0x7861662000000000;
      break;
    case 9uLL:
      v3 = 0x616620726568746FLL;
      break;
    case 0xAuLL:
      v3 = 0x7265676170;
      break;
    case 0xBuLL:
      v3 = 0x726568746FLL;
      break;
    case 0xCuLL:
      v3 = 0x6C6F6F686373;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_215633DD8(v1, v2);
  return v3;
}

uint64_t sub_21564F098(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    if (*(*(v2 + 56) + v11) == 3)
    {
      return 1;
    }

    sub_21563A720(*(*(v2 + 48) + v11));
    if (v12)
    {
      sub_21563C768();
      result = sub_215656E1C();
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ComposeRecipient.Handle.description.getter()
{
  sub_2156570AC();
  MEMORY[0x21606D140](10272, 0xE200000000000000);
  sub_2156570AC();
  MEMORY[0x21606D140](2629673, 0xE300000000000000);
  sub_2156499B4();
  v0 = sub_215656DDC();
  MEMORY[0x21606D140](v0);

  MEMORY[0x21606D140](41, 0xE100000000000000);
  return 0;
}

uint64_t ComposeRecipient.Handle.debugDescription.getter()
{
  v1 = 0xED00007373657264;
  v2 = 0x6461206C69616D65;
  if (*(v0 + 16) != 1)
  {
    v2 = 0xD000000000000013;
    v1 = 0x8000000215665810;
  }

  if (*(v0 + 16))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x756E20656E6F6870;
  }

  if (*(v0 + 16))
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xEC0000007265626DLL;
  }

  MEMORY[0x21606D140](v3, v4);

  MEMORY[0x21606D140](10272, 0xE200000000000000);
  sub_2156570AC();
  MEMORY[0x21606D140](2629673, 0xE300000000000000);
  sub_2156499B4();
  v5 = sub_215656DDC();
  MEMORY[0x21606D140](v5);

  MEMORY[0x21606D140](41, 0xE100000000000000);
  return 0;
}

uint64_t _s20ContactsAutocomplete16ComposeRecipientV6HandleV5ValueO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_21565713C();
        sub_215633DC0(v6, v5, 0);
        sub_215633DC0(v3, v2, 0);
        sub_2156352F4(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_21;
      }

      sub_215633DC0(v14, v2, 0);
      sub_215633DC0(v3, v2, 0);
      sub_2156352F4(v3, v2, 0);
      v19 = v3;
      v20 = v2;
      v21 = 0;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_21565713C();
        sub_215633DC0(v6, v5, 1u);
        sub_215633DC0(v3, v2, 1u);
        sub_2156352F4(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_21:
        sub_2156352F4(v11, v12, v13);
        return v10 & 1;
      }

      sub_215633DC0(v8, v2, 1u);
      sub_215633DC0(v3, v2, 1u);
      sub_2156352F4(v3, v2, 1u);
      v19 = v3;
      v20 = v2;
      v21 = 1;
      goto LABEL_26;
    }

LABEL_22:
    sub_215633DC0(*a2, *(a2 + 8), v7);
    sub_215633DC0(v3, v2, v4);
    sub_2156352F4(v3, v2, v4);
    sub_2156352F4(v6, v5, v7);
    return 0;
  }

  if (v7 != 2)
  {
    goto LABEL_22;
  }

  v16 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v10 = sub_21565713C();
    sub_215633DC0(v6, v5, 2u);
    sub_215633DC0(v3, v2, 2u);
    sub_2156352F4(v3, v2, 2u);
    v11 = v6;
    v12 = v5;
    v13 = 2;
    goto LABEL_21;
  }

  sub_215633DC0(v16, v2, 2u);
  sub_215633DC0(v3, v2, 2u);
  sub_2156352F4(v3, v2, 2u);
  v19 = v3;
  v20 = v2;
  v21 = 2;
LABEL_26:
  sub_2156352F4(v19, v20, v21);
  return 1;
}

uint64_t _s20ContactsAutocomplete16ComposeRecipientV6HandleV5LabelO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_36;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_34;
      }

      v8 = 1;
      sub_21563530C(*a1, 1uLL);
      sub_21563530C(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_36;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_36;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_36;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 5uLL);
      v6 = v4;
      v7 = 5;
      goto LABEL_36;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 6uLL);
      v6 = v4;
      v7 = 6;
      goto LABEL_36;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 7uLL);
      v6 = v4;
      v7 = 7;
      goto LABEL_36;
    case 8uLL:
      if (v5 != 8)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 8uLL);
      v6 = v4;
      v7 = 8;
      goto LABEL_36;
    case 9uLL:
      if (v5 != 9)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 9uLL);
      v6 = v4;
      v7 = 9;
      goto LABEL_36;
    case 0xAuLL:
      if (v5 != 10)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 0xAuLL);
      v6 = v4;
      v7 = 10;
      goto LABEL_36;
    case 0xBuLL:
      if (v5 != 11)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 0xBuLL);
      v6 = v4;
      v7 = 11;
      goto LABEL_36;
    case 0xCuLL:
      if (v5 != 12)
      {
        goto LABEL_34;
      }

      sub_21563530C(*a1, 0xCuLL);
      v6 = v4;
      v7 = 12;
      goto LABEL_36;
    default:
      if (v5 < 0xD)
      {
LABEL_34:
        sub_215633DD8(*a2, *(a2 + 8));
        sub_215633DD8(v2, v3);
        sub_21563530C(v2, v3);
        sub_21563530C(v4, v5);
        return 0;
      }

      else
      {
        v9 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v11 = sub_21565713C();
          sub_215633DD8(v4, v5);
          sub_215633DD8(v2, v3);
          sub_21563530C(v2, v3);
          sub_21563530C(v4, v5);
          return v11 & 1;
        }

        sub_215633DD8(v9, v3);
        sub_215633DD8(v2, v3);
        sub_21563530C(v2, v3);
        v6 = v2;
        v7 = v3;
LABEL_36:
        sub_21563530C(v6, v7);
        return 1;
      }
  }
}

uint64_t _s20ContactsAutocomplete16ComposeRecipientV6HandleV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  v18 = *a1;
  v19 = v2;
  v20 = v11;
  v15 = v6;
  v16 = v7;
  v17 = v12;
  sub_215633DC0(v18, v2, v11);
  sub_215633DC0(v6, v7, v12);
  LOBYTE(v6) = _s20ContactsAutocomplete16ComposeRecipientV6HandleV5ValueO2eeoiySbAG_AGtFZ_0(&v18, &v15);
  sub_2156352F4(v15, v16, v17);
  sub_2156352F4(v18, v19, v20);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v18 = v3;
  v19 = v4;
  v15 = v8;
  v16 = v9;
  sub_215633DD8(v3, v4);
  sub_215633DD8(v8, v9);
  v13 = _s20ContactsAutocomplete16ComposeRecipientV6HandleV5LabelO2eeoiySbAG_AGtFZ_0(&v18, &v15);
  sub_21563530C(v15, v16);
  sub_21563530C(v18, v19);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  return sub_21564F098(v5, v10);
}

unint64_t sub_21564FAF8()
{
  result = qword_27CA68660;
  if (!qword_27CA68660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68660);
  }

  return result;
}

unint64_t sub_21564FB50()
{
  result = qword_27CA68668;
  if (!qword_27CA68668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68668);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20ContactsAutocomplete16ComposeRecipientV6HandleV5LabelO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21564FBDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21564FC24(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_21564FC80(uint64_t a1, unsigned int a2)
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

uint64_t sub_21564FCC8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21564FD24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF2 && *(a1 + 16))
  {
    return (*a1 + 2147483635);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 12;
  if (v4 >= 0xE)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21564FD7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF3)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483635;
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 12;
    }
  }

  return result;
}

void *sub_21564FDCC(void *result, int a2)
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

uint64_t sub_21564FDFC()
{
  v0 = sub_215656D6C();
  __swift_allocate_value_buffer(v0, qword_27CA6E078);
  __swift_project_value_buffer(v0, qword_27CA6E078);
  return sub_215656D5C();
}

id sub_21564FE78()
{
  v0 = objc_allocWithZone(CNAutocompleteStore);

  return [v0 init];
}

uint64_t sub_21564FEB0@<X0>(uint64_t *a1@<X8>)
{
  KnownIDStatusLookup = type metadata accessor for HandleAvailability.LastKnownIDStatusLookup();
  result = HandleAvailability.LastKnownIDStatusLookup.__allocating_init()();
  a1[3] = KnownIDStatusLookup;
  a1[4] = &protocol witness table for HandleAvailability.LastKnownIDStatusLookup;
  *a1 = result;
  return result;
}

uint64_t sub_21564FEF0(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 64) = sub_215653BA4(MEMORY[0x277D84F90]);
  *(v4 + 16) = a1;
  sub_21563C3A4(a2, v4 + 24);
  return v4;
}

uint64_t sub_21564FF54(uint64_t *a1)
{
  *(v2 + 96) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68670, &qword_21565F448);
  *(v2 + 104) = v4;
  *(v2 + 112) = *(v4 - 8);
  *(v2 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68678, &qword_21565F450);
  *(v2 + 128) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68680, &qword_21565F458);
  *(v2 + 136) = v5;
  *(v2 + 144) = *(v5 - 8);
  *(v2 + 152) = swift_task_alloc();
  v6 = sub_215656A9C();
  *(v2 + 160) = v6;
  *(v2 + 168) = *(v6 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a1;
  *(v2 + 208) = v7;
  *(v2 + 216) = v8;
  *(v2 + 361) = *(a1 + 8);
  *(v2 + 362) = *(a1 + 9);
  *(v2 + 224) = a1[2];
  *(v2 + 363) = *(a1 + 24);

  return MEMORY[0x2822009F8](sub_215650174, 0, 0);
}

uint64_t sub_215650174(uint64_t a1)
{
  v80 = v1;
  v2 = *(v1 + 216);
  if (*(v2 + 16))
  {
    sub_215656A8C();
    *(v1 + 40) = v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E50, &unk_21565F460);
    sub_21565476C(&qword_27CA68690, &qword_27CA67E50, &unk_21565F460, MEMORY[0x277D83958]);
    v3 = sub_215656E0C();
    v5 = v4;

    if (qword_27CA6DD90 != -1)
    {
      swift_once();
    }

    v7 = *(v1 + 200);
    v6 = *(v1 + 208);
    v9 = *(v1 + 160);
    v8 = *(v1 + 168);
    v10 = sub_215656D6C();
    *(v1 + 232) = __swift_project_value_buffer(v10, qword_27CA6E078);
    v11 = *(v8 + 16);
    *(v1 + 240) = v11;
    *(v1 + 248) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v78 = v11;
    v11(v7, v6, v9);

    v12 = sub_215656D4C();
    v13 = sub_215656F7C();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v1 + 200);
    v17 = *(v1 + 160);
    v16 = *(v1 + 168);
    if (v14)
    {
      v18 = v5;
      v19 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v79 = v76;
      *v19 = 136380931;
      *(v19 + 4) = sub_21563A06C(v3, v18, &v79);
      *(v19 + 12) = 2080;
      sub_215654394();
      v20 = sub_21565711C();
      v22 = v21;
      v23 = *(v16 + 8);
      v23(v15, v17);
      v24 = sub_21563A06C(v20, v22, &v79);

      *(v19 + 14) = v24;
      _os_log_impl(&dword_2155FE000, v12, v13, "Preparing request for “%{private}s” (%s)", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21606DDB0](v76, -1, -1);
      MEMORY[0x21606DDB0](v19, -1, -1);
    }

    else
    {

      v23 = *(v16 + 8);
      v23(v15, v17);
    }

    *(v1 + 256) = v23;
    v28 = *(v1 + 361);
    v29 = [objc_allocWithZone(CNAutocompleteFetchRequest) init];
    *(v1 + 264) = v29;
    v30 = sub_215656ECC();
    [v29 setSearchNames_];

    LOBYTE(v30) = *(v1 + 363);
    [v29 setSearchType_];
    if ((v30 & 1) == 0)
    {
      [v29 setMaximumResultsCount_];
    }

    v78(*(v1 + 192), *(v1 + 208), *(v1 + 160));
    v31 = sub_215656D4C();
    v32 = sub_215656F7C();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v1 + 192);
    v35 = *(v1 + 160);
    v77 = v23;
    if (v33)
    {
      v75 = v29;
      v36 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v79 = v74;
      *v36 = 136315138;
      sub_215654394();
      v37 = sub_21565711C();
      v39 = v38;
      v23(v34, v35);
      v40 = sub_21563A06C(v37, v39, &v79);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_2155FE000, v31, v32, "Executing request (%s)", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      MEMORY[0x21606DDB0](v74, -1, -1);
      v41 = v36;
      v29 = v75;
      MEMORY[0x21606DDB0](v41, -1, -1);
    }

    else
    {

      v23(v34, v35);
    }

    v43 = *(v1 + 136);
    v42 = *(v1 + 144);
    v44 = *(v1 + 128);
    v45 = objc_allocWithZone(type metadata accessor for StoreSpy(0));
    v46 = swift_unknownObjectRetain();
    v47 = sub_215652614(v46);
    *(v1 + 272) = v47;
    v48 = [*&v47[OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_store] executeFetchRequest:v29 delegate:v47];
    v49 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_results;
    swift_beginAccess();
    sub_21565456C(&v47[v49], v44, &qword_27CA68678, &qword_21565F450);
    v50 = (*(v42 + 48))(v44, 1, v43);
    if (v50 == 1)
    {
      __break(1u);
    }

    else
    {
      v55 = *(v1 + 208);
      v56 = *(v1 + 184);
      v57 = *(v1 + 152);
      v58 = *(v1 + 160);
      v59 = *(v1 + 136);
      v60 = *(v1 + 144);
      v61 = *(v1 + 128);

      (*(v60 + 32))(v57, v61, v59);
      *(swift_allocObject() + 16) = v48;
      sub_215656D8C();
      swift_allocObject();
      *(v1 + 280) = sub_215656D9C();
      v78(v56, v55, v58);
      v62 = sub_215656D4C();
      v63 = sub_215656F7C();
      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v1 + 184);
      v66 = *(v1 + 160);
      if (v64)
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v79 = v68;
        *v67 = 136315138;
        sub_215654394();
        v69 = sub_21565711C();
        v71 = v70;
        v77(v65, v66);
        v72 = sub_21563A06C(v69, v71, &v79);

        *(v67 + 4) = v72;
        _os_log_impl(&dword_2155FE000, v62, v63, "Waiting for query to complete (%s)", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v68);
        MEMORY[0x21606DDB0](v68, -1, -1);
        MEMORY[0x21606DDB0](v67, -1, -1);
      }

      else
      {

        v77(v65, v66);
      }

      *(v1 + 48) = MEMORY[0x277D84F90];
      sub_215656F3C();
      v73 = swift_task_alloc();
      *(v1 + 288) = v73;
      *v73 = v1;
      v73[1] = sub_2156509E4;
      v53 = *(v1 + 104);
      v50 = v1 + 56;
      v54 = v1 + 64;
      v51 = 0;
      v52 = 0;
    }

    return MEMORY[0x2822005A8](v50, v51, v52, v53, v54);
  }

  else
  {

    v25 = *(v1 + 8);
    v26 = MEMORY[0x277D84F90];

    return v25(v26);
  }
}

uint64_t sub_2156509E4()
{
  *(*v1 + 296) = v0;

  if (v0)
  {

    v2 = sub_215651D98;
  }

  else
  {
    v2 = sub_215650B00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_215650B00()
{
  v103 = v0;
  v1 = v0 + 56;
  v2 = *(v0 + 56);
  if (!v2)
  {
    v98 = v0 + 56;
    v10 = *(v0 + 240);
    v11 = *(v0 + 208);
    v12 = *(v0 + 176);
    v13 = *(v0 + 160);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    v10(v12, v11, v13);
    v14 = *(v0 + 48);
    *(v0 + 304) = v14;
    swift_bridgeObjectRetain_n();
    v15 = sub_215656D4C();
    v16 = sub_215656F9C();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 256);
    v19 = *(v0 + 176);
    isa = v14 >> 62;
    v20 = *(v0 + 160);
    v97 = v0;
    if (!v17)
    {
      swift_bridgeObjectRelease_n();

      v18(v19, v20);
      goto LABEL_20;
    }

    LOBYTE(v94) = v16;
    v95 = v15;
    v16 = swift_slowAlloc();
    v0 = swift_slowAlloc();
    v102[0] = v0;
    *v16 = 136315394;
    sub_215654394();
    v21 = sub_21565711C();
    v23 = v22;
    v18(v19, v20);
    v24 = sub_21563A06C(v21, v23, v102);
    isa = v14 >> 62;

    *(v16 + 4) = v24;
    *(v16 + 6) = 2048;
    if (v14 >> 62)
    {
      goto LABEL_73;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2156570CC())
    {

      *(v16 + 14) = i;

      _os_log_impl(&dword_2155FE000, v95, v94, "Query is complete (%s) with: %ld items", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v0);
      MEMORY[0x21606DDB0](v0, -1, -1);
      MEMORY[0x21606DDB0](v16, -1, -1);

      v0 = v97;
LABEL_20:
      sub_215656D7C();
      if (isa)
      {
        break;
      }

      v26 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_22;
      }

LABEL_52:
      v29 = MEMORY[0x277D84F90];
LABEL_53:
      *(v0 + 312) = v29;

      v50 = sub_215656D4C();
      v51 = sub_215656F7C();

      if (os_log_type_enabled(v50, v51))
      {
        v14 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v102[0] = v16;
        *v14 = 136380675;
        v52 = MEMORY[0x21606D190](v29, MEMORY[0x277D837D0]);
        isa = sub_21563A06C(v52, v53, v102);

        *(v14 + 4) = isa;
        _os_log_impl(&dword_2155FE000, v50, v51, "Will query for IDS status for handles: %{private}s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x21606DDB0](v16, -1, -1);
        MEMORY[0x21606DDB0](v14, -1, -1);
      }

      v54 = *(v0 + 361);
      *(v0 + 72) = MEMORY[0x277D84F98];
      LOBYTE(v102[0]) = v54;
      v55 = ComposeRecipientFetchRequest.Client.services.getter();
      *(v0 + 320) = v55;
      v56 = v55[2];
      *(v0 + 328) = v56;
      if (!v56)
      {

        v64 = sub_215656D4C();
        v65 = sub_215656F7C();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_2155FE000, v64, v65, "Did query for IDS status", v66, 2u);
          MEMORY[0x21606DDB0](v66, -1, -1);
        }

        v67 = *(v0 + 304);
        v68 = *(v0 + 362);
        v69 = *(v0 + 96);

        v70 = sub_215653D14(v67, v69, (v98 + 16));

        if (v68 == 1)
        {
          v71 = sub_215656D4C();
          v72 = sub_215656F7C();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            *v73 = 0;
            _os_log_impl(&dword_2155FE000, v71, v72, "Will unify results", v73, 2u);
            MEMORY[0x21606DDB0](v73, -1, -1);
          }

          type metadata accessor for CombinesRecipients();
          KnownIDStatusLookupCAEycfC_0 = _s20ContactsAutocomplete18HandleAvailabilityV23LastKnownIDStatusLookupCAEycfC_0();
          v100 = (*(*KnownIDStatusLookupCAEycfC_0 + 80))(v70);

          v75 = sub_215656D4C();
          v76 = sub_215656F7C();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            *v77 = 0;
            _os_log_impl(&dword_2155FE000, v75, v76, "Did unify results", v77, 2u);
            MEMORY[0x21606DDB0](v77, -1, -1);
          }

          v78 = *(v0 + 272);
          v79 = *(v0 + 264);
          v96 = *(v0 + 256);
          v80 = *(v0 + 208);
          v81 = *(v0 + 160);
          v82 = *(v0 + 144);
          v83 = *(v0 + 152);
          v84 = *(v0 + 136);

          (*(v82 + 8))(v83, v84);
          v96(v80, v81);
          v85 = v100;
        }

        else
        {
          v86 = *(v0 + 272);
          v87 = *(v0 + 264);
          v101 = *(v0 + 256);
          v88 = *(v0 + 208);
          v89 = *(v0 + 160);
          v91 = *(v0 + 144);
          v90 = *(v0 + 152);
          v92 = *(v0 + 136);

          v85 = v70;
          (*(v91 + 8))(v90, v92);
          v101(v88, v89);
        }

        v93 = *(v0 + 8);

        return v93(v85);
      }

      v57 = *(v0 + 96);
      *(v0 + 336) = 0;
      if (v55[2])
      {
        v58 = *(v55 + 32);
        *(v0 + 364) = v58;
        v59 = v57[6];
        v60 = v57[7];
        __swift_project_boxed_opaque_existential_1(v57 + 3, v59);
        *(v0 + 360) = v58;
        v99 = (*(v60 + 8) + **(v60 + 8));
        v61 = swift_task_alloc();
        *(v0 + 344) = v61;
        *v61 = v0;
        v61[1] = sub_215651678;
        v62 = *(v0 + 312);

        return v99(v62, v0 + 360, v59, v60);
      }

      __break(1u);
LABEL_73:
      ;
    }

    v26 = sub_2156570CC();
    if (!v26)
    {
      goto LABEL_52;
    }

LABEL_22:
    v27 = 0;
    v28 = v14 & 0xFFFFFFFFFFFFFF8;
    v2 = v14 + 32;
    v94 = v26 - 1;
    v29 = MEMORY[0x277D84F90];
    v30 = &selRef_recordString_;
    while (2)
    {
      v95 = v29;
      v1 = v27;
      while (1)
      {
        if (v1 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v16 = *(v2 + 8 * v1);
        v31 = [v16 v30[346]];
        if (!v31)
        {
          goto LABEL_26;
        }

        isa = v31;
        v32 = [isa addressType];
        v33 = [isa address];
        if (v32 != 2)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return MEMORY[0x2822005A8](v33, v34, v35, v36, v37);
        }

        v38 = v33;
        v39 = sub_215656E5C();
        v41 = v40;

        v42 = sub_215651FD0(v39, v41);
        v14 = v43;

        v0 = v97;

        v30 = &selRef_recordString_;
        if (v14)
        {
          goto LABEL_35;
        }

LABEL_27:
        if (v26 == ++v1)
        {
          v29 = v95;
          goto LABEL_53;
        }
      }

      if (v33)
      {
        v44 = v33;
        v42 = sub_215656E5C();
        v14 = v45;

        v30 = &selRef_recordString_;
LABEL_35:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_2156332BC(0, v95[2].isa + 1, 1, v95);
        }

        isa = v95[2].isa;
        v46 = v95[3].isa;
        v16 = (isa + 1);
        if (isa >= v46 >> 1)
        {
          v95 = sub_2156332BC((v46 > 1), isa + 1, 1, v95);
        }

        v27 = v1 + 1;
        v95[2].isa = v16;
        v47 = &v95[2 * isa];
        v47[4].isa = v42;
        v47[5].isa = v14;
        v48 = v94 == v1;
        v29 = v95;
        if (v48)
        {
          goto LABEL_53;
        }

        continue;
      }

      break;
    }

LABEL_26:
    goto LABEL_27;
  }

  *(v0 + 88) = MEMORY[0x277D84F90];
  isa = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_46;
  }

  for (j = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_2156570CC())
  {
    v5 = 0;
    v6 = &selRef_recordString_;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21606D2E0](v5, v2);
      }

      else
      {
        if (v5 >= *(isa + 16))
        {
          goto LABEL_44;
        }

        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v1 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v7 v6[44]])
      {
      }

      else
      {
        v0 = v98;
        sub_21565706C();
        sub_21565708C();
        sub_21565709C();
        sub_21565707C();
        v6 = &selRef_recordString_;
      }

      ++v5;
      if (v1 == j)
      {
        v0 = v97;
        v1 = v98;
        v9 = *(v98 + 32);
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_48:

  sub_215651EE0(v9);
  v49 = swift_task_alloc();
  *(v0 + 288) = v49;
  *v49 = v0;
  v49[1] = sub_2156509E4;
  v36 = *(v0 + 104);
  v37 = v0 + 64;
  v33 = v1;
  v34 = 0;
  v35 = 0;

  return MEMORY[0x2822005A8](v33, v34, v35, v36, v37);
}

uint64_t sub_215651678(uint64_t a1)
{
  *(*v1 + 352) = a1;

  return MEMORY[0x2822009F8](sub_215651778, 0, 0);
}

unint64_t sub_215651778()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 364);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 80) = v1;
  result = sub_21563A720(v2);
  v6 = *(v1 + 16);
  v7 = (v5 & 1) == 0;
  v8 = __OFADD__(v6, v7);
  v9 = v6 + v7;
  if (v8)
  {
    __break(1u);
LABEL_30:
    v53 = result;
    sub_2156536A4();
    result = v53;
    goto LABEL_8;
  }

  LOBYTE(v2) = v5;
  if (*(v1 + 24) >= v9)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  v10 = *(v0 + 364);
  sub_215652FC4(v9, isUniquelyReferenced_nonNull_native);
  result = sub_21563A720(v10);
  if ((v2 & 1) != (v11 & 1))
  {

    return sub_21565714C();
  }

LABEL_8:
  v12 = *(v0 + 80);
  v13 = *(v0 + 352);
  if (v2)
  {
    *(v12[7] + 8 * result) = v13;
  }

  else
  {
    v14 = *(v0 + 364);
    v12[(result >> 6) + 8] |= 1 << result;
    *(v12[6] + result) = v14;
    *(v12[7] + 8 * result) = v13;
    v15 = v12[2];
    v8 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (v8)
    {
      __break(1u);
      goto LABEL_32;
    }

    v12[2] = v16;
  }

  v17 = *(v0 + 328);
  v18 = *(v0 + 336) + 1;
  *(v0 + 72) = v12;
  if (v18 == v17)
  {

    v19 = sub_215656D4C();
    v20 = sub_215656F7C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2155FE000, v19, v20, "Did query for IDS status", v21, 2u);
      MEMORY[0x21606DDB0](v21, -1, -1);
    }

    v22 = *(v0 + 304);
    v23 = *(v0 + 362);
    v24 = *(v0 + 96);

    v25 = sub_215653D14(v22, v24, (v0 + 72));

    if (v23 == 1)
    {
      v26 = sub_215656D4C();
      v27 = sub_215656F7C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2155FE000, v26, v27, "Will unify results", v28, 2u);
        MEMORY[0x21606DDB0](v28, -1, -1);
      }

      type metadata accessor for CombinesRecipients();
      KnownIDStatusLookupCAEycfC_0 = _s20ContactsAutocomplete18HandleAvailabilityV23LastKnownIDStatusLookupCAEycfC_0();
      v57 = (*(*KnownIDStatusLookupCAEycfC_0 + 80))(v25);

      v30 = sub_215656D4C();
      v31 = sub_215656F7C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2155FE000, v30, v31, "Did unify results", v32, 2u);
        MEMORY[0x21606DDB0](v32, -1, -1);
      }

      v33 = *(v0 + 272);
      v34 = *(v0 + 264);
      v54 = *(v0 + 208);
      v55 = *(v0 + 256);
      v35 = *(v0 + 160);
      v36 = *(v0 + 144);
      v37 = *(v0 + 152);
      v38 = *(v0 + 136);

      (*(v36 + 8))(v37, v38);
      v55(v54, v35);
      v25 = v57;
    }

    else
    {
      v46 = *(v0 + 272);
      v47 = *(v0 + 264);
      v56 = *(v0 + 208);
      v59 = *(v0 + 256);
      v48 = *(v0 + 160);
      v50 = *(v0 + 144);
      v49 = *(v0 + 152);
      v51 = *(v0 + 136);

      (*(v50 + 8))(v49, v51);
      v59(v56, v48);
    }

    v52 = *(v0 + 8);

    return v52(v25);
  }

  *(v0 + 336) = v18;
  v39 = *(v0 + 320);
  if (v18 >= *(v39 + 16))
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v40 = *(v0 + 96);
  v41 = *(v39 + v18 + 32);
  *(v0 + 364) = v41;
  v42 = v40[6];
  v43 = v40[7];
  __swift_project_boxed_opaque_existential_1(v40 + 3, v42);
  *(v0 + 360) = v41;
  v58 = (*(v43 + 8) + **(v43 + 8));
  v44 = swift_task_alloc();
  *(v0 + 344) = v44;
  *v44 = v0;
  v44[1] = sub_215651678;
  v45 = *(v0 + 312);

  return v58(v45, v0 + 360, v42, v43);
}

uint64_t sub_215651D98()
{
  v1 = v0[34];
  v2 = v0[33];
  v3 = v0[26];
  v13 = v0[32];
  v4 = v0[19];
  v12 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[13];
  v9 = v0[14];

  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  v13(v3, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_215651EE0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2156570CC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2156570CC();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_215652F24(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_215653978(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_215651FD0(uint64_t a1, unint64_t a2)
{
  if (sub_215656EBC())
  {
    if (qword_27CA6DD90 != -1)
    {
      swift_once();
    }

    v5 = sub_215656D6C();
    __swift_project_value_buffer(v5, qword_27CA6E078);

    v6 = sub_215656D4C();
    v7 = sub_215656F7C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36[0] = v9;
      *v8 = 136380675;
      *(v8 + 4) = sub_21563A06C(a1, a2, v36);
      _os_log_impl(&dword_2155FE000, v6, v7, "Assuming '%{private}s' is already formatted", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x21606DDB0](v9, -1, -1);
      MEMORY[0x21606DDB0](v8, -1, -1);
    }

    goto LABEL_19;
  }

  swift_beginAccess();
  v10 = *(v2 + 64);
  if (*(v10 + 16))
  {

    v11 = sub_21563A614(a1, a2);
    if (v12)
    {
      a1 = *(*(v10 + 56) + 16 * v11);

      return a1;
    }
  }

  v13 = [objc_opt_self() currentEnvironment];
  v14 = [v13 defaultCountryCode];

  if (!v14)
  {
    sub_215656E5C();
    v14 = sub_215656E4C();
  }

  v15 = objc_allocWithZone(MEMORY[0x277CBDB70]);
  v16 = sub_215656E4C();
  v17 = [v15 initWithStringValue:v16 countryCode:v14];

  v18 = [v17 unformattedInternationalStringValue];
  if (!v18)
  {

LABEL_19:

    return a1;
  }

  v19 = v18;
  v20 = sub_215656E5C();
  v22 = v21;

  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v2 + 64);
  *(v2 + 64) = 0x8000000000000000;
  sub_21565351C(v20, v22, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v2 + 64) = v34;
  swift_endAccess();
  if (qword_27CA6DD90 != -1)
  {
    swift_once();
  }

  v24 = sub_215656D6C();
  __swift_project_value_buffer(v24, qword_27CA6E078);

  v25 = v17;
  v26 = sub_215656D4C();
  v27 = sub_215656F7C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35[0] = v30;
    *v28 = 138478083;
    *(v28 + 4) = v25;
    *v29 = v25;
    *(v28 + 12) = 2081;
    v31 = v25;
    v32 = sub_21563A06C(v20, v22, v35);

    *(v28 + 14) = v32;
    _os_log_impl(&dword_2155FE000, v26, v27, "Normalized %{private}@ --> %{private}s", v28, 0x16u);
    sub_215635240(v29, &qword_27CA68780, &qword_21565CB90);
    MEMORY[0x21606DDB0](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x21606DDB0](v30, -1, -1);
    MEMORY[0x21606DDB0](v28, -1, -1);
  }

  else
  {
  }

  return v20;
}

uint64_t sub_2156524A8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_2156524F0(uint64_t a1)
{
  v6 = (*(**v1 + 136) + **(**v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21563F318;

  return v6(a1);
}

char *sub_215652614(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68798, &unk_21565F538);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68678, &qword_21565F450);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_results;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68680, &qword_21565F458);
  v13 = *(*(v12 - 8) + 56);
  v13(&v2[v11], 1, 1, v12);
  v14 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_streamContinuation;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68718, &qword_21565F4D0);
  (*(*(v15 - 8) + 56))(&v2[v14], 1, 1, v15);
  *&v2[OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_store] = a1;
  v23.receiver = v2;
  v23.super_class = ObjectType;
  swift_unknownObjectRetain();
  v16 = objc_msgSendSuper2(&v23, sel_init);
  v22 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68738, &unk_21565F500);
  (*(v5 + 104))(v7, *MEMORY[0x277D858A0], v4);
  v17 = v16;
  sub_215656F5C();
  swift_unknownObjectRelease();
  v13(v10, 0, 1, v12);
  v18 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_results;
  swift_beginAccess();
  sub_2156547BC(v10, v17 + v18, &qword_27CA68678, &qword_21565F450);
  swift_endAccess();

  return v17;
}

uint64_t sub_2156528F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68720, &qword_21565F4F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68718, &qword_21565F4D0);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_streamContinuation;
  swift_beginAccess();
  sub_2156547BC(v6, a2 + v9, &qword_27CA68720, &qword_21565F4F0);
  return swift_endAccess();
}

id sub_215652E70()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_215652F24(uint64_t a1, char a2)
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

  sub_2156570CC();
LABEL_9:
  result = sub_21565704C();
  *v2 = result;
  return result;
}

uint64_t sub_215652FC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68750, &qword_21565F510);
  v31 = v4;
  result = sub_2156570EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_2156499B4();
      result = sub_215656DEC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21565325C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68788, &unk_21565F528);
  v37 = v4;
  result = sub_2156570EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_21565719C();
      sub_215656E8C();
      result = sub_2156571BC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_21565351C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21563A614(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21565325C(v18, a5 & 1);
      v13 = sub_21563A614(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_21565714C();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_215653800();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

void sub_2156536A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68750, &qword_21565F510);
  v2 = *v0;
  v3 = sub_2156570DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_215653800()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68788, &unk_21565F528);
  v2 = *v0;
  v3 = sub_2156570DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

uint64_t sub_215653978(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2156570CC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2156570CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21565476C(&unk_27CA68740, &qword_27CA68738, &unk_21565F500, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68738, &unk_21565F500);
            v9 = sub_215653B1C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_215654720();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_215653B1C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21606D2E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_215653B9C;
  }

  __break(1u);
  return result;
}

unint64_t sub_215653BA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68788, &unk_21565F528);
    v3 = sub_2156570FC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21563A614(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t type metadata accessor for StoreSpy(uint64_t a1)
{
  result = qword_27CA6DDB0;
  if (!qword_27CA6DDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_215653D14(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v62 = a3;
  v58 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68760, &unk_21565F518);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v58 - v7;
  v9 = type metadata accessor for ComposeRecipient(0);
  v65 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v73 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v58 - v12;
  if (a1 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2156570CC())
  {
    v14 = 0;
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    v72 = a1 & 0xC000000000000001;
    v69 = (v65 + 56);
    v70 = a1 + 32;
    v75 = MEMORY[0x277D84F90];
    v68 = (v65 + 48);
    v60 = a1;
    v61 = v4;
    v59 = v8;
    v63 = v9;
    v66 = i;
    while (1)
    {
      if (v72)
      {
        v15 = MEMORY[0x21606D2E0](v14, a1);
        v16 = __OFADD__(v14++, 1);
        if (v16)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v14 >= *(v71 + 16))
        {
          goto LABEL_61;
        }

        v15 = *(v70 + 8 * v14);
        v16 = __OFADD__(v14++, 1);
        if (v16)
        {
          goto LABEL_60;
        }
      }

      v78 = v15;
      v17 = [v15 value];
      if (!v17)
      {
        v27 = 1;
        goto LABEL_47;
      }

      v18 = v17;
      v19 = [v18 addressType];
      v20 = [v18 address];
      v21 = v20;
      if (v19 == 2)
      {
        if (!v20)
        {
          __break(1u);
LABEL_67:
          result = sub_21565714C();
          __break(1u);
          return result;
        }

        v22 = sub_215656E5C();
        v24 = v23;

        v74 = sub_215651FD0(v22, v24);
        v26 = v25;

        v76 = v26;
        if (v26)
        {
          v67 = v14;
          goto LABEL_17;
        }

        v27 = 1;
        v9 = v63;
        goto LABEL_46;
      }

      if (v20)
      {
        break;
      }

      v27 = 1;
LABEL_46:
      i = v66;
LABEL_47:
      (*v69)(v8, v27, 1, v9);
      if (v4)
      {

        return v75;
      }

      if ((*v68)(v8, 1, v9) == 1)
      {
        sub_215635240(v8, &unk_27CA68760, &unk_21565F518);
      }

      else
      {
        v52 = v14;
        v53 = v64;
        sub_21563F618(v8, v64);
        sub_21563F618(v53, v73);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_215631D24(0, v75[2] + 1, 1, v75);
        }

        v55 = v75[2];
        v54 = v75[3];
        if (v55 >= v54 >> 1)
        {
          v75 = sub_215631D24((v54 > 1), v55 + 1, 1, v75);
        }

        v56 = v75;
        v75[2] = v55 + 1;
        sub_21563F618(v73, v56 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v55);
        v14 = v52;
      }

      if (v14 == i)
      {
        return v75;
      }
    }

    v67 = v14;
    v74 = sub_215656E5C();
    v76 = v28;

LABEL_17:
    v29 = *v62 + 64;
    v30 = 1 << *(*v62 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v8 = v31 & *(*v62 + 64);
    v32 = (v30 + 63) >> 6;
    v79 = *v62;

    v33 = 0;
    a1 = MEMORY[0x277D84F98];
    v77 = v29;
    while (v8)
    {
      v9 = v33;
LABEL_28:
      v34 = __clz(__rbit64(v8)) | (v9 << 6);
      v35 = *(*(v79 + 48) + v34);
      v36 = *(*(v79 + 56) + 8 * v34);
      if (*(v36 + 16))
      {

        v37 = sub_21563A614(v74, v76);
        if (v38)
        {
          v39 = *(*(v36 + 56) + v37);
        }

        else
        {
          v39 = 2;
        }

        v80 = v39;
      }

      else
      {
        v80 = 2;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = a1;
      v41 = v35;
      v4 = sub_21563A720(v35);
      v43 = *(a1 + 16);
      v44 = (v42 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_59;
      }

      v46 = v42;
      if (*(a1 + 24) >= v45)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21563BC74();
          a1 = v81;
        }
      }

      else
      {
        sub_21563B1A4(v45, isUniquelyReferenced_nonNull_native);
        a1 = v81;
        v47 = sub_21563A720(v41);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_67;
        }

        v4 = v47;
      }

      v8 &= v8 - 1;
      if (v46)
      {
        *(*(a1 + 56) + v4) = v80;
      }

      else
      {
        *(a1 + 8 * (v4 >> 6) + 64) |= 1 << v4;
        *(*(a1 + 48) + v4) = v41;
        *(*(a1 + 56) + v4) = v80;
        v49 = *(a1 + 16);
        v16 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v16)
        {
          goto LABEL_62;
        }

        *(a1 + 16) = v50;
      }

      v33 = v9;
      v29 = v77;
    }

    while (1)
    {
      v9 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v9 >= v32)
      {

        v51 = v78;
        v8 = v59;
        sub_215633EB8(v51, a1, v59);
        v27 = 0;
        a1 = v60;
        v4 = v61;
        v9 = v63;
        i = v66;
        v14 = v67;
        goto LABEL_47;
      }

      v8 = *(v29 + 8 * v9);
      ++v33;
      if (v8)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_215654394()
{
  result = qword_27CA68698;
  if (!qword_27CA68698)
  {
    sub_215656A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68698);
  }

  return result;
}

void sub_215654418(uint64_t a1)
{
  sub_215654518(319, &qword_27CA68708, &unk_27CA68680, &qword_21565F458);
  if (v1 <= 0x3F)
  {
    sub_215654518(319, &qword_27CA68710, &qword_27CA68718, &qword_21565F4D0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_215654518(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_215656FDC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21565456C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2156545D4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68718, &qword_21565F4D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_streamContinuation;
  swift_beginAccess();
  result = (*(v4 + 48))(v1 + v7, 1, v3);
  if (!result)
  {
    (*(v4 + 16))(v6, v1 + v7, v3);
    v10 = a1;
    v9 = a1;
    sub_215656F2C();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

unint64_t sub_215654720()
{
  result = qword_27CA68730;
  if (!qword_27CA68730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA68730);
  }

  return result;
}

uint64_t sub_21565476C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2156547BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_215654824()
{
  v0 = sub_215656D6C();
  __swift_allocate_value_buffer(v0, qword_27CA6E090);
  __swift_project_value_buffer(v0, qword_27CA6E090);
  return sub_215656D5C();
}

uint64_t sub_2156548A0()
{
  if (qword_27CA6DDC0 != -1)
  {
    swift_once();
  }

  v0 = sub_215656D6C();

  return __swift_project_value_buffer(v0, qword_27CA6E090);
}

void *AutocompleteStore.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = _s10DirectImplCMa();
  v2 = sub_21564FE78();
  sub_21564FEB0(v5);
  v3 = sub_21564FEF0(v2, v5);
  v0[5] = v1;
  v0[6] = &off_2827875E0;
  v0[2] = v3;
  return v0;
}

void *AutocompleteStore.init()()
{
  v1 = v0;
  v2 = _s10DirectImplCMa();
  v3 = sub_21564FE78();
  sub_21564FEB0(v6);
  v4 = sub_21564FEF0(v3, v6);
  v1[5] = v2;
  v1[6] = &off_2827875E0;
  v1[2] = v4;
  return v1;
}

uint64_t AutocompleteStore.__allocating_init(strategy:)(_BYTE *a1)
{
  v2 = swift_allocObject();
  AutocompleteStore.init(strategy:)(a1);
  return v2;
}

void *AutocompleteStore.init(strategy:)(_BYTE *a1)
{
  v2 = v1;
  if (*a1)
  {
    v3 = _s13AppIntentImplCMa();
    v12 = 0;
    v4 = sub_21563DAF4();
    v6 = v5;
    sub_21563DB00(v11);
    v7 = sub_21563DB40(&v12, 0, 0xE000000000000000, v4, v6, v11);
    v8 = &off_282786808;
  }

  else
  {
    v3 = _s10DirectImplCMa();
    v9 = sub_21564FE78();
    sub_21564FEB0(v11);
    v7 = sub_21564FEF0(v9, v11);
    v8 = &off_2827875E0;
  }

  v2[5] = v3;
  v2[6] = v8;
  v2[2] = v7;
  return v2;
}

uint64_t AutocompleteStore.__allocating_init(client:strategy:)(char *a1, _BYTE *a2)
{
  v4 = swift_allocObject();
  AutocompleteStore.init(client:strategy:)(a1, a2);
  return v4;
}

void *AutocompleteStore.init(client:strategy:)(char *a1, _BYTE *a2)
{
  v3 = v2;
  if (*a2)
  {
    v4 = *a1;
    v5 = _s13AppIntentImplCMa();
    v14 = v4;
    v6 = sub_21563DAF4();
    v8 = v7;
    sub_21563DB00(v13);
    v9 = sub_21563DB40(&v14, 0, 0xE000000000000000, v6, v8, v13);
    v10 = &off_282786808;
  }

  else
  {
    v5 = _s10DirectImplCMa();
    v11 = sub_21564FE78();
    sub_21564FEB0(v13);
    v9 = sub_21564FEF0(v11, v13);
    v10 = &off_2827875E0;
  }

  v3[5] = v5;
  v3[6] = v10;
  v3[2] = v9;
  return v3;
}

uint64_t sub_215654C00(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_21563C3A4(a1, v2 + 16);
  return v2;
}

uint64_t AutocompleteStore.Client.hashValue.getter()
{
  v1 = *v0;
  sub_21565719C();
  MEMORY[0x21606D450](v1);
  return sub_2156571BC();
}

uint64_t AutocompleteStore.Strategy.hashValue.getter()
{
  v1 = *v0;
  sub_21565719C();
  MEMORY[0x21606D450](v1);
  return sub_2156571BC();
}

uint64_t AutocompleteStore.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_215654DC8()
{
  v1 = 0xE700000000000000;
  v2 = 0x636972656E6547;
  v3 = 0x656D695465636146;
  if (*v0 != 2)
  {
    v3 = 0x7261646E656C6143;
  }

  if (*v0)
  {
    v2 = 0x736567617373654DLL;
    v1 = 0xE800000000000000;
  }

  if (*v0 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (*v0 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  sub_21565702C();

  strcpy(v7, "Autocomplete(");
  MEMORY[0x21606D140](v4, v5);

  MEMORY[0x21606D140](41, 0xE100000000000000);
  return v7[0];
}

uint64_t AutocompleteStore.execute(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  *(v2 + 41) = *(a1 + 8);
  *(v2 + 42) = *(a1 + 9);
  *(v2 + 64) = a1[2];
  *(v2 + 43) = *(a1 + 24);
  return MEMORY[0x2822009F8](sub_215654F18, 0, 0);
}

uint64_t sub_215654F18()
{
  v1 = *(v0 + 43);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 42);
  v5 = *(v0 + 41);
  v6 = *(v0 + 48);
  v7 = v6[5];
  v8 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v7);
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 25) = v4;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v11 = (*(v8 + 8) + **(v8 + 8));
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_215655084;

  return v11(v0 + 16, v7, v8);
}

uint64_t sub_215655084(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2156551C0, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

unint64_t sub_2156551DC()
{
  result = qword_27CA68800;
  if (!qword_27CA68800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68800);
  }

  return result;
}

unint64_t sub_215655234()
{
  result = qword_27CA68808;
  if (!qword_27CA68808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68808);
  }

  return result;
}

uint64_t sub_215655288(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 48) = *v1;
  *(v2 + 56) = v3;
  *(v2 + 41) = *(a1 + 8);
  *(v2 + 42) = *(a1 + 9);
  *(v2 + 64) = a1[2];
  *(v2 + 43) = *(a1 + 24);
  return MEMORY[0x2822009F8](sub_2156552D0, 0, 0);
}

uint64_t sub_2156552D0()
{
  v1 = *(v0 + 43);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 42);
  v5 = *(v0 + 41);
  v6 = *(v0 + 48);
  v7 = v6[5];
  v8 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v7);
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 25) = v4;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v11 = (*(v8 + 8) + **(v8 + 8));
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_21565543C;

  return v11(v0 + 16, v7, v8);
}

uint64_t sub_21565543C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_215655738, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t dispatch thunk of AutocompleteStoreProtocol.execute(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21564D9AC;

  return v9(a1, a2, a3);
}

void __LoadPeopleSuggester_block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_2155FE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/PeopleSuggester.framework/PeopleSuggester (%d)", v1, 8u);
}

void __LoadCoreSuggestions_block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_2155FE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/CoreSuggestions.framework/CoreSuggestions (%d)", v1, 8u);
}

void __LoadEventKit_block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_2155FE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/EventKit.framework/EventKit (%d)", v1, 8u);
}

void CNAutocompleteDelegateMultipleCallbacks_cold_1(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a1 delegate];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412802;
  v8 = v6;
  v9 = 2112;
  v10 = a1;
  v11 = 2080;
  v12 = "CNAutocompleteDelegateMultipleCallbacks";
  _os_log_fault_impl(&dword_2155FE000, a2, OS_LOG_TYPE_FAULT, "Error: Delegate of class %@ called completion handler multiple times for query %@. This is contributing to a degradation of system performance. In the future, this will be a hard error. Break on %s() to debug.", &v7, 0x20u);
}

void sSortResultsByPreferredDomain_block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v1, "hasPreferredDomain")}];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v0, "hasPreferredDomain")}];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_2155FE000, v4, v5, "Comparing preferred domain of %{private}@ (%@) with %{private}@ (%@)", v6, v7, v8, v9);
}

void sSortResultsByDisplayName_block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_2();
  v3 = [v2 displayName];
  v4 = [v0 displayName];
  *v11 = 138478595;
  *&v11[4] = v1;
  *&v11[12] = 2113;
  *&v11[14] = v3;
  *&v11[22] = 2113;
  LOWORD(v12) = 2113;
  *(&v12 + 2) = v4;
  OUTLINED_FUNCTION_1_0(&dword_2155FE000, v5, v6, "Comparing display name of %{private}@ (%{private}@) with %{private}@ (%{private}@)", v7, v8, v9, v10, *v11, *&v11[8], *&v11[16], v0, v12, WORD4(v12));
}

void sSortRecentResultsByDate_block_invoke_11_cold_1()
{
  OUTLINED_FUNCTION_2();
  v2 = [v1 date];
  v3 = [v0 date];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_2155FE000, v4, v5, "Comparing recent date of %{private}@ (%@) with %{private}@ (%@)", v6, v7, v8, v9);
}