unint64_t sub_25F451E4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F451E98()
{
  result = qword_27FD6ED58;
  if (!qword_27FD6ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED58);
  }

  return result;
}

unint64_t sub_25F451EEC()
{
  result = qword_27FD6ED60;
  if (!qword_27FD6ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED60);
  }

  return result;
}

unint64_t sub_25F451F40()
{
  result = qword_27FD6ED68;
  if (!qword_27FD6ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED68);
  }

  return result;
}

unint64_t sub_25F45205C()
{
  result = qword_27FD6ED70;
  if (!qword_27FD6ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED70);
  }

  return result;
}

unint64_t sub_25F452158()
{
  result = qword_27FD6ED80;
  if (!qword_27FD6ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED80);
  }

  return result;
}

unint64_t sub_25F4521AC()
{
  result = qword_27FD6ED88;
  if (!qword_27FD6ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED88);
  }

  return result;
}

unint64_t sub_25F452200()
{
  result = qword_27FD6ED90;
  if (!qword_27FD6ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED90);
  }

  return result;
}

unint64_t sub_25F452278()
{
  result = qword_27FD6EDA0;
  if (!qword_27FD6EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDA0);
  }

  return result;
}

unint64_t sub_25F4522D0()
{
  result = qword_27FD6EDA8;
  if (!qword_27FD6EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDA8);
  }

  return result;
}

unint64_t sub_25F452324()
{
  result = qword_27FD6EDB0;
  if (!qword_27FD6EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDB0);
  }

  return result;
}

uint64_t PropertyList.lazy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F4A25E0();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for LazyPropertyList(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for LazyPropertyList(uint64_t a1)
{
  result = qword_27FD6EDB8;
  if (!qword_27FD6EDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LazyPropertyList.propertyList.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[4] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for LazyPropertyList(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25F4526E8(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v6;
    v7 = v6[1];
    v9 = objc_opt_self();
    v10 = sub_25F4A2050();
    v18[0] = 0;
    v11 = [v9 propertyListWithData:v10 options:0 format:0 error:v18];

    v12 = v18[0];
    if (v11)
    {
      sub_25F4A3090();
      swift_unknownObjectRelease();
      sub_25F4031FC(v19, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4F0, &qword_25F4AD740);
      if (swift_dynamicCast())
      {
        sub_25F4A2560();
      }

      else
      {
        sub_25F4287E4();
        swift_allocError();
        sub_25F4031FC(v19, v16);
        swift_willThrow();
      }

      sub_25F428790(v8, v7);
      return __swift_destroy_boxed_opaque_existential_1(v19);
    }

    else
    {
      v15 = v12;
      sub_25F4A1FD0();

      swift_willThrow();
      return sub_25F428790(v8, v7);
    }
  }

  else
  {
    v13 = sub_25F4A25E0();
    return (*(*(v13 - 8) + 32))(a1, v6, v13);
  }
}

uint64_t sub_25F4526E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LazyPropertyList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LazyPropertyList.data.getter()
{
  v1 = v0;
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25F4A25E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LazyPropertyList(0);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4526E8(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v8;
  }

  (*(v3 + 32))(v5, v8, v2);
  v10 = objc_opt_self();
  sub_25F4A2570();
  v11 = sub_25F4A2B50();

  v16[0] = 0;
  v12 = [v10 dataWithPropertyList:v11 format:200 options:0 error:v16];

  v13 = v16[0];
  if (v12)
  {
    v14 = sub_25F4A2060();

    (*(v3 + 8))(v5, v2);
    return v14;
  }

  else
  {
    v15 = v13;
    sub_25F4A1FD0();

    swift_willThrow();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_25F4529B8()
{
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD00000000000004CLL, 0x800000025F4B81A0);
  sub_25F4A3140();
  return 0;
}

uint64_t sub_25F452A48(uint64_t a1)
{
  v2 = sub_25F452BEC();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F452A84(uint64_t a1)
{
  v2 = sub_25F452BEC();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F452AC0(uint64_t a1)
{
  result = sub_25F4A25E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25F452B40()
{
  result = qword_27FD6EDC8;
  if (!qword_27FD6EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDC8);
  }

  return result;
}

unint64_t sub_25F452B98()
{
  result = qword_27FD6EDD0;
  if (!qword_27FD6EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDD0);
  }

  return result;
}

unint64_t sub_25F452BEC()
{
  result = qword_27FD6EDD8;
  if (!qword_27FD6EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDD8);
  }

  return result;
}

uint64_t sub_25F452C40(__int128 *a1, __int128 *a2)
{
  sub_25F412FDC(a1, v17);
  v3 = v17[0];
  v4 = v17[1];
  v5 = v18;
  sub_25F412FDC(a2, v15);
  if (v15[0] == v3 && v15[1] == v4)
  {
    v8 = 1;
  }

  else
  {
    v7 = v16;
    v8 = 1;
    if (sub_25F4A3270())
    {
      if (v7)
      {
        v9 = 1801545079;
      }

      else
      {
        v9 = 0x676E6F727473;
      }

      if (v7)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      if (v5)
      {
        v11 = 1801545079;
      }

      else
      {
        v11 = 0x676E6F727473;
      }

      if (v5)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      if (v9 == v11 && v10 == v12)
      {
      }

      else
      {
        v14 = sub_25F4A3270();

        v8 = v14 ^ 1;
      }
    }
  }

  return v8 & 1;
}

uint64_t sub_25F452D4C(__int128 *a1, __int128 *a2)
{
  sub_25F412FDC(a2, v17);
  v3 = v17[0];
  v4 = v17[1];
  v5 = v18;
  sub_25F412FDC(a1, v15);
  if (v15[0] == v3 && v15[1] == v4)
  {
    v8 = 1;
  }

  else
  {
    v7 = v16;
    v8 = 1;
    if (sub_25F4A3270())
    {
      if (v7)
      {
        v9 = 1801545079;
      }

      else
      {
        v9 = 0x676E6F727473;
      }

      if (v7)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      if (v5)
      {
        v11 = 1801545079;
      }

      else
      {
        v11 = 0x676E6F727473;
      }

      if (v5)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      if (v9 == v11 && v10 == v12)
      {
      }

      else
      {
        v14 = sub_25F4A3270();

        v8 = v14 ^ 1;
      }
    }
  }

  return v8 & 1;
}

uint64_t sub_25F452E60(__int128 *a1, __int128 *a2)
{
  sub_25F412FDC(a1, v17);
  v3 = v17[0];
  v4 = v17[1];
  v5 = v18;
  sub_25F412FDC(a2, v15);
  v6 = v15[0] == v3 && v15[1] == v4;
  if (v6 || (v7 = v16, (sub_25F4A3270() & 1) == 0))
  {
    v13 = 0;
  }

  else
  {
    if (v7)
    {
      v8 = 1801545079;
    }

    else
    {
      v8 = 0x676E6F727473;
    }

    if (v7)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE600000000000000;
    }

    if (v5)
    {
      v10 = 1801545079;
    }

    else
    {
      v10 = 0x676E6F727473;
    }

    if (v5)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE600000000000000;
    }

    if (v8 == v10 && v9 == v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_25F4A3270();
    }
  }

  return v13 & 1;
}

BOOL static JITLoadCommand.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  sub_25F412FDC(a2, v12);
  v3 = v12[0];
  v4 = v12[1];
  v5 = v13;
  v6 = v14;
  v7 = v15;
  sub_25F412FDC(a1, v9);
  v16[0] = v9[0];
  v16[1] = v9[1];
  v17 = v10;
  v18 = v11;
  v19[0] = v3;
  v19[1] = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  return _s19PreviewsMessagingOS14JITLoadCommandO9LoadDylibV2eeoiySbAE_AEtFZ_0(v16, v19);
}

uint64_t JITLoadCommand.hash(into:)(uint64_t a1)
{
  sub_25F412FDC(v1, v4);
  v2 = v4[4];
  MEMORY[0x25F8DDB20](0);
  sub_25F4A2C60();
  sub_25F4A2C60();

  if (!v2)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();
  return sub_25F4A2C60();
}

uint64_t JITLoadCommand.hashValue.getter()
{
  sub_25F412FDC(v0, v3);
  v1 = v3[4];
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](0);
  sub_25F4A2C60();
  sub_25F4A2C60();

  sub_25F4A3320();
  if (v1)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F4531D0(uint64_t a1)
{
  v2 = *(v1 + 32);
  MEMORY[0x25F8DDB20](0);
  sub_25F4A2C60();
  sub_25F4A2C60();

  if (!v2)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t sub_25F4532BC(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](0);
  sub_25F4A2C60();
  sub_25F4A2C60();

  sub_25F4A3320();
  if (v2)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

BOOL sub_25F453390(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  v8[0] = *a1;
  v8[1] = v2;
  v9 = v3;
  v10 = *(a1 + 24);
  v11[0] = v4;
  v11[1] = v5;
  v12 = v6;
  v13 = *(a2 + 3);
  return _s19PreviewsMessagingOS14JITLoadCommandO9LoadDylibV2eeoiySbAE_AEtFZ_0(v8, v11);
}

uint64_t sub_25F4533EC()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F453460(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F4534B4@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_25F4A3170();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_25F453528(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F455E8C();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4535EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646E616D6D6F63;
  }

  else
  {
    v3 = 0x696D697263736964;
  }

  if (v2)
  {
    v4 = 0xEC000000746E616ELL;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x646E616D6D6F63;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F45369C()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F453728(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4537A0(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F453834(uint64_t *a1@<X8>)
{
  v2 = 0x696D697263736964;
  if (*v1)
  {
    v2 = 0x646E616D6D6F63;
  }

  v3 = 0xEC000000746E616ELL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F45387C()
{
  if (*v0)
  {
    return 0x646E616D6D6F63;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t JITLoadCommand.propertyListValue.getter()
{
  sub_25F412FDC(v0, v9);
  v1 = v9[0];
  v2 = v9[1];
  v3 = v10;
  v4 = v11;
  v5 = v12;
  v6 = sub_25F455344();
  sub_25F455398();
  sub_25F4A25C0();
  v8[5] = v1;
  v8[6] = v2;
  v8[7] = v3;
  v8[8] = v4;
  v8[9] = v5;
  v8[3] = &type metadata for JITLoadCommand.Key;
  v8[4] = v6;
  LOBYTE(v8[0]) = 1;
  sub_25F4553EC();
  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void *JITLoadCommand.init(propertyListValue:)@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_25F4556E4(a2, v5);
  if (!v2)
  {
    return sub_25F412FDC(v5, a1);
  }

  return result;
}

uint64_t sub_25F4539EC()
{
  sub_25F412FDC(v0, v9);
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = sub_25F455344();
  sub_25F455398();
  sub_25F4A25C0();
  v8[5] = v1;
  v8[6] = v2;
  v8[7] = v3;
  v8[8] = v4;
  v8[9] = v5;
  v8[3] = &type metadata for JITLoadCommand.Key;
  v8[4] = v6;
  LOBYTE(v8[0]) = 1;
  sub_25F4553EC();
  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void *sub_25F453AD4@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_25F4556E4(a2, v5);
  if (!v2)
  {
    return sub_25F412FDC(v5, a1);
  }

  return result;
}

PreviewsMessagingOS::JITLoadCommand::LoadDylib::Linkage_optional __swiftcall JITLoadCommand.LoadDylib.Linkage.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_25F4A3170();

  if (v1 == 1)
  {
    v2.value = PreviewsMessagingOS_JITLoadCommand_LoadDylib_Linkage_weak;
  }

  else
  {
    v2.value = PreviewsMessagingOS_JITLoadCommand_LoadDylib_Linkage_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t JITLoadCommand.LoadDylib.Linkage.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1801545079;
  }

  else
  {
    return 0x676E6F727473;
  }
}

uint64_t sub_25F453B9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1801545079;
  }

  else
  {
    v3 = 0x676E6F727473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1801545079;
  }

  else
  {
    v5 = 0x676E6F727473;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F453C38()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F453CB0(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F453D14(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F453D94(uint64_t *a1@<X8>)
{
  v2 = 1801545079;
  if (!*v1)
  {
    v2 = 0x676E6F727473;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F453DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F455EE0();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t JITLoadCommand.LoadDylib.path.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JITLoadCommand.LoadDylib.path.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JITLoadCommand.LoadDylib.symbolsPath.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t JITLoadCommand.LoadDylib.symbolsPath.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall JITLoadCommand.LoadDylib.init(path:linkage:symbolsPath:)(PreviewsMessagingOS::JITLoadCommand::LoadDylib *__return_ptr retstr, Swift::String path, PreviewsMessagingOS::JITLoadCommand::LoadDylib::Linkage linkage, Swift::String_optional symbolsPath)
{
  retstr->path = path;
  retstr->linkage = linkage & 1;
  retstr->symbolsPath = symbolsPath;
}

uint64_t sub_25F453FE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6567616B6E696CLL;
  if (v2 != 1)
  {
    v4 = 0x50736C6F626D7973;
    v3 = 0xEB00000000687461;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1752457584;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6567616B6E696CLL;
  if (*a2 != 1)
  {
    v8 = 0x50736C6F626D7973;
    v7 = 0xEB00000000687461;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1752457584;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F4540F0()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F454194(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F454224(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F4542C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F455888(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F4542F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6567616B6E696CLL;
  if (v2 != 1)
  {
    v5 = 0x50736C6F626D7973;
    v4 = 0xEB00000000687461;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1752457584;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F454354()
{
  v1 = 0x6567616B6E696CLL;
  if (*v0 != 1)
  {
    v1 = 0x50736C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t sub_25F4543EC(uint64_t *a1)
{
  sub_25F455F34();
  sub_25F455F88();
  return sub_25F4A28C0();
}

double JITLoadCommand.LoadDylib.init(propertyListValue:)@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_25F4558D4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t JITLoadCommand.LoadDylib.hash(into:)(uint64_t a1)
{
  sub_25F4A2C60();
  sub_25F4A2C60();

  if (!*(v1 + 32))
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t JITLoadCommand.LoadDylib.hashValue.getter()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  v1 = *(v0 + 32);
  sub_25F4A2C60();

  sub_25F4A3320();
  if (v1)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F454668(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_25F4A2C60();
  sub_25F4A2C60();

  if (!v2)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t sub_25F454730(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();

  sub_25F4A3320();
  if (v2)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

double sub_25F454848@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_25F4558D4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

BOOL sub_25F454890(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s19PreviewsMessagingOS14JITLoadCommandO9LoadDylibV2eeoiySbAE_AEtFZ_0(v5, v7);
}

uint64_t JITLoadCommand.pathsForTransferrableArtifactsOnHost.getter()
{
  sub_25F412FDC(v0, v5);
  v1 = v7;
  if (v7)
  {
    v2 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D718, &qword_25F4A4460);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25F4A43D0;
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t JITLoadCommand.LoadDylib.pathsForTransferrableArtifactsOnHost.getter()
{
  v6 = *(v0 + 24);
  v1 = *(&v6 + 1);
  if (*(&v6 + 1))
  {
    v2 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D718, &qword_25F4A4460);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25F4A43D0;
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_25F455AC0(&v6, &v5);
  return v3;
}

Swift::Void __swiftcall JITLoadCommand.remapTransferredPathsForDestination(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    if (*(a1._rawValue + 2))
    {
      v9 = sub_25F3EEC04(v6, v7);
      if (v10)
      {
        v11 = (*(a1._rawValue + 7) + 16 * v9);
        v6 = *v11;
        v12 = v11[1];

        v7 = v12;
      }
    }
  }

  *v2 = v3;
  v2[1] = v4;
  *(v2 + 16) = v5;
  v2[3] = v6;
  v2[4] = v7;
}

Swift::Void __swiftcall JITLoadCommand.LoadDylib.remapTransferredPathsForDestination(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v3 = *(v1 + 32);
  if (v3 && *(a1._rawValue + 2))
  {
    v5 = sub_25F3EEC04(*(v2 + 24), v3);
    if (v6)
    {
      v7 = (*(a1._rawValue + 7) + 16 * v5);
      v9 = *v7;
      v8 = v7[1];

      *(v2 + 24) = v9;
      *(v2 + 32) = v8;
    }
  }
}

uint64_t sub_25F454B00()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D718, &qword_25F4A4460);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25F4A43D0;
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  return v3;
}

Swift::Void __swiftcall JITLoadCommand.describe(with:)(Swift::OpaquePointer *with)
{
  sub_25F412FDC(v1, v36);
  v3 = v36[0];
  v4 = v36[1];
  v5 = v37;
  v6 = v38;
  v7 = v39;
  v8 = sub_25F4A2A00();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v34 = 0;
  v35 = 0xE000000000000000;
  v33 = v5;
  sub_25F4A3140();
  MEMORY[0x25F8DD480](44, 0xE100000000000000);
  MEMORY[0x25F8DD480](v3, v4);
  sub_25F4A2D70();

  if (v7)
  {
    v14 = *MEMORY[0x277D40528];
    v30 = *(v9 + 104);
    v30(v13, v14, v8);
    rawValue = with->_rawValue;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      rawValue = sub_25F3EE67C(0, rawValue[2] + 1, 1, rawValue);
    }

    v18 = rawValue[2];
    v17 = rawValue[3];
    if (v18 >= v17 >> 1)
    {
      rawValue = sub_25F3EE67C((v17 > 1), v18 + 1, 1, rawValue);
    }

    rawValue[2] = v18 + 1;
    v20 = *(v9 + 32);
    v19 = v9 + 32;
    v21 = (*(v19 + 48) + 32) & ~*(v19 + 48);
    v22 = *(v19 + 40);
    v23 = rawValue + v21 + v22 * v18;
    v24 = v32;
    v29 = v20;
    v20(v23, v13, v32);
    with->_rawValue = rawValue;
    v34 = v6;
    v35 = v7;
    sub_25F4A2D70();

    v25 = v31;
    v30(v31, *MEMORY[0x277D40530], v24);
    v26 = with->_rawValue;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_25F3EE67C(0, *(v26 + 2) + 1, 1, v26);
    }

    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_25F3EE67C((v27 > 1), v28 + 1, 1, v26);
    }

    *(v26 + 2) = v28 + 1;
    v29(&v26[v21 + v28 * v22], v25, v32);
    with->_rawValue = v26;
  }
}

uint64_t sub_25F454F18(uint64_t a1)
{
  sub_25F3F2EC0();

  return sub_25F4A29D0();
}

uint64_t static JITLoadCommand.LoadDylib.< infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_25F4A3270() & 1) == 0)
  {
    v10 = 0;
  }

  else
  {
    if (*(a1 + 16))
    {
      v5 = 1801545079;
    }

    else
    {
      v5 = 0x676E6F727473;
    }

    if (*(a1 + 16))
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    if (*(a2 + 16))
    {
      v7 = 1801545079;
    }

    else
    {
      v7 = 0x676E6F727473;
    }

    if (*(a2 + 16))
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v5 == v7 && v6 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = sub_25F4A3270();
    }
  }

  return v10 & 1;
}

uint64_t sub_25F455088(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *, _BYTE *))
{
  sub_25F412FDC(a1, v8);
  sub_25F412FDC(a2, v9);
  return a5(v8, v9) & 1;
}

uint64_t sub_25F4550DC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v2 || (v3 = *(a1 + 16), v4 = *(a2 + 16), (sub_25F4A3270() & 1) == 0))
  {
    v10 = 0;
  }

  else
  {
    if (v3)
    {
      v5 = 1801545079;
    }

    else
    {
      v5 = 0x676E6F727473;
    }

    if (v3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    if (v4)
    {
      v7 = 1801545079;
    }

    else
    {
      v7 = 0x676E6F727473;
    }

    if (v4)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v5 == v7 && v6 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = sub_25F4A3270();
    }
  }

  return v10 & 1;
}

BOOL _s19PreviewsMessagingOS14JITLoadCommandO9LoadDylibV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_25F4A3270() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v5 = 1801545079;
  }

  else
  {
    v5 = 0x676E6F727473;
  }

  if (*(a1 + 16))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (*(a2 + 16))
  {
    v7 = 1801545079;
  }

  else
  {
    v7 = 0x676E6F727473;
  }

  if (*(a2 + 16))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_25F4A3270();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = a1[4];
  v12 = *(a2 + 32);
  if (v11)
  {
    return v12 && (a1[3] == *(a2 + 24) && v11 == v12 || (sub_25F4A3270() & 1) != 0);
  }

  return !v12;
}

_BYTE *sub_25F455338(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

unint64_t sub_25F455344()
{
  result = qword_27FD6EDE0;
  if (!qword_27FD6EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDE0);
  }

  return result;
}

unint64_t sub_25F455398()
{
  result = qword_27FD6EDE8;
  if (!qword_27FD6EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDE8);
  }

  return result;
}

unint64_t sub_25F4553EC()
{
  result = qword_27FD6EDF0;
  if (!qword_27FD6EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDF0);
  }

  return result;
}

uint64_t sub_25F455440(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a4 == a1 && a5 == a2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 1;
    if (sub_25F4A3270())
    {
      if (a6)
      {
        v9 = 1801545079;
      }

      else
      {
        v9 = 0x676E6F727473;
      }

      if (a6)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      if (a3)
      {
        v11 = 1801545079;
      }

      else
      {
        v11 = 0x676E6F727473;
      }

      if (a3)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      if (v9 == v11 && v10 == v12)
      {
      }

      else
      {
        v13 = sub_25F4A3270();

        v8 = v13 ^ 1;
      }
    }
  }

  return v8 & 1;
}

uint64_t sub_25F45552C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 == a4 && a2 == a5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 1;
    if (sub_25F4A3270())
    {
      if (a3)
      {
        v9 = 1801545079;
      }

      else
      {
        v9 = 0x676E6F727473;
      }

      if (a3)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      if (a6)
      {
        v11 = 1801545079;
      }

      else
      {
        v11 = 0x676E6F727473;
      }

      if (a6)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      if (v9 == v11 && v10 == v12)
      {
      }

      else
      {
        v13 = sub_25F4A3270();

        v8 = v13 ^ 1;
      }
    }
  }

  return v8 & 1;
}

uint64_t sub_25F45560C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a4 == a1 && a5 == a2 || (sub_25F4A3270() & 1) == 0)
  {
    v12 = 0;
  }

  else
  {
    if (a6)
    {
      v8 = 1801545079;
    }

    else
    {
      v8 = 0x676E6F727473;
    }

    if (a6)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE600000000000000;
    }

    if (a3)
    {
      v10 = 1801545079;
    }

    else
    {
      v10 = 0x676E6F727473;
    }

    if (a3)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE600000000000000;
    }

    if (v8 == v10 && v9 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_25F4A3270();
    }
  }

  return v12 & 1;
}

uint64_t sub_25F4556E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v15 = &type metadata for JITLoadCommand.Key;
  v5 = sub_25F455344();
  *(&v15 + 1) = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F455398();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v12[3] = &type metadata for JITLoadCommand.Key;
    v12[4] = v5;
    LOBYTE(v12[0]) = 1;
    sub_25F4553EC();
    sub_25F4A2530();
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    v9 = v13[1];
    v10 = v14;
    v11 = v15;
    *a2 = v13[0];
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
  }

  return result;
}

unint64_t sub_25F455888(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F4558D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = &type metadata for JITLoadCommand.LoadDylib.Key;
  v5 = sub_25F455F34();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = v15;
    v7 = v16;
    v13 = &type metadata for JITLoadCommand.LoadDylib.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 1;
    sub_25F455F88();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v12);
    v13 = &type metadata for JITLoadCommand.LoadDylib.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 2;
    sub_25F4A2580();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v11 & 1;
    *(a2 + 24) = v11;
  }

  return result;
}

uint64_t sub_25F455AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5F0, &qword_25F4A4420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s19PreviewsMessagingOS14JITLoadCommandO1loiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  sub_25F412FDC(a2, v17);
  v3 = v17[0];
  v4 = v17[1];
  v5 = v18;
  sub_25F412FDC(a1, v15);
  v6 = v15[0] == v3 && v15[1] == v4;
  if (v6 || (v7 = v16, (sub_25F4A3270() & 1) == 0))
  {
    v13 = 0;
  }

  else
  {
    if (v7)
    {
      v8 = 1801545079;
    }

    else
    {
      v8 = 0x676E6F727473;
    }

    if (v7)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE600000000000000;
    }

    if (v5)
    {
      v10 = 1801545079;
    }

    else
    {
      v10 = 0x676E6F727473;
    }

    if (v5)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE600000000000000;
    }

    if (v8 == v10 && v9 == v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_25F4A3270();
    }
  }

  return v13 & 1;
}

unint64_t sub_25F455C28()
{
  result = qword_27FD6EDF8;
  if (!qword_27FD6EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EDF8);
  }

  return result;
}

unint64_t sub_25F455C80()
{
  result = qword_27FD6EE00;
  if (!qword_27FD6EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE00);
  }

  return result;
}

unint64_t sub_25F455CD8()
{
  result = qword_27FD6EE08;
  if (!qword_27FD6EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE08);
  }

  return result;
}

unint64_t sub_25F455D30()
{
  result = qword_27FD6EE10;
  if (!qword_27FD6EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE10);
  }

  return result;
}

unint64_t sub_25F455DE0()
{
  result = qword_27FD6EE18;
  if (!qword_27FD6EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE18);
  }

  return result;
}

unint64_t sub_25F455E38()
{
  result = qword_27FD6EE20;
  if (!qword_27FD6EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE20);
  }

  return result;
}

unint64_t sub_25F455E8C()
{
  result = qword_27FD6EE28;
  if (!qword_27FD6EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE28);
  }

  return result;
}

unint64_t sub_25F455EE0()
{
  result = qword_27FD6EE30;
  if (!qword_27FD6EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE30);
  }

  return result;
}

unint64_t sub_25F455F34()
{
  result = qword_27FD6EE38;
  if (!qword_27FD6EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE38);
  }

  return result;
}

unint64_t sub_25F455F88()
{
  result = qword_27FD6EE40;
  if (!qword_27FD6EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE40);
  }

  return result;
}

unint64_t sub_25F455FF0()
{
  result = qword_27FD6EE48;
  if (!qword_27FD6EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EE48);
  }

  return result;
}

_OWORD *sub_25F456060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25F4A30B0();
  if (result == (1 << *(a1 + 32)))
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    *a2 = sub_25F456E48(v6, result, *(a1 + 36), 0, a1);
    *(a2 + 8) = v5;
    return sub_25F4031EC(v6, (a2 + 16));
  }

  return result;
}

uint64_t PreviewIncrementalUpdate.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_25F456138(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *PreviewIncrementalUpdate.init(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  return sub_25F4561AC(a3, a4 + 1);
}

_OWORD *sub_25F4561AC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_25F456210(void *a1, uint64_t a2, void *a3)
{
  v4 = a3[1];
  *a1 = *a3;
  a1[1] = v4;
  v9 = *(a3 + 5);
  v5 = a3[5];
  v6 = __swift_project_boxed_opaque_existential_1(a3 + 2, v5);
  *(a2 + 24) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
}

_OWORD *PreviewIncrementalUpdate.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = sub_25F4A2570();
  sub_25F456060(v4, &v21);

  if (*(&v21 + 1))
  {
    v23 = v21;
    sub_25F4031EC(v22, v24);
    v5 = v23;
    sub_25F4031EC(v24, v25);
    sub_25F4031FC(v25, &v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE68, &qword_25F4ADFD0);
    if (swift_dynamicCast())
    {
      v6 = sub_25F4A25E0();
      (*(*(v6 - 8) + 8))(a1, v6);
      __swift_destroy_boxed_opaque_existential_1(v25);
      sub_25F4561AC(&v21, &v23);
      result = sub_25F4561AC(&v23, a2 + 1);
      *a2 = v5;
    }

    else
    {

      memset(v22, 0, sizeof(v22));
      v21 = 0u;
      sub_25F3F21F4(&v21, &qword_27FD6EE70, &qword_25F4ADFD8);
      type metadata accessor for PreviewIncrementalUpdate.UnarchiveError(0);
      sub_25F456DA0(&qword_27FD6EE58, &unk_25F4AE11C);
      swift_allocError();
      v13 = v12;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE60, &qword_25F4ADFC8);
      v15 = *(v14 + 48);
      v16 = (v13 + *(v14 + 64));
      v17 = sub_25F4A25E0();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v13, a1, v17);
      sub_25F4031FC(v25, v13 + v15);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE78, &qword_25F4ADFE0);
      v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE80, &qword_25F4ADFE8);
      *v16 = v19;
      (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
      swift_willThrow();
      (*(v18 + 8))(a1, v17);
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {
    sub_25F3F21F4(&v21, &qword_27FD6EE50, &qword_25F4ADFC0);
    type metadata accessor for PreviewIncrementalUpdate.UnarchiveError(0);
    sub_25F456DA0(&qword_27FD6EE58, &unk_25F4AE11C);
    swift_allocError();
    v9 = v8;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE60, &qword_25F4ADFC8);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    swift_willThrow();
    v11 = sub_25F4A25E0();
    return (*(*(v11 - 8) + 8))(a1, v11);
  }

  return result;
}

uint64_t type metadata accessor for PreviewIncrementalUpdate.UnarchiveError(uint64_t a1)
{
  result = qword_27FD6EE88;
  if (!qword_27FD6EE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PreviewIncrementalUpdate.description.getter()
{
  MEMORY[0x25F8DD480](*v0, v0[1]);
  MEMORY[0x25F8DD480](2112800, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE68, &qword_25F4ADFD0);
  sub_25F4A3140();
  return 0;
}

unint64_t sub_25F45674C()
{
  v1 = v0;
  v2 = sub_25F4A25E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PreviewIncrementalUpdate.UnarchiveError(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F456DE4(v1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE60, &qword_25F4ADFC8);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    return 0xD00000000000003DLL;
  }

  v11 = *(v9 + 48);
  v12 = *(v9 + 64);
  (*(v3 + 32))(v5, v8, v2);
  sub_25F4031EC(&v8[v11], &v20);
  sub_25F4031EC(&v8[v12], v19);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD00000000000002ALL, 0x800000025F4B81F0);
  __swift_project_boxed_opaque_existential_1(&v20, v21);
  swift_getDynamicType();
  v13 = sub_25F4A33B0();
  MEMORY[0x25F8DD480](v13);

  MEMORY[0x25F8DD480](0xD000000000000016, 0x800000025F4B8220);
  sub_25F4A3140();
  MEMORY[0x25F8DD480](8250, 0xE200000000000000);
  sub_25F4A2570();
  v14 = sub_25F4A2B70();
  v16 = v15;

  MEMORY[0x25F8DD480](v14, v16);

  v10 = v18[0];
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_25F456A48()
{
  MEMORY[0x25F8DD480](*v0, v0[1]);
  MEMORY[0x25F8DD480](2112800, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE68, &qword_25F4ADFD0);
  sub_25F4A3140();
  return 0;
}

uint64_t sub_25F456B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE60, &qword_25F4ADFC8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F456BE4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EE60, &qword_25F4ADFC8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_25F456C70(uint64_t a1)
{
  sub_25F456CC8(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_25F456CC8(uint64_t a1)
{
  if (!qword_27FD6EE98)
  {
    sub_25F4A25E0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FD6EE98);
    }
  }
}

uint64_t sub_25F456D38(uint64_t a1)
{
  *(a1 + 8) = sub_25F456DA0(&qword_27FD6EEA0, &unk_25F4AE0D8);
  result = sub_25F456DA0(&qword_27FD6EE58, &unk_25F4AE11C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F456DA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PreviewIncrementalUpdate.UnarchiveError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F456DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewIncrementalUpdate.UnarchiveError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F456E48(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    sub_25F4031FC(*(a5 + 56) + 32 * a2, result);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

PreviewsMessagingOS::JITCapabilities __swiftcall JITCapabilities.init(supportsJITLinking:supportsLoadCommands:)(Swift::Bool supportsJITLinking, Swift::Bool supportsLoadCommands)
{
  if (supportsLoadCommands)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | supportsJITLinking);
}

uint64_t sub_25F456F6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "linkage";
  }

  else
  {
    v4 = "supportsJITLinking";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = "supportsJITLinking";
  }

  else
  {
    v7 = "linkage";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F457018()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F457098(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F457104(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F457180@<X0>(char *a2@<X8>)
{
  v3 = sub_25F4A3170();

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

void sub_25F4571E0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1)
  {
    v3 = "supportsJITLinking";
  }

  else
  {
    v3 = "linkage";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_25F457220()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_25F45731C()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_25F4572A4(v1 | *(v0 + 16));
}

uint64_t sub_25F457358(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for JITCapabilities.Key;
  v6[4] = sub_25F457990();
  LOBYTE(v6[0]) = a3 & 1;
  sub_25F4A2580();
  result = __swift_destroy_boxed_opaque_existential_1(v6);
  if (!v3 && v7 != 2)
  {
    LOBYTE(v6[0]) = v7 & 1;
    return swift_setAtWritableKeyPath();
  }

  return result;
}

uint64_t sub_25F457460@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_25F457694(a2);
  if (!v2)
  {
    *a1 = result & 1;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

id static JITCapabilities.userDefaultSupportsJITLinking.getter()
{
  if (qword_27FD6D388 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_25F4A2C10();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_25F45757C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EEA8, &qword_25F4AE218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F4A43D0;
  *(inited + 32) = 0xD000000000000014;
  v2 = inited + 32;
  *(inited + 40) = 0x800000025F4B8280;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  sub_25F4929F4(inited);
  swift_setDeallocating();
  sub_25F457928(v2);
  v3 = sub_25F4A2B50();

  [v0 registerDefaults_];
}

uint64_t sub_25F457694(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  sub_25F457358(KeyPath, a1, 0);
  if (v1)
  {
    v5 = sub_25F4A25E0();
    (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {

    v4 = swift_getKeyPath();
    sub_25F457358(v4, a1, 1);
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);

    return 0;
  }
}

uint64_t getEnumTagSinglePayload for JITCapabilities(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for JITCapabilities(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_25F457928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EEB0, &qword_25F4AE220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F457990()
{
  result = qword_27FD6EEB8;
  if (!qword_27FD6EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EEB8);
  }

  return result;
}

unint64_t sub_25F4579F8()
{
  result = qword_27FD6EEC0;
  if (!qword_27FD6EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EEC0);
  }

  return result;
}

uint64_t DaemonConnection.invalidationHandle.getter()
{
  sub_25F45968C();
}

char *DaemonConnection.__allocating_init(connection:role:serviceDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_allocObject();
  v10 = sub_25F459694(a1, a2, a3, a4);
  (*(*(*(v5 + 80) - 8) + 8))(a2);

  return v10;
}

char *DaemonConnection.init(connection:role:serviceDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = sub_25F459694(a1, a2, a3, a4);
  (*(*(*(v6 + 80) - 8) + 8))(a2);

  return v7;
}

uint64_t sub_25F457C0C(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_25F4A2710();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = a1;
  swift_getWitnessTable();
  sub_25F441084(v2);
  sub_25F4A2690();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25F457D70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = *a2;
  v6 = sub_25F4A2A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DF98, &unk_25F4A7580);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  sub_25F404B8C(a2 + v5[16], v17 - v12, &qword_27FD6DF98, &unk_25F4A7580);

  v14 = *(v11 + 56);
  sub_25F4A2A80();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFA0, &qword_25F4A8D30);
  sub_25F421780();
  sub_25F4A2650();
  (*(v7 + 8))(v9, v6);
  (*(*(v15 - 8) + 8))(&v13[v14], v15);
  sub_25F4A20B0();
  return (*(v5[11] + 16))(v5[10]);
}

uint64_t DaemonConnection.activate(receiver:interruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v6 = *v4;
  v20 = sub_25F4A2A70();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DF98, &unk_25F4A7580);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;

  sub_25F4A20C0();
  v21[3] = type metadata accessor for DaemonConnection.Receiver(0, *(v6 + 80), *(v6 + 88), v14);
  v21[4] = swift_getWitnessTable();
  v21[0] = v19;
  v21[1] = a2;

  sub_25F4A2100();
  sub_25F3F21F4(v21, &qword_27FD6EEC8, &unk_25F4AE338);
  sub_25F404B8C(v4 + *(*v4 + 128), v13, &qword_27FD6DF98, &unk_25F4A7580);

  v15 = *(v11 + 56);
  sub_25F4A2A80();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFA0, &qword_25F4A8D30);
  sub_25F421780();
  sub_25F4A2680();
  (*(v7 + 8))(v9, v20);
  return (*(*(v16 - 8) + 8))(&v13[v15], v16);
}

uint64_t DaemonConnection.sender.getter()
{
  v1[2] = v0;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DF98, &unk_25F4A7580);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F458310, 0, 0);
}

uint64_t sub_25F458310()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_25F404B8C(*(v0 + 16) + *(**(v0 + 16) + 128), v2, &qword_27FD6DF98, &unk_25F4A7580);
  v3 = *v2;
  *(v0 + 40) = v3;
  *(v0 + 64) = *(v1 + 48);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  *v4 = v0;
  v4[1] = sub_25F45841C;
  v6 = MEMORY[0x277D84950];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v5, v3, v7, v5, v6);
}

uint64_t sub_25F45841C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {

    v2 = sub_25F458618;
  }

  else
  {
    v2 = sub_25F458538;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F458538()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFA0, &qword_25F4A8D30);
  (*(*(v4 - 8) + 8))(v2 + v1, v4);

  v5 = *(v0 + 8);

  return v5(sub_25F45A094, v3);
}

uint64_t sub_25F458618()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFA0, &qword_25F4A8D30);
  (*(*(v3 - 8) + 8))(v2 + v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

void sub_25F4586C8(void *a1, uint64_t a2)
{
  v32 = a2;
  v33 = a1;
  v3 = sub_25F4A2A70();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for TransportReply(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  sub_25F404B8C(v32, v10, &qword_27FD6DEB0, &qword_25F4AB200);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_25F3F21F4(v10, &qword_27FD6DEB0, &qword_25F4AB200);
    v18 = LazyPropertyList.encoded.getter();
    sub_25F4A20F0();
  }

  else
  {
    v28 = v17;
    sub_25F40CA18(v10, v17);
    v32 = *(v2 + *(*v2 + 112));
    v33 = LazyPropertyList.encoded.getter();
    sub_25F4A2A80();
    sub_25F412F00(v17, v15);
    v19 = v29;
    v21 = v30 + 32;
    v20 = *(v30 + 32);
    v22 = v7;
    v23 = v31;
    v20(v29, v22, v31);
    v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v25 = (v13 + *(v21 + 48) + v24) & ~*(v21 + 48);
    v26 = swift_allocObject();
    sub_25F40CA18(v15, v26 + v24);
    v20((v26 + v25), v19, v23);
    v27 = v33;
    sub_25F4A20E0();

    sub_25F412CE4(v28, type metadata accessor for TransportReply);
  }
}

uint64_t DaemonConnection.description.getter()
{
  v1 = v0;
  v2 = *v0;
  sub_25F4A30F0();
  v3 = (*(*(v2 + 88) + 8))(*(v2 + 80), *(v2 + 88));

  MEMORY[0x25F8DD480](0x7463656E6E6F6320, 0xEF206E6F206E6F69);
  MEMORY[0x25F8DD480](*(v1 + *(*v1 + 120)), *(v1 + *(*v1 + 120) + 8));
  return v3;
}

uint64_t DaemonConnection.send(serviceMessage:reply:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for LazyPropertyList(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F4A25E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ServiceMessage(0);
  sub_25F459B48();
  sub_25F4A2940();
  (*(v10 + 32))(v8, v12, v9);
  swift_storeEnumTagMultiPayload();
  sub_25F412F00(a2, v5);
  v13 = type metadata accessor for TransportReply(0);
  (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  sub_25F4586C8(v8, v5);
  sub_25F3F21F4(v5, &qword_27FD6DEB0, &qword_25F4AB200);
  return sub_25F412CE4(v8, type metadata accessor for LazyPropertyList);
}

uint64_t sub_25F458D88(void *a1, void (*a2)(uint64_t *, char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for LazyPropertyList(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [a1 data];
  v11 = sub_25F4A2060();
  v13 = v12;

  *v9 = v11;
  v9[1] = v13;
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for TransportReply(0);
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  a2(v9, v6);
  sub_25F3F21F4(v6, &qword_27FD6DEB0, &qword_25F4AB200);
  return sub_25F412CE4(v9, type metadata accessor for LazyPropertyList);
}

uint64_t sub_25F458F30(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, char *), uint64_t a5)
{
  v29 = a5;
  v30 = a4;
  v27 = a2;
  v28 = a3;
  v26 = sub_25F4A2910();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F4A2A70();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for LazyPropertyList(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = [a1 data];
  v17 = sub_25F4A2060();
  v19 = v18;

  *v15 = v17;
  v15[1] = v19;
  swift_storeEnumTagMultiPayload();
  sub_25F4A2A80();
  *(swift_allocObject() + 16) = a1;
  (*(v6 + 104))(v8, *MEMORY[0x277D404C0], v26);
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 16) = v27;
  *(v20 + 24) = v21;
  v22 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2440();
  v23 = type metadata accessor for TransportReply(0);
  (*(*(v23 - 8) + 56))(v12, 0, 1, v23);
  v30(v15, v12);
  sub_25F3F21F4(v12, &qword_27FD6DEB0, &qword_25F4AB200);
  return sub_25F412CE4(v15, type metadata accessor for LazyPropertyList);
}

char *DaemonConnection.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  sub_25F3F21F4(v0 + *(*v0 + 128), &qword_27FD6DF98, &unk_25F4A7580);
  return v0;
}

uint64_t DaemonConnection.__deallocating_deinit()
{
  DaemonConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25F459428()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25F4594B8;

  return DaemonConnection.sender.getter();
}

uint64_t sub_25F4594B8(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_25F4595C8()
{
  sub_25F45968C();
}

uint64_t sub_25F459620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A09D0](a1, a2, a3, WitnessTable);
}

char *sub_25F459694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v30 = a4;
  v32 = a2;
  v34 = *v4;
  v35 = v34;
  v7 = *(v34 + 80);
  v8 = *(v7 - 8);
  v33 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v31 = &v27 - v9;
  v28 = sub_25F4A2A70();
  v10 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F4A2910();
  MEMORY[0x28223BE20](v13);
  (*(v15 + 104))(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D404B8]);
  sub_25F4A29F0();
  swift_allocObject();
  *(v4 + 2) = sub_25F4A29E0();
  v16 = &v5[*(*v5 + 128)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DF98, &unk_25F4A7580);
  sub_25F4A2A80();
  v17 = sub_25F4A2F70();
  (*(v10 + 8))(v12, v28);
  *v16 = v17;
  *&v5[*(*v5 + 112)] = a1;
  v18 = &v5[*(*v5 + 120)];
  v19 = v30;
  *v18 = v29;
  v18[1] = v19;
  v20 = *(v8 + 16);
  v21 = v32;
  v20(&v5[*(*v5 + 104)], v32, v7);

  sub_25F4A20D0();
  v36 = v5;
  v22 = v31;
  v20(v31, v21, v7);
  v23 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 2) = v7;
  *(v24 + 3) = *(v25 + 88);
  *(v24 + 4) = v5;
  *(v24 + 5) = a1;
  (*(v8 + 32))(&v24[v23], v22, v7);

  swift_getWitnessTable();
  sub_25F4A2930();

  return v5;
}

unint64_t sub_25F459B48()
{
  result = qword_27FD6EED0[0];
  if (!qword_27FD6EED0[0])
  {
    type metadata accessor for ServiceMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD6EED0);
  }

  return result;
}

uint64_t sub_25F459BA0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_25F459C44(uint64_t a1)
{
  v1 = MEMORY[0x277D83428] + 64;
  v6 = MEMORY[0x277D83428] + 64;
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v7 = *(v2 - 8) + 64;
    v8 = v1;
    v9 = &unk_25F4AE478;
    sub_25F459D88(319);
    if (v4 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v10 = &v5;
      swift_initClassMetadata2();
    }
  }
}

void sub_25F459D88(uint64_t a1)
{
  if (!qword_27FD6EF58[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
    v1 = sub_25F4A2F80();
    if (!v2)
    {
      atomic_store(v1, qword_27FD6EF58);
    }
  }
}

uint64_t sub_25F459E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F459E3C(uint64_t *a1, int a2)
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

uint64_t sub_25F459E84(uint64_t result, int a2, int a3)
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

uint64_t sub_25F459EC0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F459EF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F459F30()
{
  v1 = *(type metadata accessor for TransportReply(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_25F4A2A70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F45A0A0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

CGSize __swiftcall PreviewTraits.Orientation.rotatedSize(_:)(CGSize result)
{
  v2 = *v1;
  if (v2 >= 2)
  {
    height = result.height;
  }

  else
  {
    height = result.width;
  }

  if (v2 >= 2)
  {
    result.height = result.width;
  }

  v4 = height;
  result.width = v4;
  return result;
}

uint64_t PreviewTraits.Orientation.deviceRotationAngle.getter()
{
  v1 = dbl_25F4AE538[*v0];
  v2 = [objc_opt_self() degrees];
  v3 = sub_25F45A264();
  v4.n128_f64[0] = v1;

  return MEMORY[0x28211B708](v2, v3, v4);
}

unint64_t sub_25F45A264()
{
  result = qword_27FD6EFE0[0];
  if (!qword_27FD6EFE0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FD6EFE0);
  }

  return result;
}

uint64_t sub_25F45A2B0(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for PipeServiceInterface(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for TransportEvent(255, v4, WitnessTable, v6);
  result = sub_25F4A2F50();
  if (v8 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_25F45A408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[16] = *(v3 + 88);
  v4[17] = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[18] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4[19] = AssociatedConformanceWitness;
  v8 = type metadata accessor for PipeServiceInterface(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v4[20] = v8;
  WitnessTable = swift_getWitnessTable();
  v4[21] = WitnessTable;
  type metadata accessor for TransportEvent(255, v8, WitnessTable, v10);
  v11 = sub_25F4A2F50();
  v4[22] = v11;
  v4[23] = *(v11 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  swift_getObjectType();
  v13 = sub_25F4A2E40();
  v4[26] = v13;
  v4[27] = v12;

  return MEMORY[0x2822009F8](sub_25F45A5B0, v13, v12);
}

uint64_t sub_25F45A5B0()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  Transport.activate<A>(forReceivingEvents:)(v2, v6, v2, v7, v1);
  v9 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v9);
  v11 = type metadata accessor for PipeServiceInterface(0, v3, v4, v10);
  v12 = swift_task_alloc();
  v0[28] = v12;
  swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_25F45A700;

  return Transport.transportSender<A>(for:)((v0 + 2), v11, v9, v11, v8);
}

uint64_t sub_25F45A700()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_25F45AAE0;
  }

  else
  {
    v5 = sub_25F45A83C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25F45A83C()
{
  v26 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v18 = *(v0 + 200);
  v19 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v17 = *(v0 + 112);
  v5 = *(v0 + 16);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v20 = *(v0 + 24);
  (*(v2 + 16))(v1);
  v21 = v5;
  v22 = v20;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  swift_allocObject();

  v9 = sub_25F45B740(v1, &v21);
  type metadata accessor for Junction(0, v3, v4, v10);
  WitnessTable = swift_getWitnessTable();

  v13 = sub_25F440E98(v12, WitnessTable, 0, 0, sub_25F460F44, v9, sub_25F460EF0, v9);
  *&v9[*(*v9 + 120)] = v13;
  swift_retain_n();

  *(v0 + 104) = v9;
  sub_25F412F74(v17, v0 + 64);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  sub_25F412FDC((v0 + 64), v14 + 24);

  swift_getWitnessTable();
  sub_25F4A28F0();

  (*(v2 + 8))(v18, v19);

  v15 = *(v0 + 8);

  return v15(v9, v13);
}

uint64_t sub_25F45AAE0()
{
  (*(v0[23] + 8))(v0[25], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F45AB68(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = *v2;
  v4 = sub_25F4A2710();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[15] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3[16] = AssociatedConformanceWitness;
  v3[17] = type metadata accessor for PipeEvent.Content(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v3[18] = swift_task_alloc();
  v8 = swift_getAssociatedTypeWitness();
  v3[19] = v8;
  v9 = *(v8 - 8);
  v3[20] = v9;
  v3[21] = *(v9 + 64);
  v3[22] = swift_task_alloc();
  v11 = type metadata accessor for PipeEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v3[23] = v11;
  v3[24] = *(v11 - 8);
  v3[25] = swift_task_alloc();
  v13 = type metadata accessor for PipeServiceInterface(255, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for TransportMessage(0, v13, WitnessTable, v15);
  v3[26] = v16;
  v3[27] = *(v16 - 8);
  v3[28] = swift_task_alloc();
  v18 = type metadata accessor for TransportEvent(0, v13, WitnessTable, v17);
  v3[29] = v18;
  v3[30] = *(v18 - 8);
  v3[31] = swift_task_alloc();
  sub_25F4A3060();
  v3[32] = swift_task_alloc();
  v19 = sub_25F4A2F40();
  v3[33] = v19;
  v3[34] = *(v19 - 8);
  v3[35] = swift_task_alloc();
  swift_getObjectType();
  v21 = sub_25F4A2E40();
  v3[36] = v21;
  v3[37] = v20;

  return MEMORY[0x2822009F8](sub_25F45AFAC, v21, v20);
}

uint64_t sub_25F45AFAC()
{
  v1 = v0[10];
  sub_25F4A2F50();
  sub_25F4A2F10();
  v0[38] = *(*v1 + 128);
  swift_beginAccess();
  v2 = v0[8];
  v3 = v0[9];
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_25F45B0BC;
  v5 = v0[32];
  v6 = v0[33];

  return MEMORY[0x2822003E8](v5, v2, v3, v6);
}

uint64_t sub_25F45B0BC()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_25F45B1DC, v3, v2);
}

uint64_t sub_25F45B1DC()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[11];
    v7 = v0[12];
    v8 = v0[10];
    (*(v0[34] + 8))(v0[35], v0[33]);
    v0[5] = v8;
    swift_getWitnessTable();
    sub_25F441084(v6);
    sub_25F4A2690();
    (*(v5 + 8))(v4, v7);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[31];
    v12 = v0[26];
    v13 = v0[27];
    (*(v3 + 32))(v11, v1, v2);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      v14 = *(v0[10] + v0[38]);

      if (sub_25F4A2DE0())
      {
        v15 = 0;
        do
        {
          v16 = sub_25F4A2DD0();
          sub_25F4A2D40();
          if (v16)
          {
            (*(v0[20] + 16))(v0[22], v14 + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)) + *(v0[20] + 72) * v15, v0[19]);
            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_15;
            }
          }

          else
          {
            v26 = v0[21];
            v27 = sub_25F4A3100();
            if (v26 != 8)
            {
              __break(1u);
              return MEMORY[0x2822003E8](v27, v28, v29, v30);
            }

            v31 = v0[22];
            v32 = v0[19];
            v33 = v0[20];
            v0[6] = v27;
            (*(v33 + 16))(v31, v0 + 6, v32);
            swift_unknownObjectRelease();
            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }
          }

          v19 = v0[24];
          v18 = v0[25];
          v20 = v0[22];
          v48 = v0[23];
          v21 = v14;
          v22 = v0[18];
          v24 = v0[15];
          v23 = v0[16];
          swift_storeEnumTagMultiPayload();
          v25 = v22;
          v14 = v21;
          sub_25F40BD68(v25, v20, v24, v23, v18);
          sub_25F45C544();
          (*(v19 + 8))(v18, v48);
          ++v15;
        }

        while (v17 != sub_25F4A2DE0());
      }

      v41 = v0[13];
      v40 = v0[14];
      v42 = v0[11];
      v43 = v0[12];
      v44 = v0[10];

      v0[7] = v44;
      swift_getWitnessTable();
      sub_25F441084(v42);
      sub_25F4A2690();
      (*(v41 + 8))(v40, v43);
    }

    else
    {
LABEL_16:
      v35 = v0[27];
      v34 = v0[28];
      v37 = v0[25];
      v36 = v0[26];
      v38 = v0[23];
      v39 = v0[24];
      (*(v35 + 32))(v34, v0[31], v36);
      sub_25F45BB14(v36, v37);
      sub_25F45C544();
      (*(v39 + 8))(v37, v38);
      (*(v35 + 8))(v34, v36);
    }

    v45 = v0[8];
    v46 = v0[9];
    v47 = swift_task_alloc();
    v0[39] = v47;
    *v47 = v0;
    v47[1] = sub_25F45B0BC;
    v27 = v0[32];
    v30 = v0[33];
    v28 = v45;
    v29 = v46;

    return MEMORY[0x2822003E8](v27, v28, v29, v30);
  }
}

char *sub_25F45B740(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *a2;
  v20 = *(a2 + 3);
  v7 = a2[5];
  sub_25F4A2990();
  swift_allocObject();
  *(v2 + 2) = sub_25F4A2980();
  *&v2[*(*v2 + 120)] = 0;
  v8 = *(*v2 + 128);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v19 = *(a2 + 1);
  *&v3[v8] = sub_25F4A2DB0();
  v11 = *(*v3 + 104);
  v13 = type metadata accessor for PipeServiceInterface(255, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for TransportEvent(255, v13, WitnessTable, v15);
  v16 = sub_25F4A2F50();
  (*(*(v16 - 8) + 32))(&v3[v11], a1, v16);
  v17 = &v3[*(*v3 + 112)];
  *v17 = v6;
  *(v17 + 8) = v19;
  *(v17 + 24) = v20;
  *(v17 + 5) = v7;
  return v3;
}

uint64_t sub_25F45B998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getObjectType();
  swift_getWitnessTable();
  return sub_25F4A2900();
}

uint64_t sub_25F45BA6C(uint64_t a1, uint64_t a2, void *a3)
{
  *(a2 + *(*a2 + 120)) = 0;

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_25F4A2690();
}

uint64_t sub_25F45BB14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = *(a1 + 16);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v61 = &v58 - v6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v60 = swift_getAssociatedTypeWitness();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v58 - v7;
  v9 = type metadata accessor for PipeServiceInterface.TwoWayContent(0, v5, v4, v8);
  v67 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - v10;
  v80 = type metadata accessor for TransportReply(0);
  v64 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  v81 = v5;
  v82 = v9;
  v83 = v4;
  v84 = WitnessTable;
  v13 = type metadata accessor for PipeServiceInterface.Message(0, &v81);
  v70 = *(v13 - 8);
  v71 = v13;
  MEMORY[0x28223BE20](v13);
  v69 = &v58 - v14;
  v16 = type metadata accessor for PipeServiceInterface.OneWayContent(0, v5, v4, v15);
  v66 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  v19 = swift_getWitnessTable();
  v81 = v5;
  v82 = v16;
  v83 = v4;
  v84 = v19;
  v20 = type metadata accessor for PipeServiceInterface.Message(0, &v81);
  v65 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  v24 = *(a1 - 8);
  MEMORY[0x28223BE20](v21);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_getAssociatedTypeWitness();
  v76 = *(v27 - 8);
  v77 = v27;
  MEMORY[0x28223BE20](v27);
  v78 = &v58 - v28;
  v74 = type metadata accessor for PipeEvent.Content(0, v5, v4, v29);
  MEMORY[0x28223BE20](v74);
  v72 = &v58 - v30;
  (*(v24 + 16))(v26, v73, a1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v42 = v80;
    v43 = v65;
    (*(v65 + 32))(v23, v26, v20);
    (*(v66 + 16))(v18, v23, v16);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
    v45 = (*(*(v44 - 8) + 48))(v18, 3, v44);
    if (v45 > 1)
    {
      v48 = v78;
    }

    else
    {
      if (!v45)
      {
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0) + 48);
        v47 = sub_25F4A25E0();
        v41 = v72;
        (*(*(v47 - 8) + 32))();
        (*(v64 + 56))(v41 + v46, 1, 1, v42);
        v48 = v78;
LABEL_12:
        swift_storeEnumTagMultiPayload();
        (*(v76 + 16))(v48, &v23[*(v20 + 52)], v77);
        (*(v43 + 8))(v23, v20);
        return sub_25F40BD68(v41, v48, v5, v4, v79);
      }

      v48 = v78;
    }

    v41 = v72;
    goto LABEL_12;
  }

  v31 = v71;
  v32 = *(swift_getTupleTypeMetadata2() + 48);
  v33 = v69;
  v34 = v70;
  (*(v70 + 32))(v69, v26, v31);
  sub_25F40CA18(&v26[v32], v75);
  v35 = v68;
  (*(v67 + 16))(v68, v33, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = v31;
    v37 = v34;
    v38 = v33;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0) + 48);
    v40 = sub_25F4A25E0();
    v41 = v72;
    (*(*(v40 - 8) + 32))(v72, v35, v40);
    sub_25F40CA18(v75, v41 + v39);
    (*(v64 + 56))(v41 + v39, 0, 1, v80);
  }

  else
  {
    v49 = v60;
    v50 = AssociatedTypeWitness;
    v51 = *(swift_getTupleTypeMetadata2() + 48);
    v73 = *(v59 + 32);
    v52 = v58;
    v73(v58, v35, v49);
    v67 = *(v62 + 32);
    v53 = v61;
    (v67)(v61, &v35[v51], v50);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v55 = *(TupleTypeMetadata3 + 48);
    v80 = *(TupleTypeMetadata3 + 64);
    v41 = v72;
    v56 = v52;
    v36 = v71;
    v73(v72, v56, v49);
    v37 = v70;
    (v67)(v41 + v55, v53, v50);
    v38 = v69;
    sub_25F40CA18(v75, v41 + v80);
  }

  swift_storeEnumTagMultiPayload();
  v48 = v78;
  (*(v76 + 16))(v78, &v38[*(v36 + 52)], v77);
  (*(v37 + 8))(v38, v36);
  return sub_25F40BD68(v41, v48, v5, v4, v79);
}

uint64_t sub_25F45C544()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PipeEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v2);
  return sub_25F40C854(sub_25F460ED4);
}

uint64_t sub_25F45C624(uint64_t a1, uint64_t a2)
{
  v147 = a2;
  v148 = a1;
  v3 = *(a2 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v131 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v130 = &v114 - v6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v125 = swift_getAssociatedTypeWitness();
  v129 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v128 = &v114 - v7;
  v9 = type metadata accessor for PipeServiceInterface.TwoWayContent(0, v4, v5, v8);
  MEMORY[0x28223BE20](v9);
  v120 = &v114 - v10;
  WitnessTable = swift_getWitnessTable();
  v149 = v4;
  v150 = v9;
  v151 = v5;
  v152 = WitnessTable;
  v119 = WitnessTable;
  v123 = type metadata accessor for PipeServiceInterface.Message(0, &v149);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = &v114 - v12;
  v126 = type metadata accessor for TransportReply(0);
  v117 = *(v126 - 8);
  v13 = MEMORY[0x28223BE20](v126);
  v127 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v118 = &v114 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v116 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v114 - v19;
  v21 = sub_25F4A25E0();
  v124 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v144 = *(v24 - 8);
  v145 = v24;
  MEMORY[0x28223BE20](v24);
  v146 = &v114 - v25;
  v27 = type metadata accessor for PipeServiceInterface.OneWayContent(0, v4, v5, v26);
  MEMORY[0x28223BE20](v27);
  v133 = &v114 - v28;
  v29 = swift_getWitnessTable();
  v149 = v4;
  v150 = v27;
  v134 = v29;
  v135 = v27;
  v151 = v5;
  v152 = v29;
  v30 = type metadata accessor for PipeServiceInterface.Message(0, &v149);
  v137 = *(v30 - 8);
  v138 = v30;
  MEMORY[0x28223BE20](v30);
  v136 = &v114 - v31;
  v33 = type metadata accessor for PipeEvent.Content(0, v4, v5, v32);
  MEMORY[0x28223BE20](v33);
  v35 = &v114 - v34;
  v36 = *v2;
  v37 = v2[2];
  v38 = v2[3];
  v139 = v2[1];
  v140 = v37;
  v40 = v2[4];
  v39 = v2[5];
  v141 = v38;
  v142 = v40;
  v143 = v39;
  v41 = v148;
  (*(v42 + 16))(v35, v148, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v115 = v20;
    v47 = v124;
    v114 = v9;
    if (EnumCaseMultiPayload)
    {
      v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0) + 48);
      v83 = v47;
      (*(v47 + 32))(v23, v35, v21);
      v84 = &v35[v82];
      v85 = v115;
      sub_25F40C8DC(v84, v115);
      v86 = v116;
      sub_25F40C94C(v85, v116);
      if ((*(v117 + 48))(v86, 1, v126) == 1)
      {
        sub_25F3F21F4(v86, &qword_27FD6DEB0, &qword_25F4AB200);
        v149 = v36;
        v150 = v139;
        v151 = v140;
        v152 = v141;
        v153 = v142;
        v154 = v143;
        v87 = v133;
        (*(v83 + 16))(v133, v23, v21);
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
        (*(*(v88 - 8) + 56))(v87, 0, 3, v88);
        v90 = type metadata accessor for PipeEvent(0, v4, v5, v89);
        v91 = v146;
        (*(v144 + 16))(v146, v148 + *(v90 + 36), v145);
        v92 = v136;
        sub_25F45D9C8(v87, v91, v4, v135, v5, v134, v136);
        v93 = v147;
        v94 = swift_getWitnessTable();
        v95 = v138;
        v96 = swift_getWitnessTable();
        TransportSenderProtocol<>.send(oneWay:)(v92, v93, v94, v96);
        (*(v137 + 8))(v92, v95);
        sub_25F3F21F4(v115, &qword_27FD6DEB0, &qword_25F4AB200);
        return (*(v83 + 8))(v23, v21);
      }

      else
      {
        v97 = v21;
        sub_25F40CA18(v86, v118);
        v149 = v36;
        v150 = v139;
        v151 = v140;
        v152 = v141;
        v153 = v142;
        v154 = v143;
        v98 = v83;
        v99 = *(v83 + 16);
        v100 = v120;
        v101 = v23;
        v102 = v23;
        v103 = v97;
        v99(v120, v102, v97);
        v104 = v114;
        swift_storeEnumTagMultiPayload();
        v106 = type metadata accessor for PipeEvent(0, v4, v5, v105);
        v107 = v146;
        (*(v144 + 16))(v146, v148 + *(v106 + 36), v145);
        v108 = v121;
        sub_25F45D9C8(v100, v107, v4, v104, v5, v119, v121);
        v109 = v147;
        v110 = swift_getWitnessTable();
        v111 = v123;
        v112 = swift_getWitnessTable();
        v113 = v118;
        TransportSenderProtocol<>.send(message:reply:)(v108, v118, v109, v110, v112);
        (*(v122 + 8))(v108, v111);
        sub_25F40C9BC(v113);
        sub_25F3F21F4(v115, &qword_27FD6DEB0, &qword_25F4AB200);
        return (*(v98 + 8))(v101, v103);
      }
    }

    else
    {
      v48 = v125;
      v49 = AssociatedTypeWitness;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v51 = *(TupleTypeMetadata3 + 48);
      v52 = *(TupleTypeMetadata3 + 64);
      v53 = v129;
      v54 = v128;
      (*(v129 + 32))(v128, v35, v48);
      (*(v131 + 32))(v130, &v35[v51], v49);
      sub_25F40CA18(&v35[v52], v127);
      v149 = v36;
      v150 = v139;
      v151 = v140;
      v152 = v141;
      v153 = v142;
      v154 = v143;
      v55 = v49;
      v56 = *(swift_getTupleTypeMetadata2() + 48);
      v57 = *(v53 + 16);
      v58 = v120;
      v59 = v48;
      v57(v120, v54, v48);
      v60 = v131;
      v61 = v130;
      (*(v131 + 16))(v58 + v56, v130, v55);
      v62 = v114;
      swift_storeEnumTagMultiPayload();
      v64 = type metadata accessor for PipeEvent(0, v4, v5, v63);
      v65 = v146;
      (*(v144 + 16))(v146, v148 + *(v64 + 36), v145);
      v66 = v121;
      sub_25F45D9C8(v58, v65, v4, v62, v5, v119, v121);
      v67 = v147;
      v68 = swift_getWitnessTable();
      v69 = v123;
      v70 = swift_getWitnessTable();
      v71 = v127;
      TransportSenderProtocol<>.send(message:reply:)(v66, v127, v67, v68, v70);
      (*(v122 + 8))(v66, v69);
      sub_25F40C9BC(v71);
      (*(v60 + 8))(v61, AssociatedTypeWitness);
      return (*(v129 + 8))(v128, v59);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v149 = v36;
      v150 = v139;
      v151 = v140;
      v152 = v141;
      v153 = v142;
      v154 = v143;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
      v45 = v133;
      (*(*(v73 - 8) + 56))(v133, 1, 3, v73);
    }

    else
    {
      v149 = v36;
      v150 = v139;
      v151 = v140;
      v152 = v141;
      v153 = v142;
      v154 = v143;
      if (EnumCaseMultiPayload == 3)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
        v45 = v133;
        (*(*(v44 - 8) + 56))(v133, 2, 3, v44);
      }

      else
      {
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
        v45 = v133;
        (*(*(v74 - 8) + 56))(v133, 3, 3, v74);
      }
    }

    v75 = type metadata accessor for PipeEvent(0, v4, v5, v46);
    v76 = v146;
    (*(v144 + 16))(v146, v41 + *(v75 + 36), v145);
    v77 = v136;
    sub_25F45D9C8(v45, v76, v4, v135, v5, v134, v136);
    v78 = v147;
    v79 = swift_getWitnessTable();
    v80 = v138;
    v81 = swift_getWitnessTable();
    TransportSenderProtocol<>.send(oneWay:)(v77, v78, v79, v81);
    return (*(v137 + 8))(v77, v80);
  }
}

uint64_t sub_25F45D574(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v19 = a3;
  v5 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  if (*(a2 + *(v5 + 120)))
  {

    sub_25F440F18(a1);
  }

  else
  {
    v14 = type metadata accessor for PipeEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
    (*(v9 + 16))(v12, v19 + *(v14 + 36), v8);
    type metadata accessor for EndpointInvalidated(0, v8, v15, v16);
    swift_getWitnessTable();
    swift_allocError();
    sub_25F40CFA0(v12, v8, v17);
    return swift_willThrow();
  }
}

char *sub_25F45D798()
{

  v1 = *(*v0 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for PipeServiceInterface(255, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for TransportEvent(255, v5, WitnessTable, v7);
  v8 = sub_25F4A2F50();
  (*(*(v8 - 8) + 8))(v0 + v1, v8);

  return v0;
}

uint64_t sub_25F45D940()
{
  sub_25F45D798();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25F45D9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v13 = *(type metadata accessor for PipeServiceInterface.Message(0, v16) + 52);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 32))(a7 + v13, a2, AssociatedTypeWitness);
}

uint64_t sub_25F45DAB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F45DB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = type metadata accessor for PipeServiceInterface.Message.Key(255, v8);
  sub_25F4A3220();
  swift_allocObject();
  v5 = sub_25F4A2D30();
  *v6 = 256;
  return sub_25F4622B0(v5, v4);
}

uint64_t sub_25F45DB74(char a1)
{
  if (a1)
  {
    return 0x74616E6974736564;
  }

  else
  {
    return 0x64616F6C796170;
  }
}

uint64_t sub_25F45DBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0980](a1, a2, a3, WitnessTable);
}

uint64_t sub_25F45DC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45DC94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F45DD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45DD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45DDE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F45DAB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25F45DE1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F45DB74(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F45DE68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25F45DB08(a1[2], a1[3], a1[4], a1[5]);
  *a2 = result;
  return result;
}

uint64_t sub_25F45DEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v47 = a1;
  v55 = a4;
  v56 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_25F4A3060();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v48 = &v42 - v10;
  v11 = sub_25F4A3060();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v46 = &v42 - v12;
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v45 = type metadata accessor for PipeServiceInterface.Message.Key(255, &v59);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = TupleTypeMetadata2;
  v57 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v19 = swift_getTupleTypeMetadata2();
  v54 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v42 - v24;
  v26 = *(v23 + 48);
  *(&v42 - v24) = 0;
  v27 = *(a3 - 8);
  v28 = v47;
  (*(v27 + 16))(&v42 + v26 - v24, v47, a3);
  v29 = *(TupleTypeMetadata2 + 48);
  v30 = v18;
  *v18 = 1;
  v59 = v56;
  v60 = a3;
  v61 = v55;
  v62 = v53;
  v31 = *(type metadata accessor for PipeServiceInterface.Message(0, &v59) + 52);
  v32 = *(AssociatedTypeWitness - 8);
  v33 = v28 + v31;
  v34 = AssociatedTypeWitness;
  (*(v32 + 16))(&v30[v29], v33);
  v35 = *(v54 + 16);
  v44 = v19;
  v35(v22, v25, v19);
  LOBYTE(v29) = *v22;
  v36 = &v22[*(v19 + 48)];
  v37 = v46;
  (*(v27 + 32))(v46, v36, a3);
  (*(v27 + 56))(v37, 0, 1, a3);
  LOBYTE(v59) = v29;
  v38 = v42;
  (*(v57 + 16))(v16, v30, v42);
  LOBYTE(v29) = *v16;
  v39 = v48;
  (*(v32 + 32))(v48, &v16[*(v38 + 48)], v34);
  (*(v32 + 56))(v39, 0, 1, v34);
  v58 = v29;
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  v40 = sub_25F4A28D0();
  (*(v51 + 8))(v39, v52);
  (*(v49 + 8))(v37, v50);
  (*(v57 + 8))(v30, v38);
  (*(v54 + 8))(v25, v44);
  return v40;
}

uint64_t sub_25F45E46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v26 = &v24 - v13;
  v28 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = a2;
  v29[1] = a3;
  v29[2] = a4;
  v29[3] = a5;
  v16 = type metadata accessor for PipeServiceInterface.Message.Key(0, v29);
  v31 = v16;
  WitnessTable = swift_getWitnessTable();
  v32 = WitnessTable;
  LOBYTE(v30[0]) = 0;
  sub_25F4A2530();
  if (v6)
  {
    v18 = sub_25F4A25E0();
    (*(*(v18 - 8) + 8))(a1, v18);
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
    (*(v28 + 32))(v33, v15, a3);
    v31 = v16;
    v32 = WitnessTable;
    LOBYTE(v30[0]) = 1;
    v20 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    v21 = v26;
    sub_25F4A2530();
    v22 = sub_25F4A25E0();
    (*(*(v22 - 8) + 8))(a1, v22);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v30[0] = a2;
    v30[1] = a3;
    v30[2] = a4;
    v31 = a5;
    v23 = type metadata accessor for PipeServiceInterface.Message(0, v30);
    return (*(v25 + 32))(v33 + *(v23 + 52), v21, v20);
  }
}

unint64_t sub_25F45E7C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F45E814(unsigned __int8 a1)
{
  v1 = 0x704F6D6165727473;
  if (a1)
  {
    v1 = 0x654D6D6165727473;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_25F45E8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45E948(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F45E9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45EA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_25F45EA94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F45E7C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25F45EAE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F45EBD4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
  result = (*(*(v4 - 8) + 48))(v2, 3, v4);
  if (result > 1)
  {
    if (result != 2)
    {
      return 3;
    }
  }

  else if (result)
  {
    return 0;
  }

  else
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(v2, v6);
    return 1;
  }

  return result;
}

uint64_t sub_25F45ED24(char a1)
{
  if (a1)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t sub_25F45ED64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45EDD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F45EE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45EEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45EF24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F45F72C(*a1, a1[1], *(a2 + 16), *(a2 + 24), &unk_287177150);
  *a3 = result;
  return result;
}

uint64_t sub_25F45EF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_25F4A25E0();
  v27 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v29 = v15;
  v30 = v16;
  v31 = v3;
  v18 = type metadata accessor for PipeServiceInterface.OneWayContent.Key(0, v15, v16, v17);
  type metadata accessor for PipeServiceInterface.OneWayContent.Discriminant(0, v15, v16, v19);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v28 = a2;
  sub_25F4A25C0();
  (*(v12 + 16))(v14, v3, a1);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
  result = (*(*(v21 - 8) + 48))(v14, 3, v21);
  if (!result)
  {
    v24 = v26;
    v23 = v27;
    (*(v27 + 32))(v26, v14, v9);
    (*(v23 + 16))(v8, v24, v9);
    (*(v23 + 56))(v8, 0, 1, v9);
    v32[3] = v18;
    v32[4] = WitnessTable;
    LOBYTE(v32[0]) = 1;
    sub_25F4A2520();
    sub_25F3F21F4(v8, &qword_27FD6DAA0, &qword_25F4A5550);
    (*(v23 + 8))(v24, v9);
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  return result;
}

uint64_t sub_25F45F2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v29 = a4;
  v9 = type metadata accessor for PipeServiceInterface.OneWayContent(0, a2, a3, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30[-1] - v11;
  v14 = type metadata accessor for PipeServiceInterface.OneWayContent.Key(0, a2, a3, v13);
  v31 = v14;
  WitnessTable = swift_getWitnessTable();
  v32 = WitnessTable;
  LOBYTE(v30[0]) = 0;
  type metadata accessor for PipeServiceInterface.OneWayContent.Discriminant(0, a2, a3, v16);
  swift_getWitnessTable();
  sub_25F4A2530();
  if (v5)
  {
    v17 = sub_25F4A25E0();
    (*(*(v17 - 8) + 8))(a1, v17);
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v19 = v12;
    v20 = v29;
    __swift_destroy_boxed_opaque_existential_1(v30);
    if (v33 > 1u)
    {
      if (v33 == 2)
      {
        v23 = sub_25F4A25E0();
        (*(*(v23 - 8) + 8))(a1, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
        return (*(*(v24 - 8) + 56))(v20, 2, 3, v24);
      }

      else
      {
        v26 = sub_25F4A25E0();
        (*(*(v26 - 8) + 8))(a1, v26);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
        return (*(*(v27 - 8) + 56))(v20, 3, 3, v27);
      }
    }

    else if (v33)
    {
      v31 = v14;
      v32 = WitnessTable;
      LOBYTE(v30[0]) = 1;
      v25 = sub_25F4A25E0();
      sub_25F4A2530();
      (*(*(v25 - 8) + 8))(a1, v25);
      __swift_destroy_boxed_opaque_existential_1(v30);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
      (*(*(v28 - 8) + 56))(v19, 0, 3, v28);
      return (*(v10 + 32))(v20, v19, v9);
    }

    else
    {
      v21 = sub_25F4A25E0();
      (*(*(v21 - 8) + 8))(a1, v21);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
      return (*(*(v22 - 8) + 56))(v20, 1, 3, v22);
    }
  }
}

uint64_t sub_25F45F72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_25F4A3170();

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F45F77C(char a1)
{
  if (a1)
  {
    return 0x654D6D6165727473;
  }

  else
  {
    return 0x7453657461657263;
  }
}

uint64_t sub_25F45F7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45F860(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F45F8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45F93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45F9AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F45F72C(*a1, a1[1], *(a2 + 16), *(a2 + 24), &unk_2871771A0);
  *a3 = result;
  return result;
}

uint64_t sub_25F45FA04@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, *(a1 + 16), *(a1 + 24));
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_25F45FA40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, WitnessTable, v5);
}

BOOL sub_25F45FB30(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    AssociatedTypeWitness = sub_25F4A25E0();
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(v6 - 8) + 8))(&v2[*(TupleTypeMetadata2 + 48)], v6);
  }

  (*(*(AssociatedTypeWitness - 8) + 8))(v2, AssociatedTypeWitness);
  return EnumCaseMultiPayload == 1;
}

unint64_t sub_25F45FD28(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F45FD74(unsigned __int8 a1)
{
  v1 = 0x696D697263736964;
  v2 = 0x64616F6C796170;
  if (a1 != 2)
  {
    v2 = 0x6567617373656DLL;
  }

  if (a1)
  {
    v1 = 0x6E696769726FLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F45FDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45FE68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F45FED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F45FF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_25F45FFB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F45FD28(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25F460004@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, *(a1 + 16), *(a1 + 24));
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_25F460048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = sub_25F4A25E0();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v40 - v7;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = AssociatedTypeWitness;
  v11 = swift_getAssociatedTypeWitness();
  v44 = sub_25F4A3060();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v40 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v46 = &v40 - v15;
  v40 = *(v11 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v49 = &v40 - v17;
  v18 = *(a1 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v9;
  v57 = v8;
  v58 = v2;
  v22 = type metadata accessor for PipeServiceInterface.TwoWayContent.Key(0, v9, v8, v21);
  type metadata accessor for PipeServiceInterface.TwoWayContent.Discriminant(0, v9, v8, v23);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v48 = WitnessTable;
  sub_25F4A25C0();
  (*(v18 + 16))(v20, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v53;
    v25 = v54;
    v27 = v47;
    (*(v53 + 32))(v47, v20, v54);
    v28 = v52;
    (*(v26 + 16))(v52, v27, v25);
    (*(v26 + 56))(v28, 0, 1, v25);
    v60 = v22;
    v61 = v48;
    LOBYTE(v59[0]) = 3;
    sub_25F4A2520();
    sub_25F3F21F4(v28, &qword_27FD6DAA0, &qword_25F4A5550);
    (*(v26 + 8))(v27, v25);
  }

  else
  {
    v29 = v11;
    v30 = v51;
    v31 = *(swift_getTupleTypeMetadata2() + 48);
    v32 = v40;
    v33 = v49;
    (*(v40 + 32))(v49, v20, v29);
    v34 = &v20[v31];
    v35 = v46;
    (*(v50 + 32))(v46, v34, v30);
    v36 = v41;
    (*(v32 + 16))(v41, v33, v29);
    (*(v32 + 56))(v36, 0, 1, v29);
    v37 = v48;
    v60 = v22;
    v61 = v48;
    LOBYTE(v59[0]) = 1;
    swift_getAssociatedConformanceWitness();
    sub_25F4A2520();
    (*(v43 + 8))(v36, v44);
    __swift_destroy_boxed_opaque_existential_1(v59);
    v38 = v52;
    (*(v8 + 56))(v35, v9, v8);
    (*(v53 + 56))(v38, 0, 1, v54);
    v60 = v22;
    v61 = v37;
    LOBYTE(v59[0]) = 2;
    sub_25F4A2520();
    sub_25F3F21F4(v38, &qword_27FD6DAA0, &qword_25F4A5550);
    (*(v50 + 8))(v35, v51);
    (*(v32 + 8))(v49, v29);
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_25F46076C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v44 = sub_25F4A25E0();
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PipeServiceInterface.TwoWayContent(0, a2, a3, v9);
  v11 = *(v10 - 8);
  v40 = v10;
  v41 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v18 = type metadata accessor for PipeServiceInterface.TwoWayContent.Key(0, a2, a3, v17);
  v46 = v18;
  WitnessTable = swift_getWitnessTable();
  v47 = WitnessTable;
  LOBYTE(v45[0]) = 0;
  type metadata accessor for PipeServiceInterface.TwoWayContent.Discriminant(0, a2, a3, v20);
  swift_getWitnessTable();
  v21 = v43;
  sub_25F4A2530();
  if (v21)
  {
    (*(v7 + 8))(a1, v44);
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v23 = a2;
  v37 = v16;
  v38 = 0;
  v43 = v7;
  v24 = a1;
  __swift_destroy_boxed_opaque_existential_1(v45);
  if (v48)
  {
    v46 = v18;
    v47 = WitnessTable;
    LOBYTE(v45[0]) = 3;
    v25 = v44;
    v26 = v38;
    sub_25F4A2530();
    if (v26)
    {
      (*(v43 + 8))(a1, v25);
      return __swift_destroy_boxed_opaque_existential_1(v45);
    }

    (*(v43 + 8))(a1, v25);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v31 = v40;
    swift_storeEnumTagMultiPayload();
    v29 = v14;
  }

  else
  {
    v36 = v18;
    v46 = v18;
    v47 = WitnessTable;
    v27 = WitnessTable;
    LOBYTE(v45[0]) = 1;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v29 = v37;
    v28 = v38;
    sub_25F4A2530();
    v30 = v44;
    if (v28)
    {
      (*(v43 + 8))(a1, v44);
      return __swift_destroy_boxed_opaque_existential_1(v45);
    }

    v38 = v23;
    __swift_destroy_boxed_opaque_existential_1(v45);
    v46 = v36;
    v47 = v27;
    LOBYTE(v45[0]) = 2;
    v32 = v39;
    sub_25F4A2530();
    v33 = a3;
    v34 = v38;
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    __swift_destroy_boxed_opaque_existential_1(v45);
    (*(v33 + 64))(v32, v34, v33);
    v35 = *(v43 + 8);
    v35(v24, v30);
    v35(v32, v30);
    v31 = v40;
    swift_storeEnumTagMultiPayload();
  }

  return (*(v41 + 32))(v42, v29, v31);
}

uint64_t sub_25F460D4C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F460E10(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  *a1 = 0;
  v8 = type metadata accessor for PipeServiceInterface.OneWayContent(0, v6, v7, a4);
  result = sub_25F45EBD4(v8);
  *a2 = result;
  return result;
}

BOOL sub_25F460E94(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  *a1 = 0;
  v8 = type metadata accessor for PipeServiceInterface.TwoWayContent(0, v6, v7, a4);
  result = sub_25F45FB30(v8);
  *a2 = result;
  return result;
}

uint64_t sub_25F460EF8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F460F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*v4 + 80);
  v8 = *(*v4 + 88);
  v9 = type metadata accessor for PipeEvent.Content(0, v7, v8, a4);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v35 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v34 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v18 = *(v10 + 16);
  v36 = a1;
  v18(v12, a1, v9);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v20 = swift_getAssociatedTypeWitness();
    type metadata accessor for TransportReply(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v33 = *(TupleTypeMetadata3 + 48);
    v22 = *(TupleTypeMetadata3 + 64);
    v23 = v35;
    (*(v35 + 32))(v17, v12, AssociatedTypeWitness);
    sub_25F40C9BC(&v12[v22]);
    (*(*(v20 - 8) + 8))(&v12[v33], v20);
    (*(v23 + 16))(v34, v17, AssociatedTypeWitness);
    swift_beginAccess();
    sub_25F4A2E20();
    sub_25F4A2DF0();
    swift_endAccess();
    (*(v23 + 8))(v17, AssociatedTypeWitness);
  }

  v24 = (v5 + *(*v5 + 112));
  v26 = v24[3];
  v25 = v24[4];
  v27 = v24[5];
  v37 = *v24;
  v35 = *(v24 + 1);
  v38 = v35;
  v39 = v26;
  v40 = v25;
  v41 = v27;
  v28 = type metadata accessor for PipeServiceInterface(255, v7, v8, v19);

  WitnessTable = swift_getWitnessTable();
  v31 = type metadata accessor for TransportSender(0, v28, WitnessTable, v30);
  sub_25F45C624(v36, v31);
}

uint64_t sub_25F4613B4(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F461454(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = a3[3];
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_25F4616CC(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[3];
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_25F4619D0(uint64_t a1)
{
  sub_25F461B58();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_25F461A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F461AC8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6F0E8, &unk_25F4AE768);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

void sub_25F461B58()
{
  if (!qword_27FD6F470[0])
  {
    v0 = sub_25F4A25E0();
    if (!v1)
    {
      atomic_store(v0, qword_27FD6F470);
    }
  }
}

void sub_25F461BA0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    sub_25F461B58();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_25F461CBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = ((v5 + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64);
  v8 = *(*(sub_25F4A25E0() - 8) + 64);
  if (v8 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 254) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = *(a1 + v9);
      if (v16 >= 2)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 255;
}

void sub_25F461EE8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = ((v7 + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = *(*(sub_25F4A25E0() - 8) + 64);
  if (v10 <= v9)
  {
    v10 = v9;
  }

  v11 = v10 + 1;
  if (a3 < 0xFF)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 254) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFE)
  {
    v13 = a2 - 255;
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_39:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v10] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_24;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25F4622DC(void *a1)
{
  v2 = *v1;
  v20[1] = v1 + 4;
  v21 = v2;
  v3 = v2;
  v22 = *a1;
  v23 = a1;
  v4 = sub_25F4A2120();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  sub_25F4A2110();
  v24 = 0x2068636E617262;
  v25 = 0xE700000000000000;
  sub_25F46A788(&qword_27FD6E928, MEMORY[0x277D403C0]);
  v11 = sub_25F4A3210();
  MEMORY[0x25F8DD480](v11);

  v12 = v24;
  v13 = v25;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_25F4634D0(v12, v13, v3, WitnessTable);

  (*(v5 + 16))(v8, v10, v4);
  v26 = sub_25F46708C(v15, v3, WitnessTable);
  v27 = v16;
  swift_beginAccess();
  type metadata accessor for Junction(255, *(v21 + 80), *(v21 + 88), v17);
  v18 = v23;
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  sub_25F46A788(&qword_27FD6F608, MEMORY[0x277D403B0]);
  sub_25F4A2BA0();
  sub_25F4A2BC0();
  swift_endAccess();
  sub_25F440BC0(v15, v18);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_25F462610()
{
  v1 = v0;
  v2 = swift_allocObject();
  sub_25F466974();
  WitnessTable = swift_getWitnessTable();
  sub_25F4629D0(v1, WitnessTable);
  return v2;
}

void *sub_25F462678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_allocObject();

  v10 = sub_25F463C40(a1, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  sub_25F4629D0(v5, WitnessTable);
  return v10;
}

uint64_t sub_25F462728@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

void *sub_25F4629D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Junction(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v10 = *(v6 + 8);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v3;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v3;
  v13 = swift_unknownObjectRetain();
  v14 = sub_25F440E98(v13, v10, 0x6B6E757274, 0xE500000000000000, sub_25F46A760, v11, sub_25F46A6EC, v12);
  v15 = *(a2 + 24);
  swift_unknownObjectRetain_n();

  v15(v16, a1, a2);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v3;
  swift_unknownObjectRetain();
  sub_25F4A28F0();

  return v14;
}

uint64_t sub_25F462C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v33 = a1;
  v34 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for PipeEvent.Content(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v29 = type metadata accessor for TransportReply(0);
  MEMORY[0x28223BE20](v29);
  v30 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_getAssociatedTypeWitness();
  v31 = *(v13 - 8);
  v32 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - v18;
  v20 = v33;
  (*(v9 + 16))(v11);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v9 + 8))(v11, v8);
    return sub_25F463094(v20, v34, v35);
  }

  else
  {
    v22 = v17;
    v23 = v32;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v25 = *(TupleTypeMetadata3 + 48);
    v28 = *(TupleTypeMetadata3 + 64);
    v29 = v22;
    (*(v22 + 32))(v19, v11, v16);
    (*(v31 + 32))(v15, &v11[v25], v23);
    v26 = v30;
    sub_25F40CA18(&v11[v28], v30);
    (*(v35 + 80))(v20, a2, v19, v15, v26, v34);
    sub_25F40C9BC(v26);
    (*(v31 + 8))(v15, v32);
    return (*(v29 + 8))(v19, v16);
  }
}

uint64_t sub_25F463094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  if ((*(a3 + 16))(a2, a3))
  {
    sub_25F440F18(a1);
  }

  else
  {
    v14 = type metadata accessor for PipeEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
    (*(v9 + 16))(v11, a1 + *(v14 + 36), v8);
    type metadata accessor for EndpointInvalidated(0, v8, v15, v16);
    swift_getWitnessTable();
    swift_allocError();
    sub_25F40CFA0(v11, v8, v17);
    return swift_willThrow();
  }
}

uint64_t sub_25F4632CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v13 = *(type metadata accessor for PipeEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12) + 36);
  if ((*(a3 + 40))(a1 + v13, a2, a3))
  {

    sub_25F440F18(a1);
  }

  else
  {
    (*(v9 + 16))(v11, a1 + v13, v8);
    type metadata accessor for EndpointInvalidated(0, v8, v15, v16);
    swift_getWitnessTable();
    swift_allocError();
    sub_25F40CFA0(v11, v8, v17);
    return swift_willThrow();
  }
}

void *sub_25F4634D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Junction(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v14 = *(v10 + 8);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v5;
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = v5;
  v17 = swift_unknownObjectRetain();
  v18 = sub_25F440E98(v17, v14, a1, a2, sub_25F468E38, v15, sub_25F468D78, v16);
  swift_unknownObjectRetain_n();

  return v18;
}

uint64_t sub_25F463624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a4;
  v10[5] = a3;
  swift_unknownObjectRetain();

  sub_25F4A28F0();
}

uint64_t sub_25F4636E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 48))();
  if (result)
  {
    v7 = v6;
    v8 = *(a3 + 56);
    v9 = result;

    v8(v9, v7, a2, a3);

    v10 = sub_25F441228();
    MEMORY[0x28223BE20](v10);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_25F4A2E20();
    swift_getWitnessTable();
    sub_25F4A2CF0();
  }

  return result;
}

uint64_t sub_25F4638F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v26 = a2;
  v23 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedTypeWitness();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v21 - v7;
  v10 = type metadata accessor for PipeEvent.Content(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v14 = type metadata accessor for PipeEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v21 - v16;
  swift_storeEnumTagMultiPayload();
  (*(v6 + 16))(v8, v23, v22);
  sub_25F40BD68(v12, v8, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  v18 = swift_allocObject();
  v19 = v25;
  v18[2] = v24;
  v18[3] = v19;
  v18[4] = v26;
  swift_unknownObjectRetain();
  sub_25F40C854(sub_25F468E10);
  (*(v15 + 8))(v17, v14);
}

void *sub_25F463C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  sub_25F4A2990();
  swift_allocObject();
  v4[6] = sub_25F4A2980();
  v4[7] = 0;
  v9 = v8[11];
  type metadata accessor for Junction(255, v8[10], v8[12], v10);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v12 = sub_25F4A2DB0();
  v13 = v8[13];
  v14 = sub_25F467170(v12, v9, TupleTypeMetadata2, v13);

  v5[8] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
  swift_getTupleTypeMetadata2();
  v16 = sub_25F4A2DB0();
  v17 = sub_25F467170(v16, v9, v15, v13);

  v5[9] = v17;
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  return v5;
}

uint64_t sub_25F463EA0(uint64_t a1)
{
  v2 = *v1;
  v11[0] = *(*v1 + 11);
  v3 = *(v11[0] - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v11 - v5;
  v1[2](v4);
  swift_beginAccess();
  type metadata accessor for Junction(255, v2[10], v2[12], v7);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  v8 = v11[0];
  sub_25F4A2BB0();
  v9 = v11[1];
  swift_endAccess();
  (*(v3 + 8))(v6, v8);
  return v9;
}

uint64_t sub_25F4640B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 88);
  type metadata accessor for Junction(255, *(*v4 + 80), *(*v4 + 96), a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_25F4A3060();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  sub_25F464310(a1, v12, &v15 - v10);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v11, 1, TupleTypeMetadata2) == 1)
  {
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  else
  {
    v13 = *&v11[*(TupleTypeMetadata2 + 48)];
    (*(*(v6 - 8) + 8))(v11, v6);
  }

  return v13;
}

uint64_t sub_25F464310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v17 = a3;
  v5 = *v3;
  v6 = *(*v3 + 96);
  v18 = *(*v3 + 80);
  type metadata accessor for Junction(255, v18, v6, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v7 = sub_25F4A3060();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  swift_beginAccess();
  v36 = v3[8];
  v33 = *(&v18 + 1);
  v11 = *(v5 + 104);
  v34 = v11;
  v35 = a1;
  *&v12 = v6;
  *(&v12 + 1) = v11;
  v28 = v18;
  v29 = v12;
  v30 = sub_25F46A54C;
  v31 = &v32;
  sub_25F4A2BA0();

  swift_getWitnessTable();
  sub_25F4A2CE0();

  v26 = *(&v18 + 1);
  v27 = v11;
  v20 = v18;
  v21 = v6;
  v22 = v11;
  v23 = sub_25F46A584;
  v24 = &v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_25F462728(sub_25F46A5F4, v19, MEMORY[0x277D84A98], TupleTypeMetadata2, v14, v17);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_25F464690(uint64_t a1, uint64_t (*a2)(uint64_t, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Junction(255, a4, a6, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8)) & 1;
}

uint64_t sub_25F4647C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  type metadata accessor for Junction(255, a3, a5, a3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  v9 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v10 = *v9;
  v11 = v9[1];
  v12 = (a6 + *(swift_getTupleTypeMetadata2() + 48));
  result = a2(a6, a1, v10, v11);
  *v12 = result;
  v12[1] = v14;
  return result;
}

uint64_t sub_25F46492C(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v16 = a1;
  v3 = *v2;
  v4 = *(*v2 + 88);
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v19 = &v15 - v5;
  v6 = *(v3 + 96);
  v7 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v15 - v10;
  swift_beginAccess();
  type metadata accessor for Junction(255, v7, v6, v12);
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  v18 = v4;
  sub_25F4A2BB0();
  v13 = v21;
  if (!v21)
  {
    return swift_endAccess();
  }

  v23 = v22;
  swift_endAccess();
  (*(v9 + 16))(v11, v16, AssociatedTypeWitness);
  sub_25F4A2DF0();
  (*(v17 + 16))(v19, v20, v18);
  v21 = v13;
  v22 = v23;
  swift_beginAccess();
  sub_25F4A2BA0();

  sub_25F4A2BC0();
  swift_endAccess();
}

uint64_t sub_25F464C64()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for Junction(255, *(v1 + 80), *(v1 + 96), v2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  sub_25F4A2BA0();
  sub_25F4A2B90();
  return swift_endAccess();
}

uint64_t sub_25F464DD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v68 = *a2;
  v7 = v68;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F5F8, &unk_25F4AEF20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - v9;
  v11 = sub_25F4A2AE0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25F4A2A70();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v7[11] - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v23 = &v57 - v22;
  v69 = *a1;
  LOBYTE(v22) = *(a1 + 8);
  v66 = v20;
  v67 = a3;
  v65 = v24;
  v63 = v21;
  if (v22)
  {
    v60 = a2;
    v61 = v23;
    _s19PreviewsMessagingOS14TransportReplyV13loggingResult6logger5level3forAC2os6LoggerV_So0K11_log_type_taSStFfA__0();
    v25 = v69;
    v26 = v69;
    v27 = sub_25F4A2AD0();
    v28 = sub_25F4A3010();
    sub_25F468D34(v25, 1);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62 = v10;
      v31 = v30;
      *v29 = 138412290;
      v32 = v69;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_25F3DE000, v27, v28, "Branching fork failed to create new branch: %@", v29, 0xCu);
      sub_25F3F21F4(v31, &qword_27FD6DEC8, &qword_25F4AB2B0);
      v34 = v31;
      v10 = v62;
      MEMORY[0x25F8DE250](v34, -1, -1);
      MEMORY[0x25F8DE250](v29, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
    v72 = *(v64 + *(v35 + 48));
    sub_25F4A2A80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E500, &qword_25F4AEF30);
    sub_25F428848();
    sub_25F4A2670();
    (*(v65 + 8))(v18, v66);
    (*(v19 + 16))(v61, v67, v63);
  }

  else
  {
    v72 = 0;
    v73 = 0xE000000000000000;
    v36 = v21;
    v61 = v18;
    MEMORY[0x25F8DD480](0x2068636E617262, 0xE700000000000000);
    v37 = a3;
    v38 = v36;
    sub_25F4A3240();
    v39 = v72;
    v40 = v73;
    v41 = v68[10];
    v42 = v68[12];
    v58 = v68[13];
    v72 = v41;
    v73 = v38;
    v74 = v42;
    v75 = v58;
    v43 = type metadata accessor for BranchingFork(0, &v72);
    WitnessTable = swift_getWitnessTable();
    v62 = v10;
    v45 = WitnessTable;
    v46 = sub_25F4634D0(v39, v40, v43, WitnessTable);
    v57 = v46;

    v47 = sub_25F46708C(v46, v43, v45);
    v49 = v48;
    v59 = *(v19 + 16);
    v60 = ((v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v50 = v37;
    v51 = v63;
    v59(v23, v50, v63);
    v70 = v47;
    v71 = v49;
    swift_beginAccess();
    type metadata accessor for Junction(255, v41, v42, v52);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_25F4A2E20();

    swift_getTupleTypeMetadata2();
    sub_25F4A2BA0();
    sub_25F4A2BC0();
    swift_endAccess();
    sub_25F440BC0(v57, v69);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
    v72 = *(v64 + *(v53 + 48));
    v54 = v61;
    sub_25F4A2A80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E500, &qword_25F4AEF30);
    sub_25F428848();
    sub_25F4A2680();
    v10 = v62;

    (*(v65 + 8))(v54, v66);
    v59(v23, v67, v51);
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
  (*(*(v55 - 8) + 56))(v10, 1, 1, v55);
  swift_beginAccess();
  sub_25F4A2BA0();
  sub_25F4A2BC0();
  return swift_endAccess();
}

uint64_t sub_25F465564(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v9 = *a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v32);
  v11 = (&v30 - v10);
  v12 = sub_25F4A2A70();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x28223BE20](v12);
  v31 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F4A2AE0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v18 = *a1;
    _s19PreviewsMessagingOS14TransportReplyV13loggingResult6logger5level3forAC2os6LoggerV_So0K11_log_type_taSStFfA__0();
    v19 = v18;
    v20 = sub_25F4A2AD0();
    v21 = sub_25F4A3010();
    sub_25F468CA4(v18, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v18;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_25F3DE000, v20, v21, "Fork failed to create new branch: %@", v22, 0xCu);
      sub_25F3F21F4(v23, &qword_27FD6DEC8, &qword_25F4AB2B0);
      MEMORY[0x25F8DE250](v23, -1, -1);
      MEMORY[0x25F8DE250](v22, -1, -1);
    }

    (*(v15 + 8))(v17, v14);
    v26 = v31;
    sub_25F4A2A80();
    *v11 = v18;
    swift_storeEnumTagMultiPayload();
    v27 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
    sub_25F4A2410();
    sub_25F3F21F4(v11, &qword_27FD6DEB8, &unk_25F4A8D20);
    return (*(v33 + 8))(v26, v34);
  }

  else
  {
    sub_25F46492C(a3, a4);
    type metadata accessor for PipeEvent(0, *(v9 + 80), *(v9 + 96), v29);
    return sub_25F40C854(sub_25F468CB0);
  }
}

void *sub_25F465924()
{

  return v0;
}

uint64_t sub_25F46596C()
{
  sub_25F465924();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_25F465A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0980](a1, a2, a3, WitnessTable);
}

uint64_t sub_25F465AD4()
{
  v0 = swift_allocObject();
  sub_25F466974();
  return v0;
}

uint64_t sub_25F465B0C(uint64_t a1)
{
  v2 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F600, &qword_25F4AEF38);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v15 - v4;
  v6 = sub_25F4A2120();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v15[0] = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v2 + 88);
  v10 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25F4A2BB0();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25F3F21F4(v5, &qword_27FD6F600, &qword_25F4AEF38);
    swift_endAccess();
    return 0;
  }

  else
  {
    v12 = v15[0];
    (*(v7 + 32))(v15[0], v5, v6);
    swift_endAccess();
    swift_beginAccess();
    type metadata accessor for Junction(255, v10, v9, v13);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_25F4A2E20();
    swift_getTupleTypeMetadata2();
    sub_25F46A788(&qword_27FD6F608, MEMORY[0x277D403B0]);
    sub_25F4A2BB0();
    v11 = v15[1];
    swift_endAccess();
    (*(v7 + 8))(v12, v6);
  }

  return v11;
}

uint64_t sub_25F465E60(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_25F4A2120();
  type metadata accessor for Junction(255, *(v3 + 80), *(v3 + 88), v5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_25F4A3060();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  sub_25F4660B8(a1, &v13 - v9);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v10, 1, TupleTypeMetadata2) == 1)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  else
  {
    v11 = *&v10[*(TupleTypeMetadata2 + 48)];
    (*(*(v4 - 8) + 8))(v10, v4);
  }

  return v11;
}

uint64_t sub_25F4660B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = *v2;
  sub_25F4A2120();
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  type metadata accessor for Junction(255, v5, v6, v7);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v8 = sub_25F4A3060();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  swift_beginAccess();
  v26 = v2[4];
  v22 = v5;
  v23 = v6;
  v24 = sub_25F46A61C;
  v25 = a1;
  sub_25F46A788(&qword_27FD6F608, MEMORY[0x277D403B0]);
  sub_25F4A2BA0();

  swift_getWitnessTable();
  sub_25F4A2CE0();

  v18 = v5;
  v19 = v6;
  v20 = sub_25F46A64C;
  v21 = 0;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_25F462728(sub_25F46A650, v17, MEMORY[0x277D84A98], TupleTypeMetadata2, v13, v16);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_25F4663C0()
{
  v1 = *v0;
  swift_beginAccess();
  sub_25F4A2120();
  type metadata accessor for Junction(255, *(v1 + 80), *(v1 + 88), v2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  sub_25F46A788(&qword_27FD6F608, MEMORY[0x277D403B0]);
  sub_25F4A2BA0();
  sub_25F4A2B90();
  swift_endAccess();
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25F4A2BA0();
  sub_25F4A2B90();
  return swift_endAccess();
}

uint64_t sub_25F4665BC(uint64_t a1, uint64_t (*a2)(uint64_t, void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25F4A2120();
  type metadata accessor for Junction(255, a4, a5, v9);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8)) & 1;
}

uint64_t sub_25F4666F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25F4A2120();
  (*(*(v7 - 8) + 16))(a1, a2, v7);

  return a3;
}

uint64_t sub_25F46677C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_25F4A2120();
  type metadata accessor for Junction(255, a3, a4, v10);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  v11 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v12 = *v11;
  v13 = v11[1];
  v14 = (a5 + *(swift_getTupleTypeMetadata2() + 48));
  result = a2(a5, a1, v12, v13);
  *v14 = result;
  v14[1] = v16;
  return result;
}

void *sub_25F4668F0()
{

  return v0;
}

uint64_t sub_25F466928()
{
  sub_25F4668F0();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void *sub_25F466974()
{
  v1 = v0;
  v2 = *v0;
  sub_25F4A2990();
  swift_allocObject();
  v0[2] = sub_25F4A2980();
  v0[3] = 0;
  v3 = sub_25F4A2120();
  type metadata accessor for Junction(255, *(v2 + 80), *(v2 + 88), v4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v6 = sub_25F4A2DB0();
  v7 = sub_25F46A788(&qword_27FD6F608, MEMORY[0x277D403B0]);
  v8 = sub_25F467170(v6, v3, TupleTypeMetadata2, v7);

  v1[4] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v10 = sub_25F4A2DB0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_25F467170(v10, AssociatedTypeWitness, v3, AssociatedConformanceWitness);

  v1[5] = v12;
  return v1;
}

uint64_t sub_25F466C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0980](a1, a2, a3, WitnessTable);
}

uint64_t sub_25F466C94(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F466CD0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F466D0C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F466D64(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F466DA0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F466DDC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F466E34(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F610, &unk_25F4AEF40);
  }

  else
  {

    return sub_25F4A3220();
  }
}

unint64_t sub_25F466EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F4A2BD0();

  return sub_25F466F04(a1, v6, a2, a3);
}

unint64_t sub_25F466F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_25F4A2C00();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_25F46708C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();

  sub_25F4A2DB0();
  return a1;
}

unint64_t sub_25F467170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_25F4A2DE0())
  {
    sub_25F4A3160();
    v13 = sub_25F4A3150();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_25F4A2DE0();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_25F4A2DD0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_25F4A3100();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_25F466EA8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_25F46745C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v110 = a3;
  v126 = a2;
  v131 = a1;
  v116 = *v3;
  v5 = v116;
  v6 = type metadata accessor for TransportReply(0);
  v109 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v111 = v7;
  v121 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v116 + 80);
  v122 = v116;
  v9 = *(v116 + 96);
  v127 = v8;
  v11 = type metadata accessor for PipeEvent(0, v8, v9, v10);
  v112 = *(v11 - 8);
  v108 = *(v112 + 64);
  MEMORY[0x28223BE20](v11);
  v119 = v91 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v128 = swift_getAssociatedTypeWitness();
  v107 = *(v128 - 8);
  v106 = *(v107 + 64);
  MEMORY[0x28223BE20](v128);
  v118 = v91 - v15;
  type metadata accessor for Junction(255, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v102 = sub_25F4A2510();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v105 = v91 - v17;
  v98 = sub_25F4A2A70();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
  v100 = *(v113 - 8);
  v19 = *(v100 + 64);
  v20 = MEMORY[0x28223BE20](v113);
  v94 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v114 = v91 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F5F8, &unk_25F4AEF20);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v96 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v104 = (v91 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
  v124 = *(v26 - 8);
  v125 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v117 = v91 - v28;
  v29 = *(v5 + 88);
  v123 = *(v29 - 8);
  v30 = *(v123 + 64);
  v31 = MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v31);
  v33 = v91 - v32;
  v34 = v4[2];
  v120 = v11;
  v34(v131 + *(v11 + 36));
  swift_beginAccess();
  v115 = v9;
  type metadata accessor for Junction(255, v127, v9, v35);
  sub_25F4A2E20();
  v36 = v29;
  v37 = v4;
  swift_getTupleTypeMetadata2();
  v38 = *(v122 + 104);
  sub_25F4A2BB0();
  v39 = v129;
  v40 = v130;
  swift_endAccess();
  if (v39)
  {
    sub_25F468C64(v39, v40);
    sub_25F46492C(v126, v33);
    v41 = v116;
    WitnessTable = swift_getWitnessTable();
    sub_25F4632CC(v131, v41, WitnessTable);
    return (*(v123 + 8))(v33, v36);
  }

  else
  {
    v44 = v113;
    v91[1] = v19;
    v116 = v30;
    v103 = v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = v123;
    swift_beginAccess();
    v92 = v37;
    v46 = v104;
    v47 = v125;
    v122 = v38;
    sub_25F4A2BB0();
    v48 = (*(v124 + 48))(v46, 1, v47);
    v93 = v33;
    if (v48 == 1)
    {
      sub_25F3F21F4(v46, &qword_27FD6F5F8, &unk_25F4AEF20);
      swift_endAccess();
      v49 = *(v44 + 48);
      v50 = v95;
      sub_25F4A2A80();
      v51 = v114;
      v52 = sub_25F4A24E0();
      (*(v97 + 8))(v50, v98);
      *(v51 + v49) = v52;
      v53 = v45;
      v104 = *(v45 + 16);
      v104(v103, v33, v36);
      v54 = v94;
      sub_25F46825C(v51, v94);

      v91[0] = v36;
      v55 = v124;
      v99 = *(v124 + 32);
      v56 = v96;
      v57 = v125;
      v99(v96, v54, v125);
      (*(v55 + 56))(v56, 0, 1, v57);
      v58 = v92;
      swift_beginAccess();
      sub_25F4A2BA0();
      v59 = v103;
      sub_25F4A2BC0();
      swift_endAccess();
      v60 = v114;
      sub_25F46825C(v114, v54);

      v61 = v57;
      v62 = v93;
      v99(v117, v54, v61);
      (v58[4])(v126, v62);
      v63 = v59;
      v64 = v59;
      v65 = v91[0];
      v104(v63, v62, v91[0]);
      sub_25F46825C(v60, v54);
      v66 = (*(v53 + 80) + 56) & ~*(v53 + 80);
      v67 = (v116 + *(v100 + 80) + v66) & ~*(v100 + 80);
      v68 = swift_allocObject();
      *&v69 = v127;
      *(&v69 + 1) = v65;
      *&v70 = v115;
      *(&v70 + 1) = v122;
      *(v68 + 16) = v69;
      *(v68 + 32) = v70;
      *(v68 + 48) = v58;
      (*(v53 + 32))(v68 + v66, v64, v65);
      sub_25F468450(v54, v68 + v67);

      v71 = v102;
      v72 = v105;
      sub_25F4A24B0();

      v73 = v71;
      v74 = v64;
      v33 = v93;
      (*(v101 + 8))(v72, v73);
      sub_25F3F21F4(v114, &qword_27FD6E468, &qword_25F4A8F58);
      v75 = v126;
      v76 = v120;
      v77 = v121;
      v78 = v131;
      v79 = v112;
    }

    else
    {
      (*(v124 + 32))(v117, v46, v125);
      swift_endAccess();
      v76 = v120;
      v77 = v121;
      v78 = v131;
      v65 = v36;
      v79 = v112;
      v75 = v126;
      v53 = v45;
      v74 = v103;
    }

    v80 = v107;
    (*(v107 + 16))(v118, v75, v128);
    (*(v53 + 16))(v74, v33, v65);
    (*(v79 + 16))(v119, v78, v76);
    sub_25F412F00(v110, v77);
    v81 = (*(v80 + 80) + 56) & ~*(v80 + 80);
    v82 = (v106 + *(v53 + 80) + v81) & ~*(v53 + 80);
    v83 = (v116 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v131 = (v108 + *(v109 + 80) + v83) & ~*(v109 + 80);
    v84 = v53;
    v85 = swift_allocObject();
    *&v86 = v127;
    v87 = v65;
    *(&v86 + 1) = v65;
    *&v88 = v115;
    *(&v88 + 1) = v122;
    *(v85 + 16) = v86;
    *(v85 + 32) = v88;
    *(v85 + 48) = v92;
    (*(v80 + 32))(v85 + v81, v118, v128);
    (*(v84 + 32))(v85 + v82, v103, v65);
    (*(v79 + 32))(v85 + v83, v119, v120);
    sub_25F40CA18(v121, v85 + v131);

    v89 = v125;
    v90 = v117;
    sub_25F4A24B0();

    (*(v124 + 8))(v90, v89);
    return (*(v84 + 8))(v93, v87);
  }
}

uint64_t sub_25F46825C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4682CC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v3 | v7;

  (*(v2 + 8))(v0 + v4, v1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F468450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4684C0(uint64_t a1)
{
  v3 = (*(*(*(v1 + 24) - 8) + 80) + 56) & ~*(*(*(v1 + 24) - 8) + 80);
  v4 = *(*(*(v1 + 24) - 8) + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58) - 8);
  v6 = *(v1 + 48);
  v7 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_25F464DD8(a1, v6, v1 + v3, v7);
}

uint64_t sub_25F4685A0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v32 = v2;
  v3 = *(v0 + 4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v39 = *(v5 + 80);
  v6 = (v39 + 56) & ~v39;
  v7 = *(v2 - 8);
  v8 = v7;
  v37 = *(v7 + 80);
  v9 = (v6 + *(v5 + 64) + v37) & ~v37;
  v10 = *(v7 + 64);
  v12 = type metadata accessor for PipeEvent(0, v1, v3, v11);
  v35 = *(*(v12 - 8) + 80);
  v36 = v12;
  v13 = (v9 + v10 + v35) & ~v35;
  v34 = *(*(v12 - 8) + 64);
  v14 = type metadata accessor for TransportReply(0);
  v30 = *(v14 - 8);
  v31 = v14;
  v33 = *(v30 + 80);
  v38 = *(v30 + 64);

  v15 = *(v5 + 8);
  v15(&v0[v6], AssociatedTypeWitness);
  (*(v8 + 8))(&v0[v9], v32);
  v16 = v13;
  v17 = &v0[v13];
  type metadata accessor for PipeEvent.Content(0, v1, v3, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v23 = sub_25F4A25E0();
    (*(*(v23 - 8) + 8))(&v0[v13], v23);
    v22 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0) + 48)];
    if ((*(v30 + 48))(v22, 1, v31))
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }

    v15(&v0[v13], AssociatedTypeWitness);
    v20 = swift_getAssociatedTypeWitness();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*(*(v20 - 8) + 8))(&v17[*(TupleTypeMetadata3 + 48)], v20);
    v22 = &v17[*(TupleTypeMetadata3 + 64)];
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  (*(*(v24 - 8) + 8))(v22, v24);
LABEL_6:
  v25 = (v16 + v34 + v33) & ~v33;
  v26 = *(v36 + 36);
  v27 = swift_getAssociatedTypeWitness();
  (*(*(v27 - 8) + 8))(&v17[v26], v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  (*(*(v28 - 8) + 8))(&v0[v25], v28);

  return MEMORY[0x2821FE8E8](v0, v25 + v38, v39 | v37 | v35 | v33 | 7);
}

uint64_t sub_25F468A68(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v9 = *(*(v4 - 8) + 64);
  v11 = *(type metadata accessor for PipeEvent(0, v3, v5, v10) - 8);
  v12 = (v8 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for TransportReply(0) - 8);
  v15 = v1[6];
  v16 = v1 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));

  return sub_25F465564(a1, v15, v1 + v7, v1 + v8, v1 + v12, v16);
}

uint64_t sub_25F468C64(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_25F468CA4(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_25F468CB0(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25F4632CC(a1, v3, WitnessTable);
}

void sub_25F468D34(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_25F468D40()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F468D84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25F468E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for PipeEvent.Content(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v27 = type metadata accessor for TransportReply(0);
  MEMORY[0x28223BE20](v27);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_getAssociatedTypeWitness();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = v32;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v26 - v19;
  (*(v8 + 16))(v10, v16, v7);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v8 + 8))(v10, v7);
    return sub_25F4632CC(v16, v30, v31);
  }

  else
  {
    v22 = v29;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v24 = *(TupleTypeMetadata3 + 48);
    v25 = *(TupleTypeMetadata3 + 64);
    (*(v18 + 32))(v20, v10, v17);
    (*(v28 + 32))(v15, &v10[v24], v22);
    sub_25F40CA18(&v10[v25], v12);
    (*(v31 + 72))(v32, v20, v15, v12, v30);
    sub_25F40C9BC(v12);
    (*(v28 + 8))(v15, v29);
    return (*(v18 + 8))(v20, v17);
  }
}

void sub_25F469268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = a4;
  v83 = a3;
  *&v79 = a2;
  v76 = *v4;
  v5 = v76;
  v77 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v70);
  v72 = (&v61 - v6);
  v73 = sub_25F4A2A70();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F600, &qword_25F4AEF38);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v61 - v9;
  v10 = *(v5 + 88);
  v11 = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v81 = &v61 - v12;
  v13 = sub_25F4A2120();
  type metadata accessor for Junction(255, v11, v10, v14);
  v15 = swift_getAssociatedTypeWitness();
  v63 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v65 = v15;
  v67 = swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = swift_getTupleTypeMetadata2();
  v18 = sub_25F4A3060();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v61 - v20;
  v68 = TupleTypeMetadata2;
  v22 = swift_getTupleTypeMetadata2();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v61 - v24;
  v75 = v13;
  v26 = *(v13 - 8);
  v27 = MEMORY[0x28223BE20](v23);
  v62 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v80 = &v61 - v29;
  v84 = v4;
  sub_25F4660B8(v79, v21);
  if ((*(*(v17 - 8) + 48))(v21, 1, v17) == 1)
  {
    (*(v19 + 8))(v21, v18);
    v31 = v81;
    v30 = AssociatedTypeWitness;
    (*(v78 + 16))(v81, v83, AssociatedTypeWitness);
    type metadata accessor for EndpointInvalidated(0, v30, v32, v33);
    swift_getWitnessTable();
    v34 = swift_allocError();
    sub_25F40CFA0(v31, v30, v35);
    v36 = v69;
    sub_25F4A2A80();
    v37 = v72;
    *v72 = v34;
    swift_storeEnumTagMultiPayload();
    v38 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
    sub_25F4A2410();
    sub_25F3F21F4(v37, &qword_27FD6DEB8, &unk_25F4A8D20);
    (*(v71 + 8))(v36, v73);
  }

  else
  {
    v39 = *(v17 + 48);
    v40 = *(v22 + 48);
    v41 = *(v26 + 32);
    v79 = *&v21[v39];
    v42 = v75;
    v41(v25, v21, v75);
    *&v25[v40] = v79;
    v43 = &v25[*(v22 + 48)];
    v45 = *v43;
    v44 = *(v43 + 1);
    *&v79 = v45;
    v74 = v44;
    v46 = v26;
    v47 = v80;
    v41(v80, v25, v42);
    (*(v78 + 16))(v81, v83, AssociatedTypeWitness);
    v48 = *(v46 + 16);
    v49 = v66;
    v48(v66, v47, v42);
    v83 = v46;
    (*(v46 + 56))(v49, 0, 1, v42);
    swift_beginAccess();
    swift_getAssociatedConformanceWitness();
    sub_25F4A2BA0();
    sub_25F4A2BC0();
    swift_endAccess();
    v48(v62, v47, v42);
    v50 = v67;
    sub_25F466E34(v67, v67);
    v51 = *(v50 - 8);
    swift_allocObject();
    v52 = v79;

    sub_25F4A2D30();
    v54 = v53;
    v56 = type metadata accessor for PipeEvent(0, v65, AssociatedConformanceWitness, v55);
    v57 = v77;
    (*(v51 + 16))(v54, v77 + *(v56 + 36), v50);
    sub_25F4A2E20();
    v58 = sub_25F4A2D50();

    v85 = v52;
    v86 = v58;
    swift_beginAccess();
    sub_25F46A788(&qword_27FD6F608, MEMORY[0x277D403B0]);
    sub_25F4A2BA0();
    sub_25F4A2BC0();
    swift_endAccess();
    v59 = v76;
    WitnessTable = swift_getWitnessTable();
    sub_25F463094(v57, v59, WitnessTable);
    (*(v83 + 8))(v80, v42);
  }
}

uint64_t sub_25F469C24(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_25F4A2120();
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  type metadata accessor for Junction(255, v6, v7, v8);
  swift_getAssociatedTypeWitness();
  v34 = v7;
  v35 = v6;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = swift_getTupleTypeMetadata2();
  v11 = sub_25F4A3060();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v32 = TupleTypeMetadata2;
  v15 = swift_getTupleTypeMetadata2();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v31 - v17;
  v36 = *(v5 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v33 = &v31 - v22;
  sub_25F4660B8(a1, v14);
  if ((*(*(v10 - 8) + 48))(v14, 1, v10) == 1)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v24 = *(v10 + 48);
  v25 = *(v15 + 48);
  v26 = v36;
  v27 = *(v36 + 32);
  v31 = *&v14[v24];
  v27(v18, v14, v5);
  *&v18[v25] = v31;

  v28 = v33;
  v27(v33, v18, v5);
  (*(v26 + 16))(v21, v28, v5);
  v37 = 0;
  v38 = 0;
  swift_beginAccess();
  sub_25F46A788(&qword_27FD6F608, MEMORY[0x277D403B0]);
  sub_25F4A2BA0();
  sub_25F4A2BC0();
  swift_endAccess();
  v29 = swift_beginAccess();
  MEMORY[0x28223BE20](v29);
  v30 = v34;
  *(&v31 - 4) = v35;
  *(&v31 - 3) = v30;
  *(&v31 - 2) = v28;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v2[5] = sub_25F4A2B80();

  return (*(v36 + 8))(v28, v5);
}

uint64_t sub_25F46A12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *v4;
  v28 = a1;
  v5 = v27[11];
  type metadata accessor for Junction(255, v27[10], v27[12], a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = swift_getTupleTypeMetadata2();
  *&v25 = sub_25F4A3060();
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v25 - v9;
  v11 = swift_getTupleTypeMetadata2();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = *(v5 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v26 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v25 - v18;
  sub_25F464310(v28, v20, v10);
  if ((*(*(v7 - 8) + 48))(v10, 1, v7) == 1)
  {
    return (*(v8 + 8))(v10, v25);
  }

  v22 = *(v7 + 48);
  v23 = *(v11 + 48);
  v28 = TupleTypeMetadata2;
  v24 = *(v15 + 32);
  v25 = *&v10[v22];
  v24(v14, v10, v5);
  *&v14[v23] = v25;

  v24(v19, v14, v5);
  (*(v15 + 16))(v26, v19, v5);
  v29 = 0;
  v30 = 0;
  swift_beginAccess();
  sub_25F4A2BA0();
  sub_25F4A2BC0();
  swift_endAccess();
  return (*(v15 + 8))(v19, v5);
}

uint64_t sub_25F46A584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(*(v4 + 16) - 8) + 16))(a1, a2);

  return a3;
}

BOOL sub_25F46A674(uint64_t a1, uint64_t a2)
{
  sub_25F4A2120();
  sub_25F46A788(&qword_27FD6F618, MEMORY[0x277D403B8]);
  return (sub_25F4A2C00() & 1) == 0;
}

uint64_t sub_25F46A6F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  (*(v2 + 24))(0, v1, v2);
  return (*(v2 + 64))(v1, v2);
}

uint64_t sub_25F46A788(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25F4A2120();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F46A7F4(uint64_t a1)
{
  sub_25F4A2C60();
}

unint64_t sub_25F46A900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F46EBBC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F46A930(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6D726177657270;
  v5 = 0xE700000000000000;
  v6 = 0x4C525579706F63;
  v7 = 0x800000025F4B6800;
  v8 = 0xD000000000000016;
  if (v2 != 4)
  {
    v8 = 0x7070417465736572;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007070;
  v10 = 0x416C6C6174736E69;
  if (v2 != 1)
  {
    v10 = 0x6C6174736E696E75;
    v9 = 0xED0000737070416CLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_25F46AA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F46EB68();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t AppManagerInterface.TwoWayMessage.propertyListValue.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  *v38 = v0[2];
  *&v38[16] = v2;
  *&v38[25] = *(v0 + 57);
  v36 = *v0;
  v37 = v1;
  v3 = *v0;
  v4 = *(v0 + 1);
  v6 = *(v0 + 2);
  v5 = *(v0 + 3);
  v7 = *(v0 + 4);
  v8 = sub_25F46AE68();
  sub_25F46AEBC();
  result = sub_25F4A25C0();
  if (v38[40] <= 2u)
  {
    if (!v38[40])
    {
      *&v31 = v36;
      BYTE8(v31) = BYTE8(v36) & 1;
      *(&v26 + 1) = &type metadata for AppManagerInterface.TwoWayMessage.Key;
      v27 = v8;
      LOBYTE(v25) = 1;
      sub_25F46B138();
      v12 = v3;
      sub_25F4A2520();

      v10 = &v25;
      return __swift_destroy_boxed_opaque_existential_1(v10);
    }

    if (v38[40] == 1)
    {
      *&v31 = v36;
      BYTE8(v31) = BYTE8(v36) & 1;
      *(&v26 + 1) = &type metadata for AppManagerInterface.TwoWayMessage.Key;
      v27 = v8;
      LOBYTE(v25) = 1;
      sub_25F46B0D4();

      sub_25F4A2520();
      sub_25F46B128(v31);
      v10 = &v25;
      return __swift_destroy_boxed_opaque_existential_1(v10);
    }

    *&v24[8] = *&v38[8];
    *&v24[24] = *&v38[24];
    v22 = v36;
    v23 = v37;
    *v24 = *v38;
    v20 = &type metadata for AppManagerInterface.TwoWayMessage.Key;
    v21 = v8;
    v19 = 1;
    *&v25 = v3;
    *(&v25 + 1) = v4;
    *&v26 = v6;
    *(&v26 + 1) = v5;
    v27 = v7;
    v17 = *(v0 + 40);
    v18 = *(v0 + 56);
    v30 = *(v0 + 72);
    v28 = v17;
    v29 = v18;
    sub_25F46B048(&v25, &v31);
    sub_25F46B080();
    sub_25F4A2520();
    v33 = *v24;
    v34 = *&v24[16];
    v35 = *&v24[32];
    v31 = v22;
    v32 = v23;
    v15 = &unk_27FD6F650;
    v16 = &unk_25F4AEF58;
LABEL_11:
    sub_25F3F21F4(&v31, v15, v16);
    v10 = &v19;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  if (v38[40] == 3)
  {
    *&v24[8] = *&v38[8];
    *&v24[24] = *&v38[24];
    v22 = v36;
    v23 = v37;
    *v24 = *v38;
    v20 = &type metadata for AppManagerInterface.TwoWayMessage.Key;
    v21 = v8;
    v19 = 1;
    *&v25 = v3;
    *(&v25 + 1) = v4;
    *&v26 = v6;
    *(&v26 + 1) = v5;
    v27 = v7;
    v13 = *(v0 + 40);
    v14 = *(v0 + 56);
    v30 = *(v0 + 72);
    v28 = v13;
    v29 = v14;
    sub_25F46AFBC(&v25, &v31);
    sub_25F46AFF4();
    sub_25F4A2520();
    v33 = *v24;
    v34 = *&v24[16];
    v35 = *&v24[32];
    v31 = v22;
    v32 = v23;
    v15 = &unk_27FD6F640;
    v16 = &unk_25F4AEF50;
    goto LABEL_11;
  }

  if (v38[40] != 4)
  {
    return result;
  }

  v25 = v36;
  v26 = v37;
  v27 = *v38;
  *(&v32 + 1) = &type metadata for AppManagerInterface.TwoWayMessage.Key;
  *&v33 = v8;
  LOBYTE(v31) = 1;
  sub_25F46AF10();

  v11 = v7;
  sub_25F4A2520();
  sub_25F46AF64(v25, *(&v25 + 1), v26, *(&v26 + 1), v27);
  v10 = &v31;
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

_BYTE *sub_25F46AE3C(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  *result = 0;
  *a2 = 0x504030201uLL >> (8 * *(a3 + 72));
  return result;
}

unint64_t sub_25F46AE68()
{
  result = qword_27FD6F620;
  if (!qword_27FD6F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F620);
  }

  return result;
}

unint64_t sub_25F46AEBC()
{
  result = qword_27FD6F628;
  if (!qword_27FD6F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F628);
  }

  return result;
}

unint64_t sub_25F46AF10()
{
  result = qword_27FD6F630;
  if (!qword_27FD6F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F630);
  }

  return result;
}

void sub_25F46AF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

unint64_t sub_25F46AFF4()
{
  result = qword_27FD6F638;
  if (!qword_27FD6F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F638);
  }

  return result;
}

unint64_t sub_25F46B080()
{
  result = qword_27FD6F648;
  if (!qword_27FD6F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F648);
  }

  return result;
}

unint64_t sub_25F46B0D4()
{
  result = qword_27FD6F658;
  if (!qword_27FD6F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F658);
  }

  return result;
}

uint64_t sub_25F46B128(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_25F46B138()
{
  result = qword_27FD6F660;
  if (!qword_27FD6F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F660);
  }

  return result;
}

uint64_t AppManagerInterface.TwoWayMessage.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32[3] = &type metadata for AppManagerInterface.TwoWayMessage.Key;
  v5 = sub_25F46AE68();
  v32[4] = v5;
  LOBYTE(v32[0]) = 0;
  sub_25F46AEBC();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
    if (v33 > 2u)
    {
      if (v33 == 3)
      {
        v30 = &type metadata for AppManagerInterface.TwoWayMessage.Key;
        v31 = v5;
        LOBYTE(v28) = 1;
        sub_25F46B080();
        sub_25F4A2530();
        v19 = sub_25F4A25E0();
        (*(*(v19 - 8) + 8))(a1, v19);
        result = __swift_destroy_boxed_opaque_existential_1(&v28);
        v15 = v22;
        v16 = v23;
        v10 = v24;
        v11 = v25;
        v12 = v26;
        v9 = v27;
        v14 = v23 & 0xFFFFFFFFFFFFFF00;
        v13 = 2;
      }

      else
      {
        v30 = &type metadata for AppManagerInterface.TwoWayMessage.Key;
        v31 = v5;
        LOBYTE(v28) = 1;
        if (v33 == 4)
        {
          sub_25F46AFF4();
          sub_25F4A2530();
          v17 = sub_25F4A25E0();
          (*(*(v17 - 8) + 8))(a1, v17);
          result = __swift_destroy_boxed_opaque_existential_1(&v28);
          v15 = v22;
          v16 = v23;
          v10 = v24;
          v11 = v25;
          v12 = v26;
          v9 = v27;
          v14 = v23 & 0xFFFFFFFFFFFFFF00;
          v13 = 3;
        }

        else
        {
          sub_25F46AF10();
          sub_25F4A2530();
          v21 = sub_25F4A25E0();
          (*(*(v21 - 8) + 8))(a1, v21);
          result = __swift_destroy_boxed_opaque_existential_1(&v28);
          v15 = v22;
          v16 = v23;
          v10 = v24;
          *&v11 = v25;
          v14 = v23 & 0xFFFFFFFFFFFFFF00;
          v13 = 4;
        }
      }
    }

    else if (v33)
    {
      *(&v24 + 1) = &type metadata for AppManagerInterface.TwoWayMessage.Key;
      *&v25 = v5;
      LOBYTE(v22) = 1;
      if (v33 == 1)
      {
        sub_25F46B138();
        sub_25F4A2530();
        v8 = sub_25F4A25E0();
        (*(*(v8 - 8) + 8))(a1, v8);
        result = __swift_destroy_boxed_opaque_existential_1(&v22);
        v13 = 0;
        v14 = 0;
        v15 = v28;
        v16 = v29;
      }

      else
      {
        sub_25F46B0D4();
        sub_25F4A2530();
        v20 = sub_25F4A25E0();
        (*(*(v20 - 8) + 8))(a1, v20);
        result = __swift_destroy_boxed_opaque_existential_1(&v22);
        v14 = 0;
        v15 = v28;
        v16 = v29;
        v13 = 1;
      }
    }

    else
    {
      v18 = sub_25F4A25E0();
      result = (*(*(v18 - 8) + 8))(a1, v18);
      v15 = 0;
      v9 = 0;
      v16 = 0;
      v14 = 0;
      v10 = 0uLL;
      v11 = 0uLL;
      v13 = 5;
      v12 = 0uLL;
    }

    *a2 = v15;
    *(a2 + 8) = v14 | v16;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 48) = v12;
    *(a2 + 64) = v9;
    *(a2 + 72) = v13;
  }

  return result;
}

id InstallAppRequest.sourceURLWrapper.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t InstallAppRequest.init(sourceURL:isDevelopment:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_25F4A2040();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = objc_allocWithZone(MEMORY[0x277CCAC90]);
  v11 = sub_25F4A2010();
  v12 = [v10 initWithURL:v11 readonly:0];

  v13 = *(v7 + 8);
  v13(a1, v6);
  result = (v13)(v9, v6);
  *a3 = v12;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_25F46B7BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F6C657665447369;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = 0x800000025F4B6820;
  }

  else
  {
    v4 = 0xED0000746E656D70;
  }

  if (*a2)
  {
    v5 = 0x6F6C657665447369;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (*a2)
  {
    v6 = 0xED0000746E656D70;
  }

  else
  {
    v6 = 0x800000025F4B6820;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F46B874()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F46B908(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F46B988(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F46BA24(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B6820;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x6F6C657665447369;
    v2 = 0xED0000746E656D70;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F46BA74()
{
  if (*v0)
  {
    return 0x6F6C657665447369;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_25F46BAD8(void *a1, char a2)
{
  sub_25F46BD2C();
  sub_25F46BD80();
  v3 = a1;
  v4 = sub_25F4A28D0();

  return v4;
}

uint64_t InstallAppRequest.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = &type metadata for InstallAppRequest.Key;
  v5 = sub_25F46BD2C();
  v13 = v5;
  LOBYTE(v11[0]) = 0;
  sub_25F46BD80();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
    v7 = v14;
    v12 = &type metadata for InstallAppRequest.Key;
    v13 = v5;
    LOBYTE(v11[0]) = 1;
    sub_25F4A2530();
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    *a2 = v7;
    *(a2 + 8) = v10;
  }

  return result;
}

unint64_t sub_25F46BD2C()
{
  result = qword_27FD6F668;
  if (!qword_27FD6F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F668);
  }

  return result;
}

unint64_t sub_25F46BD80()
{
  result = qword_27FD6F670;
  if (!qword_27FD6F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F670);
  }

  return result;
}

uint64_t UninstallAppsRequest.init(bundleIDs:arePrefixes:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_25F46BE18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6966657250657261;
  }

  else
  {
    v3 = 0x4449656C646E7562;
  }

  if (v2)
  {
    v4 = 0xE900000000000073;
  }

  else
  {
    v4 = 0xEB00000000736578;
  }

  if (*a2)
  {
    v5 = 0x6966657250657261;
  }

  else
  {
    v5 = 0x4449656C646E7562;
  }

  if (*a2)
  {
    v6 = 0xEB00000000736578;
  }

  else
  {
    v6 = 0xE900000000000073;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F46BECC()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F46BF5C(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F46BFD8(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F46C070(uint64_t *a1@<X8>)
{
  v2 = 0x4449656C646E7562;
  if (*v1)
  {
    v2 = 0x6966657250657261;
  }

  v3 = 0xE900000000000073;
  if (*v1)
  {
    v3 = 0xEB00000000736578;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F46C0BC()
{
  if (*v0)
  {
    return 0x6966657250657261;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_25F46C160(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
  sub_25F46C3B8();
  sub_25F41A91C();
  return sub_25F4A28D0();
}

uint64_t UninstallAppsRequest.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = &type metadata for UninstallAppsRequest.Key;
  v5 = sub_25F46C3B8();
  v13 = v5;
  LOBYTE(v11[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
  sub_25F41A91C();
  sub_25F4A2580();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8 = v14;
    v12 = &type metadata for UninstallAppsRequest.Key;
    v13 = v5;
    LOBYTE(v11[0]) = 1;
    sub_25F4A2530();
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    v10 = v14;
    *a2 = v8;
    *(a2 + 8) = v10;
  }

  return result;
}

unint64_t sub_25F46C3B8()
{
  result = qword_27FD6F678;
  if (!qword_27FD6F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F678);
  }

  return result;
}

uint64_t CopyURLRequest.filename.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

id CopyURLRequest.sourceURLWrapper.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return v2;
}

__n128 CopyURLRequest.init(agentDescriptor:sourceURL:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25F4A2040();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v23 = a1[1];
  v24 = v10;
  v11 = *(a1 + 4);
  v21 = *(a1 + 5);
  v22 = v11;
  v12 = sub_25F4A2000();
  v14 = v13;
  (*(v7 + 16))(v9, a2, v6);
  v15 = objc_allocWithZone(MEMORY[0x277CCAC90]);
  v16 = sub_25F4A2010();
  v17 = [v15 initWithURL:v16 readonly:0];

  v18 = *(v7 + 8);
  v18(a2, v6);
  v18(v9, v6);
  result = v23;
  *a3 = v24;
  *(a3 + 16) = result;
  v20 = v21;
  *(a3 + 32) = v22;
  *(a3 + 40) = v20;
  *(a3 + 48) = v12;
  *(a3 + 56) = v14;
  *(a3 + 64) = v17;
  return result;
}

unint64_t sub_25F46C65C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F46EC08(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F46C68C(unint64_t *a1@<X8>)
{
  v2 = 0xEF7265696669746ELL;
  v3 = 0x656449746E656761;
  v4 = 0xE800000000000000;
  v5 = 0x656D616E656C6966;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000014;
    v4 = 0x800000025F4B6820;
  }

  if (*v1)
  {
    v3 = 0x736544746E656761;
    v2 = 0xEF726F7470697263;
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

unint64_t sub_25F46C728()
{
  v1 = 0x656449746E656761;
  v2 = 0x656D616E656C6966;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x736544746E656761;
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

unint64_t sub_25F46C884()
{
  result = qword_27FD6F680;
  if (!qword_27FD6F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F680);
  }

  return result;
}

uint64_t CopyURLResponse.finalPath.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_25F46C980()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F46C9F4(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F46CA48@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_25F4A3170();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_25F46CB58()
{
  result = qword_27FD6F688;
  if (!qword_27FD6F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F688);
  }

  return result;
}

uint64_t CopyURLResponse.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8[3] = &type metadata for CopyURLResponse.Key;
  v8[4] = sub_25F46CB58();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    v7 = v8[6];
    *a2 = v8[5];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_25F46CD1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8[3] = &type metadata for CopyURLResponse.Key;
  v8[4] = sub_25F46CB58();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    v7 = v8[6];
    *a2 = v8[5];
    a2[1] = v7;
  }

  return result;
}

uint64_t _s19PreviewsMessagingOS14CopyURLRequestV15agentDescriptorAA05AgentG0Vvg_0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

__n128 GrantExecutePermissionRequest.init(agentDescriptor:sourceURL:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25F4A2040();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v25 = a1[1];
  v26 = v10;
  v11 = *(a1 + 4);
  v23 = *(a1 + 5);
  v24 = v11;
  v22 = sub_25F4A2000();
  v13 = v12;
  (*(v7 + 16))(v9, a2, v6);
  v14 = objc_allocWithZone(MEMORY[0x277CCAC90]);
  v15 = sub_25F4A2010();
  v16 = sub_25F4A2C10();
  v17 = [v14 initWithURL:v15 readonly:1 extensionClass:v16];

  v18 = *(v7 + 8);
  v18(a2, v6);
  v18(v9, v6);
  result = v25;
  *a3 = v26;
  *(a3 + 16) = result;
  v20 = v23;
  *(a3 + 32) = v24;
  *(a3 + 40) = v20;
  *(a3 + 48) = v22;
  *(a3 + 56) = v13;
  *(a3 + 64) = v17;
  return result;
}

uint64_t sub_25F46D034()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F46D114(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F46D1E0(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F46D2BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F46EC54(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25F46D344(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v4;
  v28 = *(a1 + 32);
  v29[0] = v4;
  v29[1] = v28;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v26 = v7;
  v25 = 0;
  v23 = v4;
  v24 = v28;
  v22 = 1;
  v19 = v27[0];
  v20 = v4;
  v21 = v28;
  v18 = 2;
  v16 = v5;
  v17 = v6;
  v15 = 3;
  v14 = v7;
  sub_25F452120(v27, v13);
  sub_25F4520E8(v29, v13);

  v8 = sub_25F46ECEC(&v26, v13);
  a2(v8);
  sub_25F44F534();
  sub_25F44F6EC();
  sub_25F46BD80();
  v9 = v7;
  v10 = sub_25F4A28B0();
  v11 = v14;

  sub_25F3E4814(v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1));
  sub_25F403404(v23, *(&v23 + 1), v24, *(&v24 + 1));

  return v10;
}

uint64_t sub_25F46D564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v21 = a2;
  v8 = a3();
  v22 = v8;
  LOBYTE(v20[0]) = 1;
  sub_25F44F6EC();
  sub_25F4A2530();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = a2;
    v22 = v8;
    LOBYTE(v20[0]) = 0;
    sub_25F4A2530();
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  v9 = v23[1];
  v10 = v24;
  v18 = v23[2];
  v19 = v23[0];
  v11 = v26;
  v17 = v25;
  v24 = a2;
  v25 = v8;
  LOBYTE(v23[0]) = 2;
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(v23);
  v12 = v20[1];
  v16 = v20[0];
  v24 = a2;
  v25 = v8;
  LOBYTE(v23[0]) = 3;
  sub_25F46BD80();
  sub_25F4A2530();
  v13 = sub_25F4A25E0();
  (*(*(v13 - 8) + 8))(a1, v13);
  result = __swift_destroy_boxed_opaque_existential_1(v23);
  v15 = v27;
  *a4 = v19;
  a4[1] = v9;
  a4[2] = v18;
  a4[3] = v10;
  a4[4] = v17;
  a4[5] = v11;
  a4[6] = v16;
  a4[7] = v12;
  a4[8] = v15;
  return result;
}

unint64_t sub_25F46D830()
{
  result = qword_27FD6F690;
  if (!qword_27FD6F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F690);
  }

  return result;
}

uint64_t ResetAppRequest.agentDescriptorBundle.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

id ResetAppRequest.sourceURLWrapper.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return v2;
}

uint64_t ResetAppRequest.init(agentDescriptorBundle:sourceURL:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E638, &qword_25F4A9828);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_25F4A2040();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = *a1;
  v29 = a1[1];
  v30 = v16;
  v17 = a1[2];
  v27 = a1[3];
  v28 = v17;
  v31 = a2;
  sub_25F404B8C(a2, v8, &qword_27FD6E638, &qword_25F4A9828);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_25F3F21F4(v31, &qword_27FD6E638, &qword_25F4A9828);
    result = sub_25F3F21F4(v8, &qword_27FD6E638, &qword_25F4A9828);
    v19 = 0;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    v20 = objc_allocWithZone(MEMORY[0x277CCAC90]);
    v21 = sub_25F4A2010();
    v22 = sub_25F4A2C10();
    v19 = [v20 initWithURL:v21 readonly:1 extensionClass:v22];

    sub_25F3F21F4(v31, &qword_27FD6E638, &qword_25F4A9828);
    v23 = *(v10 + 8);
    v23(v13, v9);
    result = (v23)(v15, v9);
  }

  v24 = v29;
  *a3 = v30;
  a3[1] = v24;
  v25 = v27;
  a3[2] = v28;
  a3[3] = v25;
  a3[4] = v19;
  return result;
}

uint64_t sub_25F46DC08(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x800000025F4B6870;
  if (v3 == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v3 == 1)
  {
    v6 = 0x800000025F4B6870;
  }

  else
  {
    v6 = 0x800000025F4B6890;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656449746E656761;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEF7265696669746ELL;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x800000025F4B6890;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x656449746E656761;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEF7265696669746ELL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F46DCF0()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F46DDA8(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F46DE4C(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F46DF00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F46ECA0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F46DF30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF7265696669746ELL;
  v4 = 0x800000025F4B6870;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000025F4B6890;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656449746E656761;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_25F46DFA4()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656449746E656761;
  }
}

uint64_t sub_25F46E064(uint64_t a1)
{
  v1 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v1;
  v2 = *(a1 + 32);
  v15 = v2;
  v14 = 0;
  v12 = v16[0];
  v13 = v1;
  v11 = 1;
  v9 = v16[0];
  v10 = v1;
  v8 = 2;
  v7 = v2;
  sub_25F4520E8(v16, v6);
  sub_25F4520E8(v16, v6);
  sub_25F404B8C(&v15, v6, &qword_27FD6F708, &unk_25F4AFB10);
  sub_25F46E3CC();
  sub_25F44F534();
  sub_25F46BD80();
  v3 = v2;
  v4 = sub_25F4A28C0();

  sub_25F403404(v9, *(&v9 + 1), v10, *(&v10 + 1));
  sub_25F403404(v12, *(&v12 + 1), v13, *(&v13 + 1));

  return v4;
}

uint64_t ResetAppRequest.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = &type metadata for ResetAppRequest.Key;
  v5 = sub_25F46E3CC();
  v14 = v5;
  LOBYTE(v12[0]) = 1;
  sub_25F44F534();
  sub_25F4A2530();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v13 = &type metadata for ResetAppRequest.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 0;
    sub_25F4A2530();
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  v6 = v16;
  v19 = v15;
  v8 = v17;
  v7 = v18;
  v13 = &type metadata for ResetAppRequest.Key;
  v14 = v5;
  LOBYTE(v12[0]) = 2;
  sub_25F46BD80();
  sub_25F4A2580();
  v9 = sub_25F4A25E0();
  (*(*(v9 - 8) + 8))(a1, v9);
  result = __swift_destroy_boxed_opaque_existential_1(v12);
  v11 = v15;
  *a2 = v19;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v7;
  a2[4] = v11;
  return result;
}

unint64_t sub_25F46E3CC()
{
  result = qword_27FD6F698;
  if (!qword_27FD6F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F698);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS19AppManagerInterfaceO13TwoWayMessageO(uint64_t a1)
{
  if ((*(a1 + 72) & 7u) <= 4)
  {
    return *(a1 + 72) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F46E4D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 73))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 72);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F46E514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F46E564(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 72) = a2;
  return result;
}