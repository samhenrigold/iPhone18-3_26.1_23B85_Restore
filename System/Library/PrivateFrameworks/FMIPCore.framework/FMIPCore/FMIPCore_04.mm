unint64_t sub_24A6D682C()
{
  result = qword_27EF5D520;
  if (!qword_27EF5D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D520);
  }

  return result;
}

unint64_t sub_24A6D6884()
{
  result = qword_27EF5D528;
  if (!qword_27EF5D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D528);
  }

  return result;
}

unint64_t sub_24A6D68DC()
{
  result = qword_27EF5D530;
  if (!qword_27EF5D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D530);
  }

  return result;
}

FMIPCore::FMIPSeparationEvent __swiftcall FMIPSeparationEvent.init(itemOrDeviceCount:addSafeLocationTapped:addToAllTapped:homeRemoved:)(Swift::Int itemOrDeviceCount, Swift::Bool addSafeLocationTapped, Swift::Bool addToAllTapped, Swift::Bool homeRemoved)
{
  *v4 = itemOrDeviceCount;
  *(v4 + 8) = addSafeLocationTapped;
  *(v4 + 9) = addToAllTapped;
  *(v4 + 10) = homeRemoved;
  result.itemOrDeviceCount = itemOrDeviceCount;
  result.addSafeLocationTapped = addSafeLocationTapped;
  return result;
}

Swift::Void __swiftcall FMIPManager.enqueue(separationEvent:)(FMIPCore::FMIPSeparationEvent separationEvent)
{
  v1 = *(separationEvent.itemOrDeviceCount + 8);
  v2 = *(separationEvent.itemOrDeviceCount + 9);
  v3 = *(separationEvent.itemOrDeviceCount + 10);
  v4 = *separationEvent.itemOrDeviceCount;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  sub_24A6D6A48(&v4);
}

void sub_24A6D6A48(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v6, 0xD000000000000011, 0x800000024A844D60, isUniquelyReferenced_nonNull_native);
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v8, 0xD000000000000015, 0x800000024A844D80, v9);
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v10, 0x6C6C416F54646461, 0xEE00646570706154, v11);
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v12, 0xD000000000000010, 0x800000024A844DA0, v13);
  v14 = sub_24A82CF94();
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  v17[4] = sub_24A6AEBB4;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_24A6AEADC;
  v17[3] = &unk_285DC2170;
  v16 = _Block_copy(v17);

  AnalyticsSendEventLazy();
  _Block_release(v16);
}

uint64_t initializeBufferWithCopyOfBuffer for FMIPSeparationEvent(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMIPSeparationEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPSeparationEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t FMIPB389ProductInformation.init(beacon:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_24A67DF6C(a1, v4);
  v6 = (*(v5 + 136))(v4, v5);
  v7 = a1[3];
  v8 = a1[4];
  sub_24A67DF6C(a1, v7);
  v9 = (*(v8 + 144))(v7, v8);
  v10 = a1[3];
  v11 = a1[4];
  sub_24A67DF6C(a1, v10);
  v12 = (*(v11 + 128))(v10, v11);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 modelName];

    v15 = sub_24A82CFC4();
    v17 = v16;
  }

  else
  {
    v18 = a1[3];
    v19 = a1[4];
    sub_24A67DF6C(a1, v18);
    v15 = (*(v19 + 56))(v18, v19);
    v17 = v20;
  }

  *a2 = v6;
  a2[1] = v9;
  a2[2] = v15;
  a2[3] = v17;
  a2[4] = 0x656C707041;
  a2[5] = 0xE500000000000000;
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0x4010000000000000;

  return sub_24A6876E8(a1);
}

uint64_t FMIPB389ProductInformation.modelName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FMIPB389ProductInformation.manufacturerName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FMIPB389ProductInformation.appBundleIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t sub_24A6D6FA0()
{
  v1 = *v0;
  v2 = 0x6D614E6C65646F6DLL;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x50616E6E65746E61;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_24A6D7070@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A6D7E0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A6D7098(uint64_t a1)
{
  v2 = sub_24A6D7AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6D70D4(uint64_t a1)
{
  v2 = sub_24A6D7AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPB389ProductInformation.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5D538, &qword_24A832DE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v18[5] = v1[2];
  v18[6] = v8;
  v10 = v1[5];
  v18[3] = v1[4];
  v18[4] = v9;
  v11 = v1[6];
  v12 = v1[7];
  v18[1] = v10;
  v18[2] = v11;
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  sub_24A67DF6C(v14, v13);
  sub_24A6D7AB8();
  sub_24A82DD84();
  v24 = 0;
  sub_24A82DB34();
  if (!v2)
  {
    v18[0] = v12;
    v23 = 1;
    sub_24A82DB34();
    v22 = 2;
    sub_24A82DB04();
    v21 = 3;
    sub_24A82DB04();
    v20 = 4;
    sub_24A82DAD4();
    v19 = 5;
    sub_24A82DB24();
  }

  return (*(v5 + 8))(v7, v16);
}

uint64_t FMIPB389ProductInformation.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  MEMORY[0x24C21D5E0](*v1);
  MEMORY[0x24C21D5E0](v2);
  sub_24A82D094();
  sub_24A82D094();
  sub_24A82DCE4();
  if (v3)
  {
    sub_24A82D094();
  }

  v5 = 0.0;
  if (v4 != 0.0)
  {
    v5 = v4;
  }

  return MEMORY[0x24C21D610](*&v5);
}

uint64_t FMIPB389ProductInformation.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPB389ProductInformation.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t FMIPB389ProductInformation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5D548, &qword_24A832DE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6D7AB8();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  LOBYTE(v33[0]) = 0;
  v9 = sub_24A82DA74();
  LOBYTE(v33[0]) = 1;
  v27 = sub_24A82DA74();
  LOBYTE(v33[0]) = 2;
  v10 = sub_24A82DA44();
  *(&v26 + 1) = v11;
  *&v26 = v10;
  LOBYTE(v33[0]) = 3;
  *&v25 = sub_24A82DA44();
  *(&v25 + 1) = v12;
  LOBYTE(v33[0]) = 4;
  v24 = sub_24A82DA04();
  v14 = v13;
  v34[0] = 5;
  sub_24A82DA64();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v18 = *(&v26 + 1);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v26;
  v29 = v26;
  v20 = *(&v25 + 1);
  v30 = v25;
  *&v31 = v24;
  *(&v31 + 1) = v14;
  v32 = v16;
  v21 = v31;
  *(a2 + 32) = v25;
  *(a2 + 48) = v21;
  *(a2 + 64) = v32;
  v22 = v29;
  *a2 = v28;
  *(a2 + 16) = v22;
  sub_24A6D7B0C(&v28, v33);
  sub_24A6876E8(a1);
  v33[0] = v9;
  v33[1] = v17;
  v33[2] = v19;
  v33[3] = v18;
  v33[4] = v25;
  v33[5] = v20;
  v33[6] = v24;
  v33[7] = v14;
  v33[8] = v16;
  return sub_24A6D2420(v33);
}

__n128 sub_24A6D77F0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  FMIPB389ProductInformation.init(beacon:)(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_24A6D7850()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24A6D7880()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_24A6D78B0()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_24A6D7918()
{
  sub_24A82DCC4();
  FMIPB389ProductInformation.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6D795C(uint64_t a1)
{
  sub_24A82DCC4();
  FMIPB389ProductInformation.hash(into:)(v2);
  return sub_24A82DD24();
}

BOOL _s8FMIPCore26FMIPB389ProductInformationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a2 + 32);
    v10 = *(a2 + 40);
    v12 = *(a2 + 48);
    v11 = *(a2 + 56);
    v13 = *(a2 + 64);
    if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (sub_24A82DC04()) && (v4 == v9 && v5 == v10 || (sub_24A82DC04()))
    {
      if (v7)
      {
        if (v11 && (v6 == v12 && v7 == v11 || (sub_24A82DC04() & 1) != 0))
        {
          return v8 == v13;
        }
      }

      else if (!v11)
      {
        return v8 == v13;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_24A6D7AB8()
{
  result = qword_27EF5D540;
  if (!qword_27EF5D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D540);
  }

  return result;
}

unint64_t sub_24A6D7B44(void *a1)
{
  a1[2] = sub_24A6D280C();
  a1[3] = sub_24A6D26A8();
  result = sub_24A6D7B7C();
  a1[4] = result;
  return result;
}

unint64_t sub_24A6D7B7C()
{
  result = qword_27EF5D550;
  if (!qword_27EF5D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D550);
  }

  return result;
}

unint64_t sub_24A6D7BD4()
{
  result = qword_27EF5D558;
  if (!qword_27EF5D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D558);
  }

  return result;
}

__n128 sub_24A6D7C28(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24A6D7C4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A6D7C94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A6D7D08()
{
  result = qword_27EF5D560;
  if (!qword_27EF5D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D560);
  }

  return result;
}

unint64_t sub_24A6D7D60()
{
  result = qword_27EF5D568;
  if (!qword_27EF5D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D568);
  }

  return result;
}

unint64_t sub_24A6D7DB8()
{
  result = qword_27EF5D570;
  if (!qword_27EF5D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D570);
  }

  return result;
}

uint64_t sub_24A6D7E0C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024A844E10 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024A843C40 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A843550 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024A844E30 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x50616E6E65746E61 && a2 == 0xEC0000007265776FLL)
  {

    return 5;
  }

  else
  {
    v5 = sub_24A82DC04();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

FMIPCore::FMIPActionStatus_optional sub_24A6D8020@<W0>(_BYTE *a1@<X8>)
{
  result.value = FMIPActionStatus.init(rawValue:)(*(v1 + 48)).value;
  v4 = v5;
  if (v5 == 18)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_24A6D80B0(void *a1)
{
  sub_24A698230(a1, v15);
  v3 = sub_24A6F5EE8(v15);
  if (!v1)
  {
    v4 = qword_281515DC8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);

    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      v10 = sub_24A6F6244();
      v12 = v11;

      v13 = sub_24A68761C(v10, v12, v15);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPRemoveResponse: initialized with coder %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v3;
}

uint64_t sub_24A6D8274()
{

  return swift_deallocClassInstance();
}

FMIPCore::FMIPAuthEventResponse_optional __swiftcall FMIPAuthEventResponse.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPAuthEventResponse.rawValue.getter()
{
  v1 = 0x6465696E6564;
  if (*v0 != 1)
  {
    v1 = 0x776F4E746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465746E617267;
  }
}

uint64_t sub_24A6D8398(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6465696E6564;
  if (v2 != 1)
  {
    v3 = 0x776F4E746F6ELL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6465746E617267;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x6465696E6564;
  if (*a2 != 1)
  {
    v6 = 0x776F4E746F6ELL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6465746E617267;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A6D848C()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D8528(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A6D85B0(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A6D8654(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6465696E6564;
  if (v2 != 1)
  {
    v4 = 0x776F4E746F6ELL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6465746E617267;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

void _s8FMIPCore13FMIPAnalyticsV31sendNotificationAuthPromptEvent5eventyAA016FMIPNotificationefG0V_tFZ_0(unsigned __int8 *a1)
{
  v1 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v2 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v3 = sub_24A82CF94();

  v4 = [v2 initWithString_];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v4, 0xD000000000000011, 0x800000024A844EF0, isUniquelyReferenced_nonNull_native);
  v6 = v1;
  v7 = sub_24A82CF94();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v10[4] = sub_24A6D89D4;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24A6AEADC;
  v10[3] = &unk_285DC2528;
  v9 = _Block_copy(v10);

  AnalyticsSendEventLazy();
  _Block_release(v9);
}

unint64_t sub_24A6D8958()
{
  result = qword_27EF5D578;
  if (!qword_27EF5D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D578);
  }

  return result;
}

uint64_t FMIPShowContactDetailsAction.phoneNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_phoneNumber);

  return v1;
}

uint64_t FMIPShowContactDetailsAction.__allocating_init(device:phoneNumber:enabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = swift_allocObject();
  FMIPShowContactDetailsAction.init(device:phoneNumber:enabled:)(a1, a2, a3, v4);
  return v8;
}

uint64_t FMIPShowContactDetailsAction.init(device:phoneNumber:enabled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = (v4 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_phoneNumber);
  *v5 = a2;
  v5[1] = a3;
  *(v4 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled) = a4;
  *(v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v6 = (v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v10 = 0;
  v10[1] = 0;
  *(v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v4;
}

uint64_t sub_24A6D8B68()
{
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled))
  {
    return 0x64656C62616E65;
  }

  else
  {
    return 0x64656C6261736964;
  }
}

uint64_t static FMIPShowContactDetailsAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled) == *(a2 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled))
  {
    return static FMIPDevice.== infix(_:_:)(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  }

  else
  {
    return 0;
  }
}

uint64_t FMIPShowContactDetailsAction.deinit()
{
  v0 = FMIPDeviceAction.deinit();

  return v0;
}

uint64_t FMIPShowContactDetailsAction.__deallocating_deinit()
{
  FMIPDeviceAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24A6D8CDC(void *a1, void *a2)
{
  if (*(*a1 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled) == *(*a2 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled))
  {
    return static FMIPDevice.== infix(_:_:)(*a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, *a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for FMIPShowContactDetailsAction(uint64_t a1)
{
  result = qword_27EF5D580;
  if (!qword_27EF5D580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMIPEraseMetadata.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPEraseMetadata(0) + 20);
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPEraseMetadata.phoneNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPEraseMetadata(0) + 24));

  return v1;
}

uint64_t FMIPEraseMetadata.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPEraseMetadata(0) + 28));

  return v1;
}

uint64_t sub_24A6D8F5C()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D9048(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A6D9120(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A6D9208@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A6DA3D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A6D9238(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1954047348;
  v5 = 0xEF706D617473656DLL;
  v6 = 0x6954657461657263;
  v7 = 0xEA00000000006564;
  v8 = 0x6F43737574617473;
  if (v2 != 3)
  {
    v8 = 0x7478655472657375;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x72624E72656E776FLL;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_24A6D92E0()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 0x6954657461657263;
  v4 = 0x6F43737574617473;
  if (v1 != 3)
  {
    v4 = 0x7478655472657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72624E72656E776FLL;
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

unint64_t sub_24A6D9384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A6DA3D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A6D93B8(uint64_t a1)
{
  v2 = sub_24A6896EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6D93F4(uint64_t a1)
{
  v2 = sub_24A6896EC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t FMIPEraseMetadata.debugDescription.getter()
{
  v0 = objc_opt_self();
  type metadata accessor for FMIPEraseMetadata(0);
  v1 = sub_24A82C994();
  v2 = [v0 localizedStringFromDate:v1 dateStyle:1 timeStyle:4];

  v3 = sub_24A82CFC4();
  v5 = v4;

  sub_24A82D854();

  v6 = FMIPActionStatus.description.getter();
  MEMORY[0x24C21C9E0](v6);

  MEMORY[0x24C21C9E0](0x617473656D697420, 0xEC000000203A706DLL);
  MEMORY[0x24C21C9E0](v3, v5);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

void FMIPEraseMetadata.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5D598, &qword_24A833298);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  type metadata accessor for FMIPEraseMetadata(0);
  v10 = v1;
  v7 = sub_24A82C994();
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6896EC();
  sub_24A82DD84();
  [v7 fm_epoch];
  v17 = 2;
  v8 = v11;
  sub_24A82DB54();
  if (!v8)
  {
    v12 = qword_24A8334F0[*v10];
    sub_24A82DB84();
    v16 = 3;
    sub_24A82DB04();

    v15 = 0;
    sub_24A82DB04();
    v14 = 1;
    sub_24A82DB04();
    v13 = 4;
    sub_24A82DB14();
  }

  (*(v4 + 8))(v6, v3);
}

unsigned __int8 *sub_24A6D9830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_24A82D194();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24A6D9E20(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24A82D8B4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_24A6D9DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPEraseMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A6D9E20(uint64_t a1, unint64_t a2)
{
  v2 = sub_24A82D1A4();
  v6 = sub_24A6D9EA0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_24A6D9EA0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_24A82D644();
    if (!v9 || (v10 = v9, v11 = sub_24A67F0E4(v9, 0), v12 = sub_24A6D9FF8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_24A82D084();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_24A82D084();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_24A82D8B4();
LABEL_4:

  return sub_24A82D084();
}

unint64_t sub_24A6D9FF8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_24A6DA218(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24A82D124();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24A82D8B4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24A6DA218(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_24A82D104();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_24A6DA218(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24A82D144();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C21CA20](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _s8FMIPCore17FMIPEraseMetadataV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v4 = type metadata accessor for FMIPEraseMetadata(0);
  if (sub_24A82C9E4() & 1) != 0 && qword_24A8334F0[*a1] == qword_24A8334F0[*a2] && ((v5 = v4[7], v6 = *&a1[v5], v7 = *&a1[v5 + 8], v8 = &a2[v5], v6 == *v8) ? (v9 = v7 == *(v8 + 1)) : (v9 = 0), (v9 || (sub_24A82DC04()) && ((v10 = v4[6], v11 = *&a1[v10], v12 = *&a1[v10 + 8], v13 = &a2[v10], v11 == *v13) ? (v14 = v12 == *(v13 + 1)) : (v14 = 0), v14 || (sub_24A82DC04())))
  {
    v15 = a1[v4[8]] ^ a2[v4[8]] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t sub_24A6DA37C()
{
  result = qword_27EF5D5A0;
  if (!qword_27EF5D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D5A0);
  }

  return result;
}

unint64_t sub_24A6DA3D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A6DA4AC()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](qword_24A8339D0[v1]);
  return sub_24A82DD24();
}

uint64_t sub_24A6DA534(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](qword_24A8339D0[v2]);
  return sub_24A82DD24();
}

unint64_t sub_24A6DA5A4()
{
  result = qword_27EF5D5B0;
  if (!qword_27EF5D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D5B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPActionStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPActionStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_24A6DA74C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D496A0]) init];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_24A6DA7B8()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);

    v9 = sub_24A695068(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C21C960](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A68761C(v16, v18, &v21);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPDeviceActionsController<%s>.deinit", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  sub_24A6876E8((v1 + 48));
  sub_24A67F378(v1 + 88, &qword_27EF5D608, &qword_24A837E90);
  sub_24A67F378(v1 + 128, &qword_27EF5D610, &qword_24A8339A0);

  return v1;
}

uint64_t sub_24A6DA9CC()
{
  sub_24A6DA7B8();

  return swift_deallocClassInstance();
}

void sub_24A6DAA00(uint64_t *a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t *, void, void *, uint64_t), uint64_t a5)
{
  v63 = a4;
  v9 = type metadata accessor for FMIPDevice(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v58 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281514478 != -1)
  {
    v10 = swift_once();
  }

  v12 = a1[6];
  v65 = a2;
  v66 = a3;
  v64 = a5;
  if (byte_281514481 != 1)
  {
    goto LABEL_6;
  }

  if ((v12 & 0x2000000000000000) != 0)
  {
    if ((v12 & 0xF00000000000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    v20 = 0;
    v18 = 0;
    v15 = 0;
    v26 = 0xEE006D6F632E656CLL;
    v27 = 0uLL;
    v14 = 0x707061406F6D6564;
    v17 = 1;
    v21 = 0xE000000000000000;
    v19 = 0xE000000000000000;
    v16 = 1;
    v62 = 1;
    v24 = 0x707061406F6D6564;
    v25 = 0xEE006D6F632E656CLL;
    goto LABEL_7;
  }

  if ((a1[5] & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v59 = *(a1 + 9);
  v13 = a1[7];
  v60 = a1[8];
  v61 = v13;
  v14 = a1[5];
  v62 = *(a1 + 35);
  v15 = *(a1 + 34);
  v16 = *(a1 + 33);
  v17 = *(a1 + 32);
  v18 = a1[2];
  v19 = a1[3];
  v20 = *a1;
  v21 = a1[1];
  v22 = a1;
  v23 = v12;
  v10 = sub_24A6EF948(v22, &v73);
  v25 = v60;
  v24 = v61;
  v26 = v23;
  v27 = v59;
LABEL_7:
  *&v68 = v20;
  *(&v68 + 1) = v21;
  *&v69 = v18;
  *(&v69 + 1) = v19;
  LOBYTE(v70) = v17;
  BYTE1(v70) = v16;
  BYTE2(v70) = v15;
  v28 = v62;
  BYTE3(v70) = v62;
  *(&v70 + 1) = v14;
  *&v71 = v26;
  *(&v71 + 1) = v24;
  *v72 = v25;
  *&v72[8] = v27;
  v73 = v68;
  v74 = v69;
  v78 = *(&v27 + 1);
  v76 = v71;
  v77 = *v72;
  v75 = v70;
  v29 = MEMORY[0x24C21D990](v10);
  v30 = swift_allocObject();
  v31 = v64;
  *(v30 + 16) = v63;
  *(v30 + 24) = v31;
  v32 = v65;
  v33 = v66;
  *(v30 + 32) = v66;
  *(v30 + 40) = v32;
  v34 = v76;
  *(v30 + 80) = v75;
  *(v30 + 96) = v34;
  *(v30 + 112) = v77;
  *(v30 + 128) = v78;
  v35 = v74;
  *(v30 + 48) = v73;
  *(v30 + 64) = v35;
  v36 = *(*v33 + 200);

  sub_24A6EF948(&v68, v67);

  v37 = sub_24A6EF948(&v68, v67);
  if ((v36(v37) & 1) != 0 && v28)
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v63 = v29;
    v38 = sub_24A82CDC4();
    sub_24A6797D0(v38, qword_27EF78C40);
    v39 = sub_24A82CD94();
    v40 = sub_24A82D504();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_24A675000, v39, v40, "FMIPDeviceActionsController: verifying trusted state", v41, 2u);
      v42 = v41;
      v33 = v66;
      MEMORY[0x24C21E1D0](v42, -1, -1);
    }

    v43 = v58;
    sub_24A68FD9C(v33 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v58, type metadata accessor for FMIPDevice);
    type metadata accessor for FMIPVerifyTrustedStateRequest(0);
    v44 = swift_allocObject();
    sub_24A68FD9C(v43, v44 + qword_27EF78DA8, type metadata accessor for FMIPDevice);
    v45 = sub_24A6A183C(0xD000000000000013, 0x800000024A845490, 0, 0, 1);
    sub_24A68FFEC(v43, type metadata accessor for FMIPDevice);
    v46 = v32[9];
    v47 = v32[10];
    sub_24A67DF6C(v32 + 6, v46);
    v48 = swift_allocObject();
    v48[2] = sub_24A6EF9A4;
    v48[3] = v30;
    v48[4] = v66;
    v49 = *(v47 + 56);
    v50 = type metadata accessor for FMIPVerifyTrustedStateResponse();

    v49(v45, sub_24A6EFA08, v48, v50, v46, v47);

    v29 = v63;
  }

  else
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v51 = sub_24A82CDC4();
    sub_24A6797D0(v51, qword_27EF78C40);
    v52 = sub_24A82CD94();
    v53 = sub_24A82D504();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = v29;
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_24A675000, v52, v53, "FMIPDeviceActionsController: no need to verify trusted state", v55, 2u);
      v56 = v55;
      v29 = v54;
      MEMORY[0x24C21E1D0](v56, -1, -1);
    }

    sub_24A6DB008(v33, 0, v63, v31, v33, v32, &v73);
  }

  sub_24A6EF9B4(&v68);

  sub_24A6EF9B4(&v68);
  objc_autoreleasePoolPop(v29);
}

id sub_24A6DB008(void *a1, void *a2, uint64_t (*a3)(uint64_t *, void, void *, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v11 = sub_24A82CDC4();
    sub_24A6797D0(v11, qword_27EF78C40);
    v12 = a2;
    v13 = sub_24A82CD94();
    v14 = sub_24A82D504();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v60[0] = v16;
      *v15 = 136315138;
      *&v57 = a2;
      v17 = a2;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v18 = sub_24A82D024();
      v20 = sub_24A68761C(v18, v19, v60);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_24A675000, v13, v14, "FMIPDeviceActionsController: error verifing trusted status action:\n%s", v15, 0xCu);
      sub_24A6876E8(v16);
      MEMORY[0x24C21E1D0](v16, -1, -1);
      MEMORY[0x24C21E1D0](v15, -1, -1);
    }

    LOBYTE(v60[0]) = 0;
    return a3(v60, 0, a2, a5);
  }

  else
  {
    v25 = swift_allocObject();
    v25[2] = a3;
    v25[3] = a4;
    v25[4] = a5;
    v25[5] = a6;
    v26 = *(*a1 + 144);

    if (v26(v27))
    {
      v28 = a7;
      v29 = *(a7 + 40);
      v30 = *(v28 + 48);
      v31 = *(*a1 + 152);

      v33 = v31(v32);
      sub_24A67E964(a6 + 128, v60, &qword_27EF5D610, &qword_24A8339A0);
      v53 = type metadata accessor for FMIPEphemeralAuthenticationController();
      v34 = objc_allocWithZone(v53);
      *&v34[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationResults] = 0;
      *&v34[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_action] = a1;
      v35 = &v34[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_username];
      *v35 = v29;
      v35[1] = v30;
      if (v33)
      {
        swift_retain_n();

        v36 = v33;
      }

      else
      {
        v37 = objc_allocWithZone(MEMORY[0x277CF0170]);
        swift_retain_n();

        v36 = [v37 init];
        v33 = 0;
      }

      v38 = v33;
      v39 = sub_24A6D4F1C(v36, v29, v30, a1);

      *&v34[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationContext] = v39;
      sub_24A67E964(v60, &v55, &qword_27EF5D610, &qword_24A8339A0);
      if (v56)
      {
        sub_24A696E80(&v55, &v57);
      }

      else
      {
        result = [objc_allocWithZone(MEMORY[0x277CF0178]) &selRef_initiatePairingWith_completion_];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v40 = result;
        v58 = sub_24A6EFA2C();
        v59 = &off_285DC1E58;
        *&v57 = v40;
        if (v56)
        {
          sub_24A67F378(&v55, &qword_27EF5D610, &qword_24A8339A0);
        }
      }

      sub_24A696E80(&v57, &v34[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationController]);
      v54.receiver = v34;
      v54.super_class = v53;
      v41 = objc_msgSendSuper2(&v54, &selRef_initiatePairingWith_completion_);
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v42 = sub_24A82CDC4();
      sub_24A6797D0(v42, qword_281518F88);
      v43 = sub_24A82CD94();
      v44 = sub_24A82D504();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_24A675000, v43, v44, "FMIPAuthKitAuthenticationController: initialized", v45, 2u);
        MEMORY[0x24C21E1D0](v45, -1, -1);
      }

      sub_24A67F378(v60, &qword_27EF5D610, &qword_24A8339A0);
      v46 = swift_allocObject();
      v46[2] = sub_24A6EFA20;
      v46[3] = v25;
      v46[4] = a1;
      v46[5] = a6;
      v47 = *&v41[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationController + 24];
      v48 = *&v41[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationController + 32];
      sub_24A67DF6C(&v41[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationController], v47);
      v49 = *&v41[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationContext];
      v50 = swift_allocObject();
      v50[2] = sub_24A6EFAD0;
      v50[3] = v46;
      v50[4] = v41;
      v52 = *(v48 + 8);

      v51 = v41;
      v52(v49, sub_24A6EFAFC, v50, v47, v48);
    }

    else
    {
      sub_24A6DB668(a1, 0, a3, a4, a5, a6);
    }
  }
}

void sub_24A6DB668(void *a1, void *a2, void (*a3)(void **, void, void *, uint64_t), char *a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_27EF78C40);
    v11 = a2;
    v12 = sub_24A82CD94();
    v13 = sub_24A82D504();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v68 = v15;
      *v14 = 136315138;
      v16 = a2;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v17 = sub_24A82D024();
      v19 = sub_24A68761C(v17, v18, &v68);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_24A675000, v12, v13, "FMIPDeviceActionsController: error authenticating action: %s", v14, 0xCu);
      sub_24A6876E8(v15);
      MEMORY[0x24C21E1D0](v15, -1, -1);
      MEMORY[0x24C21E1D0](v14, -1, -1);
    }

    LOBYTE(v68) = 0;
    a3(&v68, 0, a2, a5);
    return;
  }

  type metadata accessor for FMIPShowContactDetailsAction(0);
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;

    sub_24A6E78E0(v22, a3, a4);
LABEL_13:

    return;
  }

  type metadata accessor for FMIPPlaySoundDeviceAction(0);
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;

    sub_24A6DBEBC(v24, a3, a4);
    goto LABEL_13;
  }

  type metadata accessor for FMIPLostModeAction(0);
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;

    sub_24A6E6AB4(v26, a3, a4);
    goto LABEL_13;
  }

  type metadata accessor for FMIPLockAction(0);
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    type metadata accessor for FMIPLockRequest(0);
    *(swift_allocObject() + qword_27EF78E88) = v28;
    if ((*(v28 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) != 0)
    {
      v29 = 0xD00000000000001CLL;
    }

    else
    {
      v29 = 0x4D646E416B636F6CLL;
    }

    if ((*(v28 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) != 0)
    {
      v30 = 0x800000024A845510;
    }

    else
    {
      v30 = 0xEE00656761737365;
    }

    v31 = *(v28 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
    v32 = *(v28 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken + 8);

    swift_retain_n();
    v33 = sub_24A6A183C(v29, v30, v31, v32, 1);
    v34 = a6;
    v35 = *(a6 + 72);
    v36 = *(v34 + 80);
    sub_24A67DF6C((v34 + 48), v35);
    v37 = swift_allocObject();
    v37[2] = a3;
    v37[3] = a4;
    v37[4] = v28;
    v38 = *(v36 + 56);
    v39 = type metadata accessor for FMIPLockResponse();

    v40 = sub_24A6EFB6C;
LABEL_40:
    v38(v33, v40, v37, v39, v35, v36);

    goto LABEL_13;
  }

  type metadata accessor for FMIPEraseAction(0);
  v41 = swift_dynamicCastClass();
  if (v41)
  {
    v42 = v41;
    type metadata accessor for FMIPEraseRequest(0);
    *(swift_allocObject() + qword_27EF78D38) = v42;
    v43 = *(v42 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216);
    if ((v43 & 0x80) != 0)
    {
      v44 = 0xD000000000000018;
    }

    else
    {
      v44 = 0xD000000000000016;
    }

    if ((v43 & 0x80) != 0)
    {
      v45 = "remoteWipeWithUserAuth";
    }

    else
    {
      v45 = "cancelWipeWithFamilyAuth";
    }

    v46 = *(v42 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
    v47 = *(v42 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken + 8);

    swift_retain_n();
    v33 = sub_24A6A183C(v44, v45 | 0x8000000000000000, v46, v47, 1);
    v48 = a6;
    v35 = *(a6 + 72);
    v36 = *(v48 + 80);
    sub_24A67DF6C((v48 + 48), v35);
    v37 = swift_allocObject();
    v37[2] = a3;
    v37[3] = a4;
    v37[4] = v42;
    v38 = *(v36 + 56);
    v39 = type metadata accessor for FMIPEraseResponse();

    v40 = sub_24A6EFB20;
    goto LABEL_40;
  }

  type metadata accessor for FMIPCancelEraseAction(0);
  v49 = swift_dynamicCastClass();
  if (v49)
  {
    v50 = v49;
    type metadata accessor for FMIPCancelEraseRequest(0);
    *(swift_allocObject() + qword_27EF78C18) = v50;
    if ((*(v50 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) != 0)
    {
      v51 = 0xD000000000000018;
    }

    else
    {
      v51 = 0x69576C65636E6163;
    }

    if ((*(v50 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) != 0)
    {
      v52 = 0x800000024A8454B0;
    }

    else
    {
      v52 = 0xEA00000000006570;
    }

    v53 = *(v50 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
    v54 = *(v50 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken + 8);

    swift_retain_n();
    v33 = sub_24A6A183C(v51, v52, v53, v54, 1);
    v55 = a6;
    v35 = *(a6 + 72);
    v36 = *(v55 + 80);
    sub_24A67DF6C((v55 + 48), v35);
    v37 = swift_allocObject();
    v37[2] = a3;
    v37[3] = a4;
    v37[4] = v50;
    v38 = *(v36 + 56);
    v39 = type metadata accessor for FMIPCancelEraseResponse();

    v40 = sub_24A6EFB14;
    goto LABEL_40;
  }

  type metadata accessor for FMIPNotifyAction(0);
  v56 = swift_dynamicCastClass();
  if (v56)
  {
    v57 = v56;

    sub_24A6E8294(v57, a3, a4);
    goto LABEL_13;
  }

  type metadata accessor for FMIPRemoveDeviceAction(0);
  v58 = swift_dynamicCastClass();
  if (v58)
  {
    v59 = v58;

    sub_24A6EBFAC(v59, a3, a4);
    goto LABEL_13;
  }

  type metadata accessor for FMIPRepairDeviceAction(0);
  v60 = swift_dynamicCastClass();
  if (v60)
  {
    v61 = v60;

    sub_24A6ECEC8(v61, a3, a4);
    goto LABEL_13;
  }

  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v62 = sub_24A82CDC4();
  sub_24A6797D0(v62, qword_27EF78C40);
  v63 = sub_24A82CD94();
  v64 = sub_24A82D504();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_24A675000, v63, v64, "FMIPDeviceActionsController: cannot map action to request", v65, 2u);
    MEMORY[0x24C21E1D0](v65, -1, -1);
  }

  LOBYTE(v68) = 0;
  sub_24A6EE8A0();
  v66 = swift_allocError();
  *v67 = 0;
  a3(&v68, 0, v66, a5);
}

uint64_t sub_24A6DBEBC(char *a1, void (*a2)(void **, uint64_t, void *, char *), uint64_t a3)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_27EF78C40);

  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136446979;

    v11 = sub_24A6FAE80();
    v13 = v12;

    v14 = sub_24A68761C(v11, v13, &v30);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    *(v9 + 24) = sub_24A68761C(*&a1[OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device], *&a1[OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 8], &v30);
    *(v9 + 32) = 2082;
    v15 = MEMORY[0x24C21CB60](*&a1[OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels], &type metadata for FMIPPlaySoundChannels);
    v17 = sub_24A68761C(v15, v16, &v30);

    *(v9 + 34) = v17;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPDeviceActionsController: perform %{public}s for %{private,mask.hash}s. Channels: %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v10, -1, -1);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  v18 = a1[OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundMethod];
  if (v18 >= 2)
  {
    if (v18 == 2)
    {
      v23 = sub_24A82CD94();
      v24 = sub_24A82D504();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_24A675000, v23, v24, "FMIPDeviceActionsController: ble sound method", v25, 2u);
        MEMORY[0x24C21E1D0](v25, -1, -1);
      }

      return sub_24A6DC2E8(a1, a2, a3);
    }

    else
    {
      v26 = sub_24A82CD94();
      v27 = sub_24A82D504();
      if (os_log_type_enabled(v26, v27))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_24A675000, v26, v27, "FMIPDeviceActionsController: siri sound method", v29, 2u);
        MEMORY[0x24C21E1D0](v29, -1, -1);
      }

      return sub_24A6E605C(a1, a2, a3);
    }
  }

  else
  {
    v19 = sub_24A82CD94();
    v20 = sub_24A82D504();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A675000, v19, v20, "FMIPDeviceActionsController: classic sound method", v21, 2u);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    return sub_24A6E2B9C(a1, a2, a3);
  }
}

uint64_t sub_24A6DC2E8(char *a1, void (*a2)(void **, uint64_t, void *, char *), uint64_t a3)
{
  v697 = a2;
  v698 = a3;
  v687 = type metadata accessor for FMIPItem(0);
  v704 = *(v687 - 8);
  v4 = MEMORY[0x28223BE20](v687);
  v703 = v613 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v613 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v613 - v9;
  v11 = sub_24A6BBA94(&qword_27EF5D018, &qword_24A830E38);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v678 = v613 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v682 = v613 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v677 = v613 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v681 = v613 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v679 = v613 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v686 = v613 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v685 = v613 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v684 = v613 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v683 = v613 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v689 = v613 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v699 = v613 - v33;
  MEMORY[0x28223BE20](v32);
  v696 = v613 - v34;
  v35 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v624 = v613 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v628 = v613 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v629 = v613 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v634 = v613 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v641 = v613 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v654 = v613 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v644 = v613 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v666 = v613 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v658 = v613 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v672 = v613 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v664 = v613 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v693 = v613 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v691 = v613 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v692 = v613 - v63;
  MEMORY[0x28223BE20](v62);
  v690 = v613 - v64;
  v65 = sub_24A82CAA4();
  v66 = *(v65 - 8);
  v700 = v65;
  v701 = v66;
  v67 = MEMORY[0x28223BE20](v65);
  v633 = v613 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x28223BE20](v67);
  v631 = v613 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v632 = v613 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v630 = v613 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v616 = v613 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v615 = v613 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v617 = v613 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v619 = v613 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v618 = v613 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v620 = v613 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v622 = v613 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v621 = v613 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v623 = v613 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v626 = v613 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v625 = v613 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v627 = v613 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v648 = v613 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v647 = v613 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v636 = v613 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v635 = v613 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v642 = v613 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v646 = v613 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v645 = v613 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v655 = v613 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v639 = v613 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v640 = v613 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v638 = v613 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v637 = v613 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v643 = v613 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v665 = v613 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v662 = v613 - v128;
  v129 = MEMORY[0x28223BE20](v127);
  v653 = v613 - v130;
  v131 = MEMORY[0x28223BE20](v129);
  v652 = v613 - v132;
  v133 = MEMORY[0x28223BE20](v131);
  v667 = v613 - v134;
  v135 = MEMORY[0x28223BE20](v133);
  v663 = v613 - v136;
  v137 = MEMORY[0x28223BE20](v135);
  v660 = v613 - v138;
  v139 = MEMORY[0x28223BE20](v137);
  v650 = v613 - v140;
  v141 = MEMORY[0x28223BE20](v139);
  v649 = v613 - v142;
  v143 = MEMORY[0x28223BE20](v141);
  v651 = v613 - v144;
  v145 = MEMORY[0x28223BE20](v143);
  v670 = v613 - v146;
  v147 = MEMORY[0x28223BE20](v145);
  v669 = v613 - v148;
  v149 = MEMORY[0x28223BE20](v147);
  v671 = v613 - v150;
  v151 = MEMORY[0x28223BE20](v149);
  v659 = v613 - v152;
  v153 = MEMORY[0x28223BE20](v151);
  v674 = v613 - v154;
  v155 = MEMORY[0x28223BE20](v153);
  v673 = v613 - v156;
  v157 = MEMORY[0x28223BE20](v155);
  v668 = v613 - v158;
  v159 = MEMORY[0x28223BE20](v157);
  v657 = v613 - v160;
  v161 = MEMORY[0x28223BE20](v159);
  v656 = v613 - v162;
  v163 = MEMORY[0x28223BE20](v161);
  v661 = v613 - v164;
  v165 = MEMORY[0x28223BE20](v163);
  v676 = v613 - v166;
  v167 = MEMORY[0x28223BE20](v165);
  v675 = v613 - v168;
  MEMORY[0x28223BE20](v167);
  v694 = v613 - v169;
  v170 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v170 - 8);
  v172 = v613 - v171;
  v173 = type metadata accessor for FMIPItemGroup(0);
  v174 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v176 = v613 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  v702 = a1;
  v177 = &a1[OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device];
  v178 = type metadata accessor for FMIPDevice(0);
  v179 = *(v178 + 128);
  v695 = v177;
  sub_24A67E964(&v177[v179], v172, &unk_27EF5E0B0, &qword_24A8338B0);
  if ((*(v174 + 48))(v172, 1, v173) != 1)
  {
    sub_24A6EF274(v172, v176, type metadata accessor for FMIPItemGroup);
    v195 = v690;
    sub_24A82CA44();
    v197 = v700;
    v196 = v701;
    v198 = v701 + 48;
    v199 = *(v701 + 48);
    v200 = v199(v195, 1, v700);
    v201 = 0x27EF5C000;
    v688 = v176;
    if (v200 == 1)
    {
      sub_24A67F378(v195, &qword_27EF5D020, &qword_24A830E40);
      if (qword_27EF5CB98 != -1)
      {
        swift_once();
      }

      v202 = sub_24A82CDC4();
      sub_24A6797D0(v202, qword_27EF78C40);
      v203 = v702;

      v204 = sub_24A82CD94();
      v205 = sub_24A82D4E4();

      v206 = os_log_type_enabled(v204, v205);
      v207 = v688;
      if (v206)
      {
        v208 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        v705 = v209;
        *v208 = 136446210;

        v210 = sub_24A6FAE80();
        v212 = v211;

        v213 = sub_24A68761C(v210, v212, &v705);

        *(v208 + 4) = v213;
        _os_log_impl(&dword_24A675000, v204, v205, "FMIPDeviceActionsController: cannot perform %{public}s for item with an invalid group identifier.", v208, 0xCu);
        sub_24A6876E8(v209);
        MEMORY[0x24C21E1D0](v209, -1, -1);
        MEMORY[0x24C21E1D0](v208, -1, -1);
      }

      LOBYTE(v705) = 0;
      sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
      v214 = (*(*(v178 - 8) + 80) + 32) & ~*(*(v178 - 8) + 80);
      v215 = swift_allocObject();
      *(v215 + 16) = xmmword_24A8327A0;
      sub_24A68FD9C(v695, v215 + v214, type metadata accessor for FMIPDevice);
      sub_24A6EE8A0();
      v216 = swift_allocError();
      *v217 = 6;
      v697(&v705, v215, v216, v203);

      v218 = v207;
      return sub_24A68FFEC(v218, type metadata accessor for FMIPItemGroup);
    }

    v614 = v199;
    v219 = *(v196 + 32);
    v613[1] = v196 + 32;
    v613[0] = v219;
    v219(v694, v195, v197);
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v690 = sub_24A82CDC4();
    sub_24A6797D0(v690, qword_27EF78C40);

    v220 = sub_24A82CD94();
    v221 = sub_24A82D504();

    v222 = os_log_type_enabled(v220, v221);
    v613[2] = v198;
    if (v222)
    {
      v223 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      v705 = v201;
      *v223 = 136446210;

      v224 = sub_24A6FAE80();
      v226 = v225;

      v227 = sub_24A68761C(v224, v226, &v705);

      *(v223 + 4) = v227;
      _os_log_impl(&dword_24A675000, v220, v221, "FMIPDeviceActionsController: performing offline %{public}s.", v223, 0xCu);
      sub_24A6876E8(v201);
      MEMORY[0x24C21E1D0](v201, -1, -1);
      MEMORY[0x24C21E1D0](v223, -1, -1);
    }

    v228 = v687;
    v229 = *(v688 + 5);
    v230 = v229[2];
    if (!v230)
    {
LABEL_36:
      v237 = 1;
      v238 = v696;
      goto LABEL_39;
    }

    v231 = 0;
    v232 = v229 + ((*(v704 + 80) + 32) & ~*(v704 + 80));
    while (1)
    {
      if (v231 >= v229[2])
      {
        __break(1u);
LABEL_266:
        __break(1u);
        goto LABEL_267;
      }

      sub_24A68FD9C(v232 + v704[9] * v231, v10, type metadata accessor for FMIPItem);
      v233 = &v10[*(v228 + 64)];
      if (!*(v233 + 1))
      {
        break;
      }

      v234 = v233[32];
      if (v234 <= 1)
      {
        if (v234)
        {
          goto LABEL_32;
        }

LABEL_30:
        v201 = 0xEA0000000000656ELL;
        goto LABEL_34;
      }

      if (v234 == 2)
      {
        v201 = 0xE700000000000000;
        goto LABEL_34;
      }

      if (v234 != 4)
      {

LABEL_38:
        v239 = v696;
        sub_24A6EF274(v10, v696, type metadata accessor for FMIPItem);
        v238 = v239;
        v237 = 0;
LABEL_39:
        v201 = v704;
        v221 = v704[7];
        (v221)(v238, v237, 1, v228);
        v695 = v221;
        if (v230)
        {
          v232 = 0;
          v240 = v229 + ((*(v201 + 80) + 32) & ~*(v201 + 80));
          while (1)
          {
            if (v232 >= v229[2])
            {
              goto LABEL_266;
            }

            v241 = v704[9];
            sub_24A68FD9C(v240 + v241 * v232, v8, type metadata accessor for FMIPItem);
            v242 = &v8[*(v228 + 64)];
            if (!*(v242 + 1))
            {
              break;
            }

            v243 = v242[32];
            if (v243 <= 1)
            {
              if (v243)
              {
                goto LABEL_54;
              }

LABEL_52:
              v201 = 0xEA0000000000656ELL;
              goto LABEL_56;
            }

            if (v243 == 3)
            {
              v201 = 0xE800000000000000;
            }

            else
            {
              if (v243 != 4)
              {

LABEL_61:
                v247 = v699;
                sub_24A6EF274(v8, v699, type metadata accessor for FMIPItem);
                v246 = 0;
LABEL_62:
                (v695)(v247, v246, 1, v228);
                v232 = 0;
                v248 = v703;
                while (v232 < v229[2])
                {
                  sub_24A68FD9C(v240, v248, type metadata accessor for FMIPItem);
                  v249 = v248 + *(v228 + 64);
                  if (*(v249 + 8))
                  {
                    v250 = *(v249 + 32);
                    if (v250 <= 2 && v250 && v250 != 2)
                    {
                      goto LABEL_77;
                    }
                  }

                  else
                  {
                    v251 = (v248 + *(v228 + 56));
                    v252 = *v251 == 1702060355 && v251[1] == 0xE400000000000000;
                    if (v252 || (sub_24A82DC04() & 1) != 0)
                    {
LABEL_77:

LABEL_78:
                      v254 = v689;
                      sub_24A6EF274(v248, v689, type metadata accessor for FMIPItem);
                      v255 = v254;
                      v256 = 0;
                      goto LABEL_79;
                    }
                  }

                  v253 = sub_24A82DC04();

                  v248 = v703;
                  if (v253)
                  {
                    goto LABEL_78;
                  }

                  ++v232;
                  sub_24A68FFEC(v703, type metadata accessor for FMIPItem);
                  v240 += v241;
                  if (v230 == v232)
                  {
                    goto LABEL_76;
                  }
                }

                __break(1u);
                goto LABEL_279;
              }

              v201 = 0xE700000000000000;
            }

LABEL_56:
            v221 = sub_24A82DC04();

            if (v221)
            {
              goto LABEL_61;
            }

            ++v232;
            sub_24A68FFEC(v8, type metadata accessor for FMIPItem);
            if (v230 == v232)
            {
              v246 = 1;
              v247 = v699;
              goto LABEL_62;
            }
          }

          v244 = &v8[*(v228 + 56)];
          v245 = *v244 == 1702060355 && *(v244 + 1) == 0xE400000000000000;
          if (v245 || (sub_24A82DC04() & 1) != 0)
          {
LABEL_54:
            v201 = 0xE400000000000000;
            goto LABEL_56;
          }

          goto LABEL_52;
        }

        (v221)(v699, 1, 1, v228);
LABEL_76:
        v254 = v689;
        v255 = v689;
        v256 = 1;
LABEL_79:
        (v695)(v255, v256, 1, v228);
        v257 = v696;
        v258 = v683;
        sub_24A67E964(v696, v683, &qword_27EF5D018, &qword_24A830E38);
        v259 = v704[6];
        v229 = v704 + 6;
        v260 = v259(v258, 1, v228);
        v261 = v699;
        v262 = v685;
        v263 = v684;
        if (v260 == 1)
        {
          sub_24A67F378(v258, &qword_27EF5D018, &qword_24A830E38);
          v264 = 1;
          goto LABEL_83;
        }

        v264 = *(v258 + *(v228 + 76));
        sub_24A68FFEC(v258, type metadata accessor for FMIPItem);
        if ((v264 & 6) != 0)
        {
          v265 = 1;
        }

        else
        {
LABEL_83:
          v265 = (v264 >> 11) & 1;
        }

        v703 = v265;
        sub_24A67E964(v261, v263, &qword_27EF5D018, &qword_24A830E38);
        if (v259(v263, 1, v228) == 1)
        {
          sub_24A67F378(v263, &qword_27EF5D018, &qword_24A830E38);
          v266 = 1;
          goto LABEL_88;
        }

        v266 = *(v263 + *(v228 + 76));
        sub_24A68FFEC(v263, type metadata accessor for FMIPItem);
        if ((v266 & 6) != 0)
        {
          v267 = 1;
        }

        else
        {
LABEL_88:
          v267 = (v266 >> 11) & 1;
        }

        v695 = v267;
        sub_24A67E964(v254, v262, &qword_27EF5D018, &qword_24A830E38);
        if (v259(v262, 1, v228) == 1)
        {
          sub_24A67F378(v262, &qword_27EF5D018, &qword_24A830E38);
          v268 = 1;
          goto LABEL_93;
        }

        v268 = *(v262 + *(v228 + 76));
        sub_24A68FFEC(v262, type metadata accessor for FMIPItem);
        if ((v268 & 6) != 0)
        {
          v269 = v254;
          v270 = 1;
        }

        else
        {
LABEL_93:
          v269 = v254;
          v270 = (v268 >> 11) & 1;
        }

        v704 = v270;
        v271 = v686;
        sub_24A67E964(v257, v686, &qword_27EF5D018, &qword_24A830E38);
        v272 = v259(v271, 1, v228);
        sub_24A67F378(v271, &qword_27EF5D018, &qword_24A830E38);
        if (v272 == 1)
        {
          (*(v701 + 56))(v692, 1, 1, v700);
          goto LABEL_98;
        }

        v273 = v679;
        sub_24A67E964(v257, v679, &qword_27EF5D018, &qword_24A830E38);
        if (v259(v273, 1, v228) == 1)
        {
          __break(1u);
        }

        else
        {

          sub_24A68FFEC(v273, type metadata accessor for FMIPItem);
          sub_24A82CA44();

LABEL_98:
          v271 = v269;
          v274 = v699;
          v275 = v681;
          sub_24A67E964(v699, v681, &qword_27EF5D018, &qword_24A830E38);
          v276 = v259(v275, 1, v228);
          sub_24A67F378(v275, &qword_27EF5D018, &qword_24A830E38);
          if (v276 == 1)
          {
            (*(v701 + 56))(v691, 1, 1, v700);
            goto LABEL_102;
          }

          v273 = v677;
          sub_24A67E964(v274, v677, &qword_27EF5D018, &qword_24A830E38);
          if (v259(v273, 1, v228) != 1)
          {

            sub_24A68FFEC(v273, type metadata accessor for FMIPItem);
            sub_24A82CA44();

LABEL_102:
            v277 = v702;
            v278 = v682;
            sub_24A67E964(v271, v682, &qword_27EF5D018, &qword_24A830E38);
            v273 = v259(v278, 1, v228);
            sub_24A67F378(v278, &qword_27EF5D018, &qword_24A830E38);
            if (v273 == 1)
            {
              (*(v701 + 56))(v693, 1, 1, v700);
LABEL_106:
              v280 = *&v277[OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels];
              v281 = *(v280 + 16);
              v282 = (v280 + 32);
              v283 = (v280 + 32);
              do
              {
                v285 = v281;
                if (!v281)
                {
                  break;
                }

                v286 = *v283;
                if (v286 >= 4)
                {

                  break;
                }

                v284 = sub_24A82DC04();

                ++v283;
                v281 = v285 - 1;
              }

              while ((v284 & 1) == 0);
              v287 = *(v280 + 16);
              if (v287)
              {
                v288 = MEMORY[0x277D84F90];
                do
                {
                  v290 = *v282++;
                  v289 = v290;
                  if (v290 <= 1 || v289 == 2 || v289 == 3)
                  {
                    v291 = sub_24A82DC04();

                    if ((v291 & 1) == 0)
                    {
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v705 = v288;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        sub_24A6FC9DC(0, *(v288 + 16) + 1, 1);
                        v288 = v705;
                      }

                      v294 = *(v288 + 16);
                      v293 = *(v288 + 24);
                      if (v294 >= v293 >> 1)
                      {
                        sub_24A6FC9DC((v293 > 1), v294 + 1, 1);
                        v288 = v705;
                      }

                      *(v288 + 16) = v294 + 1;
                      *(v288 + v294 + 32) = v289;
                    }
                  }

                  else
                  {
                  }

                  --v287;
                }

                while (v287);
              }

              else
              {
                v288 = MEMORY[0x277D84F90];
              }

              v295 = sub_24A713EB4(v288);

              v296 = sub_24A713EB4(&unk_285DBDAE0);
              v297 = sub_24A7B4B08(v296, v295);

              if (v297)
              {

                v232 = v688;
                v298 = v700;
                v299 = v694;
                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v690, qword_27EF78C58);
                v300 = v701;
                v301 = *(v701 + 16);
                v302 = v675;
                v301(v675, v299, v298);
                v303 = v676;
                v301(v676, v302, v298);
                v304 = *(v300 + 8);
                v304(v302, v298);
                v305 = sub_24A82CD94();
                v306 = sub_24A82D504();
                v307 = os_log_type_enabled(v305, v306);
                v308 = v696;
                if (v307)
                {
                  v309 = swift_slowAlloc();
                  v310 = swift_slowAlloc();
                  v705 = v310;
                  *v309 = 136446210;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                  v311 = sub_24A82DB84();
                  v313 = v312;
                  v304(v303, v298);
                  v314 = sub_24A68761C(v311, v313, &v705);
                  v232 = v688;

                  *(v309 + 4) = v314;
                  _os_log_impl(&dword_24A675000, v305, v306, "Playing groupID offline for %{public}s.", v309, 0xCu);
                  sub_24A6876E8(v310);
                  v315 = v310;
                  v299 = v694;
                  MEMORY[0x24C21E1D0](v315, -1, -1);
                  v316 = v309;
                  v308 = v696;
                  MEMORY[0x24C21E1D0](v316, -1, -1);
                }

                else
                {

                  v304(v303, v298);
                }

                sub_24A6E21F8(v299, 1, v702, v680, v697, v698);
                sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v691, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v692, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                sub_24A67F378(v308, &qword_27EF5D018, &qword_24A830E38);
                v335 = v299;
                v336 = v298;
                goto LABEL_140;
              }

              v317 = sub_24A713EB4(&unk_285DBDB08);
              v318 = sub_24A7B4B08(v317, v295);

              v232 = v688;
              v229 = v700;
              v230 = v694;
              v8 = v702;
              if (v318)
              {

                v319 = v701;
                v320 = v673;
                if (v704)
                {
                  goto LABEL_134;
                }

                v321 = v664;
                sub_24A67E964(v693, v664, &qword_27EF5D020, &qword_24A830E40);
                if (v614(v321, 1, v229) == 1)
                {
                  sub_24A67F378(v321, &qword_27EF5D020, &qword_24A830E40);
LABEL_134:
                  if (qword_27EF5CBA0 != -1)
                  {
                    swift_once();
                  }

                  sub_24A6797D0(v690, qword_27EF78C58);
                  v322 = *(v319 + 16);
                  v323 = v668;
                  v322(v668, v230, v229);
                  v322(v320, v323, v229);
                  v324 = *(v319 + 8);
                  v324(v323, v229);
                  v325 = sub_24A82CD94();
                  v326 = sub_24A82D504();
                  if (os_log_type_enabled(v325, v326))
                  {
                    v327 = swift_slowAlloc();
                    v328 = swift_slowAlloc();
                    v705 = v328;
                    *v327 = 136446210;
                    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                    v329 = sub_24A82DB84();
                    v330 = v320;
                    v332 = v331;
                    v324(v330, v229);
                    v333 = sub_24A68761C(v329, v332, &v705);

                    *(v327 + 4) = v333;
                    _os_log_impl(&dword_24A675000, v325, v326, "Error playing case sound %{public}s.", v327, 0xCu);
                    sub_24A6876E8(v328);
                    v334 = v328;
                    v230 = v694;
                    MEMORY[0x24C21E1D0](v334, -1, -1);
                    MEMORY[0x24C21E1D0](v327, -1, -1);
                  }

                  else
                  {

                    v324(v320, v229);
                  }

                  v363 = v614;
                  v364 = v672;
                  v365 = v674;
                  v366 = v671;
                  if (v703)
                  {
LABEL_180:
                    if (qword_27EF5CBA0 != -1)
                    {
                      swift_once();
                    }

                    sub_24A6797D0(v690, qword_27EF78C58);
                    v416 = v669;
                    v322(v669, v230, v229);
                    v417 = v670;
                    v322(v670, v416, v229);
                    v324(v416, v229);
                    v418 = sub_24A82CD94();
                    v419 = sub_24A82D504();
                    if (os_log_type_enabled(v418, v419))
                    {
                      v420 = swift_slowAlloc();
                      v421 = v230;
                      v422 = swift_slowAlloc();
                      v705 = v422;
                      *v420 = 136446210;
                      sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                      v423 = sub_24A82DB84();
                      v424 = v417;
                      v426 = v425;
                      v324(v424, v229);
                      v427 = sub_24A68761C(v423, v426, &v705);

                      *(v420 + 4) = v427;
                      _os_log_impl(&dword_24A675000, v418, v419, "Error playing right sound %{public}s.", v420, 0xCu);
                      sub_24A6876E8(v422);
                      MEMORY[0x24C21E1D0](v422, -1, -1);
                      MEMORY[0x24C21E1D0](v420, -1, -1);

                      sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                      sub_24A67F378(v691, &qword_27EF5D020, &qword_24A830E40);
                      sub_24A67F378(v692, &qword_27EF5D020, &qword_24A830E40);
                      sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                      sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                      sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                      v428 = v421;
                    }

                    else
                    {

                      v324(v417, v229);
                      sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                      sub_24A67F378(v691, &qword_27EF5D020, &qword_24A830E40);
                      sub_24A67F378(v692, &qword_27EF5D020, &qword_24A830E40);
                      sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                      sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                      sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                      v428 = v230;
                    }

                    v324(v428, v229);
                    goto LABEL_215;
                  }
                }

                else
                {
                  v367 = v661;
                  (v613[0])(v661, v321, v229);
                  if (qword_27EF5CBA0 != -1)
                  {
                    swift_once();
                  }

                  sub_24A6797D0(v690, qword_27EF78C58);
                  v322 = *(v319 + 16);
                  v368 = v656;
                  v322(v656, v367, v229);
                  v369 = v657;
                  v322(v657, v368, v229);
                  v324 = *(v319 + 8);
                  v324(v368, v229);
                  v370 = sub_24A82CD94();
                  v371 = sub_24A82D504();
                  if (os_log_type_enabled(v370, v371))
                  {
                    v372 = swift_slowAlloc();
                    v373 = swift_slowAlloc();
                    v705 = v373;
                    *v372 = 141558275;
                    *(v372 + 4) = 1752392040;
                    *(v372 + 12) = 2081;
                    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                    v374 = sub_24A82DB84();
                    v375 = v369;
                    v377 = v376;
                    v324(v375, v229);
                    v378 = sub_24A68761C(v374, v377, &v705);

                    *(v372 + 14) = v378;
                    _os_log_impl(&dword_24A675000, v370, v371, "Playing case offline for %{private,mask.hash}s.", v372, 0x16u);
                    sub_24A6876E8(v373);
                    v379 = v373;
                    v230 = v694;
                    MEMORY[0x24C21E1D0](v379, -1, -1);
                    v380 = v372;
                    v367 = v661;
                    MEMORY[0x24C21E1D0](v380, -1, -1);
                  }

                  else
                  {

                    v324(v369, v229);
                  }

                  v364 = v672;
                  v365 = v674;
                  v366 = v671;
                  sub_24A6E21F8(v367, 1, v702, v680, v697, v698);
                  v324(v367, v229);
                  v363 = v614;
                  if (v703)
                  {
                    goto LABEL_180;
                  }
                }

                sub_24A67E964(v692, v364, &qword_27EF5D020, &qword_24A830E40);
                if (v363(v364, 1, v229) == 1)
                {
                  sub_24A67F378(v364, &qword_27EF5D020, &qword_24A830E40);
                  goto LABEL_180;
                }

                (v613[0])(v365, v364, v229);
                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v690, qword_27EF78C58);
                v429 = v659;
                v322(v659, v365, v229);
                v322(v366, v429, v229);
                v324(v429, v229);
                v430 = sub_24A82CD94();
                v431 = v366;
                v432 = sub_24A82D504();
                if (os_log_type_enabled(v430, v432))
                {
                  v433 = swift_slowAlloc();
                  v434 = swift_slowAlloc();
                  v705 = v434;
                  *v433 = 141558275;
                  *(v433 + 4) = 1752392040;
                  *(v433 + 12) = 2081;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                  v435 = sub_24A82DB84();
                  v437 = v436;
                  v324(v431, v229);
                  v438 = sub_24A68761C(v435, v437, &v705);
                  v365 = v674;

                  *(v433 + 14) = v438;
                  _os_log_impl(&dword_24A675000, v430, v432, "Playing right offline for %{private,mask.hash}s.", v433, 0x16u);
                  sub_24A6876E8(v434);
                  v439 = v434;
                  v440 = v694;
                  MEMORY[0x24C21E1D0](v439, -1, -1);
                  MEMORY[0x24C21E1D0](v433, -1, -1);

                  v441 = v688;
                  v442 = v691;
                }

                else
                {

                  v324(v431, v229);
                  v441 = v688;
                  v442 = v691;
                  v440 = v694;
                }

                sub_24A6E21F8(v365, 1, v702, v680, v697, v698);
                v324(v365, v229);
                sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v442, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v692, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                v324(v440, v229);
LABEL_231:
                v218 = v441;
                return sub_24A68FFEC(v218, type metadata accessor for FMIPItemGroup);
              }

              v337 = sub_24A713EB4(&unk_285DBDB30);
              v338 = sub_24A7B4B08(v337, v295);

              if (v338)
              {

                v339 = v701;
                v340 = v663;
                if (v704)
                {
                  goto LABEL_146;
                }

                v341 = v658;
                sub_24A67E964(v693, v658, &qword_27EF5D020, &qword_24A830E40);
                if (v614(v341, 1, v229) == 1)
                {
                  sub_24A67F378(v341, &qword_27EF5D020, &qword_24A830E40);
LABEL_146:
                  if (qword_27EF5CBA0 != -1)
                  {
                    swift_once();
                  }

                  sub_24A6797D0(v690, qword_27EF78C58);
                  v342 = *(v339 + 16);
                  v343 = v660;
                  v342(v660, v230, v229);
                  v342(v340, v343, v229);
                  v344 = *(v339 + 8);
                  (v344)(v343, v229);
                  v345 = sub_24A82CD94();
                  v346 = sub_24A82D504();
                  v347 = os_log_type_enabled(v345, v346);
                  v704 = v344;
                  if (v347)
                  {
                    v348 = swift_slowAlloc();
                    v703 = v342;
                    v349 = v344;
                    v350 = v348;
                    v351 = swift_slowAlloc();
                    v705 = v351;
                    *v350 = 136446210;
                    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                    v352 = sub_24A82DB84();
                    v354 = v353;
                    v349(v340, v229);
                    v342 = v703;
                    v355 = sub_24A68761C(v352, v354, &v705);

                    *(v350 + 4) = v355;
                    _os_log_impl(&dword_24A675000, v345, v346, "Error playing case sound %{public}s.", v350, 0xCu);
                    sub_24A6876E8(v351);
                    v356 = v351;
                    v230 = v694;
                    MEMORY[0x24C21E1D0](v356, -1, -1);
                    MEMORY[0x24C21E1D0](v350, -1, -1);
                  }

                  else
                  {

                    (v344)(v340, v229);
                  }

                  v396 = v691;
                  v397 = v614;
                  v398 = v666;
                  v399 = v667;
                }

                else
                {
                  v400 = v651;
                  (v613[0])(v651, v341, v229);
                  if (qword_27EF5CBA0 != -1)
                  {
                    swift_once();
                  }

                  sub_24A6797D0(v690, qword_27EF78C58);
                  v342 = *(v339 + 16);
                  v401 = v649;
                  v342(v649, v400, v229);
                  v402 = v650;
                  v342(v650, v401, v229);
                  v403 = *(v339 + 8);
                  (v403)(v401, v229);
                  v404 = sub_24A82CD94();
                  v405 = sub_24A82D504();
                  v406 = os_log_type_enabled(v404, v405);
                  v704 = v403;
                  if (v406)
                  {
                    v407 = swift_slowAlloc();
                    v408 = swift_slowAlloc();
                    v705 = v408;
                    *v407 = 141558275;
                    *(v407 + 4) = 1752392040;
                    *(v407 + 12) = 2081;
                    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                    v409 = sub_24A82DB84();
                    v410 = v402;
                    v412 = v411;
                    (v704)(v410, v229);
                    v413 = sub_24A68761C(v409, v412, &v705);

                    *(v407 + 14) = v413;
                    _os_log_impl(&dword_24A675000, v404, v405, "Playing case offline for %{private,mask.hash}s.", v407, 0x16u);
                    sub_24A6876E8(v408);
                    v414 = v408;
                    v230 = v694;
                    MEMORY[0x24C21E1D0](v414, -1, -1);
                    v415 = v407;
                    v403 = v704;
                    MEMORY[0x24C21E1D0](v415, -1, -1);
                  }

                  else
                  {

                    (v403)(v402, v229);
                  }

                  v396 = v691;
                  v398 = v666;
                  v399 = v667;
                  sub_24A6E21F8(v400, 1, v702, v680, v697, v698);
                  (v403)(v400, v229);
                  v397 = v614;
                }

                v475 = v665;
                if ((v695 & 1) == 0)
                {
                  sub_24A67E964(v396, v398, &qword_27EF5D020, &qword_24A830E40);
                  if (v397(v398, 1, v229) != 1)
                  {
                    (v613[0])(v399, v398, v229);
                    if (qword_27EF5CBA0 != -1)
                    {
                      swift_once();
                    }

                    sub_24A6797D0(v690, qword_27EF78C58);
                    v487 = v652;
                    v342(v652, v399, v229);
                    v488 = v653;
                    v342(v653, v487, v229);
                    v489 = v704;
                    (v704)(v487, v229);
                    v490 = sub_24A82CD94();
                    v491 = sub_24A82D504();
                    if (os_log_type_enabled(v490, v491))
                    {
                      v492 = swift_slowAlloc();
                      v493 = swift_slowAlloc();
                      v705 = v493;
                      *v492 = 141558275;
                      *(v492 + 4) = 1752392040;
                      *(v492 + 12) = 2081;
                      sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                      v494 = sub_24A82DB84();
                      v496 = v495;
                      (v489)(v488, v229);
                      v497 = sub_24A68761C(v494, v496, &v705);
                      v396 = v691;

                      *(v492 + 14) = v497;
                      _os_log_impl(&dword_24A675000, v490, v491, "Playing left offline for %{private,mask.hash}s.", v492, 0x16u);
                      sub_24A6876E8(v493);
                      v498 = v694;
                      MEMORY[0x24C21E1D0](v493, -1, -1);
                      MEMORY[0x24C21E1D0](v492, -1, -1);

                      v441 = v688;
                    }

                    else
                    {

                      (v489)(v488, v229);
                      v441 = v688;
                      v498 = v694;
                    }

                    v511 = v667;
                    sub_24A6E21F8(v667, 1, v702, v680, v697, v698);
                    (v489)(v511, v229);
                    sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v396, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v692, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                    (v489)(v498, v229);
                    goto LABEL_231;
                  }

                  sub_24A67F378(v398, &qword_27EF5D020, &qword_24A830E40);
                }

                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v690, qword_27EF78C58);
                v476 = v662;
                v342(v662, v230, v229);
                v342(v475, v476, v229);
                v477 = v704;
                (v704)(v476, v229);
                v478 = sub_24A82CD94();
                v479 = sub_24A82D504();
                if (os_log_type_enabled(v478, v479))
                {
                  v480 = swift_slowAlloc();
                  v481 = swift_slowAlloc();
                  v705 = v481;
                  *v480 = 136446210;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                  v482 = sub_24A82DB84();
                  v484 = v483;
                  (v477)(v475, v229);
                  v485 = sub_24A68761C(v482, v484, &v705);

                  *(v480 + 4) = v485;
                  _os_log_impl(&dword_24A675000, v478, v479, "Error playing left sound %{public}s.", v480, 0xCu);
                  sub_24A6876E8(v481);
                  MEMORY[0x24C21E1D0](v481, -1, -1);
                  MEMORY[0x24C21E1D0](v480, -1, -1);

                  sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v691, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v692, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                  v486 = v694;
                }

                else
                {

                  (v477)(v475, v229);
                  sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v396, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v692, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                  v486 = v230;
                }

                (v477)(v486, v229);
LABEL_215:
                v218 = v688;
                return sub_24A68FFEC(v218, type metadata accessor for FMIPItemGroup);
              }

              v357 = sub_24A713EB4(&unk_285DBDB58);
              v358 = sub_24A7B4B08(v357, v295);

              if (v358)
              {

                if (v285)
                {
                  v359 = v701;
                  v360 = v654;
                  v361 = v655;
                  if ((v695 & 1) == 0)
                  {
                    v362 = v644;
                    sub_24A67E964(v691, v644, &qword_27EF5D020, &qword_24A830E40);
                    if (v614(v362, 1, v229) == 1)
                    {
                      sub_24A67F378(v362, &qword_27EF5D020, &qword_24A830E40);
                    }

                    else
                    {
                      v514 = v643;
                      (v613[0])(v643, v362, v229);
                      if (qword_27EF5CBA0 != -1)
                      {
                        swift_once();
                      }

                      sub_24A6797D0(v690, qword_27EF78C58);
                      v515 = *(v359 + 16);
                      v516 = v637;
                      v515(v637, v514, v229);
                      v517 = v638;
                      v515(v638, v516, v229);
                      v518 = *(v359 + 8);
                      (v518)(v516, v229);
                      v519 = sub_24A82CD94();
                      v520 = sub_24A82D504();
                      if (os_log_type_enabled(v519, v520))
                      {
                        v521 = swift_slowAlloc();
                        v704 = v518;
                        v522 = v521;
                        v523 = swift_slowAlloc();
                        v705 = v523;
                        *v522 = 141558275;
                        *(v522 + 4) = 1752392040;
                        *(v522 + 12) = 2081;
                        sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                        v524 = sub_24A82DB84();
                        v526 = v525;
                        (v704)(v517, v229);
                        v527 = sub_24A68761C(v524, v526, &v705);
                        v232 = v688;

                        *(v522 + 14) = v527;
                        _os_log_impl(&dword_24A675000, v519, v520, "Playing left offline for %{private,mask.hash}s.", v522, 0x16u);
                        sub_24A6876E8(v523);
                        v528 = v523;
                        v230 = v694;
                        MEMORY[0x24C21E1D0](v528, -1, -1);
                        v529 = v522;
                        v518 = v704;
                        MEMORY[0x24C21E1D0](v529, -1, -1);
                      }

                      else
                      {

                        (v518)(v517, v229);
                        v232 = v688;
                      }

                      v559 = v643;
                      sub_24A6E21F8(v643, 1, v702, v680, v697, v698);
                      (v518)(v559, v229);
                      v359 = v701;
                      v361 = v655;
                    }
                  }

                  if (v703)
                  {
                    sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v691, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v692, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                    (*(v359 + 8))(v230, v229);
LABEL_141:
                    v218 = v232;
                    return sub_24A68FFEC(v218, type metadata accessor for FMIPItemGroup);
                  }

                  v560 = v692;
                  sub_24A67E964(v692, v360, &qword_27EF5D020, &qword_24A830E40);
                  if (v614(v360, 1, v229) != 1)
                  {
                    v562 = v640;
                    (v613[0])(v640, v360, v229);
                    if (qword_27EF5CBA0 != -1)
                    {
                      swift_once();
                    }

                    sub_24A6797D0(v690, qword_27EF78C58);
                    v563 = *(v359 + 16);
                    v564 = v639;
                    v563(v639, v562, v229);
                    v563(v361, v564, v229);
                    v565 = *(v359 + 8);
                    (v565)(v564, v229);
                    v566 = sub_24A82CD94();
                    v567 = sub_24A82D504();
                    if (os_log_type_enabled(v566, v567))
                    {
                      v568 = swift_slowAlloc();
                      v704 = v565;
                      v569 = v568;
                      v570 = swift_slowAlloc();
                      v705 = v570;
                      *v569 = 141558275;
                      *(v569 + 4) = 1752392040;
                      *(v569 + 12) = 2081;
                      sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                      v571 = sub_24A82DB84();
                      v573 = v572;
                      (v704)(v361, v229);
                      v574 = sub_24A68761C(v571, v573, &v705);
                      v232 = v688;

                      *(v569 + 14) = v574;
                      _os_log_impl(&dword_24A675000, v566, v567, "Playing right offline for %{private,mask.hash}s.", v569, 0x16u);
                      sub_24A6876E8(v570);
                      v575 = v570;
                      v230 = v694;
                      MEMORY[0x24C21E1D0](v575, -1, -1);
                      v576 = v569;
                      v565 = v704;
                      MEMORY[0x24C21E1D0](v576, -1, -1);
                    }

                    else
                    {

                      (v565)(v361, v229);
                    }

                    sub_24A6E21F8(v562, 1, v702, v680, v697, v698);
                    (v565)(v562, v229);
                    sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v691, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v692, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                    (v565)(v230, v229);
                    goto LABEL_141;
                  }

                  sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v691, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v560, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                  (*(v359 + 8))(v230, v229);
                  sub_24A68FFEC(v232, type metadata accessor for FMIPItemGroup);
                  v561 = v360;
                  return sub_24A67F378(v561, &qword_27EF5D020, &qword_24A830E40);
                }

                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v690, qword_27EF78C58);
                v462 = v701;
                v463 = *(v701 + 16);
                v464 = v645;
                v463(v645, v230, v229);
                v465 = v646;
                v463(v646, v464, v229);
                v453 = *(v462 + 8);
                v453(v464, v229);
                v466 = sub_24A82CD94();
                v467 = sub_24A82D504();
                if (os_log_type_enabled(v466, v467))
                {
                  v468 = swift_slowAlloc();
                  v469 = swift_slowAlloc();
                  v705 = v469;
                  *v468 = 136446210;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                  v470 = sub_24A82DB84();
                  v472 = v471;
                  v453(v465, v229);
                  v473 = sub_24A68761C(v470, v472, &v705);
                  v232 = v688;

                  *(v468 + 4) = v473;
                  _os_log_impl(&dword_24A675000, v466, v467, "Playing groupID offline for %{public}s.", v468, 0xCu);
                  sub_24A6876E8(v469);
                  v474 = v469;
                  v230 = v694;
                  MEMORY[0x24C21E1D0](v474, -1, -1);
                  MEMORY[0x24C21E1D0](v468, -1, -1);
                }

                else
                {

                  v453(v465, v229);
                }

                v512 = v230;
                v513 = 1;
LABEL_276:
                sub_24A6E21F8(v512, v513, v702, v680, v697, v698);
LABEL_277:
                sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v691, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v692, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                v453(v230, v229);
                goto LABEL_141;
              }

              v381 = sub_24A713EB4(&unk_285DBDB80);
              v382 = sub_24A7B4B08(v381, v295);

              if (v382)
              {

                v383 = v701;
                if (v704)
                {
                  goto LABEL_166;
                }

                v384 = v641;
                sub_24A67E964(v693, v641, &qword_27EF5D020, &qword_24A830E40);
                if (v614(v384, 1, v229) == 1)
                {
                  sub_24A67F378(v384, &qword_27EF5D020, &qword_24A830E40);
LABEL_166:
                  if (qword_27EF5CBA0 != -1)
                  {
                    swift_once();
                  }

                  sub_24A6797D0(v690, qword_27EF78C58);
                  v385 = *(v383 + 16);
                  v386 = v647;
                  v385(v647, v230, v229);
                  v387 = v648;
                  v385(v648, v386, v229);
                  v304 = *(v383 + 8);
                  v304(v386, v229);
                  v388 = sub_24A82CD94();
                  v389 = sub_24A82D504();
                  if (os_log_type_enabled(v388, v389))
                  {
                    v390 = swift_slowAlloc();
                    v391 = swift_slowAlloc();
                    v705 = v391;
                    *v390 = 136446210;
                    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                    v392 = sub_24A82DB84();
                    v394 = v393;
                    v304(v387, v229);
                    v395 = sub_24A68761C(v392, v394, &v705);
                    v232 = v688;

                    *(v390 + 4) = v395;
                    _os_log_impl(&dword_24A675000, v388, v389, "Error playing case sound %{public}s.", v390, 0xCu);
                    sub_24A6876E8(v391);
                    MEMORY[0x24C21E1D0](v391, -1, -1);
                    MEMORY[0x24C21E1D0](v390, -1, -1);

                    sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v691, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v692, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                    v335 = v694;
                  }

                  else
                  {

                    v304(v387, v229);
                    sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v691, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v692, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                    v335 = v230;
                  }

                  v336 = v229;
LABEL_140:
                  v304(v335, v336);
                  goto LABEL_141;
                }

                v530 = v642;
                (v613[0])(v642, v384, v229);
                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v690, qword_27EF78C58);
                v531 = *(v383 + 16);
                v532 = v635;
                v531(v635, v530, v229);
                v221 = v636;
                v531(v636, v532, v229);
                v201 = *(v383 + 8);
                (v201)(v532, v229);
                v228 = sub_24A82CD94();
                v533 = sub_24A82D504();
                if (os_log_type_enabled(v228, v533))
                {
                  v534 = swift_slowAlloc();
                  v704 = v201;
                  v535 = v534;
                  v536 = swift_slowAlloc();
                  v705 = v536;
                  *v535 = 141558275;
                  *(v535 + 4) = 1752392040;
                  *(v535 + 12) = 2081;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                  v537 = sub_24A82DB84();
                  v539 = v538;
                  (v704)(v221, v229);
                  v540 = sub_24A68761C(v537, v539, &v705);
                  v232 = v688;

                  *(v535 + 14) = v540;
                  _os_log_impl(&dword_24A675000, v228, v533, "Playing case offline for %{private,mask.hash}s.", v535, 0x16u);
                  sub_24A6876E8(v536);
                  v541 = v536;
                  v230 = v694;
                  MEMORY[0x24C21E1D0](v541, -1, -1);
                  v542 = v535;
                  v201 = v704;
                  MEMORY[0x24C21E1D0](v542, -1, -1);

LABEL_268:
                  v577 = v642;
                  sub_24A6E21F8(v642, 1, v8, v680, v697, v698);
                  (v201)(v577, v229);
                  sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v691, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v692, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                  (v201)(v230, v229);
                  goto LABEL_141;
                }

LABEL_267:

                (v201)(v221, v229);
                goto LABEL_268;
              }

              v443 = sub_24A713EB4(&unk_285DBDBA8);
              v444 = sub_24A7B4B08(v443, v295);

              if (v444)
              {

                if (v285)
                {
                  if (v695)
                  {
                    v445 = v691;
                    v446 = v634;
                    sub_24A67E964(v691, v634, &qword_27EF5D020, &qword_24A830E40);
                    if (v614(v446, 1, v229) != 1)
                    {
                      v447 = v627;
                      (v613[0])(v627, v446, v229);
                      v448 = v701;
                      if (qword_27EF5CBA0 != -1)
                      {
                        swift_once();
                      }

                      sub_24A6797D0(v690, qword_27EF78C58);
                      v449 = *(v448 + 16);
                      v450 = v625;
                      v449(v625, v447, v229);
                      v451 = v626;
                      v449(v626, v450, v229);
                      v452 = v450;
                      v453 = *(v448 + 8);
                      v453(v452, v229);
                      v454 = sub_24A82CD94();
                      v455 = sub_24A82D504();
                      if (os_log_type_enabled(v454, v455))
                      {
                        v456 = swift_slowAlloc();
                        v704 = swift_slowAlloc();
                        v705 = v704;
                        *v456 = 141558275;
                        *(v456 + 4) = 1752392040;
                        *(v456 + 12) = 2081;
                        sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                        v457 = sub_24A82DB84();
                        v459 = v458;
                        v453(v451, v229);
                        v460 = sub_24A68761C(v457, v459, &v705);
                        v232 = v688;

                        *(v456 + 14) = v460;
                        v461 = "Muting left offline for %{private,mask.hash}s.";
                        goto LABEL_228;
                      }

LABEL_281:

                      v453(v451, v229);
                      goto LABEL_282;
                    }

LABEL_288:
                    sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v445, &qword_27EF5D020, &qword_24A830E40);
                    v558 = v692;
LABEL_289:
                    sub_24A67F378(v558, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                    (*(v701 + 8))(v230, v229);
                    sub_24A68FFEC(v232, type metadata accessor for FMIPItemGroup);
                    v561 = v446;
                    return sub_24A67F378(v561, &qword_27EF5D020, &qword_24A830E40);
                  }

LABEL_280:
                  sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v691, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v692, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                  (*(v701 + 8))(v230, v229);
                  goto LABEL_141;
                }

                if (v703)
                {
                  goto LABEL_280;
                }

                v501 = v692;
                v446 = v629;
                sub_24A67E964(v692, v629, &qword_27EF5D020, &qword_24A830E40);
                if (v614(v446, 1, v229) == 1)
                {
LABEL_252:
                  sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v691, &qword_27EF5D020, &qword_24A830E40);
                  v558 = v501;
                  goto LABEL_289;
                }

                v447 = v623;
                (v613[0])(v623, v446, v229);
                v587 = v701;
                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v690, qword_27EF78C58);
                v588 = *(v587 + 16);
                v589 = v621;
                v588(v621, v447, v229);
                v590 = v622;
                v588(v622, v589, v229);
                v591 = v589;
                v453 = *(v587 + 8);
                v453(v591, v229);
                v592 = sub_24A82CD94();
                v593 = sub_24A82D504();
                if (os_log_type_enabled(v592, v593))
                {
                  v594 = swift_slowAlloc();
                  v704 = swift_slowAlloc();
                  v705 = v704;
                  *v594 = 141558275;
                  *(v594 + 4) = 1752392040;
                  *(v594 + 12) = 2081;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                  v595 = sub_24A82DB84();
                  v597 = v596;
                  v453(v590, v229);
                  v598 = sub_24A68761C(v595, v597, &v705);
                  v232 = v688;

                  *(v594 + 14) = v598;
                  _os_log_impl(&dword_24A675000, v592, v593, "Playing right offline for %{private,mask.hash}s.", v594, 0x16u);
                  v599 = v704;
                  sub_24A6876E8(v704);
                  v230 = v694;
                  MEMORY[0x24C21E1D0](v599, -1, -1);
                  MEMORY[0x24C21E1D0](v594, -1, -1);
                }

                else
                {

                  v453(v590, v229);
                }

                v585 = v447;
                v586 = 1;
LABEL_293:
                sub_24A6E21F8(v585, v586, v702, v680, v697, v698);
                v453(v447, v229);
                goto LABEL_277;
              }

              v499 = sub_24A713EB4(&unk_285DBDBD0);
              v500 = sub_24A7B4B08(v499, v295);

              if (v500)
              {

                if (v285)
                {
                  if (!v703)
                  {
                    goto LABEL_280;
                  }

                  v501 = v692;
                  v446 = v628;
                  sub_24A67E964(v692, v628, &qword_27EF5D020, &qword_24A830E40);
                  if (v614(v446, 1, v229) == 1)
                  {
                    goto LABEL_252;
                  }

                  v447 = v620;
                  (v613[0])(v620, v446, v229);
                  v502 = v701;
                  if (qword_27EF5CBA0 != -1)
                  {
                    swift_once();
                  }

                  sub_24A6797D0(v690, qword_27EF78C58);
                  v503 = *(v502 + 16);
                  v504 = v618;
                  v503(v618, v447, v229);
                  v451 = v619;
                  v503(v619, v504, v229);
                  v505 = v504;
                  v453 = *(v502 + 8);
                  v453(v505, v229);
                  v454 = sub_24A82CD94();
                  v455 = sub_24A82D504();
                  if (!os_log_type_enabled(v454, v455))
                  {
                    goto LABEL_281;
                  }

                  v456 = swift_slowAlloc();
                  v704 = swift_slowAlloc();
                  v705 = v704;
                  *v456 = 141558275;
                  *(v456 + 4) = 1752392040;
                  *(v456 + 12) = 2081;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                  v506 = sub_24A82DB84();
                  v508 = v507;
                  v453(v451, v229);
                  v509 = sub_24A68761C(v506, v508, &v705);
                  v232 = v688;

                  *(v456 + 14) = v509;
                  v461 = "Muting right offline for %{private,mask.hash}s.";
LABEL_228:
                  _os_log_impl(&dword_24A675000, v454, v455, v461, v456, 0x16u);
                  v510 = v704;
                  sub_24A6876E8(v704);
                  v230 = v694;
                  MEMORY[0x24C21E1D0](v510, -1, -1);
                  MEMORY[0x24C21E1D0](v456, -1, -1);

LABEL_282:
                  v585 = v447;
                  v586 = 0;
                  goto LABEL_293;
                }

LABEL_279:
                if (v695)
                {
                  goto LABEL_280;
                }

                v445 = v691;
                v446 = v624;
                sub_24A67E964(v691, v624, &qword_27EF5D020, &qword_24A830E40);
                if (v614(v446, 1, v229) == 1)
                {
                  goto LABEL_288;
                }

                v271 = v617;
                (v613[0])(v617, v446, v229);
                v273 = v701;
                if (qword_27EF5CBA0 == -1)
                {
LABEL_295:
                  sub_24A6797D0(v690, qword_27EF78C58);
                  v600 = *(v273 + 16);
                  v601 = v615;
                  v600(v615, v271, v229);
                  v602 = v616;
                  v600(v616, v601, v229);
                  v603 = *(v273 + 8);
                  v603(v601, v229);
                  v604 = sub_24A82CD94();
                  v605 = sub_24A82D504();
                  if (os_log_type_enabled(v604, v605))
                  {
                    v606 = swift_slowAlloc();
                    v607 = swift_slowAlloc();
                    v705 = v607;
                    *v606 = 141558275;
                    *(v606 + 4) = 1752392040;
                    *(v606 + 12) = 2081;
                    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                    v608 = sub_24A82DB84();
                    v609 = v602;
                    v611 = v610;
                    v603(v609, v229);
                    v612 = sub_24A68761C(v608, v611, &v705);

                    *(v606 + 14) = v612;
                    _os_log_impl(&dword_24A675000, v604, v605, "Playing left offline for %{private,mask.hash}s.", v606, 0x16u);
                    sub_24A6876E8(v607);
                    MEMORY[0x24C21E1D0](v607, -1, -1);
                    MEMORY[0x24C21E1D0](v606, -1, -1);
                  }

                  else
                  {

                    v603(v602, v229);
                  }

                  sub_24A6E21F8(v271, 1, v702, v680, v697, v698);
                  v603(v271, v229);
                  sub_24A67F378(v693, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v691, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v692, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v689, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v699, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v696, &qword_27EF5D018, &qword_24A830E38);
                  v603(v694, v229);
                  v218 = v688;
                  return sub_24A68FFEC(v218, type metadata accessor for FMIPItemGroup);
                }

LABEL_302:
                swift_once();
                goto LABEL_295;
              }

              v543 = sub_24A713EB4(MEMORY[0x277D84F90]);
              v544 = sub_24A7B4B08(v543, v295);

              v545 = v701;
              if (v544)
              {
                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v690, qword_27EF78C58);
                v546 = *(v545 + 16);
                v547 = v630;
                v546(v630, v230, v229);
                v548 = v632;
                v546(v632, v547, v229);
                v453 = *(v545 + 8);
                v453(v547, v229);
                v549 = sub_24A82CD94();
                v550 = sub_24A82D504();
                if (os_log_type_enabled(v549, v550))
                {
                  v551 = swift_slowAlloc();
                  v552 = swift_slowAlloc();
                  v705 = v552;
                  *v551 = 136446210;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                  v553 = sub_24A82DB84();
                  v555 = v554;
                  v453(v548, v229);
                  v556 = sub_24A68761C(v553, v555, &v705);
                  v232 = v688;

                  *(v551 + 4) = v556;
                  v557 = "Stopping groupID offline for %{public}s.";
                  goto LABEL_273;
                }

LABEL_274:

                v453(v548, v229);
              }

              else
              {
                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v690, qword_27EF78C58);
                v578 = *(v545 + 16);
                v579 = v631;
                v578(v631, v230, v229);
                v548 = v633;
                v578(v633, v579, v229);
                v453 = *(v545 + 8);
                v453(v579, v229);
                v549 = sub_24A82CD94();
                v550 = sub_24A82D4E4();
                if (!os_log_type_enabled(v549, v550))
                {
                  goto LABEL_274;
                }

                v551 = swift_slowAlloc();
                v552 = swift_slowAlloc();
                v705 = v552;
                *v551 = 136446210;
                sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v580 = sub_24A82DB84();
                v582 = v581;
                v453(v548, v229);
                v583 = sub_24A68761C(v580, v582, &v705);
                v232 = v688;

                *(v551 + 4) = v583;
                v557 = "Error: Unhandled case - Stopping groupID offline for %{public}s.";
LABEL_273:
                _os_log_impl(&dword_24A675000, v549, v550, v557, v551, 0xCu);
                sub_24A6876E8(v552);
                v584 = v552;
                v230 = v694;
                MEMORY[0x24C21E1D0](v584, -1, -1);
                MEMORY[0x24C21E1D0](v551, -1, -1);
              }

              v512 = v230;
              v513 = 0;
              goto LABEL_276;
            }

            v279 = v678;
            sub_24A67E964(v271, v678, &qword_27EF5D018, &qword_24A830E38);
            if (v259(v279, 1, v228) != 1)
            {

              sub_24A68FFEC(v279, type metadata accessor for FMIPItem);
              sub_24A82CA44();

              goto LABEL_106;
            }

LABEL_301:
            __break(1u);
            goto LABEL_302;
          }
        }

        __break(1u);
        goto LABEL_301;
      }

      v201 = 0xE700000000000000;
LABEL_34:
      v221 = sub_24A82DC04();

      if (v221)
      {
        goto LABEL_38;
      }

      ++v231;
      sub_24A68FFEC(v10, type metadata accessor for FMIPItem);
      if (v230 == v231)
      {
        goto LABEL_36;
      }
    }

    v235 = &v10[*(v228 + 56)];
    v236 = *v235 == 1702060355 && *(v235 + 1) == 0xE400000000000000;
    if (v236 || (sub_24A82DC04() & 1) != 0)
    {
LABEL_32:
      v201 = 0xE400000000000000;
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  sub_24A67F378(v172, &unk_27EF5E0B0, &qword_24A8338B0);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v180 = sub_24A82CDC4();
  sub_24A6797D0(v180, qword_27EF78C40);
  v181 = v702;

  v182 = sub_24A82CD94();
  v183 = sub_24A82D4E4();

  if (os_log_type_enabled(v182, v183))
  {
    v184 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    v705 = v185;
    *v184 = 136446210;

    v186 = sub_24A6FAE80();
    v188 = v187;

    v189 = sub_24A68761C(v186, v188, &v705);

    *(v184 + 4) = v189;
    _os_log_impl(&dword_24A675000, v182, v183, "Unable to perform %{public}s offline for device with no item group.", v184, 0xCu);
    sub_24A6876E8(v185);
    MEMORY[0x24C21E1D0](v185, -1, -1);
    MEMORY[0x24C21E1D0](v184, -1, -1);
  }

  LOBYTE(v705) = 0;
  sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
  v190 = (*(*(v178 - 8) + 80) + 32) & ~*(*(v178 - 8) + 80);
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_24A8327A0;
  sub_24A68FD9C(v695, v191 + v190, type metadata accessor for FMIPDevice);
  sub_24A6EE8A0();
  v192 = swift_allocError();
  *v193 = 7;
  v697(&v705, v191, v192, v181);
}

uint64_t sub_24A6E21F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v43 = a4;
  v42 = a2;
  v8 = sub_24A82CAA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v39 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v34[-v12];
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_27EF78C40);
  v38 = *(v9 + 16);
  v38(v13, a1, v8);

  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v44 = v36;
    *v17 = 136446723;

    v35 = v16;
    v18 = sub_24A6FAE80();
    v37 = a1;
    v20 = v19;

    v21 = sub_24A68761C(v18, v20, &v44);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = sub_24A82DB84();
    v24 = v23;
    (*(v9 + 8))(v13, v8);
    v25 = sub_24A68761C(v22, v24, &v44);
    a1 = v37;

    *(v17 + 24) = v25;
    _os_log_impl(&dword_24A675000, v15, v35, "performOffline %{public}s for %{private,mask.hash}s.", v17, 0x20u);
    v26 = v36;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v26, -1, -1);
    MEMORY[0x24C21E1D0](v17, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  v27 = *(a3 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundQueueingConfirmed);
  v28 = v39;
  v38(v39, a1, v8);
  v29 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  (*(v9 + 32))(v30 + v29, v28, v8);
  v31 = (v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  v32 = v41;
  *v31 = v40;
  v31[1] = v32;

  sub_24A6E4768(a1, v42 & 1, v27, sub_24A6EF85C, v30);
}

uint64_t sub_24A6E2604(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void, void), uint64_t a5)
{
  v43 = a1;
  v9 = sub_24A82CAA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_27EF78C40);
  (*(v10 + 16))(v12, a3, v9);

  v14 = sub_24A82CD94();
  v15 = sub_24A82D504();

  if (!os_log_type_enabled(v14, v15))
  {

    (*(v10 + 8))(v12, v9);
    v28 = v43;
    if (v43)
    {
      goto LABEL_5;
    }

LABEL_10:
    LOBYTE(v45) = 4;
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v32 = *(type metadata accessor for FMIPDevice(0) - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v34 + v33, type metadata accessor for FMIPDevice);
    v35 = v34;
    v36 = 0;
    goto LABEL_13;
  }

  v16 = swift_slowAlloc();
  v42 = a4;
  v17 = v16;
  v18 = swift_slowAlloc();
  v45 = v18;
  *v17 = 136446723;

  v19 = sub_24A6FAE80();
  v41[1] = a5;
  v21 = v20;

  v22 = sub_24A68761C(v19, v21, &v45);

  *(v17 + 4) = v22;
  *(v17 + 12) = 2160;
  *(v17 + 14) = 1752392040;
  *(v17 + 22) = 2081;
  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v23 = sub_24A82DB84();
  v25 = v24;
  (*(v10 + 8))(v12, v9);
  v26 = sub_24A68761C(v23, v25, &v45);

  *(v17 + 24) = v26;
  _os_log_impl(&dword_24A675000, v14, v15, "FMIPDeviceActionsController: %{public}s sound performed for %{private,mask.hash}s.", v17, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x24C21E1D0](v18, -1, -1);
  v27 = v17;
  a4 = v42;
  MEMORY[0x24C21E1D0](v27, -1, -1);

  v28 = v43;
  if (!v43)
  {
    goto LABEL_10;
  }

LABEL_5:
  v45 = v28;
  v29 = v28;
  sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
  type metadata accessor for CommandError(0);
  if (swift_dynamicCast())
  {
    v30 = v44;
    v45 = v44;
    sub_24A6EF900(&unk_27EF5D150, type metadata accessor for CommandError, &unk_24A83174C);
    sub_24A82C7A4();

    if ((v44 - 5) >= 6)
    {
      v31 = 0;
    }

    else
    {
      v31 = 0xA0008070703uLL >> (8 * (v44 - 5));
    }
  }

  else
  {
    v31 = 0;
  }

  LOBYTE(v45) = v31;
  sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
  v37 = *(type metadata accessor for FMIPDevice(0) - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_24A8327A0;
  sub_24A68FD9C(a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v39 + v38, type metadata accessor for FMIPDevice);
  v35 = v39;
  v36 = v28;
LABEL_13:
  a4(&v45, v35, v36, a2);
}

uint64_t sub_24A6E2B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a3;
  v7 = type metadata accessor for FMIPDevice(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v10 = sub_24A82CDC4();
  sub_24A6797D0(v10, qword_27EF78C40);

  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446210;

    v15 = sub_24A6FAE80();
    v17 = v16;

    v18 = sub_24A68761C(v15, v17, &v31);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_24A675000, v11, v12, "FMIPDeviceActionsController: performing online %{public}s sound.", v13, 0xCu);
    sub_24A6876E8(v14);
    MEMORY[0x24C21E1D0](v14, -1, -1);
    MEMORY[0x24C21E1D0](v13, -1, -1);
  }

  sub_24A68FD9C(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v9, type metadata accessor for FMIPDevice);
  v19 = *(a1 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels);
  v20 = *(a1 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed);
  type metadata accessor for FMIPPlaySoundRequest(0);
  v21 = swift_allocObject();
  *(v21 + qword_27EF78F08) = v19;
  sub_24A68FD9C(v9, v21 + qword_27EF78F00, type metadata accessor for FMIPDevice);
  *(v21 + qword_27EF78F10) = v20;

  v29 = sub_24A6A183C(0x6E756F5379616C70, 0xE900000000000064, 0, 0, 1);
  sub_24A68FFEC(v9, type metadata accessor for FMIPDevice);
  v22 = v4[9];
  v23 = v4[10];
  sub_24A67DF6C(v4 + 6, v22);
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = a2;
  v24[4] = v30;
  v24[5] = v4;
  v25 = *(v23 + 56);
  v26 = type metadata accessor for FMIPPlaySoundResponse();

  v25(v29, sub_24A6EF7FC, v24, v26, v22, v23);
}

uint64_t sub_24A6E2F10(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, void *, uint64_t), uint64_t a5, void *a6)
{
  v85 = a6;
  v88 = a4;
  v89 = a5;
  v9 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v9 - 8);
  v86 = &v84 - v10;
  v11 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v84 - v12;
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_27EF78C40);

  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();

  v17 = os_log_type_enabled(v15, v16);
  v87 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v91 = v19;
    *v18 = 136446466;

    v20 = sub_24A6FAE80();
    v22 = v21;

    v23 = sub_24A68761C(v20, v22, &v91);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v90 = a1;
    sub_24A6BBA94(&qword_27EF5D600, &unk_24A833990);
    v24 = sub_24A82D624();
    v26 = sub_24A68761C(v24, v25, &v91);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPDeviceActionsController: %{public}s sound action response received: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v19, -1, -1);
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  v27 = 7104878;

  v28 = sub_24A82CD94();
  v29 = sub_24A82D504();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v91 = v31;
    *v30 = 136446466;

    v32 = sub_24A6FAE80();
    v34 = v33;

    v35 = sub_24A68761C(v32, v34, &v91);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    if (a1)
    {
      v36 = a1[7];
      if (v36)
      {
        if (*(v36 + 16))
        {
          v37 = type metadata accessor for FMIPDevice(0);
          sub_24A67E964(v36 + *(v37 + 112) + ((*(*(v37 - 8) + 80) + 32) & ~*(*(v37 - 8) + 80)), v13, &qword_27EF5D5F8, &qword_24A83DE60);
          v38 = type metadata accessor for FMIPPlaySoundMetadata(0);
          if ((*(*(v38 - 8) + 48))(v13, 1, v38) != 1)
          {
            v40 = FMIPPlaySoundMetadata.debugDescription.getter();
            v39 = v83;
            sub_24A68FFEC(v13, type metadata accessor for FMIPPlaySoundMetadata);
            goto LABEL_12;
          }

          sub_24A67F378(v13, &qword_27EF5D5F8, &qword_24A83DE60);
        }
      }
    }

    v39 = 0xE300000000000000;
    v40 = 7104878;
LABEL_12:
    v41 = sub_24A68761C(v40, v39, &v91);

    *(v30 + 14) = v41;
    _os_log_impl(&dword_24A675000, v28, v29, "FMIPDeviceActionsController: %{public}s sound metadata:\n%s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v31, -1, -1);
    MEMORY[0x24C21E1D0](v30, -1, -1);

    v27 = 7104878;
    goto LABEL_14;
  }

LABEL_14:

  v42 = sub_24A82CD94();
  v43 = sub_24A82D504();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v91 = v45;
    *v44 = 136446466;

    v46 = sub_24A6FAE80();
    v48 = v47;

    v49 = sub_24A68761C(v46, v48, &v91);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2080;
    if (a1 && (v50 = a1[7]) != 0 && *(v50 + 16))
    {
      type metadata accessor for FMIPDevice(0);

      v27 = MEMORY[0x24C21CB90](v51, &type metadata for FMIPAudioChannel);
      v53 = v52;
    }

    else
    {
      v53 = 0xE300000000000000;
    }

    v54 = sub_24A68761C(v27, v53, &v91);

    *(v44 + 14) = v54;
    _os_log_impl(&dword_24A675000, v42, v43, "FMIPDeviceActionsController: %{public}s sound channels:\n%s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v45, -1, -1);
    MEMORY[0x24C21E1D0](v44, -1, -1);
  }

  v55 = v87;
  if (v87 || !a1)
  {

    v61 = v55;
    v62 = sub_24A82CD94();
    v63 = sub_24A82D504();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v91 = v65;
      *v64 = 136446466;

      v66 = sub_24A6FAE80();
      v68 = v67;

      v69 = sub_24A68761C(v66, v68, &v91);

      *(v64 + 4) = v69;
      *(v64 + 12) = 2082;
      v90 = v55;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v70 = sub_24A82D624();
      v72 = sub_24A68761C(v70, v71, &v91);

      *(v64 + 14) = v72;
      _os_log_impl(&dword_24A675000, v62, v63, "FMIPDeviceActionsController: error received for %{public}s sound request: %{public}s", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v65, -1, -1);
      MEMORY[0x24C21E1D0](v64, -1, -1);
    }

    LOBYTE(v91) = 0;
    return v88(&v91, 0, v55, a3);
  }

  else
  {
    if (*(a3 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed))
    {
      v56 = OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
      v57 = type metadata accessor for FMIPDevice(0);
      v58 = v86;
      sub_24A67E964(a3 + *(v57 + 128) + v56, v86, &unk_27EF5E0B0, &qword_24A8338B0);
      v59 = type metadata accessor for FMIPItemGroup(0);
      v60 = (*(*(v59 - 8) + 48))(v58, 1, v59) == 1;

      sub_24A67F378(v58, &unk_27EF5E0B0, &qword_24A8338B0);
    }

    else
    {

      v60 = 0;
    }

    sub_24A78F16C(&v91);
    if (((1 << v91) & 0x1FFB) == 0 || v60)
    {
      sub_24A78F16C(&v91);
      v82 = a1[7];

      v88(&v91, v82, 0, a3);
    }

    else
    {
      v74 = v85[9];
      v75 = v85[10];
      v87 = sub_24A67DF6C(v85 + 6, v74);
      v76 = OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
      v77 = swift_allocObject();
      swift_weakInit();
      v78 = swift_allocObject();
      v79 = v88;
      v80 = v89;
      v78[2] = v77;
      v78[3] = v79;
      v78[4] = v80;
      v78[5] = a3;
      v81 = *(v75 + 72);

      v81(a3 + v76, sub_24A6EF850, v78, v74, v75);
    }
  }
}

void sub_24A6E395C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void **, uint64_t, void, uint64_t), uint64_t a5, uint64_t a6)
{
  v10 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v129 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v124 = &v118 - v13;
  v128 = type metadata accessor for FMIPDevice(0);
  v14 = *(v128 - 8);
  v15 = MEMORY[0x28223BE20](v128);
  v125 = (&v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v118 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v126 = (&v118 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v127 = (&v118 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v130 = (&v118 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v118 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = (&v118 - v29);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v119 = a6;
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v33 = sub_24A82CDC4();
    v34 = sub_24A6797D0(v33, qword_27EF78C40);
    sub_24A68FD9C(a1, v30, type metadata accessor for FMIPDevice);
    v131 = v34;
    v35 = sub_24A82CD94();
    v36 = sub_24A82D504();
    v37 = os_log_type_enabled(v35, v36);
    v123 = v32;
    v120 = a5;
    v121 = a4;
    v118 = v19;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v133 = v39;
      *v38 = 136315138;
      v40 = v14;
      v41 = a1;
      v43 = *v30;
      v42 = v30[1];

      sub_24A68FFEC(v30, type metadata accessor for FMIPDevice);
      v44 = v43;
      a1 = v41;
      v14 = v40;
      v45 = sub_24A68761C(v44, v42, &v133);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_24A675000, v35, v36, "FMIPDeviceActionsController: received callback for monitored device: %s", v38, 0xCu);
      sub_24A6876E8(v39);
      MEMORY[0x24C21E1D0](v39, -1, -1);
      MEMORY[0x24C21E1D0](v38, -1, -1);
    }

    else
    {

      sub_24A68FFEC(v30, type metadata accessor for FMIPDevice);
    }

    v122 = a1;
    sub_24A68FD9C(a1, v28, type metadata accessor for FMIPDevice);
    v46 = sub_24A82CD94();
    v47 = sub_24A82D504();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v128;
    if (v48)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v133 = v51;
      *v50 = 136315138;
      v52 = v124;
      sub_24A67E964(&v28[*(v49 + 112)], v124, &qword_27EF5D5F8, &qword_24A83DE60);
      v53 = type metadata accessor for FMIPPlaySoundMetadata(0);
      if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
      {
        sub_24A67F378(v52, &qword_27EF5D5F8, &qword_24A83DE60);
        v54 = 0xE300000000000000;
        v55 = 7104878;
      }

      else
      {
        v55 = FMIPPlaySoundMetadata.debugDescription.getter();
        v54 = v56;
        sub_24A68FFEC(v52, type metadata accessor for FMIPPlaySoundMetadata);
      }

      sub_24A68FFEC(v28, type metadata accessor for FMIPDevice);
      v57 = sub_24A68761C(v55, v54, &v133);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_24A675000, v46, v47, "FMIPDeviceActionsController: sound metadata %s", v50, 0xCu);
      sub_24A6876E8(v51);
      MEMORY[0x24C21E1D0](v51, -1, -1);
      MEMORY[0x24C21E1D0](v50, -1, -1);
    }

    else
    {

      sub_24A68FFEC(v28, type metadata accessor for FMIPDevice);
    }

    v58 = v129;
    v59 = v122;
    sub_24A67E964(v122 + *(v49 + 112), v129, &qword_27EF5D5F8, &qword_24A83DE60);
    v60 = type metadata accessor for FMIPPlaySoundMetadata(0);
    v61 = (*(*(v60 - 8) + 48))(v58, 1, v60);
    v62 = v130;
    if (v61 == 1)
    {
      sub_24A67F378(v58, &qword_27EF5D5F8, &qword_24A83DE60);
      v63 = v125;
      sub_24A68FD9C(v59, v125, type metadata accessor for FMIPDevice);
      v64 = sub_24A82CD94();
      v65 = sub_24A82D504();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v133 = v67;
        *v66 = 136315138;
        v68 = *v63;
        v69 = v63[1];

        sub_24A68FFEC(v63, type metadata accessor for FMIPDevice);
        v70 = sub_24A68761C(v68, v69, &v133);

        *(v66 + 4) = v70;
        _os_log_impl(&dword_24A675000, v64, v65, "FMIPDeviceActionsController: keeping monitored device alive: %s", v66, 0xCu);
        sub_24A6876E8(v67);
        MEMORY[0x24C21E1D0](v67, -1, -1);
        v71 = v66;
LABEL_27:
        MEMORY[0x24C21E1D0](v71, -1, -1);

        return;
      }

LABEL_28:

      sub_24A68FFEC(v63, type metadata accessor for FMIPDevice);
      return;
    }

    v72 = *v58;
    sub_24A68FFEC(v58, type metadata accessor for FMIPPlaySoundMetadata);
    sub_24A68FD9C(v59, v62, type metadata accessor for FMIPDevice);
    v73 = sub_24A82CD94();
    v74 = sub_24A82D504();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v133 = v76;
      *v75 = 136315394;
      v132 = v72;
      v77 = FMIPActionStatus.description.getter();
      v79 = sub_24A68761C(v77, v78, &v133);

      *(v75 + 4) = v79;
      *(v75 + 12) = 2080;
      v80 = *v62;
      v81 = v62[1];

      sub_24A68FFEC(v62, type metadata accessor for FMIPDevice);
      v82 = sub_24A68761C(v80, v81, &v133);

      *(v75 + 14) = v82;
      _os_log_impl(&dword_24A675000, v73, v74, "FMIPDeviceActionsController: evaluating status: %s\ndevice: %s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v76, -1, -1);
      MEMORY[0x24C21E1D0](v75, -1, -1);
    }

    else
    {

      sub_24A68FFEC(v62, type metadata accessor for FMIPDevice);
    }

    v83 = v126;
    v84 = v127;
    if (((1 << v72) & 0xBE8) != 0)
    {
      sub_24A68FD9C(v59, v127, type metadata accessor for FMIPDevice);
      v93 = sub_24A82CD94();
      v94 = sub_24A82D504();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v133 = v96;
        *v95 = 136315394;
        v132 = v72;
        v97 = FMIPActionStatus.description.getter();
        v99 = sub_24A68761C(v97, v98, &v133);

        *(v95 + 4) = v99;
        *(v95 + 12) = 2080;
        v100 = *v84;
        v101 = v84[1];

        sub_24A68FFEC(v84, type metadata accessor for FMIPDevice);
        v102 = sub_24A68761C(v100, v101, &v133);

        *(v95 + 14) = v102;
        _os_log_impl(&dword_24A675000, v93, v94, "FMIPDeviceActionsController: monitoring condition met for status:\n%s device: %s", v95, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v96, -1, -1);
        MEMORY[0x24C21E1D0](v95, -1, -1);
      }

      else
      {

        sub_24A68FFEC(v84, type metadata accessor for FMIPDevice);
      }

      v112 = v119;
      v113 = v123;
    }

    else
    {
      if (((1 << v72) & 0x3E004) == 0)
      {
        v63 = v118;
        sub_24A68FD9C(v59, v118, type metadata accessor for FMIPDevice);
        v64 = sub_24A82CD94();
        v103 = sub_24A82D504();
        if (os_log_type_enabled(v64, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v133 = v105;
          *v104 = 136446466;
          v132 = v72;
          v106 = FMIPActionStatus.description.getter();
          v108 = sub_24A68761C(v106, v107, &v133);

          *(v104 + 4) = v108;
          *(v104 + 12) = 2080;
          v109 = *v63;
          v110 = v63[1];

          sub_24A68FFEC(v63, type metadata accessor for FMIPDevice);
          v111 = sub_24A68761C(v109, v110, &v133);

          *(v104 + 14) = v111;
          _os_log_impl(&dword_24A675000, v64, v103, "FMIPDeviceActionsController: keeping monitored device status is not met %{public}s for:\n%s", v104, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C21E1D0](v105, -1, -1);
          v71 = v104;
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      sub_24A68FD9C(v59, v126, type metadata accessor for FMIPDevice);
      v85 = sub_24A82CD94();
      v86 = sub_24A82D504();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v133 = v88;
        *v87 = 136315138;
        v89 = v83;
        v90 = *v83;
        v91 = *(v89 + 8);

        sub_24A68FFEC(v89, type metadata accessor for FMIPDevice);
        v92 = sub_24A68761C(v90, v91, &v133);

        *(v87 + 4) = v92;
        _os_log_impl(&dword_24A675000, v85, v86, "FMIPDeviceActionsController: monitoring complete, action successful for device:\n%s", v87, 0xCu);
        sub_24A6876E8(v88);
        MEMORY[0x24C21E1D0](v88, -1, -1);
        MEMORY[0x24C21E1D0](v87, -1, -1);
      }

      else
      {

        sub_24A68FFEC(v83, type metadata accessor for FMIPDevice);
      }

      v113 = v123;
      v112 = v119;
    }

    v114 = v113[9];
    v115 = v113[10];
    sub_24A67DF6C(v113 + 6, v114);
    (*(v115 + 80))(v59, v114, v115);
    LOBYTE(v133) = v72;
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v116 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(v59, v117 + v116, type metadata accessor for FMIPDevice);
    v121(&v133, v117, 0, v112);
  }
}

uint64_t sub_24A6E4768(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v80 = a4;
  v81 = a5;
  v10 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v71 - v11;
  v13 = sub_24A82CAA4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v75 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v71 - v18;
  v78 = v20;
  MEMORY[0x28223BE20](v17);
  v22 = &v71 - v21;
  v79 = a1;
  if (a2)
  {
    v74 = v6;
    LODWORD(v73) = a3;
    if (a3)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    v24 = objc_opt_self();
    v25 = a1;
    v26 = sub_24A82CA64();
    v27 = [v24 playSoundWithBeaconUUID:v26 withContext:v23];

    v28 = qword_27EF5CB98;
    v29 = v27;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = sub_24A82CDC4();
    sub_24A6797D0(v30, qword_27EF78C40);
    v31 = *(v14 + 16);
    v76 = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v77 = v31;
    v31(v22, v25, v13);
    v32 = sub_24A82CD94();
    v33 = sub_24A82D504();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v82 = v72;
      *v34 = 141558787;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v35 = sub_24A82DB84();
      v36 = v12;
      v38 = v37;
      (*(v14 + 8))(v22, v13);
      v39 = sub_24A68761C(v35, v38, &v82);
      v12 = v36;

      *(v34 + 14) = v39;
      *(v34 + 22) = 1024;
      *(v34 + 24) = v73 & 1;
      *(v34 + 28) = 2112;
      *(v34 + 30) = v29;
      v40 = v71;
      *v71 = v29;
      v29 = v29;
      _os_log_impl(&dword_24A675000, v32, v33, "FMIPDeviceActionsController: Offline play sound %{private,mask.hash}s queueConfirmed: %{BOOL}d command %@.", v34, 0x26u);
      sub_24A67F378(v40, &qword_27EF5D010, &qword_24A830E30);
      MEMORY[0x24C21E1D0](v40, -1, -1);
      v41 = v72;
      sub_24A6876E8(v72);
      MEMORY[0x24C21E1D0](v41, -1, -1);
      MEMORY[0x24C21E1D0](v34, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v22, v13);
    }

    v6 = v74;
  }

  else
  {
    v73 = v12;
    v42 = objc_opt_self();
    v43 = a1;
    v44 = sub_24A82CA64();
    v45 = [v42 stopSoundWithBeaconUUID_];

    v46 = qword_27EF5CB98;
    v29 = v45;
    if (v46 != -1)
    {
      swift_once();
    }

    v47 = sub_24A82CDC4();
    sub_24A6797D0(v47, qword_27EF78C40);
    v48 = *(v14 + 16);
    v76 = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v77 = v48;
    v48(v19, v43, v13);
    v49 = sub_24A82CD94();
    v50 = sub_24A82D504();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v74 = v6;
      v52 = v51;
      v72 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v82 = v53;
      *v52 = 141558531;
      *(v52 + 4) = 1752392040;
      *(v52 + 12) = 2081;
      sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v54 = sub_24A82DB84();
      v56 = v55;
      (*(v14 + 8))(v19, v13);
      v57 = sub_24A68761C(v54, v56, &v82);

      *(v52 + 14) = v57;
      *(v52 + 22) = 2112;
      *(v52 + 24) = v29;
      v58 = v72;
      *v72 = v29;
      v29 = v29;
      _os_log_impl(&dword_24A675000, v49, v50, "FMIPDeviceActionsController: Offline stop sound %{private,mask.hash}s command %@.", v52, 0x20u);
      sub_24A67F378(v58, &qword_27EF5D010, &qword_24A830E30);
      MEMORY[0x24C21E1D0](v58, -1, -1);
      sub_24A6876E8(v53);
      MEMORY[0x24C21E1D0](v53, -1, -1);
      v59 = v52;
      v6 = v74;
      MEMORY[0x24C21E1D0](v59, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v19, v13);
    }

    v12 = v73;
  }

  v60 = *(v6 + 168);
  v61 = sub_24A82D354();
  (*(*(v61 - 8) + 56))(v12, 1, 1, v61);
  v62 = *(v6 + 32);
  v63 = v75;
  v77(v75, v79, v13);
  v64 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v65 = (v78 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  *(v66 + 2) = 0;
  *(v66 + 3) = 0;
  *(v66 + 4) = v62;
  *(v66 + 5) = v29;
  *(v66 + 6) = v60;
  (*(v14 + 32))(&v66[v64], v63, v13);
  v67 = &v66[v65];
  v68 = v81;
  *v67 = v80;
  v67[1] = v68;
  v69 = v62;

  sub_24A6E5984(0, 0, v12, &unk_24A833958, v66);

  return sub_24A67F378(v12, &qword_27EF5CF08, &qword_24A830D80);
}

uint64_t sub_24A6E4F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a8;
  v8[22] = v13;
  v8[19] = a6;
  v8[20] = a7;
  v8[17] = a4;
  v8[18] = a5;
  v9 = sub_24A82CAA4();
  v8[23] = v9;
  v10 = *(v9 - 8);
  v8[24] = v10;
  v8[25] = *(v10 + 64);
  v8[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A6E501C, 0, 0);
}

uint64_t sub_24A6E501C()
{
  v1 = *(v0 + 152);
  *(v0 + 216) = [*(v0 + 136) executeCommand_];

  return MEMORY[0x2822009F8](sub_24A6E509C, v1, 0);
}

uint64_t sub_24A6E509C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  swift_beginAccess();
  MEMORY[0x24C21CB10](v1);
  if (*((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24A82D274();
  }

  sub_24A82D2C4();
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24A6E517C, 0, 0);
}

uint64_t sub_24A6E517C()
{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v27 = v0[22];
  v28 = v0[27];
  v5 = v0[21];
  v32 = v0[20];
  v6 = v0[18];
  v26 = v0[19];
  v31 = *(v3 + 16);
  v31(v1);
  v7 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v30 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v29 = *(v3 + 32);
  v29(v10 + v8, v1, v4);
  v11 = (v10 + v30);
  *v11 = v5;
  v11[1] = v27;
  v12 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v10 + v9) = v26;
  *(v10 + v12) = v28;
  v0[6] = sub_24A6EF430;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24A720114;
  v0[5] = &unk_285DC2D18;
  v13 = _Block_copy(v0 + 2);
  v14 = v6;
  v15 = v28;
  v16 = v14;

  v17 = [v15 addFailureBlock_];
  _Block_release(v13);

  v18 = v4;
  (v31)(v1, v32, v4);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v29(v19 + v8, v1, v18);
  v20 = (v19 + v30);
  *v20 = v5;
  v20[1] = v27;
  *(v19 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8)) = v26;
  *(v19 + v12) = v15;
  v0[12] = sub_24A6EF54C;
  v0[13] = v19;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_24A72011C;
  v0[11] = &unk_285DC2D68;
  v21 = _Block_copy(v0 + 8);
  v22 = v15;

  v23 = [v22 addSuccessBlock_];
  _Block_release(v21);

  v24 = v0[1];

  return v24();
}

uint64_t sub_24A6E54E8(void *a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, void *a7)
{
  v44 = a4;
  v45 = a6;
  v43 = a5;
  v11 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v11 - 8);
  v46 = &v41 - v12;
  v13 = sub_24A82CAA4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_27EF78C40);
  (*(v14 + 16))(v16, a3, v13);
  v18 = a2;
  v19 = a1;
  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v42 = a7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47 = a1;
    v48 = v41;
    *v23 = 138413059;
    *(v23 + 4) = v18;
    *v24 = v18;
    *(v23 + 12) = 2082;
    v25 = v18;
    v26 = a1;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    v27 = sub_24A82D024();
    v29 = sub_24A68761C(v27, v28, &v48);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2160;
    *(v23 + 24) = 1752392040;
    *(v23 + 32) = 2081;
    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v30 = sub_24A82DB84();
    v32 = v31;
    (*(v14 + 8))(v16, v13);
    v33 = sub_24A68761C(v30, v32, &v48);

    *(v23 + 34) = v33;
    _os_log_impl(&dword_24A675000, v20, v21, "FMIPDeviceActionsController: Offline sound command %@ failed %{public}s %{private,mask.hash}s.", v23, 0x2Au);
    sub_24A67F378(v24, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v24, -1, -1);
    v34 = v41;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v34, -1, -1);
    v35 = v23;
    a7 = v42;
    MEMORY[0x24C21E1D0](v35, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  v44(a1);
  v36 = sub_24A82D354();
  v37 = v46;
  (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v45;
  v38[5] = a7;

  v39 = a7;
  sub_24A6E5984(0, 0, v37, &unk_24A833980, v38);

  return sub_24A67F378(v37, &qword_27EF5CF08, &qword_24A830D80);
}

uint64_t sub_24A6E5964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_24A6EFBA4, a4, 0);
}

uint64_t sub_24A6E5984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24A67E964(a3, v25 - v10, &qword_27EF5CF08, &qword_24A830D80);
  v12 = sub_24A82D354();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24A67F378(v11, &qword_27EF5CF08, &qword_24A830D80);
  }

  else
  {
    sub_24A82D344();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24A82D324();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24A82D044() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24A6E5C44(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, void *a7)
{
  v42 = a4;
  v43 = a6;
  v41 = a5;
  v10 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_24A82CAA4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_27EF78C40);
  (*(v14 + 16))(v16, a3, v13);
  v18 = a2;
  v19 = sub_24A82CD94();
  v20 = sub_24A82D504();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = v12;
    v22 = v21;
    v23 = swift_slowAlloc();
    v38 = v23;
    v39 = swift_slowAlloc();
    v44 = v39;
    *v22 = 138412803;
    *(v22 + 4) = v18;
    *v23 = v18;
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v24 = a7;
    v25 = v18;
    v26 = sub_24A82DB84();
    v28 = v27;
    (*(v14 + 8))(v16, v13);
    v29 = sub_24A68761C(v26, v28, &v44);
    a7 = v24;

    *(v22 + 24) = v29;
    _os_log_impl(&dword_24A675000, v19, v20, "FMIPDeviceActionsController: Offline sound command %@ succeeded for %{private,mask.hash}s", v22, 0x20u);
    v30 = v38;
    sub_24A67F378(v38, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v30, -1, -1);
    v31 = v39;
    sub_24A6876E8(v39);
    MEMORY[0x24C21E1D0](v31, -1, -1);
    v32 = v22;
    v12 = v40;
    MEMORY[0x24C21E1D0](v32, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  v42(0);
  v33 = sub_24A82D354();
  (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v43;
  v34[5] = a7;

  v35 = a7;
  sub_24A6E5984(0, 0, v12, &unk_24A833970, v34);

  return sub_24A67F378(v12, &qword_27EF5CF08, &qword_24A830D80);
}

uint64_t sub_24A6E605C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v69 = a2;
  v4 = type metadata accessor for FMIPDevice(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v66 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPItem(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A6BBA94(&qword_27EF5D018, &qword_24A830E38);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v66 - v12;
  v13 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v66 - v17;
  v71 = a1;
  v19 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  v20 = *(v5 + 136);
  v68 = v19;
  sub_24A67E964(v19 + v20, &v66 - v17, &unk_27EF5E0B0, &qword_24A8338B0);
  v21 = type metadata accessor for FMIPItemGroup(0);
  v22 = *(*(v21 - 8) + 48);
  if (v22(v18, 1, v21) == 1)
  {
    sub_24A67F378(v18, &unk_27EF5E0B0, &qword_24A8338B0);
  }

  else
  {
    v23 = FMIPItemGroup.shouldDisplaySeparatedLocation.getter();
    sub_24A68FFEC(v18, type metadata accessor for FMIPItemGroup);
    if (v23)
    {
      if (qword_27EF5CB98 != -1)
      {
        swift_once();
      }

      v24 = sub_24A82CDC4();
      sub_24A6797D0(v24, qword_27EF78C40);
      v25 = sub_24A82CD94();
      v26 = sub_24A82D504();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v70;
      v29 = v69;
      if (v27)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_24A675000, v25, v26, "FMIPDeviceActionsController: Perform Siri play sound-- classic sound on buds", v30, 2u);
        MEMORY[0x24C21E1D0](v30, -1, -1);
      }

      v31 = v71;
      v32 = v29;
      v33 = v28;
      return sub_24A6E2B9C(v31, v32, v33);
    }
  }

  sub_24A67E964(v68 + v20, v16, &unk_27EF5E0B0, &qword_24A8338B0);
  if (v22(v16, 1, v21) == 1)
  {
    sub_24A67F378(v16, &unk_27EF5E0B0, &qword_24A8338B0);
    v34 = v67;
    (*(v8 + 56))(v67, 1, 1, v7);
    v20 = v70;
    v35 = v69;
    goto LABEL_42;
  }

  v36 = *(v16 + 5);

  sub_24A68FFEC(v16, type metadata accessor for FMIPItemGroup);
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = 0;
    v35 = 1702060355;
    v72 = v36 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    while (v38 < *(v36 + 16))
    {
      sub_24A68FD9C(v72 + *(v8 + 72) * v38, v10, type metadata accessor for FMIPItem);
      v20 = &v10[*(v7 + 64)];
      if (*(v20 + 8))
      {
        v39 = *(v20 + 32);
        if (v39 <= 2 && *(v20 + 32) && v39 != 2)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v40 = &v10[*(v7 + 56)];
        v41 = *v40 == 1702060355 && *(v40 + 1) == 0xE400000000000000;
        if (v41 || (sub_24A82DC04() & 1) != 0)
        {
LABEL_39:

LABEL_40:

          v34 = v67;
          sub_24A6EF274(v10, v67, type metadata accessor for FMIPItem);
          v47 = 0;
          v20 = v70;
          v35 = v69;
          goto LABEL_41;
        }
      }

      v42 = sub_24A82DC04();

      if (v42)
      {
        goto LABEL_40;
      }

      if (*(v20 + 8))
      {
        v43 = *(v20 + 32);
        if (v43 <= 2 && v43 != 1 && v43 != 2)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v44 = &v10[*(v7 + 56)];
        v45 = *v44 == 1702060355 && *(v44 + 1) == 0xE400000000000000;
        if (!v45 && (sub_24A82DC04() & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      v46 = sub_24A82DC04();

      if (v46)
      {
        goto LABEL_40;
      }

      ++v38;
      sub_24A68FFEC(v10, type metadata accessor for FMIPItem);
      if (v37 == v38)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_37:

  v47 = 1;
  v20 = v70;
  v35 = v69;
  v34 = v67;
LABEL_41:
  (*(v8 + 56))(v34, v47, 1, v7);
  if ((*(v8 + 48))(v34, 1, v7) == 1)
  {
LABEL_42:
    sub_24A67F378(v34, &qword_27EF5D018, &qword_24A830E38);
    if (qword_27EF5CB98 == -1)
    {
LABEL_43:
      v48 = sub_24A82CDC4();
      sub_24A6797D0(v48, qword_27EF78C40);
      v49 = sub_24A82CD94();
      v50 = sub_24A82D504();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_24A675000, v49, v50, "FMIPDeviceActionsController: Perform Siri play sound no primary part-- play classic sound on buds", v51, 2u);
        MEMORY[0x24C21E1D0](v51, -1, -1);
      }

      v31 = v71;
      v32 = v35;
      v33 = v20;
      return sub_24A6E2B9C(v31, v32, v33);
    }

LABEL_53:
    swift_once();
    goto LABEL_43;
  }

  sub_24A67F378(v34, &qword_27EF5D018, &qword_24A830E38);
  v53 = v66;
  sub_24A68FD9C(v68, v66, type metadata accessor for FMIPDevice);
  v54 = *(v71 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed);
  v55 = *(v71 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundQueueingConfirmed);
  type metadata accessor for FMIPPlaySoundDeviceAction(0);
  v56 = swift_allocObject();
  sub_24A82CA24();
  *&v56[OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels] = &unk_285DBDBF8;
  v56[OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed] = v54;
  v56[OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundQueueingConfirmed] = v55;
  v56[OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundMethod] = 2;
  *&v56[OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext] = 0;
  v57 = &v56[OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation];
  *v57 = 0;
  *(v57 + 1) = 0;
  v58 = &v56[OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid];
  *v58 = 0;
  *(v58 + 1) = 0;
  v59 = &v56[OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username];
  *v59 = 0;
  *(v59 + 1) = 0;
  v60 = &v56[OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken];
  *v60 = 0;
  *(v60 + 1) = 0;
  v61 = &v56[OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID];
  *v61 = 0;
  *(v61 + 1) = 0;
  *&v56[OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession] = xmmword_24A8318F0;
  sub_24A6EF274(v53, &v56[OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device], type metadata accessor for FMIPDevice);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v62 = sub_24A82CDC4();
  sub_24A6797D0(v62, qword_27EF78C40);
  v63 = sub_24A82CD94();
  v64 = sub_24A82D504();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_24A675000, v63, v64, "FMIPDeviceActionsController: Perform Siri play sound-- ble sound method to primary part", v65, 2u);
    MEMORY[0x24C21E1D0](v65, -1, -1);
  }

  sub_24A6DC2E8(v56, v35, v20);
}

uint64_t sub_24A6E6AB4(uint64_t a1, void (*a2)(char *, uint64_t, void *, uint64_t), uint64_t a3)
{
  v7 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  v8 = sub_24A6EF084(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  if (v9)
  {
    sub_24A6E9CEC(a1, v8, v9, a2, a3);
  }

  else
  {
    type metadata accessor for FMIPLostModeRequest(0);
    *(swift_allocObject() + qword_27EF78EE0) = a1;
    v11 = (*(v7 + 216) & 0x80) == 0;
    if ((*(v7 + 216) & 0x80) != 0)
    {
      v12 = 0xD000000000000018;
    }

    else
    {
      v12 = 0x6976654474736F6CLL;
    }

    if (v11)
    {
      v13 = 0xEA00000000006563;
    }

    else
    {
      v13 = 0x800000024A845470;
    }

    v14 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
    v15 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken + 8);

    v16 = sub_24A6A183C(v12, v13, v14, v15, 1);
    v17 = v3[9];
    v18 = v3[10];
    sub_24A67DF6C(v3 + 6, v17);
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = a1;
    v20 = *(v18 + 56);
    v21 = type metadata accessor for FMIPLostModeResponse();

    v20(v16, sub_24A6EF268, v19, v21, v17, v18);
  }
}

uint64_t sub_24A6E6CC0(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void, void), uint64_t a4, uint64_t a5)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_27EF78C40);

  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    sub_24A6BBA94(&qword_27EF5D5F0, &unk_24A833940);
    v14 = sub_24A82D624();
    v16 = a5;
    v17 = sub_24A68761C(v14, v15, &v31);

    *(v12 + 4) = v17;
    a5 = v16;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPDeviceActionsController: lost mode response received: %s", v12, 0xCu);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    v18 = v12;
    a3 = v30;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  if (a2 || !a1)
  {
    v21 = a2;
    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v26 = sub_24A82D624();
      v28 = a5;
      v29 = sub_24A68761C(v26, v27, &v31);

      *(v24 + 4) = v29;
      a5 = v28;
      _os_log_impl(&dword_24A675000, v22, v23, "FMIPDeviceActionsController: error received for lost mode request: %s", v24, 0xCu);
      sub_24A6876E8(v25);
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    LOBYTE(v31) = 0;
    return a3(&v31, 0, a2, a5);
  }

  else
  {

    sub_24A7CE44C(&v31);
    v19 = *(a1 + 56);

    a3(&v31, v19, 0, a5);
  }
}

uint64_t sub_24A6E6FC8(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void, void), uint64_t a4, uint64_t a5)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_27EF78C40);

  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    sub_24A6BBA94(&qword_27EF5D628, &qword_24A8339B0);
    v14 = sub_24A82D624();
    v16 = a5;
    v17 = sub_24A68761C(v14, v15, &v31);

    *(v12 + 4) = v17;
    a5 = v16;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPDeviceActionsController: lock response received: %s", v12, 0xCu);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    v18 = v12;
    a3 = v30;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  if (a2 || !a1)
  {
    v21 = a2;
    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v26 = sub_24A82D624();
      v28 = a5;
      v29 = sub_24A68761C(v26, v27, &v31);

      *(v24 + 4) = v29;
      a5 = v28;
      _os_log_impl(&dword_24A675000, v22, v23, "FMIPDeviceActionsController: error received for lock request: %s", v24, 0xCu);
      sub_24A6876E8(v25);
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    LOBYTE(v31) = 0;
    return a3(&v31, 0, a2, a5);
  }

  else
  {

    sub_24A7F3FD0(&v31);
    v19 = *(a1 + 56);

    a3(&v31, v19, 0, a5);
  }
}

uint64_t sub_24A6E72D0(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void, void), uint64_t a4, uint64_t a5)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_27EF78C40);

  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    sub_24A6BBA94(&qword_27EF5D630, &qword_24A8339B8);
    v14 = sub_24A82D624();
    v16 = a5;
    v17 = sub_24A68761C(v14, v15, &v31);

    *(v12 + 4) = v17;
    a5 = v16;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPDeviceActionsController: erase response received: %s", v12, 0xCu);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    v18 = v12;
    a3 = v30;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  if (a2 || !a1)
  {
    v21 = a2;
    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v26 = sub_24A82D624();
      v28 = a5;
      v29 = sub_24A68761C(v26, v27, &v31);

      *(v24 + 4) = v29;
      a5 = v28;
      _os_log_impl(&dword_24A675000, v22, v23, "FMIPDeviceActionsController: error received for erase request: %s", v24, 0xCu);
      sub_24A6876E8(v25);
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    LOBYTE(v31) = 0;
    return a3(&v31, 0, a2, a5);
  }

  else
  {

    sub_24A77ACC4(&v31);
    v19 = *(a1 + 56);

    a3(&v31, v19, 0, a5);
  }
}

uint64_t sub_24A6E75D8(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void, void), uint64_t a4, uint64_t a5)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_27EF78C40);

  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    sub_24A6BBA94(&qword_27EF5D638, &unk_24A8339C0);
    v14 = sub_24A82D624();
    v16 = a5;
    v17 = sub_24A68761C(v14, v15, &v31);

    *(v12 + 4) = v17;
    a5 = v16;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPDeviceActionsController: cancel erase response received: %s", v12, 0xCu);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    v18 = v12;
    a3 = v30;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  if (a2 || !a1)
  {
    v21 = a2;
    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v26 = sub_24A82D624();
      v28 = a5;
      v29 = sub_24A68761C(v26, v27, &v31);

      *(v24 + 4) = v29;
      a5 = v28;
      _os_log_impl(&dword_24A675000, v22, v23, "FMIPDeviceActionsController: error received for cancel erase request: %s", v24, 0xCu);
      sub_24A6876E8(v25);
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    LOBYTE(v31) = 0;
    return a3(&v31, 0, a2, a5);
  }

  else
  {

    sub_24A7ACCFC(&v31);
    v19 = *(a1 + 56);

    a3(&v31, v19, 0, a5);
  }
}

void sub_24A6E78E0(uint64_t a1, void (*a2)(uint64_t *, void, void, uint64_t), uint64_t a3)
{
  v7 = (a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v8 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 56);
  if (v8)
  {
    v9 = v7[6];
    if (*(a1 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled) == 1)
    {
      v10 = *(a1 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_phoneNumber + 8);
    }

    else
    {
      v10 = 0;
    }

    v16 = objc_opt_self();

    v17 = [v16 sharedInstance];
    if (v10)
    {
      v18 = sub_24A82CF94();
    }

    else
    {
      v18 = 0;
    }

    v19 = sub_24A82CF94();
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;
    v20[4] = a1;
    v20[5] = v3;
    v20[6] = v9;
    v20[7] = v8;
    v22[4] = sub_24A6EEFF0;
    v22[5] = v20;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 1107296256;
    v22[2] = sub_24A7386AC;
    v22[3] = &unk_285DC2C00;
    v21 = _Block_copy(v22);

    [v17 setPhoneNumber:v18 toAccessoryWithDiscoveryId:v19 completion:v21];
    _Block_release(v21);
  }

  else
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v11 = sub_24A82CDC4();
    sub_24A6797D0(v11, qword_27EF78C40);

    v12 = sub_24A82CD94();
    v13 = sub_24A82D504();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_24A68761C(v7[8], v7[9], v22);
      _os_log_impl(&dword_24A675000, v12, v13, "unable to get discover id for device %s", v14, 0xCu);
      sub_24A6876E8(v15);
      MEMORY[0x24C21E1D0](v15, -1, -1);
      MEMORY[0x24C21E1D0](v14, -1, -1);
    }

    LOBYTE(v22[0]) = 0;
    a2(v22, 0, 0, a1);
  }
}

uint64_t sub_24A6E7BF8(uint64_t a1, uint64_t (*a2)(char *, void, uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v11 = sub_24A82CDC4();
    sub_24A6797D0(v11, qword_27EF78C40);
    v12 = sub_24A82CD94();
    v13 = sub_24A82D504();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24A675000, v12, v13, "unable to set contact details in accessory", v14, 2u);
      MEMORY[0x24C21E1D0](v14, -1, -1);
    }

    v30 = 0;
    return a2(&v30, 0, a1, a4);
  }

  else
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v19 = sub_24A82CDC4();
    sub_24A6797D0(v19, qword_27EF78C40);
    v20 = sub_24A82CD94();
    v21 = sub_24A82D504();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24A675000, v20, v21, "added contact detlail to accessory", v22, 2u);
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    v23 = swift_allocObject();
    v23[2] = a4;
    v23[3] = a6;
    v23[4] = a7;
    v23[5] = a2;
    v23[6] = a3;
    type metadata accessor for FMIPSavePreferencesRequest(0);
    *(swift_allocObject() + qword_27EF78D80) = a4;
    swift_retain_n();

    v24 = sub_24A6A183C(0x6665725065766173, 0xE800000000000000, 0, 0, 1);
    v25 = a5[9];
    v26 = a5[10];
    sub_24A67DF6C(a5 + 6, v25);
    v27 = swift_allocObject();
    v27[2] = sub_24A6EF020;
    v27[3] = v23;
    v27[4] = a4;
    v28 = *(v26 + 56);
    v29 = type metadata accessor for FMIPSavePreferencesResponse();

    v28(v24, sub_24A6EF050, v27, v29, v25, v26);
  }
}

uint64_t sub_24A6E7F4C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void *, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if (v10 != 2)
  {
    v18 = a2;
    v11 = a3;
    if (*(a5 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled))
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a5 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_phoneNumber + 8);
    }

    v13 = [objc_opt_self() sharedInstance];
    if (v12)
    {
      v14 = sub_24A82CF94();
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_24A82CF94();
    aBlock[4] = sub_24A6E80FC;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7386AC;
    aBlock[3] = &unk_285DC2C78;
    v16 = _Block_copy(aBlock);
    [v13 setPhoneNumber:v14 toAccessoryWithDiscoveryId:v15 completion:v16];
    _Block_release(v16);

    a3 = v11;
    a2 = v18;
  }

  LOBYTE(aBlock[0]) = v10;
  return a8(aBlock, a2, a3, a5);
}

void sub_24A6E80FC(void *a1)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_27EF78C40);
  v3 = a1;
  oslog = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v7 = sub_24A82D624();
    v9 = sub_24A68761C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A675000, oslog, v4, "reset device completed with error %s", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  else
  {
  }
}

void sub_24A6E8294(uint64_t a1, void *a2, char *a3)
{
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_type))
  {
    if (*(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_type) == 1)
    {
      type metadata accessor for FMIPSavePreferencesRequest(0);
      *(swift_allocObject() + qword_27EF78D80) = a1;

      v7 = sub_24A6A183C(0x6665725065766173, 0xE800000000000000, 0, 0, 1);
      v8 = v3[9];
      v9 = v3[10];
      sub_24A67DF6C(v3 + 6, v8);
      v10 = swift_allocObject();
      v10[2] = a2;
      v10[3] = a3;
      v10[4] = a1;
      v11 = *(v9 + 56);
      v12 = type metadata accessor for FMIPSavePreferencesResponse();

      v11(v7, sub_24A6EEFBC, v10, v12, v8, v9);
    }

    else
    {

      sub_24A6EACA0(a1, a2, a3);
    }
  }

  else
  {

    sub_24A6E88B8(a1, a2, a3);
  }
}

uint64_t sub_24A6E8458(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void, void), uint64_t a4, uint64_t a5, const char *a6, const char *a7, char a8)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_27EF78C40);

  v14 = sub_24A82CD94();
  v15 = sub_24A82D504();

  if (os_log_type_enabled(v14, v15))
  {
    v45 = a3;
    v16 = swift_slowAlloc();
    v44 = a5;
    v17 = swift_slowAlloc();
    v48 = v17;
    *v16 = 136315138;
    sub_24A6BBA94(&qword_27EF5D5E8, &qword_24A833938);
    v18 = sub_24A82D624();
    v20 = a2;
    v21 = a6;
    v22 = sub_24A68761C(v18, v19, &v48);

    *(v16 + 4) = v22;
    v23 = v21;
    a2 = v20;
    _os_log_impl(&dword_24A675000, v14, v15, v23, v16, 0xCu);
    sub_24A6876E8(v17);
    v24 = v17;
    a5 = v44;
    MEMORY[0x24C21E1D0](v24, -1, -1);
    v25 = v16;
    a3 = v45;
    MEMORY[0x24C21E1D0](v25, -1, -1);
  }

  if (a2 || !a1)
  {
    v31 = a2;
    v32 = sub_24A82CD94();
    v33 = sub_24A82D504();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = a5;
      v36 = swift_slowAlloc();
      v48 = v36;
      *v34 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v37 = sub_24A82D624();
      v39 = sub_24A68761C(v37, v38, &v48);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_24A675000, v32, v33, a7, v34, 0xCu);
      sub_24A6876E8(v36);
      v40 = v36;
      a5 = v35;
      MEMORY[0x24C21E1D0](v40, -1, -1);
      MEMORY[0x24C21E1D0](v34, -1, -1);
    }

    LOBYTE(v48) = a8;
    return a3(&v48, 0, a2, a5);
  }

  else
  {

    v26 = sub_24A82CD94();
    v27 = sub_24A82D504();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_24A675000, v26, v27, "FMIPDeviceActionsController: response success", v28, 2u);
      MEMORY[0x24C21E1D0](v28, -1, -1);
    }

    FMIPActionStatus.init(rawValue:)(*(a1 + 48));
    v29 = v48;
    if (v48 == 18)
    {
      v29 = 0;
    }

    LOBYTE(v48) = v29;
    if (*(a1 + 56))
    {
      v30 = *(a1 + 56);
    }

    else
    {
      sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
      v42 = *(type metadata accessor for FMIPDevice(0) - 8);
      v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_24A8327A0;
      sub_24A68FD9C(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v30 + v43, type metadata accessor for FMIPDevice);
    }

    a3(&v48, v30, 0, a5);
  }
}

uint64_t sub_24A6E88B8(uint64_t a1, void (*a2)(char *, uint64_t, void *, uint64_t), uint64_t a3)
{
  v7 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  if (*(v7 + *(type metadata accessor for FMIPDevice(0) + 132)) == 1)
  {

    return sub_24A6E8E0C(a1, 0, a2, a3);
  }

  else
  {
    type metadata accessor for FMIPNotifyRequest(0);
    *(swift_allocObject() + qword_27EF78FD8) = a1;

    v14 = sub_24A6A183C(0xD000000000000010, 0x800000024A845450, 0, 0, 1);
    v9 = v3[9];
    v10 = v3[10];
    sub_24A67DF6C(v3 + 6, v9);
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = a3;
    v11[4] = a1;
    v11[5] = v3;
    v12 = *(v10 + 56);
    v13 = type metadata accessor for FMIPNotifyResponse();

    v12(v14, sub_24A6EEFB0, v11, v13, v9, v10);
  }
}

uint64_t sub_24A6E8A88(uint64_t a1, void *a2, void (*a3)(char *, uint64_t, void *, uint64_t), uint64_t a4, uint64_t a5)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_27EF78C40);

  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v33 = a5;
    v13 = a4;
    v14 = a3;
    v15 = swift_slowAlloc();
    v35 = v15;
    *v12 = 136315138;
    sub_24A6BBA94(&qword_27EF5D5E0, &qword_24A833930);
    v16 = sub_24A82D624();
    v18 = sub_24A68761C(v16, v17, &v35);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPDeviceActionsController: notify action response received: %s", v12, 0xCu);
    sub_24A6876E8(v15);
    v19 = v15;
    a3 = v14;
    a4 = v13;
    a5 = v33;
    MEMORY[0x24C21E1D0](v19, -1, -1);
    MEMORY[0x24C21E1D0](v12, -1, -1);
  }

  if (a2 || !a1)
  {
    v20 = a2;
    v21 = sub_24A82CD94();
    v22 = sub_24A82D504();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = a3;
      v25 = swift_slowAlloc();
      v35 = v25;
      *v23 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v26 = sub_24A82D624();
      v28 = sub_24A68761C(v26, v27, &v35);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_24A675000, v21, v22, "FMIPDeviceActionsController: error received for notify request: %s", v23, 0xCu);
      sub_24A6876E8(v25);
      v29 = v25;
      a3 = v24;
      MEMORY[0x24C21E1D0](v29, -1, -1);
      MEMORY[0x24C21E1D0](v23, -1, -1);
    }

    LOBYTE(v35) = 0;
    return (a3)(&v35, 0, a2, a5);
  }

  else
  {
    if (!*(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 24) || (*(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) != 0)
    {
      FMIPActionStatus.init(rawValue:)(*(a1 + 48));
      v31 = v35;
      if (v35 == 18)
      {
        v31 = 0;
      }

      LOBYTE(v35) = v31;
      v32 = *(a1 + 56);

      a3(&v35, v32, 0, a5);
    }

    else
    {

      sub_24A6E8E0C(a5, a1, a3, a4);
    }
  }
}

uint64_t sub_24A6E8E0C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, void *, uint64_t), uint64_t a4)
{
  v65 = a3;
  v66 = a4;
  v64 = a2;
  v5 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v59 - v6;
  v7 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v59 - v11;
  v13 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v59 - v14;
  v16 = type metadata accessor for FMIPItemGroup(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A82CAA4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v61 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  v60 = type metadata accessor for FMIPDevice(0);
  sub_24A67E964(v24 + *(v60 + 128), v15, &unk_27EF5E0B0, &qword_24A8338B0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24A67F378(v15, &unk_27EF5E0B0, &qword_24A8338B0);
    v25 = v23;
    v26 = v20;
    if (!*(v24 + 24))
    {
LABEL_8:
      if (qword_27EF5CB98 != -1)
      {
        swift_once();
      }

      v27 = sub_24A82CDC4();
      sub_24A6797D0(v27, qword_27EF78C40);

      v28 = sub_24A82CD94();
      v29 = sub_24A82D4E4();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v67 = v31;
        *v30 = 136315138;

        v32 = sub_24A6F57A4();
        v34 = v33;

        v35 = sub_24A68761C(v32, v34, &v67);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_24A675000, v28, v29, "Missing baUUID for %s", v30, 0xCu);
        sub_24A6876E8(v31);
        MEMORY[0x24C21E1D0](v31, -1, -1);
        MEMORY[0x24C21E1D0](v30, -1, -1);
      }

      v36 = v64;
      if (v64)
      {
        FMIPActionStatus.init(rawValue:)(*(v64 + 48));
        v37 = v68;
        if (v68 == 18)
        {
          v37 = 0;
        }

        v69 = v37;
        v38 = *(v36 + 56);
        if (v38)
        {

LABEL_24:
          sub_24A6EE8A0();
          v57 = swift_allocError();
          *v58 = 6;
          v65(&v69, v38, v57, v25);
        }
      }

      else
      {
        v69 = 0;
      }

      sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
      v56 = (*(*(v60 - 8) + 80) + 32) & ~*(*(v60 - 8) + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_24A8327A0;
      sub_24A68FD9C(v24, v38 + v56, type metadata accessor for FMIPDevice);

      goto LABEL_24;
    }
  }

  else
  {
    sub_24A6EF274(v15, v19, type metadata accessor for FMIPItemGroup);
    sub_24A82CA44();
    sub_24A68FFEC(v19, type metadata accessor for FMIPItemGroup);
    v26 = v20;
    if ((*(v21 + 48))(v12, 1, v20) != 1)
    {
      v25 = v23;
      goto LABEL_19;
    }

    sub_24A67F378(v12, &qword_27EF5D020, &qword_24A830E40);
    v25 = v23;
    if (!*(v24 + 24))
    {
      goto LABEL_8;
    }
  }

  sub_24A82CA44();
  if ((*(v21 + 48))(v10, 1, v26) == 1)
  {
    sub_24A67F378(v10, &qword_27EF5D020, &qword_24A830E40);
    goto LABEL_8;
  }

  v12 = v10;
LABEL_19:
  v39 = v61;
  (*(v21 + 32))(v61, v12, v26);
  v40 = *(v25 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled);
  v41 = objc_opt_self();
  v42 = v21;
  v43 = sub_24A82CA64();
  v44 = &selRef_enableNotifyWhenFound_;
  if (!v40)
  {
    v44 = &selRef_disableNotifyWhenFound_;
  }

  v45 = [v41 *v44];

  v46 = sub_24A82D354();
  v47 = v63;
  (*(*(v46 - 8) + 56))(v63, 1, 1, v46);
  v48 = *(v62 + 168);
  v49 = *(v62 + 32);
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v49;
  v50[5] = v45;
  v51 = v65;
  v52 = v66;
  v50[6] = v48;
  v50[7] = v51;
  v50[8] = v52;
  v50[9] = v25;
  v50[10] = v64;

  v53 = v45;

  v54 = v49;

  sub_24A6E5984(0, 0, v47, &unk_24A833908, v50);

  sub_24A67F378(v47, &qword_27EF5CF08, &qword_24A830D80);
  return (*(v42 + 8))(v39, v26);
}

uint64_t sub_24A6E95F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v10;
  v8[14] = v11;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return MEMORY[0x2822009F8](sub_24A6E9628, 0, 0);
}

uint64_t sub_24A6E9628()
{
  v1 = *(v0 + 80);
  *(v0 + 120) = [*(v0 + 64) executeCommand_];

  return MEMORY[0x2822009F8](sub_24A6E96A8, v1, 0);
}

uint64_t sub_24A6E96A8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  swift_beginAccess();
  MEMORY[0x24C21CB10](v1);
  if (*((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24A82D274();
  }

  sub_24A82D2C4();
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24A6E9788, 0, 0);
}

uint64_t sub_24A6E9788()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v17 = v0[14];
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v4;
  v6[6] = v1;
  v0[6] = sub_24A6EEDB4;
  v0[7] = v6;
  v7 = MEMORY[0x277D85DD0];
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24A720114;
  v0[5] = &unk_285DC2AC0;
  v8 = _Block_copy(v0 + 2);
  v9 = v1;

  v10 = [v9 addFailureBlock_];
  _Block_release(v8);

  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v3;
  v11[4] = v17;
  v11[5] = v2;
  v11[6] = v4;
  v11[7] = v9;
  v0[6] = sub_24A6EEE18;
  v0[7] = v11;
  v0[2] = v7;
  v0[3] = 1107296256;
  v0[4] = sub_24A72011C;
  v0[5] = &unk_285DC2B10;
  v12 = _Block_copy(v0 + 2);

  v13 = v9;

  v14 = [v13 addSuccessBlock_];
  _Block_release(v12);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24A6E99C0(uint64_t a1, void (*a2)(char *, uint64_t, void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  sub_24A6797D0(v15, qword_27EF78C40);
  v16 = sub_24A82CD94();
  v17 = sub_24A82D504();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24A675000, v16, v17, "FMIPDeviceActionsController: notify subscription succeeded", v18, 2u);
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  if (!a4)
  {
    v29 = 2;
LABEL_11:
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v21 = *(type metadata accessor for FMIPDevice(0) - 8);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v20 + v22, type metadata accessor for FMIPDevice);

    goto LABEL_12;
  }

  FMIPActionStatus.init(rawValue:)(*(a4 + 48));
  v19 = v28;
  if (v28 == 18)
  {
    v19 = 0;
  }

  v29 = v19;
  v20 = *(a4 + 56);
  if (!v20)
  {
    goto LABEL_11;
  }

LABEL_12:
  a2(&v29, v20, 0, a5);

  v23 = sub_24A82D354();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = a6;
  v24[5] = a7;

  v25 = a7;
  sub_24A6E5984(0, 0, v14, &unk_24A833918, v24);

  return sub_24A67F378(v14, &qword_27EF5CF08, &qword_24A830D80);
}

uint64_t sub_24A6E9CEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, void *, uint64_t), uint64_t a5)
{
  v6 = v5;
  v10 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v10 - 8);
  v46 = &v42 - v11;
  v12 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - v13;
  v15 = sub_24A82CAA4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A82CA44();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24A67F378(v14, &qword_27EF5D020, &qword_24A830E40);
    v47 = 0;
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v19 = *(type metadata accessor for FMIPDevice(0) - 8);
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v21 + v20, type metadata accessor for FMIPDevice);
    sub_24A6EE8A0();
    v22 = swift_allocError();
    *v23 = 6;
    a4(&v47, v21, v22, a1);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v25 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isTrackingEnabled);
    v44 = a4;
    v45 = a5;
    if (v25 == 1)
    {
      v43 = sub_24A82CA64();

      v29 = sub_24A82CF94();

      if (*(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber + 8))
      {
        v30 = sub_24A82CF94();
      }

      else
      {
        v30 = 0;
      }

      if (*(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email + 8))
      {
        v27 = sub_24A82CF94();
      }

      else
      {
        v27 = 0;
      }

      v31 = objc_opt_self();
      v32 = v43;
      v28 = [v31 enableLostModeForBeaconUUID:v43 message:v29 phoneNumber:v30 email:v27];
    }

    else
    {
      v26 = objc_opt_self();
      v27 = sub_24A82CA64();
      v28 = [v26 disableLostModeForBeaconUUID_];
    }

    v33 = sub_24A82D354();
    v34 = v46;
    (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
    v35 = *(v6 + 168);
    v36 = *(v6 + 32);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v36;
    v37[5] = v28;
    v38 = v44;
    v39 = v45;
    v37[6] = v35;
    v37[7] = v38;
    v37[8] = v39;
    v37[9] = a1;
    v40 = v28;

    v41 = v36;

    sub_24A6E5984(0, 0, v34, &unk_24A8338C0, v37);

    sub_24A67F378(v34, &qword_27EF5CF08, &qword_24A830D80);
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_24A6EA22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v10;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  return MEMORY[0x2822009F8](sub_24A6EA25C, 0, 0);
}

uint64_t sub_24A6EA25C()
{
  v1 = *(v0 + 80);
  *(v0 + 112) = [*(v0 + 64) executeCommand_];

  return MEMORY[0x2822009F8](sub_24A6EA2DC, v1, 0);
}

uint64_t sub_24A6EA2DC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  swift_beginAccess();
  MEMORY[0x24C21CB10](v1);
  if (*((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24A82D274();
  }

  sub_24A82D2C4();
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24A6EA3BC, 0, 0);
}

uint64_t sub_24A6EA3BC()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v17 = v4;
  v5 = v0[10];
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v1;
  v6[5] = v5;
  v6[6] = v2;
  v0[6] = sub_24A6EEA98;
  v0[7] = v6;
  v7 = MEMORY[0x277D85DD0];
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24A720114;
  v0[5] = &unk_285DC29A8;
  v8 = _Block_copy(v0 + 2);
  v9 = v2;

  v10 = [v9 addFailureBlock_];
  _Block_release(v8);

  v11 = swift_allocObject();
  v11[2] = v17;
  v11[3] = v3;
  v11[4] = v1;
  v11[5] = v5;
  v11[6] = v9;
  v0[6] = sub_24A6EEAC0;
  v0[7] = v11;
  v0[2] = v7;
  v0[3] = 1107296256;
  v0[4] = sub_24A72011C;
  v0[5] = &unk_285DC29F8;
  v12 = _Block_copy(v0 + 2);
  v13 = v9;

  v14 = [v13 addSuccessBlock_];
  _Block_release(v12);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24A6EA5EC(void *a1, void (*a2)(uint64_t *, void, void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, const char *a7, uint64_t a8, uint64_t a9)
{
  v34 = a7;
  v35 = a6;
  v36 = a2;
  v37 = a3;
  v13 = a9;
  v14 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v31 - v15;
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_27EF78C40);
  v18 = a1;
  v19 = sub_24A82CD94();
  v20 = sub_24A82D504();

  v33 = v20;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = a9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v31[1] = a8;
    v24 = v23;
    *v22 = 136315138;
    v38 = a1;
    v39 = 0;
    v40 = 0xE000000000000000;
    v41 = v23;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    sub_24A82D914();
    v25 = sub_24A68761C(v39, v40, &v41);

    *(v22 + 4) = v25;
    _os_log_impl(&dword_24A675000, v19, v33, v34, v22, 0xCu);
    sub_24A6876E8(v24);
    MEMORY[0x24C21E1D0](v24, -1, -1);
    v13 = v32;
    MEMORY[0x24C21E1D0](v22, -1, -1);
  }

  LOBYTE(v39) = 0;
  v36(&v39, 0, a1, a4);
  v26 = sub_24A82D354();
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v28 = v35;
  v27[4] = a5;
  v27[5] = v28;

  v29 = v28;
  sub_24A6E5984(0, 0, v16, v13, v27);

  return sub_24A67F378(v16, &qword_27EF5CF08, &qword_24A830D80);
}

uint64_t sub_24A6EA8C0(uint64_t a1, void (*a2)(char *, uint64_t, void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_27EF78C40);
  v14 = sub_24A82CD94();
  v15 = sub_24A82D504();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24A675000, v14, v15, "FMIPDeviceActionsController: lost mode action succeeded", v16, 2u);
    MEMORY[0x24C21E1D0](v16, -1, -1);
  }

  v25 = 2;
  sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
  v17 = *(type metadata accessor for FMIPDevice(0) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24A8327A0;
  sub_24A68FD9C(a4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v19 + v18, type metadata accessor for FMIPDevice);
  a2(&v25, v19, 0, a4);

  v20 = sub_24A82D354();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a5;
  v21[5] = a6;

  v22 = a6;
  sub_24A6E5984(0, 0, v12, &unk_24A8338E8, v21);

  return sub_24A67F378(v12, &qword_27EF5CF08, &qword_24A830D80);
}

uint64_t sub_24A6EABAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_24A6EABCC, a4, 0);
}

uint64_t sub_24A6EABCC()
{
  v2 = v0[8];
  v1 = v0[9];
  swift_beginAccess();
  v3 = *(v2 + 112);

  v4 = sub_24A720190(v1, v3);
  LOBYTE(v1) = v5;

  if ((v1 & 1) == 0)
  {
    swift_beginAccess();
    v6 = sub_24A72029C(v4);
    swift_endAccess();
  }

  v7 = v0[1];

  return v7();
}

void sub_24A6EACA0(uint64_t a1, void *a2, char *a3)
{
  v84 = a2;
  v5 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v79 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v72 - v8;
  v83 = sub_24A82CAA4();
  v73 = *(v83 - 8);
  v9 = MEMORY[0x28223BE20](v83);
  v76 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v72 - v11;
  v12 = type metadata accessor for FMIPItem(0);
  v77 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v72 - v16;
  v18 = type metadata accessor for FMIPItemGroup(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v72 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v21 = sub_24A82CDC4();
  sub_24A6797D0(v21, qword_27EF78C40);
  v22 = sub_24A82CD94();
  v23 = sub_24A82D504();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_24A675000, v22, v23, "FMIPDeviceActionsController: Perform Separation Action.", v24, 2u);
    MEMORY[0x24C21E1D0](v24, -1, -1);
  }

  v25 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  v26 = type metadata accessor for FMIPDevice(0);
  sub_24A67E964(v25 + *(v26 + 128), v17, &unk_27EF5E0B0, &qword_24A8338B0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_24A67F378(v17, &unk_27EF5E0B0, &qword_24A8338B0);
    if (!*(v25 + 24))
    {
LABEL_9:
      v30 = sub_24A82CD94();
      v31 = sub_24A82D504();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_24A675000, v30, v31, "FMIPDeviceActionsController: Separation action could not be completed. No identifier for the device.", v32, 2u);
        MEMORY[0x24C21E1D0](v32, -1, -1);
      }

      return;
    }

    v27 = v79;
    sub_24A82CA44();
    v28 = v73;
    v29 = v83;
    if ((*(v73 + 48))(v27, 1, v83) == 1)
    {
      sub_24A67F378(v27, &qword_27EF5D020, &qword_24A830E40);
      goto LABEL_9;
    }

    v63 = v76;
    (*(v28 + 32))(v76, v27, v29);
    v64 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled);
    v65 = objc_opt_self();
    v66 = sub_24A82CA64();
    v67 = &selRef_beginLeashingWithBeaconUUID_;
    if (!v64)
    {
      v67 = &selRef_endLeashingWithBeaconUUID_;
    }

    v68 = [v65 *v67];

    v69 = *(v81 + 32);
    v70 = swift_allocObject();
    v70[2] = v84;
    v70[3] = a3;
    v70[4] = a1;
    v89 = sub_24A6EE87C;
    v90 = v70;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_24A7386AC;
    v88 = &unk_285DC2840;
    v71 = _Block_copy(&aBlock);

    [v69 executeCommand:v68 completion:v71];
    _Block_release(v71);

    (*(v28 + 8))(v63, v29);
  }

  else
  {
    v33 = v17;
    v34 = v72;
    sub_24A6EF274(v33, v72, type metadata accessor for FMIPItemGroup);
    v35 = *(v34 + 40);
    v36 = *(v35 + 16);
    v37 = MEMORY[0x277D84F90];
    v78 = a1;
    if (v36)
    {
      v79 = a3;
      aBlock = MEMORY[0x277D84F90];
      sub_24A6FC900(0, v36, 0);
      v37 = aBlock;
      v38 = v35 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
      v39 = v77[9];
      do
      {
        sub_24A68FD9C(v38, v14, type metadata accessor for FMIPItem);
        v41 = *(v14 + 44);
        v40 = *(v14 + 45);

        sub_24A68FFEC(v14, type metadata accessor for FMIPItem);
        aBlock = v37;
        v43 = *(v37 + 16);
        v42 = *(v37 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_24A6FC900((v42 > 1), v43 + 1, 1);
          v37 = aBlock;
        }

        *(v37 + 16) = v43 + 1;
        v44 = v37 + 16 * v43;
        *(v44 + 32) = v41;
        *(v44 + 40) = v40;
        v38 += v39;
        --v36;
      }

      while (v36);
      v45 = v78;
      a3 = v79;
    }

    else
    {
      v45 = a1;
    }

    v46 = swift_allocObject();
    v46[2] = v84;
    v46[3] = a3;
    v46[4] = v45;
    v46[5] = v37;
    v79 = swift_allocObject();
    *(v79 + 2) = 0;
    v47 = *(v37 + 16);
    v49 = v82;
    v48 = v83;
    if (v47)
    {
      v77 = v46;
      v50 = (v73 + 48);
      v75 = (v73 + 32);
      v76 = OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled;
      v73 += 8;
      v74 = &v87;

      v51 = v37 + 40;
      v52 = v79;
      do
      {

        sub_24A82CA44();

        if ((*v50)(v49, 1, v48) == 1)
        {
          sub_24A67F378(v49, &qword_27EF5D020, &qword_24A830E40);
        }

        else
        {
          v53 = v80;
          (*v75)(v80, v49, v48);
          v54 = v76[v78];
          v55 = objc_opt_self();
          v56 = sub_24A82CA64();
          v57 = &selRef_beginLeashingWithBeaconUUID_;
          if (!v54)
          {
            v57 = &selRef_endLeashingWithBeaconUUID_;
          }

          v58 = [v55 *v57];

          v84 = *(v81 + 32);
          v59 = swift_allocObject();
          v60 = v50;
          v61 = v77;
          v59[2] = sub_24A6EE888;
          v59[3] = v61;
          v59[4] = v52;
          v89 = sub_24A6EE894;
          v90 = v59;
          aBlock = MEMORY[0x277D85DD0];
          v86 = 1107296256;
          v87 = sub_24A7386AC;
          v88 = &unk_285DC28E0;
          v62 = _Block_copy(&aBlock);
          v50 = v60;

          v48 = v83;

          v49 = v82;
          [v84 executeCommand:v58 completion:v62];
          _Block_release(v62);

          (*v73)(v53, v48);
        }

        v51 += 16;
        --v47;
      }

      while (v47);
    }

    else
    {
    }

    sub_24A68FFEC(v72, type metadata accessor for FMIPItemGroup);
  }
}

uint64_t sub_24A6EB6B8(uint64_t result, id a2, void (*a3)(char *, uint64_t, id, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = a2;
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_27EF78C40);
    v11 = sub_24A82CD94();
    v12 = sub_24A82D504();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24A675000, v11, v12, "FMIPDeviceActionsController: Complete Separation with error.", v13, 2u);
      MEMORY[0x24C21E1D0](v13, -1, -1);
    }

    v25 = 0;
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v14 = *(type metadata accessor for FMIPDevice(0) - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v16 + v15, type metadata accessor for FMIPDevice);
    v17 = a2;
    a3(&v25, v16, a2, a5);
  }

  else
  {
    if (*(a6 + 16) != result)
    {
      return result;
    }

    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v18 = sub_24A82CDC4();
    sub_24A6797D0(v18, qword_27EF78C40);
    v19 = sub_24A82CD94();
    v20 = sub_24A82D504();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A675000, v19, v20, "FMIPDeviceActionsController: Separation Complete Success!", v21, 2u);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    v26 = 2;
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v22 = *(type metadata accessor for FMIPDevice(0) - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v24 + v23, type metadata accessor for FMIPDevice);
    a3(&v26, v24, 0, a5);
  }
}

uint64_t sub_24A6EBA60(void *a1, uint64_t (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_27EF78C40);
  v8 = a1;
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20[0] = v12;
    *v11 = 136315138;
    v13 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v14 = sub_24A82D024();
    v16 = sub_24A68761C(v14, v15, v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPDeviceActionsController: Separation action completed with error %s", v11, 0xCu);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  if (a1)
  {
    swift_beginAccess();
    result = *(a4 + 16);
    v18 = a1;
    return a2(result, v18);
  }

  swift_beginAccess();
  v19 = *(a4 + 16);
  result = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    *(a4 + 16) = result;
    v18 = 0;
    return a2(result, v18);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A6EBC44(void *a1, void (*a2)(void **, uint64_t, void *, uint64_t), uint64_t a3, uint64_t a4)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_27EF78C40);
  v8 = a1;
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    v13 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v14 = sub_24A82D024();
    v16 = sub_24A68761C(v14, v15, &v25);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPDeviceActionsController: Separation action completed with error %s", v11, 0xCu);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  if (a1)
  {
    LOBYTE(v25) = 0;
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v17 = *(type metadata accessor for FMIPDevice(0) - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(a4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v19 + v18, type metadata accessor for FMIPDevice);
    v20 = a1;
    a2(&v25, v19, a1, a4);
  }

  else
  {
    LOBYTE(v25) = 2;
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v21 = *(type metadata accessor for FMIPDevice(0) - 8);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(a4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v23 + v22, type metadata accessor for FMIPDevice);
    a2(&v25, v23, 0, a4);
  }
}

void sub_24A6EBFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  if (*(v7 + *(type metadata accessor for FMIPDevice(0) + 152)))
  {
    v8 = swift_allocObject();
    v8[2] = a2;
    v8[3] = a3;
    v8[4] = a1;
    v8[5] = v3;
    if (*(v7 + 56))
    {
      v9 = objc_opt_self();

      v10 = [v9 sharedInstance];
      v11 = sub_24A82CF94();
      v13[4] = sub_24A6EE870;
      v13[5] = v8;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 1107296256;
      v13[2] = sub_24A7386AC;
      v13[3] = &unk_285DC27F0;
      v12 = _Block_copy(v13);

      [v10 removeAccessoryWithDiscoveryId:v11 completion:v12];

      _Block_release(v12);
    }

    else
    {

      sub_24A6EC3C0(a1, a2, a3);
    }
  }

  else
  {

    sub_24A6EC3C0(a1, a2, a3);
  }
}

void sub_24A6EC1D0(void *a1, void (*a2)(uint64_t *, void, void *, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v8 = sub_24A82CDC4();
    sub_24A6797D0(v8, qword_27EF78C40);
    v9 = a1;
    v10 = sub_24A82CD94();
    v11 = sub_24A82D504();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 136315138;
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      v16 = v13;
      sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
      sub_24A82D914();
      v14 = sub_24A68761C(0, 0xE000000000000000, &v16);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_24A675000, v10, v11, "FMIPDeviceActionsController: remove device failed %s", v12, 0xCu);
      sub_24A6876E8(v13);
      MEMORY[0x24C21E1D0](v13, -1, -1);
      MEMORY[0x24C21E1D0](v12, -1, -1);
    }

    LOBYTE(v15[0]) = 0;
    a2(v15, 0, a1, a4);
  }

  else
  {
    sub_24A6EC3C0(a4, a2, a3);
  }
}

uint64_t sub_24A6EC3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_27EF78C40);
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPDeviceActionsController: Starting remove device request", v11, 2u);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  type metadata accessor for FMIPRemoveRequest(0);
  *(swift_allocObject() + qword_27EF78F98) = a1;
  if ((*(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) != 0)
  {
    v12 = 0xD000000000000014;
  }

  else
  {
    v12 = 0x65766F6D6572;
  }

  if ((*(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) != 0)
  {
    v13 = 0x800000024A8453F0;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  v14 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  v15 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken + 8);

  v22 = sub_24A6A183C(v12, v13, v14, v15, 1);
  v16 = v4[9];
  v17 = v4[10];
  sub_24A67DF6C(v4 + 6, v16);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a1;
  v18[5] = v4;
  v19 = *(v17 + 56);
  v20 = type metadata accessor for FMIPRemoveResponse();

  v19(v22, sub_24A6EE84C, v18, v20, v16, v17);
}

uint64_t sub_24A6EC62C(Swift::Int *a1, void *a2, uint64_t (*a3)(void, void, void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v60 = a2;
  v10 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = &v54 - v11;
  v12 = sub_24A82CAA4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v58 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  sub_24A6797D0(v15, qword_27EF78C40);

  v16 = sub_24A82CD94();
  v17 = sub_24A82D504();

  v18 = os_log_type_enabled(v16, v17);
  v59 = v13;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v54 = a4;
    v55 = a3;
    v21 = a5;
    v22 = v20;
    aBlock[0] = v20;
    *v19 = 136315138;
    v62 = a1;
    sub_24A6BBA94(&qword_27EF5D5C8, &unk_24A8338A0);
    v23 = sub_24A82D624();
    v25 = v12;
    v26 = sub_24A68761C(v23, v24, aBlock);

    *(v19 + 4) = v26;
    v12 = v25;
    _os_log_impl(&dword_24A675000, v16, v17, "FMIPDeviceActionsController: remove response received: %s", v19, 0xCu);
    sub_24A6876E8(v22);
    v27 = v22;
    a5 = v21;
    a4 = v54;
    a3 = v55;
    MEMORY[0x24C21E1D0](v27, -1, -1);
    MEMORY[0x24C21E1D0](v19, -1, -1);
  }

  v28 = v60;
  if (v60 || !a1)
  {
    v31 = v60;
    v32 = sub_24A82CD94();
    v33 = sub_24A82D504();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315138;
      v62 = v28;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v36 = sub_24A82D624();
      v38 = sub_24A68761C(v36, v37, aBlock);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_24A675000, v32, v33, "FMIPDeviceActionsController: error received for remove request: %s", v34, 0xCu);
      sub_24A6876E8(v35);
      MEMORY[0x24C21E1D0](v35, -1, -1);
      MEMORY[0x24C21E1D0](v34, -1, -1);
    }

    LOBYTE(aBlock[0]) = 0;
    return a3(aBlock, 0, v28, a5);
  }

  else
  {
    if (!*(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 24))
    {

      goto LABEL_14;
    }

    v29 = v57;
    sub_24A82CA44();
    v30 = v59;
    if ((*(v59 + 48))(v29, 1, v12) == 1)
    {
      sub_24A67F378(v29, &qword_27EF5D020, &qword_24A830E40);
LABEL_14:
      v40 = sub_24A82CD94();
      v41 = sub_24A82D504();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_24A675000, v40, v41, "FMIPDeviceActionsController: Not calling unpair for local findable beacons", v42, 2u);
        MEMORY[0x24C21E1D0](v42, -1, -1);
      }

      FMIPActionStatus.init(rawValue:)(a1[6]);
      v43 = aBlock[0];
      if (LOBYTE(aBlock[0]) == 18)
      {
        v43 = 0;
      }

      LOBYTE(aBlock[0]) = v43;
      v44 = a1[7];

      a3(aBlock, v44, 0, a5);
    }

    (*(v30 + 32))(v58, v29, v12);
    v45 = sub_24A82CD94();
    v46 = sub_24A82D504();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_24A675000, v45, v46, "FMIPDeviceActionsController: Calling unpair for local findable beacons", v47, 2u);
      MEMORY[0x24C21E1D0](v47, -1, -1);
    }

    v48 = sub_24A6DA74C();
    v49 = v58;
    v50 = sub_24A82CA64();
    v51 = swift_allocObject();
    v51[2] = a3;
    v51[3] = a4;
    v51[4] = a1;
    v51[5] = 0;
    v51[6] = a5;
    aBlock[4] = sub_24A6EE858;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7386AC;
    aBlock[3] = &unk_285DC27A0;
    v52 = _Block_copy(aBlock);

    v53 = 0;

    [v48 unpairUUID:v50 force:0 completion:v52];
    _Block_release(v52);

    return (*(v59 + 8))(v49, v12);
  }
}

uint64_t sub_24A6ECCC4(void *a1, void (*a2)(void, void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_27EF78C40);
  v12 = a1;
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = a2;
    v16 = a6;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315138;
    v19 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v20 = sub_24A82D024();
    v22 = sub_24A68761C(v20, v21, &v27);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_24A675000, v13, v14, "FMIPDeviceActionsController: Unpair finished. With error? %s", v17, 0xCu);
    sub_24A6876E8(v18);
    MEMORY[0x24C21E1D0](v18, -1, -1);
    v23 = v17;
    a6 = v16;
    a2 = v15;
    MEMORY[0x24C21E1D0](v23, -1, -1);
  }

  FMIPActionStatus.init(rawValue:)(*(a4 + 48));
  v24 = v27;
  if (v27 == 18)
  {
    v24 = 0;
  }

  LOBYTE(v27) = v24;
  v25 = *(a4 + 56);

  a2(&v27, v25, a5, a6);
}

uint64_t sub_24A6ECEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_27EF78C40);
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPDeviceActionsController: Starting repair device request", v11, 2u);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  type metadata accessor for FMIPRepairRequest(0);
  *(swift_allocObject() + qword_27EF78DE0) = a1;
  v12 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  v13 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken + 8);

  v14 = sub_24A6A183C(0x6544726961706572, 0xEC00000065636976, v12, v13, 0);
  v15 = v4[9];
  v16 = v4[10];
  sub_24A67DF6C(v4 + 6, v15);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a1;
  v18 = *(v16 + 56);
  v19 = type metadata accessor for FMIPRepairResponse();

  v18(v14, sub_24A6EE840, v17, v19, v15, v16);
}

uint64_t sub_24A6ED0EC(uint64_t a1, void *a2, uint64_t (*a3)(void **, uint64_t, void *, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2 || !a1)
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v17 = sub_24A82CDC4();
    sub_24A6797D0(v17, qword_27EF78C40);
    v18 = a2;
    v19 = sub_24A82CD94();
    v20 = sub_24A82D504();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v23 = sub_24A82D624();
      v25 = sub_24A68761C(v23, v24, &v26);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_24A675000, v19, v20, "FMIPDeviceActionsController: error received for repair request: %s", v21, 0xCu);
      sub_24A6876E8(v22);
      MEMORY[0x24C21E1D0](v22, -1, -1);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    LOBYTE(v26) = 0;
    return a3(&v26, 0, a2, a5);
  }

  else
  {
    v8 = qword_27EF5CB98;

    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_27EF78C40);
    v11 = sub_24A82CD94();
    v12 = sub_24A82D504();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24A675000, v11, v12, "FMIPDeviceActionsController: repair device action completed successfully", v13, 2u);
      MEMORY[0x24C21E1D0](v13, -1, -1);
    }

    FMIPActionStatus.init(rawValue:)(*(a1 + 48));
    v14 = v26;
    if (v26 == 18)
    {
      v14 = 0;
    }

    LOBYTE(v26) = v14;
    v15 = *(a1 + 56);

    a3(&v26, v15, 0, a5);
  }
}

void sub_24A6ED3AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, id a5, void (*a6)(uint64_t, id), uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a5)
  {
    v13 = a5;
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v14 = sub_24A82CDC4();
    sub_24A6797D0(v14, qword_27EF78C40);
    v15 = a5;
    v16 = sub_24A82CD94();
    v17 = sub_24A82D504();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = v19;
      *v18 = 136315138;
      v20 = a5;
      sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
      v21 = sub_24A82D024();
      v23 = sub_24A68761C(v21, v22, &v39);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_24A675000, v16, v17, "FMIPDeviceActionsController: Authentication error %s", v18, 0xCu);
      sub_24A6876E8(v19);
      MEMORY[0x24C21E1D0](v19, -1, -1);
      MEMORY[0x24C21E1D0](v18, -1, -1);
    }

    v24 = a5;
    a6(a8, a5);
  }

  else if (a4 && a2)
  {
    v27 = qword_27EF5CB98;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = sub_24A82CDC4();
    sub_24A6797D0(v28, qword_27EF78C40);

    v29 = sub_24A82CD94();
    v30 = sub_24A82D504();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_24A68761C(a3, a4, &v39);
      _os_log_impl(&dword_24A675000, v29, v30, "FMIPDeviceActionsController: Authentication received %s", v31, 0xCu);
      sub_24A6876E8(v32);
      MEMORY[0x24C21E1D0](v32, -1, -1);
      MEMORY[0x24C21E1D0](v31, -1, -1);
    }

    v33 = (a8 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
    *v33 = a1;
    v33[1] = a2;

    v34 = swift_allocObject();
    v34[2] = a6;
    v34[3] = a7;
    v34[4] = a8;

    sub_24A6EDAF8(a3, a4, a8, sub_24A6EFB08, v34);
  }

  else
  {
    sub_24A6EE8A0();
    v35 = swift_allocError();
    *v36 = 1;
    a6(a8, v35);
  }
}

void sub_24A6ED7C4(int a1, uint64_t a2, id a3, void (*a4)(uint64_t, id), uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v9 = a3;
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_27EF78C40);
    v11 = a3;
    v12 = sub_24A82CD94();
    v13 = sub_24A82D504();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136315138;
      v16 = a3;
      sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
      v17 = sub_24A82D024();
      v19 = sub_24A68761C(v17, v18, &v30);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_24A675000, v12, v13, "FMIPDeviceActionsController: Error validating password %s", v14, 0xCu);
      sub_24A6876E8(v15);
      MEMORY[0x24C21E1D0](v15, -1, -1);
      MEMORY[0x24C21E1D0](v14, -1, -1);
    }

    v20 = a3;
    a4(a6, a3);
  }

  else
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v22 = sub_24A82CDC4();
    sub_24A6797D0(v22, qword_27EF78C40);

    v23 = sub_24A82CD94();
    v24 = sub_24A82D504();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      v27 = (*(*a2 + 344))();
      v29 = sub_24A68761C(v27, v28, &v30);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_24A675000, v23, v24, "FMIPDeviceActionsController: Password validated %s", v25, 0xCu);
      sub_24A6876E8(v26);
      MEMORY[0x24C21E1D0](v26, -1, -1);
      MEMORY[0x24C21E1D0](v25, -1, -1);
    }

    a4(a2, 0);
  }
}

uint64_t sub_24A6EDAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for FMIPDevice(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMIPLostModeAction(0);
  if (swift_dynamicCastClass())
  {
    v15 = 3;
  }

  else
  {
    type metadata accessor for FMIPLockAction(0);
    if (swift_dynamicCastClass())
    {
      v15 = 2;
    }

    else
    {
      type metadata accessor for FMIPEraseAction(0);
      if (swift_dynamicCastClass())
      {
        v15 = 0;
      }

      else
      {
        type metadata accessor for FMIPCancelEraseAction(0);
        if (swift_dynamicCastClass())
        {
          v15 = 1;
        }

        else
        {
          type metadata accessor for FMIPRemoveDeviceAction(0);
          if (swift_dynamicCastClass())
          {
            v15 = 4;
          }

          else
          {
            v15 = 5;
          }
        }
      }
    }
  }

  sub_24A68FD9C(a3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v14, type metadata accessor for FMIPDevice);
  type metadata accessor for FMIPValidatePasswordRequest(0);
  v16 = swift_allocObject();
  v17 = (v16 + qword_27EF78EB8);
  *v17 = a1;
  v17[1] = a2;
  *(v16 + qword_27EF78EC0) = v15;
  sub_24A68FD9C(v14, v16 + qword_27EF78EC8, type metadata accessor for FMIPDevice);
  v18 = *(v14 + 27);
  if ((v18 & 0x80) != 0)
  {
    v19 = 0xD000000000000013;
  }

  else
  {
    v19 = 0xD000000000000011;
  }

  if ((v18 & 0x80) != 0)
  {
    v20 = "authForUserDevice";
  }

  else
  {
    v20 = "$defaultActor";
  }

  v21 = sub_24A6A183C(v19, v20 | 0x8000000000000000, 0, 0, 1);
  sub_24A68FFEC(v14, type metadata accessor for FMIPDevice);
  v22 = v6[9];
  v23 = v6[10];
  sub_24A67DF6C(v6 + 6, v22);
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a3;
  v25 = *(v23 + 56);
  v26 = type metadata accessor for FMIPValidatePasswordResponse();

  v25(v21, sub_24A6EE834, v24, v26, v22, v23);
}

uint64_t sub_24A6EDDC0(void *a1, void *a2, uint64_t (*a3)(void, void, void), uint64_t a4, uint64_t a5)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_27EF78C40);

  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v33 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v12 = 136315138;
    sub_24A6BBA94(&qword_27EF5D5C0, &unk_24A833890);
    v14 = sub_24A82D624();
    v16 = a5;
    v17 = sub_24A68761C(v14, v15, &v34);

    *(v12 + 4) = v17;
    a5 = v16;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPDeviceActionsController: validate password response received: %s", v12, 0xCu);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    v18 = v12;
    a3 = v33;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  if (a2 || !a1)
  {
    v24 = a2;
    v25 = sub_24A82CD94();
    v26 = sub_24A82D504();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v29 = sub_24A82D624();
      v31 = a5;
      v32 = sub_24A68761C(v29, v30, &v34);

      *(v27 + 4) = v32;
      a5 = v31;
      _os_log_impl(&dword_24A675000, v25, v26, "FMIPDeviceActionsController: error received validate password: %s", v27, 0xCu);
      sub_24A6876E8(v28);
      MEMORY[0x24C21E1D0](v28, -1, -1);
      MEMORY[0x24C21E1D0](v27, -1, -1);
    }

    LOBYTE(v34) = 0;
    return a3(&v34, a5, a2);
  }

  else
  {
    v19 = a1[8];
    v20 = (a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
    *v20 = a1[7];
    v20[1] = v19;

    v21 = a1[10];
    v22 = (a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
    *v22 = a1[9];
    v22[1] = v21;

    LOBYTE(v34) = 2 * (a1[6] == 200);
    a3(&v34, a5, 0);
  }
}

void sub_24A6EE108(unsigned __int8 *a1, void *a2, void (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_27EF78C40);

  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38[0] = v11;
    *v10 = 136315138;
    v39 = a1;
    sub_24A6BBA94(&qword_27EF5D618, &qword_24A8339A8);
    v12 = sub_24A82D624();
    v14 = sub_24A68761C(v12, v13, v38);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPDeviceActionsController: verify trusted state response received: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  if (a2 || !a1)
  {
    v21 = a2;
    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38[0] = v25;
      *v24 = 136315138;
      v39 = a2;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v26 = sub_24A82D624();
      v28 = sub_24A68761C(v26, v27, v38);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_24A675000, v22, v23, "FMIPDeviceActionsController: error received verifying trusted state password: %s", v24, 0xCu);
      sub_24A6876E8(v25);
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    a3(a5, a2);
  }

  else
  {
    v15 = a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation;
    swift_beginAccess();
    v16 = *v15;
    if (*v15)
    {
      v17 = *(v15 + 8);
      v18 = a1[57];
      v19 = a1[56];
      v20 = swift_allocObject();
      v20[2] = a3;
      v20[3] = a4;
      v20[4] = a5;

      sub_24A6A7314(v16, v17);

      v16(v18, v19, sub_24A6EFA14, v20);

      sub_24A6AFFE8(v16, v17);
    }

    else
    {
      v29 = qword_281515DC8;

      if (v29 != -1)
      {
        swift_once();
      }

      sub_24A6797D0(v7, qword_281518F88);
      v30 = sub_24A82CD94();
      v31 = sub_24A82D4E4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_24A675000, v30, v31, "FMIPDeviceActionsController: trusted device confirmation callback missing", v32, 2u);
        MEMORY[0x24C21E1D0](v32, -1, -1);
      }

      sub_24A6EE8A0();
      v33 = swift_allocError();
      *v34 = 3;
      a3(a5, v33);
    }
  }
}

void sub_24A6EE578(char a1, void (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v6 = sub_24A82CDC4();
    sub_24A6797D0(v6, qword_27EF78C40);
    v7 = sub_24A82CD94();
    v8 = sub_24A82D504();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24A675000, v7, v8, "FMIPDeviceActionsController: trusted device confirmation confirmed", v9, 2u);
      MEMORY[0x24C21E1D0](v9, -1, -1);
    }

    a2(a4, 0);
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_281518F88);
    v11 = sub_24A82CD94();
    v12 = sub_24A82D4E4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24A675000, v11, v12, "FMIPDeviceActionsController: trusted device confirmation declined", v13, 2u);
      MEMORY[0x24C21E1D0](v13, -1, -1);
    }

    sub_24A6EE8A0();
    v14 = swift_allocError();
    *v15 = 4;
    a2(a4, v14);
  }
}

uint64_t sub_24A6EE794()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_24A6EE7E0()
{
  result = qword_27EF5D5B8;
  if (!qword_27EF5D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D5B8);
  }

  return result;
}

unint64_t sub_24A6EE8A0()
{
  result = qword_27EF5D5D8;
  if (!qword_27EF5D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D5D8);
  }

  return result;
}

uint64_t sub_24A6EE8F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24A69BD40;

  return sub_24A6EA22C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24A6EE9E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24A69BD40;

  return sub_24A69B884(a1, v4);
}

uint64_t sub_24A6EEAF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A6CADE0;

  return sub_24A6EABAC(a1, v4, v5, v7, v6);
}

uint64_t sub_24A6EEBB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A6CADE0;

  return sub_24A6E5964(a1, v4, v5, v7, v6);
}