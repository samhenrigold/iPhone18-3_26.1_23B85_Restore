uint64_t LicenseRecord.hashValue.getter()
{
  sub_1D30E98AC();
  sub_1D2FF675C(&qword_1EE313B00, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  sub_1D30E903C();
  return sub_1D30E98EC();
}

uint64_t *sub_1D2FF6270(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  v4[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749500, &qword_1D30EF6D8);
  v4[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v4 + 2);
  sub_1D30E8ECC();
  sub_1D30E8AFC();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v4 + 2);
  sub_1D2FE02DC(a1, (v4 + 2));
  swift_endAccess();
  return v4;
}

uint64_t sub_1D2FF63A8(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  sub_1D2FE02DC(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t (*sub_1D2FF6400(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2FE022C(v1 + 16, v4);
  return sub_1D2FF8C70;
}

void sub_1D2FF6490(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1D2FE022C(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    sub_1D2FE02DC((v2 + 40), v3 + 16);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    sub_1D2FE02DC(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1D2FF6634(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

unint64_t sub_1D2FF66B4()
{
  result = qword_1EC7494A0;
  if (!qword_1EC7494A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7494A0);
  }

  return result;
}

unint64_t sub_1D2FF6708()
{
  result = qword_1EC7494A8;
  if (!qword_1EC7494A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7494A8);
  }

  return result;
}

uint64_t sub_1D2FF675C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D2FF67A4()
{
  result = qword_1EC7494C0;
  if (!qword_1EC7494C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7494C0);
  }

  return result;
}

unint64_t sub_1D2FF6818()
{
  result = qword_1EC7494E0;
  if (!qword_1EC7494E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7494E0);
  }

  return result;
}

unint64_t sub_1D2FF686C()
{
  result = qword_1EC7494E8;
  if (!qword_1EC7494E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7494E8);
  }

  return result;
}

uint64_t sub_1D2FF68C0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749208, &qword_1D30EEC18);
    sub_1D2FF675C(a2, type metadata accessor for LicenseRecord.ElementID, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2FF695C()
{
  result = qword_1EC7494F8;
  if (!qword_1EC7494F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7494F8);
  }

  return result;
}

uint64_t sub_1D2FF69B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2FF6A18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2FF6A78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C61626F6C67 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xE900000000000044 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EB250 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t sub_1D2FF6BA0(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749590, &qword_1D30EFDD8);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749598, &qword_1D30EFDE0);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7495A0, &qword_1D30EFDE8);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7495A8, &unk_1D30EFDF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D2FF7EA8();
  v13 = v34;
  sub_1D30E990C();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_1D30E96AC();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1D302D668();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1D2FF7F50();
          sub_1D30E95FC();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v35);
          return v9;
        }

        v40 = 2;
        sub_1D2FF7EFC();
        v24 = v11;
        sub_1D30E95FC();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1D2FF7FA4();
        v24 = v11;
        sub_1D30E95FC();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_1D30E94EC();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30) + 48);
    *v22 = &type metadata for LicenseRecord.StaticRepresentation.State;
    sub_1D30E960C();
    sub_1D30E94DC();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v9;
}

uint64_t sub_1D2FF7110(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4965736E6563696CLL && a2 == 0xE900000000000044;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E656D656C65 && a2 == 0xEA00000000007344 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4474736575716572 && a2 == 0xEB00000000657461)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t _s29ManagedBackgroundAssetsHelper13LicenseRecordC14schemaMetadataSay9SwiftData6SchemaC08PropertyH0VGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491B8, &qword_1D30EEB60);
  sub_1D30E8F8C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D30EE920;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C0, &qword_1D30EEB90);
  sub_1D30E8FCC();
  *(swift_allocObject() + 16) = xmmword_1D30EE930;
  sub_1D30E8FBC();
  sub_1D30E8FDC();
  swift_allocObject();
  sub_1D30E8FEC();
  sub_1D2FF675C(&qword_1EE3140E0, MEMORY[0x1E697BD30], MEMORY[0x1E697BD28]);
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  return v0;
}

uint64_t sub_1D2FF759C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2FF781C(uint64_t a1)
{
  result = sub_1D30E8B0C();
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

uint64_t sub_1D2FF7920(uint64_t a1)
{
  result = sub_1D30E8A4C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D2FF79CC(uint64_t a1)
{
  sub_1D2FF7A68(319);
  if (v1 <= 0x3F)
  {
    sub_1D30E8A2C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D2FF7A68(uint64_t a1)
{
  if (!qword_1EE314088)
  {
    type metadata accessor for LicenseRecord.ElementID(255);
    v1 = sub_1D30E919C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE314088);
    }
  }
}

uint64_t getEnumTagSinglePayload for LicenseRecord.StaticRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LicenseRecord.StaticRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D2FF7C44()
{
  result = qword_1EC749518;
  if (!qword_1EC749518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749518);
  }

  return result;
}

unint64_t sub_1D2FF7C9C()
{
  result = qword_1EC749520;
  if (!qword_1EC749520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749520);
  }

  return result;
}

unint64_t sub_1D2FF7CF4()
{
  result = qword_1EC749528;
  if (!qword_1EC749528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749528);
  }

  return result;
}

unint64_t sub_1D2FF7D4C()
{
  result = qword_1EC749530;
  if (!qword_1EC749530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749530);
  }

  return result;
}

unint64_t sub_1D2FF7DA4()
{
  result = qword_1EC749538;
  if (!qword_1EC749538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749538);
  }

  return result;
}

unint64_t sub_1D2FF7DFC()
{
  result = qword_1EC749540;
  if (!qword_1EC749540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749540);
  }

  return result;
}

unint64_t sub_1D2FF7E54()
{
  result = qword_1EC749548;
  if (!qword_1EC749548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749548);
  }

  return result;
}

unint64_t sub_1D2FF7EA8()
{
  result = qword_1EC749570;
  if (!qword_1EC749570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749570);
  }

  return result;
}

unint64_t sub_1D2FF7EFC()
{
  result = qword_1EC749578;
  if (!qword_1EC749578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749578);
  }

  return result;
}

unint64_t sub_1D2FF7F50()
{
  result = qword_1EC749580;
  if (!qword_1EC749580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749580);
  }

  return result;
}

unint64_t sub_1D2FF7FA4()
{
  result = qword_1EC749588;
  if (!qword_1EC749588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749588);
  }

  return result;
}

unint64_t sub_1D2FF7FF8()
{
  result = qword_1EC7495B0;
  if (!qword_1EC7495B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495B0);
  }

  return result;
}

void sub_1D2FF804C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = (a6 >> 60) & 3;
  if (v7 == 1)
  {
  }

  else if (!v7)
  {

    sub_1D2FF1804(a3, a4);

    sub_1D2FF1804(a5, a6);
  }
}

unint64_t sub_1D2FF8108()
{
  result = qword_1EC7495B8;
  if (!qword_1EC7495B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495B8);
  }

  return result;
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

uint64_t get_enum_tag_for_layout_string_29ManagedBackgroundAssetsHelper13LicenseRecordC5StateO(uint64_t a1)
{
  if (((*(a1 + 40) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 40) >> 60) & 3;
  }
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

uint64_t sub_1D2FF81C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 48))
  {
    return (*a1 + 14);
  }

  v3 = ((*(a1 + 40) >> 60) & 3 | (*(a1 + 24) >> 58) & 0xC) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D2FF8224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = ((-a2 >> 2) & 3) << 60;
      *(result + 32) = 0;
      *(result + 40) = (((-a2 >> 2) & 3 | (4 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_1D2FF82A0(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
    *(result + 24) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 40) = v2;
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x2000000000000000;
  }

  return result;
}

unint64_t sub_1D2FF8338()
{
  result = qword_1EC7495C0;
  if (!qword_1EC7495C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495C0);
  }

  return result;
}

unint64_t sub_1D2FF8390()
{
  result = qword_1EC7495C8;
  if (!qword_1EC7495C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495C8);
  }

  return result;
}

unint64_t sub_1D2FF83E8()
{
  result = qword_1EC7495D0;
  if (!qword_1EC7495D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495D0);
  }

  return result;
}

unint64_t sub_1D2FF8440()
{
  result = qword_1EC7495D8;
  if (!qword_1EC7495D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495D8);
  }

  return result;
}

unint64_t sub_1D2FF8498()
{
  result = qword_1EC7495E0;
  if (!qword_1EC7495E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495E0);
  }

  return result;
}

unint64_t sub_1D2FF84F0()
{
  result = qword_1EC7495E8;
  if (!qword_1EC7495E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495E8);
  }

  return result;
}

unint64_t sub_1D2FF8548()
{
  result = qword_1EC7495F0;
  if (!qword_1EC7495F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495F0);
  }

  return result;
}

unint64_t sub_1D2FF85A0()
{
  result = qword_1EC7495F8;
  if (!qword_1EC7495F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495F8);
  }

  return result;
}

unint64_t sub_1D2FF85F8()
{
  result = qword_1EC749600;
  if (!qword_1EC749600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749600);
  }

  return result;
}

unint64_t sub_1D2FF864C()
{
  result = qword_1EC749628;
  if (!qword_1EC749628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749628);
  }

  return result;
}

unint64_t sub_1D2FF86A0()
{
  result = qword_1EC749630;
  if (!qword_1EC749630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749630);
  }

  return result;
}

unint64_t sub_1D2FF86F4()
{
  result = qword_1EC749638;
  if (!qword_1EC749638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749638);
  }

  return result;
}

unint64_t sub_1D2FF8748()
{
  result = qword_1EC749640;
  if (!qword_1EC749640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749640);
  }

  return result;
}

unint64_t sub_1D2FF879C()
{
  result = qword_1EC749648;
  if (!qword_1EC749648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749648);
  }

  return result;
}

unint64_t sub_1D2FF87F0()
{
  result = qword_1EC749670;
  if (!qword_1EC749670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749670);
  }

  return result;
}

unint64_t sub_1D2FF8888()
{
  result = qword_1EC749678;
  if (!qword_1EC749678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749678);
  }

  return result;
}

unint64_t sub_1D2FF88E0()
{
  result = qword_1EC749680;
  if (!qword_1EC749680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749680);
  }

  return result;
}

unint64_t sub_1D2FF8938()
{
  result = qword_1EC749688;
  if (!qword_1EC749688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749688);
  }

  return result;
}

unint64_t sub_1D2FF8990()
{
  result = qword_1EC749690;
  if (!qword_1EC749690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749690);
  }

  return result;
}

unint64_t sub_1D2FF89E8()
{
  result = qword_1EC749698;
  if (!qword_1EC749698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749698);
  }

  return result;
}

unint64_t sub_1D2FF8A40()
{
  result = qword_1EC7496A0;
  if (!qword_1EC7496A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7496A0);
  }

  return result;
}

unint64_t sub_1D2FF8A98()
{
  result = qword_1EC7496A8;
  if (!qword_1EC7496A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7496A8);
  }

  return result;
}

unint64_t sub_1D2FF8AF0()
{
  result = qword_1EC7496B0;
  if (!qword_1EC7496B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7496B0);
  }

  return result;
}

unint64_t sub_1D2FF8B48()
{
  result = qword_1EC7496B8;
  if (!qword_1EC7496B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7496B8);
  }

  return result;
}

unint64_t sub_1D2FF8BA0()
{
  result = qword_1EC7496C0;
  if (!qword_1EC7496C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7496C0);
  }

  return result;
}

unint64_t sub_1D2FF8BF8()
{
  result = qword_1EC7496C8;
  if (!qword_1EC7496C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7496C8);
  }

  return result;
}

uint64_t AppLicenseDelivery.Request.StaticRepresentation.requestData.getter()
{
  v1 = *(v0 + 16);
  sub_1D2FF17B0(v1, *(v0 + 24));
  return v1;
}

uint64_t AppLicenseDelivery.Request.StaticRepresentation.wrappedKeyData.getter()
{
  v1 = *(v0 + 32);
  sub_1D2FF17B0(v1, *(v0 + 40));
  return v1;
}

uint64_t AppLicenseDelivery.Request.StaticRepresentation.description.getter()
{
  v1 = *(v0 + 8);
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0xD000000000000025, 0x80000001D30EB1E0);
  v2 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v2);

  MEMORY[0x1D38B2610](0x6E6F697372657620, 0xEE00203A73444920);
  v3 = sub_1D30E8A4C();
  v4 = MEMORY[0x1D38B26B0](v1, v3);
  MEMORY[0x1D38B2610](v4);

  MEMORY[0x1D38B2610](0x7473657571657220, 0xEF203A6174616420);
  v5 = sub_1D30E88EC();
  MEMORY[0x1D38B2610](v5);

  MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EB270);
  v6 = sub_1D30E88EC();
  MEMORY[0x1D38B2610](v6);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D2FF8EAC()
{
  v1 = 0x4965736E6563696CLL;
  v2 = 0x4474736575716572;
  if (*v0 != 2)
  {
    v2 = 0x4B64657070617277;
  }

  if (*v0)
  {
    v1 = 0x496E6F6973726576;
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

uint64_t sub_1D2FF8F44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2FFF248(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2FF8F6C(uint64_t a1)
{
  v2 = sub_1D2FF9270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF8FA8(uint64_t a1)
{
  v2 = sub_1D2FF9270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppLicenseDelivery.Request.StaticRepresentation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749718, &qword_1D30F07B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v20 = v1[2];
  v21 = v8;
  v10 = v1[5];
  v18 = v1[4];
  v19 = v9;
  v17 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FF9270();
  sub_1D30E992C();
  LOBYTE(v22) = 0;
  sub_1D30E975C();
  if (!v2)
  {
    v12 = v19;
    v11 = v20;
    v13 = v17;
    v14 = v18;
    v22 = v21;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749728, &qword_1D30F07B8);
    sub_1D2FF9648(&qword_1EC749730, &qword_1EC7494B0, MEMORY[0x1E69695B0], MEMORY[0x1E69E6300]);
    sub_1D30E974C();
    v22 = v11;
    v23 = v12;
    v24 = 2;
    sub_1D2FF17B0(v11, v12);
    sub_1D2FF92C4();
    sub_1D30E974C();
    sub_1D2FF1804(v22, v23);
    v22 = v14;
    v23 = v13;
    v24 = 3;
    sub_1D2FF17B0(v14, v13);
    sub_1D30E974C();
    sub_1D2FF1804(v22, v23);
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D2FF9270()
{
  result = qword_1EC749720;
  if (!qword_1EC749720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749720);
  }

  return result;
}

unint64_t sub_1D2FF92C4()
{
  result = qword_1EC749738;
  if (!qword_1EC749738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749738);
  }

  return result;
}

uint64_t AppLicenseDelivery.Request.StaticRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749740, &unk_1D30F07C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FF9270();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v19 = sub_1D30E969C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749728, &qword_1D30F07B8);
  v22 = 1;
  sub_1D2FF9648(&qword_1EC749748, &qword_1EC7494C8, MEMORY[0x1E69695D0], MEMORY[0x1E69E6330]);
  sub_1D30E967C();
  v9 = v20;
  v22 = 2;
  sub_1D2FF96E8();
  sub_1D30E967C();
  v18 = v9;
  v10 = v20;
  v17 = v21;
  v22 = 3;
  sub_1D30E967C();
  (*(v6 + 8))(v8, v5);
  v11 = v20;
  v12 = v21;
  v13 = v18;
  *a2 = v19;
  a2[1] = v13;
  v14 = v17;
  a2[2] = v10;
  a2[3] = v14;
  a2[4] = v11;
  a2[5] = v12;

  sub_1D2FF17B0(v10, v14);
  sub_1D2FF17B0(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);

  sub_1D2FF1804(v10, v14);
  return sub_1D2FF1804(v11, v12);
}

uint64_t sub_1D2FF9648(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749728, &qword_1D30F07B8);
    sub_1D3000E00(a2, 255, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2FF96E8()
{
  result = qword_1EC749750;
  if (!qword_1EC749750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749750);
  }

  return result;
}

uint64_t sub_1D2FF9770()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EC7496D0);
  __swift_project_value_buffer(v0, qword_1EC7496D0);
  return sub_1D30E8B2C();
}

uint64_t sub_1D2FF97F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 226) = a4;
  *(v5 + 64) = a3;
  *(v5 + 72) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v6 = sub_1D30E8A4C();
  *(v5 + 80) = v6;
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();
  v7 = type metadata accessor for LicenseRecord.ElementID(0);
  *(v5 + 104) = v7;
  *(v5 + 112) = *(v7 - 8);
  *(v5 + 120) = swift_task_alloc();
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D8, v8, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
  v9 = sub_1D30E91AC();
  *(v5 + 128) = v9;
  *(v5 + 136) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D2FF99D0, v9, v10);
}

uint64_t sub_1D2FF99D0()
{
  v25 = v0;
  v24[1] = *MEMORY[0x1E69E9840];
  if (qword_1EC748FF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  *(v0 + 144) = __swift_project_value_buffer(v1, qword_1EC7496D0);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 104);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v23 = *(v0 + 226);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136446978;
    v10 = MEMORY[0x1D38B26B0](v7, v4);
    v12 = sub_1D2FFEA04(v10, v11, v24);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v6;
    *(v8 + 22) = 1024;
    *(v8 + 24) = v23;
    *(v8 + 28) = 2082;
    *(v0 + 40) = v5;
    type metadata accessor for CertificateManager();

    v13 = sub_1D30E909C();
    v15 = sub_1D2FFEA04(v13, v14, v24);

    *(v8 + 30) = v15;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Init with: %{public}s license ID: %llu static: %{BOOL}d certificate manager: %{public}s", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  if (*(v0 + 226) == 1 && (os_variant_allows_internal_security_policies() & 1) == 0)
  {

    sub_1D2FFF3F0();
    swift_allocError();
    *v21 = 18;
    *(v21 + 8) = 4;
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v16 = sub_1D30E8B1C();
    v17 = sub_1D30E92BC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D2FD9000, v16, v17, "Creating a Core ALD context…", v18, 2u);
      MEMORY[0x1D38B3760](v18, -1, -1);
    }

    *(v0 + 224) = 0;
    v19 = swift_task_alloc();
    *(v0 + 152) = v19;
    *v19 = v0;
    v19[1] = sub_1D2FF9DBC;

    return sub_1D3034F00((v0 + 224));
  }
}

uint64_t sub_1D2FF9DBC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 160) = a1;
  *(v4 + 168) = a2;
  *(v4 + 176) = v2;

  if (v2)
  {

    v5 = *(v4 + 128);
    v6 = *(v4 + 136);

    return MEMORY[0x1EEE6DFA0](sub_1D2FFA848, v5, v6);
  }

  else
  {
    *(v4 + 225) = 1;
    v7 = swift_task_alloc();
    *(v4 + 184) = v7;
    *v7 = v4;
    v7[1] = sub_1D2FF9F8C;

    return sub_1D3034F00((v4 + 225));
  }
}

uint64_t sub_1D2FF9F8C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {

    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_1D2FFA8F4;
  }

  else
  {
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_1D2FFA0E0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D2FFA0E0()
{
  v82 = v0;
  v81[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  sub_1D2FF17B0(v4, v3);
  v5 = sub_1D2FFA9AC(v4, v3);
  sub_1D2FF17B0(v1, v2);
  v6 = sub_1D2FFA9AC(v1, v2);
  v7 = v5[2];
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(v0 + 208);
  sub_1D2FFAB28(v6[2], v7, (v0 + 16), v81);
  if (v8)
  {
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    sub_1D2FF1804(*(v0 + 192), *(v0 + 200));
    sub_1D2FF1804(v10, v9);

LABEL_26:

    v44 = *(v0 + 8);
    goto LABEL_27;
  }

  v11 = v81[0];

  v12 = sub_1D30E8B1C();
  v13 = sub_1D30E92BC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 226);
    v15 = *(v0 + 64);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v81[0] = v17;
    *v16 = 136446466;
    if (v14)
    {
      v18 = 0x20636974617473;
    }

    else
    {
      v18 = 0;
    }

    if (v14)
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    v20 = sub_1D2FFEA04(v18, v19, v81);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v15;
    _os_log_impl(&dword_1D2FD9000, v12, v13, "Generating a request for the %{public}slicense with the ID “%llu”…", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1D38B3760](v17, -1, -1);
    MEMORY[0x1D38B3760](v16, -1, -1);
  }

  v21 = *(v0 + 56);
  v22 = *(v21 + 16);
  v78 = v22;
  if (v22)
  {
    v76 = v11;
    v23 = *(v0 + 104);
    v24 = *(v0 + 112);
    v81[0] = MEMORY[0x1E69E7CC0];
    sub_1D3028B74(0, v22, 0);
    v25 = v81[0];
    v26 = v21 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v27 = *(v24 + 72);
    do
    {
      v28 = *(v0 + 120);
      sub_1D3000CF8(v26, v28);
      v29 = *(v28 + *(v23 + 24));
      sub_1D3000D5C(v28);
      v81[0] = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        sub_1D3028B74((v30 > 1), v31 + 1, 1);
        v25 = v81[0];
      }

      *(v25 + 16) = v32;
      *(v25 + 8 * v31 + 32) = v29;
      v26 += v27;
      --v22;
    }

    while (v22);
    v11 = v76;
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
    v32 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 216) = 0;
  if (HIDWORD(v32))
  {
    __break(1u);
  }

  v33 = (v0 + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D30D7D0C(0, v32, 0, v25);
  }

  v34 = niaOacKH();
  if (v34)
  {
    v35 = v34;
    v37 = *(v0 + 192);
    v36 = *(v0 + 200);
    v39 = *(v0 + 160);
    v38 = *(v0 + 168);

    v40 = sub_1D2FFF3C8(v35);
    v42 = v41;
    sub_1D2FFF3F0();
    swift_allocError();
    *v43 = v40;
    *(v43 + 8) = v42;
    swift_willThrow();
LABEL_25:
    sub_1D2FF1804(v39, v38);
    sub_1D2FF1804(v37, v36);
    goto LABEL_26;
  }

  if (*(v0 + 226))
  {
    v74 = 0;
    v75 = 0;
    v72 = 0xC000000000000000;
    v73 = 0xC000000000000000;
    v77 = v11;
    if (v78)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

  v60 = *(v0 + 24);
  if (!v60)
  {
    v37 = *(v0 + 192);
    v36 = *(v0 + 200);
    v39 = *(v0 + 160);
    v38 = *(v0 + 168);

    sub_1D2FFF3F0();
    swift_allocError();
    v71 = 19;
LABEL_44:
    *v70 = v71;
    *(v70 + 8) = 4;
    swift_willThrow();
    qENIaLkr();
    qENIaLkr();
    goto LABEL_25;
  }

  v61 = *v33;
  if (!*v33)
  {
    v37 = *(v0 + 192);
    v36 = *(v0 + 200);
    v39 = *(v0 + 160);
    v38 = *(v0 + 168);

    sub_1D2FFF3F0();
    swift_allocError();
    v71 = 21;
    goto LABEL_44;
  }

  v75 = sub_1D2FFF658(v60, *(v0 + 216));
  v73 = v62;
  v74 = sub_1D2FFF658(v61, *(v0 + 220));
  v72 = v63;
  v77 = v11;
  if (v78)
  {
LABEL_32:
    v46 = *(v0 + 112);
    v80 = *(v0 + 104);
    v47 = *(v0 + 88);
    v48 = *(v0 + 56);
    v81[0] = MEMORY[0x1E69E7CC0];
    sub_1D3028B30(0, v78, 0);
    v49 = v81[0];
    v50 = v48 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v51 = *(v46 + 72);
    v52 = v78;
    v79 = v51;
    do
    {
      v53 = *(v0 + 120);
      v54 = *(v0 + 96);
      v55 = *(v0 + 80);
      sub_1D3000CF8(v50, v53);
      (*(v47 + 16))(v54, v53 + *(v80 + 20), v55);
      sub_1D3000D5C(v53);
      v81[0] = v49;
      v57 = *(v49 + 16);
      v56 = *(v49 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1D3028B30((v56 > 1), v57 + 1, 1);
        v49 = v81[0];
      }

      v58 = *(v0 + 96);
      v59 = *(v0 + 80);
      *(v49 + 16) = v57 + 1;
      (*(v47 + 32))(v49 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v57, v58, v59);
      v50 += v79;
      --v52;
    }

    while (v52);

    goto LABEL_41;
  }

LABEL_40:

  v49 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v65 = *(v0 + 192);
  v64 = *(v0 + 200);
  v67 = *(v0 + 160);
  v66 = *(v0 + 168);
  v68 = *(v0 + 64);
  v69 = *(v0 + 48);
  qENIaLkr();
  qENIaLkr();
  sub_1D2FF1804(v67, v66);
  sub_1D2FF1804(v65, v64);

  *v69 = v77;
  *(v69 + 8) = v68;
  *(v69 + 16) = v49;
  *(v69 + 24) = v75;
  *(v69 + 32) = v73;
  *(v69 + 40) = v74;
  *(v69 + 48) = v72;

  v44 = *(v0 + 8);
LABEL_27:

  return v44();
}

uint64_t sub_1D2FFA848()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2FFA8F4()
{
  sub_1D2FF1804(v0[20], v0[21]);

  v1 = v0[1];

  return v1();
}

void *sub_1D2FFA9AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D30E895C();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_1D2FF1804(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_1D2FFEE44(v10, 0);
      v14 = sub_1D30E88FC();
      sub_1D2FF1804(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1D2FFAB28@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X4>, _DWORD *a6@<X8>)
{
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D8, v10, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((a4 | a2) < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (a2 > 0xFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  result = fyzGzQHg();
  if (result)
  {
    v12 = sub_1D2FFF3C8(result);
    v14 = v13;
    sub_1D2FFF3F0();
    v15 = swift_allocError();
    *v16 = v12;
    *(v16 + 8) = v14;
    result = swift_willThrow();
    *a5 = v15;
  }

  else
  {
    *a6 = 0;
  }

  return result;
}

uint64_t AppLicenseDelivery.Request.deinit()
{
  v1 = v0;
  if (qword_1EC748FF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EC7496D0);
  v3 = sub_1D30E928C();
  v4 = sub_1D30E8B1C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Deinit", v5, 2u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = v0[1];
  v25 = *v0;
  v26 = v6;
  v27 = v0[2];
  v28 = *(v0 + 6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v24[6] = &v25;
  MEMORY[0x1EEE9AC00](v8);
  v24[2] = sub_1D2FFB048;
  v24[3] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D2FFF054;
  *(v10 + 24) = v24;
  sub_1D2FFDC28(sub_1D2FFF06C, v10);
  v12 = v11;
  v29 = v26;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  else
  {
    if (v12)
    {
      v14 = sub_1D2FFF3C8(v12);
      v16 = v15;
      v17 = sub_1D30E929C();
      v18 = sub_1D30E8B1C();
      if (os_log_type_enabled(v18, v17))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138543362;
        sub_1D2FFF3F0();
        swift_allocError();
        *v21 = v14;
        *(v21 + 8) = v16;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v22;
        *v20 = v22;
        _os_log_impl(&dword_1D2FD9000, v18, v17, "A context couldn’t be destroyed: %{public}@", v19, 0xCu);
        sub_1D2FF14DC(v20, &qword_1EC7493A0, &qword_1D30EF480);
        MEMORY[0x1D38B3760](v20, -1, -1);
        MEMORY[0x1D38B3760](v19, -1, -1);
      }
    }

    sub_1D2FF14DC(&v29, &qword_1EC749728, &qword_1D30F07B8);
    sub_1D2FF1804(*(v1 + 3), *(v1 + 4));
    return sub_1D2FF1804(*(v1 + 5), *(v1 + 6));
  }

  return result;
}

uint64_t sub_1D2FFB048@<X0>(_DWORD *a1@<X8>)
{
  result = cdHFeFDJ();
  *a1 = result;
  return result;
}

uint64_t static AppLicenseDelivery.Isolation.runSynchronously<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = a1;
  v4[4] = a2;
  return _s29ManagedBackgroundAssetsHelper18AppLicenseDeliveryO9IsolationC16runSynchronously4with_q_x_q_xYbKAEYcXEtKs8SendableRzRi_zr0_lFZ(a1, sub_1D2FFF444, v4, MEMORY[0x1E69E7CA8] + 8, a3);
}

uint64_t sub_1D2FFB0D0()
{
  sub_1D30E98AC();
  sub_1D30E98CC();
  return sub_1D30E98EC();
}

uint64_t sub_1D2FFB158(uint64_t a1)
{
  sub_1D30E98AC();
  sub_1D30E98CC();
  return sub_1D30E98EC();
}

_DWORD *sub_1D2FFB1A4@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_1D2FFB1C4(int *a1@<X8>)
{
  if (*v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_1D2FFB28C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749828, &qword_1D30F1060);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D300108C();
  sub_1D30E992C();
  v10[0] = 0;
  sub_1D30E975C();
  if (!v2)
  {
    v10[0] = 1;
    sub_1D30E975C();
    v10[0] = *(v3 + 16);
    LOBYTE(v11) = 2;
    sub_1D3001134();
    sub_1D30E974C();
    v11 = *(v3 + 24);
    v10[47] = 3;
    sub_1D3001188(v3, v10);
    sub_1D2FF92C4();
    sub_1D30E974C();
    sub_1D2FF1804(v11, *(&v11 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D2FFB4C0()
{
  v1 = 25705;
  v2 = 0x6570795479656BLL;
  if (*v0 != 2)
  {
    v2 = 7955819;
  }

  if (*v0)
  {
    v1 = 0x4449746E65726170;
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

uint64_t sub_1D2FFB528@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2FFF708(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2FFB550(uint64_t a1)
{
  v2 = sub_1D300108C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FFB58C(uint64_t a1)
{
  v2 = sub_1D300108C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2FFB5C8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D2FFF864(a2, v6);
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

uint64_t sub_1D2FFB64C()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EC7496E8);
  __swift_project_value_buffer(v0, qword_1EC7496E8);
  return sub_1D30E8B2C();
}

uint64_t sub_1D2FFB6CC(void *a1, unsigned int *a2, uint64_t *a3)
{
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D8, v5, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1[1];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (HIDWORD(v6))
  {
    goto LABEL_12;
  }

  v7 = jYWQDEvI();
  if (v7)
  {
    v8 = sub_1D2FFF3C8(v7);
    v10 = v9;
    sub_1D2FFF3F0();
    v11 = swift_allocError();
    *v12 = v8;
    *(v12 + 8) = v10;
  }

  else
  {
    sub_1D2FFF3F0();
    v11 = swift_allocError();
    *v14 = 20;
    *(v14 + 8) = 4;
  }

  result = swift_willThrow();
  *a3 = v11;
  return result;
}

void sub_1D2FFB8B4()
{
  v0 = QSIlMWCo();
  if (v0)
  {
    v1 = sub_1D2FFF3C8(v0);
    v3 = v2;
    if (qword_1EC749000 != -1)
    {
      swift_once();
    }

    v4 = sub_1D30E8B3C();
    __swift_project_value_buffer(v4, qword_1EC7496E8);
    v5 = sub_1D30E929C();
    log = sub_1D30E8B1C();
    if (os_log_type_enabled(log, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      sub_1D2FFF3F0();
      swift_allocError();
      *v8 = v1;
      *(v8 + 8) = v3;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_1D2FD9000, log, v5, "A response couldn’t be deallocated: %{public}@", v6, 0xCu);
      sub_1D2FF14DC(v7, &qword_1EC7493A0, &qword_1D30EF480);
      MEMORY[0x1D38B3760](v7, -1, -1);
      MEMORY[0x1D38B3760](v6, -1, -1);
    }
  }
}

uint64_t sub_1D2FFBA44@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = result;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 64;
    v6 = MEMORY[0x1E69E7CC0];
    v46 = a2 + 64;
    do
    {
      v51 = v6;
      v7 = (v5 + 40 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v3)
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_57;
        }

        v53 = *(v7 - 2);
        v9 = *(v7 - 16);
        v10 = *(v7 - 1);
        v11 = *v7;
        sub_1D2FF17B0(v10, *v7);
        if (qword_1EE3132E0 != -1)
        {
          swift_once();
        }

        type metadata accessor for AppLicenseDelivery.Isolation();
        sub_1D3000E00(&qword_1EE3132D8, v12, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
        sub_1D30E91AC();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if ((v9 & 1) == 0)
        {
          break;
        }

        result = sub_1D2FF1804(v10, v11);
        ++v8;
        v7 += 5;
        if (v4 == v3)
        {
          v6 = v51;
          goto LABEL_20;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v6 = v51;
      if ((result & 1) == 0)
      {
        result = sub_1D3028BA4(0, v51[2] + 1, 1);
        v6 = v51;
      }

      v5 = v46;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_1D3028BA4((v13 > 1), v14 + 1, 1);
        v6 = v51;
      }

      v6[2] = v14 + 1;
      v15 = &v6[5 * v14];
      *(v15 + 2) = v53;
      *(v15 + 48) = 0;
      v15[7] = v10;
      v15[8] = v11;
    }

    while (v4 != v3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_20:
  v47 = v6[2];
  if (v47)
  {
    v16 = 0;
    v17 = v6 + 8;
    while (v16 < v6[2])
    {
      v18 = v6;
      v19 = *(v17 - 4);
      v20 = *v17;
      v52 = *(v17 - 3);
      v54 = *(v17 - 1);
      sub_1D2FF17B0(v54, *v17);
      if (qword_1EE3132E0 != -1)
      {
        swift_once();
      }

      type metadata accessor for AppLicenseDelivery.Isolation();
      sub_1D3000E00(&qword_1EE3132D8, v21, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v19 == v49)
      {

        v45 = v20;
        result = sub_1D2FF17B0(v54, v20);
        if (v3)
        {
          v23 = 0;
          v24 = a2 + 64;
          v48 = MEMORY[0x1E69E7CC0];
          v44 = a2 + 64;
LABEL_32:
          v25 = (v24 + 40 * v23);
          v26 = v23;
          while (v26 < v3)
          {
            v23 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_60;
            }

            v50 = *(v25 - 2);
            v27 = *(v25 - 16);
            v29 = *(v25 - 1);
            v28 = *v25;
            sub_1D2FF17B0(v29, *v25);
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            if (v27)
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D3028BA4(0, v48[2] + 1, 1);
              }

              v24 = v44;
              v31 = v48[2];
              v30 = v48[3];
              v32 = v31 + 1;
              if (v31 >= v30 >> 1)
              {
                result = sub_1D3028BA4((v30 > 1), v31 + 1, 1);
                v32 = v31 + 1;
              }

              v48[2] = v32;
              v33 = &v48[5 * v31];
              *(v33 + 2) = v50;
              *(v33 + 48) = 1;
              v33[7] = v29;
              v33[8] = v28;
              if (v23 != v3)
              {
                goto LABEL_32;
              }

              goto LABEL_47;
            }

            result = sub_1D2FF1804(v29, v28);
            ++v26;
            v25 += 5;
            if (v23 == v3)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_59;
        }

        v48 = MEMORY[0x1E69E7CC0];
LABEL_47:
        v34 = v45;
        v35 = v48[2];
        if (!v35)
        {
LABEL_54:

          sub_1D2FFF3F0();
          swift_allocError();
          *v41 = v52;
          *(v41 + 8) = 2;
          swift_willThrow();
          sub_1D2FF1804(v54, v34);
          return sub_1D2FF1804(v54, v34);
        }

        v36 = 0;
        v37 = v48 + 8;
        while (v36 < v48[2])
        {
          v38 = *(v37 - 4);
          v40 = *(v37 - 1);
          v39 = *v37;
          sub_1D2FF17B0(v40, *v37);
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          if (v38 == v52)
          {

            result = sub_1D2FF1804(v54, v45);
            *a3 = v54;
            a3[1] = v45;
            a3[2] = v40;
            a3[3] = v39;
            return result;
          }

          ++v36;
          result = sub_1D2FF1804(v40, v39);
          v37 += 5;
          v34 = v45;
          if (v35 == v36)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_61;
      }

      ++v16;
      result = sub_1D2FF1804(v54, v20);
      v17 += 5;
      v6 = v18;
      if (v47 == v16)
      {
        goto LABEL_29;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
LABEL_29:

    sub_1D2FFF3F0();
    swift_allocError();
    *v22 = v49;
    *(v22 + 8) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D2FFC07C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497F8, &qword_1D30F1050);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3000F18();
  sub_1D30E992C();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497E0, &qword_1D30F1048);
  sub_1D3000F6C(&qword_1EC749800, sub_1D3001038, MEMORY[0x1E69E6300]);
  sub_1D30E974C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D2FFC220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2FFC2A8(uint64_t a1)
{
  v2 = sub_1D3000F18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FFC2E4(uint64_t a1)
{
  v2 = sub_1D3000F18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D2FFC320@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D300004C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D2FFC37C()
{
  if (*v0)
  {
    return 0x4B65736E6563696CLL;
  }

  else
  {
    return 0x79654B707061;
  }
}

uint64_t sub_1D2FFC3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B707061 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B65736E6563696CLL && a2 == 0xEA00000000007965)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D2FFC498(uint64_t a1)
{
  v2 = sub_1D2FFF46C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FFC4D4(uint64_t a1)
{
  v2 = sub_1D2FFF46C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppLicenseDelivery.Keys.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749760, &qword_1D30F07D0);
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v12 = v1[3];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FF17B0(v7, v8);
  sub_1D2FFF46C();
  sub_1D30E992C();
  v15 = v7;
  v16 = v8;
  v17 = 0;
  sub_1D2FF92C4();
  sub_1D30E974C();
  sub_1D2FF1804(v15, v16);
  if (!v2)
  {
    v15 = v13;
    v16 = v12;
    v17 = 1;
    sub_1D2FF17B0(v13, v12);
    sub_1D30E974C();
    sub_1D2FF1804(v15, v16);
  }

  return (*(v14 + 8))(v6, v4);
}

uint64_t AppLicenseDelivery.Keys.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749770, &qword_1D30F07D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FFF46C();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  sub_1D2FF96E8();
  sub_1D30E967C();
  v9 = v16;
  v15 = v17;
  v18 = 1;
  sub_1D30E967C();
  (*(v6 + 8))(v8, v5);
  v10 = v16;
  v11 = v17;
  v12 = v15;
  *a2 = v9;
  a2[1] = v12;
  a2[2] = v10;
  a2[3] = v11;
  sub_1D2FF17B0(v9, v12);
  sub_1D2FF17B0(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1D2FF1804(v9, v12);
  return sub_1D2FF1804(v10, v11);
}

uint64_t sub_1D2FFC948()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EC749700);
  __swift_project_value_buffer(v0, qword_1EC749700);
  return sub_1D30E8B2C();
}

void AppLicenseDelivery.CryptSession.init(keys:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  if (qword_1EC749008 != -1)
  {
    swift_once();
  }

  v8 = sub_1D30E8B3C();
  __swift_project_value_buffer(v8, qword_1EC749700);
  v9 = sub_1D30E928C();
  sub_1D2FF17B0(v4, v5);
  sub_1D2FF17B0(v6, v7);
  v10 = sub_1D30E8B1C();
  sub_1D2FF1804(v4, v5);
  sub_1D2FF1804(v6, v7);
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1D2FFEA04(0x3E7379654B3CLL, 0xE600000000000000, v26);
    _os_log_impl(&dword_1D2FD9000, v10, v9, "Init keys: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v13 = v12;
    v3 = v2;
    MEMORY[0x1D38B3760](v13, -1, -1);
    MEMORY[0x1D38B3760](v11, -1, -1);
  }

  v14 = sub_1D30E8B1C();
  v15 = sub_1D30E92BC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1D2FD9000, v14, v15, "Starting a crypt session…", v16, 2u);
    MEMORY[0x1D38B3760](v16, -1, -1);
  }

  sub_1D2FF17B0(v4, v5);
  v17 = sub_1D2FFA9AC(v4, v5);
  sub_1D2FF17B0(v6, v7);
  v18 = sub_1D2FFA9AC(v6, v7);
  sub_1D2FF1804(v4, v5);
  sub_1D2FF1804(v6, v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1D2FFEFAC(v17);
  }

  v19 = v17[2];
  v26[0] = (v17 + 4);
  v26[1] = v19;
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D8, v20, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1D2FFEFAC(v18);
  }

  v21 = v18[2];
  v25[0] = v18 + 4;
  v25[1] = v21;
  sub_1D2FFCD70(v25, v26, &v24, &v27);
  if (v3)
  {

    v26[0] = 0;
    AppLicenseDelivery.CryptSession.deinit();
  }

  else
  {
    v22 = v27;

    *a2 = v22;
  }
}

uint64_t sub_1D2FFCD70@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D8, v8, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a2[1];
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (HIDWORD(v9))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = *(a1 + 8);
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  if (HIDWORD(v10))
  {
    goto LABEL_15;
  }

  result = CWeMQvFE();
  if (result)
  {
    v12 = sub_1D2FFF3C8(result);
    v14 = v13;
    sub_1D2FFF3F0();
    v15 = swift_allocError();
    *v16 = v12;
    *(v16 + 8) = v14;
    result = swift_willThrow();
    *a3 = v15;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void AppLicenseDelivery.CryptSession.deinit()
{
  if (qword_1EC749008 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EC749700);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Deinit", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v5 = *v0;
  if (*v0)
  {
    v6 = sub_1D30E8B1C();
    v7 = sub_1D30E92BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D2FD9000, v6, v7, "Stopping a crypt session…", v8, 2u);
      MEMORY[0x1D38B3760](v8, -1, -1);
    }

    v10 = MEMORY[0x1EEE9AC00](v9);
    v25[6] = v5;
    MEMORY[0x1EEE9AC00](v10);
    v25[2] = sub_1D2FFF4E4;
    v25[3] = v11;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1D30015EC;
    *(v12 + 24) = v25;
    sub_1D2FFDC28(sub_1D3001604, v12);
    v14 = v13;
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    else if (v14)
    {
      v16 = sub_1D2FFF3C8(v14);
      v18 = v17;
      v19 = sub_1D30E929C();
      v20 = sub_1D30E8B1C();
      if (os_log_type_enabled(v20, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138543362;
        sub_1D2FFF3F0();
        swift_allocError();
        *v23 = v16;
        *(v23 + 8) = v18;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_1D2FD9000, v20, v19, "A crypt session couldn’t be stopped: %{public}@", v21, 0xCu);
        sub_1D2FF14DC(v22, &qword_1EC7493A0, &qword_1D30EF480);
        MEMORY[0x1D38B3760](v22, -1, -1);
        MEMORY[0x1D38B3760](v21, -1, -1);
      }
    }
  }
}

void AppLicenseDelivery.CryptSession.decrypt(chunk:)(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v7 = *v2;
  if (qword_1EC749008 != -1)
  {
    swift_once();
  }

  v8 = sub_1D30E8B3C();
  __swift_project_value_buffer(v8, qword_1EC749700);
  v9 = sub_1D30E928C();
  sub_1D2FF17B0(a1, a2);
  v10 = sub_1D30E8B1C();
  sub_1D2FF1804(a1, a2);
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    *v11 = 136446210;
    v13 = sub_1D30E88EC();
    v15 = a2;
    v16 = v7;
    v17 = sub_1D2FFEA04(v13, v14, v29);

    *(v11 + 4) = v17;
    v7 = v16;
    a2 = v15;
    _os_log_impl(&dword_1D2FD9000, v10, v9, "Decrypt chunk: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D38B3760](v12, -1, -1);
    v18 = v11;
    v4 = v3;
    MEMORY[0x1D38B3760](v18, -1, -1);
  }

  v19 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_24;
    }

    v21 = *(a1 + 16);
    v20 = *(a1 + 24);
    v22 = __OFSUB__(v20, v21);
    v23 = v20 - v21;
    if (!v22)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_13:
    LODWORD(v23) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_28;
    }

    v23 = v23;
LABEL_15:
    if (v23 <= 0x8000)
    {
      if (v19 == 2)
      {
        if (*(a1 + 16) != *(a1 + 24))
        {
          goto LABEL_18;
        }
      }

      else if (a1 != a1 >> 32)
      {
        goto LABEL_18;
      }

LABEL_24:
      v26 = sub_1D30E8B1C();
      v27 = sub_1D30E92BC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1D2FD9000, v26, v27, "Skipping decryption of an empty chunk…", v28, 2u);
        MEMORY[0x1D38B3760](v28, -1, -1);
      }

      sub_1D2FF17B0(a1, a2);
      return;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  if (v19)
  {
    goto LABEL_13;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  sub_1D2FF17B0(a1, a2);
  v24 = sub_1D2FFA9AC(a1, a2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1D2FFEFAC(v24);
  }

  v25 = v24[2];
  v29[0] = (v24 + 4);
  v29[1] = v25;
  sub_1D2FFD5B8(v29, v7, &v30);
  if (!v4)
  {
    sub_1D3000300(v24);
  }
}

uint64_t sub_1D2FFD5B8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D8, v5, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1[1];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (HIDWORD(v6))
  {
    goto LABEL_13;
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = FbLnABIk();
  if (result)
  {
    v8 = sub_1D2FFF3C8(result);
    v10 = v9;
    sub_1D2FFF3F0();
    v11 = swift_allocError();
    *v12 = v8;
    *(v12 + 8) = v10;
    result = swift_willThrow();
    *a3 = v11;
  }

  return result;
}

void *sub_1D2FFD7A4()
{
  type metadata accessor for AppLicenseDelivery.Isolation();
  swift_allocObject();
  result = sub_1D2FFD860();
  off_1EE3132E8 = result;
  return result;
}

uint64_t static AppLicenseDelivery.Isolation.shared.getter()
{
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D2FFD860()
{
  v9 = sub_1D30E92FC();
  v1 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D30E935C();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1D30E8DDC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D2FF1494(0, &qword_1EE313008, 0x1E69E9620);
  v8[1] = "AppLicenseDeliveryResponse";
  v8[2] = v6;
  sub_1D30E8DCC();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D3000E00(&qword_1EE313010, 255, MEMORY[0x1E69E8120], MEMORY[0x1E69E8128]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497C0, &qword_1D30F0ED0);
  sub_1D2FF1768(&qword_1EE313048, &qword_1EC7497C0, &qword_1D30F0ED0, MEMORY[0x1E69E6328]);
  sub_1D30E93DC();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v9);
  *(v0 + 16) = sub_1D30E936C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497C8, &qword_1D30F0ED8);
  swift_allocObject();
  *(v0 + 24) = sub_1D30E8DBC();
  v10 = 0;
  sub_1D30E92EC();
  return v0;
}

uint64_t _s29ManagedBackgroundAssetsHelper18AppLicenseDeliveryO9IsolationC16runSynchronously4with_q_x_q_xYbKAEYcXEtKs8SendableRzRi_zr0_lFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  sub_1D2FFDFE8(sub_1D30003DC, v12, v5, a1);
  if (v6)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  v15 = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

void sub_1D2FFDC28(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2)
{
  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D2FF1494(0, &unk_1EE313018, 0x1E69E9610);
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  sub_1D30E92DC();

  if (v8)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v5;
    sub_1D30E930C();
  }

  else
  {
    sub_1D3000E00(&qword_1EE3132D0, v4, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
    sub_1D30E942C();

    a1(&v9, v7);
  }
}

void sub_1D2FFDE08(void (*a1)(uint64_t))
{
  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D2FF1494(0, &unk_1EE313018, 0x1E69E9610);
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  sub_1D30E92DC();

  if (v9)
  {
    MEMORY[0x1EEE9AC00](v4);
    v7 = v6;
    sub_1D30E930C();
  }

  else
  {
    sub_1D3000E00(&qword_1EE3132D0, v5, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
    sub_1D30E942C();

    a1(v8);
  }
}

void sub_1D2FFDFE8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v13 = a4;
  sub_1D2FF1494(0, &unk_1EE313018, 0x1E69E9610);
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  sub_1D30E92DC();

  if (v14 == 1)
  {
    v11[1] = v11;
    MEMORY[0x1EEE9AC00](v7);
    v9 = v8;
    sub_1D30E930C();
  }

  else
  {
    type metadata accessor for AppLicenseDelivery.Isolation();
    sub_1D3000E00(&qword_1EE3132D0, v10, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
    sub_1D30E942C();

    v12(v13);
  }
}

uint64_t sub_1D2FFE1EC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D0, v6, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
  sub_1D30E942C();

  a2(a4);
}

uint64_t AppLicenseDelivery.Isolation.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1D2FFE344()
{
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D2FFE3A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AppLicenseDelivery.Isolation();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_1D2FFE3E0()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE313300);
  __swift_project_value_buffer(v0, qword_1EE313300);
  return sub_1D30E8B2C();
}

unint64_t sub_1D2FFE4D8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000024, 0x80000001D30EB480);
      v4 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v4);

      v2 = 0x7563636F209D80E2;
      v3 = 0xAD00002E64657272;
      goto LABEL_12;
    }

    sub_1D30E948C();
    v5 = "y policies are disallowed.";
    v6 = 40;
LABEL_11:
    MEMORY[0x1D38B2610](v6 | 0x1000000000000014, v5 | 0x8000000000000000);
    v8 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v8);

    v2 = 782074082;
    v3 = 0xA400000000000000;
    goto LABEL_12;
  }

  if (a2 == 2)
  {
    sub_1D30E948C();
    v5 = "t return a license request.";
    v6 = 34;
    goto LABEL_11;
  }

  if (a2 == 3)
  {
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0x1000000000000014, 0x80000001D30EB320);
    type metadata accessor for LicenseObjectType_(0);
    sub_1D30E955C();
    v2 = 0x75207369209D80E2;
    v3 = 0xAF2E6E776F6E6B6ELL;
LABEL_12:
    MEMORY[0x1D38B2610](v2, v3);
    return 0;
  }

  switch(a1)
  {
    case 1:
    case 4:
      v9 = 5;
      goto LABEL_24;
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x100000000000001BLL;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x100000000000001DLL;
      break;
    case 11:
      v9 = 9;
LABEL_24:
      result = v9 | 0xD000000000000012;
      break;
    case 12:
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0xD00000000000001ELL;
      break;
    case 17:
      result = 0x1000000000000017;
      break;
    case 18:
      result = 0xD00000000000002ALL;
      break;
    case 19:
      result = 0x100000000000002BLL;
      break;
    case 20:
      result = 0x100000000000002CLL;
      break;
    case 21:
      result = 0x1000000000000027;
      break;
    default:
      result = 0x1000000000000021;
      break;
  }

  return result;
}

unint64_t sub_1D2FFEA04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D2FFEAD0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D2FF1430(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D2FFEAD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D2FFEBDC(a5, a6);
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
    result = sub_1D30E94FC();
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

void *sub_1D2FFEBDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D2FFEC28(a1, a2);
  sub_1D2FFED58(&unk_1F4EA8BE8);
  return v3;
}

void *sub_1D2FFEC28(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D2FFEE44(v5, 0);
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

  result = sub_1D30E94FC();
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
        v10 = sub_1D30E910C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D2FFEE44(v10, 0);
        result = sub_1D30E946C();
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

uint64_t sub_1D2FFED58(uint64_t result)
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

  result = sub_1D2FFEEB8(result, v11, 1, v3);
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

void *sub_1D2FFEE44(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497B8, &unk_1D30F3440);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D2FFEEB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497B8, &unk_1D30F3440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

_BYTE *sub_1D2FFEFC0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1D2FFF5A0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1D3000200(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1D300027C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1D2FFF084@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t)@<X0>, _DWORD *a3@<X8>)
{
  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D0, v6, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
  sub_1D30E942C();

  a1(&v9, v7);

  if (!v3)
  {
    *a3 = v9;
  }

  return result;
}

uint64_t sub_1D2FFF16C(void (*a1)(uint64_t), uint64_t a2)
{
  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D0, v3, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
  sub_1D30E942C();

  a1(v4);
}

uint64_t sub_1D2FFF248(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4965736E6563696CLL && a2 == 0xE900000000000044;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xEA00000000007344 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4474736575716572 && a2 == 0xEB00000000617461 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4B64657070617277 && a2 == 0xEE00617461447965)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t sub_1D2FFF3C8(uint64_t result)
{
  v1 = (result + 7018);
  if (v1 >= 0x12)
  {
    return result;
  }

  else
  {
    return 17 - v1;
  }
}

unint64_t sub_1D2FFF3F0()
{
  result = qword_1EC749758;
  if (!qword_1EC749758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749758);
  }

  return result;
}

unint64_t sub_1D2FFF46C()
{
  result = qword_1EC749768;
  if (!qword_1EC749768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749768);
  }

  return result;
}

uint64_t sub_1D2FFF4E4@<X0>(_DWORD *a1@<X8>)
{
  result = OZpDoyky();
  *a1 = result;
  return result;
}

void *sub_1D2FFF518@<X0>(_DWORD *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void *sub_1D2FFF55C@<X0>(_DWORD *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1D2FFF5A0(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_1D2FFF658(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1D2FFF5A0(a1, &a1[a2]);
  }

  sub_1D30E868C();
  swift_allocObject();
  sub_1D30E867C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1D30E890C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1D2FFF708(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449746E65726170 && a2 == 0xE800000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795479656BLL && a2 == 0xE700000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t sub_1D2FFF864@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749810, &qword_1D30F1058);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D300108C();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v14[0]) = 0;
  v9 = sub_1D30E969C();
  LOBYTE(v14[0]) = 1;
  v10 = sub_1D30E969C();
  v16 = 2;
  sub_1D30010E0();
  sub_1D30E967C();
  v15 = LOBYTE(v14[0]);
  v16 = 3;
  sub_1D2FF96E8();
  sub_1D30E967C();
  (*(v6 + 8))(v8, v5);
  v11 = v14[0];
  v12 = v14[1];
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v15;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_1D2FFFAA0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v50 = *a1;
  v51 = v6;
  v52 = v7;
  v8 = *(a1 + 40);
  v53 = *(a1 + 24);
  v54 = v8;
  if (qword_1EC749000 != -1)
  {
    swift_once();
  }

  v9 = sub_1D30E8B3C();
  __swift_project_value_buffer(v9, qword_1EC7496E8);
  v10 = sub_1D30E928C();
  sub_1D2FF17B0(a2, a3);
  v11 = sub_1D30E8B1C();
  sub_1D2FF1804(a2, a3);
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&__dst = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_1D2FFEA04(0x7473657571655228, 0xE900000000000029, &__dst);
    *(v12 + 12) = 2082;
    sub_1D2FF17B0(a2, a3);
    v14 = sub_1D30E88EC();
    v16 = v15;
    sub_1D2FF1804(a2, a3);
    v17 = sub_1D2FFEA04(v14, v16, &__dst);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_1D2FD9000, v11, v10, "Init to: %{public}s from: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v13, -1, -1);
    MEMORY[0x1D38B3760](v12, -1, -1);
  }

  sub_1D2FF17B0(a2, a3);
  v18 = sub_1D2FFA9AC(a2, a3);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1D2FFEFAC(v18);
  }

  v19 = v18[2];
  *&__dst = v18 + 4;
  *(&__dst + 1) = v19;
  sub_1D2FFB6CC(&__dst, &v50, &v44);
  if (v3)
  {

    v20 = a2;
    v21 = a3;
    goto LABEL_9;
  }

  v22 = *(v45 + 20);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v22)
  {
LABEL_32:
    sub_1D2FFB8B4();
    sub_1D2FF1804(a2, a3);
    LODWORD(__dst) = v50;
    *(&__dst + 1) = v51;
    v47 = v52;
    v48 = v53;
    v49 = v54;
    AppLicenseDelivery.Request.deinit();
    return v10;
  }

  v40 = a2;
  v41 = a3;
  v23 = *(v45 + 24);
  v45 = MEMORY[0x1E69E7CC0];
  sub_1D3028BA4(0, v22, 0);
  v10 = v45;
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D8, v24, type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
  v25 = (v23 + 16);
  while (1)
  {
    v26 = *(v25 - 4);
    v27 = *(v25 - 1);
    v43 = *v25;
    v28 = v25[1];
    v29 = *(v25 + 4);
    sub_1D30E91AC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v26 == 2)
    {
      v30 = 0;
      goto LABEL_20;
    }

    if (v26 != 3)
    {
      break;
    }

    v30 = 1;
LABEL_20:
    if (!v28)
    {
      __break(1u);
    }

    if (v29)
    {
      if (v29 <= 0xE)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v29;
        memcpy(&__dst, v28, v29);
        v32 = __dst;
        v33 = v42 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v42 = v33;
      }

      else
      {
        sub_1D30E868C();
        swift_allocObject();
        v31 = sub_1D30E867C();
        if (v29 >= 0x7FFFFFFF)
        {
          sub_1D30E890C();
          v32 = swift_allocObject();
          *(v32 + 16) = 0;
          *(v32 + 24) = v29;
          v33 = v31 | 0x8000000000000000;
        }

        else
        {
          v32 = v29 << 32;
          v33 = v31 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v32 = 0;
      v33 = 0xC000000000000000;
    }

    v45 = v10;
    v35 = *(v10 + 16);
    v34 = *(v10 + 24);
    if (v35 >= v34 >> 1)
    {
      v37 = v32;
      sub_1D3028BA4((v34 > 1), v35 + 1, 1);
      v32 = v37;
      v10 = v45;
    }

    v25 += 5;
    *(v10 + 16) = v35 + 1;
    v36 = v10 + 40 * v35;
    *(v36 + 32) = v27;
    *(v36 + 40) = v43;
    *(v36 + 48) = v30;
    *(v36 + 56) = v32;
    *(v36 + 64) = v33;
    if (!--v22)
    {
      a2 = v40;
      a3 = v41;
      goto LABEL_32;
    }
  }

  sub_1D2FFF3F0();
  swift_allocError();
  *v39 = v26;
  *(v39 + 8) = 3;
  swift_willThrow();

  sub_1D2FFB8B4();
  v20 = v40;
  v21 = v41;
LABEL_9:
  sub_1D2FF1804(v20, v21);
  LODWORD(__dst) = v50;
  *(&__dst + 1) = v51;
  v47 = v52;
  v48 = v53;
  v49 = v54;
  AppLicenseDelivery.Request.deinit();
  return v10;
}

void *sub_1D300004C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497D0, &qword_1D30F1040);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3000F18();
  sub_1D30E990C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497E0, &qword_1D30F1048);
    sub_1D3000F6C(&qword_1EC7497E8, sub_1D3000FE4, MEMORY[0x1E69E6330]);
    sub_1D30E967C();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_1D3000200(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D30E868C();
  swift_allocObject();
  result = sub_1D30E867C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D30E890C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D300027C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D30E868C();
  swift_allocObject();
  result = sub_1D30E867C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D3000300(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497A8, &unk_1D30F0EC0);
  v10 = sub_1D2FF1768(&qword_1EC7497B0, &qword_1EC7497A8, &unk_1D30F0EC0, MEMORY[0x1E696A0B8]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1D2FFEFC0(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_1D300047C(const char *a1, const char *a2, uint64_t (*a3)(void))
{
  if (qword_1EE3132F8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D30E8B3C();
  __swift_project_value_buffer(v6, qword_1EE313300);
  v7 = sub_1D30E928C();
  v8 = sub_1D30E8B1C();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D2FD9000, v8, v7, a1, v9, 2u);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  v10 = sub_1D30E8B1C();
  v11 = sub_1D30E92BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D2FD9000, v10, v11, a2, v12, 2u);
    MEMORY[0x1D38B3760](v12, -1, -1);
  }

  result = a3();
  if (result)
  {
    v14 = sub_1D2FFF3C8(result);
    v16 = v15;
    sub_1D2FFF3F0();
    swift_allocError();
    *v17 = v14;
    *(v17 + 8) = v16;
    return swift_willThrow();
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for AppLicenseDelivery.Request(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  sub_1D2FF1804(v5, v6);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  sub_1D2FF1804(v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppLicenseDelivery.Request(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppLicenseDelivery.Request(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D30007BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D3000804(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D300086C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D30008C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1D3000950(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D3000970(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppLicenseDeliveryError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AppLicenseDeliveryError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D3000A94(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1D3000AAC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1D3000AE8()
{
  result = qword_1EC749778;
  if (!qword_1EC749778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749778);
  }

  return result;
}

unint64_t sub_1D3000B44()
{
  result = qword_1EC749780;
  if (!qword_1EC749780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749780);
  }

  return result;
}

unint64_t sub_1D3000B9C()
{
  result = qword_1EC749788;
  if (!qword_1EC749788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749788);
  }

  return result;
}

unint64_t sub_1D3000BF4()
{
  result = qword_1EC749790;
  if (!qword_1EC749790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749790);
  }

  return result;
}

unint64_t sub_1D3000C4C()
{
  result = qword_1EC749798;
  if (!qword_1EC749798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749798);
  }

  return result;
}

unint64_t sub_1D3000CA4()
{
  result = qword_1EC7497A0;
  if (!qword_1EC7497A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7497A0);
  }

  return result;
}

uint64_t sub_1D3000CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LicenseRecord.ElementID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3000D5C(uint64_t a1)
{
  v2 = type metadata accessor for LicenseRecord.ElementID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D3000E00(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D3000E78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D3000EBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D3000F18()
{
  result = qword_1EC7497D8;
  if (!qword_1EC7497D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7497D8);
  }

  return result;
}

uint64_t sub_1D3000F6C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7497E0, &qword_1D30F1048);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D3000FE4()
{
  result = qword_1EC7497F0;
  if (!qword_1EC7497F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7497F0);
  }

  return result;
}

unint64_t sub_1D3001038()
{
  result = qword_1EC749808;
  if (!qword_1EC749808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749808);
  }

  return result;
}

unint64_t sub_1D300108C()
{
  result = qword_1EC749818;
  if (!qword_1EC749818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749818);
  }

  return result;
}

unint64_t sub_1D30010E0()
{
  result = qword_1EC749820;
  if (!qword_1EC749820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749820);
  }

  return result;
}

unint64_t sub_1D3001134()
{
  result = qword_1EC749830;
  if (!qword_1EC749830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749830);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPackHost.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssetPackHost.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D3001334()
{
  result = qword_1EC749838;
  if (!qword_1EC749838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749838);
  }

  return result;
}

unint64_t sub_1D300138C()
{
  result = qword_1EC749840;
  if (!qword_1EC749840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749840);
  }

  return result;
}

unint64_t sub_1D30013E4()
{
  result = qword_1EC749848;
  if (!qword_1EC749848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749848);
  }

  return result;
}

unint64_t sub_1D300143C()
{
  result = qword_1EC749850;
  if (!qword_1EC749850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749850);
  }

  return result;
}

unint64_t sub_1D3001494()
{
  result = qword_1EC749858;
  if (!qword_1EC749858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749858);
  }

  return result;
}

unint64_t sub_1D30014EC()
{
  result = qword_1EC749860;
  if (!qword_1EC749860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749860);
  }

  return result;
}

unint64_t sub_1D3001544()
{
  result = qword_1EC749868;
  if (!qword_1EC749868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749868);
  }

  return result;
}

unint64_t sub_1D3001598()
{
  result = qword_1EC749870[0];
  if (!qword_1EC749870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC749870);
  }

  return result;
}

uint64_t XPCResult.Failure.errorDescription.getter()
{
  v0 = sub_1D3003688();

  return v0;
}

uint64_t XPCResult.Failure.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_1D30E984C();
  v9 = v8;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  a4[1] = v9;
  return result;
}

uint64_t sub_1D300174C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D30EB7B0 == a2)
  {

    v2 = 0;
  }

  else
  {
    v3 = sub_1D30E97CC();

    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1D30017EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D300174C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D3001824@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D2FDD584();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D300185C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D30018B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t XPCResult.Failure.encode(to:)(void *a1, void *a2)
{
  type metadata accessor for XPCResult.Failure.CodingKeys(255, a2[2], a2[3], a2[4]);
  swift_getWitnessTable();
  v4 = sub_1D30E976C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D30E992C();
  sub_1D30E96EC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t XPCResult.Failure.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v17 = a5;
  type metadata accessor for XPCResult.Failure.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v7 = sub_1D30E96CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D30E990C();
  if (!v5)
  {
    v11 = v17;
    v12 = sub_1D30E961C();
    v14 = v13;
    (*(v8 + 8))(v10, v7);
    *v11 = v12;
    v11[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D3001C58()
{
  v0 = sub_1D3003688();

  return v0;
}

uint64_t XPCResult.init(catching:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for XPCResult(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  a1(v9);
  swift_storeEnumTagMultiPayload();
  return (*(v8 + 32))(a5, v11, v7);
}

uint64_t static XPCResult.failure<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14);
  v15 = sub_1D30E984C();
  v17 = v16;
  (*(v12 + 8))(v14, a3);
  *a7 = v15;
  a7[1] = v17;
  type metadata accessor for XPCResult(0, a2, a4, a5);
  return swift_storeEnumTagMultiPayload();
}

uint64_t XPCResult.init(catching:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a1;
  v8 = type metadata accessor for XPCResult(0, a4, a5, a6);
  v6[7] = v8;
  v6[8] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[9] = v9;
  v12 = (a2 + *a2);
  v10 = swift_task_alloc();
  v6[10] = v10;
  *v10 = v6;
  v10[1] = sub_1D3002084;

  return v12(v9);
}

uint64_t sub_1D3002084()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1D3002234;
  }

  else
  {
    v2 = sub_1D3002198;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3002198()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D3002234()
{
  v1 = v0[11];
  v2 = v0[6];
  swift_getErrorValue();
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v3, v4);
  v7 = sub_1D30E984C();
  v9 = v8;
  (*(v5 + 8))(v6, v4);

  *v2 = v7;
  v2[1] = v9;
  swift_storeEnumTagMultiPayload();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D3002390(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D3002494(char a1)
{
  sub_1D30E98AC();
  MEMORY[0x1D38B2DE0](a1 & 1);
  return sub_1D30E98EC();
}

uint64_t sub_1D30024DC(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1D300250C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D30E97CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D30025BC(uint64_t a1)
{
  sub_1D30E98AC();
  sub_1D300246C(v3, *v1);
  return sub_1D30E98EC();
}

uint64_t sub_1D300261C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D3002390(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D3002650@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1D3003CE4();
  *a2 = result;
  return result;
}

uint64_t sub_1D3002684(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D30026D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D300272C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D3002780(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D30027D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D3002828(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t XPCResult.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for XPCResult.FailureCodingKeys(255, v4, v5, v6);
  WitnessTable = swift_getWitnessTable();
  v44 = v7;
  v8 = sub_1D30E976C();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v35 - v9;
  v10 = type metadata accessor for XPCResult.SuccessCodingKeys(255, v4, v5, v6);
  v11 = swift_getWitnessTable();
  v39 = v10;
  v37 = v11;
  v12 = sub_1D30E976C();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v38 = &v35 - v14;
  v40 = *(v4 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v36 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = v4;
  v46 = v5;
  v52 = v6;
  type metadata accessor for XPCResult.CodingKeys(255, v4, v5, v6);
  swift_getWitnessTable();
  v20 = sub_1D30E976C();
  v50 = *(v20 - 8);
  v51 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D30E992C();
  (*(v17 + 16))(v19, v49, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v19;
    v24 = v19[1];
    LOBYTE(v53) = 1;
    v25 = v45;
    v26 = v51;
    sub_1D30E96DC();
    v53 = v23;
    v54 = v24;
    type metadata accessor for XPCResult.Failure(0, v55, v46, v52);
    swift_getWitnessTable();
    v27 = v48;
    sub_1D30E974C();
    (*(v47 + 8))(v25, v27);
    (*(v50 + 8))(v22, v26);
  }

  else
  {
    v29 = v40;
    v30 = v36;
    v31 = v55;
    (*(v40 + 32))(v36, v19, v55);
    LOBYTE(v53) = 0;
    v32 = v38;
    v33 = v51;
    sub_1D30E96DC();
    v34 = v42;
    sub_1D30E974C();
    (*(v41 + 8))(v32, v34);
    (*(v29 + 8))(v30, v31);
    return (*(v50 + 8))(v22, v33);
  }
}

uint64_t XPCResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v63 = a5;
  v61 = type metadata accessor for XPCResult.FailureCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v58 = sub_1D30E96CC();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v64 = &v49 - v9;
  v10 = type metadata accessor for XPCResult.SuccessCodingKeys(255, a2, a3, a4);
  v11 = swift_getWitnessTable();
  v60 = v10;
  v59 = v11;
  v55 = sub_1D30E96CC();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v66 = &v49 - v12;
  type metadata accessor for XPCResult.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v68 = sub_1D30E96CC();
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v14 = &v49 - v13;
  v65 = a2;
  v69 = a3;
  v56 = a4;
  v15 = type metadata accessor for XPCResult(0, a2, a3, a4);
  v53 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v49 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v49 - v22;
  v24 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v67 = v14;
  v25 = v71;
  sub_1D30E990C();
  if (!v25)
  {
    v52 = v21;
    v50 = v18;
    v26 = v66;
    v51 = v23;
    v28 = v68;
    v27 = v69;
    v71 = v15;
    v29 = v67;
    *&v72 = sub_1D30E96AC();
    sub_1D30E919C();
    swift_getWitnessTable();
    *&v74 = sub_1D30E93CC();
    *(&v74 + 1) = v30;
    *&v75 = v31;
    *(&v75 + 1) = v32;
    sub_1D30E93BC();
    swift_getWitnessTable();
    sub_1D30E925C();
    v33 = v72;
    if (v72 == 2 || (v49 = v74, v72 = v74, v73 = v75, (sub_1D30E926C() & 1) == 0))
    {
      v37 = sub_1D30E94EC();
      swift_allocError();
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30);
      *v39 = v71;
      sub_1D30E960C();
      sub_1D30E94DC();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
      (*(v70 + 8))(v29, v28);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33)
      {
        LOBYTE(v72) = 1;
        sub_1D30E95FC();
        v34 = v63;
        type metadata accessor for XPCResult.Failure(0, v65, v27, v56);
        swift_getWitnessTable();
        v35 = v58;
        v36 = v64;
        sub_1D30E967C();
        (*(v57 + 8))(v36, v35);
        (*(v70 + 8))(v29, v28);
        swift_unknownObjectRelease();
        v45 = v50;
        *v50 = v72;
        v46 = v71;
        swift_storeEnumTagMultiPayload();
        v47 = *(v53 + 32);
        v48 = v51;
        v47(v51, v45, v46);
      }

      else
      {
        LOBYTE(v72) = 0;
        v40 = v26;
        sub_1D30E95FC();
        v42 = v52;
        v43 = v55;
        sub_1D30E967C();
        v44 = v70;
        (*(v54 + 8))(v40, v43);
        (*(v44 + 8))(v29, v28);
        swift_unknownObjectRelease();
        v46 = v71;
        swift_storeEnumTagMultiPayload();
        v47 = *(v53 + 32);
        v48 = v51;
        v47(v51, v42, v46);
        v34 = v63;
      }

      v47(v34, v48, v46);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t sub_1D3003744(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for XPCResult.Failure(319, result, a1[3], a1[4]);
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D30037C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1D30038DC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1D3003A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D3003AE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1D3003B44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D3003CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v102 = a2;
  v97 = a3;
  v108[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749928, &unk_1D30F1B00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v94 - v7;
  v9 = sub_1D30E8D9C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v99 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v100 = &v94 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v101 = &v94 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v94 - v17;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D30E8B3C();
  __swift_project_value_buffer(v19, qword_1EE3133A8);
  v20 = sub_1D30E928C();
  v21 = *(v10 + 16);
  v103 = a1;
  v104 = v10 + 16;
  v105 = v21;
  v21(v18, a1, v9);
  v22 = sub_1D30E8B1C();
  if (os_log_type_enabled(v22, v20))
  {
    v23 = swift_slowAlloc();
    v95 = v3;
    v24 = v23;
    v25 = swift_slowAlloc();
    v108[0] = v25;
    *v24 = 136446466;
    sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v26 = sub_1D30E977C();
    v96 = v8;
    v27 = v9;
    v29 = v28;
    v98 = *(v10 + 8);
    v98(v18, v27);
    v30 = sub_1D2FFEA04(v26, v29, v108);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2082;
    v31 = sub_1D3004888(v102);
    v33 = sub_1D2FFEA04(v31, v32, v108);

    *(v24 + 14) = v33;
    v9 = v27;
    v8 = v96;
    _os_log_impl(&dword_1D2FD9000, v22, v20, "Absolute path for: %{public}s options: %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v25, -1, -1);
    v34 = v24;
    v4 = v95;
    MEMORY[0x1D38B3760](v34, -1, -1);
  }

  else
  {

    v98 = *(v10 + 8);
    v98(v18, v9);
  }

  v35 = v103;
  v36 = sub_1D30E8CDC();
  v37 = v105;
  if ((v36 & 1) == 0)
  {
    type metadata accessor for HelperError(0);
    sub_1D300A61C(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    v48 = swift_allocError();
    v37(v49, v35, v9);
    swift_storeEnumTagMultiPayload();
    v106 = v48;
    return swift_willThrow();
  }

  os_unfair_lock_lock(v4 + 4);
  path = container_get_path();
  os_unfair_lock_unlock(v4 + 4);
  v39 = path;
  if (!path)
  {
    type metadata accessor for ContainerManagerError(0);
    sub_1D300A61C(&qword_1EC749920, type metadata accessor for ContainerManagerError, &unk_1D30F1AC0);
    v51 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v106 = v51;
    return swift_willThrow();
  }

  v40 = v101;
  MEMORY[0x1D38B2230](v39);
  v37(v100, v40, v9);
  v37(v99, v35, v9);
  sub_1D30E8D1C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D2FF14DC(v8, &qword_1EC749928, &unk_1D30F1B00);
    v106 = type metadata accessor for FilePath.ResolutionError(0);
    sub_1D300A61C(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
    v41 = swift_allocError();
    v43 = v42;
    v44 = v35;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749930, &qword_1D30F38F0) + 48);
    v46 = v101;
    v37(v43, v101, v9);
    v37(v43 + v45, v44, v9);
    swift_storeEnumTagMultiPayload();
    v106 = v41;
    swift_willThrow();
    v47 = v46;
    return (v98)(v47, v9);
  }

  v52 = v97;
  (*(v10 + 32))(v97, v8, v9);
  v53 = v102;
  if (v102)
  {
    v54 = objc_opt_self();
    v55 = [v54 defaultManager];
    sub_1D30E8D3C();
    v56 = v10;
    v57 = v9;
    v58 = sub_1D30E906C();

    v59 = [v55 fileExistsAtPath_];

    v53 = v102;
    v9 = v57;
    v10 = v56;
    v37 = v105;
    if (v59)
    {
      v60 = [v54 defaultManager];
      sub_1D30E8D3C();
      v61 = sub_1D30E906C();

      v108[0] = 0;
      v62 = [v60 removeItemAtPath:v61 error:v108];

      if (!v62)
      {
        v85 = v108[0];
        v86 = sub_1D30E87DC();

        v106 = v86;
        swift_willThrow();
        v87 = v98;
        v98(v52, v9);
        return v87(v101, v9);
      }

      v63 = v108[0];
      v53 = v102;
    }
  }

  if ((v53 & 2) != 0)
  {
    v64 = [objc_opt_self() defaultManager];
    v65 = v97;
    v37(v99, v97, v9);
    v66 = v100;
    sub_1D30E8D2C();
    sub_1D30E8D3C();
    v67 = v66;
    v68 = v98;
    v98(v67, v9);
    v69 = sub_1D30E906C();

    v108[0] = 0;
    v70 = [v64 createDirectoryAtPath:v69 withIntermediateDirectories:1 attributes:0 error:v108];

    if (!v70)
    {
      v78 = v108[0];
      v79 = sub_1D30E87DC();

      v106 = v79;
      swift_willThrow();
      v68(v65, v9);
      return (v68)(v101, v9);
    }

    v71 = v108[0];
    v53 = v102;
  }

  if ((v53 & 4) == 0)
  {
    v47 = v101;
    return (v98)(v47, v9);
  }

  v103 = v10;
  v72 = v9;
  v107 = 1;
  v73 = objc_opt_self();
  v74 = [v73 defaultManager];
  v75 = v97;
  sub_1D30E8D3C();
  v76 = sub_1D30E906C();

  v77 = [v74 fileExistsAtPath:v76 isDirectory:&v107];

  if (v77)
  {
    if (v107)
    {
      return (v98)(v101, v72);
    }

    else
    {
      type metadata accessor for ContainerManagerError(0);
      sub_1D300A61C(&qword_1EC749920, type metadata accessor for ContainerManagerError, &unk_1D30F1AC0);
      v88 = swift_allocError();
      v89 = v97;
      v105(v90, v97, v72);
      swift_storeEnumTagMultiPayload();
      v106 = v88;
      swift_willThrow();
      v91 = v98;
      v98(v89, v72);
      return v91(v101, v72);
    }
  }

  else
  {
    v80 = [v73 defaultManager];
    sub_1D30E8D3C();
    v81 = sub_1D30E906C();

    v108[0] = 0;
    v82 = [v80 createDirectoryAtPath:v81 withIntermediateDirectories:0 attributes:0 error:v108];

    v83 = v98;
    if (v82)
    {
      v84 = v108[0];
    }

    else
    {
      v92 = v108[0];
      v93 = sub_1D30E87DC();

      v106 = v93;
      swift_willThrow();
      v83(v75, v72);
    }

    return (v83)(v101, v72);
  }
}

unint64_t sub_1D3004888(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    if (a1)
    {
      MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EBA00);
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
LABEL_6:
          sub_1D30E948C();

          MEMORY[0x1D38B2610](0, 0xE000000000000000);

          MEMORY[0x1D38B2610](62, 0xE100000000000000);
          return 0xD00000000000001BLL;
        }

LABEL_5:
        MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EB990);
        goto LABEL_6;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    MEMORY[0x1D38B2610](0xD00000000000001FLL, 0x80000001D30EB9E0);
    if ((v1 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return 0xD000000000000019;
}

uint64_t sub_1D3004A10()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE3133A8);
  __swift_project_value_buffer(v0, qword_1EE3133A8);
  return sub_1D30E8B2C();
}

void *sub_1D3004A90()
{
  v2 = v0;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v3 = sub_1D30E8B3C();
  __swift_project_value_buffer(v3, qword_1EE3133A8);
  v4 = sub_1D30E928C();
  v5 = sub_1D30E8B1C();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Init", v6, 2u);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  v7 = container_query_create();
  if (!v7)
  {
    type metadata accessor for ContainerManagerError(0);
    sub_1D300A61C(&qword_1EC749920, type metadata accessor for ContainerManagerError, &unk_1D30F1AC0);
    swift_allocError();
LABEL_14:
    swift_storeEnumTagMultiPayload();
    goto LABEL_15;
  }

  v8 = v7;
  container_query_set_class();
  container_query_operation_set_flags();
  container_query_set_persona_unique_string();
  single_result = container_query_get_single_result();
  if (!single_result)
  {
    container_query_get_last_error();
    v17 = container_error_copy_unlocalized_description();
    container_query_free();
    type metadata accessor for ContainerManagerError(0);
    sub_1D300A61C(&qword_1EC749920, type metadata accessor for ContainerManagerError, &unk_1D30F1AC0);
    swift_allocError();
    v19 = v18;
    if (v17)
    {
      v20 = sub_1D30E90FC();
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *v19 = v20;
    v19[1] = v21;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    free(v17);
    goto LABEL_19;
  }

  v10 = single_result;
  v11 = container_copy_sandbox_token();
  if (!v11)
  {
    container_query_free();
    type metadata accessor for ContainerManagerError(0);
    sub_1D300A61C(&qword_1EC749920, type metadata accessor for ContainerManagerError, &unk_1D30F1AC0);
    swift_allocError();
    goto LABEL_14;
  }

  v12 = v11;
  v13 = sub_1D30E90FC();
  v15 = v14;
  free(v12);
  v16 = sub_1D30E7844(v13, v15);
  if (v1)
  {
    container_query_free();
LABEL_15:
    swift_willThrow();
LABEL_19:
    swift_deallocPartialClassInstance();
    return v2;
  }

  *(v2 + 16) = 0;
  *(v2 + 24) = v8;
  *(v2 + 32) = v10;
  *(v2 + 40) = v16;
  return v2;
}

uint64_t sub_1D3004DEC()
{
  v1 = v0;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE3133A8);
  v3 = sub_1D30E928C();
  v4 = sub_1D30E8B1C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Deinit", v5, 2u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  container_query_free();
  sub_1D30E70C4();
  return v1;
}

uint64_t sub_1D3004ED8()
{
  sub_1D3004DEC();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

__n128 sub_1D3004F38(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D3004F44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1D3004F88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for ContainerManagerError(uint64_t a1)
{
  result = qword_1EC749900;
  if (!qword_1EC749900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D3005020(uint64_t a1)
{
  sub_1D30050CC(319, &qword_1EC749910, MEMORY[0x1E69E83A8]);
  if (v1 <= 0x3F)
  {
    sub_1D30050CC(319, &qword_1EC749918, sub_1D2FE39EC);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D30050CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

NSObject *sub_1D3005160(NSObject *a1)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v41 - v3;
  v5 = sub_1D30E8D5C();
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D30E8D9C();
  v8 = *(v7 - 1);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  if (qword_1EE3133A0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v14 = sub_1D30E8B3C();
    __swift_project_value_buffer(v14, qword_1EE3133A8);
    v15 = sub_1D30E928C();
    v16 = *(v8 + 16);
    v44 = a1;
    v16(v13, a1, v7);
    a1 = sub_1D30E8B1C();
    v17 = os_log_type_enabled(a1, v15);
    v47 = v5;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v45 = v7;
      v19 = v18;
      v20 = swift_slowAlloc();
      v43 = v11;
      v21 = v8;
      v22 = v20;
      v51[0] = v20;
      *v19 = 136446210;
      sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v23 = sub_1D30E977C();
      v25 = v24;
      v42 = *(v21 + 8);
      v42(v13, v45);
      v26 = sub_1D2FFEA04(v23, v25, v51);
      v5 = v47;

      *(v19 + 4) = v26;
      _os_log_impl(&dword_1D2FD9000, a1, v15, "Contents of directory at: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v27 = v22;
      v8 = v21;
      v11 = v43;
      MEMORY[0x1D38B3760](v27, -1, -1);
      v28 = v19;
      v7 = v45;
      MEMORY[0x1D38B3760](v28, -1, -1);
    }

    else
    {

      v42 = *(v8 + 8);
      v42(v13, v7);
    }

    v29 = v49;
    sub_1D3003CF4(v44, 0, v11);
    if (v29)
    {
      return a1;
    }

    v44 = 0;
    v30 = [objc_opt_self() defaultManager];
    sub_1D30E8D3C();
    v31 = sub_1D30E906C();

    v51[0] = 0;
    v32 = [v30 contentsOfDirectoryAtPath:v31 error:v51];

    a1 = v51[0];
    if (!v32)
    {
      v39 = v51[0];
      sub_1D30E87DC();

      swift_willThrow();
      v42(v11, v7);
      return a1;
    }

    v43 = v11;
    v41 = v8;
    v45 = v7;
    v33 = sub_1D30E917C();
    v34 = a1;

    v49 = v33;
    v13 = *(v33 + 16);
    if (!v13)
    {
      a1 = MEMORY[0x1E69E7CC0];
LABEL_20:

      v42(v43, v45);
      return a1;
    }

    v8 = 0;
    v7 = (v46 + 48);
    v48 = (v46 + 32);
    v11 = (v49 + 40);
    a1 = MEMORY[0x1E69E7CC0];
    while (v8 < *(v49 + 16))
    {

      sub_1D30E8D6C();
      if ((*v7)(v4, 1, v5) == 1)
      {
        sub_1D2FF14DC(v4, &qword_1EC749940, &qword_1D30F1B10);
      }

      else
      {
        v35 = *v48;
        (*v48)(v50, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_1D30D7E10(0, a1[2].isa + 1, 1, a1);
        }

        isa = a1[2].isa;
        v36 = a1[3].isa;
        if (isa >= v36 >> 1)
        {
          a1 = sub_1D30D7E10((v36 > 1), isa + 1, 1, a1);
        }

        a1[2].isa = (isa + 1);
        v38 = a1 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * isa;
        v5 = v47;
        v35(v38, v50, v47);
      }

      ++v8;
      v11 += 16;
      if (v13 == v8)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }
}

uint64_t sub_1D30057B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[24] = a5;
  v6[25] = v5;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749948, &unk_1D30F1B20);
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  v8 = sub_1D30E881C();
  v6[29] = v8;
  v6[30] = *(v8 - 8);
  v6[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v9 = sub_1D30E88CC();
  v6[34] = v9;
  v6[35] = *(v9 - 8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v10 = sub_1D30E8D9C();
  v6[43] = v10;
  v6[44] = *(v10 - 8);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3005A78, 0, 0);
}

uint64_t sub_1D3005A78()
{
  v193 = v0;
  v1 = v0;
  v192[1] = *MEMORY[0x1E69E9840];
  v2 = v0[24];
  v179 = v2;
  if (v2)
  {
    if (qword_1EE3133A0 != -1)
    {
      swift_once();
    }

    v3 = v0[48];
    v4 = v0[44];
    v185 = v1[43];
    v6 = v1[21];
    v5 = v1[22];
    v7 = v1[20];
    v8 = sub_1D30E8B3C();
    __swift_project_value_buffer(v8, qword_1EE3133A8);
    v9 = sub_1D30E928C();
    v10 = *(v4 + 16);
    v10(v3, v5, v185);
    sub_1D2FF17B0(v7, v6);

    v11 = sub_1D30E8B1C();
    sub_1D2FF1804(v7, v6);

    v186 = v9;
    v12 = v9;
    v13 = v11;
    v14 = os_log_type_enabled(v11, v12);
    v15 = v1[48];
    v17 = v1[43];
    v16 = v1[44];
    v181 = v10;
    if (v14)
    {
      v18 = v2;
      v176 = v1[23];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v192[0] = v20;
      *v19 = 136446722;
      v21 = sub_1D30E88EC();
      v23 = sub_1D2FFEA04(v21, v22, v192);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v24 = sub_1D30E977C();
      v26 = v25;
      v27 = *(v16 + 8);
      v27(v15, v17);
      v28 = sub_1D2FFEA04(v24, v26, v192);
      v1 = v191;

      *(v19 + 14) = v28;
      *(v19 + 22) = 2082;
      *(v19 + 24) = sub_1D2FFEA04(v176, v18, v192);
      _os_log_impl(&dword_1D2FD9000, v13, v186, "Copy item resolved from bookmark data: %{public}s to: %{public}s attributing to bundle with ID: %{public}s", v19, 0x20u);
LABEL_10:
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v20, -1, -1);
      v49 = v19;
      v50 = v27;
      MEMORY[0x1D38B3760](v49, -1, -1);

      goto LABEL_13;
    }

    v50 = *(v16 + 8);
    v50(v15, v17);
  }

  else
  {
    if (qword_1EE3133A0 != -1)
    {
      swift_once();
    }

    v29 = v0[47];
    v30 = v0[43];
    v31 = v0[44];
    v33 = v1[21];
    v32 = v1[22];
    v34 = v1[20];
    v35 = sub_1D30E8B3C();
    __swift_project_value_buffer(v35, qword_1EE3133A8);
    v36 = sub_1D30E928C();
    v37 = *(v31 + 16);
    v37(v29, v32, v30);
    sub_1D2FF17B0(v34, v33);
    v13 = sub_1D30E8B1C();
    sub_1D2FF1804(v34, v33);
    v38 = os_log_type_enabled(v13, v36);
    v39 = v1[47];
    v41 = v1[43];
    v40 = v1[44];
    v181 = v37;
    if (v38)
    {
      v187 = v36;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v192[0] = v20;
      *v19 = 136446466;
      v42 = sub_1D30E88EC();
      v44 = sub_1D2FFEA04(v42, v43, v192);

      *(v19 + 4) = v44;
      *(v19 + 12) = 2082;
      sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v45 = sub_1D30E977C();
      v47 = v46;
      v27 = *(v40 + 8);
      v27(v39, v41);
      v48 = sub_1D2FFEA04(v45, v47, v192);

      *(v19 + 14) = v48;
      _os_log_impl(&dword_1D2FD9000, v13, v187, "Copy item resolved from bookmark data: %{public}s to: %{public}s", v19, 0x16u);
      goto LABEL_10;
    }

    v50 = *(v40 + 8);
    v50(v39, v41);
  }

LABEL_13:
  v1[49] = v50;
  v51 = v1[34];
  v52 = v1[35];
  v53 = v1[33];
  *(v1 + 448) = 0;
  (*(v52 + 56))(v53, 1, 1, v51);
  sub_1D30E883C();
  sub_1D2FF14DC(v1[33], &qword_1EC7493C0, &qword_1D30EF500);
  if (*(v1 + 448) == 1)
  {
    if (qword_1EE3133A0 != -1)
    {
      swift_once();
    }

    v54 = v1[41];
    v55 = v1[42];
    v56 = v1[34];
    v57 = v1[35];
    v58 = sub_1D30E8B3C();
    __swift_project_value_buffer(v58, qword_1EE3133A8);
    (*(v57 + 16))(v54, v55, v56);
    v59 = sub_1D30E8B1C();
    v60 = sub_1D30E92BC();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v1[41];
    v64 = v1[34];
    v63 = v1[35];
    if (v61)
    {
      v177 = v50;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v192[0] = v66;
      *v65 = 136446210;
      sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v67 = sub_1D30E977C();
      v69 = v68;
      (*(v63 + 8))(v62, v64);
      v70 = sub_1D2FFEA04(v67, v69, v192);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_1D2FD9000, v59, v60, "The bookmark data for “%{public}s” are stale.", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1D38B3760](v66, -1, -1);
      v71 = v65;
      v50 = v177;
      MEMORY[0x1D38B3760](v71, -1, -1);
    }

    else
    {

      (*(v63 + 8))(v62, v64);
    }
  }

  sub_1D3003CF4(v1[22], 0, v1[46]);
  v178 = v50;
  v72 = v1[45];
  v73 = v1[34];
  v74 = v1[35];
  v76 = v1[31];
  v75 = v1[32];
  v77 = v1[29];
  v78 = v1[30];
  v181(v72, v1[46], v1[43]);
  (*(v78 + 104))(v76, *MEMORY[0x1E6968F70], v77);
  sub_1D3040AB4(v72, v76, v75);
  if ((*(v74 + 48))(v75, 1, v73) == 1)
  {
    v79 = v1[46];
    v80 = v191[43];
    v81 = v191[42];
    v82 = v191[35];
    v180 = v191[34];
    sub_1D2FF14DC(v191[32], &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for HelperError(0);
    sub_1D300A61C(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    v181(v83, v79, v80);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v178(v79, v80);
    sub_1D30E885C();
    (*(v82 + 8))(v81, v180);
LABEL_33:

    v154 = v191[1];
LABEL_34:

    return v154();
  }

  (*(v1[35] + 32))(v1[40], v1[32], v1[34]);
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v84 = v1[42];
  v86 = v1[39];
  v85 = v1[40];
  v87 = v1[38];
  v89 = v1[34];
  v88 = v1[35];
  v90 = sub_1D30E8B3C();
  __swift_project_value_buffer(v90, qword_1EE3133A8);
  v91 = sub_1D30E927C();
  v92 = *(v88 + 16);
  v92(v86, v84, v89);
  v175 = v92;
  v92(v87, v85, v89);
  v93 = sub_1D30E8B1C();
  v188 = v91;
  v94 = os_log_type_enabled(v93, v91);
  v95 = v1;
  v98 = v1 + 38;
  v97 = v1[38];
  v96 = v98[1];
  v100 = v95[34];
  v99 = v95[35];
  if (v94)
  {
    v101 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v192[0] = v174;
    *v101 = 136446466;
    sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v102 = sub_1D30E977C();
    v104 = v103;
    log = v93;
    v105 = *(v99 + 8);
    v106 = (v99 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v105(v96, v100);
    v107 = sub_1D2FFEA04(v102, v104, v192);

    *(v101 + 4) = v107;
    *(v101 + 12) = 2082;
    v108 = sub_1D30E977C();
    v110 = v109;
    v111 = v100;
    v112 = v105;
    v105(v97, v111);
    v113 = sub_1D2FFEA04(v108, v110, v192);

    *(v101 + 14) = v113;
    _os_log_impl(&dword_1D2FD9000, log, v188, "Copying the item at “%{public}s” to “%{public}s”…", v101, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v174, -1, -1);
    MEMORY[0x1D38B3760](v101, -1, -1);
  }

  else
  {

    v114 = *(v99 + 8);
    v106 = (v99 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v114(v97, v100);
    v115 = v100;
    v112 = v114;
    v114(v96, v115);
  }

  v116 = v191;
  v191[50] = v112;
  v117 = v191[37];
  v118 = v191[34];
  v119 = objc_opt_self();
  v120 = [v119 defaultManager];
  sub_1D30E884C();
  v121 = sub_1D30E882C();
  v191[51] = v106;
  v112(v117, v118);
  v191[18] = 0;
  LODWORD(v117) = [v120 createDirectoryAtURL:v121 withIntermediateDirectories:1 attributes:0 error:v191 + 18];

  v122 = v191[18];
  if (!v117)
  {
    v183 = v191[46];
    v144 = v191[43];
    v145 = v191[42];
    v146 = v191[40];
    v147 = v191[34];
    v148 = v122;
    sub_1D30E87DC();

    swift_willThrow();
    v112(v146, v147);
    v178(v183, v144);
    sub_1D30E885C();
    v112(v145, v147);
    goto LABEL_33;
  }

  v123 = v122;
  v124 = [v119 defaultManager];
  v125 = sub_1D30E882C();
  v126 = sub_1D30E882C();
  v191[19] = 0;
  v127 = [v124 copyItemAtURL:v125 toURL:v126 error:v191 + 19];

  v128 = v191[19];
  if (!v127)
  {
    v184 = v191[46];
    v149 = v191[43];
    v150 = v191[42];
    v151 = v191[40];
    v152 = v191[34];
    v153 = v128;
    sub_1D30E87DC();

    swift_willThrow();
    v112(v151, v152);
    v178(v184, v149);
    sub_1D30E885C();
    v112(v150, v152);
    goto LABEL_33;
  }

  if (!v179)
  {
    v156 = v191[46];
    v157 = v191[43];
    v158 = v191[40];
    v159 = v191[34];
    v160 = v128;
    v112(v158, v159);
    v178(v156, v157);
    v161 = v191[50];
    v162 = v191[42];
    v163 = v191[34];
    sub_1D30E885C();
    v161(v162, v163);

    v154 = v191[1];
    goto LABEL_34;
  }

  v129 = v112;
  v130 = v191[24];
  v175(v191[36], v191[40], v191[34]);

  v131 = v128;
  v132 = sub_1D30E8B1C();
  v133 = sub_1D30E92BC();

  v134 = os_log_type_enabled(v132, v133);
  v135 = v191[36];
  v136 = v191[34];
  if (v134)
  {
    v182 = v191[23];
    v137 = swift_slowAlloc();
    v189 = v130;
    v138 = swift_slowAlloc();
    v192[0] = v138;
    *v137 = 136446466;
    sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v139 = sub_1D30E977C();
    v141 = v140;
    v129(v135, v136);
    v142 = v139;
    v116 = v191;
    v143 = sub_1D2FFEA04(v142, v141, v192);

    *(v137 + 4) = v143;
    *(v137 + 12) = 2082;
    *(v137 + 14) = sub_1D2FFEA04(v182, v189, v192);
    _os_log_impl(&dword_1D2FD9000, v132, v133, "Attributing the item at “%{public}s” to the bundle with the ID “%{public}s”…", v137, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v138, -1, -1);
    MEMORY[0x1D38B3760](v137, -1, -1);
  }

  else
  {

    v129(v135, v136);
  }

  v164 = v116[27];
  v190 = v116[28];
  v165 = v116[26];
  v166 = [objc_opt_self() defaultManager];
  v116[52] = v166;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749950, &unk_1D30F1B30);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_1D30F1A10;
  v168 = sub_1D30E882C();
  v169 = [objc_opt_self() pathInfoWithBinaryURL_];

  *(v167 + 32) = v169;
  sub_1D300A5B8();
  v170 = sub_1D30E916C();
  v116[53] = v170;

  v171 = sub_1D30E906C();
  v116[54] = v171;
  v116[2] = v116;
  v116[3] = sub_1D3006ED0;
  swift_continuation_init();
  v116[17] = v165;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v116 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
  sub_1D30E91BC();
  (*(v164 + 32))(boxed_opaque_existential_0Tm, v190, v165);
  v116[10] = MEMORY[0x1E69E9820];
  v116[11] = 1107296256;
  v116[12] = sub_1D3007390;
  v116[13] = &block_descriptor_0;
  [v166 registerPaths:v170 forBundleID:v171 completionHandler:?];
  (*(v164 + 8))(boxed_opaque_existential_0Tm, v165);

  return MEMORY[0x1EEE6DEC8](v116 + 2);
}

uint64_t sub_1D3006ED0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 440) = v1;
  if (v1)
  {
    v2 = sub_1D30071BC;
  }

  else
  {
    v2 = sub_1D300700C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D300700C()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(v0 + 392);
  v5 = *(v0 + 368);
  v6 = *(v0 + 344);
  (*(v0 + 400))(*(v0 + 320), *(v0 + 272));
  v4(v5, v6);

  v7 = *(v0 + 400);
  v8 = *(v0 + 336);
  v9 = *(v0 + 272);
  sub_1D30E885C();
  v7(v8, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D30071BC(uint64_t a1)
{
  v12 = v1[54];
  v13 = v1[53];
  v2 = v1[50];
  v10 = v1[49];
  v11 = v1[52];
  v3 = v1[46];
  v4 = v1[43];
  v5 = v1[42];
  v6 = v1[40];
  v7 = v1[34];
  swift_willThrow();
  v2(v6, v7);
  v10(v3, v4);

  sub_1D30E885C();
  v2(v5, v7);

  v8 = v1[1];

  return v8();
}

void sub_1D3007390(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749948, &unk_1D30F1B20);
    sub_1D30E91CC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749948, &unk_1D30F1B20);
    sub_1D30E91DC();
  }
}

uint64_t sub_1D300747C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[24] = a5;
  v6[25] = v5;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749948, &unk_1D30F1B20);
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  v8 = sub_1D30E881C();
  v6[29] = v8;
  v6[30] = *(v8 - 8);
  v6[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v9 = sub_1D30E88CC();
  v6[34] = v9;
  v6[35] = *(v9 - 8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v10 = sub_1D30E8D9C();
  v6[43] = v10;
  v6[44] = *(v10 - 8);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3007740, 0, 0);
}

uint64_t sub_1D3007740()
{
  v193 = v0;
  v1 = v0;
  v192[1] = *MEMORY[0x1E69E9840];
  v2 = v0[24];
  v179 = v2;
  if (v2)
  {
    if (qword_1EE3133A0 != -1)
    {
      swift_once();
    }

    v3 = v0[48];
    v4 = v0[44];
    v185 = v1[43];
    v6 = v1[21];
    v5 = v1[22];
    v7 = v1[20];
    v8 = sub_1D30E8B3C();
    __swift_project_value_buffer(v8, qword_1EE3133A8);
    v9 = sub_1D30E928C();
    v10 = *(v4 + 16);
    v10(v3, v5, v185);
    sub_1D2FF17B0(v7, v6);

    v11 = sub_1D30E8B1C();
    sub_1D2FF1804(v7, v6);

    v186 = v9;
    v12 = v9;
    v13 = v11;
    v14 = os_log_type_enabled(v11, v12);
    v15 = v1[48];
    v17 = v1[43];
    v16 = v1[44];
    v181 = v10;
    if (v14)
    {
      v18 = v2;
      v176 = v1[23];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v192[0] = v20;
      *v19 = 136446722;
      v21 = sub_1D30E88EC();
      v23 = sub_1D2FFEA04(v21, v22, v192);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v24 = sub_1D30E977C();
      v26 = v25;
      v27 = *(v16 + 8);
      v27(v15, v17);
      v28 = sub_1D2FFEA04(v24, v26, v192);
      v1 = v191;

      *(v19 + 14) = v28;
      *(v19 + 22) = 2082;
      *(v19 + 24) = sub_1D2FFEA04(v176, v18, v192);
      _os_log_impl(&dword_1D2FD9000, v13, v186, "Resolved from bookmark data: %{public}s to: %{public}s attributing to bundle with ID: %{public}s", v19, 0x20u);
LABEL_10:
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v20, -1, -1);
      v49 = v19;
      v50 = v27;
      MEMORY[0x1D38B3760](v49, -1, -1);

      goto LABEL_13;
    }

    v50 = *(v16 + 8);
    v50(v15, v17);
  }

  else
  {
    if (qword_1EE3133A0 != -1)
    {
      swift_once();
    }

    v29 = v0[47];
    v30 = v0[43];
    v31 = v0[44];
    v33 = v1[21];
    v32 = v1[22];
    v34 = v1[20];
    v35 = sub_1D30E8B3C();
    __swift_project_value_buffer(v35, qword_1EE3133A8);
    v36 = sub_1D30E928C();
    v37 = *(v31 + 16);
    v37(v29, v32, v30);
    sub_1D2FF17B0(v34, v33);
    v13 = sub_1D30E8B1C();
    sub_1D2FF1804(v34, v33);
    v38 = os_log_type_enabled(v13, v36);
    v39 = v1[47];
    v41 = v1[43];
    v40 = v1[44];
    v181 = v37;
    if (v38)
    {
      v187 = v36;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v192[0] = v20;
      *v19 = 136446466;
      v42 = sub_1D30E88EC();
      v44 = sub_1D2FFEA04(v42, v43, v192);

      *(v19 + 4) = v44;
      *(v19 + 12) = 2082;
      sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v45 = sub_1D30E977C();
      v47 = v46;
      v27 = *(v40 + 8);
      v27(v39, v41);
      v48 = sub_1D2FFEA04(v45, v47, v192);

      *(v19 + 14) = v48;
      _os_log_impl(&dword_1D2FD9000, v13, v187, "Resolved from bookmark data: %{public}s to: %{public}s", v19, 0x16u);
      goto LABEL_10;
    }

    v50 = *(v40 + 8);
    v50(v39, v41);
  }

LABEL_13:
  v1[49] = v50;
  v51 = v1[34];
  v52 = v1[35];
  v53 = v1[33];
  *(v1 + 448) = 0;
  (*(v52 + 56))(v53, 1, 1, v51);
  sub_1D30E883C();
  sub_1D2FF14DC(v1[33], &qword_1EC7493C0, &qword_1D30EF500);
  if (*(v1 + 448) == 1)
  {
    if (qword_1EE3133A0 != -1)
    {
      swift_once();
    }

    v54 = v1[41];
    v55 = v1[42];
    v56 = v1[34];
    v57 = v1[35];
    v58 = sub_1D30E8B3C();
    __swift_project_value_buffer(v58, qword_1EE3133A8);
    (*(v57 + 16))(v54, v55, v56);
    v59 = sub_1D30E8B1C();
    v60 = sub_1D30E92BC();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v1[41];
    v64 = v1[34];
    v63 = v1[35];
    if (v61)
    {
      v177 = v50;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v192[0] = v66;
      *v65 = 136446210;
      sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v67 = sub_1D30E977C();
      v69 = v68;
      (*(v63 + 8))(v62, v64);
      v70 = sub_1D2FFEA04(v67, v69, v192);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_1D2FD9000, v59, v60, "The bookmark data for “%{public}s” are stale.", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1D38B3760](v66, -1, -1);
      v71 = v65;
      v50 = v177;
      MEMORY[0x1D38B3760](v71, -1, -1);
    }

    else
    {

      (*(v63 + 8))(v62, v64);
    }
  }

  sub_1D3003CF4(v1[22], 0, v1[46]);
  v178 = v50;
  v72 = v1[45];
  v73 = v1[34];
  v74 = v1[35];
  v76 = v1[31];
  v75 = v1[32];
  v77 = v1[29];
  v78 = v1[30];
  v181(v72, v1[46], v1[43]);
  (*(v78 + 104))(v76, *MEMORY[0x1E6968F70], v77);
  sub_1D3040AB4(v72, v76, v75);
  if ((*(v74 + 48))(v75, 1, v73) == 1)
  {
    v79 = v1[46];
    v80 = v191[43];
    v81 = v191[42];
    v82 = v191[35];
    v180 = v191[34];
    sub_1D2FF14DC(v191[32], &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for HelperError(0);
    sub_1D300A61C(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    v181(v83, v79, v80);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v178(v79, v80);
    sub_1D30E885C();
    (*(v82 + 8))(v81, v180);
LABEL_33:

    v154 = v191[1];
LABEL_34:

    return v154();
  }

  (*(v1[35] + 32))(v1[40], v1[32], v1[34]);
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v84 = v1[42];
  v86 = v1[39];
  v85 = v1[40];
  v87 = v1[38];
  v89 = v1[34];
  v88 = v1[35];
  v90 = sub_1D30E8B3C();
  __swift_project_value_buffer(v90, qword_1EE3133A8);
  v91 = sub_1D30E927C();
  v92 = *(v88 + 16);
  v92(v86, v84, v89);
  v175 = v92;
  v92(v87, v85, v89);
  v93 = sub_1D30E8B1C();
  v188 = v91;
  v94 = os_log_type_enabled(v93, v91);
  v95 = v1;
  v98 = v1 + 38;
  v97 = v1[38];
  v96 = v98[1];
  v100 = v95[34];
  v99 = v95[35];
  if (v94)
  {
    v101 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v192[0] = v174;
    *v101 = 136446466;
    sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v102 = sub_1D30E977C();
    v104 = v103;
    log = v93;
    v105 = *(v99 + 8);
    v106 = (v99 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v105(v96, v100);
    v107 = sub_1D2FFEA04(v102, v104, v192);

    *(v101 + 4) = v107;
    *(v101 + 12) = 2082;
    v108 = sub_1D30E977C();
    v110 = v109;
    v111 = v100;
    v112 = v105;
    v105(v97, v111);
    v113 = sub_1D2FFEA04(v108, v110, v192);

    *(v101 + 14) = v113;
    _os_log_impl(&dword_1D2FD9000, log, v188, "Moving the item at “%{public}s” to “%{public}s”…", v101, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v174, -1, -1);
    MEMORY[0x1D38B3760](v101, -1, -1);
  }

  else
  {

    v114 = *(v99 + 8);
    v106 = (v99 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v114(v97, v100);
    v115 = v100;
    v112 = v114;
    v114(v96, v115);
  }

  v116 = v191;
  v191[50] = v112;
  v117 = v191[37];
  v118 = v191[34];
  v119 = objc_opt_self();
  v120 = [v119 defaultManager];
  sub_1D30E884C();
  v121 = sub_1D30E882C();
  v191[51] = v106;
  v112(v117, v118);
  v191[18] = 0;
  LODWORD(v117) = [v120 createDirectoryAtURL:v121 withIntermediateDirectories:1 attributes:0 error:v191 + 18];

  v122 = v191[18];
  if (!v117)
  {
    v183 = v191[46];
    v144 = v191[43];
    v145 = v191[42];
    v146 = v191[40];
    v147 = v191[34];
    v148 = v122;
    sub_1D30E87DC();

    swift_willThrow();
    v112(v146, v147);
    v178(v183, v144);
    sub_1D30E885C();
    v112(v145, v147);
    goto LABEL_33;
  }

  v123 = v122;
  v124 = [v119 defaultManager];
  v125 = sub_1D30E882C();
  v126 = sub_1D30E882C();
  v191[19] = 0;
  v127 = [v124 moveItemAtURL:v125 toURL:v126 error:v191 + 19];

  v128 = v191[19];
  if (!v127)
  {
    v184 = v191[46];
    v149 = v191[43];
    v150 = v191[42];
    v151 = v191[40];
    v152 = v191[34];
    v153 = v128;
    sub_1D30E87DC();

    swift_willThrow();
    v112(v151, v152);
    v178(v184, v149);
    sub_1D30E885C();
    v112(v150, v152);
    goto LABEL_33;
  }

  if (!v179)
  {
    v156 = v191[46];
    v157 = v191[43];
    v158 = v191[40];
    v159 = v191[34];
    v160 = v128;
    v112(v158, v159);
    v178(v156, v157);
    v161 = v191[50];
    v162 = v191[42];
    v163 = v191[34];
    sub_1D30E885C();
    v161(v162, v163);

    v154 = v191[1];
    goto LABEL_34;
  }

  v129 = v112;
  v130 = v191[24];
  v175(v191[36], v191[40], v191[34]);

  v131 = v128;
  v132 = sub_1D30E8B1C();
  v133 = sub_1D30E92BC();

  v134 = os_log_type_enabled(v132, v133);
  v135 = v191[36];
  v136 = v191[34];
  if (v134)
  {
    v182 = v191[23];
    v137 = swift_slowAlloc();
    v189 = v130;
    v138 = swift_slowAlloc();
    v192[0] = v138;
    *v137 = 136446466;
    sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v139 = sub_1D30E977C();
    v141 = v140;
    v129(v135, v136);
    v142 = v139;
    v116 = v191;
    v143 = sub_1D2FFEA04(v142, v141, v192);

    *(v137 + 4) = v143;
    *(v137 + 12) = 2082;
    *(v137 + 14) = sub_1D2FFEA04(v182, v189, v192);
    _os_log_impl(&dword_1D2FD9000, v132, v133, "Attributing the item at “%{public}s” to the bundle with the ID “%{public}s”…", v137, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v138, -1, -1);
    MEMORY[0x1D38B3760](v137, -1, -1);
  }

  else
  {

    v129(v135, v136);
  }

  v164 = v116[27];
  v190 = v116[28];
  v165 = v116[26];
  v166 = [objc_opt_self() defaultManager];
  v116[52] = v166;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749950, &unk_1D30F1B30);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_1D30F1A10;
  v168 = sub_1D30E882C();
  v169 = [objc_opt_self() pathInfoWithBinaryURL_];

  *(v167 + 32) = v169;
  sub_1D300A5B8();
  v170 = sub_1D30E916C();
  v116[53] = v170;

  v171 = sub_1D30E906C();
  v116[54] = v171;
  v116[2] = v116;
  v116[3] = sub_1D3008B98;
  swift_continuation_init();
  v116[17] = v165;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v116 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
  sub_1D30E91BC();
  (*(v164 + 32))(boxed_opaque_existential_0Tm, v190, v165);
  v116[10] = MEMORY[0x1E69E9820];
  v116[11] = 1107296256;
  v116[12] = sub_1D3007390;
  v116[13] = &block_descriptor_11;
  [v166 registerPaths:v170 forBundleID:v171 completionHandler:?];
  (*(v164 + 8))(boxed_opaque_existential_0Tm, v165);

  return MEMORY[0x1EEE6DEC8](v116 + 2);
}

uint64_t sub_1D3008B98()
{
  v1 = *(*v0 + 48);
  *(*v0 + 440) = v1;
  if (v1)
  {
    v2 = sub_1D300A664;
  }

  else
  {
    v2 = sub_1D300A6E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3008D30(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4, const char *a5, ...)
{
  v122 = a5;
  v137 = a4;
  v6 = v5;
  v148[1] = *MEMORY[0x1E69E9840];
  v10 = sub_1D30E881C();
  v133 = *(v10 - 8);
  v134 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v131 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v141 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v132 = &v119 - v15;
  v16 = sub_1D30E88CC();
  v136 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v124 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v123 = &v119 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v142 = &v119 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v128 = &v119 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v143 = &v119 - v25;
  v26 = sub_1D30E8D9C();
  v145 = *(v26 - 8);
  v146 = v26;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v129 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v144 = &v119 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v119 - v31;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v33 = sub_1D30E8B3C();
  v34 = __swift_project_value_buffer(v33, qword_1EE3133A8);
  v35 = sub_1D30E928C();
  v36 = *(v145 + 16);
  v138 = v145 + 16;
  v139 = a1;
  v36(v32, a1, v146);
  sub_1D2FF17B0(a2, a3);
  v125 = v34;
  v37 = a3;
  v38 = v35;
  v39 = sub_1D30E8B1C();
  sub_1D2FF1804(a2, v37);
  v40 = os_log_type_enabled(v39, v38);
  v127 = v37;
  v126 = a2;
  v130 = v36;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v121 = v5;
    v42 = v41;
    v120 = swift_slowAlloc();
    v148[0] = v120;
    *v42 = 136446466;
    sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v43 = v146;
    v44 = sub_1D30E977C();
    v45 = v43;
    v47 = v46;
    v135 = *(v145 + 8);
    v135(v32, v45);
    v48 = sub_1D2FFEA04(v44, v47, v148);

    *(v42 + 4) = v48;
    *(v42 + 12) = 2082;
    v49 = sub_1D30E88EC();
    v51 = sub_1D2FFEA04(v49, v50, v148);

    *(v42 + 14) = v51;
    _os_log_impl(&dword_1D2FD9000, v39, v38, v137, v42, 0x16u);
    v52 = v120;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v52, -1, -1);
    v53 = v42;
    v6 = v121;
    MEMORY[0x1D38B3760](v53, -1, -1);
  }

  else
  {

    v135 = *(v145 + 8);
    v135(v32, v146);
  }

  result = sub_1D3003CF4(v139, 0, v144);
  v56 = v142;
  v55 = v143;
  v57 = v141;
  if (!v6)
  {
    v140 = 0;
    v59 = v129;
    v58 = v130;
    v130(v129, v144, v146);
    v60 = v131;
    (*(v133 + 104))(v131, *MEMORY[0x1E6968F70], v134);
    v61 = v132;
    sub_1D3040AB4(v59, v60, v132);
    v62 = v136;
    if ((*(v136 + 48))(v61, 1, v16) == 1)
    {
      sub_1D2FF14DC(v61, &qword_1EC7493C0, &qword_1D30EF500);
      type metadata accessor for HelperError(0);
      sub_1D300A61C(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
      swift_allocError();
      v63 = v144;
      v64 = v146;
      v58(v65, v144, v146);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (v135)(v63, v64);
    }

    (*(v62 + 32))(v55, v61, v16);
    v147 = 0;
    (*(v62 + 56))(v57, 1, 1, v16);
    v66 = v128;
    v67 = v140;
    sub_1D30E883C();
    v140 = v67;
    if (v67)
    {
      sub_1D2FF14DC(v57, &qword_1EC7493C0, &qword_1D30EF500);
      (*(v62 + 8))(v55, v16);
      return (v135)(v144, v146);
    }

    sub_1D2FF14DC(v57, &qword_1EC7493C0, &qword_1D30EF500);
    v68 = v55;
    if (v147 == 1)
    {
      (*(v62 + 16))(v56, v66, v16);
      v69 = v56;
      v70 = v16;
      v71 = sub_1D30E8B1C();
      v72 = v62;
      v73 = sub_1D30E92BC();
      if (os_log_type_enabled(v71, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v148[0] = v75;
        *v74 = 136446210;
        sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v76 = sub_1D30E977C();
        v78 = v77;
        (*(v72 + 8))(v69, v70);
        v79 = sub_1D2FFEA04(v76, v78, v148);
        v68 = v143;

        *(v74 + 4) = v79;
        _os_log_impl(&dword_1D2FD9000, v71, v73, "The bookmark data for “%{public}s” are stale.", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x1D38B3760](v75, -1, -1);
        v80 = v74;
        v66 = v128;
        MEMORY[0x1D38B3760](v80, -1, -1);
      }

      else
      {

        (*(v62 + 8))(v56, v70);
      }

      v16 = v70;
      v62 = v72;
    }

    v81 = sub_1D30E927C();
    v82 = v16;
    v83 = *(v62 + 16);
    v84 = v123;
    v83(v123, v68, v16);
    v85 = v124;
    v83(v124, v66, v82);
    v86 = sub_1D30E8B1C();
    v87 = os_log_type_enabled(v86, v81);
    v119 = v82;
    if (v87)
    {
      v88 = v62;
      v89 = v85;
      v90 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v148[0] = v142;
      *v90 = 136446466;
      sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v91 = sub_1D30E977C();
      LODWORD(v141) = v81;
      v93 = v92;
      v94 = *(v88 + 8);
      v94(v84, v82);
      v95 = sub_1D2FFEA04(v91, v93, v148);

      *(v90 + 4) = v95;
      *(v90 + 12) = 2082;
      v96 = sub_1D30E977C();
      v98 = v97;
      v94(v89, v82);
      v99 = v94;
      v100 = sub_1D2FFEA04(v96, v98, v148);
      v68 = v143;

      *(v90 + 14) = v100;
      _os_log_impl(&dword_1D2FD9000, v86, v141, v122, v90, 0x16u);
      v101 = v142;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v101, -1, -1);
      MEMORY[0x1D38B3760](v90, -1, -1);
    }

    else
    {

      v102 = v84;
      v99 = *(v62 + 8);
      v99(v85, v82);
      v99(v102, v82);
    }

    v103 = objc_opt_self();
    v104 = [v103 defaultManager];
    v105 = v128;
    v106 = sub_1D30E882C();
    v148[0] = 0;
    v107 = [v104 removeItemAtURL:v106 error:v148];

    if (v107)
    {
      v108 = v148[0];
      v109 = [v103 defaultManager];
      v110 = sub_1D30E882C();
      v111 = sub_1D30E882C();
      v148[0] = 0;
      v112 = [v109 copyItemAtURL:v110 toURL:v111 error:v148];

      if (v112)
      {
        v113 = v148[0];
        sub_1D30E885C();
        v114 = v119;
        v99(v105, v119);
        v99(v68, v114);
        return (v135)(v144, v146);
      }

      v117 = v148[0];
      sub_1D30E87DC();

      swift_willThrow();
      sub_1D30E885C();
      v118 = v119;
      v99(v105, v119);
      v99(v68, v118);
      return (v135)(v144, v146);
    }

    else
    {
      v115 = v148[0];
      sub_1D30E87DC();

      swift_willThrow();
      sub_1D30E885C();
      v116 = v119;
      v99(v105, v119);
      v99(v68, v116);
      return (v135)(v144, v146);
    }
  }

  return result;
}

uint64_t sub_1D3009B38(char *a1)
{
  v77[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D30E84EC();
  v76 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D30E8D9C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v65 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v65 - v12;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D30E8B3C();
  v15 = __swift_project_value_buffer(v14, qword_1EE3133A8);
  v16 = sub_1D30E928C();
  v17 = *(v5 + 16);
  v73 = a1;
  v67 = v17;
  v68 = v5 + 16;
  v17(v13, a1, v4);
  v69 = v15;
  v18 = sub_1D30E8B1C();
  v19 = os_log_type_enabled(v18, v16);
  v71 = v2;
  v72 = v5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v65 = v8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v66 = v11;
    v23 = v4;
    v24 = v22;
    v77[0] = v22;
    *v21 = 136446210;
    sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v25 = sub_1D30E977C();
    v27 = v26;
    v28 = *(v5 + 8);
    v28(v13, v23);
    v29 = sub_1D2FFEA04(v25, v27, v77);

    *(v21 + 4) = v29;
    _os_log_impl(&dword_1D2FD9000, v18, v16, "Remove item at: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v30 = v24;
    v4 = v23;
    v11 = v66;
    MEMORY[0x1D38B3760](v30, -1, -1);
    v31 = v21;
    v8 = v65;
    MEMORY[0x1D38B3760](v31, -1, -1);
  }

  else
  {

    v28 = *(v5 + 8);
    v28(v13, v4);
  }

  v32 = v75;
  result = sub_1D3003CF4(v73, 0, v11);
  v34 = v76;
  if (!v32)
  {
    v75 = v28;
    v35 = [objc_opt_self() defaultManager];
    sub_1D30E8D3C();
    v36 = sub_1D30E906C();

    v77[0] = 0;
    v37 = [v35 removeItemAtPath:v36 error:v77];

    if (v37)
    {
      v38 = v77[0];
      return (v75)(v11, v4);
    }

    else
    {
      v39 = v77[0];
      v40 = sub_1D30E87DC();

      swift_willThrow();
      v41 = v40;
      v42 = v70;
      sub_1D30E84CC();
      sub_1D300A61C(&qword_1EC749938, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
      v43 = v71;
      v44 = sub_1D30E86DC();
      v74 = v40;
      v45 = v40;
      v46 = v43;

      v49 = *(v34 + 8);
      v48 = v34 + 8;
      v47 = v49;
      v49(v42, v46);
      if (v44 & 1) != 0 || (v76 = v48, v50 = v46, v51 = v74, v52 = v74, sub_1D30E84DC(), v53 = sub_1D30E86DC(), v51, v47(v42, v50), (v53))
      {

        v54 = sub_1D30E92AC();
        v67(v8, v11, v4);
        v55 = sub_1D30E8B1C();
        if (os_log_type_enabled(v55, v54))
        {
          v56 = swift_slowAlloc();
          LODWORD(v76) = v54;
          v57 = v56;
          v58 = swift_slowAlloc();
          v77[0] = v58;
          *v57 = 136446210;
          sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
          v59 = sub_1D30E977C();
          v61 = v60;
          v62 = v75;
          v75(v8, v4);
          v63 = sub_1D2FFEA04(v59, v61, v77);

          *(v57 + 4) = v63;
          _os_log_impl(&dword_1D2FD9000, v55, v76, "No item exists at “%{public}s”.", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v58);
          MEMORY[0x1D38B3760](v58, -1, -1);
          MEMORY[0x1D38B3760](v57, -1, -1);

          return v62(v11, v4);
        }

        else
        {

          v64 = v75;
          v75(v8, v4);
          return v64(v11, v4);
        }
      }

      else
      {
        return (v75)(v11, v4);
      }
    }
  }

  return result;
}

uint64_t sub_1D300A268()
{
  v1 = v0;
  v2 = sub_1D30E8D9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContainerManagerError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D300A554(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v13 = v8[1];
      if (v13)
      {
        v14 = *v8;
        v15 = 0;
        v16 = 0xE000000000000000;
        sub_1D30E948C();

        v15 = 0x1000000000000027;
        v16 = 0x80000001D30EB900;
        MEMORY[0x1D38B2610](v14, v13);

        return v15;
      }

      else
      {
        return 0x1000000000000026;
      }
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_1D30E948C();

      v15 = 0x1000000000000014;
      v16 = 0x80000001D30EB930;
      sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v11 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v11);

      MEMORY[0x1D38B2610](782074082, 0xA400000000000000);
      v12 = v15;
      (*(v3 + 8))(v5, v2);
      return v12;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    return 0x1000000000000026;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x1000000000000028;
  }

  else
  {
    return 0xD000000000000022;
  }
}

uint64_t sub_1D300A554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerManagerError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D300A5B8()
{
  result = qword_1EC749958;
  if (!qword_1EC749958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC749958);
  }

  return result;
}

uint64_t sub_1D300A61C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D300A664(uint64_t a1)
{

  return sub_1D30071BC(a1);
}

uint64_t sub_1D300A6E0()
{

  return sub_1D300700C();
}

id sub_1D300AA08()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D300AA64()
{
  result = sub_1D30E906C();
  qword_1EC75A8D0 = result;
  return result;
}

id sub_1D300AAAC()
{
  if (qword_1EC749018 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC75A8D0;

  return v1;
}

uint64_t sub_1D300AB08@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1D30E857C();
  if (qword_1EC749018 != -1)
  {
    swift_once();
  }

  v3 = sub_1D30E908C();
  v5 = v4;
  if (v3 == sub_1D30E908C() && v5 == v6)
  {

    v10 = 0;
  }

  else
  {
    v8 = sub_1D30E97CC();

    v10 = v8 ^ 1;
  }

  *a1 = v10 & 1;
  return result;
}

void sub_1D300AC00(void *a1)
{
  v2 = [a1 platform];

  if ((v2 & 0x80000000) != 0)
  {
    __break(1u);
  }
}

uint64_t sub_1D300AC5C(void *a1, uint64_t a2)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7499C0, &qword_1D30F1F18);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7499C8, &qword_1D30F1F20);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7499D0, &qword_1D30F1F28);
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7499D8, &qword_1D30F1F30);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D300CDA8();
  v15 = v26;
  sub_1D30E992C();
  if (!v15)
  {
    v28 = 0;
    sub_1D300CEA4();
    sub_1D30E96DC();
    (*(v20 + 8))(v10, v8);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 == 1)
  {
    v29 = 1;
    sub_1D300CE50();
    sub_1D30E96DC();
    (*(v21 + 8))(v7, v22);
    return (*(v12 + 8))(v14, v11);
  }

  v30 = 2;
  sub_1D300CDFC();
  v17 = v23;
  sub_1D30E96DC();
  v27 = v15;
  sub_1D2FE0630();
  v18 = v25;
  sub_1D30E974C();
  (*(v24 + 8))(v17, v18);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1D300B030(uint64_t a1)
{
  v2 = sub_1D300CDA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D300B06C(uint64_t a1)
{
  v2 = sub_1D300CDA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D300B0A8(uint64_t a1)
{
  v2 = sub_1D300CDFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D300B0E4(uint64_t a1)
{
  v2 = sub_1D300CDFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D300B120(uint64_t a1)
{
  v2 = sub_1D300CEA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D300B15C(uint64_t a1)
{
  v2 = sub_1D300CEA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D300B198(uint64_t a1)
{
  v2 = sub_1D300CE50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D300B1D4(uint64_t a1)
{
  v2 = sub_1D300CE50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D300B210@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D300C3CC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D300B258()
{
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D80, type metadata accessor for Schema1_0_0.LicenseRecord, &unk_1D30F1C74);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord, &unk_1D30F1D30);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D300B35C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord, &unk_1D30F1D30);
  sub_1D30E8F1C();
}

uint64_t sub_1D300B404()
{
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D80, type metadata accessor for Schema1_0_0.LicenseRecord, &unk_1D30F1C74);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord, &unk_1D30F1D30);
  sub_1D300CC9C(&qword_1EC749218, &qword_1EC749220, &protocol conformance descriptor for LicenseRecord.ElementID, MEMORY[0x1E69E6330]);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D300B544@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D80, type metadata accessor for Schema1_0_0.LicenseRecord, &unk_1D30F1C74);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord, &unk_1D30F1D30);
  sub_1D300CC9C(&qword_1EC749218, &qword_1EC749220, &protocol conformance descriptor for LicenseRecord.ElementID, MEMORY[0x1E69E6330]);
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D300B68C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D80, type metadata accessor for Schema1_0_0.LicenseRecord, &unk_1D30F1C74);
  sub_1D30E8ADC();
}

uint64_t sub_1D300B758(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord, &unk_1D30F1D30);
  sub_1D300CC9C(&qword_1EC749200, &qword_1EC749210, &protocol conformance descriptor for LicenseRecord.ElementID, MEMORY[0x1E69E6300]);
  sub_1D30E8F1C();
}

uint64_t sub_1D300B83C()
{
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D80, type metadata accessor for Schema1_0_0.LicenseRecord, &unk_1D30F1C74);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord, &unk_1D30F1D30);
  sub_1D300C378();
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D300B944(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord, &unk_1D30F1D30);
  sub_1D300C324();
  sub_1D30E8F1C();
}

uint64_t sub_1D300B9F0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtCO29ManagedBackgroundAssetsHelper11Schema1_0_013LicenseRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for Schema1_0_0.LicenseRecord(uint64_t a1)
{
  result = qword_1EE313D50;
  if (!qword_1EE313D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D300BAE8(uint64_t a1)
{
  result = sub_1D30E8B0C();
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

uint64_t sub_1D300BBB4()
{
  v0 = sub_1D30E8F9C();
  __swift_allocate_value_buffer(v0, qword_1EE315338);
  __swift_project_value_buffer(v0, qword_1EE315338);
  return sub_1D30E8FAC();
}

char *sub_1D300BC0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749230, &unk_1D30F2B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D30EE910;
  v1 = type metadata accessor for AppReviewRecord(0);
  v2 = sub_1D300CD38(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v3 = type metadata accessor for AssetPackRecord(0);
  v4 = sub_1D300CD38(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = type metadata accessor for Schema1_0_0.LicenseRecord(0);
  v6 = sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord, &unk_1D30F1D30);
  result = sub_1D30D7C08(1, 3, 1, inited);
  *(result + 2) = 3;
  *(result + 8) = v5;
  *(result + 9) = v6;
  qword_1EE315330 = result;
  return result;
}

uint64_t sub_1D300BD84()
{
  if (qword_1EE313C78 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D300BDE0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE313C80 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8F9C();
  v3 = __swift_project_value_buffer(v2, qword_1EE315338);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_1D300BE88(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  v4[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749978, &unk_1D30F1E20);
  v4[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v4 + 2);
  sub_1D30E8ECC();
  sub_1D30E8AFC();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v4 + 2);
  sub_1D2FE02DC(a1, (v4 + 2));
  swift_endAccess();
  return v4;
}

void (*sub_1D300BF78(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2FE022C(v1 + 16, v4);
  return sub_1D2FF6490;
}

uint64_t sub_1D300C0F4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord, &unk_1D30F1D30);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

unint64_t sub_1D300C324()
{
  result = qword_1EC749968;
  if (!qword_1EC749968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749968);
  }

  return result;
}

unint64_t sub_1D300C378()
{
  result = qword_1EC749970;
  if (!qword_1EC749970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749970);
  }

  return result;
}

uint64_t sub_1D300C3CC(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749980, &qword_1D30F1EF0);
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v28 - v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749988, &qword_1D30F1EF8);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749990, &qword_1D30F1F00);
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749998, &unk_1D30F1F08);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = a1[3];
  v37 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D300CDA8();
  v14 = v36;
  sub_1D30E990C();
  if (!v14)
  {
    v29 = v5;
    v36 = 0;
    v15 = v34;
    v16 = sub_1D30E96AC();
    v17 = (2 * *(v16 + 16)) | 1;
    v38 = v16;
    v39 = v16 + 32;
    v40 = 0;
    v41 = v17;
    v18 = sub_1D302D668();
    v13 = v11;
    if (v18 == 3 || v40 != v41 >> 1)
    {
      v20 = sub_1D30E94EC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30);
      *v22 = &type metadata for Schema1_0_0.LicenseRecord.State;
      sub_1D30E960C();
      sub_1D30E94DC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
    }

    else
    {
      if (v18)
      {
        if (v18 == 1)
        {
          LOBYTE(v42) = 1;
          sub_1D300CE50();
          v19 = v36;
          sub_1D30E95FC();
          if (!v19)
          {
            (*(v32 + 8))(v4, v15);
            (*(v9 + 8))(v11, v8);
            swift_unknownObjectRelease();
            v13 = 1;
            goto LABEL_11;
          }
        }

        else
        {
          LOBYTE(v42) = 2;
          sub_1D300CDFC();
          v25 = v36;
          sub_1D30E95FC();
          if (!v25)
          {
            v26 = v11;
            sub_1D2FE072C();
            v27 = v31;
            sub_1D30E967C();
            (*(v33 + 8))(0, v27);
            (*(v9 + 8))(v26, v8);
            swift_unknownObjectRelease();
            v13 = v42;
            goto LABEL_11;
          }
        }

        (*(v9 + 8))(v11, v8);
LABEL_10:
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      LOBYTE(v42) = 0;
      sub_1D300CEA4();
      v24 = v36;
      sub_1D30E95FC();
      if (!v24)
      {
        (*(v30 + 8))(v7, v29);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v13 = 0;
        goto LABEL_11;
      }
    }

    (*(v9 + 8))(v13, v8);
    goto LABEL_10;
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v13;
}

uint64_t sub_1D300C9CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491B8, &qword_1D30EEB60);
  sub_1D30E8F8C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D30EF4A0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C0, &qword_1D30EEB90);
  sub_1D30E8FCC();
  *(swift_allocObject() + 16) = xmmword_1D30EE930;
  sub_1D30E8FBC();
  sub_1D30E8FDC();
  swift_allocObject();
  sub_1D30E8FEC();
  sub_1D300CD38(&qword_1EE3140E0, MEMORY[0x1E697BD30], MEMORY[0x1E697BD28]);
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  return v0;
}

uint64_t sub_1D300CC9C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749208, &qword_1D30EEC18);
    sub_1D300CD38(a2, type metadata accessor for LicenseRecord.ElementID, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D300CD38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_29ManagedBackgroundAssetsHelper11Schema1_0_0O13LicenseRecordC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1D300CDA8()
{
  result = qword_1EC7499A0;
  if (!qword_1EC7499A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499A0);
  }

  return result;
}

unint64_t sub_1D300CDFC()
{
  result = qword_1EC7499A8;
  if (!qword_1EC7499A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499A8);
  }

  return result;
}

unint64_t sub_1D300CE50()
{
  result = qword_1EC7499B0;
  if (!qword_1EC7499B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499B0);
  }

  return result;
}

unint64_t sub_1D300CEA4()
{
  result = qword_1EC7499B8;
  if (!qword_1EC7499B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499B8);
  }

  return result;
}

unint64_t sub_1D300CF3C()
{
  result = qword_1EC7499E0;
  if (!qword_1EC7499E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499E0);
  }

  return result;
}

unint64_t sub_1D300CF94()
{
  result = qword_1EC7499E8;
  if (!qword_1EC7499E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499E8);
  }

  return result;
}

unint64_t sub_1D300CFEC()
{
  result = qword_1EC7499F0;
  if (!qword_1EC7499F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499F0);
  }

  return result;
}

unint64_t sub_1D300D044()
{
  result = qword_1EC7499F8;
  if (!qword_1EC7499F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499F8);
  }

  return result;
}

unint64_t sub_1D300D09C()
{
  result = qword_1EC749A00;
  if (!qword_1EC749A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A00);
  }

  return result;
}

unint64_t sub_1D300D0F4()
{
  result = qword_1EC749A08;
  if (!qword_1EC749A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A08);
  }

  return result;
}

unint64_t sub_1D300D14C()
{
  result = qword_1EC749A10;
  if (!qword_1EC749A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A10);
  }

  return result;
}

unint64_t sub_1D300D1A4()
{
  result = qword_1EC749A18;
  if (!qword_1EC749A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A18);
  }

  return result;
}

unint64_t sub_1D300D1FC()
{
  result = qword_1EC749A20;
  if (!qword_1EC749A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A20);
  }

  return result;
}

unint64_t sub_1D300D254()
{
  result = qword_1EC749A28;
  if (!qword_1EC749A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A28);
  }

  return result;
}

uint64_t AssetPackRecord.GlobalID.appBundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AssetPackRecord.GlobalID.appTeamID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AssetPackRecord.GlobalID.assetPackID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t AssetPackRecord.GlobalID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  if (v4)
  {
    v6 = v0[2];
    v10 = 0;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0xD00000000000001CLL, 0x80000001D30EBBE0);
    MEMORY[0x1D38B2610](v1, v2);
    MEMORY[0x1D38B2610](0x6165742070706120, 0xEE00203A4449206DLL);
    v7 = v6;
    v8 = v4;
  }

  else
  {
    sub_1D30E948C();

    v10 = 0xD00000000000001CLL;
    v7 = v1;
    v8 = v2;
  }

  MEMORY[0x1D38B2610](v7, v8);
  MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EBC00);
  MEMORY[0x1D38B2610](v3, v5);
  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return v10;
}

void __swiftcall AssetPackRecord.GlobalID.init(appBundleID:appTeamID:assetPackID:)(ManagedBackgroundAssetsHelper::AssetPackRecord::GlobalID *__return_ptr retstr, Swift::String appBundleID, Swift::String appTeamID, Swift::String assetPackID)
{
  retstr->appBundleID = appBundleID;
  retstr->appTeamID.value = appTeamID;
  retstr->assetPackID = assetPackID;
}

void __swiftcall AssetPackRecord.GlobalID.init(appBundleID:appTeamID:assetPackID:)(ManagedBackgroundAssetsHelper::AssetPackRecord::GlobalID *__return_ptr retstr, Swift::String appBundleID, Swift::String_optional appTeamID, Swift::String assetPackID)
{
  retstr->appBundleID = appBundleID;
  retstr->appTeamID = appTeamID;
  retstr->assetPackID = assetPackID;
}

uint64_t AssetPackRecord.GlobalID.hash(into:)(uint64_t a1)
{
  sub_1D30E90BC();

  return sub_1D30E90BC();
}

uint64_t static AssetPackRecord.GlobalID.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[4];
  v11 = a2[5];
  if (v5 && (v12 = a2[3]) != 0 && (a1[2] != a2[2] || v5 != v12))
  {
    v13 = sub_1D30E97CC();
    if (v3 == v8)
    {
LABEL_6:
      if (v4 == v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v13 = 1;
    if (v3 == v8)
    {
      goto LABEL_6;
    }
  }

  if ((sub_1D30E97CC() & 1) == 0)
  {
LABEL_11:
    v13 = 0;
    return v13 & 1;
  }

LABEL_8:
  if ((v6 != v10 || v7 != v11) && (sub_1D30E97CC() & 1) == 0)
  {
    goto LABEL_11;
  }

  return v13 & 1;
}

uint64_t static AssetPackRecord.GlobalID.< infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1D30E97CC()) && v2 == v4 && v3 == v5)
  {
    return 0;
  }

  return sub_1D30E97CC();
}

uint64_t sub_1D300D6C8()
{
  v1 = 0x496D616554707061;
  if (*v0 != 1)
  {
    v1 = 0x6361507465737361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C646E7542707061;
  }
}

uint64_t sub_1D300D730@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D3011974(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D300D758(uint64_t a1)
{
  v2 = sub_1D300D994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D300D794(uint64_t a1)
{
  v2 = sub_1D300D994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetPackRecord.GlobalID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749A30, &qword_1D30F2310);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D300D994();
  sub_1D30E992C();
  v14 = 0;
  v9 = v11[5];
  sub_1D30E970C();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1D30E96EC();
  v12 = 2;
  sub_1D30E970C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D300D994()
{
  result = qword_1EC749A38;
  if (!qword_1EC749A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A38);
  }

  return result;
}

uint64_t AssetPackRecord.GlobalID.hashValue.getter()
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t AssetPackRecord.GlobalID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749A40, &qword_1D30F2318);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D300D994();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_1D30E963C();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_1D30E961C();
  v21 = v12;
  v23 = 2;
  v13 = sub_1D30E963C();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D300DCF8(void *a1, uint64_t *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1D30E97CC()) && v2 == v4 && v3 == v5)
  {
    return 0;
  }

  return sub_1D30E97CC();
}

BOOL sub_1D300DDC4(uint64_t *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = *a2 == *a1 && a2[1] == a1[1];
  if (v6 || (sub_1D30E97CC()) && (v4 == v2 ? (v7 = v5 == v3) : (v7 = 0), v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1D30E97CC();
  }

  return (v8 & 1) == 0;
}