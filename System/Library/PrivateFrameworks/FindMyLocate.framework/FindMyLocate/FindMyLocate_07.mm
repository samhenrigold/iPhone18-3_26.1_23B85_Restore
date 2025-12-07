uint64_t Device.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Device.deviceName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Device.idsDeviceId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall Device.init(identifier:deviceName:idsDeviceId:isActive:isThisDevice:isCompanion:isAutoMeCapable:)(FindMyLocate::Device *__return_ptr retstr, Swift::String identifier, Swift::String deviceName, Swift::String idsDeviceId, Swift::Bool isActive, Swift::Bool isThisDevice, Swift::Bool isCompanion, Swift::Bool isAutoMeCapable)
{
  retstr->identifier = identifier;
  retstr->deviceName = deviceName;
  retstr->idsDeviceId = idsDeviceId;
  retstr->isActive = isActive;
  retstr->isThisDevice = isThisDevice;
  retstr->isCompanion = isCompanion;
  retstr->isAutoMeCapable = isAutoMeCapable;
}

uint64_t Device.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);
  v9 = *(v0 + 50);
  v19 = *(v0 + 51);
  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](0x696669746E656469, 0xEC000000203A7265);
  MEMORY[0x1B8CB7A40](v1, v2);
  MEMORY[0x1B8CB7A40](0x4E65636976656420, 0xED0000203A656D61);
  MEMORY[0x1B8CB7A40](v3, v4);
  MEMORY[0x1B8CB7A40](0x6976654473646920, 0xEE00203A64496563);
  MEMORY[0x1B8CB7A40](v5, v6);
  MEMORY[0x1B8CB7A40](0x7669746341736920, 0xEB00000000203A65);
  if (v7)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v7)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v10, v11);

  MEMORY[0x1B8CB7A40](0x4473696854736920, 0xEF203A6563697665);
  if (v8)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v8)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v12, v13);

  MEMORY[0x1B8CB7A40](0x61706D6F43736920, 0xEE00203A6E6F696ELL);
  if (v9)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v9)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v14, v15);

  MEMORY[0x1B8CB7A40](0xD000000000000012, 0x80000001B80CDA30);
  if (v19)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v19)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v16, v17);

  return 0;
}

uint64_t sub_1B806DA94()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6E61706D6F437369;
  if (v1 != 5)
  {
    v3 = 0x654D6F7475417369;
  }

  v4 = 0x6576697463417369;
  if (v1 != 3)
  {
    v4 = 0x6544736968547369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x614E656369766564;
  if (v1 != 1)
  {
    v5 = 0x6369766544736469;
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

uint64_t sub_1B806DB98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B806E92C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B806DBCC(uint64_t a1)
{
  v2 = sub_1B806E564();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B806DC08(uint64_t a1)
{
  v2 = sub_1B806E564();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Device.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66768, &qword_1B80D6458);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v7;
  v8 = *(v1 + 32);
  v12 = *(v1 + 40);
  v13 = v8;
  LODWORD(v8) = *(v1 + 48);
  v11[4] = *(v1 + 49);
  v11[5] = v8;
  LODWORD(v8) = *(v1 + 50);
  v11[2] = *(v1 + 51);
  v11[3] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B806E564();
  sub_1B80C99DC();
  v23 = 0;
  v9 = v16;
  sub_1B80C978C();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v22 = 1;
  sub_1B80C978C();
  v21 = 2;
  sub_1B80C978C();
  v20 = 3;
  sub_1B80C979C();
  v19 = 4;
  sub_1B80C979C();
  v18 = 5;
  sub_1B80C979C();
  v17 = 6;
  sub_1B80C979C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t Device.hash(into:)(uint64_t a1)
{
  sub_1B80C911C();
  sub_1B80C911C();
  sub_1B80C911C();
  sub_1B80C995C();
  sub_1B80C995C();
  sub_1B80C995C();
  return sub_1B80C995C();
}

uint64_t Device.hashValue.getter()
{
  sub_1B80C993C();
  Device.hash(into:)(v1);
  return sub_1B80C997C();
}

uint64_t Device.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66770, &qword_1B80D6460);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B806E564();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v30[0]) = 0;
  v9 = sub_1B80C96DC();
  v26 = v10;
  LOBYTE(v30[0]) = 1;
  *&v25 = sub_1B80C96DC();
  *(&v25 + 1) = v11;
  LOBYTE(v30[0]) = 2;
  v24 = sub_1B80C96DC();
  v13 = v12;
  LOBYTE(v30[0]) = 3;
  v35 = sub_1B80C96EC();
  LOBYTE(v30[0]) = 4;
  v23 = sub_1B80C96EC();
  LOBYTE(v30[0]) = 5;
  v22 = sub_1B80C96EC();
  v36 = 6;
  v14 = sub_1B80C96EC();
  v35 &= 1u;
  v22 &= 1u;
  v23 &= 1u;
  (*(v6 + 8))(v8, v5);
  HIDWORD(v21) = v14 & 1;
  v16 = *(&v25 + 1);
  v15 = v26;
  *&v27[0] = v9;
  *(&v27[0] + 1) = v26;
  v17 = v24;
  v18 = v25;
  v27[1] = v25;
  *&v28 = v24;
  *(&v28 + 1) = v13;
  LOBYTE(v29) = v35;
  BYTE1(v29) = v23;
  BYTE2(v29) = v22;
  HIBYTE(v29) = BYTE4(v21);
  v19 = v25;
  *a2 = v27[0];
  *(a2 + 16) = v19;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  sub_1B805C08C(v27, v30);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v30[0] = v9;
  v30[1] = v15;
  v30[2] = v18;
  v30[3] = v16;
  v30[4] = v17;
  v30[5] = v13;
  v31 = v35;
  v32 = v23;
  v33 = v22;
  v34 = BYTE4(v21);
  return sub_1B805C0E8(v30);
}

uint64_t sub_1B806E348()
{
  sub_1B80C993C();
  Device.hash(into:)(v1);
  return sub_1B80C997C();
}

uint64_t sub_1B806E38C(uint64_t a1)
{
  sub_1B80C993C();
  Device.hash(into:)(v2);
  return sub_1B80C997C();
}

uint64_t _s12FindMyLocate6DeviceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v18 = *(a1 + 48);
  v19 = *(a1 + 49);
  v6 = *(a1 + 50);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v15 = *(a1 + 51);
  v16 = *(a2 + 48);
  v17 = *(a2 + 49);
  v11 = *(a2 + 50);
  v14 = *(a2 + 51);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (sub_1B80C981C()) && (v2 == v7 && v4 == v8 || (sub_1B80C981C()))
  {
    v12 = v6 ^ v11;
    if (v3 == v9 && v5 == v10)
    {
      if (((v18 ^ v16 | v19 ^ v17 | v12) & 1) == 0)
      {
        return v15 ^ v14 ^ 1u;
      }
    }

    else if (!((v18 ^ v16) & 1 | ((sub_1B80C981C() & 1) == 0) | ((v19 ^ v17) | v12) & 1))
    {
      return v15 ^ v14 ^ 1u;
    }
  }

  return 0;
}

unint64_t sub_1B806E564()
{
  result = qword_1ED8DD558;
  if (!qword_1ED8DD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD558);
  }

  return result;
}

unint64_t sub_1B806E5BC()
{
  result = qword_1EBA65980;
  if (!qword_1EBA65980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65980);
  }

  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B806E62C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_1B806E674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Device.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Device.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B806E828()
{
  result = qword_1EBA66778;
  if (!qword_1EBA66778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66778);
  }

  return result;
}

unint64_t sub_1B806E880()
{
  result = qword_1ED8DD548;
  if (!qword_1ED8DD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD548);
  }

  return result;
}

unint64_t sub_1B806E8D8()
{
  result = qword_1ED8DD550;
  if (!qword_1ED8DD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD550);
  }

  return result;
}

uint64_t sub_1B806E92C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369766544736469 && a2 == 0xEB00000000644965 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6576697463417369 && a2 == 0xE800000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6544736968547369 && a2 == 0xEC00000065636976 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E61706D6F437369 && a2 == 0xEB000000006E6F69 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x654D6F7475417369 && a2 == 0xEF656C6261706143)
  {

    return 6;
  }

  else
  {
    v5 = sub_1B80C981C();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t DeviceWithCompanion.description.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[12];
  sub_1B8051E5C(*v0, v0[1], v0[2], v0[3], v0[4], v0[5]);
  sub_1B8051E5C(v1, v2, v3, v4, v5, v6);
  sub_1B80C952C();

  strcpy(v10, "thisDevice: ");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661B0, &qword_1B80D66C0);
  v7 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v7);

  MEMORY[0x1B8CB7A40](0x696E61706D6F6320, 0xEC000000203A6E6FLL);
  v8 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v8);

  return v10[0];
}

double DeviceWithCompanion.thisDevice.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return sub_1B8051E5C(v2, v3, v4, v5, v6, v7);
}

double DeviceWithCompanion.companion.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return sub_1B8051E5C(v2, v3, v4, v5, v6, v7);
}

void __swiftcall DeviceWithCompanion.init(thisDevice:companion:)(FindMyLocate::DeviceWithCompanion *__return_ptr retstr, FindMyLocate::Device_optional *thisDevice, FindMyLocate::Device_optional *companion)
{
  deviceName = thisDevice->value.deviceName;
  retstr->thisDevice.value.identifier = thisDevice->value.identifier;
  retstr->thisDevice.value.deviceName = deviceName;
  retstr->thisDevice.value.idsDeviceId = thisDevice->value.idsDeviceId;
  v4 = companion->value.deviceName;
  *&retstr->thisDevice.is_nil = companion->value.identifier;
  v5 = *&companion->value.isActive;
  *&retstr->thisDevice.value.isActive = *&thisDevice->value.isActive;
  *(&retstr->companion.value.identifier._object + 7) = v4;
  *(&retstr->companion.value.deviceName._object + 7) = companion->value.idsDeviceId;
  *(&retstr->companion.value.idsDeviceId._object + 7) = v5;
}

uint64_t sub_1B806EDA4()
{
  if (*v0)
  {
    return 0x6F696E61706D6F63;
  }

  else
  {
    return 0x6976654473696874;
  }
}

uint64_t sub_1B806EDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6976654473696874 && a2 == 0xEA00000000006563;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F696E61706D6F63 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B806EED4(uint64_t a1)
{
  v2 = sub_1B806F194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B806EF10(uint64_t a1)
{
  v2 = sub_1B806F194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeviceWithCompanion.encode(to:)(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66780, &qword_1B80D66C8);
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v20 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v27 = *(v1 + 24);
  v28 = v8;
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v25 = *(v1 + 64);
  v26 = v11;
  v12 = *(v1 + 72);
  v23 = *(v1 + 80);
  v24 = v12;
  v13 = *(v1 + 88);
  v21 = *(v1 + 96);
  v22 = v13;
  v41 = *(v1 + 104);
  v14 = a1[4];
  v29 = a1[3];
  v30 = v14;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v15 = v27;
  v16 = v8;
  LODWORD(v8) = v10;
  sub_1B8051E5C(v5, v6, v7, v27, v9, v16);
  sub_1B806F194();
  v17 = v31;
  sub_1B80C99DC();
  v34 = v5;
  v35 = v6;
  v36 = v7;
  v37 = v15;
  v38 = v9;
  v39 = v28;
  v40 = v8;
  v42 = 0;
  sub_1B806F1E8();
  v18 = v32;
  sub_1B80C977C();
  sub_1B804FBC0(v34, v35, v36, v37, v38, v39);
  if (!v18)
  {
    v34 = v26;
    v35 = v25;
    v36 = v24;
    v37 = v23;
    v38 = v22;
    v39 = v21;
    v40 = v41;
    v42 = 1;
    sub_1B8051E5C(v26, v25, v24, v23, v22, v21);
    sub_1B80C977C();
    sub_1B804FBC0(v34, v35, v36, v37, v38, v39);
  }

  return (*(v33 + 8))(v4, v17);
}

unint64_t sub_1B806F194()
{
  result = qword_1EBA66788;
  if (!qword_1EBA66788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66788);
  }

  return result;
}

unint64_t sub_1B806F1E8()
{
  result = qword_1EBA65988;
  if (!qword_1EBA65988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65988);
  }

  return result;
}

uint64_t DeviceWithCompanion.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66790, &qword_1B80D66D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B806F194();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  v9 = v27;
  LOBYTE(v28[0]) = 0;
  sub_1B805B96C();
  sub_1B80C96CC();
  v26 = v33;
  v24 = v34;
  v25 = v35;
  v49 = v36;
  v50 = 1;
  sub_1B80C96CC();
  (*(v8 + 8))(v7, v4);
  v22 = v45;
  v23 = v44;
  v20 = v46;
  v21 = *(&v45 + 1);
  v18 = v47;
  v19 = *(&v46 + 1);
  HIDWORD(v17) = v48;
  v10 = *(&v25 + 1);
  v28[0] = v26;
  v11 = v24;
  v28[1] = v24;
  v12 = v25;
  v29 = v25;
  LODWORD(v8) = v49;
  LODWORD(v30) = v49;
  *(&v30 + 1) = v44;
  v31 = v45;
  v32[0] = v46;
  *&v32[1] = v47;
  DWORD2(v32[1]) = v48;
  v13 = v24;
  *v9 = v26;
  v9[1] = v13;
  v14 = v32[0];
  v9[4] = v31;
  v9[5] = v14;
  v15 = v30;
  v9[2] = v29;
  v9[3] = v15;
  *(v9 + 92) = *(v32 + 12);
  sub_1B805BEB4(v28, &v33);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v33 = v26;
  v34 = v11;
  *&v35 = v12;
  *(&v35 + 1) = v10;
  v36 = v8;
  v37 = v23;
  v38 = v22;
  v39 = v21;
  v40 = v20;
  v41 = v19;
  v42 = v18;
  v43 = HIDWORD(v17);
  return sub_1B805BF10(&v33);
}

uint64_t get_enum_tag_for_layout_string_12FindMyLocate6DeviceVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy108_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B806F5A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 108))
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

uint64_t sub_1B806F600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 108) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 108) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1B806F694()
{
  result = qword_1EBA66798;
  if (!qword_1EBA66798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66798);
  }

  return result;
}

unint64_t sub_1B806F6EC()
{
  result = qword_1EBA667A0;
  if (!qword_1EBA667A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA667A0);
  }

  return result;
}

unint64_t sub_1B806F744()
{
  result = qword_1EBA667A8;
  if (!qword_1EBA667A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA667A8);
  }

  return result;
}

uint64_t Fence.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for Fence(0) + 20));

  return v1;
}

uint64_t Fence.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Fence(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Fence.createdBy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Fence(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t Fence.finder.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Fence(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_1B806F950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Fence.acceptanceStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Fence(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

double Fence.region.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Fence(0) + 40);
  result = *(v3 + 16);
  v5 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = result;
  *(a1 + 24) = v5;
  return result;
}

__n128 Fence.region.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = (v1 + *(type metadata accessor for Fence(0) + 40));
  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u8[8] = v3;
  return result;
}

uint64_t Fence.placemark.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Fence(0) + 44));
  v4 = v3[9];
  v5 = v3[7];
  v30 = v3[8];
  v31 = v4;
  v6 = v3[9];
  v7 = v3[11];
  v32 = v3[10];
  v8 = v32;
  v33 = v7;
  v9 = v3[5];
  v11 = v3[3];
  v26 = v3[4];
  v10 = v26;
  v27 = v9;
  v12 = v3[5];
  v13 = v3[7];
  v28 = v3[6];
  v14 = v28;
  v29 = v13;
  v15 = v3[1];
  v16 = v3[3];
  v24 = v3[2];
  v17 = v24;
  v25 = v16;
  v18 = v3[1];
  v23[0] = *v3;
  v19 = v23[0];
  v23[1] = v18;
  a1[8] = v30;
  a1[9] = v6;
  v20 = v3[11];
  a1[10] = v8;
  a1[11] = v20;
  a1[4] = v10;
  a1[5] = v12;
  a1[6] = v14;
  a1[7] = v5;
  *a1 = v19;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v11;
  return sub_1B806FB80(v23, &v22);
}

__n128 Fence.placemark.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for Fence(0) + 44));
  v4 = v3[9];
  v17[8] = v3[8];
  v17[9] = v4;
  v5 = v3[11];
  v17[10] = v3[10];
  v17[11] = v5;
  v6 = v3[5];
  v17[4] = v3[4];
  v17[5] = v6;
  v7 = v3[7];
  v17[6] = v3[6];
  v17[7] = v7;
  v8 = v3[3];
  v17[2] = v3[2];
  v17[3] = v8;
  v9 = v3[1];
  v17[0] = *v3;
  v17[1] = v9;
  sub_1B806FC7C(v17);
  v10 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v10;
  v11 = *(a1 + 176);
  v3[10] = *(a1 + 160);
  v3[11] = v11;
  v12 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v12;
  v13 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v13;
  v14 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v14;
  result = *(a1 + 32);
  v16 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v16;
  return result;
}

double Fence.others.getter()
{
  type metadata accessor for Fence(0);

  return result;
}

uint64_t Fence.updatedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Fence(0) + 56);
  v4 = sub_1B80C8E2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Fence.ckRecordZoneOwnerName.getter()
{
  v1 = *(v0 + *(type metadata accessor for Fence(0) + 64));

  return v1;
}

uint64_t Fence.shouldDeleteFence.setter(char a1)
{
  result = type metadata accessor for Fence(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t Fence.init(label:createdBy:finder:variant:region:placemark:others:muteEndDate:acceptanceStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v67 = a8;
  v62 = a5;
  v64 = a2;
  v63 = a1;
  v61 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v65 = &v55[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55[-v19];
  v57 = &v55[-v19];
  v68 = type metadata accessor for Fence.Variant(0);
  v21 = MEMORY[0x1EEE9AC00](v68);
  v66 = &v55[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v55[-v23];
  v56 = *a3;
  v25 = *a4;
  v60 = *a6;
  v26 = *(a6 + 2);
  v59 = *(a6 + 24);
  v27 = a7[9];
  v77 = a7[8];
  v78 = v27;
  v28 = a7[11];
  v79 = a7[10];
  v80 = v28;
  v29 = a7[5];
  v73 = a7[4];
  v74 = v29;
  v30 = a7[7];
  v75 = a7[6];
  v76 = v30;
  v31 = a7[1];
  v69 = *a7;
  v70 = v31;
  v32 = a7[3];
  v71 = a7[2];
  v72 = v32;
  sub_1B806F950(a5, &v55[-v23], type metadata accessor for Fence.Variant);
  sub_1B7FB8448(a10, v20, &unk_1EBA65FD0, &unk_1B80D1920);
  v33 = type metadata accessor for Fence(0);
  v34 = v33[13];
  v35 = sub_1B80C8E2C();
  (*(*(v35 - 8) + 56))(a9 + v34, 1, 1, v35);
  v36 = v33[15];
  v37 = sub_1B80C8E9C();
  v58 = *(*(v37 - 8) + 56);
  v58(a9 + v36, 1, 1, v37);
  v38 = (a9 + v33[16]);
  sub_1B80C8E7C();
  v39 = (a9 + v33[5]);
  v40 = v64;
  *v39 = v63;
  v39[1] = v40;
  *(a9 + v33[6]) = v56;
  v41 = v33[7];
  LODWORD(v64) = v25;
  *(a9 + v41) = v25;
  sub_1B806F950(v24, a9 + v33[8], type metadata accessor for Fence.Variant);
  v42 = a9 + v33[10];
  *v42 = v60;
  *(v42 + 16) = v26;
  *(v42 + 24) = v59;
  v43 = (a9 + v33[11]);
  v44 = v78;
  v43[8] = v77;
  v43[9] = v44;
  v45 = v80;
  v43[10] = v79;
  v43[11] = v45;
  v46 = v74;
  v43[4] = v73;
  v43[5] = v46;
  v47 = v76;
  v43[6] = v75;
  v43[7] = v47;
  v48 = v70;
  *v43 = v69;
  v43[1] = v48;
  v49 = v72;
  v43[2] = v71;
  v43[3] = v49;
  *(a9 + v33[12]) = v67;
  v50 = v65;
  v51 = v57;
  sub_1B8070830(v57, v65);
  sub_1B7FF450C(v50, a9 + v34, &unk_1EBA65FD0, &unk_1B80D1920);
  sub_1B80C8E1C();
  sub_1B7FB86D4(v61, &unk_1EBA65FD0, &unk_1B80D1920);
  sub_1B8071064(v62, type metadata accessor for Fence.Variant);
  sub_1B7FB86D4(v51, &unk_1EBA65FD0, &unk_1B80D1920);
  sub_1B7FB86D4(a9 + v36, &qword_1EBA667B0, &qword_1B80D68E8);
  v58(a9 + v36, 1, 1, v37);
  v52 = v66;
  *v38 = 0;
  v38[1] = 0;
  *(a9 + v33[17]) = 0;
  sub_1B8071324(v24, v52, type metadata accessor for Fence.Variant);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      if (v64)
      {
        v54 = 2;
      }

      else
      {
        v54 = 0;
      }
    }

    else
    {
      result = sub_1B8071064(v52, type metadata accessor for Fence.Variant);
      v54 = 0;
    }
  }

  else
  {
    v54 = 2;
  }

  *(a9 + v33[9]) = v54;
  return result;
}

uint64_t Fence.init(label:createdBy:finder:variant:region:placemark:others:muteEndDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v53 = a5;
  v49 = a1;
  v50 = a2;
  v55 = a10;
  v56 = a8;
  v57 = type metadata accessor for Fence.Variant(0);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v46[-v17];
  v19 = *a3;
  v20 = *a4;
  v48 = *a6;
  v21 = *(a6 + 2);
  v47 = *(a6 + 24);
  v22 = type metadata accessor for Fence(0);
  v23 = v22[13];
  v24 = sub_1B80C8E2C();
  (*(*(v24 - 8) + 56))(a9 + v23, 1, 1, v24);
  v25 = v22[15];
  v26 = sub_1B80C8E9C();
  v27 = *(v26 - 8);
  v51 = *(v27 + 56);
  v52 = v27 + 56;
  v51(a9 + v25, 1, 1, v26);
  v28 = (a9 + v22[16]);
  sub_1B80C8E7C();
  v29 = (a9 + v22[5]);
  v30 = v50;
  *v29 = v49;
  v29[1] = v30;
  *(a9 + v22[6]) = v19;
  v31 = v22[7];
  LODWORD(v50) = v20;
  *(a9 + v31) = v20;
  v32 = v53;
  sub_1B806F950(v53, a9 + v22[8], type metadata accessor for Fence.Variant);
  v33 = a9 + v22[10];
  *v33 = v48;
  *(v33 + 16) = v21;
  *(v33 + 24) = v47;
  v34 = (a9 + v22[11]);
  v35 = a7[9];
  v34[8] = a7[8];
  v34[9] = v35;
  v36 = a7[11];
  v34[10] = a7[10];
  v34[11] = v36;
  v37 = a7[5];
  v34[4] = a7[4];
  v34[5] = v37;
  v38 = a7[7];
  v34[6] = a7[6];
  v34[7] = v38;
  v39 = a7[1];
  *v34 = *a7;
  v34[1] = v39;
  v40 = a7[3];
  v34[2] = a7[2];
  v34[3] = v40;
  v41 = v55;
  *(a9 + v22[12]) = v56;
  sub_1B8070830(v41, v18);
  v42 = a9 + v23;
  v43 = v54;
  sub_1B7FF450C(v18, v42, &unk_1EBA65FD0, &unk_1B80D1920);
  sub_1B80C8E1C();
  sub_1B7FB86D4(v41, &unk_1EBA65FD0, &unk_1B80D1920);
  sub_1B7FB86D4(a9 + v25, &qword_1EBA667B0, &qword_1B80D68E8);
  v51(a9 + v25, 1, 1, v26);
  *v28 = 0;
  v28[1] = 0;
  *(a9 + v22[17]) = 0;
  sub_1B8071324(v32, v43, type metadata accessor for Fence.Variant);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      if (v50)
      {
        v45 = 2;
      }

      else
      {
        v45 = 0;
      }
    }

    else
    {
      result = sub_1B8071064(v43, type metadata accessor for Fence.Variant);
      v45 = 0;
    }
  }

  else
  {
    v45 = 2;
  }

  *(a9 + v22[9]) = v45;
  return result;
}

uint64_t sub_1B8070830@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1B80C8E2C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  sub_1B7FB8448(a1, v6, &unk_1EBA65FD0, &unk_1B80D1920);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B7FB86D4(v6, &unk_1EBA65FD0, &unk_1B80D1920);
LABEL_6:
    v17 = 1;
    return (*(v8 + 56))(a2, v17, 1, v7);
  }

  v14 = *(v8 + 32);
  v14(v13, v6, v7);
  sub_1B80C8DFC();
  v15 = sub_1B80C8D9C();
  v16 = *(v8 + 8);
  v16(v11, v7);
  if ((v15 & 1) == 0)
  {
    v16(v13, v7);
    goto LABEL_6;
  }

  v14(a2, v13, v7);
  v17 = 0;
  return (*(v8 + 56))(a2, v17, 1, v7);
}

uint64_t Fence.init(id:label:createdBy:finder:variant:acceptanceStatus:region:placemark:others:muteEndDate:ckRecordIdentifier:ckRecordZoneOwnerName:updatedAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v57 = a3;
  v58 = a6;
  v55 = a1;
  v56 = a2;
  v65 = a14;
  v66 = a15;
  v63 = a16;
  v64 = a13;
  v61 = a11;
  v62 = a12;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v51 - v22;
  v24 = *a4;
  v25 = *a5;
  v26 = *a7;
  v54 = *a8;
  v27 = *(a8 + 2);
  LODWORD(v22) = *(a8 + 24);
  v52 = v26;
  v53 = v22;
  v28 = type metadata accessor for Fence(0);
  v29 = v28[13];
  v60 = v29;
  v30 = sub_1B80C8E2C();
  v31 = *(v30 - 8);
  (*(v31 + 56))(a9 + v29, 1, 1, v30);
  v32 = v28[15];
  v59 = v32;
  v33 = sub_1B80C8E9C();
  (*(*(v33 - 8) + 56))(a9 + v32, 1, 1, v33);
  v34 = (a9 + v28[16]);
  v35 = v55;
  sub_1B806F950(v55, a9, type metadata accessor for Fence.ID);
  v36 = (a9 + v28[5]);
  v37 = v57;
  *v36 = v56;
  v36[1] = v37;
  *(a9 + v28[6]) = v24;
  *(a9 + v28[7]) = v25;
  v38 = v58;
  sub_1B806F950(v58, a9 + v28[8], type metadata accessor for Fence.Variant);
  v39 = v53;
  *(a9 + v28[9]) = v52;
  v40 = a9 + v28[10];
  *v40 = v54;
  *(v40 + 16) = v27;
  *(v40 + 24) = v39;
  v41 = (a9 + v28[11]);
  v42 = a10[9];
  v41[8] = a10[8];
  v41[9] = v42;
  v43 = a10[11];
  v41[10] = a10[10];
  v41[11] = v43;
  v44 = a10[5];
  v41[4] = a10[4];
  v41[5] = v44;
  v45 = a10[7];
  v41[6] = a10[6];
  v41[7] = v45;
  v46 = a10[1];
  *v41 = *a10;
  v41[1] = v46;
  v47 = a10[3];
  v41[2] = a10[2];
  v41[3] = v47;
  v48 = v62;
  *(a9 + v28[12]) = v61;
  sub_1B8070830(v48, v23);
  sub_1B7FB86D4(v48, &unk_1EBA65FD0, &unk_1B80D1920);
  sub_1B8071064(v38, type metadata accessor for Fence.Variant);
  sub_1B8071064(v35, type metadata accessor for Fence.ID);
  sub_1B7FF450C(v23, a9 + v60, &unk_1EBA65FD0, &unk_1B80D1920);
  (*(v31 + 32))(a9 + v28[14], v63, v30);
  result = sub_1B7FF450C(v64, a9 + v59, &qword_1EBA667B0, &qword_1B80D68E8);
  v50 = v66;
  *v34 = v65;
  v34[1] = v50;
  *(a9 + v28[17]) = 0;
  return result;
}

unint64_t sub_1B8070DCC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0x4264657461657263;
      break;
    case 3:
      result = 0x7265646E6966;
      break;
    case 4:
      result = 0x746E6169726176;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6E6F69676572;
      break;
    case 7:
      result = 0x72616D6563616C70;
      break;
    case 8:
      result = 0x73726568746FLL;
      break;
    case 9:
      result = 0x44646E456574756DLL;
      break;
    case 10:
      result = 0x4164657461647075;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B8070F68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8081484(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8070F9C(uint64_t a1)
{
  v2 = sub_1B807EEEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8070FD8(uint64_t a1)
{
  v2 = sub_1B807EEEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8071064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Fence.ID.init(string:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_1B80C8E9C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Fence.ID(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1B80C8E3C();

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v17 = *(v9 + 32);
      v17(v11, v7, v8);
      v17(v15, v11, v8);
      sub_1B8071324(v15, a3, type metadata accessor for Fence.ID);
      v16 = 0;
      return (*(v13 + 56))(a3, v16, 1, v12);
    }

    sub_1B7FB86D4(v7, &qword_1EBA667B0, &qword_1B80D68E8);
  }

  v16 = 1;
  return (*(v13 + 56))(a3, v16, 1, v12);
}

uint64_t sub_1B8071324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B80713A0(uint64_t a1)
{
  v2 = sub_1B807E3FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80713DC(uint64_t a1)
{
  v2 = sub_1B807E3FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s12FindMyLocate5FenceV2IDV10uuidStringSSvg_0(uint64_t a1)
{
  sub_1B80C8E4C();
  v1 = sub_1B80C90FC();

  return v1;
}

uint64_t _s12FindMyLocate5FenceV2IDV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B80C8E9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s12FindMyLocate5FenceV2IDV2idAE10Foundation4UUIDV_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B80C8E9C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1B8071540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B80C981C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B80715C8(uint64_t a1)
{
  v2 = sub_1B807EAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8071604(uint64_t a1)
{
  v2 = sub_1B807EAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s12FindMyLocate5FenceV2IDV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  sub_1B80C8E9C();
  sub_1B807E298(&qword_1EBA65A68, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_1B80C905C();
}

uint64_t _s12FindMyLocate5FenceV2IDV9hashValueSivg_0()
{
  sub_1B80C993C();
  sub_1B80C8E9C();
  sub_1B807E298(&qword_1EBA65A68, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1B80C905C();
  return sub_1B80C997C();
}

uint64_t sub_1B807174C(uint64_t a1)
{
  sub_1B80C993C();
  sub_1B80C8E9C();
  sub_1B807E298(&qword_1EBA65A68, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1B80C905C();
  return sub_1B80C997C();
}

uint64_t sub_1B80717D0(uint64_t a1)
{
  v2 = sub_1B8071E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B807180C(uint64_t a1)
{
  v2 = sub_1B8071E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8071848()
{
  v1 = 0x676E69646E6570;
  if (*v0 != 1)
  {
    v1 = 0x6465747065636361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x48676E69646E6570;
  }
}

uint64_t sub_1B80718B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B80818D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B80718D8(uint64_t a1)
{
  v2 = sub_1B8071DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8071914(uint64_t a1)
{
  v2 = sub_1B8071DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8071950(uint64_t a1)
{
  v2 = sub_1B8071E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B807198C(uint64_t a1)
{
  v2 = sub_1B8071E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80719C8(uint64_t a1)
{
  v2 = sub_1B8071EA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8071A04(uint64_t a1)
{
  v2 = sub_1B8071EA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Fence.AcceptanceStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B8, &qword_1B80D68F0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667C0, &qword_1B80D68F8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667C8, &qword_1B80D6900);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667D0, &qword_1B80D6908);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8071DAC();
  sub_1B80C99DC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1B8071E54();
      v9 = v21;
      sub_1B80C974C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1B8071E00();
      v9 = v24;
      sub_1B80C974C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1B8071EA8();
    sub_1B80C974C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1B8071DAC()
{
  result = qword_1EBA667D8;
  if (!qword_1EBA667D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA667D8);
  }

  return result;
}

unint64_t sub_1B8071E00()
{
  result = qword_1EBA667E0;
  if (!qword_1EBA667E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA667E0);
  }

  return result;
}

unint64_t sub_1B8071E54()
{
  result = qword_1EBA667E8;
  if (!qword_1EBA667E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA667E8);
  }

  return result;
}

unint64_t sub_1B8071EA8()
{
  result = qword_1EBA667F0;
  if (!qword_1EBA667F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA667F0);
  }

  return result;
}

uint64_t Fence.AcceptanceStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667F8, &qword_1B80D6910);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66800, &qword_1B80D6918);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66808, &qword_1B80D6920);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66810, &qword_1B80D6928);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B8071DAC();
  v15 = v36;
  sub_1B80C99BC();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1B80C973C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1B7FCD6E4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1B80C955C();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v24 = &type metadata for Fence.AcceptanceStatus;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
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
          sub_1B8071E54();
          sub_1B80C968C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1B8071E00();
          v26 = v17;
          sub_1B80C968C();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1B8071EA8();
        sub_1B80C968C();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t Fence.AcceptanceStatus.description.getter()
{
  v1 = 0x657470656363612ELL;
  if (*v0 == 1)
  {
    v1 = 0x676E69646E65702ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E65702ELL;
  }
}

uint64_t sub_1B8072508()
{
  v1 = 0x657470656363612ELL;
  if (*v0 == 1)
  {
    v1 = 0x676E69646E65702ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E65702ELL;
  }
}

uint64_t sub_1B8072580(uint64_t a1)
{
  v2 = sub_1B807EAA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80725BC(uint64_t a1)
{
  v2 = sub_1B807EAA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80725F8()
{
  if (*v0)
  {
    return 0x676E697661656CLL;
  }

  else
  {
    return 0x676E697669727261;
  }
}

uint64_t sub_1B8072634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E697669727261 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E697661656CLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B8072710(uint64_t a1)
{
  v2 = sub_1B807EA00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B807274C(uint64_t a1)
{
  v2 = sub_1B807EA00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8072788(uint64_t a1)
{
  v2 = sub_1B807EA54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80727C4(uint64_t a1)
{
  v2 = sub_1B807EA54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8072808()
{
  v1 = 0x6E69727275636572;
  if (*v0 != 1)
  {
    v1 = 0x656C756465686373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D6954656E6FLL;
  }
}

uint64_t sub_1B8072870@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8081B40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8072898(uint64_t a1)
{
  v2 = sub_1B807E610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80728D4(uint64_t a1)
{
  v2 = sub_1B807E610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8072910(uint64_t a1)
{
  v2 = sub_1B807E760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B807294C(uint64_t a1)
{
  v2 = sub_1B807E760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8072988(uint64_t a1)
{
  v2 = sub_1B807E6B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80729C4(uint64_t a1)
{
  v2 = sub_1B807E6B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8072A00(uint64_t a1)
{
  v2 = sub_1B807E664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8072A3C(uint64_t a1)
{
  v2 = sub_1B807E664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Fence.Variant.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Fence.Schedule(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Fence.Variant(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B806F950(v2, v8, type metadata accessor for Fence.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = *v8;
    v11 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = *v8;
    v11 = 1;
LABEL_5:
    MEMORY[0x1B8CB8250](v11);
    return MEMORY[0x1B8CB8250](v10);
  }

  sub_1B8071324(v8, v5, type metadata accessor for Fence.Schedule);
  MEMORY[0x1B8CB8250](2);
  v13 = v5[1];
  MEMORY[0x1B8CB8250](*v5);
  MEMORY[0x1B8CB8250](v13);
  v14 = v5[3];
  MEMORY[0x1B8CB8250](v5[2]);
  MEMORY[0x1B8CB8250](v14);
  sub_1B80C995C();
  sub_1B80C8FCC();
  sub_1B807E298(&qword_1EBA66818, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B80C905C();
  return sub_1B8071064(v5, type metadata accessor for Fence.Schedule);
}

uint64_t Fence.Variant.hashValue.getter()
{
  sub_1B80C993C();
  Fence.Variant.hash(into:)(v1);
  return sub_1B80C997C();
}

uint64_t sub_1B8072CB0()
{
  sub_1B80C993C();
  Fence.Variant.hash(into:)(v1);
  return sub_1B80C997C();
}

uint64_t sub_1B8072CF4(uint64_t a1)
{
  sub_1B80C993C();
  Fence.Variant.hash(into:)(v2);
  return sub_1B80C997C();
}

uint64_t Fence.Variant.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Fence.Schedule(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Fence.Variant(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B806F950(v1, v7, type metadata accessor for Fence.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v12 = *v7;
    v16 = 0x656D6954656E6F2ELL;
    v17 = 0xE900000000000028;
    if (v12)
    {
      v10 = 0x676E697661656C2ELL;
    }

    else
    {
      v10 = 0x6E6976697272612ELL;
    }

    if (v12)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = 0xE900000000000067;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = *v7;
    v16 = 0x697272756365722ELL;
    v17 = 0xEB0000000028676ELL;
    if (v9)
    {
      v10 = 0x676E697661656C2ELL;
    }

    else
    {
      v10 = 0x6E6976697272612ELL;
    }

    if (v9)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = 0xE900000000000067;
    }

LABEL_15:
    MEMORY[0x1B8CB7A40](v10, v11);

    MEMORY[0x1B8CB7A40](41, 0xE100000000000000);
    return v16;
  }

  sub_1B8071324(v7, v4, type metadata accessor for Fence.Schedule);
  v16 = 0x6C7564656863732ELL;
  v17 = 0xEA00000000002865;
  v14 = Fence.Schedule.description.getter();
  MEMORY[0x1B8CB7A40](v14);

  MEMORY[0x1B8CB7A40](41, 0xE100000000000000);
  v15 = v16;
  sub_1B8071064(v4, type metadata accessor for Fence.Schedule);
  return v15;
}

uint64_t Fence.Variant.valueForAnalytics.getter()
{
  v1 = type metadata accessor for Fence.Variant(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B806F950(v0, v3, type metadata accessor for Fence.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (*v3)
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      sub_1B8071064(v3, type metadata accessor for Fence.Variant);
      return 5;
    }
  }

  else if (*v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t Fence.Trigger.description.getter()
{
  if (*v0)
  {
    return 0x676E697661656C2ELL;
  }

  else
  {
    return 0x6E6976697272612ELL;
  }
}

uint64_t sub_1B80730CC()
{
  if (*v0)
  {
    return 0x676E697661656C2ELL;
  }

  else
  {
    return 0x6E6976697272612ELL;
  }
}

uint64_t Fence.TriggerPosition.description.getter()
{
  v1 = type metadata accessor for Fence.TriggerPosition(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B806F950(v0, v3, type metadata accessor for Fence.TriggerPosition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1B8071064(v3, type metadata accessor for Fence.TriggerPosition);
  if (!EnumCaseMultiPayload)
  {
    return 0x656469736E692ELL;
  }

  if (EnumCaseMultiPayload == 1)
  {
    return 0x6564697374756F2ELL;
  }

  return 0x72657465646E752ELL;
}

uint64_t sub_1B8073228(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B806F950(v2, v4, type metadata accessor for Fence.TriggerPosition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1B8071064(v4, type metadata accessor for Fence.TriggerPosition);
  if (!EnumCaseMultiPayload)
  {
    return 0x656469736E692ELL;
  }

  if (EnumCaseMultiPayload == 1)
  {
    return 0x6564697374756F2ELL;
  }

  return 0x72657465646E752ELL;
}

uint64_t Fence.TriggerPosition.valueForAnalytics.getter()
{
  v1 = type metadata accessor for Fence.TriggerPosition(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B806F950(v0, v3, type metadata accessor for Fence.TriggerPosition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1B8071064(v3, type metadata accessor for Fence.TriggerPosition);
  return EnumCaseMultiPayload + 1;
}

FindMyLocate::Fence::MonitorRegion __swiftcall Fence.MonitorRegion.init(center:radius:source:)(__C::CLLocationCoordinate2D center, Swift::Double radius, FindMyLocate::Fence::MonitorRegion::Source source)
{
  v4 = *source;
  *v3 = center.latitude;
  *(v3 + 8) = center.longitude;
  *(v3 + 16) = radius;
  *(v3 + 24) = v4;
  result.center.longitude = center.longitude;
  result.center.latitude = center.latitude;
  result.radius = radius;
  result.source = source;
  return result;
}

uint64_t sub_1B8073460(uint64_t a1)
{
  v2 = sub_1B807ED48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B807349C(uint64_t a1)
{
  v2 = sub_1B807ED48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80734D8()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x50646570706F7264;
  if (v1 != 6)
  {
    v3 = 1819242356;
  }

  v4 = 0x4273736572646461;
  if (v1 != 4)
  {
    v4 = 0x6D6F74737563;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F4C646E65697266;
  if (v1 != 2)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0x4C746E6572727563;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B80735F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8081C68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8073618(uint64_t a1)
{
  v2 = sub_1B807EBF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8073654(uint64_t a1)
{
  v2 = sub_1B807EBF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8073690(uint64_t a1)
{
  v2 = sub_1B807EE44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80736CC(uint64_t a1)
{
  v2 = sub_1B807EE44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8073708(uint64_t a1)
{
  v2 = sub_1B807ECF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8073744(uint64_t a1)
{
  v2 = sub_1B807ECF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8073780(uint64_t a1)
{
  v2 = sub_1B807ECA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80737BC(uint64_t a1)
{
  v2 = sub_1B807ECA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80737F8(uint64_t a1)
{
  v2 = sub_1B807EDF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8073834(uint64_t a1)
{
  v2 = sub_1B807EDF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8073870(uint64_t a1)
{
  v2 = sub_1B807ED9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80738AC(uint64_t a1)
{
  v2 = sub_1B807ED9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80738E8(uint64_t a1)
{
  v2 = sub_1B807EC4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8073924(uint64_t a1)
{
  v2 = sub_1B807EC4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8073960(uint64_t a1)
{
  v2 = sub_1B807EE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B807399C(uint64_t a1)
{
  v2 = sub_1B807EE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t Fence.MonitorRegion.Source.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x646570706F72642ELL;
  if (v1 != 6)
  {
    v3 = 0x6C6F6F742ELL;
  }

  v4 = 0x737365726464612ELL;
  if (v1 != 4)
  {
    v4 = 0x6D6F747375632ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4C646E656972662ELL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B8073B28()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x646570706F72642ELL;
  if (v1 != 6)
  {
    v3 = 0x6C6F6F742ELL;
  }

  v4 = 0x737365726464612ELL;
  if (v1 != 4)
  {
    v4 = 0x6D6F747375632ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4C646E656972662ELL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B8073C48()
{
  if (*v0)
  {
    return 0x726568746FLL;
  }

  else
  {
    return 25965;
  }
}

uint64_t sub_1B8073C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25965 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B8073D44(uint64_t a1)
{
  v2 = sub_1B807E450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8073D80(uint64_t a1)
{
  v2 = sub_1B807E450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8073DBC(uint64_t a1)
{
  v2 = sub_1B807E4F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8073DF8(uint64_t a1)
{
  v2 = sub_1B807E4F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8073E34(uint64_t a1)
{
  v2 = sub_1B807E4A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8073E70(uint64_t a1)
{
  v2 = sub_1B807E4A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Fence.Participant.description.getter()
{
  if (*v0)
  {
    return 0x726568746F2ELL;
  }

  else
  {
    return 6647086;
  }
}

uint64_t sub_1B8073F0C()
{
  if (*v0)
  {
    return 0x726568746F2ELL;
  }

  else
  {
    return 6647086;
  }
}

uint64_t Fence.Participant.valueForAnalytics.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B8073F50@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1B8074024()
{
  sub_1B80C993C();
  sub_1B80C995C();
  return sub_1B80C997C();
}

uint64_t sub_1B8074098(uint64_t a1)
{
  sub_1B80C993C();
  sub_1B80C995C();
  return sub_1B80C997C();
}

BOOL sub_1B8074120(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_1B8074150@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1B807417C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

FindMyLocate::Fence::TimeOfDay __swiftcall Fence.TimeOfDay.init(hour:minute:)(Swift::UInt hour, Swift::UInt minute)
{
  *v2 = hour;
  v2[1] = minute;
  result.minute = minute;
  result.hour = hour;
  return result;
}

uint64_t sub_1B80742B8()
{
  if (*v0)
  {
    return 0x6574756E696DLL;
  }

  else
  {
    return 1920298856;
  }
}

uint64_t sub_1B80742E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1920298856 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B80743C0(uint64_t a1)
{
  v2 = sub_1B807E808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80743FC(uint64_t a1)
{
  v2 = sub_1B807E808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Fence.TimeOfDay.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1B8CB8250](*v0);
  return MEMORY[0x1B8CB8250](v1);
}

uint64_t Fence.TimeOfDay.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  MEMORY[0x1B8CB8250](v2);
  return sub_1B80C997C();
}

uint64_t sub_1B80744D0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  MEMORY[0x1B8CB8250](v2);
  return sub_1B80C997C();
}

uint64_t sub_1B807452C()
{
  v1 = v0[1];
  MEMORY[0x1B8CB8250](*v0);
  return MEMORY[0x1B8CB8250](v1);
}

uint64_t sub_1B8074568(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v2);
  MEMORY[0x1B8CB8250](v3);
  return sub_1B80C997C();
}

__n128 Fence.Schedule.start.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 Fence.Schedule.end.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t Fence.Schedule.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Fence.Schedule(0) + 28);
  v4 = sub_1B80C8FCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Fence.Schedule.init(start:end:daysOfWeek:timeZone:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  v8 = *a2;
  *a5 = *a1;
  *(a5 + 16) = v8;
  *(a5 + 32) = v7;
  v9 = *(type metadata accessor for Fence.Schedule(0) + 28);
  v10 = sub_1B80C8FCC();
  v11 = *(*(v10 - 8) + 32);

  return v11(a5 + v9, a4, v10);
}

uint64_t sub_1B8074720()
{
  v1 = 0x7472617473;
  v2 = 0x6557664F73796164;
  if (*v0 != 2)
  {
    v2 = 0x656E6F5A656D6974;
  }

  if (*v0)
  {
    v1 = 6581861;
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

uint64_t sub_1B8074794@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8081F1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B80747BC(uint64_t a1)
{
  v2 = sub_1B807E85C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80747F8(uint64_t a1)
{
  v2 = sub_1B807E85C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Fence.Schedule.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  MEMORY[0x1B8CB8250](*v1);
  MEMORY[0x1B8CB8250](v2);
  v3 = v1[3];
  MEMORY[0x1B8CB8250](v1[2]);
  MEMORY[0x1B8CB8250](v3);
  sub_1B80C995C();
  type metadata accessor for Fence.Schedule(0);
  sub_1B80C8FCC();
  sub_1B807E298(&qword_1EBA66818, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1B80C905C();
}

uint64_t Fence.Schedule.hashValue.getter()
{
  sub_1B80C993C();
  v1 = v0[1];
  MEMORY[0x1B8CB8250](*v0);
  MEMORY[0x1B8CB8250](v1);
  v2 = v0[3];
  MEMORY[0x1B8CB8250](v0[2]);
  MEMORY[0x1B8CB8250](v2);
  sub_1B80C995C();
  type metadata accessor for Fence.Schedule(0);
  sub_1B80C8FCC();
  sub_1B807E298(&qword_1EBA66818, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B80C905C();
  return sub_1B80C997C();
}

uint64_t sub_1B80749CC()
{
  sub_1B80C993C();
  v1 = v0[1];
  MEMORY[0x1B8CB8250](*v0);
  MEMORY[0x1B8CB8250](v1);
  v2 = v0[3];
  MEMORY[0x1B8CB8250](v0[2]);
  MEMORY[0x1B8CB8250](v2);
  sub_1B80C995C();
  sub_1B80C8FCC();
  sub_1B807E298(&qword_1EBA66818, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B80C905C();
  return sub_1B80C997C();
}

uint64_t sub_1B8074AA8(uint64_t a1)
{
  v2 = v1[1];
  MEMORY[0x1B8CB8250](*v1);
  MEMORY[0x1B8CB8250](v2);
  v3 = v1[3];
  MEMORY[0x1B8CB8250](v1[2]);
  MEMORY[0x1B8CB8250](v3);
  sub_1B80C995C();
  sub_1B80C8FCC();
  sub_1B807E298(&qword_1EBA66818, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1B80C905C();
}

uint64_t sub_1B8074B64(uint64_t a1)
{
  sub_1B80C993C();
  v2 = v1[1];
  MEMORY[0x1B8CB8250](*v1);
  MEMORY[0x1B8CB8250](v2);
  v3 = v1[3];
  MEMORY[0x1B8CB8250](v1[2]);
  MEMORY[0x1B8CB8250](v3);
  sub_1B80C995C();
  sub_1B80C8FCC();
  sub_1B807E298(&qword_1EBA66818, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B80C905C();
  return sub_1B80C997C();
}

uint64_t Fence.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v59 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v58 - v5;
  *&v72 = 0;
  *(&v72 + 1) = 0xE000000000000000;
  sub_1B80C952C();
  v84 = v72;
  MEMORY[0x1B8CB7A40](540697705, 0xE400000000000000);
  sub_1B80C8E4C();
  v7 = sub_1B80C90FC();
  v9 = v8;

  MEMORY[0x1B8CB7A40](v7, v9);

  MEMORY[0x1B8CB7A40](0x203A6C6562616C0ALL, 0xE900000000000027);
  v10 = type metadata accessor for Fence(0);
  MEMORY[0x1B8CB7A40](*(v1 + v10[5]), *(v1 + v10[5] + 8));
  MEMORY[0x1B8CB7A40](0x6574616572630A27, 0xED0000203A794264);
  if (*(v0 + v10[6]))
  {
    v11 = 0x726568746F2ELL;
  }

  else
  {
    v11 = 6647086;
  }

  if (*(v0 + v10[6]))
  {
    v12 = 0xE600000000000000;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  MEMORY[0x1B8CB7A40](v11, v12);

  MEMORY[0x1B8CB7A40](0x3A7265646E69660ALL, 0xE900000000000020);
  if (*(v0 + v10[7]))
  {
    v13 = 0x726568746F2ELL;
  }

  else
  {
    v13 = 6647086;
  }

  if (*(v0 + v10[7]))
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  MEMORY[0x1B8CB7A40](v13, v14);

  MEMORY[0x1B8CB7A40](0x746E61697261760ALL, 0xEA0000000000203ALL);
  v15 = Fence.Variant.description.getter();
  MEMORY[0x1B8CB7A40](v15);

  MEMORY[0x1B8CB7A40](0xD000000000000013, 0x80000001B80CDA90);
  if (!*(v0 + v10[9]))
  {
    v16 = 0xEE006E6564646948;
    goto LABEL_17;
  }

  if (*(v0 + v10[9]) == 1)
  {
    v16 = 0xE800000000000000;
LABEL_17:
    v17 = 0x676E69646E65702ELL;
    goto LABEL_19;
  }

  v16 = 0xE900000000000064;
  v17 = 0x657470656363612ELL;
LABEL_19:
  MEMORY[0x1B8CB7A40](v17, v16);

  MEMORY[0x1B8CB7A40](0x3A6E6F696765720ALL, 0xEF203A74616C2820);
  v18 = v0 + v10[10];
  sub_1B80C938C();
  v19 = 0xE700000000000000;
  MEMORY[0x1B8CB7A40](0x203A6E6F6C202CLL, 0xE700000000000000);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x737569646172202CLL, 0xEA0000000000203ALL);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x656372756F73202CLL, 0xEA0000000000203ALL);
  v20 = *(v18 + 24);
  if (v20 > 3)
  {
    v21 = v59;
    if (v20 > 5)
    {
      if (v20 == 6)
      {
        v19 = 0xEB000000006E6950;
        v22 = 0x646570706F72642ELL;
      }

      else
      {
        v19 = 0xE500000000000000;
        v22 = 0x6C6F6F742ELL;
      }
    }

    else if (v20 == 4)
    {
      v19 = 0xEC0000006B6F6F42;
      v22 = 0x737365726464612ELL;
    }

    else
    {
      v22 = 0x6D6F747375632ELL;
    }
  }

  else
  {
    v21 = v59;
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v19 = 0xEF6E6F697461636FLL;
        v22 = 0x4C646E656972662ELL;
      }

      else
      {
        v19 = 0x80000001B80CDA50;
        v22 = 0xD000000000000011;
      }
    }

    else if (v20)
    {
      v19 = 0x80000001B80CDA70;
      v22 = 0xD000000000000010;
    }

    else
    {
      v19 = 0xE800000000000000;
      v22 = 0x6E776F6E6B6E752ELL;
    }
  }

  MEMORY[0x1B8CB7A40](v22, v19);

  MEMORY[0x1B8CB7A40](0x6D6563616C700A29, 0xED0000203A6B7261);
  v23 = (v0 + v10[11]);
  v24 = v23[9];
  v80 = v23[8];
  v81 = v24;
  v25 = v23[11];
  v82 = v23[10];
  v83 = v25;
  v26 = v23[5];
  v76 = v23[4];
  v77 = v26;
  v27 = v23[7];
  v78 = v23[6];
  v79 = v27;
  v28 = v23[1];
  v72 = *v23;
  v73 = v28;
  v29 = v23[3];
  v74 = v23[2];
  v75 = v29;
  v30 = PlaceMark.shortDescription.getter();
  if (!v31)
  {
    v32 = v23[9];
    v68 = v23[8];
    v69 = v32;
    v33 = v23[11];
    v70 = v23[10];
    v71 = v33;
    v34 = v23[5];
    v64 = v23[4];
    v65 = v34;
    v35 = v23[7];
    v66 = v23[6];
    v67 = v35;
    v36 = v23[1];
    v60 = *v23;
    v61 = v36;
    v37 = v23[3];
    v62 = v23[2];
    v63 = v37;
    v30 = PlaceMark.description.getter();
  }

  v38 = 7104878;
  MEMORY[0x1B8CB7A40](v30);

  MEMORY[0x1B8CB7A40](0x3A73726568746F0ALL, 0xE900000000000020);
  v39 = MEMORY[0x1B8CB7B30](*(v0 + v10[12]), &type metadata for PersonHandle);
  MEMORY[0x1B8CB7A40](v39);

  MEMORY[0x1B8CB7A40](0x646E456574756D0ALL, 0xEE00203A65746144);
  sub_1B7FB8448(v0 + v10[13], v6, &unk_1EBA65FD0, &unk_1B80D1920);
  v40 = sub_1B80C8E2C();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v6, 1, v40) == 1)
  {
    sub_1B7FB86D4(v6, &unk_1EBA65FD0, &unk_1B80D1920);
    v42 = 0xE300000000000000;
    v43 = 7104878;
  }

  else
  {
    v44 = sub_1B80C8D5C();
    v42 = v45;
    (*(v41 + 8))(v6, v40);
    v43 = v44;
  }

  MEMORY[0x1B8CB7A40](v43, v42);

  MEMORY[0x1B8CB7A40](0x646574616470750ALL, 0xEC000000203A7441);
  v46 = sub_1B80C8D5C();
  MEMORY[0x1B8CB7A40](v46);

  MEMORY[0x1B8CB7A40](0xD000000000000015, 0x80000001B80CDAB0);
  sub_1B7FB8448(v1 + v10[15], v21, &qword_1EBA667B0, &qword_1B80D68E8);
  v47 = sub_1B80C8E9C();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v21, 1, v47) == 1)
  {
    sub_1B7FB86D4(v21, &qword_1EBA667B0, &qword_1B80D68E8);
    v49 = 0xE300000000000000;
    v50 = 7104878;
  }

  else
  {
    v51 = sub_1B80C8E4C();
    v49 = v52;
    (*(v48 + 8))(v21, v47);
    v50 = v51;
  }

  MEMORY[0x1B8CB7A40](v50, v49);

  MEMORY[0x1B8CB7A40](0xD000000000000018, 0x80000001B80CDAD0);
  v53 = (v1 + v10[16]);
  if (v53[1])
  {
    v38 = *v53;
    v54 = v53[1];
  }

  else
  {
    v54 = 0xE300000000000000;
  }

  MEMORY[0x1B8CB7A40](v38, v54);

  MEMORY[0x1B8CB7A40](0xD000000000000014, 0x80000001B80CDAF0);
  if (*(v1 + v10[17]))
  {
    v55 = 1702195828;
  }

  else
  {
    v55 = 0x65736C6166;
  }

  if (*(v1 + v10[17]))
  {
    v56 = 0xE400000000000000;
  }

  else
  {
    v56 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v55, v56);

  return v84;
}

uint64_t Fence.Schedule.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E20, &unk_1B80D2110);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B80D20F0;
  v2 = MEMORY[0x1E69E6810];
  v3 = MEMORY[0x1E69E6870];
  *(v1 + 56) = MEMORY[0x1E69E6810];
  *(v1 + 64) = v3;
  v4 = v0[1];
  *(v1 + 32) = *v0;
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  *(v1 + 72) = v4;
  v5 = sub_1B80C90DC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B80D20F0;
  *(v6 + 56) = v2;
  *(v6 + 64) = v3;
  v7 = v0[3];
  *(v6 + 32) = v0[2];
  *(v6 + 96) = v2;
  *(v6 + 104) = v3;
  *(v6 + 72) = v7;
  v8 = sub_1B80C90DC();
  v10 = v9;
  sub_1B80C952C();

  MEMORY[0x1B8CB7A40](0x209380E220, 0xA500000000000000);
  MEMORY[0x1B8CB7A40](v8, v10);

  MEMORY[0x1B8CB7A40](32, 0xE100000000000000);
  Fence.DaysOfWeek.description.getter();
  MEMORY[0x1B8CB7A40]();

  MEMORY[0x1B8CB7A40](8236, 0xE200000000000000);
  type metadata accessor for Fence.Schedule(0);
  v11 = sub_1B80C8FAC();
  MEMORY[0x1B8CB7A40](v11);

  return v5;
}

void Fence.DaysOfWeek.description.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v1 <= 7)
  {
    v4 = 7;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = &unk_1F2FF9510 + 24 * v1 + 32;
  while (1)
  {
    if (v1 == 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
      sub_1B807E2E0();
      sub_1B80C906C();

      return;
    }

    if (v5 == ++v1)
    {
      break;
    }

    v7 = v6 + 24;
    v8 = *v6;
    v6 += 24;
    if ((v8 & ~v2) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1B807D780(0, *(v3 + 2) + 1, 1, v3);
      }

      v12 = *(v3 + 2);
      v11 = *(v3 + 3);
      if (v12 >= v11 >> 1)
      {
        v3 = sub_1B807D780((v11 > 1), v12 + 1, 1, v3);
      }

      *(v3 + 2) = v12 + 1;
      v13 = &v3[16 * v12];
      *(v13 + 4) = v10;
      *(v13 + 5) = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t Fence.findee.getter@<X0>(BOOL *a1@<X8>)
{
  result = type metadata accessor for Fence(0);
  *a1 = (*(v1 + *(result + 28)) & 1) == 0;
  return result;
}

uint64_t Fence.update(muteEndDate:)(uint64_t a1)
{
  v3 = sub_1B80C8E2C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  sub_1B7FB8448(a1, v13, &unk_1EBA65FD0, &unk_1B80D1920);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    sub_1B7FB86D4(v13, &unk_1EBA65FD0, &unk_1B80D1920);
    v16 = 1;
  }

  else
  {
    v23 = v1;
    v17 = *(v4 + 32);
    v17(v9, v13, v3);
    sub_1B80C8DFC();
    v18 = sub_1B80C8D9C();
    v19 = *(v4 + 8);
    v19(v7, v3);
    if (v18)
    {
      v17(v15, v9, v3);
      v16 = 0;
    }

    else
    {
      v19(v9, v3);
      v16 = 1;
    }

    v1 = v23;
  }

  (*(v4 + 56))(v15, v16, 1, v3);
  v20 = type metadata accessor for Fence(0);
  return sub_1B7FF450C(v15, v1 + *(v20 + 52), &unk_1EBA65FD0, &unk_1B80D1920);
}

uint64_t Fence.update(ckRecordIdentifier:owner:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Fence(0);
  v8 = *(v7 + 60);
  sub_1B7FB86D4(v3 + v8, &qword_1EBA667B0, &qword_1B80D68E8);
  v9 = sub_1B80C8E9C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v3 + v8, a1, v9);
  (*(v10 + 56))(v3 + v8, 0, 1, v9);
  v11 = (v3 + *(v7 + 64));

  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t static Fence.isAllowed(at:)(double a1, double a2)
{
  v6[3] = &type metadata for KoreaFeatureFlag;
  v6[4] = sub_1B807E3A8();
  v4 = sub_1B80C8A7C();
  __swift_destroy_boxed_opaque_existential_0(v6);
  if (v4)
  {
    return 1;
  }

  if (qword_1EBA65A98 != -1)
  {
    swift_once();
  }

  return [qword_1EBA66F28 containsCoordinate_] ^ 1;
}

uint64_t Fence.ID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1B80C8E9C();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66830, &qword_1B80D6940);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Fence.ID(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807E3FC();
  sub_1B80C99BC();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1B807E298(&qword_1EBA65A60, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1B80C972C();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1B8071324(v11, v13, type metadata accessor for Fence.ID);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t Fence.Participant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66838, &qword_1B80D6948);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66840, &qword_1B80D6950);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66848, &qword_1B80D6958);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807E450();
  sub_1B80C99DC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B807E4A4();
    v14 = v18;
    sub_1B80C974C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B807E4F8();
    sub_1B80C974C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t Fence.Participant.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66868, &qword_1B80D6960);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66870, &qword_1B80D6968);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66878, &qword_1B80D6970);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807E450();
  v12 = v31;
  sub_1B80C99BC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1B80C973C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1B7FCC41C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1B80C955C();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v22 = &type metadata for Fence.Participant;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1B807E4A4();
        sub_1B80C968C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1B807E4F8();
        sub_1B80C968C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_1B80767BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E40, &qword_1B80D9210);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v35 - v3;
  v4 = sub_1B80C8E2C();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E48, &qword_1B80D9218);
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E50, &qword_1B80D9220);
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for Fence.TriggerPosition.CodingRepresentation(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E58, &qword_1B80D9228);
  v45 = *(v15 - 8);
  v46 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80819F0();
  sub_1B80C99DC();
  sub_1B806F950(v44, v14, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v25 = *v14;
    v26 = v14[1];
    LOBYTE(v47) = 0;
    sub_1B8081AEC();
    v27 = v46;
    sub_1B80C974C();
    v47 = v25;
    v48 = v26;
    sub_1B806D650();
    sub_1B80C97DC();
    (*(v35 + 8))(v11, v9);
    (*(v45 + 8))(v17, v27);
    v23 = v25;
    v24 = v26;
    return sub_1B7FC3CCC(v23, v24);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v19 = *v14;
    v20 = v14[1];
    LOBYTE(v47) = 1;
    sub_1B8081A98();
    v21 = v46;
    sub_1B80C974C();
    v47 = v19;
    v48 = v20;
    sub_1B806D650();
    v22 = v37;
    sub_1B80C97DC();
    (*(v36 + 8))(v8, v22);
    (*(v45 + 8))(v17, v21);
    v23 = v19;
    v24 = v20;
    return sub_1B7FC3CCC(v23, v24);
  }

  v30 = v40;
  v29 = v41;
  v31 = v38;
  (*(v40 + 32))(v38, v14, v41);
  LOBYTE(v47) = 2;
  sub_1B8081A44();
  v32 = v39;
  v33 = v46;
  sub_1B80C974C();
  sub_1B807E298(&qword_1ED8DC390, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  v34 = v43;
  sub_1B80C97DC();
  (*(v42 + 8))(v32, v34);
  (*(v30 + 8))(v31, v29);
  return (*(v45 + 8))(v17, v33);
}

uint64_t sub_1B8076D9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E00, &qword_1B80D91F0);
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v63 = &v51 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E08, &qword_1B80D91F8);
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v62 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E10, &qword_1B80D9200);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v51 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E18, &qword_1B80D9208);
  v64 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v9 = &v51 - v8;
  v10 = type metadata accessor for Fence.TriggerPosition.CodingRepresentation(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v51 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v51 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v20;
  v22 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1B80819F0();
  v23 = v66;
  sub_1B80C99BC();
  if (!v23)
  {
    v51 = v19;
    v52 = v16;
    v25 = v60;
    v24 = v61;
    v53 = v13;
    v27 = v62;
    v26 = v63;
    v66 = v21;
    v28 = v10;
    v29 = v65;
    v30 = sub_1B80C973C();
    v31 = (2 * *(v30 + 16)) | 1;
    v68 = v30;
    v69 = v30 + 32;
    v70 = 0;
    v71 = v31;
    v32 = sub_1B7FCD6E4();
    if (v32 == 3 || v70 != v71 >> 1)
    {
      v36 = v24;
      v37 = sub_1B80C955C();
      swift_allocError();
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v39 = v28;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
      (*(v64 + 8))(v9, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32)
      {
        if (v32 == 1)
        {
          LOBYTE(v67) = 1;
          sub_1B8081A98();
          sub_1B80C968C();
          v33 = v29;
          v34 = v24;
          sub_1B806D6A4();
          v35 = v56;
          sub_1B80C972C();
          (*(v58 + 8))(v27, v35);
          (*(v64 + 8))(v9, v34);
          swift_unknownObjectRelease();
          v49 = v52;
          *v52 = v67;
          swift_storeEnumTagMultiPayload();
          v50 = v66;
          sub_1B8071324(v49, v66, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
        }

        else
        {
          LOBYTE(v67) = 2;
          sub_1B8081A44();
          sub_1B80C968C();
          v45 = v24;
          sub_1B80C8E2C();
          sub_1B807E298(&qword_1ED8DBBD8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
          v46 = v53;
          v47 = v57;
          sub_1B80C972C();
          v48 = v64;
          (*(v59 + 8))(v26, v47);
          (*(v48 + 8))(v9, v45);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v50 = v66;
          sub_1B8071324(v46, v66, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
          v33 = v65;
        }
      }

      else
      {
        LOBYTE(v67) = 0;
        sub_1B8081AEC();
        v41 = v25;
        sub_1B80C968C();
        sub_1B806D6A4();
        v42 = v24;
        v43 = v54;
        sub_1B80C972C();
        (*(v55 + 8))(v41, v43);
        (*(v64 + 8))(v9, v42);
        swift_unknownObjectRelease();
        v44 = v51;
        *v51 = v67;
        swift_storeEnumTagMultiPayload();
        v50 = v66;
        sub_1B8071324(v44, v66, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
        v33 = v29;
      }

      sub_1B8071324(v50, v33, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v72);
}

uint64_t sub_1B8077644()
{
  v1 = 0x6564697374756FLL;
  if (*v0 != 1)
  {
    v1 = 0x6D72657465646E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656469736E69;
  }
}

uint64_t sub_1B80776A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B80826F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B80776CC(uint64_t a1)
{
  v2 = sub_1B80819F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8077708(uint64_t a1)
{
  v2 = sub_1B80819F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8077744(uint64_t a1)
{
  v2 = sub_1B8081AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8077780(uint64_t a1)
{
  v2 = sub_1B8081AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80777BC(uint64_t a1)
{
  v2 = sub_1B8081A98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80777F8(uint64_t a1)
{
  v2 = sub_1B8081A98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8077834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B80C981C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B80778B4(uint64_t a1)
{
  v2 = sub_1B8081A44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80778F0(uint64_t a1)
{
  v2 = sub_1B8081A44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Fence.TriggerPosition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = type metadata accessor for Fence.TriggerPosition.CodingRepresentation(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  v10 = type metadata accessor for Fence.TriggerPosition(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B80C99AC();
  if (!v2)
  {
    v33 = v12;
    v14 = v34;
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    sub_1B807E298(&qword_1EBA66880, type metadata accessor for Fence.TriggerPosition.CodingRepresentation, &unk_1B80D8F44);
    sub_1B80C982C();
    v16 = v9;
    v17 = v9;
    v18 = v7;
    sub_1B806F950(v17, v7, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v20 = v14;
      if (EnumCaseMultiPayload != 1)
      {
        sub_1B8071064(v16, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
        v26 = sub_1B80C8E2C();
        v27 = v33;
        (*(*(v26 - 8) + 32))(v33, v7, v26);
LABEL_14:
        swift_storeEnumTagMultiPayload();
        __swift_destroy_boxed_opaque_existential_0(v35);
        sub_1B8071324(v27, v20, type metadata accessor for Fence.TriggerPosition);
        return __swift_destroy_boxed_opaque_existential_0(v36);
      }

      v22 = *v7;
      v21 = v7[1];
      sub_1B7FBFCCC(0, &qword_1EBA65D40, 0x1E696ACD0);
      sub_1B7FBFCCC(0, &qword_1ED8DBBE8, 0x1E6985C40);
      v23 = sub_1B80C943C();
      if (v23)
      {
        v28 = v23;
        sub_1B8071064(v16, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
        v29 = v22;
LABEL_13:
        sub_1B7FC3CCC(v29, v21);
        v30 = v33;
        *v33 = v28;
        v27 = v30;
        goto LABEL_14;
      }

      sub_1B807E56C();
      swift_allocError();
      swift_willThrow();
      v31 = v22;
    }

    else
    {
      v24 = *v7;
      v21 = v18[1];
      sub_1B7FBFCCC(0, &qword_1EBA65D40, 0x1E696ACD0);
      sub_1B7FBFCCC(0, &qword_1ED8DBBE8, 0x1E6985C40);
      v25 = sub_1B80C943C();
      if (v25)
      {
        v20 = v14;
        v28 = v25;
        sub_1B8071064(v16, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
        v29 = v24;
        goto LABEL_13;
      }

      sub_1B807E56C();
      swift_allocError();
      swift_willThrow();
      v31 = v24;
    }

    sub_1B7FC3CCC(v31, v21);
    sub_1B8071064(v16, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  return __swift_destroy_boxed_opaque_existential_0(v36);
}

void Fence.TriggerPosition.encode(to:)(void *a1)
{
  v2 = v1;
  v19[5] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Fence.TriggerPosition(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Fence.TriggerPosition.CodingRepresentation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B806F950(v2, v6, type metadata accessor for Fence.TriggerPosition);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v17 = sub_1B80C8E2C();
    (*(*(v17 - 8) + 32))(v9, v6, v17);
    goto LABEL_5;
  }

  v10 = *v6;
  v11 = objc_opt_self();
  v19[0] = 0;
  v12 = [v11 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v19];
  v13 = v19[0];
  if (v12)
  {
    v14 = sub_1B80C8D3C();
    v16 = v15;

    *v9 = v14;
    v9[1] = v16;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B80C99CC();
    __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_1B807E298(&qword_1EBA66890, type metadata accessor for Fence.TriggerPosition.CodingRepresentation, &unk_1B80D8EDC);
    sub_1B80C983C();
    sub_1B8071064(v9, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
    __swift_destroy_boxed_opaque_existential_0(v19);
    return;
  }

  v18 = v13;
  sub_1B80C8D0C();

  swift_willThrow();
}

uint64_t Fence.Variant.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66898, &qword_1B80D6978);
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v27 - v3;
  v30 = type metadata accessor for Fence.Schedule(0);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA668A0, &qword_1B80D6980);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA668A8, &qword_1B80D6988);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Fence.Variant(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA668B0, &qword_1B80D6990);
  v36 = *(v14 - 8);
  v37 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807E610();
  sub_1B80C99DC();
  sub_1B806F950(v35, v13, type metadata accessor for Fence.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v13;
      v41 = 1;
      sub_1B807E6B8();
      v19 = v37;
      sub_1B80C974C();
      v40 = v18;
      sub_1B807E70C();
      v20 = v29;
      sub_1B80C97DC();
      (*(v28 + 8))(v7, v20);
    }

    else
    {
      v24 = v31;
      sub_1B8071324(v13, v31, type metadata accessor for Fence.Schedule);
      v42 = 2;
      sub_1B807E664();
      v25 = v32;
      v19 = v37;
      sub_1B80C974C();
      sub_1B807E298(&qword_1EBA668C8, type metadata accessor for Fence.Schedule, &protocol conformance descriptor for Fence.Schedule);
      v26 = v34;
      sub_1B80C97DC();
      (*(v33 + 8))(v25, v26);
      sub_1B8071064(v24, type metadata accessor for Fence.Schedule);
    }

    return (*(v36 + 8))(v16, v19);
  }

  else
  {
    v21 = *v13;
    v39 = 0;
    sub_1B807E760();
    v22 = v37;
    sub_1B80C974C();
    v38 = v21;
    sub_1B807E70C();
    sub_1B80C97DC();
    (*(v27 + 8))(v10, v8);
    return (*(v36 + 8))(v16, v22);
  }
}

uint64_t Fence.Variant.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA668E8, &qword_1B80D6998);
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v63 = &v51 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA668F0, &qword_1B80D69A0);
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v62 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA668F8, &qword_1B80D69A8);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v51 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66900, &qword_1B80D69B0);
  v64 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v9 = &v51 - v8;
  v10 = type metadata accessor for Fence.Variant(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v51 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v20;
  v22 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1B807E610();
  v23 = v66;
  sub_1B80C99BC();
  if (!v23)
  {
    v51 = v19;
    v52 = v16;
    v25 = v60;
    v24 = v61;
    v53 = v13;
    v27 = v62;
    v26 = v63;
    v66 = v21;
    v28 = v10;
    v29 = v65;
    v30 = sub_1B80C973C();
    v31 = (2 * *(v30 + 16)) | 1;
    v68 = v30;
    v69 = v30 + 32;
    v70 = 0;
    v71 = v31;
    v32 = sub_1B7FCD6E4();
    if (v32 == 3 || v70 != v71 >> 1)
    {
      v36 = v24;
      v37 = sub_1B80C955C();
      swift_allocError();
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v39 = v28;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
      (*(v64 + 8))(v9, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32)
      {
        if (v32 == 1)
        {
          v72 = 1;
          sub_1B807E6B8();
          sub_1B80C968C();
          v33 = v29;
          v34 = v24;
          sub_1B807E7B4();
          v35 = v56;
          sub_1B80C972C();
          (*(v58 + 8))(v27, v35);
          (*(v64 + 8))(v9, v34);
          swift_unknownObjectRelease();
          v49 = v52;
          *v52 = v72;
          swift_storeEnumTagMultiPayload();
          v50 = v66;
          sub_1B8071324(v49, v66, type metadata accessor for Fence.Variant);
        }

        else
        {
          v72 = 2;
          sub_1B807E664();
          sub_1B80C968C();
          v45 = v24;
          type metadata accessor for Fence.Schedule(0);
          sub_1B807E298(&qword_1EBA66908, type metadata accessor for Fence.Schedule, &protocol conformance descriptor for Fence.Schedule);
          v46 = v53;
          v47 = v57;
          sub_1B80C972C();
          v48 = v64;
          (*(v59 + 8))(v26, v47);
          (*(v48 + 8))(v9, v45);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v50 = v66;
          sub_1B8071324(v46, v66, type metadata accessor for Fence.Variant);
          v33 = v65;
        }
      }

      else
      {
        v72 = 0;
        sub_1B807E760();
        v41 = v25;
        sub_1B80C968C();
        sub_1B807E7B4();
        v42 = v24;
        v43 = v54;
        sub_1B80C972C();
        (*(v55 + 8))(v41, v43);
        (*(v64 + 8))(v9, v42);
        swift_unknownObjectRelease();
        v44 = v51;
        *v51 = v72;
        swift_storeEnumTagMultiPayload();
        v50 = v66;
        sub_1B8071324(v44, v66, type metadata accessor for Fence.Variant);
        v33 = v29;
      }

      sub_1B8071324(v50, v33, type metadata accessor for Fence.Variant);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v67);
}

uint64_t Fence.TimeOfDay.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66918, &qword_1B80D69B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807E808();
  sub_1B80C99DC();
  v11 = 0;
  sub_1B80C97CC();
  if (!v2)
  {
    v10 = 1;
    sub_1B80C97CC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Fence.TimeOfDay.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66928, &qword_1B80D69C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807E808();
  sub_1B80C99BC();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1B80C971C();
    v13 = 1;
    v10 = sub_1B80C971C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t Fence.Schedule.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66930, &qword_1B80D69C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807E85C();
  sub_1B80C99DC();
  v12 = *v3;
  v11 = 0;
  sub_1B807E8B0();
  sub_1B80C97DC();
  if (!v2)
  {
    v12 = v3[1];
    v11 = 1;
    sub_1B80C97DC();
    LOBYTE(v12) = *(v3 + 32);
    v11 = 2;
    sub_1B807E904();
    sub_1B80C97DC();
    type metadata accessor for Fence.Schedule(0);
    LOBYTE(v12) = 3;
    sub_1B80C8FCC();
    sub_1B807E298(&qword_1EBA66950, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BC8]);
    sub_1B80C97DC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Fence.Schedule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1B80C8FCC();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66958, &qword_1B80D69D0);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for Fence.Schedule(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B807E85C();
  sub_1B80C99BC();
  if (!v2)
  {
    v19 = v10;
    v20 = v4;
    v27 = 0;
    sub_1B807E958();
    v14 = v24;
    sub_1B80C972C();
    *v12 = v26;
    v27 = 1;
    sub_1B80C972C();
    *(v12 + 1) = v26;
    v27 = 2;
    sub_1B807E9AC();
    sub_1B80C972C();
    v16 = v23;
    v12[32] = v26;
    LOBYTE(v26) = 3;
    sub_1B807E298(&qword_1EBA66970, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BE0]);
    v17 = v20;
    sub_1B80C972C();
    (*(v16 + 8))(v9, v14);
    (*(v21 + 32))(&v12[*(v19 + 28)], v6, v17);
    sub_1B8071324(v12, v22, type metadata accessor for Fence.Schedule);
  }

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t Fence.Trigger.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66978, &qword_1B80D69D8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66980, &qword_1B80D69E0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66988, &qword_1B80D69E8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807EA00();
  sub_1B80C99DC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B807EA54();
    v14 = v18;
    sub_1B80C974C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B807EAA8();
    sub_1B80C974C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t Fence.Trigger.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA669A8, &qword_1B80D69F0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA669B0, &qword_1B80D69F8);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA669B8, &qword_1B80D6A00);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807EA00();
  v12 = v31;
  sub_1B80C99BC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1B80C973C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1B7FCC41C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1B80C955C();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v22 = &type metadata for Fence.Trigger;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1B807EA54();
        sub_1B80C968C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1B807EAA8();
        sub_1B80C968C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_1B807A194(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1B80C99DC();
  sub_1B80C8E9C();
  sub_1B807E298(&qword_1ED8DC388, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B80C97DC();
  return (*(v8 + 8))(v10, v7);
}

uint64_t Fence.TriggerID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1B80C8E9C();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA669D0, &qword_1B80D6A10);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Fence.TriggerID(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807EAFC();
  sub_1B80C99BC();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1B807E298(&qword_1EBA65A60, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1B80C972C();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1B8071324(v11, v13, type metadata accessor for Fence.TriggerID);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B807A5B0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E78, &qword_1B80D9238);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8082084();
  sub_1B80C99DC();
  v10[15] = 0;
  sub_1B80C97AC();
  if (!v2)
  {
    v10[14] = 1;
    sub_1B80C97AC();
    v10[13] = 2;
    sub_1B80C97AC();
    v10[12] = v8;
    v10[11] = 3;
    sub_1B808212C();
    sub_1B80C97DC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B807A7CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E60, &qword_1B80D9230);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8082084();
  sub_1B80C99BC();
  if (!v2)
  {
    v17[15] = 0;
    sub_1B80C96FC();
    v10 = v9;
    v17[14] = 1;
    sub_1B80C96FC();
    v12 = v11;
    v17[13] = 2;
    sub_1B80C96FC();
    v15 = v14;
    v17[11] = 3;
    sub_1B80820D8();
    sub_1B80C972C();
    (*(v6 + 8))(v8, v5);
    v16 = v17[12];
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B807AA4C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1B80C99DC();
  sub_1B80C8E9C();
  sub_1B807E298(&qword_1ED8DC388, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B80C97DC();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1B807ABCC()
{
  v1 = 0x656475746974616CLL;
  v2 = 0x737569646172;
  if (*v0 != 2)
  {
    v2 = 0x656372756F73;
  }

  if (*v0)
  {
    v1 = 0x64757469676E6F6CLL;
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

uint64_t sub_1B807AC44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8082810(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B807AC6C(uint64_t a1)
{
  v2 = sub_1B8082084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B807ACA8(uint64_t a1)
{
  v2 = sub_1B8082084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Fence.MonitorRegion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80C99AC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_1B807EB50();
    sub_1B80C982C();
    __swift_destroy_boxed_opaque_existential_0(v9);
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t Fence.MonitorRegion.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80C99CC();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1B807EBA4();
  sub_1B80C983C();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t Fence.MonitorRegion.Source.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA669E8, &qword_1B80D6A18);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA669F0, &qword_1B80D6A20);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA669F8, &qword_1B80D6A28);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A00, &qword_1B80D6A30);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A08, &qword_1B80D6A38);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A10, &qword_1B80D6A40);
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v33 - v14;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A18, &qword_1B80D6A48);
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A20, &qword_1B80D6A50);
  v33 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A28, &qword_1B80D6A58);
  v20 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v21 = *v1;
  v22 = a1[3];
  v23 = a1;
  v25 = &v33 - v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_1B807EBF8();
  sub_1B80C99DC();
  v26 = (v20 + 8);
  if (v21 > 3)
  {
    if (v21 > 5)
    {
      if (v21 == 6)
      {
        v61 = 6;
        sub_1B807ECA0();
        v28 = v48;
        v27 = v54;
        sub_1B80C974C();
        v30 = v49;
        v29 = v50;
      }

      else
      {
        v62 = 7;
        sub_1B807EC4C();
        v28 = v51;
        v27 = v54;
        sub_1B80C974C();
        v30 = v52;
        v29 = v53;
      }
    }

    else if (v21 == 4)
    {
      v59 = 4;
      sub_1B807ED48();
      v28 = v42;
      v27 = v54;
      sub_1B80C974C();
      v30 = v43;
      v29 = v44;
    }

    else
    {
      v60 = 5;
      sub_1B807ECF4();
      v28 = v45;
      v27 = v54;
      sub_1B80C974C();
      v30 = v46;
      v29 = v47;
    }

    goto LABEL_16;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v57 = 2;
      sub_1B807EDF0();
      v28 = v36;
      v27 = v54;
      sub_1B80C974C();
      v30 = v37;
      v29 = v38;
    }

    else
    {
      v58 = 3;
      sub_1B807ED9C();
      v28 = v39;
      v27 = v54;
      sub_1B80C974C();
      v30 = v40;
      v29 = v41;
    }

LABEL_16:
    (*(v30 + 8))(v28, v29);
    return (*v26)(v25, v27);
  }

  if (v21)
  {
    v56 = 1;
    sub_1B807EE44();
    v31 = v54;
    sub_1B80C974C();
    (*(v34 + 8))(v16, v35);
    return (*v26)(v25, v31);
  }

  v55 = 0;
  sub_1B807EE98();
  v27 = v54;
  sub_1B80C974C();
  (*(v33 + 8))(v19, v17);
  return (*v26)(v25, v27);
}

uint64_t Fence.MonitorRegion.Source.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A78, &qword_1B80D6A60);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A80, &qword_1B80D6A68);
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A88, &qword_1B80D6A70);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A90, &qword_1B80D6A78);
  v10 = *(v9 - 8);
  v69 = v9;
  v70 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v57 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A98, &qword_1B80D6A80);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v79 = &v57 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66AA0, &qword_1B80D6A88);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v77 = &v57 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66AA8, &qword_1B80D6A90);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66AB0, &qword_1B80D6A98);
  v62 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66AB8, &qword_1B80D6AA0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v57 - v21;
  v23 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1B807EBF8();
  v24 = v84;
  sub_1B80C99BC();
  if (!v24)
  {
    v58 = v18;
    v57 = v16;
    v59 = v15;
    v26 = v79;
    v25 = v80;
    v28 = v81;
    v27 = v82;
    v84 = v20;
    v29 = v83;
    v61 = v19;
    v60 = v22;
    v30 = sub_1B80C973C();
    v31 = (2 * *(v30 + 16)) | 1;
    v86 = v30;
    v87 = v30 + 32;
    v88 = 0;
    v89 = v31;
    v32 = sub_1B7FC5288();
    if (v32 != 8 && v88 == v89 >> 1)
    {
      v90 = v32;
      if (v32 > 3u)
      {
        v43 = v61;
        v44 = v60;
        if (v32 > 5u)
        {
          v52 = v84;
          if (v32 == 6)
          {
            v91 = 6;
            sub_1B807ECA0();
            sub_1B80C968C();
            (*(v73 + 8))(v27, v74);
          }

          else
          {
            v91 = 7;
            sub_1B807EC4C();
            v56 = v78;
            sub_1B80C968C();
            (*(v75 + 8))(v56, v76);
          }

          (*(v52 + 8))(v44, v43);
          swift_unknownObjectRelease();
          v33 = v29;
          goto LABEL_25;
        }

        v33 = v29;
        v45 = v84;
        if (v32 == 4)
        {
          v91 = 4;
          sub_1B807ED48();
          sub_1B80C968C();
          v46 = v69;
          v47 = v70;
        }

        else
        {
          v91 = 5;
          sub_1B807ECF4();
          v25 = v28;
          sub_1B80C968C();
          v47 = v71;
          v46 = v72;
        }

        (*(v47 + 8))(v25, v46);
        (*(v45 + 8))(v44, v43);
      }

      else
      {
        if (v32 > 1u)
        {
          v48 = v84;
          if (v32 == 2)
          {
            v91 = 2;
            sub_1B807EDF0();
            v49 = v77;
            v50 = v61;
            v51 = v60;
            sub_1B80C968C();
            (*(v65 + 8))(v49, v66);
          }

          else
          {
            v91 = 3;
            sub_1B807ED9C();
            v50 = v61;
            v51 = v60;
            sub_1B80C968C();
            (*(v67 + 8))(v26, v68);
          }

          (*(v48 + 8))(v51, v50);
          swift_unknownObjectRelease();
          v33 = v29;
          goto LABEL_25;
        }

        v33 = v29;
        if (v32)
        {
          v91 = 1;
          sub_1B807EE44();
          v53 = v59;
          v54 = v61;
          v55 = v60;
          sub_1B80C968C();
          (*(v63 + 8))(v53, v64);
          (*(v84 + 8))(v55, v54);
        }

        else
        {
          v91 = 0;
          sub_1B807EE98();
          v34 = v58;
          v35 = v61;
          v36 = v60;
          sub_1B80C968C();
          (*(v62 + 8))(v34, v57);
          (*(v84 + 8))(v36, v35);
        }
      }

      swift_unknownObjectRelease();
LABEL_25:
      *v33 = v90;
      return __swift_destroy_boxed_opaque_existential_0(v85);
    }

    v37 = sub_1B80C955C();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
    *v39 = &type metadata for Fence.MonitorRegion.Source;
    v40 = v61;
    v41 = v60;
    sub_1B80C969C();
    sub_1B80C954C();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v84 + 8))(v41, v40);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v85);
}

uint64_t Fence.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66AC0, &qword_1B80D6AA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807EEEC();
  sub_1B80C99DC();
  LOBYTE(v45[0]) = 0;
  type metadata accessor for Fence.ID(0);
  sub_1B807E298(&qword_1EBA66AD0, type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
  sub_1B80C97DC();
  if (!v2)
  {
    v9 = type metadata accessor for Fence(0);
    LOBYTE(v45[0]) = 1;
    sub_1B80C978C();
    LOBYTE(v45[0]) = *(v3 + v9[6]);
    LOBYTE(v33) = 2;
    sub_1B807EF40();
    sub_1B80C97DC();
    LOBYTE(v45[0]) = *(v3 + v9[7]);
    LOBYTE(v33) = 3;
    sub_1B80C97DC();
    LOBYTE(v45[0]) = 4;
    type metadata accessor for Fence.Variant(0);
    sub_1B807E298(&qword_1EBA66AE0, type metadata accessor for Fence.Variant, &protocol conformance descriptor for Fence.Variant);
    sub_1B80C97DC();
    LOBYTE(v45[0]) = *(v3 + v9[9]);
    LOBYTE(v33) = 5;
    sub_1B807EF94();
    sub_1B80C97DC();
    v10 = (v3 + v9[10]);
    v11 = *(v10 + 2);
    v12 = *(v10 + 24);
    v57 = *v10;
    v58 = v11;
    v59 = v12;
    v56 = 6;
    sub_1B807EFE8();
    sub_1B80C97DC();
    v13 = (v3 + v9[11]);
    v14 = v13[9];
    v15 = v13[7];
    v52 = v13[8];
    v53 = v14;
    v16 = v13[9];
    v17 = v13[11];
    v54 = v13[10];
    v55 = v17;
    v18 = v13[5];
    v19 = v13[3];
    v48 = v13[4];
    v49 = v18;
    v20 = v13[5];
    v21 = v13[7];
    v50 = v13[6];
    v51 = v21;
    v22 = v13[1];
    v45[0] = *v13;
    v45[1] = v22;
    v23 = v13[3];
    v25 = *v13;
    v24 = v13[1];
    v46 = v13[2];
    v47 = v23;
    v41 = v52;
    v42 = v16;
    v26 = v13[11];
    v43 = v54;
    v44 = v26;
    v37 = v48;
    v38 = v20;
    v39 = v50;
    v40 = v15;
    v33 = v25;
    v34 = v24;
    v35 = v46;
    v36 = v19;
    v32 = 7;
    sub_1B806FB80(v45, v31);
    sub_1B807F03C();
    sub_1B80C97DC();
    v31[8] = v41;
    v31[9] = v42;
    v31[10] = v43;
    v31[11] = v44;
    v31[4] = v37;
    v31[5] = v38;
    v31[6] = v39;
    v31[7] = v40;
    v31[0] = v33;
    v31[1] = v34;
    v31[2] = v35;
    v31[3] = v36;
    sub_1B806FC7C(v31);
    v30 = *(v3 + v9[12]);
    v29[7] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66B00, &qword_1B80D6AB0);
    sub_1B807F234(&qword_1EBA66B08, sub_1B807F090, MEMORY[0x1E69E6300]);
    sub_1B80C97DC();
    v60 = v9[13];
    LOBYTE(v30) = 9;
    v27 = sub_1B80C8E2C();
    sub_1B807E298(&qword_1ED8DC390, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    v60 = v27;
    sub_1B80C977C();
    LOBYTE(v30) = 10;
    sub_1B80C97DC();
    LOBYTE(v30) = 11;
    sub_1B80C8E9C();
    sub_1B807E298(&qword_1ED8DC388, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1B80C977C();
    LOBYTE(v30) = 12;
    sub_1B80C975C();
    LOBYTE(v30) = 13;
    sub_1B80C979C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Fence.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v53 - v4;
  v5 = sub_1B80C8E2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v53 - v9;
  v61 = type metadata accessor for Fence.Variant(0);
  MEMORY[0x1EEE9AC00](v61);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Fence.ID(0);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66B18, &qword_1B80D6AB8);
  v60 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v14 = &v53 - v13;
  v15 = type metadata accessor for Fence(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 52);
  v59 = v6;
  v20 = *(v6 + 56);
  v69 = v19;
  v20(&v18[v19], 1, 1, v5);
  v21 = *(v15 + 60);
  v22 = sub_1B80C8E9C();
  v23 = *(*(v22 - 8) + 56);
  v85 = v18;
  v68 = v21;
  v23(&v18[v21], 1, 1, v22);
  v24 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1B807EEEC();
  v65 = v14;
  v25 = v66;
  sub_1B80C99BC();
  if (v25)
  {
    v29 = v85;
    __swift_destroy_boxed_opaque_existential_0(v67);
    sub_1B7FB86D4(v29 + v69, &unk_1EBA65FD0, &unk_1B80D1920);
    sub_1B7FB86D4(v29 + v68, &qword_1EBA667B0, &qword_1B80D68E8);
  }

  else
  {
    v26 = v11;
    v53 = v22;
    v27 = v60;
    v66 = v15;
    v54 = v5;
    LOBYTE(v73) = 0;
    sub_1B807E298(&qword_1EBA66B20, type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v28 = v63;
    sub_1B80C972C();
    v30 = v28;
    v31 = v85;
    sub_1B8071324(v30, v85, type metadata accessor for Fence.ID);
    LOBYTE(v73) = 1;
    v32 = sub_1B80C96DC();
    v33 = v66;
    v34 = (v31 + v66[5]);
    *v34 = v32;
    v34[1] = v35;
    LOBYTE(v71) = 2;
    sub_1B807F0E4();
    v63 = 0;
    sub_1B80C972C();
    *(v31 + v33[6]) = v73;
    LOBYTE(v71) = 3;
    sub_1B80C972C();
    *(v31 + v33[7]) = v73;
    LOBYTE(v73) = 4;
    sub_1B807E298(&qword_1EBA66B30, type metadata accessor for Fence.Variant, &protocol conformance descriptor for Fence.Variant);
    sub_1B80C972C();
    sub_1B8071324(v26, v31 + v33[8], type metadata accessor for Fence.Variant);
    LOBYTE(v71) = 5;
    sub_1B807F138();
    sub_1B80C972C();
    *(v31 + v33[9]) = v73;
    LOBYTE(v71) = 6;
    sub_1B807F18C();
    sub_1B80C972C();
    v36 = v74;
    v37 = BYTE8(v74);
    v38 = v31 + v33[10];
    *v38 = v73;
    *(v38 + 16) = v36;
    *(v38 + 24) = v37;
    v72 = 7;
    sub_1B807F1E0();
    sub_1B80C972C();
    v39 = (v31 + v33[11]);
    v40 = v82;
    v41 = v83;
    v42 = v80;
    v39[8] = v81;
    v39[9] = v40;
    v43 = v84;
    v39[10] = v41;
    v39[11] = v43;
    v44 = v78;
    v39[4] = v77;
    v39[5] = v44;
    v39[6] = v79;
    v39[7] = v42;
    v45 = v74;
    *v39 = v73;
    v39[1] = v45;
    v46 = v76;
    v39[2] = v75;
    v39[3] = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66B00, &qword_1B80D6AB0);
    v70 = 8;
    sub_1B807F234(&qword_1EBA66B50, sub_1B807F2AC, MEMORY[0x1E69E6330]);
    sub_1B80C972C();
    *(v31 + v33[12]) = v71;
    LOBYTE(v71) = 9;
    sub_1B807E298(&qword_1ED8DBBD8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1B80C96CC();
    sub_1B7FF450C(v58, &v85[v69], &unk_1EBA65FD0, &unk_1B80D1920);
    LOBYTE(v71) = 10;
    sub_1B80C972C();
    (*(v59 + 32))(&v85[v66[14]], v57, v54);
    LOBYTE(v71) = 11;
    sub_1B807E298(&qword_1EBA65A60, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1B80C96CC();
    sub_1B7FF450C(v56, &v85[v68], &qword_1EBA667B0, &qword_1B80D68E8);
    LOBYTE(v71) = 12;
    v47 = sub_1B80C96AC();
    v48 = &v85[v66[16]];
    *v48 = v47;
    v48[1] = v49;
    LOBYTE(v71) = 13;
    v50 = sub_1B80C96EC();
    (*(v27 + 8))(v65, v64);
    v51 = v85;
    v85[v66[17]] = v50 & 1;
    sub_1B806F950(v51, v55, type metadata accessor for Fence);
    __swift_destroy_boxed_opaque_existential_0(v67);
    return sub_1B8071064(v51, type metadata accessor for Fence);
  }
}

char *sub_1B807D780(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DD8, &qword_1B80D1EC0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B807D88C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E90, &qword_1B80D9248);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F18, &qword_1B80D9250) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F18, &qword_1B80D9250) - 8);
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

char *sub_1B807DAA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66100, &qword_1B80DACB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B807DBF4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1B807DDD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E98, &qword_1B80D9258);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t _s12FindMyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v4 && *(a1 + 32) == *(a2 + 32))
    {
      type metadata accessor for Fence.Schedule(0);

      JUMPOUT(0x1B8CB78C0);
    }
  }

  return 0;
}

uint64_t _s12FindMyLocate5FenceV7VariantO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Fence.Schedule(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Fence.Variant(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66EA8, &unk_1B80D9270);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v26 - v18;
  v20 = *(v17 + 56);
  sub_1B806F950(a1, &v26 - v18, type metadata accessor for Fence.Variant);
  sub_1B806F950(a2, &v19[v20], type metadata accessor for Fence.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B806F950(v19, v15, type metadata accessor for Fence.Variant);
    if (!swift_getEnumCaseMultiPayload())
    {
      v22 = *v15;
      goto LABEL_7;
    }

LABEL_11:
    sub_1B7FB86D4(v19, &qword_1EBA66EA8, &unk_1B80D9270);
    MyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0 = 0;
    return MyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1B806F950(v19, v10, type metadata accessor for Fence.Variant);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8071324(&v19[v20], v6, type metadata accessor for Fence.Schedule);
      MyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0 = _s12FindMyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0(v10, v6);
      sub_1B8071064(v6, type metadata accessor for Fence.Schedule);
      sub_1B8071064(v10, type metadata accessor for Fence.Schedule);
      sub_1B8071064(v19, type metadata accessor for Fence.Variant);
      return MyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0 & 1;
    }

    sub_1B8071064(v10, type metadata accessor for Fence.Schedule);
    goto LABEL_11;
  }

  sub_1B806F950(v19, v13, type metadata accessor for Fence.Variant);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_11;
  }

  v22 = *v13;
LABEL_7:
  v23 = v22 ^ v19[v20];
  sub_1B8071064(v19, type metadata accessor for Fence.Variant);
  MyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0 = v23 ^ 1;
  return MyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0 & 1;
}

uint64_t sub_1B807E298(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B807E2E0()
{
  result = qword_1ED8DBBF0;
  if (!qword_1ED8DBBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66070, &qword_1B80D6930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBF0);
  }

  return result;
}

uint64_t sub_1B807E344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Fence.ID(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B807E3A8()
{
  result = qword_1EBA65A20;
  if (!qword_1EBA65A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A20);
  }

  return result;
}

unint64_t sub_1B807E3FC()
{
  result = qword_1EBA66828;
  if (!qword_1EBA66828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66828);
  }

  return result;
}

unint64_t sub_1B807E450()
{
  result = qword_1EBA66850;
  if (!qword_1EBA66850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66850);
  }

  return result;
}

unint64_t sub_1B807E4A4()
{
  result = qword_1EBA66858;
  if (!qword_1EBA66858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66858);
  }

  return result;
}

unint64_t sub_1B807E4F8()
{
  result = qword_1EBA66860;
  if (!qword_1EBA66860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66860);
  }

  return result;
}

unint64_t sub_1B807E56C()
{
  result = qword_1EBA66888;
  if (!qword_1EBA66888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66888);
  }

  return result;
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

unint64_t sub_1B807E610()
{
  result = qword_1EBA668B8;
  if (!qword_1EBA668B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA668B8);
  }

  return result;
}

unint64_t sub_1B807E664()
{
  result = qword_1EBA668C0;
  if (!qword_1EBA668C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA668C0);
  }

  return result;
}

unint64_t sub_1B807E6B8()
{
  result = qword_1EBA668D0;
  if (!qword_1EBA668D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA668D0);
  }

  return result;
}

unint64_t sub_1B807E70C()
{
  result = qword_1EBA668D8;
  if (!qword_1EBA668D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA668D8);
  }

  return result;
}

unint64_t sub_1B807E760()
{
  result = qword_1EBA668E0;
  if (!qword_1EBA668E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA668E0);
  }

  return result;
}

unint64_t sub_1B807E7B4()
{
  result = qword_1EBA66910;
  if (!qword_1EBA66910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66910);
  }

  return result;
}

unint64_t sub_1B807E808()
{
  result = qword_1EBA66920;
  if (!qword_1EBA66920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66920);
  }

  return result;
}

unint64_t sub_1B807E85C()
{
  result = qword_1EBA66938;
  if (!qword_1EBA66938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66938);
  }

  return result;
}

unint64_t sub_1B807E8B0()
{
  result = qword_1EBA66940;
  if (!qword_1EBA66940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66940);
  }

  return result;
}

unint64_t sub_1B807E904()
{
  result = qword_1EBA66948;
  if (!qword_1EBA66948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66948);
  }

  return result;
}

unint64_t sub_1B807E958()
{
  result = qword_1EBA66960;
  if (!qword_1EBA66960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66960);
  }

  return result;
}

unint64_t sub_1B807E9AC()
{
  result = qword_1EBA66968;
  if (!qword_1EBA66968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66968);
  }

  return result;
}

unint64_t sub_1B807EA00()
{
  result = qword_1EBA66990;
  if (!qword_1EBA66990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66990);
  }

  return result;
}

unint64_t sub_1B807EA54()
{
  result = qword_1EBA66998;
  if (!qword_1EBA66998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66998);
  }

  return result;
}

unint64_t sub_1B807EAA8()
{
  result = qword_1EBA669A0;
  if (!qword_1EBA669A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA669A0);
  }

  return result;
}

unint64_t sub_1B807EAFC()
{
  result = qword_1EBA669C8;
  if (!qword_1EBA669C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA669C8);
  }

  return result;
}

unint64_t sub_1B807EB50()
{
  result = qword_1EBA669D8;
  if (!qword_1EBA669D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA669D8);
  }

  return result;
}

unint64_t sub_1B807EBA4()
{
  result = qword_1EBA669E0;
  if (!qword_1EBA669E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA669E0);
  }

  return result;
}

unint64_t sub_1B807EBF8()
{
  result = qword_1EBA66A30;
  if (!qword_1EBA66A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A30);
  }

  return result;
}

unint64_t sub_1B807EC4C()
{
  result = qword_1EBA66A38;
  if (!qword_1EBA66A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A38);
  }

  return result;
}

unint64_t sub_1B807ECA0()
{
  result = qword_1EBA66A40;
  if (!qword_1EBA66A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A40);
  }

  return result;
}

unint64_t sub_1B807ECF4()
{
  result = qword_1EBA66A48;
  if (!qword_1EBA66A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A48);
  }

  return result;
}

unint64_t sub_1B807ED48()
{
  result = qword_1EBA66A50;
  if (!qword_1EBA66A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A50);
  }

  return result;
}

unint64_t sub_1B807ED9C()
{
  result = qword_1EBA66A58;
  if (!qword_1EBA66A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A58);
  }

  return result;
}

unint64_t sub_1B807EDF0()
{
  result = qword_1EBA66A60;
  if (!qword_1EBA66A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A60);
  }

  return result;
}

unint64_t sub_1B807EE44()
{
  result = qword_1EBA66A68;
  if (!qword_1EBA66A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A68);
  }

  return result;
}

unint64_t sub_1B807EE98()
{
  result = qword_1EBA66A70;
  if (!qword_1EBA66A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A70);
  }

  return result;
}

unint64_t sub_1B807EEEC()
{
  result = qword_1EBA66AC8;
  if (!qword_1EBA66AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66AC8);
  }

  return result;
}

unint64_t sub_1B807EF40()
{
  result = qword_1EBA66AD8;
  if (!qword_1EBA66AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66AD8);
  }

  return result;
}

unint64_t sub_1B807EF94()
{
  result = qword_1EBA66AE8;
  if (!qword_1EBA66AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66AE8);
  }

  return result;
}

unint64_t sub_1B807EFE8()
{
  result = qword_1EBA66AF0;
  if (!qword_1EBA66AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66AF0);
  }

  return result;
}

unint64_t sub_1B807F03C()
{
  result = qword_1EBA66AF8;
  if (!qword_1EBA66AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66AF8);
  }

  return result;
}

unint64_t sub_1B807F090()
{
  result = qword_1EBA66B10;
  if (!qword_1EBA66B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B10);
  }

  return result;
}

unint64_t sub_1B807F0E4()
{
  result = qword_1EBA66B28;
  if (!qword_1EBA66B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B28);
  }

  return result;
}

unint64_t sub_1B807F138()
{
  result = qword_1EBA66B38;
  if (!qword_1EBA66B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B38);
  }

  return result;
}

unint64_t sub_1B807F18C()
{
  result = qword_1EBA66B40;
  if (!qword_1EBA66B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B40);
  }

  return result;
}

unint64_t sub_1B807F1E0()
{
  result = qword_1EBA66B48;
  if (!qword_1EBA66B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B48);
  }

  return result;
}

uint64_t sub_1B807F234(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66B00, &qword_1B80D6AB0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B807F2AC()
{
  result = qword_1EBA66B58;
  if (!qword_1EBA66B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B58);
  }

  return result;
}

unint64_t sub_1B807F394()
{
  result = qword_1EBA66B70;
  if (!qword_1EBA66B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B70);
  }

  return result;
}

unint64_t sub_1B807F3EC()
{
  result = qword_1EBA66B78;
  if (!qword_1EBA66B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B78);
  }

  return result;
}

unint64_t sub_1B807F48C()
{
  result = qword_1EBA66B88;
  if (!qword_1EBA66B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B88);
  }

  return result;
}

unint64_t sub_1B807F4E4()
{
  result = qword_1EBA66B90;
  if (!qword_1EBA66B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B90);
  }

  return result;
}

unint64_t sub_1B807F53C()
{
  result = qword_1EBA66B98;
  if (!qword_1EBA66B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B98);
  }

  return result;
}

unint64_t sub_1B807F594()
{
  result = qword_1EBA66BA0;
  if (!qword_1EBA66BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BA0);
  }

  return result;
}

unint64_t sub_1B807F5E8()
{
  result = qword_1EBA66BA8;
  if (!qword_1EBA66BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BA8);
  }

  return result;
}

unint64_t sub_1B807F640()
{
  result = qword_1EBA66BB0;
  if (!qword_1EBA66BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BB0);
  }

  return result;
}

unint64_t sub_1B807F698()
{
  result = qword_1EBA66BB8;
  if (!qword_1EBA66BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BB8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B80C8E9C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B80C8E9C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Fence.DaysOfWeek(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for Fence.DaysOfWeek(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_1B807FA90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 25))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 8;
  v5 = v3 - 8;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B807FAD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 7;
    }
  }

  return result;
}

unint64_t sub_1B807FCD0()
{
  result = qword_1EBA66BD8;
  if (!qword_1EBA66BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BD8);
  }

  return result;
}

unint64_t sub_1B807FD28()
{
  result = qword_1EBA66BE0;
  if (!qword_1EBA66BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BE0);
  }

  return result;
}

unint64_t sub_1B807FD80()
{
  result = qword_1EBA66BE8;
  if (!qword_1EBA66BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BE8);
  }

  return result;
}

unint64_t sub_1B807FDD8()
{
  result = qword_1EBA66BF0;
  if (!qword_1EBA66BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BF0);
  }

  return result;
}

unint64_t sub_1B807FE30()
{
  result = qword_1EBA66BF8;
  if (!qword_1EBA66BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BF8);
  }

  return result;
}

unint64_t sub_1B807FE88()
{
  result = qword_1EBA66C00;
  if (!qword_1EBA66C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C00);
  }

  return result;
}

unint64_t sub_1B807FEE0()
{
  result = qword_1EBA66C08;
  if (!qword_1EBA66C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C08);
  }

  return result;
}

unint64_t sub_1B807FF38()
{
  result = qword_1EBA66C10;
  if (!qword_1EBA66C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C10);
  }

  return result;
}

unint64_t sub_1B807FF90()
{
  result = qword_1EBA66C18;
  if (!qword_1EBA66C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C18);
  }

  return result;
}

unint64_t sub_1B807FFE8()
{
  result = qword_1EBA66C20;
  if (!qword_1EBA66C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C20);
  }

  return result;
}

unint64_t sub_1B8080040()
{
  result = qword_1EBA66C28;
  if (!qword_1EBA66C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C28);
  }

  return result;
}

unint64_t sub_1B8080098()
{
  result = qword_1EBA66C30;
  if (!qword_1EBA66C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C30);
  }

  return result;
}

unint64_t sub_1B80800F0()
{
  result = qword_1EBA66C38;
  if (!qword_1EBA66C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C38);
  }

  return result;
}

unint64_t sub_1B8080148()
{
  result = qword_1EBA66C40;
  if (!qword_1EBA66C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C40);
  }

  return result;
}

unint64_t sub_1B80801A0()
{
  result = qword_1EBA66C48;
  if (!qword_1EBA66C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C48);
  }

  return result;
}

unint64_t sub_1B80801F8()
{
  result = qword_1EBA66C50;
  if (!qword_1EBA66C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C50);
  }

  return result;
}

unint64_t sub_1B8080250()
{
  result = qword_1EBA66C58;
  if (!qword_1EBA66C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C58);
  }

  return result;
}

unint64_t sub_1B80802A8()
{
  result = qword_1EBA66C60;
  if (!qword_1EBA66C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C60);
  }

  return result;
}

unint64_t sub_1B8080300()
{
  result = qword_1EBA66C68;
  if (!qword_1EBA66C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C68);
  }

  return result;
}

unint64_t sub_1B8080358()
{
  result = qword_1EBA66C70;
  if (!qword_1EBA66C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C70);
  }

  return result;
}

unint64_t sub_1B80803B0()
{
  result = qword_1EBA66C78;
  if (!qword_1EBA66C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C78);
  }

  return result;
}

unint64_t sub_1B8080408()
{
  result = qword_1EBA66C80;
  if (!qword_1EBA66C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C80);
  }

  return result;
}

unint64_t sub_1B8080460()
{
  result = qword_1EBA66C88;
  if (!qword_1EBA66C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C88);
  }

  return result;
}

unint64_t sub_1B80804B8()
{
  result = qword_1EBA66C90;
  if (!qword_1EBA66C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C90);
  }

  return result;
}

unint64_t sub_1B8080510()
{
  result = qword_1EBA66C98;
  if (!qword_1EBA66C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C98);
  }

  return result;
}

unint64_t sub_1B8080568()
{
  result = qword_1EBA66CA0;
  if (!qword_1EBA66CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CA0);
  }

  return result;
}

unint64_t sub_1B80805C0()
{
  result = qword_1EBA66CA8;
  if (!qword_1EBA66CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CA8);
  }

  return result;
}

unint64_t sub_1B8080618()
{
  result = qword_1EBA66CB0;
  if (!qword_1EBA66CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CB0);
  }

  return result;
}

unint64_t sub_1B8080670()
{
  result = qword_1EBA66CB8;
  if (!qword_1EBA66CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CB8);
  }

  return result;
}

unint64_t sub_1B80806C8()
{
  result = qword_1EBA66CC0;
  if (!qword_1EBA66CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CC0);
  }

  return result;
}

unint64_t sub_1B8080720()
{
  result = qword_1EBA66CC8;
  if (!qword_1EBA66CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CC8);
  }

  return result;
}

unint64_t sub_1B8080778()
{
  result = qword_1EBA66CD0;
  if (!qword_1EBA66CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CD0);
  }

  return result;
}

unint64_t sub_1B80807D0()
{
  result = qword_1EBA66CD8;
  if (!qword_1EBA66CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CD8);
  }

  return result;
}

unint64_t sub_1B8080828()
{
  result = qword_1EBA66CE0;
  if (!qword_1EBA66CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CE0);
  }

  return result;
}

unint64_t sub_1B8080880()
{
  result = qword_1EBA66CE8;
  if (!qword_1EBA66CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CE8);
  }

  return result;
}

unint64_t sub_1B80808D8()
{
  result = qword_1EBA66CF0;
  if (!qword_1EBA66CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CF0);
  }

  return result;
}

unint64_t sub_1B8080930()
{
  result = qword_1EBA66CF8;
  if (!qword_1EBA66CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CF8);
  }

  return result;
}

unint64_t sub_1B8080988()
{
  result = qword_1EBA66D00;
  if (!qword_1EBA66D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D00);
  }

  return result;
}

unint64_t sub_1B80809E0()
{
  result = qword_1EBA66D08;
  if (!qword_1EBA66D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D08);
  }

  return result;
}

unint64_t sub_1B8080A38()
{
  result = qword_1EBA66D10;
  if (!qword_1EBA66D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D10);
  }

  return result;
}

unint64_t sub_1B8080A90()
{
  result = qword_1EBA66D18;
  if (!qword_1EBA66D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D18);
  }

  return result;
}

unint64_t sub_1B8080AE8()
{
  result = qword_1EBA66D20;
  if (!qword_1EBA66D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D20);
  }

  return result;
}

unint64_t sub_1B8080B40()
{
  result = qword_1EBA66D28;
  if (!qword_1EBA66D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D28);
  }

  return result;
}

unint64_t sub_1B8080B98()
{
  result = qword_1EBA66D30;
  if (!qword_1EBA66D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D30);
  }

  return result;
}

unint64_t sub_1B8080BF0()
{
  result = qword_1EBA66D38;
  if (!qword_1EBA66D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D38);
  }

  return result;
}

unint64_t sub_1B8080C48()
{
  result = qword_1EBA66D40;
  if (!qword_1EBA66D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D40);
  }

  return result;
}

unint64_t sub_1B8080CA0()
{
  result = qword_1EBA66D48;
  if (!qword_1EBA66D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D48);
  }

  return result;
}

unint64_t sub_1B8080CF8()
{
  result = qword_1EBA66D50;
  if (!qword_1EBA66D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D50);
  }

  return result;
}

unint64_t sub_1B8080D50()
{
  result = qword_1EBA66D58;
  if (!qword_1EBA66D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D58);
  }

  return result;
}

unint64_t sub_1B8080DA8()
{
  result = qword_1EBA66D60;
  if (!qword_1EBA66D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D60);
  }

  return result;
}

unint64_t sub_1B8080E00()
{
  result = qword_1EBA66D68;
  if (!qword_1EBA66D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D68);
  }

  return result;
}

unint64_t sub_1B8080E58()
{
  result = qword_1EBA66D70;
  if (!qword_1EBA66D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D70);
  }

  return result;
}

unint64_t sub_1B8080EB0()
{
  result = qword_1EBA66D78;
  if (!qword_1EBA66D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D78);
  }

  return result;
}

unint64_t sub_1B8080F08()
{
  result = qword_1EBA66D80;
  if (!qword_1EBA66D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D80);
  }

  return result;
}

unint64_t sub_1B8080F60()
{
  result = qword_1EBA66D88;
  if (!qword_1EBA66D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D88);
  }

  return result;
}

unint64_t sub_1B8080FB8()
{
  result = qword_1EBA66D90;
  if (!qword_1EBA66D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D90);
  }

  return result;
}

unint64_t sub_1B8081010()
{
  result = qword_1EBA66D98;
  if (!qword_1EBA66D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D98);
  }

  return result;
}

unint64_t sub_1B8081068()
{
  result = qword_1EBA66DA0;
  if (!qword_1EBA66DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DA0);
  }

  return result;
}

unint64_t sub_1B80810C0()
{
  result = qword_1EBA66DA8;
  if (!qword_1EBA66DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DA8);
  }

  return result;
}

unint64_t sub_1B8081118()
{
  result = qword_1EBA66DB0;
  if (!qword_1EBA66DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DB0);
  }

  return result;
}

unint64_t sub_1B8081170()
{
  result = qword_1EBA66DB8;
  if (!qword_1EBA66DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DB8);
  }

  return result;
}

unint64_t sub_1B80811C8()
{
  result = qword_1EBA66DC0;
  if (!qword_1EBA66DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DC0);
  }

  return result;
}

unint64_t sub_1B8081220()
{
  result = qword_1EBA66DC8;
  if (!qword_1EBA66DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DC8);
  }

  return result;
}

unint64_t sub_1B8081278()
{
  result = qword_1EBA66DD0;
  if (!qword_1EBA66DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DD0);
  }

  return result;
}

unint64_t sub_1B80812D0()
{
  result = qword_1EBA66DD8;
  if (!qword_1EBA66DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DD8);
  }

  return result;
}

unint64_t sub_1B8081328()
{
  result = qword_1EBA66DE0;
  if (!qword_1EBA66DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DE0);
  }

  return result;
}

unint64_t sub_1B8081380()
{
  result = qword_1EBA66DE8;
  if (!qword_1EBA66DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DE8);
  }

  return result;
}

unint64_t sub_1B80813D8()
{
  result = qword_1EBA66DF0;
  if (!qword_1EBA66DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DF0);
  }

  return result;
}

unint64_t sub_1B8081430()
{
  result = qword_1EBA66DF8;
  if (!qword_1EBA66DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DF8);
  }

  return result;
}

uint64_t sub_1B8081484(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4264657461657263 && a2 == 0xE900000000000079 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265646E6966 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B80CDB30 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F69676572 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72616D6563616C70 && a2 == 0xE90000000000006BLL || (sub_1B80C981C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73726568746FLL && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x44646E456574756DLL && a2 == 0xEB00000000657461 || (sub_1B80C981C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4164657461647075 && a2 == 0xE900000000000074 || (sub_1B80C981C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B80CDB50 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B80CDB70 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B80CDB90 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_1B80C981C();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1B80818D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x48676E69646E6570 && a2 == 0xED00006E65646469;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69646E6570 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

unint64_t sub_1B80819F0()
{
  result = qword_1EBA66E20;
  if (!qword_1EBA66E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66E20);
  }

  return result;
}

unint64_t sub_1B8081A44()
{
  result = qword_1EBA66E28;
  if (!qword_1EBA66E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66E28);
  }

  return result;
}

unint64_t sub_1B8081A98()
{
  result = qword_1EBA66E30;
  if (!qword_1EBA66E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66E30);
  }

  return result;
}

unint64_t sub_1B8081AEC()
{
  result = qword_1EBA66E38;
  if (!qword_1EBA66E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66E38);
  }

  return result;
}

uint64_t sub_1B8081B40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6954656E6FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69727275636572 && a2 == 0xE900000000000067 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

uint64_t sub_1B8081C68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C746E6572727563 && a2 == 0xEF6E6F697461636FLL || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4C646E65697266 && a2 == 0xEE006E6F69746163 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B80CDB10 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4273736572646461 && a2 == 0xEB000000006B6F6FLL || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x50646570706F7264 && a2 == 0xEA00000000006E69 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1819242356 && a2 == 0xE400000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B80C981C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1B8081F1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6557664F73796164 && a2 == 0xEA00000000006B65 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B80C981C();

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

unint64_t sub_1B8082084()
{
  result = qword_1EBA66E68;
  if (!qword_1EBA66E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66E68);
  }

  return result;
}

unint64_t sub_1B80820D8()
{
  result = qword_1EBA66E70;
  if (!qword_1EBA66E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66E70);
  }

  return result;
}

unint64_t sub_1B808212C()
{
  result = qword_1EBA66E80;
  if (!qword_1EBA66E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66E80);
  }

  return result;
}

unint64_t sub_1B80821D4()
{
  result = qword_1EBA66EB0;
  if (!qword_1EBA66EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EB0);
  }

  return result;
}

unint64_t sub_1B808222C()
{
  result = qword_1EBA66EB8;
  if (!qword_1EBA66EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EB8);
  }

  return result;
}

unint64_t sub_1B8082284()
{
  result = qword_1EBA66EC0;
  if (!qword_1EBA66EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EC0);
  }

  return result;
}

unint64_t sub_1B80822DC()
{
  result = qword_1EBA66EC8;
  if (!qword_1EBA66EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EC8);
  }

  return result;
}

unint64_t sub_1B8082334()
{
  result = qword_1EBA66ED0;
  if (!qword_1EBA66ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66ED0);
  }

  return result;
}

unint64_t sub_1B808238C()
{
  result = qword_1EBA66ED8;
  if (!qword_1EBA66ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66ED8);
  }

  return result;
}

unint64_t sub_1B80823E4()
{
  result = qword_1EBA66EE0;
  if (!qword_1EBA66EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EE0);
  }

  return result;
}

unint64_t sub_1B808243C()
{
  result = qword_1EBA66EE8;
  if (!qword_1EBA66EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EE8);
  }

  return result;
}

unint64_t sub_1B8082494()
{
  result = qword_1EBA66EF0;
  if (!qword_1EBA66EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EF0);
  }

  return result;
}

unint64_t sub_1B80824EC()
{
  result = qword_1EBA66EF8;
  if (!qword_1EBA66EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EF8);
  }

  return result;
}

unint64_t sub_1B8082544()
{
  result = qword_1EBA66F00;
  if (!qword_1EBA66F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F00);
  }

  return result;
}

unint64_t sub_1B808259C()
{
  result = qword_1EBA66F08;
  if (!qword_1EBA66F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F08);
  }

  return result;
}

unint64_t sub_1B80825F4()
{
  result = qword_1EBA66F10;
  if (!qword_1EBA66F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F10);
  }

  return result;
}

unint64_t sub_1B808264C()
{
  result = qword_1EBA66F18;
  if (!qword_1EBA66F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F18);
  }

  return result;
}

unint64_t sub_1B80826A4()
{
  result = qword_1EBA66F20;
  if (!qword_1EBA66F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F20);
  }

  return result;
}

uint64_t sub_1B80826F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656469736E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6564697374756FLL && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D72657465646E75 && a2 == 0xEC00000064656E69)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

uint64_t sub_1B8082810(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B80C981C();

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

id sub_1B8082A0C()
{
  result = sub_1B8082A2C();
  qword_1EBA66F28 = result;
  return result;
}

id sub_1B8082A2C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69A2200]) init];
  if (result)
  {
    v1 = result;
    v7 = MEMORY[0x1E69E7CC0];
    result = sub_1B80C959C();
    v2 = 0x20u;
    do
    {
      v3 = *(&unk_1F2FF9EF0 + v2);
      if (*(v3 + 16) < 2uLL)
      {
        __break(1u);
        goto LABEL_10;
      }

      [objc_allocWithZone(MEMORY[0x1E69A1E50]) initWithLatitude:*(v3 + 40) longitude:*(v3 + 32)];
      sub_1B80C957C();
      sub_1B80C95AC();
      sub_1B80C95BC();
      result = sub_1B80C958C();
      v2 += 8;
    }

    while (v2 != 320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F30, &qword_1B80D9800);
    swift_arrayDestroy();
    v4 = *(v7 + 16);
    if (v4)
    {
      v5 = (v7 + 32);
      do
      {
        v6 = *v5++;
        [v1 addVertex_];
        --v4;
      }

      while (v4);
    }

    return v1;
  }

  else
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

void sub_1B8082B94(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B80C8CFC();
  v5 = [v4 domain];
  v6 = sub_1B80C90BC();
  v8 = v7;

  if (v6 == 0xD000000000000029 && 0x80000001B80CDD80 == v8)
  {

    goto LABEL_8;
  }

  v10 = sub_1B80C981C();

  if (v10)
  {
LABEL_8:
    v12 = [v4 code];

    Fence.Error.init(rawValue:)(v12, &v13);
    v11 = v13;
    goto LABEL_9;
  }

  v11 = 12;
LABEL_9:
  *a2 = v11;
}

uint64_t Fence.Error.description.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0xD00000000000001ELL;
    v8 = 0xD00000000000003FLL;
    if (v1 != 10)
    {
      v8 = 0xD000000000000031;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD000000000000022;
    if (v1 == 7)
    {
      v9 = 0xD00000000000001BLL;
    }

    if (v1 == 6)
    {
      v9 = 0xD000000000000016;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x206E776F6E6B6E55;
    v3 = 0xD000000000000020;
    v4 = 0xD000000000000017;
    if (v1 == 4)
    {
      v4 = 0xD000000000000020;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000017;
    if (v1 != 1)
    {
      v5 = 0xD000000000000010;
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
}

unint64_t Fence.Error.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F38, &unk_1B80DECA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B80D1EB0;
  *(inited + 32) = sub_1B80C90BC();
  *(inited + 40) = v1;
  v2 = Fence.Error.description.getter();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  v4 = sub_1B8083464(inited);
  swift_setDeallocating();
  sub_1B8083594(inited + 32);
  return v4;
}

uint64_t Fence.Error.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result + 24;
  if ((result - 1000) >= 0xC)
  {
    v2 = 12;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1B8082F38()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1 + 1000);
  return sub_1B80C997C();
}

uint64_t sub_1B8082FB0(uint64_t a1)
{
  v2 = *v1;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v2 + 1000);
  return sub_1B80C997C();
}

uint64_t sub_1B808300C(uint64_t a1)
{
  v2 = sub_1B80837A8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8083048(uint64_t a1)
{
  v2 = sub_1B80837A8();
  v3 = sub_1B80837FC();
  v4 = sub_1B804B6D0();

  return MEMORY[0x1EEDC6AB0](a1, v2, v3, v4);
}

void *sub_1B80830D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F68, &qword_1B80D99A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v31 - v4);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660F0, &unk_1B80DAC60);
  v7 = sub_1B80C966C();
  v8 = *(v2 + 48);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = *(v3 + 72);

  sub_1B7FB8448(a1 + v9, v5, &qword_1EBA66F68, &qword_1B80D99A0);
  v11 = v5[9];
  v39 = v5[8];
  v40 = v11;
  v41 = v5[10];
  v12 = v5[5];
  v35 = v5[4];
  v36 = v12;
  v13 = v5[7];
  v37 = v5[6];
  v38 = v13;
  v14 = v5[1];
  v31 = *v5;
  v15 = v5[2];
  v34 = v5[3];
  v32 = v14;
  v33 = v15;
  v16 = sub_1B7FDA47C(&v31);
  if (v17)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v18 = v16;
  v19 = *(*(type metadata accessor for Location(0) - 8) + 72);
  v20 = a1 + v10 + v9;
  while (1)
  {
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
    memmove((v7[6] + 176 * v18), v5, 0xB0uLL);
    result = sub_1B8083A34(v5 + v8, v7[7] + v19 * v18);
    v22 = v7[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      break;
    }

    v7[2] = v24;
    if (!--v6)
    {
      goto LABEL_8;
    }

    sub_1B7FB8448(v20, v5, &qword_1EBA66F68, &qword_1B80D99A0);
    v25 = v5[9];
    v39 = v5[8];
    v40 = v25;
    v41 = v5[10];
    v26 = v5[5];
    v35 = v5[4];
    v36 = v26;
    v27 = v5[7];
    v37 = v5[6];
    v38 = v27;
    v28 = v5[1];
    v31 = *v5;
    v29 = v5[2];
    v34 = v5[3];
    v32 = v28;
    v33 = v29;
    v18 = sub_1B7FDA47C(&v31);
    v20 += v10;
    if (v30)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B8083354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F70, &qword_1B80DAC90);
  v3 = sub_1B80C966C();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1B7FDA504(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1B7FDA504(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B8083464(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FA0, &qword_1B80D99C8);
    v3 = sub_1B80C966C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7FB8448(v4, &v13, &qword_1EBA66F40, &qword_1B80D9808);
      v5 = v13;
      v6 = v14;
      result = sub_1B7FDA404(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B8083A98(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B8083594(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F40, &qword_1B80D9808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B8083600()
{
  result = qword_1EBA66F48;
  if (!qword_1EBA66F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F48);
  }

  return result;
}

uint64_t _s5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5ErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B80837A8()
{
  result = qword_1EBA66F50;
  if (!qword_1EBA66F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F50);
  }

  return result;
}

unint64_t sub_1B80837FC()
{
  result = qword_1EBA66F58;
  if (!qword_1EBA66F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F58);
  }

  return result;
}

unint64_t sub_1B8083850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F98, &qword_1B80D99C0);
    v3 = sub_1B80C966C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1B7FDA570(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8083930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F60, &qword_1B80D9998);
    v3 = sub_1B80C966C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B7FDA404(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B8083A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1B8083A98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1B8083AAC(void (*a1)(uint64_t *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a2;
  v40 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v41 = sub_1B80C8E2C();
  v9 = MEMORY[0x1EEE9AC00](v41);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v30 - v12;
  v32 = v11;
  v13 = a3 + 56;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a3 + 56);
  v17 = (v14 + 63) >> 6;
  v36 = (v11 + 32);
  v37 = (v11 + 48);

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v33 = v8;
  v34 = v18;
  if (v16)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v22 >= v17)
    {
      goto LABEL_20;
    }

    v16 = *(v13 + 8 * v22);
    ++v19;
    if (v16)
    {
      v21 = v20;
      v19 = v22;
      while (1)
      {
        v23 = v18;
        v42 = *(*(v18 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v16)))));
        (v40)(&v42);
        if (v4)
        {
          break;
        }

        v16 &= v16 - 1;
        v24 = v41;
        if ((*v37)(v8, 1, v41) == 1)
        {
          sub_1B7FB86D4(v8, &unk_1EBA65FD0, &unk_1B80D1920);
          v20 = v21;
          v18 = v23;
          if (!v16)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v35 = 0;
          v25 = v8;
          v26 = *v36;
          v27 = v31;
          (*v36)(v31, v25, v24);
          v26(v38, v27, v24);
          v20 = v21;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_1B807DBCC(0, v21[2] + 1, 1, v21);
          }

          v29 = v20[2];
          v28 = v20[3];
          v4 = v35;
          if (v29 >= v28 >> 1)
          {
            v20 = sub_1B807DBCC((v28 > 1), v29 + 1, 1, v20);
          }

          v20[2] = v29 + 1;
          v26(v20 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, v38, v41);
          v8 = v33;
          v18 = v34;
          if (!v16)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v21 = v20;
      }

LABEL_20:

      return;
    }
  }

  __break(1u);
}

uint64_t sub_1B8083E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Fence.Schedule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Fence.Schedule.Matcher.init(schedule:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B80C8FCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B80C8EEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8083E1C(a1, a2);
  (*(v9 + 104))(v11, *MEMORY[0x1E6969868], v8);
  type metadata accessor for Fence.Schedule.Matcher(0);
  sub_1B80C8EFC();
  (*(v9 + 8))(v11, v8);
  v12 = type metadata accessor for Fence.Schedule(0);
  (*(v5 + 16))(v7, a1 + *(v12 + 28), v4);
  sub_1B80C8F7C();
  return sub_1B8084058(a1);
}

uint64_t sub_1B8084058(uint64_t a1)
{
  v2 = type metadata accessor for Fence.Schedule(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Fence.Schedule.Matcher.interval(containingDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = sub_1B80C8BEC();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B80C8F2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B80C8E2C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v29 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - v18;
  (*(v5 + 104))(v7, *MEMORY[0x1E69699A0], v4);
  Fence.Schedule.Matcher.nextStartDate(from:direction:)(a1, v7, v19);
  (*(v5 + 8))(v7, v4);
  sub_1B8084878(v19, v17);
  v20 = *(v9 + 16);
  v20(v14, v19, v8);
  v20(v30, v17, v8);
  v21 = v31;
  sub_1B80C8BCC();
  LOBYTE(v14) = sub_1B80C8BDC();
  v22 = *(v9 + 8);
  v22(v17, v8);
  v22(v19, v8);
  if (v14)
  {
    v23 = v32;
    v24 = v33;
    v25 = v34;
    (*(v32 + 32))(v33, v21, v34);
    v26 = 0;
    v27 = v24;
  }

  else
  {
    v23 = v32;
    v25 = v34;
    (*(v32 + 8))(v21, v34);
    v26 = 1;
    v27 = v33;
  }

  return (*(v23 + 56))(v27, v26, 1, v25);
}

uint64_t Fence.Schedule.Matcher.nextStartDate(from:direction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = sub_1B80C8F2C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v37) = *(v3 + 32);
  Fence.DaysOfWeek.gregorianCalendarWeekdays.getter();
  v34 = v3;
  v35 = a1;
  v36 = a2;
  sub_1B8083AAC(sub_1B8085D00, v33, v16);
  v18 = v17;

  if (!*(v18 + 16))
  {
    if (qword_1EBA65AA0 != -1)
    {
      swift_once();
    }

    v19 = sub_1B80C900C();
    __swift_project_value_buffer(v19, qword_1EBA7AC98);
    v20 = sub_1B80C8FEC();
    v21 = sub_1B80C93FC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v31 = a3;
      v23 = v22;
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CDDE0, &v37);
      _os_log_impl(&dword_1B7FB5000, v20, v21, "%{public}s: Did not find valid trigger dates for fence.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1B8CB8970](v24, -1, -1);
      v25 = v23;
      a3 = v31;
      MEMORY[0x1B8CB8970](v25, -1, -1);
    }
  }

  (*(v13 + 16))(v15, a2, v12);
  v26 = (*(v13 + 88))(v15, v12);
  if (v26 == *MEMORY[0x1E6969998])
  {
    sub_1B8086880(v18, v11);
  }

  else
  {
    if (v26 != *MEMORY[0x1E69699A0])
    {
      result = sub_1B80C962C();
      __break(1u);
      return result;
    }

    v11 = v32;
    sub_1B8086B30(v18, v32);
  }

  v27 = sub_1B80C8E2C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v11, 1, v27) != 1)
  {
    return (*(v28 + 32))(a3, v11, v27);
  }

  sub_1B80C8D6C();
  result = (v29)(v11, 1, v27);
  if (result != 1)
  {
    return sub_1B7FB86D4(v11, &unk_1EBA65FD0, &unk_1B80D1920);
  }

  return result;
}

uint64_t sub_1B8084878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B80C8F3C();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1B80C8F2C();
  v60 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1B80C8F0C();
  v58 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - v12;
  v14 = type metadata accessor for Fence.Schedule(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FC0, &qword_1B80D9A00);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FC8, &unk_1B80D9FD0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v51 - v21;
  v23 = sub_1B80C8C7C();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v27 = *(v2 + 16);
  v28 = *(v2 + 24);
  v67 = v2;
  if (__PAIR128__(v28, v27) == *v2)
  {
    v29 = sub_1B80C8E2C();
    v30 = *(*(v29 - 8) + 16);

    return v30(a2, a1, v29);
  }

  v51 = a1;
  v52 = v26;
  v55 = a2;
  v56 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v24;
  v54 = v13;
  v32 = sub_1B80C8F9C();
  (*(*(v32 - 8) + 56))(v22, 1, 1, v32);
  sub_1B8083E1C(v67, v16);
  v33 = *(v14 + 28);
  v34 = sub_1B80C8FCC();
  v35 = *(v34 - 8);
  (*(v35 + 32))(v19, &v16[v33], v34);
  (*(v35 + 56))(v19, 0, 1, v34);
  if (((v28 | v27) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B80C8C6C();
    type metadata accessor for Fence.Schedule.Matcher(0);
    v36 = v57;
    v37 = v58;
    (*(v58 + 104))(v57, *MEMORY[0x1E69698D0], v65);
    v39 = v59;
    v38 = v60;
    (*(v60 + 104))(v59, *MEMORY[0x1E6969998], v66);
    v41 = v63;
    v40 = v64;
    v42 = v61;
    (*(v63 + 104))(v61, *MEMORY[0x1E69699C8], v64);
    v33 = v54;
    sub_1B80C8F6C();
    (*(v41 + 8))(v42, v40);
    (*(v38 + 8))(v39, v66);
    (*(v37 + 8))(v36, v65);
    v43 = v62;
    sub_1B7FD6818(v33, v62);
    v44 = sub_1B80C8E2C();
    v45 = *(v44 - 8);
    if ((*(v45 + 48))(v43, 1, v44) != 1)
    {
      sub_1B7FB86D4(v33, &unk_1EBA65FD0, &unk_1B80D1920);
      (*(v52 + 8))(v56, v53);
      return (*(v45 + 32))(v55, v43, v44);
    }

    v34 = v56;
    sub_1B7FB86D4(v43, &unk_1EBA65FD0, &unk_1B80D1920);
    if (qword_1EBA65AA0 == -1)
    {
      goto LABEL_8;
    }
  }

  swift_once();
LABEL_8:
  v46 = sub_1B80C900C();
  __swift_project_value_buffer(v46, qword_1EBA7AC98);
  v47 = sub_1B80C8FEC();
  v48 = sub_1B80C93FC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v68 = v50;
    *v49 = 136446210;
    *(v49 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CDE00, &v68);
    _os_log_impl(&dword_1B7FB5000, v47, v48, "%{public}s: Did not find valid trigger dates for fence.", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x1B8CB8970](v50, -1, -1);
    MEMORY[0x1B8CB8970](v49, -1, -1);
  }

  sub_1B80C8D6C();
  sub_1B7FB86D4(v33, &unk_1EBA65FD0, &unk_1B80D1920);
  return (*(v52 + 8))(v34, v53);
}