unint64_t sub_18E265B8C()
{
  result = qword_1ED6A8A70;
  if (!qword_1ED6A8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8A70);
  }

  return result;
}

unint64_t sub_18E265BE4()
{
  result = qword_1ED6A8A78;
  if (!qword_1ED6A8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8A78);
  }

  return result;
}

unint64_t sub_18E265C4C()
{
  result = qword_1ED6A82C0;
  if (!qword_1ED6A82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A82C0);
  }

  return result;
}

unint64_t sub_18E265CA4()
{
  result = qword_1ED6A82C8;
  if (!qword_1ED6A82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A82C8);
  }

  return result;
}

unint64_t sub_18E265D0C()
{
  result = qword_1ED6A82B0;
  if (!qword_1ED6A82B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A82B0);
  }

  return result;
}

unint64_t sub_18E265D64()
{
  result = qword_1ED6A82B8;
  if (!qword_1ED6A82B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A82B8);
  }

  return result;
}

unint64_t sub_18E265DCC()
{
  result = qword_1ED6A82E0;
  if (!qword_1ED6A82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A82E0);
  }

  return result;
}

unint64_t sub_18E265E24()
{
  result = qword_1ED6A82E8;
  if (!qword_1ED6A82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A82E8);
  }

  return result;
}

unint64_t sub_18E265E8C()
{
  result = qword_1ED6A8290;
  if (!qword_1ED6A8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8290);
  }

  return result;
}

unint64_t sub_18E265EE4()
{
  result = qword_1ED6A8298;
  if (!qword_1ED6A8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8298);
  }

  return result;
}

unint64_t sub_18E265F38()
{
  result = qword_1ED6A83D0;
  if (!qword_1ED6A83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A83D0);
  }

  return result;
}

unint64_t sub_18E265FA0()
{
  result = qword_1ED6A87C0;
  if (!qword_1ED6A87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A87C0);
  }

  return result;
}

unint64_t sub_18E265FF8()
{
  result = qword_1ED6A87C8;
  if (!qword_1ED6A87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A87C8);
  }

  return result;
}

uint64_t sub_18E266064(uint64_t a1)
{
  result = sub_18E44E54C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_18E2660FC()
{
  result = qword_1EABE0C18;
  if (!qword_1EABE0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0C18);
  }

  return result;
}

unint64_t sub_18E266150()
{
  result = qword_1EABE0A40;
  if (!qword_1EABE0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0A40);
  }

  return result;
}

void sub_18E2661C4(uint64_t a1)
{
  v10 = 0;
  v15 = &type metadata for AssetVersion;
  v16 = MEMORY[0x1E69E7360];
  v11 = 0;
  v17 = &type metadata for AssetSpecificationVersion;
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v12 = 0;
    v18 = v2;
    v8[0] = *(a1 + 16);
    v8[1] = v2;
    v9 = *(a1 + 32);
    type metadata accessor for CatalogAsset.CoherentLockAssertion(255, v8);
    v4 = sub_18E44EEFC();
    if (v5 <= 0x3F)
    {
      v13 = 0;
      v19 = v4;
      sub_18E266314();
      if (v7 <= 0x3F)
      {
        v14 = 0;
        v20 = v6;
        v21 = &type metadata for CatalogAssetLock;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18E266314()
{
  if (!qword_1ED6A8A30)
  {
    v0 = sub_18E44E9DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6A8A30);
    }
  }
}

unint64_t sub_18E266370(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    v4 = sub_18E221758(0, v3);
    sub_18E2707F8(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_18E2663EC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_18E266428()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

double sub_18E266474()
{
  qword_1ED6A7B68 = 0;
  result = 0.0;
  xmmword_1ED6A7B48 = 0u;
  unk_1ED6A7B58 = 0u;
  return result;
}

void sub_18E2664AC()
{
  v0 = [objc_opt_self() currentProcess];
  v1 = [v0 isManaged];

  byte_1ED6A7EE8 = v1;
}

uint64_t sub_18E266508()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedTokenizerBase;
    v17[4] = sub_18E43C93C();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedTokenizerBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43C88C(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t _s12ModelCatalog08LLMDraftA13AssetContentsV7baseURL10Foundation0G0Vvg_0()
{
  sub_18E44E54C();
  sub_18E1C4EEC();
  v0 = sub_18E1C5BFC();

  return v1(v0);
}

uint64_t CatalogAsset.version.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_18E2669CC()
{
  result = qword_1EABE0AB8;
  if (!qword_1EABE0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0AB8);
  }

  return result;
}

unint64_t sub_18E266A20()
{
  result = qword_1EABE0AC0;
  if (!qword_1EABE0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0AC0);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for LLMAdapterAssetMetadata.ClassifierOutputClass(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t static ResourceBundleIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_18E32EF70(a1);
  v5 = *(v4 + 8);
  v6 = v3[1];
  if (v2 == *v3 && v5 == v6)
  {
    return _s12ModelCatalog0B6ErrorsO17AvailabilityErrorO2eeoiySbAE_AEtFZ_0();
  }

  else
  {
    return sub_18E1CC4F8(v2, v5, *v3, v6);
  }
}

uint64_t sub_18E266B14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E266AF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18E266B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18E44E6AC();
    v9 = a1 + *(a3 + 28);

    return sub_18E1CAF28(v9, a2, v8);
  }
}

uint64_t sub_18E266C08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_18E44E6AC();
    v8 = v5 + *(a4 + 28);

    return sub_18E201DC8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18E266D90()
{
  v1 = type metadata accessor for SafetyFailure(0);
  v2 = sub_18E1CF260(v1);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = v0 + *(v2 + 32);
  sub_18E44E6AC();
  sub_18E1C4EEC();
  (*(v9 + 8))(v8 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_18E266E90()
{
  sub_18E2706EC(&qword_1EABE1058, &qword_18E49DC88);
  sub_18E1C4EAC();
  swift_unknownObjectRelease();

  v0 = sub_18E1CA27C();
  v1(v0);
  v2 = sub_18E1DD52C();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18E266F68()
{
  sub_18E2706EC(&qword_1EABE1070, &qword_18E4E2CD0);
  sub_18E1C4EAC();
  swift_unknownObjectRelease();

  v0 = sub_18E1CA27C();
  v1(v0);
  v2 = sub_18E1DD52C();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18E267038()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_18E267098()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18E2671C8()
{

  if (*(v0 + 112))
  {
  }

  sub_18E1C86E0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18E267338(uint64_t a1, char a2)
{
  sub_18E44EB4C();
}

uint64_t sub_18E267C38(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E44E6FC();

  return sub_18E1CAF28(a1, a2, v4);
}

uint64_t sub_18E267C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E44E6FC();

  return sub_18E201DC8(a1, a2, a2, v4);
}

__n128 sub_18E267D20(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18E267D30(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E44E6FC();

  return sub_18E1CAF28(a1, a2, v4);
}

uint64_t sub_18E267D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E44E6FC();

  return sub_18E201DC8(a1, a2, a2, v4);
}

uint64_t sub_18E267DF8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18E267E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE11B0, &qword_18E49EF20);

  return sub_18E1CAF28(a1, a2, v4);
}

uint64_t sub_18E267EC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE11B0, &qword_18E49EF20);

  return sub_18E201DC8(a1, a2, a2, v4);
}

void sub_18E267F78()
{
  v1 = sub_18E1D6250();
  sub_18E2B366C(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_18E267FB0()
{
  v1 = sub_18E1D6250();
  result = sub_18E2B3B98(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_18E268018()
{
  sub_18E1D6250();
  sub_18E2B82A4();
  *v0 = v1;
  v0[1] = v2;
}

void sub_18E268094()
{
  v1 = sub_18E1D6250();
  sub_18E2B860C(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_18E2680F4()
{
  v1 = sub_18E1D6250();
  result = sub_18E2B99EC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_18E26813C@<X0>(uint64_t *a1@<X8>)
{
  result = LLMAdapterMetadataOverrideAssetMetadata.LoraRank.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E268164@<X0>(uint64_t *a1@<X8>)
{
  result = LLMAdapterMetadataOverrideAssetMetadata.ModelType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

void sub_18E2681FC()
{
  sub_18E1D6250();
  sub_18E2B5714();
  *v0 = v1;
  v0[1] = v2;
}

unint64_t sub_18E2683B0(uint64_t a1)
{
  result = sub_18E2C6A8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2683D8(uint64_t a1)
{
  result = sub_18E2C7DE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E268400(uint64_t a1)
{
  result = sub_18E2C8364();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E268428(uint64_t a1)
{
  result = sub_18E2C8B04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E268450(uint64_t a1)
{
  result = sub_18E2C9FC4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E268478(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E44E54C();

  return sub_18E1CAF28(a1, a2, v4);
}

uint64_t sub_18E2684C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E44E54C();

  return sub_18E201DC8(a1, a2, a2, v4);
}

uint64_t _s12ModelCatalog23LLMAdapterAssetMetadataV28ClassifierDefaultOutputClassVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return sub_18E1CFA04(*a1);
  }

  else
  {
    return _s12ModelCatalog0B8ResourcePAAE11assetBackedSbvg_0();
  }
}

uint64_t storeEnumTagSinglePayload for DebugInformationOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t _s12ModelCatalog23LLMAdapterAssetMetadataV21ClassifierOutputClassVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return sub_18E1CFA04(*a1);
  }

  else
  {
    return _s12ModelCatalog0B8ResourcePAAE11assetBackedSbvg_0();
  }
}

uint64_t _s12ModelCatalog23LLMAdapterAssetMetadataV21ClassifierOutputClassVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_18E268848(char a1)
{
  if (!a1)
  {
    return sub_18E221A10();
  }

  if (a1 == 1)
  {
    return 0x6E6F697461636F6CLL;
  }

  return 0x6D69747365766F66;
}

uint64_t sub_18E26889C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2D3180();
  *a1 = result;
  return result;
}

uint64_t sub_18E2688D0(char a1)
{
  if (!a1)
  {
    return sub_18E221A10();
  }

  if (a1 == 1)
  {
    return 0x65646F4D65736162;
  }

  return 0x72657470616461;
}

uint64_t sub_18E268920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2EE378();
  *a1 = result;
  return result;
}

uint64_t sub_18E268950(char a1)
{
  if (a1)
  {
    return 0x44746C7561666564;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_18E2689AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2D6930();
  *a1 = result;
  return result;
}

uint64_t sub_18E2689E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2D7EF0();
  *a1 = result;
  return result;
}

void sub_18E268A18(char a1)
{
  switch(a1)
  {
    case 1:
      sub_18E1E31A0();
      break;
    case 2:
    case 3:
      sub_18E1C77B0();
      break;
    default:
      return;
  }
}

uint64_t sub_18E268ACC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2DA3E8();
  *a1 = result;
  return result;
}

uint64_t sub_18E268B04(char a1)
{
  if (!a1)
  {
    return sub_18E221A10();
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000011;
}

uint64_t sub_18E268B5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2DC754();
  *a1 = result;
  return result;
}

void sub_18E268B8C(char a1)
{
  switch(a1)
  {
    case 1:
      sub_18E1E31A0();
      break;
    case 2:
    case 3:
      sub_18E1C77B0();
      break;
    default:
      return;
  }
}

uint64_t sub_18E268C40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2DFA04();
  *a1 = result;
  return result;
}

uint64_t sub_18E268C70()
{
  sub_18E1CA5A4();
  if (v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_18E268CB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2E1B58();
  *a1 = result;
  return result;
}

uint64_t sub_18E268CE4(char a1)
{
  if (a1)
  {
    return 0x65646F4D65736162;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_18E268D1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2E361C();
  *a1 = result;
  return result;
}

uint64_t sub_18E268D48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2E7060();
  *a1 = result;
  return result;
}

uint64_t sub_18E268D80(char a1)
{
  if (a1)
  {
    return 0x646F4D7466617264;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_18E268DB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2E9DCC();
  *a1 = result;
  return result;
}

uint64_t sub_18E268DE8(char a1)
{
  if (!a1)
  {
    return sub_18E221A10();
  }

  if (a1 == 1)
  {
    return 0x657A696E656B6F74;
  }

  return 0x646F4D7466617264;
}

uint64_t sub_18E268E3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2EBEB0();
  *a1 = result;
  return result;
}

uint64_t sub_18E268F90(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 130)
  {
    v4 = *a1;
    if (v4 >= 0x7E)
    {
      return v4 - 125;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_18E44E6AC();
    v9 = &a1[*(a3 + 24)];

    return sub_18E1CAF28(v9, a2, v8);
  }
}

_BYTE *sub_18E269010(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 130)
  {
    *result = a2 + 125;
  }

  else
  {
    v7 = sub_18E44E6AC();
    v8 = &v5[*(a4 + 24)];

    return sub_18E201DC8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18E2691D4()
{
  sub_18E2706EC(&qword_1EABE2E00, &unk_18E4B00C8);
  sub_18E1C50B0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_18E269268()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18E2692B0()
{
  sub_18E2706EC(&qword_1EABE2E18, &qword_18E4B00F0);
  sub_18E1C50B0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_18E269388()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18E2693E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18E44E54C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_18E1CAF28(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_18E269490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18E44E54C();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_18E201DC8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

__n128 sub_18E2695B0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

BOOL sub_18E2695BC(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_18E2696D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xD8uLL);
  return sub_18E30FC90();
}

void sub_18E269710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11);
  memcpy(v8, v9, 0xD8uLL);
  sub_18E30FE5C();
}

uint64_t sub_18E269748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xD8uLL);
  return j___s12ModelCatalog21ResourceConfigurationV13preconditionsSayAA12PreconditionVGvg_0();
}

uint64_t sub_18E269784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xD8uLL);
  return sub_18E2697BC();
}

void sub_18E269810()
{
  sub_18E1E1C70();
  memcpy(v1, v2, 0xD8uLL);
  sub_18E310730(v0);
}

uint64_t sub_18E269854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xD8uLL);
  return sub_18E26988C();
}

uint64_t sub_18E2698BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xD8uLL);
  return sub_18E3107F8();
}

uint64_t sub_18E2698FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xD8uLL);
  return sub_18E2697EC();
}

uint64_t sub_18E2699EC(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_18E269A0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18E318F94(a2, a3);
  *a1 = result;
  return result;
}

void sub_18E269B6C()
{
  sub_18E1E1C70();
  memcpy(v1, v2, 0xF8uLL);
  sub_18E310730(v0);
}

uint64_t sub_18E269BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xF8uLL);
  return sub_18E26988C();
}

uint64_t sub_18E269BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xF8uLL);
  return sub_18E3107F8();
}

uint64_t sub_18E269C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xF8uLL);
  return sub_18E30FC90();
}

void sub_18E269C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11);
  memcpy(v8, v9, 0xF8uLL);
  sub_18E30FE5C();
}

void sub_18E269C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11);
  memcpy(v8, v9, 0xF8uLL);
  sub_18E207128();
}

uint64_t sub_18E269CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xF8uLL);
  return sub_18E2697BC();
}

uint64_t sub_18E269D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xF8uLL);
  return sub_18E24AEE0();
}

uint64_t sub_18E269D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xF8uLL);
  return sub_18E246880() & 1;
}

uint64_t sub_18E269D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xF8uLL);
  return sub_18E24FE2C() & 1;
}

uint64_t sub_18E269DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xF8uLL);
  return sub_18E2697EC();
}

uint64_t sub_18E269E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x78uLL);
  return sub_18E31DF70();
}

uint64_t sub_18E269EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x88uLL);
  return sub_18E31DF70();
}

uint64_t sub_18E269EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x168uLL);
  return sub_18E310EE0();
}

uint64_t sub_18E269F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x168uLL);
  return sub_18E31DF70();
}

uint64_t sub_18E269F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x168uLL);
  return sub_18E310EE0();
}

uint64_t sub_18E26A008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x168uLL);
  return sub_18E310EE0();
}

uint64_t sub_18E26A078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x168uLL);
  return sub_18E310EE0();
}

uint64_t sub_18E26A0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D4910(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x110uLL);
  return sub_18E31DF70();
}

__n128 sub_18E26A23C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_18E26A4FC@<X0>(uint64_t *a1@<X8>)
{
  result = Catalog.ModelConfigurationReplacement.All.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E26A550@<X0>(uint64_t *a1@<X8>)
{
  result = Catalog.ImageMagicCleanUp.GenerativeEditsMagicCleanUp.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E26A5A8@<X0>(uint64_t *a1@<X8>)
{
  result = Catalog.LLM.Adapter.InstructBaseAdapter.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E26A640@<X0>(uint64_t *a1@<X8>)
{
  result = Catalog.LLM.Model.CodeLMV1ANE3B.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E26A690@<X0>(uint64_t *a1@<X8>)
{
  result = Catalog.LLM.Model.NLRouterBase.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E26A738()
{

  return MEMORY[0x1EEE6BDD0](v0, 392, 7);
}

uint64_t sub_18E26B1E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18E3ED9EC();
  *a1 = result;
  return result;
}

uint64_t sub_18E26B218@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18E3EDA80();
  *a1 = result;
  return result;
}

uint64_t sub_18E26B2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18E2706EC(&qword_1EABE90D0, &qword_18E4E26C0);
    v9 = a1 + *(a3 + 28);

    return sub_18E1CAF28(v9, a2, v8);
  }
}

uint64_t sub_18E26B358(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_18E2706EC(&qword_1EABE90D0, &qword_18E4E26C0);
    v8 = v5 + *(a4 + 28);

    return sub_18E201DC8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18E26B3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18E44E6AC();
    v9 = a1 + *(a3 + 28);

    return sub_18E1CAF28(v9, a2, v8);
  }
}

uint64_t sub_18E26B46C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_18E44E6AC();
    v8 = v5 + *(a4 + 28);

    return sub_18E201DC8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18E26B4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18E2706EC(&qword_1EABE11B0, &qword_18E49EF20);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_18E1CAF28(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_18E26B5B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18E2706EC(&qword_1EABE11B0, &qword_18E49EF20);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_18E201DC8(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_18E26B860()
{
  swift_unknownObjectRelease();

  sub_18E1CADEC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18E26B8A4()
{

  sub_18E1CD8AC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18E26B8DC()
{
  swift_unknownObjectRelease();

  sub_18E1CADEC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18E26BB58()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18E26BBA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_18E26BC14()
{
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E245114();
  sub_18E1C4EAC();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);

  v5 = sub_18E1CA27C();
  v6(v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 64) & ~v2) + v4, v2 | 7);
}

uint64_t sub_18E26BCE4()
{
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  v1 = sub_18E245114();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_18E26BD8C()
{
  swift_weakDestroy();
  sub_18E1CC494();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18E26BDC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18E26BDF8()
{

  sub_18E1E3428();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18E26BE2C()
{
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E245114();
  sub_18E1C4EAC();
  v2 = *(v1 + 80);
  v4 = (*(v3 + 64) + ((v2 + 64) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_18E1CA27C();
  v6(v5);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_18E26BF24()
{
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E245114();
  sub_18E1C4EAC();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);

  v5 = sub_18E1CA27C();
  v6(v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 48) & ~v2) + v4, v2 | 7);
}

uint64_t sub_18E26C180@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18E270ECC(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_18E26C214(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t sub_18E26C26C(uint64_t a1, int a2)
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

uint64_t sub_18E26C28C(uint64_t result, int a2, int a3)
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

uint64_t ResourceVariantResolverArgument.init(name:featureFlagsKey:featureFlagValueProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

Swift::Bool_optional __swiftcall ResourceVariantResolverArgument.featureFlagValue()()
{
  if (!*(v0 + 24))
  {
    return 2;
  }

  v1 = *(v0 + 32);
  if (qword_1EABE0C78 != -1)
  {
    result.value = swift_once();
  }

  if (*(off_1EABE0C80 + 2))
  {
    result.value = sub_18E1CBD4C();
    if (v2)
    {
      v5[3] = &type metadata for GenerativePlaygroundFFKey;
      v5[4] = sub_18E26DB94();
      v3 = v1(v5);
      sub_18E1C9934(v5);
      return (v3 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_18E26C3FC@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_18E1CBD4C(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_18E1C97D8(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_18E26C460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_18E1CBD4C();
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t static ResourceVariantResolverArgument.== infix(_:_:)(uint64_t a1)
{
  v2 = sub_18E1CBDB8(a1);
  v6 = *(v5 + 24);
  v8 = v4[2];
  v7 = v4[3];
  v9 = v2 == *v4 && v3 == v4[1];
  if (v9 || (v10 = sub_18E44F3CC(), result = 0, (v10 & 1) != 0))
  {
    result = (v6 | v7) == 0;
    if (v6)
    {
      if (v7)
      {
        if (v1 == v8 && v6 == v7)
        {
          return 1;
        }

        else
        {
          sub_18E1C8F70();

          return sub_18E44F3CC();
        }
      }
    }
  }

  return result;
}

uint64_t ResourceVariantResolverArgument.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_18E44EB4C();
  if (!v2)
  {
    return sub_18E44F4AC();
  }

  sub_18E44F4AC();
  sub_18E1D4BF4();

  return sub_18E44EB4C();
}

uint64_t ResourceVariantResolverArgument.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_18E44F48C();
  sub_18E44EB4C();
  sub_18E44F4AC();
  if (v1)
  {
    sub_18E44EB4C();
  }

  return sub_18E44F4CC();
}

uint64_t sub_18E26C660(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = *(v1 + 2);
  v8 = *(v1 + 1);
  v9 = v3;
  sub_18E44F48C();
  ResourceVariantResolverArgument.hash(into:)(v5);
  return sub_18E44F4CC();
}

Swift::Bool __swiftcall CatalogResource.resolvesFromArguments(arguments:)(Swift::OpaquePointer arguments)
{
  sub_18E1C575C();
  v2 = v1;
  if (qword_1ED6A8360 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v3 = off_1ED6A8720;
    v4 = sub_18E1D0080();
    v6 = v5(v4);
    v8 = sub_18E26C460(v6, v7, v3);

    if (!v8)
    {
      break;
    }

    v9 = sub_18E1D0080();
    v11 = v10(v9);
    v13 = sub_18E26C460(v11, v12, v8);

    if (!v13)
    {
      break;
    }

    v32 = v2;
    v14 = v13 + 64;
    sub_18E1C7734();
    v17 = v16 & v15;
    v2 = (v18 + 63) >> 6;

    v19 = 0;
    v30 = v13 + 64;
    v31 = v13;
    while (v17)
    {
      v20 = v32;
LABEL_12:
      if (!*(v20 + 16))
      {
LABEL_15:

LABEL_19:

        goto LABEL_20;
      }

      v22 = *(*(v13 + 56) + 8 * (__clz(__rbit64(v17)) | (v19 << 6)));

      sub_18E1C94F0();
      v23 = sub_18E1CBD4C();
      if ((v24 & 1) == 0)
      {

        goto LABEL_19;
      }

      v33 = &v29;
      v17 &= v17 - 1;
      v25 = (*(v20 + 56) + 16 * v23);
      v26 = v25[1];
      v34[0] = *v25;
      v34[1] = v26;
      MEMORY[0x1EEE9AC00](v23);
      *(&v29 - 2) = v34;

      v27 = sub_18E1CD660(sub_18E1CD848, (&v29 - 4), v22);

      v14 = v30;
      v13 = v31;
      if (!v27)
      {
        goto LABEL_15;
      }
    }

    v20 = v32;
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v2)
      {

        goto LABEL_20;
      }

      v17 = *(v14 + 8 * v21);
      ++v19;
      if (v17)
      {
        v19 = v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

LABEL_20:
  sub_18E1C5544();
  return result;
}

ModelCatalog::ResourceQuery __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResourceQuery.init(configurationIdentifier:arguments:)(ModelCatalog::ResourceQuery configurationIdentifier, Swift::OpaquePointer_optional arguments)
{
  rawValue = arguments.value._rawValue;
  if (arguments.value._rawValue)
  {
    countAndFlagsBits = configurationIdentifier.configurationIdentifier._countAndFlagsBits;
    v36 = v2;
    v37 = v3;
    object = configurationIdentifier.configurationIdentifier._object;
    v7 = arguments.value._rawValue + 64;
    sub_18E1CF244();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;

    v13 = 0;
    v39 = v12;
    v40 = rawValue;
    if (v10)
    {
LABEL_7:
      sub_18E1E64AC();
      v15 = qword_1ED6A8340;

      if (v15 != -1)
      {
        sub_18E1C663C();
        swift_once();
      }

      v16 = qword_1ED6A9848;
      if (*(qword_1ED6A9848 + 16))
      {
        v10 &= v10 - 1;
        sub_18E44F48C();
        sub_18E44EB4C();
        sub_18E44F4CC();
        sub_18E1C5B14();
        v19 = ~v18;
        while (1)
        {
          v20 = v17 & v19;
          if (((*(v16 + 56 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
          {
            break;
          }

          v21 = (*(v16 + 48) + 16 * v20);
          if (*v21 != v5 || v21[1] != v4)
          {
            v23 = sub_18E44F3CC();
            v17 = v20 + 1;
            if ((v23 & 1) == 0)
            {
              continue;
            }
          }

          v12 = v39;
          rawValue = v40;
          if (v10)
          {
            goto LABEL_7;
          }

          goto LABEL_3;
        }
      }

      type metadata accessor for CatalogErrors.QueryError(0);
      v24 = sub_18E270600();
      sub_18E1CE978(v24);

      sub_18E1D62E4();

      sub_18E1CC38C();
      v25 = sub_18E44EDBC();
      MEMORY[0x193ACC300](v25);

      sub_18E1E2CE8(v26, v27, v28, v29, v30, v31, v32, v33, v34, countAndFlagsBits, v36, v37, object, v39, v40, v41, v42);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
LABEL_3:
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v12)
        {

          configurationIdentifier.configurationIdentifier._object = object;
          configurationIdentifier.configurationIdentifier._countAndFlagsBits = countAndFlagsBits;
          v2 = v36;
          goto LABEL_21;
        }

        v10 = *&v7[8 * v14];
        ++v13;
        if (v10)
        {
          v13 = v14;
          goto LABEL_7;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_21:
    *v2 = configurationIdentifier.configurationIdentifier;
    v2[1]._countAndFlagsBits = rawValue;
  }

  configurationIdentifier.arguments = arguments;
  return configurationIdentifier;
}

void ResourceBundleQuery.init(configurationIdentifier:languageCode:otherArguments:)()
{
  sub_18E1C62A0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v29 = v6;
  v8 = v7;
  v9 = sub_18E2706EC(&qword_1EABE0DC0, &qword_18E49CE28);
  sub_18E1C5B08(v9);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = sub_18E44E6FC();
  sub_18E1C4EAC();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_18E1C4EDC();
  v19 = v18 - v17;
  if (!v1)
  {
    v1 = sub_18E44E9AC();
  }

  sub_18E270734(v3, v12);
  if (sub_18E1CAF28(v12, 1, v13) == 1)
  {
    sub_18E1E8EEC(v12, &qword_1EABE0DC0, &qword_18E49CE28);
  }

  else
  {
    (*(v15 + 32))(v19, v12, v13);
    sub_18E44E6CC();
    v25 = v5;
    v26 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    *&v27 = v1;
    v5 = v25;
    v3 = v26;
    sub_18E26FB18();
    (*(v15 + 8))(v19, v13);
    v1 = v27;
  }

  v21._countAndFlagsBits = v29;
  v21._object = v5;
  v20.value._rawValue = v1;
  ResourceBundleQuery.init(configurationIdentifier:arguments:)(v21, v20);
  sub_18E1E8EEC(v3, &qword_1EABE0DC0, &qword_18E49CE28);
  if (!v22)
  {
    v23 = v28;
    *v8 = v27;
    *(v8 + 16) = v23;
  }

  sub_18E1C6650();
}

uint64_t sub_18E26CEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = a2;
  sub_18E2701BC(a1, sub_18E286F84, 0, isUniquelyReferenced_nonNull_native, &v10, v4);
  v8 = v10;
  if (v3)
  {
  }

  return v8;
}

uint64_t sub_18E26CF50(uint64_t a1)
{
  v1 = sub_18E44E29C();
  v3 = v2;
  v4 = sub_18E44E29C();
  if (v1 == v4 && v3 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_18E221AF0(v1, v3, v4);
  }

  return v7 & 1;
}

uint64_t _s12ModelCatalog13ResourceQueryV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v2 = sub_18E1CBDB8(a1);
  v5 = v4[2];
  v6 = v2 == *v4 && v3 == v4[1];
  if (v6 || (v7 = sub_18E44F3CC(), result = 0, (v7 & 1) != 0))
  {
    if (v1)
    {
      if (v5)
      {

        sub_18E26D86C(v1, v5);
        v10 = v9;

        if (v10)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_18E26D064(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x800000018E463710 == a2;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E44F3CC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18E26D144(char a1)
{
  sub_18E44F48C();
  MEMORY[0x193ACCC20](a1 & 1);
  return sub_18E44F4CC();
}

uint64_t sub_18E26D198(char a1)
{
  if (a1)
  {
    return 0x746E656D75677261;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_18E26D1E0(uint64_t a1)
{
  v2 = *v1;
  sub_18E44F48C();
  sub_18E26C144(v4, v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E26D22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E26D064(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E26D274@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E26D13C();
  *a1 = result;
  return result;
}

uint64_t sub_18E26D29C(uint64_t a1)
{
  v2 = sub_18E2707A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E26D2D8(uint64_t a1)
{
  v2 = sub_18E2707A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResourceBundleQuery.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_18E1C62A0();
  v25 = v24;
  sub_18E2706EC(&qword_1EABE0DC8, &qword_18E49CE30);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v26);
  sub_18E1E15F4(v25, v25[3]);
  sub_18E2707A4();
  sub_18E44F4EC();
  sub_18E44F31C();
  if (!v23)
  {
    sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
    sub_18E270840(&qword_1ED6A7948, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_18E44F2FC();
  }

  v27 = sub_18E1D4BF4();
  v28(v27);
  sub_18E1C6650();
}

uint64_t _s12ModelCatalog13ResourceQueryV4hash4intoys6HasherVz_tF_0(const void *a1)
{
  v3 = *(v1 + 16);
  sub_18E44EB4C();
  if (!v3)
  {
    return sub_18E44F4AC();
  }

  sub_18E44F4AC();

  return sub_18E2704B4(a1, v3);
}

uint64_t _s12ModelCatalog13ResourceQueryV9hashValueSivg_0()
{
  v1 = *(v0 + 16);
  sub_18E44F48C();
  sub_18E44EB4C();
  sub_18E44F4AC();
  if (v1)
  {
    sub_18E2704B4(v3, v1);
  }

  return sub_18E44F4CC();
}

void ResourceBundleQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_18E1C62A0();
  v25 = v24;
  v27 = v26;
  sub_18E2706EC(&qword_1EABE0DD0, &qword_18E49CE40);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v28);
  v29 = sub_18E1CA270();
  sub_18E1E15F4(v29, v30);
  sub_18E2707A4();
  sub_18E44F4DC();
  if (v23)
  {
    sub_18E1C9934(v25);
  }

  else
  {
    v31 = sub_18E44F22C();
    v33 = v32;
    sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
    sub_18E270840(&qword_1ED6A7940, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_18E44F20C();
    v34 = sub_18E1C89D0();
    v35(v34);
    *v27 = v31;
    v27[1] = v33;
    v27[2] = v36;

    sub_18E1C9934(v25);
  }

  sub_18E1C6650();
}

uint64_t sub_18E26D7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v6 = *(v4 + 16);
  *&v8[72] = *v4;
  v9 = v6;
  sub_18E44F48C();
  a4(v8);
  return sub_18E44F4CC();
}

void sub_18E26D86C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 64;
    sub_18E1C7734();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    while (v8)
    {
      v11 = __clz(__rbit64(v8));
      v24 = (v8 - 1) & v8;
LABEL_11:
      v14 = v5;
      v15 = (*(v5 + 56) + 16 * (v11 | (v3 << 6)));
      v17 = *v15;
      v16 = v15[1];

      v18 = sub_18E1CBD4C();
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      v21 = (*(a2 + 56) + 16 * v18);
      if (*v21 == v17 && v21[1] == v16)
      {

        v5 = v14;
        v8 = v24;
      }

      else
      {
        sub_18E1C8F70();
        v23 = sub_18E44F3CC();

        v5 = v14;
        v8 = v24;
        if ((v23 & 1) == 0)
        {
          return;
        }
      }
    }

    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return;
      }

      v13 = *(v4 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v24 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_18E26D9F0()
{
  sub_18E1C575C();
  if (v0 == v1 || (v2 = v0, *(v0 + 16) != *(v1 + 16)))
  {
LABEL_16:
    sub_18E1C5544();
  }

  else
  {
    v3 = 0;
    v4 = v0 + 64;
    sub_18E1C7734();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    while (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_11:
      v13 = *(*(v2 + 56) + 8 * (v10 | (v3 << 6)));

      sub_18E1CBD4C();
      v15 = v14;

      if ((v15 & 1) == 0)
      {

        goto LABEL_16;
      }

      sub_18E26D86C(v16, v13);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v3 >= v9)
      {
        goto LABEL_16;
      }

      v12 = *(v4 + 8 * v3);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

BOOL sub_18E26DB34(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5, a2);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

unint64_t sub_18E26DB94()
{
  result = qword_1EABE0C08;
  if (!qword_1EABE0C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0C08);
  }

  return result;
}

unint64_t sub_18E26DBE8(uint64_t a1)
{
  v1 = a1;
  sub_18E44F48C();
  sub_18E1C6DAC(v1);
  sub_18E44EB4C();

  v2 = sub_18E44F4CC();

  return sub_18E26DCDC(v1, v2);
}

unint64_t sub_18E26DC70(uint64_t a1)
{
  sub_18E44F48C();
  sub_18E2704B4(v4, a1);
  v2 = sub_18E44F4CC();

  return sub_18E26DDD4(a1, v2);
}

unint64_t sub_18E26DCDC(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = sub_18E1C6DAC(*(*(v2 + 48) + i));
    v8 = v7;
    if (v6 == sub_18E1C6DAC(a1) && v8 == v9)
    {

      return i;
    }

    v11 = sub_18E44F3CC();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_18E26DDD4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {

    sub_18E26D86C(v6, a1);
    v8 = v7;

    if (v8)
    {
      break;
    }
  }

  return i;
}

char *sub_18E26DEA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_18E1C69D4(a3, result);
  }

  return result;
}

char *sub_18E26DEC0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_18E1C69D4(a3, result);
  }

  return result;
}

char *sub_18E26DEE4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[3 * a2] <= a3)
  {
    return sub_18E1C89C8(a3, result, 3 * a2);
  }

  return result;
}

char *sub_18E26DF0C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_18E1C69D4(a3, result);
  }

  return result;
}

char *sub_18E26DF34(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_18E1C69D4(a3, result);
  }

  return result;
}

char *sub_18E26DF84(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return sub_18E1C89C8(a3, result, a2);
  }

  return result;
}

char *sub_18E26DFA8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_18E1C69D4(a3, result);
  }

  return result;
}

char *sub_18E26DFCC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_18E1C69D4(a3, result);
  }

  return result;
}

void sub_18E26E004(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_18E1C4EEC(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    sub_18E1E6B8C();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_18E1E6B8C();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_18E26E0C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_18E1C69D4(a3, result);
  }

  return result;
}

void sub_18E26E0E8()
{
  sub_18E1C62A0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v152 = v6;
  v7 = sub_18E44E2BC();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C64E0();
  v157 = v9;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v10);
  v170 = &v148 - v11;
  sub_18E1C6668();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v148 - v14;
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1CA564();
  MEMORY[0x1EEE9AC00](v16);
  v166 = &v148 - v17;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v18);
  v165 = &v148 - v19;
  sub_18E1C6668();
  v21 = MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v148 - v22;
  v163 = v23;
  v164 = v5;
  v27 = v5[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v175 = *v152;
    if (!*v152)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v171 = v24;
  v148 = v3;
  v28 = 0;
  v175 = v23 + 16;
  v173 = (v23 + 32);
  v174 = (v23 + 8);
  v29 = MEMORY[0x1E69E7CC0];
  v167 = v7;
  v159 = v15;
  v149 = v25;
  v151 = &v148 - v22;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v154 = v28;
    if (v28 + 1 < v27)
    {
      v169 = v27;
      v150 = v29;
      v32 = v26;
      v33 = *v164;
      v34 = *(v23 + 72);
      v35 = v25;
      v162 = v28 + 1;
      v36 = v28;
      v37 = &v33[v34 * (v28 + 1)];
      v38 = *(v23 + 16);
      v38(v32, v37, v7);
      v39 = &v33[v34 * v36];
      v40 = v151;
      v161 = v38;
      v38(v35, v39, v7);
      LODWORD(v168) = sub_18E26CF50(v40);
      if (v1)
      {
        v147 = *v174;
        (*v174)(v35, v7);
        (v147)(v40, v7);
LABEL_124:

        sub_18E1C6650();
        return;
      }

      v153 = 0;
      v29 = v174;
      v15 = *v174;
      (*v174)(v35, v7);
      v160 = v15;
      (v15)(v40, v7);
      v41 = v154 + 2;
      v7 = &v33[v34 * (v154 + 2)];
      v31 = v162;
      v42 = v34;
      v172 = v34;
      v43 = v169;
      while (1)
      {
        v44 = v41;
        if (v31 + 1 >= v43)
        {
          break;
        }

        v15 = v31;
        v45 = v167;
        v1 = v161;
        (v161)(v165, v7, v167);
        v1(v166, v37, v45);
        v46 = sub_18E44E29C();
        v48 = v47;
        if (v46 == sub_18E44E29C() && v48 == v49)
        {
          v54 = 0;
        }

        else
        {
          v51 = sub_18E1D4BF4();
          v54 = sub_18E221AF0(v51, v52, v53);
        }

        v55 = v167;
        v29 = v160;
        (v160)(v166, v167);
        (v29)(v165, v55);
        v42 = v172;
        v7 += v172;
        v37 += v172;
        v31 = (v15 + 1);
        v41 = v44 + 1;
        v43 = v169;
        if ((v168 ^ v54))
        {
          goto LABEL_16;
        }
      }

      v31 = v43;
LABEL_16:
      if (v168)
      {
        if (v31 < v154)
        {
          goto LABEL_149;
        }

        v1 = v153;
        if (v154 >= v31)
        {
          sub_18E1CA684();
          goto LABEL_39;
        }

        if (v43 >= v44)
        {
          v56 = v44;
        }

        else
        {
          v56 = v43;
        }

        v57 = v42 * (v56 - 1);
        v58 = v42 * v56;
        v29 = v154;
        v59 = v154 * v42;
        v7 = v31;
        do
        {
          if (v29 != --v7)
          {
            v60 = *v164;
            if (!*v164)
            {
              goto LABEL_154;
            }

            v15 = v31;
            v61 = v167;
            v169 = *v173;
            v169(v157, &v60[v59], v167);
            v62 = v59 < v57 || &v60[v59] >= &v60[v58];
            if (v62)
            {
              sub_18E1E6604();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v57)
            {
              sub_18E1E6604();
              swift_arrayInitWithTakeBackToFront();
            }

            v169(&v60[v57], v157, v61);
            v1 = v153;
            v42 = v172;
          }

          ++v29;
          v57 -= v42;
          v58 -= v42;
          v59 += v42;
        }

        while (v29 < v7);
      }

      else
      {
        v1 = v153;
      }

      sub_18E1CA684();
      v30 = v154;
    }

LABEL_39:
    v63 = v164[1];
    if (v31 < v63)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_146;
      }

      if (v31 - v30 < v148)
      {
        break;
      }
    }

LABEL_62:
    if (v31 < v30)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18E3EF938();
      v29 = v134;
    }

    v91 = *(v29 + 2);
    v90 = *(v29 + 3);
    v92 = v91 + 1;
    v162 = v31;
    if (v91 >= v90 >> 1)
    {
      sub_18E3EF938();
      v29 = v135;
    }

    *(v29 + 2) = v92;
    v93 = v29 + 32;
    v94 = &v29[16 * v91 + 32];
    v95 = v162;
    *v94 = v154;
    *(v94 + 1) = v95;
    v172 = *v152;
    if (!v172)
    {
      goto LABEL_155;
    }

    if (v91)
    {
      while (1)
      {
        v96 = v92 - 1;
        v97 = &v93[16 * v92 - 16];
        v98 = &v29[16 * v92];
        if (v92 >= 4)
        {
          break;
        }

        if (v92 == 3)
        {
          v99 = *(v29 + 4);
          v100 = *(v29 + 5);
          v109 = __OFSUB__(v100, v99);
          v101 = v100 - v99;
          v102 = v109;
LABEL_82:
          if (v102)
          {
            goto LABEL_132;
          }

          v114 = *v98;
          v113 = *(v98 + 1);
          v115 = __OFSUB__(v113, v114);
          v116 = v113 - v114;
          v117 = v115;
          if (v115)
          {
            goto LABEL_135;
          }

          v118 = *(v97 + 1);
          v119 = v118 - *v97;
          if (__OFSUB__(v118, *v97))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v116, v119))
          {
            goto LABEL_140;
          }

          if (v116 + v119 >= v101)
          {
            if (v101 < v119)
            {
              v96 = v92 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v92 < 2)
        {
          goto LABEL_134;
        }

        v121 = *v98;
        v120 = *(v98 + 1);
        v109 = __OFSUB__(v120, v121);
        v116 = v120 - v121;
        v117 = v109;
LABEL_97:
        if (v117)
        {
          goto LABEL_137;
        }

        v123 = *v97;
        v122 = *(v97 + 1);
        v109 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v109)
        {
          goto LABEL_139;
        }

        if (v124 < v116)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v96 - 1 >= v92)
        {
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
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v164)
        {
          goto LABEL_152;
        }

        v128 = v29;
        v129 = &v93[16 * v96 - 16];
        v29 = *v129;
        v130 = &v93[16 * v96];
        v131 = *(v130 + 1);
        sub_18E26EC18(&(*v164)[*(v163 + 72) * *v129], &(*v164)[*(v163 + 72) * *v130], &(*v164)[*(v163 + 72) * v131], v172, v86, v87, v88, v89, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159);
        if (v1)
        {
          goto LABEL_124;
        }

        if (v131 < v29)
        {
          goto LABEL_127;
        }

        v132 = *(v128 + 2);
        if (v96 > v132)
        {
          goto LABEL_128;
        }

        *v129 = v29;
        *(v129 + 1) = v131;
        if (v96 >= v132)
        {
          goto LABEL_129;
        }

        v92 = v132 - 1;
        sub_18E2F03D0(v130 + 16, v132 - 1 - v96, &v93[16 * v96]);
        v29 = v128;
        *(v128 + 2) = v132 - 1;
        v133 = v132 > 2;
        v15 = v159;
        if (!v133)
        {
          goto LABEL_111;
        }
      }

      v103 = &v93[16 * v92];
      v104 = *(v103 - 8);
      v105 = *(v103 - 7);
      v109 = __OFSUB__(v105, v104);
      v106 = v105 - v104;
      if (v109)
      {
        goto LABEL_130;
      }

      v108 = *(v103 - 6);
      v107 = *(v103 - 5);
      v109 = __OFSUB__(v107, v108);
      v101 = v107 - v108;
      v102 = v109;
      if (v109)
      {
        goto LABEL_131;
      }

      v110 = *(v98 + 1);
      v111 = v110 - *v98;
      if (__OFSUB__(v110, *v98))
      {
        goto LABEL_133;
      }

      v109 = __OFADD__(v101, v111);
      v112 = v101 + v111;
      if (v109)
      {
        goto LABEL_136;
      }

      if (v112 >= v106)
      {
        v126 = *v97;
        v125 = *(v97 + 1);
        v109 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v109)
        {
          goto LABEL_144;
        }

        if (v101 < v127)
        {
          v96 = v92 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v163;
    v27 = v164[1];
    v28 = v162;
    v7 = v167;
    v25 = v149;
    v26 = v151;
    if (v162 >= v27)
    {
      goto LABEL_114;
    }
  }

  v64 = v30 + v148;
  if (__OFADD__(v30, v148))
  {
    goto LABEL_147;
  }

  if (v64 >= v63)
  {
    v64 = v164[1];
  }

  if (v64 < v30)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v29 = sub_18E2F02E0(v29);
LABEL_116:
    v140 = v29 + 16;
    v141 = *(v29 + 2);
    while (v141 >= 2)
    {
      if (!*v164)
      {
        goto LABEL_153;
      }

      v142 = v29;
      v29 += 16 * v141;
      v143 = *v29;
      v144 = &v140[2 * v141];
      v145 = *(v144 + 1);
      sub_18E26EC18(&(*v164)[*(v163 + 72) * *v29], &(*v164)[*(v163 + 72) * *v144], &(*v164)[*(v163 + 72) * v145], v175, v136, v137, v138, v139, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159);
      if (v1)
      {
        break;
      }

      if (v145 < v143)
      {
        goto LABEL_141;
      }

      if (v141 - 2 >= *v140)
      {
        goto LABEL_142;
      }

      *v29 = v143;
      *(v29 + 1) = v145;
      v146 = *v140 - v141;
      if (*v140 < v141)
      {
        goto LABEL_143;
      }

      v141 = *v140 - 1;
      sub_18E2F03D0(v144 + 16, v146, v144);
      *v140 = v141;
      v29 = v142;
    }

    goto LABEL_124;
  }

  if (v31 == v64)
  {
    goto LABEL_62;
  }

  v150 = v29;
  v153 = v1;
  v65 = *v164;
  v66 = *(v23 + 72);
  v172 = *(v23 + 16);
  v67 = &v65[v66 * (v31 - 1)];
  v168 = -v66;
  v169 = v65;
  v68 = (v30 - v31);
  v155 = v66;
  v156 = v64;
  v69 = &v65[v31 * v66];
  v70 = v171;
LABEL_48:
  v161 = v67;
  v162 = v31;
  v158 = v69;
  v160 = v68;
  while (1)
  {
    v71 = v172;
    (v172)(v70, v69, v7);
    v72 = sub_18E1C94F0();
    v71(v72);
    v73 = v15;
    v74 = sub_18E44E29C();
    v75 = v7;
    v77 = v76;
    if (v74 == sub_18E44E29C() && v77 == v78)
    {

      v85 = *v174;
      (*v174)(v73, v75);
      (v85)(v70, v75);
      v7 = v75;
      v15 = v73;
      goto LABEL_60;
    }

    v80 = v70;
    v81 = sub_18E44F3CC();

    v82 = *v174;
    (*v174)(v73, v75);
    (v82)(v80, v75);
    v7 = v75;
    v15 = v73;
    if ((v81 & 1) == 0)
    {
      v70 = v171;
LABEL_60:
      v31 = v162 + 1;
      v67 = &v161[v155];
      v68 = v160 - 1;
      v69 = v158 + v155;
      if (v162 + 1 == v156)
      {
        v31 = v156;
        v1 = v153;
        v29 = v150;
        v30 = v154;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v169)
    {
      break;
    }

    v83 = *v173;
    v84 = v170;
    (*v173)(v170, v69, v75);
    swift_arrayInitWithTakeFrontToBack();
    v83(v67, v84, v75);
    v67 += v168;
    v69 += v168;
    v62 = __CFADD__(v68++, 1);
    v70 = v171;
    if (v62)
    {
      goto LABEL_60;
    }
  }

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
}

void sub_18E26EC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_18E44E2BC();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v93 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v92 = &v88 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v95 = &v88 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v40 = *(v39 + 72);
  if (!v40)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v41 = v27 - v29 == 0x8000000000000000 && v40 == -1;
  if (v41)
  {
    goto LABEL_72;
  }

  v42 = v25 - v27;
  if (v25 - v27 == 0x8000000000000000 && v40 == -1)
  {
    goto LABEL_73;
  }

  v94 = &v88 - v38;
  v44 = (v27 - v29) / v40;
  a10 = v29;
  v100 = v23;
  v96 = (v37 + 8);
  v97 = (v37 + 16);
  v45 = v42 / v40;
  if (v44 < v42 / v40)
  {
    sub_18E26E004(v29, (v27 - v29) / v40, v23, MEMORY[0x1E6968178]);
    v93 = (v23 + v44 * v40);
    v99 = v93;
    v91 = v25;
    while (1)
    {
      if (v23 >= v93 || v27 >= v25)
      {
        goto LABEL_70;
      }

      v47 = v29;
      v48 = v40;
      v49 = *v97;
      v50 = v27;
      (*v97)(v94, v27, v30);
      v98 = v23;
      v51 = v95;
      v49();
      v52 = sub_18E44E29C();
      v54 = v53;
      v55 = sub_18E44E29C();
      if (v52 == v55 && v54 == v56)
      {

        v64 = *v96;
        (*v96)(v51, v30);
        v65 = sub_18E1C94F0();
        (v64)(v65);
        v40 = v48;
      }

      else
      {
        v58 = sub_18E221AF0(v52, v54, v55);

        v59 = *v96;
        (*v96)(v51, v30);
        v60 = sub_18E1C94F0();
        (v59)(v60);
        v40 = v48;
        if (v58)
        {
          v61 = v50;
          v27 = v50 + v48;
          v62 = v47;
          if (v47 < v50 || v47 >= v27)
          {
            sub_18E1C84A4();
            swift_arrayInitWithTakeFrontToBack();
            v25 = v91;
          }

          else
          {
            v25 = v91;
            if (v47 != v61)
            {
              sub_18E1C84A4();
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = v98;
          goto LABEL_40;
        }
      }

      v23 = v98 + v40;
      v62 = v47;
      v66 = v47 < v98 || v47 >= v23;
      v27 = v50;
      if (v66)
      {
        sub_18E1C84A4();
        swift_arrayInitWithTakeFrontToBack();
        v25 = v91;
      }

      else
      {
        v25 = v91;
        if (v47 != v98)
        {
          sub_18E1C84A4();
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v100 = v23;
LABEL_40:
      v29 = &v62[v40];
      a10 = v29;
    }
  }

  sub_18E26E004(v27, v42 / v40, v23, MEMORY[0x1E6968178]);
  v98 = v23;
  v67 = v23 + v45 * v40;
  v68 = -v40;
  v69 = v67;
  v95 = -v40;
LABEL_42:
  v94 = v27;
  v91 = v27 + v68;
  v70 = v25;
  v89 = v69;
  while (1)
  {
    if (v67 <= v98)
    {
      a10 = v94;
      v99 = v69;
      goto LABEL_70;
    }

    if (v94 <= v29)
    {
      break;
    }

    v90 = v69;
    v71 = v67 + v68;
    v72 = *v97;
    (*v97)(v92, v67 + v68, v30);
    (v72)(v93, v91, v30);
    v73 = sub_18E44E29C();
    v75 = v74;
    if (v73 == sub_18E44E29C() && v75 == v76)
    {
      v81 = 0;
    }

    else
    {
      v78 = sub_18E1CA270();
      v81 = sub_18E221AF0(v78, v79, v80);
    }

    v82 = &v70[v95];
    v83 = *v96;
    (*v96)(v93, v30);
    v83(v92, v30);
    if (v81)
    {
      v85 = v70 < v94 || v82 >= v94;
      v25 = v82;
      if (v85)
      {
        v27 = v91;
        sub_18E1C86B4();
        swift_arrayInitWithTakeFrontToBack();
        v69 = v90;
        v68 = v95;
      }

      else
      {
        v87 = v90;
        v86 = v91;
        v69 = v90;
        v41 = v70 == v94;
        v27 = v91;
        v68 = v95;
        if (!v41)
        {
          sub_18E1C86B4();
          swift_arrayInitWithTakeBackToFront();
          v27 = v86;
          v69 = v87;
        }
      }

      goto LABEL_42;
    }

    if (v70 < v67 || v82 >= v67)
    {
      sub_18E1C86B4();
      swift_arrayInitWithTakeFrontToBack();
      v70 = v82;
      v67 = v71;
      v69 = v71;
      v68 = v95;
    }

    else
    {
      v69 = v71;
      v41 = v67 == v70;
      v70 = v82;
      v67 = v71;
      v68 = v95;
      if (!v41)
      {
        sub_18E1C86B4();
        swift_arrayInitWithTakeBackToFront();
        v70 = v82;
        v67 = v71;
        v69 = v71;
      }
    }
  }

  a10 = v94;
  v99 = v89;
LABEL_70:
  sub_18E2F02F4(&a10, &v100, &v99);
  sub_18E1C6650();
}

char *sub_18E26F200(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E26F378(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18E26F220(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E26F48C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18E26F2D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E26F594(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18E26F2F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E26F6C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18E26F318(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E26F7F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18E26F338(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E26F8F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18E26F358(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E26F9EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18E26F378(char *result, int64_t a2, char a3, char *a4)
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
    sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
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

char *sub_18E26F48C(char *result, int64_t a2, char a3, char *a4)
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
    sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18E26F594(void *result, int64_t a2, char a3, void *a4)
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
    sub_18E2706EC(&qword_1EABE0E60, &qword_18E49D208);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18E2706EC(&qword_1EABE0E68, &qword_18E49D210);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18E26F6C8(void *result, int64_t a2, char a3, void *a4)
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
    sub_18E2706EC(&qword_1EABE0E50, &qword_18E49D1F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18E2706EC(&qword_1EABE0E58, &qword_18E49D200);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18E26F7F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_18E2706EC(&qword_1EABE0E40, &qword_18E49D1E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_18E26F8F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_18E2706EC(&qword_1EABE0E08, &qword_18E49D1B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

char *sub_18E26F9EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_18E2706EC(&qword_1EABE0E80, &qword_18E49D228);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
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

uint64_t sub_18E26FB18()
{
  sub_18E1C575C();
  v4 = v3;
  v6 = v5;
  sub_18E23458C();
  sub_18E1CBD4C();
  sub_18E1C5BE8();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_18E2706EC(&qword_1EABE0DB8, &qword_18E49CE20);
  if ((sub_18E44F0EC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_18E1CBD4C();
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_18E44F41C();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v0;
  if (v11)
  {
    v15 = (v14[7] + 16 * v10);
    *v15 = v2;
    v15[1] = v1;
    sub_18E1C5544();
  }

  else
  {
    sub_18E270070(v10, v6, v4, v2, v1, v14);
    sub_18E1C5544();
  }
}

uint64_t sub_18E26FC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E1CA0FC(a1, a2, a3);
  sub_18E1C5BE8();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  v10 = sub_18E2706EC(&qword_1EABE0EA8, qword_18E49D258);
  if ((sub_18E1C8DA0(v10) & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_18E1D0080();
  v11 = sub_18E1CBD4C();
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    result = sub_18E44F41C();
    __break(1u);
    return result;
  }

  v8 = v11;
LABEL_5:
  if (v9)
  {
    sub_18E1C9934((*(*v4 + 56) + 40 * v8));
    sub_18E1C5BFC();
    sub_18E1E1DA0();

    return sub_18E1C551C(v13, v14);
  }

  else
  {
    sub_18E1CAE1C();
    sub_18E2700BC(v17, v18, v19, v3, v20);
    sub_18E1E1DA0();
  }
}

uint64_t sub_18E26FD40()
{
  sub_18E1C575C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_18E1CBD4C();
  sub_18E1C5BE8();
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = sub_18E44F41C();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  v16 = sub_18E2706EC(v4, v2);
  if (sub_18E1C8DA0(v16))
  {
    sub_18E1D4BF4();
    sub_18E1CBD4C();
    sub_18E1C8870();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  v19 = *v0;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v14) = v10;
    sub_18E1C5544();
  }

  else
  {
    sub_18E27018C(v14, v8, v6, v10, v19);
    sub_18E1C5544();
  }
}

void sub_18E26FE48(uint64_t a1, uint64_t a2, char a3)
{
  sub_18E26DBE8(a2);
  sub_18E1C5BE8();
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v6;
  v10 = v7;
  sub_18E2706EC(&qword_1EABE0E78, &qword_18E49D220);
  if ((sub_18E44F0EC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_18E26DBE8(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_18E44F41C();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  if (v10)
  {
    *(*(*v3 + 56) + 8 * v9) = a1;
    sub_18E1E1DA0();
  }

  else
  {
    sub_18E1E1DA0();

    sub_18E270104(v15, v16, v17, v18);
  }
}

_OWORD *sub_18E26FF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E1CA0FC(a1, a2, a3);
  sub_18E1C5BE8();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_18E44F41C();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  v10 = sub_18E2706EC(&qword_1EABE0E30, &qword_18E4B0310);
  if (sub_18E1C8DA0(v10))
  {
    sub_18E1D0080();
    sub_18E1CBD4C();
    sub_18E1C8870();
    if (!v12)
    {
      goto LABEL_14;
    }

    v8 = v11;
  }

  if (v9)
  {
    sub_18E1C9934((*(*v4 + 56) + 32 * v8));
    sub_18E1C5BFC();
    sub_18E1E1DA0();

    return sub_18E270D70(v13, v14);
  }

  else
  {
    sub_18E1CAE1C();
    sub_18E270148(v17, v18, v19, v3, v20);
    sub_18E1E1DA0();
  }
}

unint64_t sub_18E270070(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_18E2700BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_18E1C527C(a1, a2, a3, a4, a5);
  result = sub_18E1C551C(v8, v7 + 40 * v6);
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

unint64_t sub_18E270104(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_18E270148(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_18E1C527C(a1, a2, a3, a4, a5);
  result = sub_18E270D70(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

unint64_t sub_18E27018C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_18E1C527C(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v11;
  }

  return result;
}

uint64_t sub_18E2701BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, char a6)
{
  v52 = a5;
  sub_18E286FC8(a1, a2, a3, v51);
  v7 = v51[1];
  v8 = v51[3];
  v9 = v51[4];
  v45 = v51[5];
  v46 = v51[0];
  v10 = (v51[2] + 64) >> 6;

  v44 = v7;
  while (v9)
  {
    v48 = a4;
LABEL_9:
    v47 = v8;
    v13 = (v8 << 10) | (16 * __clz(__rbit64(v9)));
    v14 = (*(v46 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(v46 + 56) + v13);
    v18 = *v17;
    v19 = v17[1];
    v50[0] = v15;
    v50[1] = v16;
    v50[2] = v18;
    v50[3] = v19;

    v45(v49, v50);

    v21 = v49[0];
    v20 = v49[1];
    v23 = v49[2];
    v22 = v49[3];
    v24 = *v52;
    v26 = sub_18E1CBD4C();
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_23;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v48 & 1) == 0)
      {
        sub_18E2706EC(&qword_1EABE0DB8, &qword_18E49CE20);
        sub_18E44F0FC();
      }
    }

    else
    {
      sub_18E2869C8(v29, v48 & 1);
      v31 = sub_18E1CBD4C();
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_25;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v52;
    if (v30)
    {
      if ((a6 & 1) == 0)
      {
        v34 = (v33[7] + 16 * v26);
        v23 = *v34;
        v35 = v34[1];

        v22 = v35;
      }

      v7 = v44;
      v8 = v47;

      v36 = (v33[7] + 16 * v26);
      *v36 = v23;
      v36[1] = v22;

      a4 = 1;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v37 = (v33[6] + 16 * v26);
      *v37 = v21;
      v37[1] = v20;
      v38 = (v33[7] + 16 * v26);
      *v38 = v23;
      v38[1] = v22;
      v39 = v33[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_24;
      }

      v33[2] = v41;
      a4 = 1;
      v7 = v44;
      v8 = v47;
    }
  }

  v11 = v8;
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_18E246F7C();
    }

    v9 = *(v7 + 8 * v12);
    ++v11;
    if (v9)
    {
      v48 = a4;
      v8 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_18E44F41C();
  __break(1u);
  return result;
}

uint64_t sub_18E2704B4(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  sub_18E1C7734();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x193ACCC20](v9);
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      v10 = v11;
      do
      {
LABEL_7:
        v5 &= v5 - 1;
        memcpy(__dst, a1, sizeof(__dst));

        sub_18E44EB4C();

        sub_18E44EB4C();

        result = sub_18E44F4CC();
        v9 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18E270600()
{
  result = qword_1EABDFC40;
  if (!qword_1EABDFC40)
  {
    type metadata accessor for CatalogErrors.QueryError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFC40);
  }

  return result;
}

void *sub_18E270658(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
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
    v5 = (*(a5 + 56) + 16 * a2);
    v6 = v5[1];
    *result = *v5;
    result[1] = v6;

    return sub_18E1C5BFC();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_18E2706EC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_18E270734(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE0DC0, &qword_18E49CE28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18E2707A4()
{
  result = qword_1EABE0A70;
  if (!qword_1EABE0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0A70);
  }

  return result;
}

uint64_t sub_18E2707F8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_18E270840(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_18E2707F8(&unk_1EABE1150, &qword_18E49CE38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18E2708B0()
{
  result = qword_1ED6A80F8;
  if (!qword_1ED6A80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A80F8);
  }

  return result;
}

unint64_t sub_18E270908()
{
  result = qword_1EABE0DD8;
  if (!qword_1EABE0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0DD8);
  }

  return result;
}

unint64_t sub_18E270960()
{
  result = qword_1EABE0DE0;
  if (!qword_1EABE0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0DE0);
  }

  return result;
}

__n128 sub_18E2709B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_18E2709C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_18E270A08(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_18E270A6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_18E270AAC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ResourceBundleQuery.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResourceBundleQuery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E270C6C()
{
  result = qword_1EABE0DE8;
  if (!qword_1EABE0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0DE8);
  }

  return result;
}

unint64_t sub_18E270CC4()
{
  result = qword_1EABE0A60;
  if (!qword_1EABE0A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0A60);
  }

  return result;
}

unint64_t sub_18E270D1C()
{
  result = qword_1EABE0A68;
  if (!qword_1EABE0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0A68);
  }

  return result;
}

_OWORD *sub_18E270D70(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t RawGuardrailResult.usecaseIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void RawGuardrailResult.instanceType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t RawGuardrailResult.userRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawGuardrailResult(0) + 28);
  sub_18E44E6AC();
  sub_18E1C4EEC();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t static RawGuardrailResult.InstanceType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_18E270ECC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E44F3CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E270F3C()
{
  sub_18E44F48C();
  MEMORY[0x193ACCC20](0);
  return sub_18E44F4CC();
}

uint64_t sub_18E270FA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E270EB8();
  *a1 = result;
  return result;
}

uint64_t sub_18E270FCC(uint64_t a1)
{
  v2 = sub_18E25BB90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E271008(uint64_t a1)
{
  v2 = sub_18E25BB90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E271064@<X0>(_BYTE *a1@<X8>)
{
  result = _s12ModelCatalog0B6ErrorsO17AvailabilityErrorO2eeoiySbAE_AEtFZ_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18E271090(uint64_t a1)
{
  v2 = sub_18E271298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2710CC(uint64_t a1)
{
  v2 = sub_18E271298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E271108(uint64_t a1)
{
  v2 = sub_18E25BC64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E271144(uint64_t a1)
{
  v2 = sub_18E25BC64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E271188(uint64_t a1)
{
  sub_18E44F48C();
  MEMORY[0x193ACCC20](0);
  return sub_18E44F4CC();
}

uint64_t sub_18E2711CC(uint64_t a1)
{
  v2 = sub_18E271244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E271208(uint64_t a1)
{
  v2 = sub_18E271244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_18E271244()
{
  result = qword_1EABE0EE0;
  if (!qword_1EABE0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0EE0);
  }

  return result;
}

unint64_t sub_18E271298()
{
  result = qword_1EABE07F0;
  if (!qword_1EABE07F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE07F0);
  }

  return result;
}

uint64_t RawGuardrailResult.InstanceType.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x193ACCC20](2);
  }

  return MEMORY[0x193ACCC20](v1);
}

uint64_t RawGuardrailResult.InstanceType.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_18E1CFCDC(a1);
  if (v3 == 1)
  {
    v2 = v2 != 0;
  }

  else
  {
    MEMORY[0x193ACCC20](2);
  }

  MEMORY[0x193ACCC20](v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E2713A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_18E44F48C();
  if (v3 == 1)
  {
    v2 = v2 != 0;
  }

  else
  {
    MEMORY[0x193ACCC20](2);
  }

  MEMORY[0x193ACCC20](v2);
  return sub_18E44F4CC();
}

uint64_t RawGuardrailResult.init(markedUnsafe:usecaseIdentifier:instanceType:userRequestID:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v8;
  *(a6 + 32) = v9;
  v10 = *(type metadata accessor for RawGuardrailResult(0) + 28);
  sub_18E44E6AC();
  sub_18E1C4EEC();
  v12 = *(v11 + 32);

  return v12(a6 + v10, a5);
}

uint64_t static RawGuardrailResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v5 && (sub_18E44F3CC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 3);
  v7 = *(a2 + 3);
  v8 = a2[32];
  if (a1[32] != 1)
  {
    if (v6 != v7)
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (!v6)
  {
    if (v7)
    {
      v8 = 0;
    }

    if (v8)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (!v7)
  {
    v8 = 0;
  }

  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v9 = *(type metadata accessor for RawGuardrailResult(0) + 28);

  return MEMORY[0x1EEDC4E90](&a1[v9], &a2[v9]);
}

uint64_t sub_18E271574(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E5564656B72616DLL && a2 == 0xEC00000065666173;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000018E463890 == a2;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65636E6174736E69 && a2 == 0xEC00000065707954;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7571655272657375 && a2 == 0xED00004449747365)
      {

        return 3;
      }

      else
      {
        v9 = sub_18E44F3CC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_18E2716EC(uint64_t a1)
{
  v1 = a1;
  sub_18E1CFCDC(a1);
  MEMORY[0x193ACCC20](v1);
  return sub_18E44F4CC();
}

uint64_t sub_18E27172C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_18E44F48C();
  a4(v8, v6);
  return sub_18E44F4CC();
}

uint64_t sub_18E271778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E271574(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E2717A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2716E4();
  *a1 = result;
  return result;
}

uint64_t sub_18E2717C8(uint64_t a1)
{
  v2 = sub_18E25B268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E271804(uint64_t a1)
{
  v2 = sub_18E25B268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawGuardrailResult.hash(into:)(uint64_t a1)
{
  sub_18E44F4AC();
  sub_18E44EB4C();
  v2 = *(v1 + 24);
  if (*(v1 + 32) == 1)
  {
    v2 = v2 != 0;
  }

  else
  {
    MEMORY[0x193ACCC20](2);
  }

  MEMORY[0x193ACCC20](v2);
  type metadata accessor for RawGuardrailResult(0);
  sub_18E44E6AC();
  sub_18E1C8168();
  sub_18E271F94(v3, v4, MEMORY[0x1E69695B8]);
  return sub_18E44E9EC();
}

uint64_t RawGuardrailResult.hashValue.getter(uint64_t a1)
{
  sub_18E1CFCDC(a1);
  RawGuardrailResult.hash(into:)(v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E271948(uint64_t a1)
{
  sub_18E44F48C();
  RawGuardrailResult.hash(into:)(v2);
  return sub_18E44F4CC();
}

id GuardrailResultWrapper.__allocating_init(guardrailResult:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_18E25ABD8(a1, v3 + OBJC_IVAR____TtC12ModelCatalog22GuardrailResultWrapper_guardrailResult);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_18E271FDC(a1);
  return v4;
}

id GuardrailResultWrapper.init(guardrailResult:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_18E25ABD8(a1, v1 + OBJC_IVAR____TtC12ModelCatalog22GuardrailResultWrapper_guardrailResult);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_18E271FDC(a1);
  return v4;
}

uint64_t static GuardrailResultWrapper.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EABE0EB0 = a1;
  return result;
}

uint64_t sub_18E271B44@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABE0EB0;
  return result;
}

uint64_t sub_18E271B90(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABE0EB0 = v1;
  return result;
}

uint64_t GuardrailResultWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for RawGuardrailResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_18E1C4EDC();
  v7 = v6 - v5;
  sub_18E25ABD8(v1 + OBJC_IVAR____TtC12ModelCatalog22GuardrailResultWrapper_guardrailResult, v6 - v5);
  v8 = objc_allocWithZone(ObjectType);
  sub_18E25ABD8(v7, v8 + OBJC_IVAR____TtC12ModelCatalog22GuardrailResultWrapper_guardrailResult);
  v11.receiver = v8;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  result = sub_18E271FDC(v7);
  a1[3] = ObjectType;
  *a1 = v9;
  return result;
}

uint64_t GuardrailResultWrapper.description.getter()
{
  sub_18E44EFFC();
  MEMORY[0x193ACC300](0xD000000000000013, 0x800000018E463780);
  type metadata accessor for RawGuardrailResult(0);
  sub_18E44F0DC();
  MEMORY[0x193ACC300](32032, 0xE200000000000000);
  return 0;
}

uint64_t GuardrailResultWrapper.hash.getter(uint64_t a1)
{
  sub_18E1CFCDC(a1);
  RawGuardrailResult.hash(into:)(v2);
  return sub_18E44F4CC();
}

id GuardrailResultWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GuardrailResultWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18E271F94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18E271FDC(uint64_t a1)
{
  v2 = type metadata accessor for RawGuardrailResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18E27203C()
{
  result = qword_1EABE0F38;
  if (!qword_1EABE0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0F38);
  }

  return result;
}

uint64_t sub_18E272100(uint64_t a1)
{
  result = sub_18E44E6AC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RawGuardrailResult.InstanceType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RawGuardrailResult.InstanceType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_18E2721E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E272218(uint64_t a1)
{
  result = type metadata accessor for RawGuardrailResult(319);
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

uint64_t getEnumTagSinglePayload for RawGuardrailResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RawGuardrailResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RawGuardrailResult.InstanceType.UnknownCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18E27252C()
{
  result = qword_1EABE0F48;
  if (!qword_1EABE0F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0F48);
  }

  return result;
}

unint64_t sub_18E272584()
{
  result = qword_1EABE0F50;
  if (!qword_1EABE0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0F50);
  }

  return result;
}

unint64_t sub_18E2725DC()
{
  result = qword_1EABE0F58;
  if (!qword_1EABE0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0F58);
  }

  return result;
}

unint64_t sub_18E272634()
{
  result = qword_1EABE0820;
  if (!qword_1EABE0820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0820);
  }

  return result;
}

unint64_t sub_18E27268C()
{
  result = qword_1EABE0828;
  if (!qword_1EABE0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0828);
  }

  return result;
}

unint64_t sub_18E2726E4()
{
  result = qword_1EABE07E0;
  if (!qword_1EABE07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE07E0);
  }

  return result;
}

unint64_t sub_18E27273C()
{
  result = qword_1EABE07E8;
  if (!qword_1EABE07E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE07E8);
  }

  return result;
}

unint64_t sub_18E272794()
{
  result = qword_1EABE07C0;
  if (!qword_1EABE07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE07C0);
  }

  return result;
}

unint64_t sub_18E2727EC()
{
  result = qword_1EABE07C8;
  if (!qword_1EABE07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE07C8);
  }

  return result;
}

unint64_t sub_18E272844()
{
  result = qword_1EABE07D0;
  if (!qword_1EABE07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE07D0);
  }

  return result;
}

unint64_t sub_18E27289C()
{
  result = qword_1EABE07D8;
  if (!qword_1EABE07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE07D8);
  }

  return result;
}

unint64_t sub_18E2728F4()
{
  result = qword_1EABE0800;
  if (!qword_1EABE0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0800);
  }

  return result;
}

unint64_t sub_18E27294C()
{
  result = qword_1EABE0808;
  if (!qword_1EABE0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0808);
  }

  return result;
}

uint64_t UseCaseAvailabilityInfo.resourcesReady.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_resourcesReady;
  sub_18E1C7E6C(v2 + OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_resourcesReady, a2);
  return *(v2 + v3);
}

uint64_t UseCaseAvailabilityInfo.resourcesReady.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_resourcesReady;
  result = sub_18E1C4F14(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t UseCaseAvailabilityInfo.enoughStorage.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_enoughStorage;
  sub_18E1C7E6C(v2 + OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_enoughStorage, a2);
  return *(v2 + v3);
}

uint64_t UseCaseAvailabilityInfo.enoughStorage.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_enoughStorage;
  result = sub_18E1C4F14(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t UseCaseAvailabilityInfo.diskSpaceRequired.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_diskSpaceRequired;
  sub_18E1C7E6C(v2 + OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_diskSpaceRequired, a2);
  return *(v2 + v3);
}

uint64_t UseCaseAvailabilityInfo.diskSpaceRequired.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_diskSpaceRequired;
  result = sub_18E1C4F14(a1);
  *(v1 + v3) = a1;
  return result;
}

id UseCaseAvailabilityInfo.init(resourcesReady:enoughStorage:diskSpaceRequired:)()
{
  sub_18E1C52CC();
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_resourcesReady] = v3;
  v1[OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_enoughStorage] = v2;
  *&v1[OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_diskSpaceRequired] = v0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t static UseCaseAvailabilityInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EABE0FC0 = a1;
  return result;
}

uint64_t sub_18E272DD0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABE0FC0;
  return result;
}

uint64_t sub_18E272E1C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABE0FC0 = v1;
  return result;
}

Swift::Void __swiftcall UseCaseAvailabilityInfo.encode(with:)(NSCoder with)
{
  sub_18E1C5C08(v1 + OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_resourcesReady, v10);
  sub_18E1C8180();
  v3 = sub_18E44EA8C();
  sub_18E1C89DC();

  sub_18E1C5C08(v1 + OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_enoughStorage, v9);
  sub_18E1C69E4();
  v4 = sub_18E44EA8C();
  sub_18E1C89DC();

  v5 = OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_diskSpaceRequired;
  sub_18E1C7E6C(v1 + OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_diskSpaceRequired, v6);
  v7 = *(v1 + v5);
  sub_18E1C8180();
  v8 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeInt64:v7 forKey:v8];
}

id UseCaseAvailabilityInfo.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_18E1C8180();
  v3 = sub_18E44EA8C();
  [a1 decodeBoolForKey_];

  sub_18E1C69E4();
  v4 = sub_18E44EA8C();
  [a1 decodeBoolForKey_];

  sub_18E1C8180();
  v5 = sub_18E44EA8C();
  [a1 decodeInt64ForKey_];

  v6 = objc_allocWithZone(ObjectType);
  v7 = UseCaseAvailabilityInfo.init(resourcesReady:enoughStorage:diskSpaceRequired:)();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t UseCaseAvailabilityInfo.description.getter()
{
  v1 = v0;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_18E44EFFC();
  v13 = 0;
  v14 = 0xE000000000000000;
  MEMORY[0x193ACC300](0xD000000000000012, 0x800000018E4638F0);
  v2 = OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_resourcesReady;
  sub_18E1C5C08(v1 + OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_resourcesReady, v12);
  if (*(v1 + v2))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v1 + v2))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x193ACC300](v3, v4);

  MEMORY[0x193ACC300](0xD000000000000011, 0x800000018E463910);
  v5 = OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_enoughStorage;
  sub_18E1C5C08(v1 + OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_enoughStorage, v11);
  if (*(v1 + v5))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v1 + v5))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x193ACC300](v6, v7);

  MEMORY[0x193ACC300](0xD000000000000019, 0x800000018E463930);
  sub_18E1C7E6C(v1 + OBJC_IVAR____TtC12ModelCatalog23UseCaseAvailabilityInfo_diskSpaceRequired, v8);
  v9 = sub_18E44F39C();
  MEMORY[0x193ACC300](v9);

  MEMORY[0x193ACC300](125, 0xE100000000000000);
  return v13;
}

id UseCaseAvailabilityInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UseCaseAvailabilityInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for PartnerCapabilities(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetLock(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for AssetLock(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E273598()
{
  result = sub_18E207C7C(&unk_1F011E010);
  qword_1EABDF7E8 = result;
  return result;
}

uint64_t explicitRequestResourceConfigurationIDs.getter()
{
  if (qword_1EABDF7E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_18E27361C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_18E1C551C(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_18E26FC44(v8, a2, a3);

    *v3 = v7;
  }

  else
  {
    sub_18E275468(a1, &qword_1EABE0FF0, &qword_18E49DA48);
    sub_18E27423C(v8);

    return sub_18E275468(v8, &qword_1EABE0FF0, &qword_18E49DA48);
  }

  return result;
}

uint64_t sub_18E2736F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_18E270D70(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_18E26FF6C(v8, a2, a3);

    *v3 = v7;
  }

  else
  {
    sub_18E275468(a1, &qword_1EABE3B70, &qword_18E4AAB80);
    sub_18E274338(v8);

    return sub_18E275468(v8, &qword_1EABE3B70, &qword_18E4AAB80);
  }

  return result;
}

void *static Catalog.managedResource(for:)@<X0>(uint64_t a1@<X8>)
{
  result = static Catalog.resource(for:)(&v35);
  if (v1)
  {
    return result;
  }

  if (!*(&v36 + 1))
  {
    sub_18E275468(&v35, &qword_1EABE0FF0, &qword_18E49DA48);
    v41 = 0u;
    v42 = 0u;
    *v43 = 0;
    goto LABEL_18;
  }

  sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
  sub_18E2706EC(&qword_1EABE1000, &qword_18E49DA58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *v43 = 0;
    v41 = 0u;
    v42 = 0u;
    goto LABEL_18;
  }

  if (!*(&v42 + 1))
  {
LABEL_18:
    result = sub_18E275468(&v41, &qword_1EABE0FF8, &qword_18E49DA50);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v30 = a1;
  sub_18E1C551C(&v41, v45);
  type metadata accessor for CatalogClient();
  swift_allocObject();
  CatalogClient.init()();
  v44 = MEMORY[0x1E69E7CD0];
  v4 = v46;
  v5 = v47;
  sub_18E1E15F4(v45, v46);
  result = (*(v5 + 40))(v4, v5);
  v6 = 0;
  v8 = result + 7;
  v7 = result[7];
  v32 = result;
  v9 = 1 << *(result + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  if ((v10 & v7) != 0)
  {
    while (1)
    {
      v51 = 0;
      v13 = v6;
LABEL_13:
      v14 = (v32[6] + ((v13 << 12) | (__clz(__rbit64(v11)) << 6)));
      v15 = *(v14 + 42);
      v16 = v14[2];
      v17 = *v14;
      v42 = v14[1];
      *v43 = v16;
      v41 = v17;
      *&v43[10] = v15;
      v18 = v14[1];
      v38 = *v14;
      v39 = v18;
      v40[0] = v14[2];
      *(v40 + 9) = *(v14 + 41);
      v31 = HIBYTE(v15);
      v19 = v46;
      v20 = v47;
      sub_18E1E15F4(v45, v46);
      v21 = *(v20 + 8);
      v22 = *(v21 + 24);
      sub_18E27418C(&v41, &v35);
      v22(v19, v21);
      v23 = v51;
      v24 = sub_18E277E70();
      if (v23)
      {
        break;
      }

      v25 = v24;
      v11 &= v11 - 1;

      v26 = v25[OBJC_IVAR___MCResourceStatus_status];

      v48[0] = v38;
      v48[1] = v39;
      *v49 = v40[0];
      *&v49[9] = *(v40 + 9);
      v50 = v26;
      sub_18E2745EC(v33, v48);
      v35 = v33[0];
      v36 = v33[1];
      *v37 = v34[0];
      *&v37[10] = *(v34 + 10);
      result = sub_18E2741E8(&v35);
      v6 = v13;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v35 = v38;
    v36 = v39;
    *v37 = v40[0];
    *&v37[9] = *(v40 + 9);
    v37[25] = v31;
    sub_18E2741E8(&v35);

    return sub_18E1C9934(v45);
  }

  else
  {
LABEL_9:
    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v12)
      {

        v27 = v44;
        v28 = v46;
        v29 = v47;
        sub_18E274828(v45, v46);
        (*(v29 + 48))(v27, v28, v29);

        sub_18E1E4398(v45, v30);
        return sub_18E1C9934(v45);
      }

      v11 = v8[v13];
      ++v6;
      if (v11)
      {
        v51 = 0;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static Catalog.resource(for:)@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EABDFF90 != -1)
  {
    sub_18E1C6A08();
    swift_once();
  }

  swift_beginAccess();
  v2 = off_1EABDFF98;
  if (*(off_1EABDFF98 + 2) && (v3 = sub_18E1CBD4C(), (v4 & 1) != 0))
  {
    sub_18E1E4398(v2[7] + 40 * v3, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return swift_endAccess();
}

uint64_t sub_18E273C64()
{
  if (qword_1EABDFC60 != -1)
  {
LABEL_18:
    swift_once();
  }

  v0 = off_1EABDFC68;

  sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
  v1 = sub_18E44E9AC();
  v21 = v0[2];
  if (!v21)
  {
LABEL_14:

    off_1EABDFF98 = v1;
    return result;
  }

  v2 = 0;
  v3 = (v0 + 4);
  while (1)
  {
    if (v2 >= v0[2])
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    sub_18E1E4398(v3, v23);
    v4 = v24;
    v5 = v25;
    sub_18E1E15F4(v23, v24);
    v6 = (*(v5 + 24))(v4, v5);
    v8 = v7;
    sub_18E1E4398(v23, v22);
    swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_18E1CBD4C();
    if (__OFADD__(*(v1 + 16), (v10 & 1) == 0))
    {
      goto LABEL_16;
    }

    v11 = v9;
    v12 = v10;
    sub_18E2706EC(&qword_1EABE0EA8, qword_18E49D258);
    if (sub_18E44F0EC())
    {
      break;
    }

LABEL_9:
    if (v12)
    {

      v15 = (*(v1 + 56) + 40 * v11);
      sub_18E1C9934(v15);
      sub_18E1C551C(v22, v15);
    }

    else
    {
      *(v1 + 8 * (v11 >> 6) + 64) |= 1 << v11;
      v16 = (*(v1 + 48) + 16 * v11);
      *v16 = v6;
      v16[1] = v8;
      sub_18E1C551C(v22, *(v1 + 56) + 40 * v11);
      v17 = *(v1 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_17;
      }

      *(v1 + 16) = v19;
    }

    ++v2;
    sub_18E1C9934(v23);
    v3 += 40;
    if (v21 == v2)
    {
      goto LABEL_14;
    }
  }

  v13 = sub_18E1CBD4C();
  if ((v12 & 1) == (v14 & 1))
  {
    v11 = v13;
    goto LABEL_9;
  }

  result = sub_18E44F41C();
  __break(1u);
  return result;
}

uint64_t static Catalog.resourcesLookup.getter()
{
  if (qword_1EABDFF90 != -1)
  {
    sub_18E1C6A08();
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Catalog.resourcesLookup.setter(void *a1)
{
  if (qword_1EABDFF90 != -1)
  {
    sub_18E1C6A08();
    swift_once();
  }

  swift_beginAccess();
  off_1EABDFF98 = a1;
}

uint64_t (*static Catalog.resourcesLookup.modify(uint64_t a1))()
{
  if (qword_1EABDFF90 != -1)
  {
    sub_18E1C6A08();
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static Catalog.resourceInformation(for:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CatalogClient();
  swift_allocObject();
  CatalogClient.init()();
  sub_18E277ED4();
  v3 = v2;

  return v3;
}

uint64_t static Catalog.register(resource:)(void *a1)
{
  if (qword_1EABDFF90 != -1)
  {
    sub_18E1C6A08();
    swift_once();
  }

  v2 = a1[3];
  v3 = a1[4];
  sub_18E1E15F4(a1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v6 = v5;
  sub_18E1E4398(a1, v8);
  swift_beginAccess();
  sub_18E27361C(v8, v4, v6);
  return swift_endAccess();
}

double sub_18E27423C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_18E1CBD4C();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    sub_18E2706EC(&qword_1EABE0EA8, qword_18E49D258);
    sub_18E44F0EC();

    sub_18E1C551C((*(v7 + 56) + 40 * v5), a1);
    sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
    sub_18E44F10C();
    *v1 = v7;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_18E274338@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_18E1CBD4C();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    sub_18E2706EC(&qword_1EABE0E30, &qword_18E4B0310);
    sub_18E44F0EC();

    sub_18E270D70((*(v7 + 56) + 32 * v5), a1);
    sub_18E44F10C();
    *v1 = v7;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_18E274420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = *v4;
  sub_18E44F48C();
  sub_18E44EB4C();
  if (v8 != 2)
  {
    sub_18E44F4AC();
  }

  sub_18E44F4AC();
  sub_18E44F4CC();
  sub_18E1C5B14();
  v12 = v11 & ~v10;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_16:
    v18 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v28;

    sub_18E3F30E8(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native, v20, v21, v22, v27, v28, a1, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    *v18 = v32;
    *v30 = a2;
    *(v30 + 8) = a3;
    *(v30 + 16) = a4;
    return 1;
  }

  v13 = ~v10;
  v14 = *(v9 + 48);
  while (1)
  {
    v15 = v14 + 24 * v12;
    v16 = *(v15 + 16);
    v17 = *v15 == a2 && *(v15 + 8) == a3;
    if (!v17 && (sub_18E44F3CC() & 1) == 0)
    {
      goto LABEL_15;
    }

    if (v16 != 2)
    {
      break;
    }

    if (a4 == 2)
    {
      goto LABEL_17;
    }

LABEL_15:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (a4 == 2 || ((v16 ^ a4) & 1) != 0)
  {
    goto LABEL_15;
  }

LABEL_17:

  v24 = *(v9 + 48) + 24 * v12;
  v26 = *v24;
  v25 = *(v24 + 8);
  LOBYTE(v24) = *(v24 + 16);
  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24;

  return 0;
}

BOOL sub_18E2745EC(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[1];
  v39 = *a2;
  v40 = v5;
  v7 = *a2;
  v6 = a2[1];
  v41[0] = a2[2];
  *(v41 + 10) = *(a2 + 42);
  v8 = *v2;
  v36 = v7;
  v37 = v6;
  v38[0] = a2[2];
  *(v38 + 10) = *(a2 + 42);
  sub_18E44F48C();
  ExecutionContext.hash(into:)();
  sub_18E44F4CC();
  sub_18E1C5B14();
  v11 = ~v10;
  while (1)
  {
    v12 = v9 & v11;
    v13 = (1 << (v9 & v11)) & *(v8 + 56 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v33 = v39;
      v34 = v40;
      v35[0] = v41[0];
      *(v35 + 10) = *(v41 + 10);
      *&v30 = *v3;
      sub_18E27418C(&v33, &v36);
      sub_18E3F32A0(&v33, v12);
      *v3 = v30;
      v20 = v40;
      *a1 = v39;
      a1[1] = v20;
      a1[2] = v41[0];
      *(a1 + 42) = *(v41 + 10);
      return v13 == 0;
    }

    v14 = (*(v8 + 48) + (v12 << 6));
    v15 = *(v14 + 42);
    v16 = v14[2];
    v17 = *v14;
    v37 = v14[1];
    v38[0] = v16;
    v36 = v17;
    *(v38 + 10) = v15;
    v30 = *v14;
    v31 = v14[1];
    v32[0] = v14[2];
    *(v32 + 10) = *(v14 + 42);
    sub_18E27418C(&v36, v28);
    v19 = static ExecutionContext.== infix(_:_:)(&v30, &v39, v18);
    v33 = v30;
    v34 = v31;
    v35[0] = v32[0];
    *(v35 + 10) = *(v32 + 10);
    sub_18E2741E8(&v33);
    if (v19)
    {
      break;
    }

    v9 = v12 + 1;
  }

  v28[0] = v39;
  v28[1] = v40;
  v29[0] = v41[0];
  *(v29 + 10) = *(v41 + 10);
  sub_18E2741E8(v28);
  v21 = (*(v8 + 48) + (v12 << 6));
  v23 = v21[1];
  v22 = v21[2];
  v24 = *v21;
  *(v32 + 10) = *(v21 + 42);
  v31 = v23;
  v32[0] = v22;
  v30 = v24;
  v25 = v21[1];
  *a1 = *v21;
  a1[1] = v25;
  a1[2] = v21[2];
  *(a1 + 42) = *(v21 + 42);
  sub_18E27418C(&v30, &v27);
  return v13 == 0;
}

uint64_t sub_18E274828(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_18E274878(uint64_t a1, __int128 *a2)
{
  v4 = *v2;
  v5 = a2[1];
  v48 = *a2;
  v49 = v5;
  v50 = *(a2 + 32);
  sub_18E44F48C();
  RawAvailableUseCases.RawAvailableUseCase.hash(into:)(v47);
  sub_18E44F4CC();
  sub_18E1C5B14();
  v8 = v7 & ~v6;
  v46 = v9;
  v39 = a2;
  if (((*(v9 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_48:
    swift_isUniquelyReferenced_nonNull_native();
    *&v48 = *v38;
    sub_18E2754C8(v39, v47);
    sub_18E3F346C(v39, v8);
    *v38 = v48;
    v31 = v39[1];
    *a1 = *v39;
    *(a1 + 16) = v31;
    *(a1 + 32) = *(v39 + 32);
    return;
  }

  v44 = ~v6;
  v37 = *(a2 + 32);
  v45 = *a2;
  v42 = *(a2 + 2);
  v43 = *(a2 + 1);
  v41 = *(a2 + 3);
  while (1)
  {
    v10 = *(v4 + 48) + 40 * v8;
    v12 = *(v10 + 8);
    v11 = *(v10 + 16);
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    v15 = sub_18E1C6DAC(*v10);
    v17 = v16;
    if (v15 == sub_18E1C6DAC(v45) && v17 == v18)
    {
    }

    else
    {
      v20 = sub_18E44F3CC();

      if ((v20 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    sub_18E26D86C(v12, v43);
    if ((v21 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v11)
    {
      if (v42)
      {
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if (!v42)
    {
      goto LABEL_41;
    }

    v22 = *(v11 + 16);
    if (v22 != *(v42 + 16))
    {
      goto LABEL_41;
    }

    if (v22 && v11 != v42)
    {
      break;
    }

LABEL_28:
    if (v13)
    {
      if (!v41)
      {
        goto LABEL_41;
      }

      v27 = *(v13 + 16);
      if (v27 != *(v41 + 16))
      {
        goto LABEL_41;
      }

      if (v27 && v13 != v41)
      {
        v28 = (v13 + 40);
        v29 = (v41 + 40);
        while (1)
        {
          v30 = *(v28 - 1) == *(v29 - 1) && *v28 == *v29;
          if (!v30 && (sub_18E44F3CC() & 1) == 0)
          {
            break;
          }

          v28 += 2;
          v29 += 2;
          if (!--v27)
          {
            goto LABEL_40;
          }
        }

LABEL_41:

        goto LABEL_42;
      }

LABEL_40:
    }

    else
    {

      if (v41)
      {
        goto LABEL_42;
      }
    }

    if (((v14 ^ v37) & 1) == 0)
    {
      sub_18E275524(v39);
      v32 = *(v4 + 48) + 40 * v8;
      v33 = *v32;
      v34 = *(v32 + 8);
      v35 = *(v32 + 16);
      v36 = *(v32 + 24);
      LOBYTE(v32) = *(v32 + 32);
      *a1 = v33;
      *(a1 + 8) = v34;
      *(a1 + 16) = v35;
      *(a1 + 24) = v36;
      *(a1 + 32) = v32;

      return;
    }

LABEL_42:
    v8 = (v8 + 1) & v44;
    if (((*(v46 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  v24 = (v11 + 40);
  v25 = (v42 + 40);
  while (v22)
  {
    v26 = *(v24 - 1) == *(v25 - 1) && *v24 == *v25;
    if (!v26 && (sub_18E44F3CC() & 1) == 0)
    {
      goto LABEL_41;
    }

    v24 += 2;
    v25 += 2;
    if (!--v22)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  __break(1u);
}

uint64_t sub_18E274C80(uint64_t a1, uint64_t *a2)
{
  v48 = *v2;
  sub_18E44F48C();
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v42 = a2;
  v10 = *(a2 + 48);
  sub_18E44EB4C();
  v49 = v7;
  sub_18E44EB4C();
  v44 = v9;
  v45 = v8;
  sub_18E44EB4C();
  sub_18E44F4AC();
  if (v10 != 15)
  {
    RequestResourcesKey.rawValue.getter();
    sub_18E44EB4C();
  }

  sub_18E44F4CC();
  sub_18E1C5B14();
  v13 = v12 & ~v11;
  v47 = v14;
  if (((*(v14 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_67:
    swift_isUniquelyReferenced_nonNull_native();
    v50 = *v41;
    sub_18E2753B8(v42, v51);
    sub_18E3F3840(v42, v13);
    *v41 = v50;
    v32 = *(v42 + 1);
    *a1 = *v42;
    *(a1 + 16) = v32;
    *(a1 + 32) = *(v42 + 2);
    *(a1 + 48) = *(v42 + 48);
    return 1;
  }

  v46 = ~v11;
  while (1)
  {
    v15 = *(v48 + 48) + 56 * v13;
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    v18 = *(v15 + 32);
    v19 = *(v15 + 40);
    v20 = *(v15 + 48);
    v21 = *v15 == v4 && *(v15 + 8) == v5;
    if (!v21 && (sub_18E44F3CC() & 1) == 0)
    {
      goto LABEL_66;
    }

    v22 = v17 == v6 && v16 == v49;
    if (!v22 && (sub_18E44F3CC() & 1) == 0)
    {
      goto LABEL_66;
    }

    v23 = v18 == v45 && v19 == v44;
    if (!v23 && (sub_18E44F3CC() & 1) == 0)
    {
      goto LABEL_66;
    }

    if (v20 == 15)
    {
      if (v10 == 15)
      {
        goto LABEL_69;
      }

      goto LABEL_66;
    }

    v24 = 0xEF31765F65677261;
    v25 = 0xEF31765F65677261;
    v26 = 0x6C5F6D6C65646F63;
    v27 = 0x6C5F6D6C65646F63;
    switch(v20)
    {
      case 1:
        break;
      case 2:
        v27 = sub_18E1C4F34();
        goto LABEL_41;
      case 3:
        v27 = sub_18E1C4F34();
        goto LABEL_32;
      case 4:
        v27 = sub_18E1C4F34();
        goto LABEL_39;
      case 5:
        v27 = sub_18E1C4F34();
        goto LABEL_35;
      case 6:
        v27 = 0x735F6D6C65646F63;
        v25 = 0xED00007974656661;
        break;
      case 7:
        v27 = sub_18E1C4EC0();
        v25 = 0xEF31765F65677261;
        break;
      case 8:
        v27 = sub_18E1C4EC0();
LABEL_41:
        v25 = 0xEF32765F65677261;
        break;
      case 9:
        v27 = sub_18E1C4EC0();
LABEL_32:
        v25 = 0xEF33765F65677261;
        break;
      case 10:
        v27 = sub_18E1C4EC0();
LABEL_39:
        v25 = 0xEF34765F65677261;
        break;
      case 11:
        v27 = sub_18E1C4EC0();
LABEL_35:
        v25 = 0xEF35765F65677261;
        break;
      case 12:
        v27 = 0xD000000000000016;
        v25 = 0x800000018E45B3A0;
        break;
      case 13:
        v27 = 0xD000000000000015;
        v25 = 0x800000018E45B3C0;
        break;
      case 14:
        v27 = 0xD000000000000014;
        v25 = 0x800000018E45B3E0;
        break;
      default:
        v27 = 0xD000000000000016;
        v25 = 0x800000018E45B2D0;
        break;
    }

    v28 = v26;
    v29 = v24;
    switch(v10)
    {
      case 0:
        v28 = 0xD000000000000016;
        v29 = 0x800000018E45B2D0;
        break;
      case 1:
        break;
      case 2:
        sub_18E1C7770();
        goto LABEL_60;
      case 3:
        sub_18E1C7770();
        goto LABEL_51;
      case 4:
        sub_18E1C7770();
        goto LABEL_58;
      case 5:
        sub_18E1C7770();
        goto LABEL_54;
      case 6:
        v28 = 0x735F6D6C65646F63;
        v29 = 0xED00007974656661;
        break;
      case 7:
        sub_18E1C7E88();
        v29 = v29 | 0xEF31765F00000000;
        break;
      case 8:
        sub_18E1C7E88();
LABEL_60:
        v29 = v29 | 0xEF32765F00000000;
        break;
      case 9:
        sub_18E1C7E88();
LABEL_51:
        v29 = v29 | 0xEF33765F00000000;
        break;
      case 10:
        sub_18E1C7E88();
LABEL_58:
        v29 = v29 | 0xEF34765F00000000;
        break;
      case 11:
        sub_18E1C7E88();
LABEL_54:
        v29 = v29 | 0xEF35765F00000000;
        break;
      case 12:
        v28 = 0xD000000000000016;
        v29 = 0x800000018E45B3A0;
        break;
      case 13:
        v28 = 0xD000000000000015;
        v29 = 0x800000018E45B3C0;
        break;
      case 14:
        v28 = 0xD000000000000014;
        v29 = 0x800000018E45B3E0;
        break;
      default:
        goto LABEL_66;
    }

    if (v27 == v28 && v25 == v29)
    {
      break;
    }

    v31 = sub_18E44F3CC();

    if (v31)
    {
      goto LABEL_69;
    }

LABEL_66:
    v13 = (v13 + 1) & v46;
    if (((*(v47 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_67;
    }
  }

LABEL_69:
  sub_18E275414(v42);
  v34 = *(v48 + 48) + 56 * v13;
  v36 = *v34;
  v35 = *(v34 + 8);
  v37 = *(v34 + 16);
  v38 = *(v34 + 24);
  v39 = *(v34 + 32);
  v40 = *(v34 + 40);
  LOBYTE(v34) = *(v34 + 48);
  *a1 = v36;
  *(a1 + 8) = v35;
  *(a1 + 16) = v37;
  *(a1 + 24) = v38;
  *(a1 + 32) = v39;
  *(a1 + 40) = v40;
  *(a1 + 48) = v34;

  return 0;
}

BOOL sub_18E27523C(_BYTE *a1, uint64_t a2)
{
  v26 = a1;
  v4 = *v2;
  sub_18E44F48C();
  sub_18E1C6DAC(a2);
  sub_18E44EB4C();

  sub_18E44F4CC();
  sub_18E1C5B14();
  v7 = ~v6;
  while (1)
  {
    v8 = v5 & v7;
    v9 = (1 << (v5 & v7)) & *(v4 + 56 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      v16 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_18E3F3EA4(a2, v8, isUniquelyReferenced_nonNull_native, v18, v19, v20, v21, v22, v24, v25, v26, *v25, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
      *v16 = v27;
      goto LABEL_12;
    }

    v10 = sub_18E1C6DAC(*(*(v4 + 48) + v8));
    v12 = v11;
    if (v10 == sub_18E1C6DAC(a2) && v12 == v13)
    {
      break;
    }

    v15 = sub_18E44F3CC();

    if (v15)
    {
      goto LABEL_11;
    }

    v5 = v8 + 1;
  }

LABEL_11:
  LOBYTE(a2) = *(*(v4 + 48) + v8);
LABEL_12:
  result = v9 == 0;
  *v26 = a2;
  return result;
}

uint64_t sub_18E275468(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_18E2706EC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_18E275578(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_18E26F2D8(0, v1, 0);
  v2 = v35;
  result = sub_18E32EE50();
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v26 = v3 + 64;
  v27 = v1;
  v28 = v3 + 56;
  v29 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v8;
      v31 = v5;
      v11 = *(v3 + 48) + 40 * v7;
      v33 = *v11;
      v34 = v6;
      v12 = *(v11 + 8);
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      v32 = *(v11 + 32);
      v16 = *(v35 + 16);
      v15 = *(v35 + 24);

      if (v16 >= v15 >> 1)
      {
        result = sub_18E26F2D8((v15 > 1), v16 + 1, 1);
      }

      *(v35 + 16) = v16 + 1;
      v17 = v35 + 40 * v16;
      *(v17 + 32) = v33;
      *(v17 + 40) = v12;
      *(v17 + 48) = v13;
      *(v17 + 56) = v14;
      *(v17 + 64) = v32;
      if (v34)
      {
        goto LABEL_29;
      }

      v9 = v28;
      v3 = v29;
      v18 = 1 << *(v29 + 32);
      if (v7 >= v18)
      {
        goto LABEL_26;
      }

      v19 = *(v28 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v29 + 36) != v31)
      {
        goto LABEL_28;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_18E249F2C(v7, v31, 0);
            v18 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        result = sub_18E249F2C(v7, v31, 0);
      }

LABEL_19:
      v8 = v30 + 1;
      if (v30 + 1 == v27)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v29 + 36);
      v7 = v18;
      if (v18 < 0)
      {
        break;
      }
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
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t CatalogClient.__allocating_init()()
{
  v0 = swift_allocObject();
  CatalogClient.init()();
  return v0;
}

uint64_t static CatalogClient.canAccessService()()
{
  if (qword_1EABE0AE8 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v0 = off_1EABE0AF0;
    v1 = *(off_1EABE0AF0 + 2);
    if (!v1)
    {
      break;
    }

    v2 = 0;
    v3 = (off_1EABE0AF0 + 40);
    v4 = MEMORY[0x1E69E6370];
    while (v2 < v0[2])
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = qword_1EABE0C88;

      if (v7 != -1)
      {
        swift_once();
      }

      sub_18E1E4398(&unk_1EAC7F520, v12 + 1);
      v8 = v13;
      v9 = v14;
      sub_18E1E15F4((v12 + 1), v13);
      (*(v9 + 8))(v12, v5, v6, v4, v4, v8, v9);

      v10 = v12[0];
      if (LOBYTE(v12[0]) == 2)
      {
        sub_18E1C9934((v12 + 1));
      }

      else
      {
        sub_18E1C9934((v12 + 1));
        if (v10)
        {
          return 1;
        }
      }

      ++v2;
      v3 += 2;
      if (v1 == v2)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

  return 0;
}

id static CatalogClient.assetDeliveryReady()()
{
  v0 = [objc_opt_self() sharedManager];
  v1 = [v0 assetDeliveryReady];

  if (qword_1ED6A8418 != -1)
  {
    swift_once();
  }

  v2 = sub_18E44E83C();
  sub_18E1CE8B4(v2, qword_1ED6A9858);
  v3 = sub_18E44E80C();
  sub_18E44EE2C();
  v4 = sub_18E223CA0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    v6[1] = v1;
    sub_18E1D4AC0();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  return v1;
}

void static CatalogClient.generativeExperienceEssentialResourcesStatus()(char *a1@<X8>)
{
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_18E44E46C();
  sub_18E1C4EAC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C4EDC();
  sub_18E1E2C60();
  v9 = sub_18E44E54C();
  sub_18E1C4EAC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_18E1C4EDC();
  v15 = v14 - v13;
  v16 = [objc_opt_self() sharedManager];
  v17 = [v16 assetDeliveryReady];

  if (v17)
  {
    type metadata accessor for CatalogIndex(0);
    (*(v7 + 104))(v1, *MEMORY[0x1E6968F58], v5);
    sub_18E1E1480();
    sub_18E201DC8(v18, v19, v20, v9);
    sub_18E44E51C();
    static CatalogIndex.essentialResources(sideLoadUrl:)();
    v22 = v21;
    (*(v11 + 8))(v15, v9);

    AssetLock.init(resources:)(v23, &v53);
    v34 = static CatalogIndex.notReady(resources:lock:)(v22, &v53);

    if (v34)
    {
      if (qword_1ED6A94F8 != -1)
      {
        sub_18E1C5C20(&qword_1ED6A94F8);
      }

      v35 = sub_18E44E83C();
      sub_18E1CE8B4(v35, qword_1ED6A98C0);
      v36 = sub_18E44E80C();
      sub_18E44EE2C();
      v37 = sub_18E223CA0();
      if (os_log_type_enabled(v37, v38))
      {
        sub_18E1CAE28();
        *swift_slowAlloc() = 0;
        sub_18E1C96F0();
        _os_log_impl(v39, v40, v41, v42, v43, 2u);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
      }

      v28 = 1;
    }

    else
    {
      if (qword_1ED6A94F8 != -1)
      {
        sub_18E1C5C20(&qword_1ED6A94F8);
      }

      v44 = sub_18E44E83C();
      sub_18E1CE8B4(v44, qword_1ED6A98C0);
      v45 = sub_18E44E80C();
      sub_18E44EE2C();
      v46 = sub_18E223CA0();
      if (os_log_type_enabled(v46, v47))
      {
        sub_18E1CAE28();
        *swift_slowAlloc() = 0;
        sub_18E1C96F0();
        _os_log_impl(v48, v49, v50, v51, v52, 2u);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
      }

      v28 = 0;
    }
  }

  else
  {
    if (qword_1ED6A94F8 != -1)
    {
      sub_18E1C5C20(&qword_1ED6A94F8);
    }

    v24 = sub_18E44E83C();
    sub_18E1CE8B4(v24, qword_1ED6A98C0);
    v25 = sub_18E44E80C();
    sub_18E44EE2C();
    v26 = sub_18E223CA0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = 2;
      sub_18E1CAE28();
      *swift_slowAlloc() = 0;
      sub_18E1D4AC0();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v28 = 2;
    }
  }

  *a1 = v28;
}

void sub_18E2760CC(uint64_t a1, uint64_t (*a2)(unint64_t))
{
  v4 = RequestResourcesKey.rawValue.getter();
  v5 = a2(v4);
  if (v2)
  {
  }

  else
  {
    v6 = v5;
  }
}

void sub_18E2761D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  a19 = v21;
  a20 = v22;
  v23 = sub_18E2763BC();
  if (v20)
  {
LABEL_14:
    sub_18E1C6650();
  }

  else
  {
    v24 = v23;
    a10 = MEMORY[0x1E69E7CC0];
    v25 = sub_18E286914(v23);
    for (i = 0; ; ++i)
    {
      if (v25 == i)
      {

        goto LABEL_14;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x193ACC7B0](i, v24);
      }

      else
      {
        if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v27 = *(v24 + i + 4);
      }

      v28 = v27;
      if (__OFADD__(i, 1))
      {
        break;
      }

      ResourceContainer.toResource()();

      if (v37)
      {
        sub_18E1C551C(&v36, v39);
        sub_18E1C551C(v39, &v36);
        v29 = v37;
        v30 = v38;
        sub_18E274828(&v36, v37);
        sub_18E1C5780();
        MEMORY[0x1EEE9AC00](v31);
        sub_18E1C4EDC();
        v34 = v33 - v32;
        (*(v35 + 16))(v33 - v32);
        sub_18E244FC8(v34, &a10, v29, v30);
        sub_18E1C9934(&v36);
      }

      else
      {
        sub_18E1CC340(&v36, &qword_1EABE0FF0, &qword_18E49DA48);
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void sub_18E276424(uint64_t a1, uint64_t a2, void *a3)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18E2764DC;
  v5[3] = &unk_1F01406D8;
  v4 = _Block_copy(v5);

  [a3 resourceContainersWith_];
  _Block_release(v4);
}

void sub_18E2764F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  a19 = v21;
  a20 = v22;
  v23 = sub_18E27673C();
  if (v20)
  {
LABEL_18:
    sub_18E1C6650();
  }

  else
  {
    v24 = v23;
    v25 = 0;
    v40 = v23 & 0xC000000000000001;
    v41 = sub_18E286914(v23);
    v26 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v41 == v25)
      {

        goto LABEL_18;
      }

      if (v40)
      {
        v27 = MEMORY[0x193ACC7B0](v25, v24);
      }

      else
      {
        if (v25 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v27 = *(v24 + 8 * v25 + 32);
      }

      v28 = v27;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      ResourceBundleContainer.toResourceBundle()();

      if (v43)
      {
        sub_18E1C551C(&v42, v45);
        sub_18E1C551C(v45, &v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a10 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_18E1C6868();
          sub_18E231D60();
          v26 = v38;
          a10 = v38;
        }

        v30 = *(v26 + 16);
        if (v30 >= *(v26 + 24) >> 1)
        {
          sub_18E231D60();
          v26 = v39;
          a10 = v39;
        }

        v32 = v43;
        v31 = v44;
        sub_18E274828(&v42, v43);
        sub_18E1C5780();
        MEMORY[0x1EEE9AC00](v33);
        sub_18E1C4EDC();
        v36 = v35 - v34;
        (*(v37 + 16))(v35 - v34);
        sub_18E2870F8(v30, v36, &a10, v32, v31);
        sub_18E1C9934(&v42);
      }

      else
      {
        sub_18E1CC340(&v42, &qword_1EABE1010, &unk_18E4E24D0);
      }

      ++v25;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

uint64_t sub_18E2767A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_18E1CD710(a1, a2, a3, a4);
  *(v9 + 16) = v8;
  *(v9 + 24) = v5;
  v10 = qword_1ED6A8B58;

  if (v10 != -1)
  {
    sub_18E1C593C();
    swift_once();
  }

  v11 = sub_18E44E83C();
  sub_18E1CE8B4(v11, qword_1ED6A9888);
  v12 = sub_18E44E80C();
  sub_18E44EE2C();
  v13 = sub_18E223CA0();
  if (os_log_type_enabled(v13, v14))
  {
    sub_18E1CAE28();
    *swift_slowAlloc() = 0;
    sub_18E1CE8CC(&dword_18E1C1000);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  v4(v6, v9, v7);
}

void sub_18E276894(uint64_t a1, uint64_t a2, void *a3)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18E27694C;
  v5[3] = &unk_1F0140688;
  v4 = _Block_copy(v5);

  [a3 resourceBundleContainersWith_];
  _Block_release(v4);
}

uint64_t sub_18E276964(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a2)
  {
    a4(0);
    v5 = sub_18E44EC9C();
  }

  v7 = a3;
  v6(v5, a3);
}

void sub_18E2769FC(uint64_t a1)
{
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16[-v5 - 8];
  type metadata accessor for ResourceContainer();
  sub_18E1E4398(a1, v16);
  static ResourceContainer.from(resource:)();
  v8 = v7;
  sub_18E1CC340(v16, &qword_1EABE0FF0, &qword_18E49DA48);
  if (!v1)
  {
    sub_18E44E54C();
    sub_18E1E1480();
    sub_18E201DC8(v9, v10, v11, v12);
    sub_18E1E11B4();
    sub_18E276B44();
    v14 = v13;

    sub_18E1CC340(v6, &qword_1EABE2FE0, &qword_18E49CE00);
  }
}

void sub_18E276B44()
{
  sub_18E1C62A0();
  v135 = v0;
  v3 = v2;
  v141 = *MEMORY[0x1E69E9840];
  sub_18E44E46C();
  sub_18E1C4EAC();
  v132 = v5;
  v133 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C4EDC();
  v131 = v7 - v6;
  v8 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v9 = sub_18E1C5B08(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C86C0();
  sub_18E1CA6A8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v118 - v11);
  sub_18E44E54C();
  sub_18E1C4EAC();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_18E1C86C0();
  v129 = v16 - v17;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v18);
  sub_18E1C617C();
  v128 = v19;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v20);
  sub_18E1C617C();
  v127 = v21;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v22);
  sub_18E1C617C();
  v130 = v23;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v24);
  sub_18E1C617C();
  v134 = v25;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v118 - v27;
  v30 = v29;
  sub_18E288AE0();
  if (sub_18E1CAF28(v12, 1, v30) == 1)
  {
    v31 = &qword_1EABE2FE0;
    v32 = &qword_18E49CE00;
    v33 = v12;
LABEL_3:
    sub_18E1CC340(v33, v31, v32);
    goto LABEL_4;
  }

  (*(v14 + 32))(v28, v12, v30);
  ResourceContainer.toResource()();
  if (v1)
  {
    v36 = sub_18E1E6A50();
    v37(v36);
    goto LABEL_30;
  }

  v125 = v28;
  v126 = v14;
  if (!v137)
  {
    (*(v126 + 8))(v125, v30);
    v31 = &qword_1EABE0FF0;
    v32 = &qword_18E49DA48;
    v33 = &v136;
    goto LABEL_3;
  }

  v121 = 0;
  v120 = v3;
  sub_18E1C551C(&v136, v138);
  v38 = [objc_opt_self() defaultManager];
  v39 = *MEMORY[0x1E6968F58];
  v40 = v131;
  v41 = v132;
  v42 = v133;
  v122 = *(v132 + 104);
  v122(v131, v39, v133);
  sub_18E1E1480();
  sub_18E201DC8(v43, v44, v45, v30);
  v46 = v134;
  sub_18E44E51C();
  v47 = sub_18E44E4AC();
  *&v136 = 0;
  v124 = v38;
  v48 = [v38 createDirectoryAtURL:v47 withIntermediateDirectories:1 attributes:0 error:&v136];
  v49 = v30;
  v50 = v48;

  v51 = v136;
  v52 = v125;
  if (!v50)
  {
    v78 = v136;
    sub_18E1E1F80();
    sub_18E44E44C();

    swift_willThrow();
    v79 = *(v126 + 8);
    v79(v46, v49);
    v79(v52, v49);
LABEL_29:
    sub_18E1C9934(v138);
    goto LABEL_30;
  }

  v123 = v49;
  v53 = v139;
  v54 = v140;
  v118 = sub_18E1E15F4(v138, v139);
  v119 = *(v54 + 24);
  v55 = v51;
  v56 = v119(v53, v54);
  v58 = v57;
  *&v136 = v56;
  *(&v136 + 1) = v57;
  v122(v40, *MEMORY[0x1E6968F70], v42);
  sub_18E24D39C();
  v59 = v130;
  sub_18E44E52C();
  (*(v41 + 8))(v40, v42);

  sub_18E44E4EC();
  sub_18E44EA8C();
  sub_18E1E1F80();

  v60 = v124;
  v61 = [v124 fileExistsAtPath_];

  v62 = v126;
  v63 = v129;
  if (v61)
  {
    if (qword_1ED6A8AB0 != -1)
    {
      sub_18E1C5568(&qword_1ED6A8AB0);
    }

    v64 = sub_18E44E83C();
    sub_18E1C95EC(v64, qword_1ED6A9870);
    v65 = v127;
    v66 = v123;
    (*(v62 + 16))(v127, v59, v123);
    v67 = sub_18E44E80C();
    v68 = sub_18E44EE2C();
    if (os_log_type_enabled(v67, v68))
    {
      sub_18E1E2FE8();
      v69 = v66;
      v66 = swift_slowAlloc();
      sub_18E1CA69C();
      v70 = swift_slowAlloc();
      *&v136 = v70;
      *v66 = 136315138;
      sub_18E1C84D0();
      sub_18E288D58(v71, v72, MEMORY[0x1E6968FE0]);
      v73 = sub_18E44F39C();
      v75 = v74;
      v76 = v69;
      v63 = v129;
      v133 = *(v126 + 8);
      (v133)(v65, v76);
      v77 = sub_18E1C9624(v73, v75, &v136);

      *(v66 + 4) = v77;
      _os_log_impl(&dword_18E1C1000, v67, v68, "Removing exisitng sideloaded asset files: %s", v66, 0xCu);
      sub_18E1C9934(v70);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v80 = sub_18E1CF9A0();
      v133 = v81;
      v81(v80);
    }

    v59 = v130;
    sub_18E44E4EC();
    sub_18E44EA8C();
    sub_18E1E1F80();

    *&v136 = 0;
    v82 = [v60 removeItemAtPath:v66 error:&v136];

    v83 = v125;
    if (!v82)
    {
      v114 = v136;
      sub_18E1E1F80();
      sub_18E44E44C();

      swift_willThrow();
      v115 = v123;
      v116 = v133;
      (v133)(v59, v123);
      v117 = sub_18E1E6A50();
      v116(v117);
      (v116)(v83, v115);
      goto LABEL_29;
    }

    v84 = v136;
    v62 = v126;
  }

  v85 = v125;
  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C5568(&qword_1ED6A8AB0);
  }

  v86 = sub_18E44E83C();
  sub_18E1C95EC(v86, qword_1ED6A9870);
  v87 = (v62 + 16);
  v88 = *(v62 + 16);
  v89 = v128;
  v90 = v123;
  v88(v128, v85, v123);
  v88(v63, v59, v90);
  v91 = sub_18E44E80C();
  v92 = sub_18E44EE2C();
  if (os_log_type_enabled(v91, v92))
  {
    sub_18E1C9700();
    v93 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    *&v136 = v133;
    *v93 = 136315394;
    sub_18E1C84D0();
    sub_18E288D58(v94, v95, MEMORY[0x1E6968FE0]);
    LODWORD(v132) = v92;
    sub_18E1E6A50();
    v96 = sub_18E44F39C();
    v98 = v97;
    v99 = *(v126 + 8);
    v99(v89, v90);
    v100 = sub_18E1C9624(v96, v98, &v136);

    *(v93 + 4) = v100;
    *(v93 + 12) = 2080;
    sub_18E1E6A50();
    v101 = sub_18E44F39C();
    v87 = v102;
    v99(v63, v90);
    v103 = sub_18E1C9624(v101, v87, &v136);

    *(v93 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v91, v132, "Copying sideloading asset files %s to %s", v93, 0x16u);
    swift_arrayDestroy();
    v104 = sub_18E1C86D0();
    MEMORY[0x193ACD400](v104);
    v85 = v125;
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  else
  {

    v99 = *(v62 + 8);
    v99(v63, v90);
    v99(v89, v90);
  }

  sub_18E44E4EC();
  sub_18E44EA8C();
  sub_18E1E1F80();

  sub_18E44E4DC();
  v105 = sub_18E44EA8C();

  *&v136 = 0;
  v106 = v124;
  v107 = [v124 copyItemAtPath:v87 toPath:v105 error:&v136];

  if (!v107)
  {
    v111 = v136;
    sub_18E1E1F80();
    sub_18E44E44C();

    swift_willThrow();
    v112 = sub_18E1E30C0();
    (v99)(v112);
    v113 = sub_18E1CF9A0();
    (v99)(v113);
    v99(v85, v87);
    goto LABEL_29;
  }

  v108 = v136;

  v109 = sub_18E1E30C0();
  (v99)(v109);
  v110 = sub_18E1CF9A0();
  (v99)(v110);
  v99(v85, v87);
  sub_18E1C9934(v138);
  v3 = v120;
LABEL_4:
  if (*(v135 + 16))
  {
    v34 = v3;

    sub_18E441638(v35, v34);

LABEL_30:
    sub_18E1C6650();
    return;
  }

  __break(1u);
}

void sub_18E2776FC(uint64_t a1)
{
  type metadata accessor for ResourceBundleContainer();
  sub_18E1E4398(a1, v6);
  static ResourceBundleContainer.from(resourceBundle:)();
  v4 = v3;
  sub_18E1CC340(v6, &qword_1EABE1010, &unk_18E4E24D0);
  if (!v1)
  {
    v5 = sub_18E2777A8(v4);
  }
}

void *sub_18E2777A8(void *result)
{
  if (*(v1 + 16))
  {
    v2 = result;

    sub_18E4416C8(v3, v2);
    sub_18E25E13C();
    return sub_18E1DD230();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18E277800()
{
  sub_18E277830();
  if (!v0)
  {
  }
}

void sub_18E277830()
{
  sub_18E1C62A0();
  v66 = v1;
  v69 = v2;
  v70 = v0;
  v73 = v3;
  v74[2] = *MEMORY[0x1E69E9840];
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v63 - v6;
  v7 = sub_18E44E46C();
  sub_18E1C4EAC();
  v9 = v8;
  v67 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  v13 = v12 - v11;
  v14 = sub_18E44E54C();
  sub_18E1C4EAC();
  v72 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_18E1C86C0();
  v65 = v17 - v18;
  sub_18E1C6668();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = (&v63 - v21);
  MEMORY[0x1EEE9AC00](v20);
  sub_18E1D7DC0();
  v23 = *(v9 + 13);
  v23(v13, *MEMORY[0x1E6968F58], v7);
  sub_18E1E1480();
  v71 = v14;
  sub_18E201DC8(v24, v25, v26, v14);
  v27 = v69;
  sub_18E44E51C();
  v74[0] = v73;
  v74[1] = v27;
  v23(v13, *MEMORY[0x1E6968F70], v7);
  sub_18E24D39C();
  v68 = v0;
  sub_18E44E52C();
  v28 = v22;
  v67[1](v13, v7);
  v29 = objc_opt_self();
  v30 = [v29 defaultManager];
  sub_18E44E4EC();
  v31 = sub_18E44EA8C();

  LODWORD(v22) = [v30 fileExistsAtPath_];

  v32 = v70;
  if (v22)
  {
    v64 = v29;
    if (qword_1ED6A8AB0 != -1)
    {
      sub_18E1C5568(&qword_1ED6A8AB0);
    }

    v33 = sub_18E44E83C();
    sub_18E1C95EC(v33, qword_1ED6A9870);
    v34 = v71;
    v35 = v72;
    v36 = *(v72 + 16);
    v37 = v65;
    v67 = v28;
    v36(v65, v28, v71);
    v38 = sub_18E44E80C();
    v39 = sub_18E44EE2C();
    if (os_log_type_enabled(v38, v39))
    {
      sub_18E1E2FE8();
      v40 = swift_slowAlloc();
      sub_18E1CA69C();
      v41 = swift_slowAlloc();
      v74[0] = v41;
      *v40 = 136315138;
      sub_18E1C84D0();
      sub_18E288D58(v42, v43, MEMORY[0x1E6968FE0]);
      v44 = sub_18E44F39C();
      v45 = v34;
      v46 = v27;
      v48 = v47;
      v49 = v37;
      v50 = *(v35 + 8);
      v50(v49, v45);
      v51 = sub_18E1C9624(v44, v48, v74);
      v27 = v46;

      *(v40 + 4) = v51;
      _os_log_impl(&dword_18E1C1000, v38, v39, "Removing sideloaded asset files: %s", v40, 0xCu);
      sub_18E1C9934(v41);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v52 = v37;
      v50 = *(v35 + 8);
      v50(v52, v34);
    }

    v53 = [v64 defaultManager];
    v28 = v67;
    sub_18E44E4EC();
    v54 = sub_18E44EA8C();

    v74[0] = 0;
    v55 = [v53 removeItemAtPath:v54 error:v74];

    if (!v55)
    {
      v62 = v74[0];
      sub_18E44E44C();

      swift_willThrow();
      v59 = v71;
      v50(v28, v71);
      goto LABEL_14;
    }

    v56 = v74[0];
    v32 = v70;
  }

  if (*(v32 + 2))
  {

    v58 = v66;
    sub_18E44266C(v57, v73, v27);
    v59 = v71;
    v60 = v72;
    if (!v58)
    {

      v61 = *(v60 + 8);
      v61(v28, v59);
      v61(v68, v59);
LABEL_15:
      sub_18E1C6650();
      return;
    }

    v50 = *(v60 + 8);
    v50(v28, v59);
LABEL_14:
    v50(v68, v59);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_18E277E14(uint64_t a1, uint64_t a2)
{
  v3 = sub_18E277E44(a1, a2);
  if (!v2)
  {
  }
}

id sub_18E277E70()
{
  v0 = type metadata accessor for StatusResponse();
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR___MCResourceStatus_status] = 2;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_18E277ED4()
{
  sub_18E1C62A0();
  v3 = v2;
  v5 = v4;
  v6 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v7 = sub_18E1C5B08(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C86C0();
  sub_18E1DD308();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v57 - v12;
  if (*(v0 + 16))
  {

    sub_18E440810(v14, v5, v3, v15, v16, v17, v18, v19, v57, v58, v59, v60[0], v60[1], v60[2], v61, v62, v63, *(&v63 + 1), v64, *(&v64 + 1));
    v21 = v20;

    if (v1)
    {
LABEL_4:
      sub_18E1C6650();
      return;
    }

    sub_18E288AE0();
    v22 = *&v21[OBJC_IVAR___MCResourceInformation_metadata];

    sub_18E24C058(v5, v3);
    if (v61)
    {
      sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
      sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
      if (swift_dynamicCast())
      {
        if (*(&v64 + 1))
        {
          v69 = v21;
          sub_18E1C551C(&v63, v66);
          v23 = v67;
          v24 = v68;
          v25 = sub_18E1E15F4(v66, v67);
          v26 = *(v24 + 32);
          v58 = v25;
          v59 = v26;
          *(&v64 + 1) = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          sub_18E1E1774(&v63);
          (v59)(v23, v24);
          sub_18E288AE0();
          v27 = v61;
          if (v61)
          {
            v28 = v62;
            sub_18E1E15F4(v60, v61);
            v29 = (*(v28 + 96))(v27, v28);
            sub_18E1C9934(v60);
          }

          else
          {
            sub_18E1CC340(v60, &qword_1EABE1020, &qword_18E49DAA8);
            v29 = sub_18E44E9AC();
          }

          if (!v22)
          {
            v22 = sub_18E44E9AC();
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60[0] = v29;
          sub_18E286CC8(v22, sub_18E286F84, 0, isUniquelyReferenced_nonNull_native, v60);
          sub_18E288AE0();
          v43 = v61;
          if (v61)
          {
            v44 = v62;
            sub_18E1E15F4(v60, v61);
            swift_getAssociatedTypeWitness();
            v59 = &v57;
            sub_18E1C4EAC();
            v57 = v45;
            v58 = v46;
            sub_18E1C5924();
            MEMORY[0x1EEE9AC00](v47);
            v49 = &v57 - v48;
            (*(v44 + 80))(v43);
            v50 = v57;
            v51 = swift_getAssociatedConformanceWitness();
            (*(v51 + 8))(v50, v51);
            (v58[1])(v49, v50);
            sub_18E1CC340(v13, &qword_1EABE2FE0, &qword_18E49CE00);
            v52 = sub_18E44E54C();
            sub_18E201DC8(v11, 0, 1, v52);
            sub_18E1C9934(v60);
          }

          else
          {
            sub_18E1CC340(v13, &qword_1EABE2FE0, &qword_18E49CE00);
            sub_18E1CC340(v60, &qword_1EABE1020, &qword_18E49DAA8);
            sub_18E44E54C();
            sub_18E1E1480();
            sub_18E201DC8(v53, v54, v55, v56);
          }

          v21 = v69;
          sub_18E288B30();
          sub_18E1CC340(&v63, &qword_1EABE1020, &qword_18E49DAA8);
          sub_18E1C9934(v66);
          goto LABEL_13;
        }
      }

      else
      {
        AssociatedConformanceWitness = 0;
        v63 = 0u;
        v64 = 0u;
      }
    }

    else
    {
      sub_18E1CC340(v60, &qword_1EABE0FF0, &qword_18E49DA48);
      v63 = 0u;
      v64 = 0u;
      AssociatedConformanceWitness = 0;
    }

    sub_18E1CC340(&v63, &qword_1EABE1018, &unk_18E4AAB70);
LABEL_13:
    sub_18E288AE0();
    v30 = objc_allocWithZone(type metadata accessor for ResourceInformation(0));
    v31 = ResourceInformation.init(location:metadata:)();
    if (qword_1ED6A8B58 != -1)
    {
      sub_18E1C593C();
      swift_once();
    }

    v32 = sub_18E44E83C();
    sub_18E1C95EC(v32, qword_1ED6A9888);
    v33 = v31;
    v34 = sub_18E44E80C();
    v35 = sub_18E44EE2C();

    if (os_log_type_enabled(v34, v35))
    {
      sub_18E1E2FE8();
      v36 = swift_slowAlloc();
      sub_18E1CA69C();
      v59 = swift_slowAlloc();
      v66[0] = v59;
      *v36 = 136315138;
      v37 = [v33 debugDescription];
      v70 = v21;
      v38 = sub_18E44EAAC();
      v40 = v39;

      v41 = sub_18E1C9624(v38, v40, v66);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_18E1C1000, v34, v35, "Resource Info is: %s", v36, 0xCu);
      sub_18E1C9934(v59);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {
    }

    sub_18E1CC340(v13, &qword_1EABE2FE0, &qword_18E49CE00);
    goto LABEL_4;
  }

  __break(1u);
}

void sub_18E2787A4()
{
  v1 = *(v0[2] + 16);
  v0[3] = v1;
  if (v1)
  {
    sub_18E1C6170();
    sub_18E1C8DC0();
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_18E27886C;

    v3(sub_18E278A50, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E27886C()
{
  sub_18E1C6170();
  v3 = v2;
  sub_18E1C64F4();
  v5 = v4;
  sub_18E1C6684();
  *v6 = v5;
  v7 = *v1;
  sub_18E1C52E0();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (!v0)
  {

    *(v5 + 48) = v3;
  }

  sub_18E1E6BA0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18E27897C()
{
  sub_18E1C52F0();
  v1 = *(v0 + 48);
  v2 = [v1 BOOLValue];

  sub_18E1C6500();

  return v3(v2);
}

uint64_t sub_18E2789F0()
{
  sub_18E1C52F0();

  sub_18E1C6500();

  return v0(0);
}

uint64_t sub_18E278A50(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = qword_1ED6A8B58;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_18E44E83C();
  sub_18E1C95EC(v8, qword_1ED6A9888);
  v9 = sub_18E44E80C();
  v10 = sub_18E44EE2C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_18E1C1000, v9, v10, "calling generativeExperiencesEssentialResourcesReady()", v11, 2u);
    MEMORY[0x193ACD400](v11, -1, -1);
  }

  sub_18E279AE0(sub_18E1E0F7C, v6, a1, &unk_1F0140638, &selRef_generativeExperiencesEssentialResourcesReadyWith_);
}

uint64_t sub_18E278BA4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18E278BC8, 0, 0);
}

uint64_t sub_18E278BC8()
{
  sub_18E1CAF5C();
  sub_18E1E3848();
  sub_18E1E6788();
  if (v1)
  {
LABEL_2:
    os_unfair_lock_unlock(v0 + 6);
    sub_18E1D008C();

    return v2();
  }

  sub_18E1CF444();
  if (!v4)
  {
    sub_18E2885F0();
    sub_18E1D0098();
    v19 = swift_allocError();
    sub_18E1CBDCC(v19, v20);
    goto LABEL_2;
  }

  v5 = v4;
  sub_18E1C8880();
  v6 = swift_task_alloc();
  sub_18E1C89FC(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  v16 = swift_task_alloc();
  sub_18E1CF8E8(v16);
  sub_18E1D121C(0, &qword_1EABE05F0, 0x1E696AD98);
  sub_18E1E2D00();
  MEMORY[0] = v17;
  MEMORY[8] = sub_18E278D10;
  sub_18E1C4F44();
  v18 = sub_18E1C62D4();

  return MEMORY[0x1EEE6DE38](v18);
}

uint64_t sub_18E278D10()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  sub_18E1C6684();
  *v4 = v3;
  v5 = *v1;
  sub_18E1C52E0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E278E10(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18E278E34, 0, 0);
}

uint64_t sub_18E278E34()
{
  sub_18E1CAF5C();
  sub_18E1E3848();
  sub_18E1E6788();
  if (v1)
  {
LABEL_2:
    os_unfair_lock_unlock(v0 + 6);
    sub_18E1D008C();

    return v2();
  }

  sub_18E1CF444();
  if (!v4)
  {
    sub_18E2885F0();
    sub_18E1D0098();
    v19 = swift_allocError();
    sub_18E1CBDCC(v19, v20);
    goto LABEL_2;
  }

  v5 = v4;
  sub_18E1C8880();
  v6 = swift_task_alloc();
  sub_18E1C89FC(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  v16 = swift_task_alloc();
  sub_18E1CF8E8(v16);
  sub_18E2706EC(&qword_1EABE10A8, &qword_18E49DCF0);
  sub_18E1E2D00();
  MEMORY[0] = v17;
  MEMORY[8] = sub_18E278D10;
  sub_18E1C4F44();
  v18 = sub_18E1C62D4();

  return MEMORY[0x1EEE6DE38](v18);
}

uint64_t sub_18E278F78(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18E278F9C, 0, 0);
}

uint64_t sub_18E278F9C()
{
  sub_18E1CAF5C();
  sub_18E1E3848();
  sub_18E1E6788();
  if (v1)
  {
LABEL_2:
    os_unfair_lock_unlock(v0 + 6);
    sub_18E1D008C();

    return v2();
  }

  sub_18E1CF444();
  if (!v4)
  {
    sub_18E2885F0();
    sub_18E1D0098();
    v19 = swift_allocError();
    sub_18E1CBDCC(v19, v20);
    goto LABEL_2;
  }

  v5 = v4;
  sub_18E1C8880();
  v6 = swift_task_alloc();
  sub_18E1C89FC(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  v16 = swift_task_alloc();
  sub_18E1CF8E8(v16);
  sub_18E2706EC(&qword_1EABE1090, &qword_18E4E3AA0);
  sub_18E1E2D00();
  MEMORY[0] = v17;
  MEMORY[8] = sub_18E278D10;
  sub_18E1C4F44();
  v18 = sub_18E1C62D4();

  return MEMORY[0x1EEE6DE38](v18);
}

uint64_t sub_18E2790E0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18E279104, 0, 0);
}

uint64_t sub_18E279104()
{
  sub_18E1CAF5C();
  sub_18E1E3848();
  sub_18E1E6788();
  if (v1)
  {
LABEL_2:
    os_unfair_lock_unlock(v0 + 6);
    sub_18E1D008C();

    return v2();
  }

  sub_18E1CF444();
  if (!v4)
  {
    sub_18E2885F0();
    sub_18E1D0098();
    v19 = swift_allocError();
    sub_18E1CBDCC(v19, v20);
    goto LABEL_2;
  }

  v5 = v4;
  sub_18E1C8880();
  v6 = swift_task_alloc();
  sub_18E1C89FC(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  v16 = swift_task_alloc();
  sub_18E1CF8E8(v16);
  type metadata accessor for AvailableUseCasesWrapper();
  sub_18E1E2D00();
  MEMORY[0] = v17;
  MEMORY[8] = sub_18E27923C;
  sub_18E1C4F44();
  v18 = sub_18E1C62D4();

  return MEMORY[0x1EEE6DE38](v18);
}

uint64_t sub_18E27923C()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  sub_18E1C6684();
  *v4 = v3;
  v5 = *v1;
  sub_18E1C52E0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E27933C()
{
  sub_18E1C52F0();

  sub_18E1C6500();

  return v1();
}

uint64_t sub_18E27939C()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v1();
}

uint64_t sub_18E279400()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v1();
}

uint64_t sub_18E279464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18E279488, 0, 0);
}

uint64_t sub_18E279488()
{
  sub_18E1CAF5C();
  sub_18E1E3848();
  sub_18E1E6788();
  if (v1)
  {
LABEL_2:
    os_unfair_lock_unlock(v0 + 6);
    sub_18E1D008C();

    return v3();
  }

  sub_18E1CF444();
  if (!v5)
  {
    sub_18E2885F0();
    sub_18E1D0098();
    v20 = swift_allocError();
    sub_18E1CBDCC(v20, v21);
    goto LABEL_2;
  }

  v6 = v5;
  sub_18E1C8880();
  v7 = swift_task_alloc();
  sub_18E1C89FC(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  swift_task_alloc();
  sub_18E2016A8();
  *(v2 + 64) = v17;
  *v17 = v18;
  v17[1] = sub_18E2795D0;
  sub_18E1C4F44();
  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DE38](v19);
}

uint64_t sub_18E2795D0()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  sub_18E1C6684();
  *v4 = v3;
  v5 = *v1;
  sub_18E1C52E0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E2796D0()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v1();
}

void sub_18E27972C()
{
  if (*(v0 + 16))
  {

    v3 = sub_18E4441E4(v2);

    if (!v1)
    {
      [v3 BOOLValue];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E2797CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_18E1CD710(a1, a2, a3, a4);
  *(v9 + 16) = v8;
  *(v9 + 24) = v5;
  v10 = qword_1ED6A8B58;

  if (v10 != -1)
  {
    sub_18E1C593C();
    swift_once();
  }

  v11 = sub_18E44E83C();
  sub_18E1CE8B4(v11, qword_1ED6A9888);
  v12 = sub_18E44E80C();
  sub_18E44EE2C();
  v13 = sub_18E223CA0();
  if (os_log_type_enabled(v13, v14))
  {
    sub_18E1CAE28();
    *swift_slowAlloc() = 0;
    sub_18E1CE8CC(&dword_18E1C1000);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  sub_18E279AE0(v6, v9, v7, v4, &selRef_hasEnoughStorageForGenerativeExperiencesEssentialResourcesWith_);
}

void sub_18E2798D8()
{
  v1 = *(v0[2] + 16);
  v0[3] = v1;
  if (v1)
  {
    sub_18E1C6170();
    sub_18E1C8DC0();
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_18E2799A0;

    v3(sub_18E279AB0, 0);
  }

  else
  {
    __break(1u);
  }
}