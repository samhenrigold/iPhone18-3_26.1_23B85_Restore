uint64_t sub_258FB02A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258FC4054();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_258FB0368(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_258FC4054();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
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

uint64_t sub_258FB0520(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258FB0540(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void type metadata accessor for TransportError()
{
  if (!qword_27F999028)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F999028);
    }
  }
}

uint64_t EncryptedLocation.encryptedLocation.getter()
{
  v1 = *(v0 + 16);
  sub_258FB061C(v1, *(v0 + 24));
  return v1;
}

void sub_258FB061C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_258FB0698(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_258FB06EC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_258FB0768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_258FB07B0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t MicroFindMyInterface.Error.hashValue.getter()
{
  v1 = *v0;
  sub_258FC4524();
  MEMORY[0x259C9FD70](v1);
  return sub_258FC4544();
}

uint64_t sub_258FB08A0()
{
  v1 = *v0;
  sub_258FC4524();
  MEMORY[0x259C9FD70](v1);
  return sub_258FC4544();
}

uint64_t sub_258FB08E8(uint64_t a1)
{
  v2 = *v1;
  sub_258FC4524();
  MEMORY[0x259C9FD70](v2);
  return sub_258FC4544();
}

unint64_t sub_258FB0930()
{
  result = qword_27F999030;
  if (!qword_27F999030)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MicroFindMyInterface.Error, &type metadata for MicroFindMyInterface.Error, v0, v1);
    atomic_store(result, &qword_27F999030);
  }

  return result;
}

uint64_t _s5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s5ErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t Identifier.keyId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Identifier.findMyId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

MicroFindMy::Identifier __swiftcall Identifier.init(keyId:findMyId:)(Swift::String keyId, Swift::String findMyId)
{
  *v2 = keyId;
  v2[1] = findMyId;
  result.findMyId = findMyId;
  result.keyId = keyId;
  return result;
}

uint64_t sub_258FB0B6C()
{
  if (*v0)
  {
    return 0x6449794D646E6966;
  }

  else
  {
    return 0x644979656BLL;
  }
}

uint64_t sub_258FB0BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x644979656BLL && a2 == 0xE500000000000000;
  if (v6 || (sub_258FC44B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6449794D646E6966 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258FC44B4();

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

uint64_t sub_258FB0C94(uint64_t a1)
{
  v2 = sub_258FB0F2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258FB0CD0(uint64_t a1)
{
  v2 = sub_258FB0F2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Identifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999038, &qword_258FC4CC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB0F2C();
  sub_258FC4564();
  v12 = 0;
  v8 = v10[3];
  sub_258FC4454();
  if (!v8)
  {
    v11 = 1;
    sub_258FC4454();
  }

  return (*(v4 + 8))(v6, v3);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_258FB0F2C()
{
  result = qword_27F999040;
  if (!qword_27F999040)
  {
    result = swift_getWitnessTable(byte_258FC4E2C, &type metadata for Identifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F999040);
  }

  return result;
}

uint64_t Identifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999048, &qword_258FC4CD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB0F2C();
  sub_258FC4554();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_258FC4404();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_258FC4404();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t sub_258FB11FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_258FB1244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_258FB12A8()
{
  result = qword_27F999050;
  if (!qword_27F999050)
  {
    result = swift_getWitnessTable(byte_258FC4E04, &type metadata for Identifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F999050);
  }

  return result;
}

unint64_t sub_258FB1300()
{
  result = qword_27F999058;
  if (!qword_27F999058)
  {
    result = swift_getWitnessTable(aB, &type metadata for Identifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F999058);
  }

  return result;
}

unint64_t sub_258FB1358()
{
  result = qword_27F999060;
  if (!qword_27F999060)
  {
    result = swift_getWitnessTable(asc_258FC4D9C, &type metadata for Identifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F999060);
  }

  return result;
}

MicroFindMy::Location __swiftcall Location.init(latitude:longitude:horizontalAccuracy:timestamp:)(Swift::Double latitude, Swift::Double longitude, Swift::Double horizontalAccuracy, Swift::Double timestamp)
{
  *v4 = latitude;
  v4[1] = longitude;
  v4[2] = horizontalAccuracy;
  v4[3] = timestamp;
  result.timestamp = timestamp;
  result.horizontalAccuracy = horizontalAccuracy;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

unint64_t sub_258FB13D8()
{
  v1 = 0x656475746974616CLL;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6D617473656D6974;
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

uint64_t sub_258FB1464@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_258FB1F54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_258FB1498(uint64_t a1)
{
  v2 = sub_258FB16E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258FB14D4(uint64_t a1)
{
  v2 = sub_258FB16E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Location.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999068, &qword_258FC4E90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB16E4();
  sub_258FC4564();
  v8[15] = 0;
  sub_258FC4474();
  if (!v1)
  {
    v8[14] = 1;
    sub_258FC4474();
    v8[13] = 2;
    sub_258FC4474();
    v8[12] = 3;
    sub_258FC4474();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_258FB16E4()
{
  result = qword_27F999070;
  if (!qword_27F999070)
  {
    result = swift_getWitnessTable(aAf, &type metadata for Location.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F999070);
  }

  return result;
}

uint64_t Location.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999078, &qword_258FC4E98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB16E4();
  sub_258FC4554();
  if (!v2)
  {
    v22 = 0;
    sub_258FC4424();
    v10 = v9;
    v21 = 1;
    sub_258FC4424();
    v12 = v11;
    v20 = 2;
    sub_258FC4424();
    v15 = v14;
    v19 = 3;
    sub_258FC4424();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
    *(a2 + 2) = v15;
    *(a2 + 3) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_258FB195C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258FB197C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Location.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Location.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_258FB1B0C()
{
  result = qword_27F999080;
  if (!qword_27F999080)
  {
    result = swift_getWitnessTable(aQ, &type metadata for Location.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F999080);
  }

  return result;
}

unint64_t sub_258FB1B64()
{
  result = qword_27F999088;
  if (!qword_27F999088)
  {
    atomic_store(result, &qword_27F999088);
  }

  return result;
}

unint64_t sub_258FB1BBC()
{
  result = qword_27F999090;
  if (!qword_27F999090)
  {
    result = swift_getWitnessTable(byte_258FC4F58, &type metadata for Location.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F999090);
  }

  return result;
}

uint64_t *sub_258FB1C10@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 32);
  if (v3)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v5 = result[2];
    v4 = result[3];
    v7 = *result;
    v6 = result[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999098, &qword_258FC5038);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_258FC4E80;
    sub_258FC43B4();

    v9 = sub_258FC4304();
    MEMORY[0x259C9FB70](v9);

    v10 = MEMORY[0x277D837D0];
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 32) = 0xD000000000000015;
    *(v8 + 40) = 0x8000000258FC6C30;
    sub_258FC4514();

    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_258FC4E80;
    MEMORY[0x259C9FB70](0x203A2074616CLL, 0xE600000000000000);
    sub_258FC4364();
    *(v11 + 56) = v10;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    sub_258FC4514();

    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_258FC4E80;
    MEMORY[0x259C9FB70](0x203A676E6F6CLL, 0xE600000000000000);
    sub_258FC4364();
    *(v12 + 56) = v10;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0xE000000000000000;
    sub_258FC4514();

    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_258FC4E80;
    MEMORY[0x259C9FB70](0x203A63636168, 0xE600000000000000);
    sub_258FC4364();
    *(v13 + 56) = v10;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    sub_258FC4514();

    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_258FC4E80;
    MEMORY[0x259C9FB70](0x203A656D6974, 0xE600000000000000);
    sub_258FC4364();
    *(v14 + 56) = v10;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    sub_258FC4514();

    *a2 = v7;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
    *(a2 + 24) = v4;
  }

  *(a2 + 32) = v3 & 1;
  return result;
}

uint64_t sub_258FB1F54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_258FC44B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_258FC44B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000258FC6C10 == a2 || (sub_258FC44B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 3;
  }

  else
  {
    v6 = sub_258FC44B4();

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

uint64_t sub_258FB20CC()
{
  v0 = sub_258FC40E4();
  __swift_allocate_value_buffer(v0, qword_27F99A718);
  __swift_project_value_buffer(v0, qword_27F99A718);
  return sub_258FC40D4();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void MicroFindMyInterface.init()(uint64_t *a1@<X8>)
{
  v3 = sub_258FC4244();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  if (_s11MicroFindMy0abC9InterfaceV11isSupportedSbvgZ_0())
  {
    sub_258FB76D8();
    if (v1)
    {
      return;
    }

    sub_258FB8E7C(0xD000000000000024, v12);
    v13 = *(v4 + 16);
    v35 = 0;
    v13(v10, v12, v3);
    type metadata accessor for MicroFindMyService.Service();
    v14 = swift_allocObject();
    v13(v7, v10, v3);
    sub_258FC4284();
    swift_allocObject();
    v15 = sub_258FC4274();
    v16 = *(v4 + 8);
    v16(v10, v3);
    *(v14 + 16) = v15;

    v17 = v35;
    v18 = sub_258FB91EC();
    if (v17)
    {

      v16(v12, v3);

      return;
    }

    v23 = v18;
    v34 = v16;

    v36 = v23;
    v33 = sub_258FC4304();
    v25 = v24;
    if (qword_27F999020 != -1)
    {
      swift_once();
    }

    v26 = sub_258FC40E4();
    __swift_project_value_buffer(v26, qword_27F99A718);

    v35 = sub_258FC40C4();
    v27 = sub_258FC4374();

    v32 = v27;
    if (os_log_type_enabled(v35, v27))
    {
      v28 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36 = v31;
      *v28 = 136315138;
      v33 = sub_258FB630C(v33, v25, &v36);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_258FAF000, v35, v32, "capabilities: %s", v28, 0xCu);
      v29 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x259CA0250](v29, -1, -1);
      MEMORY[0x259CA0250](v28, -1, -1);
    }

    else
    {
    }

    v34(v12, v3);
  }

  else
  {
    if (qword_27F999020 != -1)
    {
      swift_once();
    }

    v19 = sub_258FC40E4();
    __swift_project_value_buffer(v19, qword_27F99A718);
    v20 = sub_258FC40C4();
    v21 = sub_258FC4374();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_258FAF000, v20, v21, "AOP2 not supported on this platform.", v22, 2u);
      MEMORY[0x259CA0250](v22, -1, -1);
    }

    v23 = 0;
    v14 = 0;
  }

  *a1 = v23;
  a1[1] = v14;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MicroFindMyInterface.set(configuration:)(MicroFindMy::MicroFindMyInterface::Configuration configuration)
{
  if ((*v1 & 1) == 0)
  {
    v2 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D08928], v2);
    swift_willThrow();
    return;
  }

  activeDurationInSeconds = configuration.activeDurationInSeconds;
  v5 = *configuration.activeDurationInSeconds;
  if (v5 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = activeDurationInSeconds[1];
  if (v6 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = activeDurationInSeconds[2];
  if (v7 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    goto LABEL_16;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    goto LABEL_16;
  }

  if (v7 < 0xFFFFFFFF80000000)
  {
    goto LABEL_16;
  }

  v8 = activeDurationInSeconds[3];
  if (v8 < 0xFFFFFFFF80000000)
  {
    goto LABEL_16;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(v1 + 8))
  {
    sub_258FB95BC(v5 | (v6 << 32), v7 | (v8 << 32));
    return;
  }

LABEL_18:
  __break(1u);
}

MicroFindMy::MicroFindMyInterface::Configuration __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MicroFindMyInterface.configuration()()
{
  if (*v3)
  {
    if (*(v3 + 8))
    {
      v9 = v2;
      v0 = sub_258FB9A5C();
      if (!v4)
      {
        *v9 = v0;
        v9[1] = v0 >> 32;
        v9[2] = v1;
        v9[3] = v1 >> 32;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v5 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D08928], v5);
    v0 = swift_willThrow();
  }

  result.minimumTimeBetweenPublishInSeconds = v8;
  result.distanceThresholdInMeters = v7;
  result.timeThresholdInSeconds = v1;
  result.activeDurationInSeconds = v0;
  return result;
}

MicroFindMy::MicroFindMyInterface::Configuration __swiftcall MicroFindMyInterface.Configuration.init(activeDurationInSeconds:timeThresholdInSeconds:distanceThresholdInMeters:minimumTimeBetweenPublishInSeconds:)(Swift::Int activeDurationInSeconds, Swift::Int timeThresholdInSeconds, Swift::Int distanceThresholdInMeters, Swift::Int minimumTimeBetweenPublishInSeconds)
{
  *v4 = activeDurationInSeconds;
  v4[1] = timeThresholdInSeconds;
  v4[2] = distanceThresholdInMeters;
  v4[3] = minimumTimeBetweenPublishInSeconds;
  result.minimumTimeBetweenPublishInSeconds = minimumTimeBetweenPublishInSeconds;
  result.distanceThresholdInMeters = distanceThresholdInMeters;
  result.timeThresholdInSeconds = timeThresholdInSeconds;
  result.activeDurationInSeconds = activeDurationInSeconds;
  return result;
}

uint64_t MicroFindMyInterface.set(endpointConfiguration:)(uint64_t a1)
{
  My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0);
  v5 = *(My - 8);
  MEMORY[0x28223BE20](My);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990A8, &qword_258FC5050);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  if (*v1)
  {
    v17 = *(v1 + 8);
    sub_258FB7BDC(a1, &v28 - v12);
    v18 = *(v5 + 48);
    v19 = v18(v13, 1, My);
    v31 = v2;
    v39 = v17;
    if (v19 == 1)
    {
      sub_258FB8CC8(v13, &qword_27F9990A8, &qword_258FC5050);
    }

    else
    {
      v20 = *&v13[*(My + 48)];

      sub_258FB7CB0(v13);
      if (*(v20 + 16))
      {
      }
    }

    sub_258FB7BDC(a1, v11);
    if (v18(v11, 1, My) == 1)
    {
      result = sub_258FB8CC8(v11, &qword_27F9990A8, &qword_258FC5050);
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
    }

    else
    {
      sub_258FB7C4C(v11, v7);
      sub_258FC4034();
      v30 = sub_258FC4314();

      v29 = sub_258FC4314();
      v24 = sub_258FC4314();
      v25 = sub_258FC4314();
      v26 = sub_258FC4314();
      v27 = sub_258FC4314();
      v21 = sub_258FC4314();
      v22 = sub_258FC4314();
      v23 = v7[*(My + 44)];
      result = sub_258FB7CB0(v7);
      *&v32 = v30;
      *(&v32 + 1) = v29;
      *&v33 = v24;
      *(&v33 + 1) = v25;
      *&v34 = v26;
      *(&v34 + 1) = v27;
    }

    *&v35 = v21;
    *(&v35 + 1) = v22;
    v36 = v23;
    v38 = v23;
    v37[0] = v32;
    v37[1] = v33;
    v37[2] = v34;
    v37[3] = v35;
    if (v39)
    {

      sub_258FB9DAC(v37);
      return sub_258FB8CC8(&v32, &qword_27F9990B0, &qword_258FC5058);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v14 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D08928], v14);
    return swift_willThrow();
  }

  return result;
}

void *sub_258FB2CCC(uint64_t a1, unint64_t a2)
{
  v4 = sub_258FC40A4();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_258FB8074(a1, a2);
      return MEMORY[0x277D84F90];
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
      v13 = sub_258FB674C(v10, 0);
      v14 = sub_258FC4064();
      sub_258FB8074(a1, a2);
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

void MicroFindMyInterface.endpointConfiguration()(char *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990B8, &qword_258FC5060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v59 - v5;
  v7 = sub_258FC4054();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*v1 & 1) == 0)
  {
    v11 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D08928], v11);
    swift_willThrow();
    return;
  }

  if (!*(v1 + 8))
  {
    __break(1u);
    return;
  }

  sub_258FBA3A8(v71);
  if (!v2)
  {
    v13 = v71[0];
    if (!v71[0])
    {
LABEL_32:
      My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration(v13);
      (*(*(My - 8) + 56))(a1, 1, 1, My);
      return;
    }

    v73 = v71[3];
    v69 = v71[5];
    v70 = v71[4];
    v67 = v71[7];
    v68 = v71[6];
    v66 = v72;

    sub_258FB3440(v14);
    if (!v15)
    {
      goto LABEL_30;
    }

    sub_258FC4044();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_258FB8CC8(v71, &qword_27F9990B0, &qword_258FC5058);
      v16 = &qword_27F9990B8;
      v17 = &qword_258FC5060;
      v18 = v6;
LABEL_31:
      sub_258FB8CC8(v18, v16, v17);
      v13 = 0;
      goto LABEL_32;
    }

    v65 = *(v8 + 32);
    v65(v10, v6, v7);

    v20 = sub_258FB3440(v19);
    if (!v21)
    {
      (*(v8 + 8))(v10, v7);
LABEL_30:
      v16 = &qword_27F9990B0;
      v17 = &qword_258FC5058;
      v18 = v71;
      goto LABEL_31;
    }

    v22 = v21;
    v23 = v20;

    v25 = sub_258FB3440(v24);
    if (!v26)
    {
      (*(v8 + 8))(v10, v7);
LABEL_29:

      goto LABEL_30;
    }

    v27 = v26;
    v64 = v25;

    v29 = sub_258FB3440(v28);
    if (v30)
    {
      v63 = v29;
      v73 = v30;

      v32 = sub_258FB3440(v31);
      if (v33)
      {
        v62 = v32;
        v70 = v33;

        v35 = sub_258FB3440(v34);
        if (v36)
        {
          v61 = v35;
          v69 = v36;

          v38 = sub_258FB3440(v37);
          if (v39)
          {
            v59 = v38;
            v60 = v39;
            v68 = v27;

            v41 = sub_258FB3440(v40);
            if (v42)
            {
              v43 = v42;
              v44 = HIBYTE(v42) & 0xF;
              if ((v42 & 0x2000000000000000) == 0)
              {
                v44 = v41 & 0xFFFFFFFFFFFFLL;
              }

              if (v44)
              {
                v67 = v41;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990C0, &qword_258FC5068);
                v45 = swift_allocObject();
                *(v45 + 16) = xmmword_258FC4E80;
                *(v45 + 32) = v67;
                *(v45 + 40) = v43;
              }

              else
              {

                v45 = MEMORY[0x277D84F90];
              }

              v65(a1, v10, v7);
              sub_258FB8CC8(v71, &qword_27F9990B0, &qword_258FC5058);
              v47 = type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0);
              v48 = &a1[v47[5]];
              *v48 = v23;
              *(v48 + 1) = v22;
              v49 = &a1[v47[6]];
              v50 = v68;
              *v49 = v64;
              *(v49 + 1) = v50;
              v51 = &a1[v47[7]];
              v52 = v73;
              *v51 = v63;
              *(v51 + 1) = v52;
              v53 = &a1[v47[8]];
              v54 = v70;
              *v53 = v62;
              *(v53 + 1) = v54;
              v55 = &a1[v47[9]];
              v56 = v69;
              *v55 = v61;
              *(v55 + 1) = v56;
              v57 = &a1[v47[10]];
              v58 = v60;
              *v57 = v59;
              *(v57 + 1) = v58;
              *&a1[v47[12]] = v45;
              a1[v47[11]] = v66;
              (*(*(v47 - 1) + 56))(a1, 0, 1, v47);
              return;
            }

            (*(v8 + 8))(v10, v7);

            goto LABEL_28;
          }

          (*(v8 + 8))(v10, v7);
        }

        else
        {
          (*(v8 + 8))(v10, v7);
        }
      }

      else
      {
        (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
      (*(v8 + 8))(v10, v7);
    }

LABEL_28:

    goto LABEL_29;
  }
}

uint64_t sub_258FB3440(uint64_t a1)
{
  v3 = sub_258FC42F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_258FB6288(v7);
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      v1 = 0;
      while (*(a1 + v1 + 32))
      {
        if (v11 == ++v1)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      sub_258FC43D4();
      __break(1u);
    }

    sub_258FC42C4();
    v12 = sub_258FC42E4();
    (*(v4 + 8))(v6, v3);
    v13 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithBytes:a1 + 32 length:v1 encoding:v12];

    if (v13)
    {
      v10 = sub_258FC4294();
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

int *MicroFindMyInterface.EndpointConfiguration.init(url:contextApp:authorization:mmeClientInfo:userAgent:timezone:udid:connectedWatches:useTestInstances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v23 = sub_258FC4054();
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  result = type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0);
  v25 = (a9 + result[5]);
  *v25 = a2;
  v25[1] = a3;
  v26 = (a9 + result[6]);
  *v26 = a4;
  v26[1] = a5;
  v27 = (a9 + result[7]);
  *v27 = a6;
  v27[1] = a7;
  v28 = (a9 + result[8]);
  *v28 = a8;
  v28[1] = a10;
  v29 = (a9 + result[9]);
  *v29 = a11;
  v29[1] = a12;
  v30 = (a9 + result[10]);
  *v30 = a13;
  v30[1] = a14;
  *(a9 + result[12]) = a15;
  *(a9 + result[11]) = a16;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MicroFindMyInterface.set(identifier:)(MicroFindMy::Identifier_optional *identifier)
{
  if ((*v1 & 1) == 0)
  {
    v2 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D08928], v2);
    swift_willThrow();
    return;
  }

  v4 = *(v1 + 8);
  if (identifier->value.keyId._object)
  {
    v5 = sub_258FC4314();
    v6 = sub_258FC4314();
    if (v4)
    {
      sub_258FBA7E8(v5, v6);

      return;
    }

    __break(1u);
  }

  else if (v4)
  {
    sub_258FBA7E8(0, 0);
    return;
  }

  __break(1u);
}

uint64_t MicroFindMyInterface.set(pushToken:)(uint64_t result, unint64_t a2)
{
  if ((*v2 & 1) == 0)
  {
    v3 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D08928], v3);
    return swift_willThrow();
  }

  v5 = *(v2 + 8);
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      goto LABEL_12;
    }

    LODWORD(v7) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v7 = v7;
      goto LABEL_10;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 != 2)
  {
    goto LABEL_12;
  }

  v9 = *(result + 16);
  v8 = *(result + 24);
  v10 = __OFSUB__(v8, v9);
  v7 = v8 - v9;
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (v7 > 256)
  {
    sub_258FB7D0C();
    swift_allocError();
    *v11 = 7;
    return swift_willThrow();
  }

LABEL_12:
  if (v5)
  {
    v12 = result;
    sub_258FB061C(result, a2);
    v14 = sub_258FB2CCC(v12, a2);
    sub_258FBAD98(v14);
  }

LABEL_16:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MicroFindMyInterface.setLocation(location:)(MicroFindMy::Location_optional *location)
{
  if (*v1)
  {
    if (*(v1 + 8))
    {
      is_nil = location->is_nil;
      if (is_nil)
      {
        v5 = -1;
      }

      else
      {
        v5 = 0;
      }

      v6 = vdupq_n_s64(v5);
      v7 = vbicq_s8(*&location->value.latitude, v6);
      v8 = vbicq_s8(*&location->value.horizontalAccuracy, v6);
      v9[0] = v7;
      v9[1] = v8;
      v10 = is_nil;
      sub_258FBB230(v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v2 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D08928], v2);
    swift_willThrow();
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MicroFindMyInterface.location()(MicroFindMy::Location_optional *__return_ptr retstr)
{
  if (*v1)
  {
    if (*(v1 + 8))
    {
      sub_258FBB708(v6);
      if (!v2)
      {
        sub_258FB1C10(v6, retstr);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v3 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D08928], v3);
    swift_willThrow();
  }
}

uint64_t MicroFindMyInterface.simulateRecievePush(payload:)(uint64_t result, unint64_t a2)
{
  if (*v2)
  {
    if (*(v2 + 8))
    {
      v5 = result;
      sub_258FB061C(result, a2);
      v7 = sub_258FB2CCC(v5, a2);
      sub_258FBBAEC(v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v3 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D08928], v3);
    return swift_willThrow();
  }

  return result;
}

void MicroFindMyInterface.generatePushPayload()()
{
  if (*v0)
  {
    if (*(v0 + 8))
    {
      v4 = sub_258FBBF84();
      if (!v1)
      {
        sub_258FB7F18(v4);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v2 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D08928], v2);
    swift_willThrow();
  }
}

uint64_t MicroFindMyInterface.set(publicKey:)(uint64_t result, unint64_t a2)
{
  if ((*v2 & 1) == 0)
  {
    v3 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D08928], v3);
    return swift_willThrow();
  }

  v5 = *(v2 + 8);
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(result + 16);
      v7 = *(result + 24);
      v9 = __OFSUB__(v7, v8);
      v10 = v7 - v8;
      if (v9)
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v10 == 57)
      {
        goto LABEL_10;
      }
    }

LABEL_14:
    sub_258FB7D0C();
    swift_allocError();
    *v14 = 7;
    return swift_willThrow();
  }

  if (!v6)
  {
    if (BYTE6(a2) != 57)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    if (HIDWORD(result) - result != 57)
    {
      goto LABEL_14;
    }

LABEL_10:
    if (v5)
    {
      v11 = result;
      sub_258FB061C(result, a2);
      v13 = sub_258FB2CCC(v11, a2);
      sub_258FBC46C(v13);
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t (*sub_258FB406C(uint64_t (*result)(void)))(void)
{
  if (*v1)
  {
    if (*(v1 + 8))
    {
      return result();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v2 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D08928], v2);
    return swift_willThrow();
  }

  return result;
}

uint64_t (*sub_258FB4178(uint64_t (*result)(void)))(void)
{
  if ((*v1 & 1) == 0)
  {
    v2 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D08928], v2);
    v4 = swift_willThrow();
    return (v4 & 1);
  }

  if (*(v1 + 8))
  {
    v4 = result();
    return (v4 & 1);
  }

  __break(1u);
  return result;
}

void MicroFindMyInterface.set(uuid:)()
{
  if (*v0)
  {
    if (*(v0 + 8))
    {
      v3 = sub_258FC40B4();
      sub_258FBCFC8(v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v1 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D08928], v1);
    swift_willThrow();
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MicroFindMyInterface.getAnalytics()(MicroFindMy::Analytics *__return_ptr retstr)
{
  if (*v1)
  {
    if (*(v1 + 8))
    {
      v6 = sub_258FBD3B8();
      if (!v2)
      {
        retstr->locationsReceived = v6;
        retstr->pushesReceived = HIDWORD(v6);
        retstr->backgroundProactivePushesHandled = v7;
        retstr->locationPushesHandled = HIDWORD(v7);
        retstr->successfulReversePushes = v8;
        retstr->failedReversePushes = HIDWORD(v8);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v3 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D08928], v3);
    swift_willThrow();
  }
}

uint64_t MicroFindMyInterface.encryptedLocationCatalog(sequence:)@<X0>(void *a1@<X8>, unsigned int a2@<W0>)
{
  v42[5] = *MEMORY[0x277D85DE8];
  if (*v2)
  {
    if (*(v2 + 8))
    {
      result = sub_258FBD720(a2);
      if (!v3)
      {
        if (v7)
        {
          v35 = result;
          v38 = *(v7 + 16);
          if (v38)
          {
            v8 = v7;

            v9 = v8;
            v10 = 0;
            v11 = (v8 + 40);
            v12 = MEMORY[0x277D84F98];
            do
            {
              if (v10 >= *(v9 + 16))
              {
                __break(1u);
LABEL_33:
                __break(1u);
LABEL_34:
                __break(1u);
              }

              v13 = *(v11 - 1);
              v39 = *v11;
              v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990D0, &qword_258FC5070);
              v42[3] = v14;
              v42[4] = sub_258FB7FC8();
              v42[0] = v13;
              v15 = __swift_project_boxed_opaque_existential_1(v42, v14);
              v16 = *v15;
              v17 = *(*v15 + 16);
              if (v17)
              {
                if (v17 <= 0xE)
                {
                  memset(__dst, 0, sizeof(__dst));
                  v41 = v17;
                  memcpy(__dst, (v16 + 32), v17);
                  v20 = *__dst;
                  v21 = v37 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v41 << 16)) << 32);
                  swift_bridgeObjectRetain_n();
                  v37 = v21;
                }

                else
                {
                  sub_258FC4024();
                  swift_allocObject();
                  swift_bridgeObjectRetain_n();
                  v18 = sub_258FC3FE4();
                  v19 = v18;
                  if (v17 >= 0x7FFFFFFF)
                  {
                    sub_258FC4084();
                    v20 = swift_allocObject();
                    *(v20 + 16) = 0;
                    *(v20 + 24) = v17;
                    v21 = v19 | 0x8000000000000000;
                  }

                  else
                  {
                    v20 = v17 << 32;
                    v21 = v18 | 0x4000000000000000;
                  }
                }
              }

              else
              {
                swift_bridgeObjectRetain_n();
                v20 = 0;
                v21 = 0xC000000000000000;
              }

              __swift_destroy_boxed_opaque_existential_1(v42);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v42[0] = v12;
              v24 = sub_258FB69F4(v20, v21);
              v25 = v12[2];
              v26 = (v23 & 1) == 0;
              v27 = v25 + v26;
              if (__OFADD__(v25, v26))
              {
                goto LABEL_33;
              }

              v28 = v23;
              if (v12[3] >= v27)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_258FB7570();
                }
              }

              else
              {
                sub_258FB6A6C(v27, isUniquelyReferenced_nonNull_native);
                v29 = sub_258FB69F4(v20, v21);
                if ((v28 & 1) != (v30 & 1))
                {
                  goto LABEL_36;
                }

                v24 = v29;
              }

              v12 = v42[0];
              if (v28)
              {
                *(*(v42[0] + 56) + 8 * v24) = v39;

                sub_258FB8074(v20, v21);
              }

              else
              {
                *(v42[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
                v31 = (v12[6] + 16 * v24);
                *v31 = v20;
                v31[1] = v21;
                *(v12[7] + 8 * v24) = v39;

                v32 = v12[2];
                v33 = __OFADD__(v32, 1);
                v34 = v32 + 1;
                if (v33)
                {
                  goto LABEL_34;
                }

                v12[2] = v34;
              }

              ++v10;
              v11 += 2;
              v9 = v8;
            }

            while (v38 != v10);
            result = swift_bridgeObjectRelease_n();
          }

          else
          {

            v12 = MEMORY[0x277D84F98];
          }

          *a1 = v35;
          a1[1] = v12;
        }

        else
        {
          *a1 = 0;
          a1[1] = 0;
        }
      }
    }

    else
    {
      __break(1u);
LABEL_36:
      result = sub_258FC44C4();
      __break(1u);
    }
  }

  else
  {
    v4 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D08928], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t MicroFindMyInterface.encryptedLocation(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = sub_258FC42F4();
  result = MEMORY[0x28223BE20](v8 - 8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*v3 & 1) == 0)
  {
    v12 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D08928], v12);
    return swift_willThrow();
  }

  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_18;
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (!v17)
    {
      if (v18 == 32)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v14)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 32)
      {
        goto LABEL_10;
      }

LABEL_18:
      sub_258FB7D0C();
      swift_allocError();
      *v29 = 4;
      return swift_willThrow();
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) != 32)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (!*(v3 + 8))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v30[0] = a1;
  v30[1] = a2;
  sub_258FB80C8();
  v19 = sub_258FC3FD4();
  v20 = sub_258FBDB64(v19);
  v22 = v21;
  v24 = v23;

  if (!v4)
  {
    if (v24)
    {

      sub_258FC42C4();
      sub_258FB4B18(v24, v11);
      if (v25)
      {
        v26 = sub_258FC4074();
        v28 = v27;

        if (v28 >> 60 != 15)
        {
          *a3 = v20;
          a3[1] = v22;
          a3[2] = v26;
          a3[3] = v28;
          return result;
        }
      }

      else
      {
      }
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0xF000000000000000;
  }

  return result;
}

uint64_t sub_258FB4B18(uint64_t a1, char *a2)
{
  v4 = sub_258FC42F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258FC42C4();
  v8 = sub_258FC42B4();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if ((v8 & 1) == 0)
  {
    sub_258FC42D4();
    v10 = sub_258FC42B4();
    v9(v7, v4);
    if ((v10 & 1) == 0)
    {
      sub_258FC42A4();
      v11 = sub_258FC42B4();
      v9(v7, v4);
      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v13 = sub_258FB6288(v12);
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v13;
  sub_258FC42C4();
  v16 = sub_258FC42B4();
  v9(v7, v4);
  if (v16)
  {

LABEL_17:
    v9(a2, v4);
    return v15;
  }

  if ((sub_258FC43A4() & 1) == 0)
  {

LABEL_10:
    v17 = *(a1 + 16);
    if (v17)
    {
      v7 = 0;
      while (v7[a1 + 32])
      {
        if (v17 == ++v7)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      sub_258FC43D4();
      __break(1u);
    }

    v18 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithBytes:a1 + 32 length:v7 encoding:sub_258FC42E4()];

    if (!v18)
    {
      v9(a2, v4);
      return 0;
    }

    v15 = sub_258FC4294();

    goto LABEL_17;
  }

  v9(a2, v4);

  return v15;
}

MicroFindMy::MicroFindMyInterface::Configuration __swiftcall MicroFindMyInterface.Configuration.init(activeDurationInSeconds:timeThresholdInSeconds:distanceThresholdInMeters:)(Swift::Int activeDurationInSeconds, Swift::Int timeThresholdInSeconds, Swift::Int distanceThresholdInMeters)
{
  *v3 = activeDurationInSeconds;
  v3[1] = timeThresholdInSeconds;
  v3[2] = distanceThresholdInMeters;
  v3[3] = 900;
  result.distanceThresholdInMeters = distanceThresholdInMeters;
  result.timeThresholdInSeconds = timeThresholdInSeconds;
  result.activeDurationInSeconds = activeDurationInSeconds;
  return result;
}

unint64_t sub_258FB4E2C()
{
  v1 = 0xD000000000000016;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000022;
  }

  if (!*v0)
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

uint64_t sub_258FB4EA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_258FB87EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_258FB4EC8(uint64_t a1)
{
  v2 = sub_258FB811C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258FB4F04(uint64_t a1)
{
  v2 = sub_258FB811C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MicroFindMyInterface.Configuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990E8, &qword_258FC5078);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB811C();
  sub_258FC4564();
  v15 = 0;
  sub_258FC4484();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v14 = 1;
  sub_258FC4484();
  v13 = 2;
  sub_258FC4484();
  v12 = 3;
  sub_258FC4484();
  return (*(v5 + 8))(v7, v4);
}

uint64_t MicroFindMyInterface.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990F8, &qword_258FC5080);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB811C();
  sub_258FC4554();
  if (!v2)
  {
    v18 = 0;
    v9 = sub_258FC4434();
    v17 = 1;
    v10 = sub_258FC4434();
    v16 = 2;
    v14 = sub_258FC4434();
    v15 = 3;
    v13 = sub_258FC4434();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    v12 = v13;
    a2[2] = v14;
    a2[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MicroFindMyInterface.EndpointConfiguration.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258FC4054();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MicroFindMyInterface.EndpointConfiguration.contextApp.getter()
{
  v1 = *(v0 + *(type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0) + 20));

  return v1;
}

uint64_t MicroFindMyInterface.EndpointConfiguration.authorization.getter()
{
  v1 = *(v0 + *(type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0) + 24));

  return v1;
}

uint64_t MicroFindMyInterface.EndpointConfiguration.mmeClientInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0) + 28));

  return v1;
}

uint64_t MicroFindMyInterface.EndpointConfiguration.userAgent.getter()
{
  v1 = *(v0 + *(type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0) + 32));

  return v1;
}

uint64_t MicroFindMyInterface.EndpointConfiguration.timezone.getter()
{
  v1 = *(v0 + *(type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0) + 36));

  return v1;
}

uint64_t MicroFindMyInterface.EndpointConfiguration.udid.getter()
{
  v1 = *(v0 + *(type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0) + 40));

  return v1;
}

uint64_t MicroFindMyInterface.EndpointConfiguration.connectedWatches.getter()
{
  type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0);
}

int *MicroFindMyInterface.EndpointConfiguration.init(url:contextApp:authorization:mmeClientInfo:userAgent:timezone:udid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = sub_258FC4054();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  result = type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0);
  v23 = (a9 + result[5]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + result[6]);
  *v24 = a4;
  v24[1] = a5;
  v25 = (a9 + result[7]);
  *v25 = a6;
  v25[1] = a7;
  v26 = (a9 + result[8]);
  *v26 = a8;
  v26[1] = a10;
  v27 = (a9 + result[9]);
  *v27 = a11;
  v27[1] = a12;
  v28 = (a9 + result[10]);
  *v28 = a13;
  v28[1] = a14;
  *(a9 + result[12]) = MEMORY[0x277D84F90];
  *(a9 + result[11]) = 0;
  return result;
}

unint64_t sub_258FB56A4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 7107189;
    v5 = 0x7A69726F68747561;
    if (a1 != 2)
    {
      v5 = 0x6E65696C43656D6DLL;
    }

    if (a1)
    {
      v4 = 0x41747865746E6F63;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1684628597;
    if (a1 != 6)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0x6E65674172657375;
    if (a1 != 4)
    {
      v2 = 0x656E6F7A656D6974;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_258FB57E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_258FB8958(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_258FB5814(uint64_t a1)
{
  v2 = sub_258FB8170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258FB5850(uint64_t a1)
{
  v2 = sub_258FB8170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MicroFindMyInterface.EndpointConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999100, &qword_258FC5088);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB8170();
  sub_258FC4564();
  LOBYTE(v12) = 0;
  sub_258FC4054();
  sub_258FB8D9C(&qword_27F999110, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_258FC4494();
  if (!v2)
  {
    My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0);
    LOBYTE(v12) = 1;
    sub_258FC4454();
    LOBYTE(v12) = 2;
    sub_258FC4454();
    LOBYTE(v12) = 3;
    sub_258FC4454();
    LOBYTE(v12) = 4;
    sub_258FC4454();
    LOBYTE(v12) = 5;
    sub_258FC4454();
    LOBYTE(v12) = 6;
    sub_258FC4454();
    LOBYTE(v12) = 7;
    sub_258FC4464();
    v12 = *(v3 + *(My + 48));
    v11[7] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999118, &qword_258FC5090);
    sub_258FB81C4(&qword_27F999120, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_258FC4494();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MicroFindMyInterface.EndpointConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_258FC4054();
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999128, &qword_258FC5098);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v7 = &v32 - v6;
  My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0);
  MEMORY[0x28223BE20](My);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB8170();
  v37 = v7;
  sub_258FC4554();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v35;
  LOBYTE(v40) = 0;
  sub_258FB8D9C(&qword_27F999130, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v12 = v36;
  sub_258FC4444();
  (*(v34 + 32))(v10, v12, v4);
  LOBYTE(v40) = 1;
  v13 = sub_258FC4404();
  v32 = v4;
  v14 = &v10[My[5]];
  *v14 = v13;
  v14[1] = v15;
  LOBYTE(v40) = 2;
  v36 = 0;
  v16 = sub_258FC4404();
  v17 = &v10[My[6]];
  *v17 = v16;
  v17[1] = v18;
  LOBYTE(v40) = 3;
  v19 = sub_258FC4404();
  v20 = &v10[My[7]];
  *v20 = v19;
  v20[1] = v21;
  LOBYTE(v40) = 4;
  v22 = sub_258FC4404();
  v23 = &v10[My[8]];
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v40) = 5;
  v25 = sub_258FC4404();
  v26 = &v10[My[9]];
  *v26 = v25;
  v26[1] = v27;
  LOBYTE(v40) = 6;
  v28 = sub_258FC4404();
  v29 = &v10[My[10]];
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v40) = 7;
  v10[My[11]] = sub_258FC4414() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999118, &qword_258FC5090);
  v39 = 8;
  sub_258FB81C4(&qword_27F999138, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_258FC4444();
  (*(v11 + 8))(v37, v38);
  *&v10[My[12]] = v40;
  sub_258FB8230(v10, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_258FB7CB0(v10);
}

uint64_t sub_258FB6288(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = sub_258FC4324();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_258FB630C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_258FB63D8(v11, 0, 0, 1, a1, a2);
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
    sub_258FB8C6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_258FB63D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_258FB64E4(a5, a6);
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
    result = sub_258FC43C4();
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

void *sub_258FB64E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_258FB6530(a1, a2);
  sub_258FB6660(&unk_286A4CBF0);
  return v3;
}

void *sub_258FB6530(uint64_t a1, unint64_t a2)
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

  v6 = sub_258FB674C(v5, 0);
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

  result = sub_258FC43C4();
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
        v10 = sub_258FC4344();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_258FB674C(v10, 0);
        result = sub_258FC4394();
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

uint64_t sub_258FB6660(uint64_t result)
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

  result = sub_258FB67C0(result, v11, 1, v3);
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

void *sub_258FB674C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999190, &qword_258FC5440);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_258FB67C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999190, &qword_258FC5440);
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

uint64_t sub_258FB68B4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

_BYTE *sub_258FB6960@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_258FB7D60(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_258FB7E18(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_258FB7E94(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_258FB69F4(uint64_t a1, unint64_t a2)
{
  sub_258FC4524();
  sub_258FC4094();
  v4 = sub_258FC4544();

  return sub_258FB6D0C(a1, a2, v4);
}

uint64_t sub_258FB6A6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999188, &qword_258FC5438);
  result = sub_258FC43F4();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v30 = *(*(v5 + 48) + 16 * v20);
      if ((v4 & 1) == 0)
      {
        sub_258FB061C(v30, *(*(v5 + 48) + 16 * v20 + 8));
      }

      sub_258FC4524();
      sub_258FC4094();
      result = sub_258FC4544();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v16 = v30;
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
      v16 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_258FB6D0C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v74 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v71 = v14;
  __n = BYTE6(a2);
  v69 = a1;
  v70 = HIDWORD(a1) - a1;
  v65 = (a1 >> 32) - a1;
  v66 = a1 >> 32;
  v72 = v10;
  v73 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v74) & 1) == 0)
      {
        return v6;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v70;
          if (v71)
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
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        return v6;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      return v6;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_258FB061C(v17, v16);
      v35 = sub_258FC3FF4();
      if (v35)
      {
        v40 = sub_258FC4014();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      sub_258FC4004();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v64 = *(a1 + 24);
        v37 = sub_258FC3FF4();
        if (v37)
        {
          v60 = sub_258FC4014();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v64, v59);
        v61 = v64 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = sub_258FC4004();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v66 < v69)
        {
          goto LABEL_154;
        }

        v37 = sub_258FC3FF4();
        if (v37)
        {
          v41 = sub_258FC4014();
          if (__OFSUB__(v69, v41))
          {
            goto LABEL_161;
          }

          v37 += v69 - v41;
        }

        result = sub_258FC4004();
        v39 = v65;
        if (result < v65)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v67;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_258FB061C(v17, v16);
      v32 = sub_258FC3FF4();
      if (v32)
      {
        v49 = sub_258FC4014();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = sub_258FC4004();
      v7 = v68;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v66 < v69)
    {
      goto LABEL_146;
    }

    sub_258FB061C(v17, v16);
    v29 = sub_258FC3FF4();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = sub_258FC4014();
    if (__OFSUB__(v69, v31))
    {
      goto LABEL_152;
    }

    v32 = v69 - v31 + v30;
    result = sub_258FC4004();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v65)
    {
      v50 = v65;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_258FB8074(v17, v16);
LABEL_135:
    v10 = v72;
    v4 = v73;
    if (!v62)
    {
      return v6;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_258FB061C(v17, v16);
    v35 = sub_258FC3FF4();
    if (v35)
    {
      v36 = sub_258FC4014();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = sub_258FC4004();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v63 = *(a1 + 24);
      v37 = sub_258FC3FF4();
      if (v37)
      {
        v57 = sub_258FC4014();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v63, v56);
      v58 = v63 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = sub_258FC4004();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v66 < v69)
      {
        goto LABEL_148;
      }

      v37 = sub_258FC3FF4();
      if (v37)
      {
        v38 = sub_258FC4014();
        if (__OFSUB__(v69, v38))
        {
          goto LABEL_159;
        }

        v37 += v69 - v38;
      }

      result = sub_258FC4004();
      v39 = v65;
      if (result < v65)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_258FB8074(v17, v16);
        return v6;
      }

      v62 = memcmp(v35, v37, v39);
      sub_258FB8074(v17, v16);
      v7 = v68;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v67;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v77 = BYTE2(a1);
    v78 = BYTE3(a1);
    v79 = v67;
    v80 = BYTE5(a1);
    v81 = BYTE6(a1);
    v82 = HIBYTE(a1);
    v83 = a2;
    v84 = BYTE2(a2);
    v85 = BYTE3(a2);
    v86 = BYTE4(a2);
    v87 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      return v6;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_258FB061C(v17, v16);
    v32 = sub_258FC3FF4();
    if (v32)
    {
      v44 = sub_258FC4014();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = sub_258FC4004();
    v7 = v68;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v66 < v69)
  {
    goto LABEL_147;
  }

  sub_258FB061C(v17, v16);
  v51 = sub_258FC3FF4();
  if (v51)
  {
    v52 = v51;
    v53 = sub_258FC4014();
    if (__OFSUB__(v69, v53))
    {
      goto LABEL_151;
    }

    v32 = v69 - v53 + v52;
    result = sub_258FC4004();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  sub_258FC4004();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = sub_258FC4004();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

void sub_258FB7570()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999188, &qword_258FC5438);
  v2 = *v0;
  v3 = sub_258FC43E4();
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
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_258FB061C(v19, *(&v19 + 1));
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

uint64_t sub_258FB76D8()
{
  sub_258FC3FC4();
  if (v14)
  {
    if (swift_dynamicCast())
    {
      v0 = v15;
      goto LABEL_6;
    }
  }

  else
  {
    sub_258FB8CC8(&v12, &qword_27F999198, &qword_258FC5448);
  }

  v0 = 0;
LABEL_6:
  sub_258FC3FC4();
  if (!v14)
  {
    v1 = sub_258FB8CC8(&v12, &qword_27F999198, &qword_258FC5448);
LABEL_11:
    v2 = MEMORY[0x277D84F90];
    if (!v0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999118, &qword_258FC5090);
  v1 = swift_dynamicCast();
  if ((v1 & 1) == 0)
  {
    goto LABEL_11;
  }

  v2 = v15;
  if (!v0)
  {
LABEL_9:
    v3 = "ty.iokit-user-client-class";
    v4 = 0xD000000000000028;
LABEL_16:

    goto LABEL_17;
  }

LABEL_12:
  v12 = 0xD000000000000014;
  v13 = 0x8000000258FC6EE0;
  MEMORY[0x28223BE20](v1);
  v11 = &v12;
  v5 = sub_258FB68B4(sub_258FB8D28, v10, v2);
  if ((v5 & 1) == 0)
  {
    v3 = "RootDomainUserClient";
    v4 = 0xD00000000000004ELL;
    goto LABEL_16;
  }

  v12 = 0xD00000000000001ELL;
  v13 = 0x8000000258FC6F50;
  MEMORY[0x28223BE20](v5);
  v11 = &v12;
  v6 = sub_258FB68B4(sub_258FB8E60, v10, v2);

  if (v6)
  {
    return result;
  }

  v3 = "AFKEndpointInterfaceUserClient";
  v4 = 0xD000000000000058;
LABEL_17:
  v8 = sub_258FC3F94();
  sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938], MEMORY[0x277D08940]);
  swift_allocError();
  *v9 = v4;
  v9[1] = v3 | 0x8000000000000000;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D08930], v8);
  return swift_willThrow();
}

uint64_t _s11MicroFindMy0abC9InterfaceV11isSupportedSbvgZ_0()
{
  v0 = sub_258FC4244();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_258FC3FB4();
  v8[3] = v4;
  v8[4] = sub_258FB8D9C(&qword_2813928B8, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D08A18], v4);
  LOBYTE(v4) = MEMORY[0x259C9F7E0](v8);
  __swift_destroy_boxed_opaque_existential_1(v8);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_258FB76D8();
  sub_258FB8E7C(0xD000000000000024, v3);
  (*(v1 + 8))(v3, v0);
  return 1;
}

uint64_t type metadata accessor for MicroFindMyInterface.EndpointConfiguration(uint64_t a1)
{
  result = qword_27F999140;
  if (!qword_27F999140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258FB7BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990A8, &qword_258FC5050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258FB7C4C(uint64_t a1, uint64_t a2)
{
  My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0);
  (*(*(My - 8) + 32))(a2, a1, My);
  return a2;
}

uint64_t sub_258FB7CB0(uint64_t a1)
{
  My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0);
  (*(*(My - 8) + 8))(a1, My);
  return a1;
}

unint64_t sub_258FB7D0C()
{
  result = qword_27F9990C8;
  if (!qword_27F9990C8)
  {
    result = swift_getWitnessTable(byte_258FC57E4, &type metadata for MicroFindMyError, v0, v1);
    atomic_store(result, &qword_27F9990C8);
  }

  return result;
}

uint64_t sub_258FB7D60(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
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

uint64_t sub_258FB7E18(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_258FC4024();
  swift_allocObject();
  result = sub_258FC3FE4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_258FC4084();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_258FB7E94(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_258FC4024();
  swift_allocObject();
  result = sub_258FC3FE4();
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

uint64_t sub_258FB7F18(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990D0, &qword_258FC5070);
  v10 = sub_258FB7FC8();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_258FB6960(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_258FB7FC8()
{
  result = qword_27F9990D8;
  if (!qword_27F9990D8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9990D0, &qword_258FC5070);
    result = swift_getWitnessTable(MEMORY[0x277CC9C28], v3, v0, v1);
    atomic_store(result, &qword_27F9990D8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_258FB8074(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_258FB80C8()
{
  result = qword_27F9990E0;
  if (!qword_27F9990E0)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC92F8], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_27F9990E0);
  }

  return result;
}

unint64_t sub_258FB811C()
{
  result = qword_27F9990F0;
  if (!qword_27F9990F0)
  {
    result = swift_getWitnessTable("Eb')X\a", &type metadata for MicroFindMyInterface.Configuration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F9990F0);
  }

  return result;
}

unint64_t sub_258FB8170()
{
  result = qword_27F999108;
  if (!qword_27F999108)
  {
    result = swift_getWitnessTable(byte_258FC5394, &type metadata for MicroFindMyInterface.EndpointConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F999108);
  }

  return result;
}

uint64_t sub_258FB81C4(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F999118, &qword_258FC5090);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258FB8230(uint64_t a1, uint64_t a2)
{
  My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration(0);
  (*(*(My - 8) + 16))(a2, a1, My);
  return a2;
}

uint64_t sub_258FB8294(uint64_t a1, unsigned int a2)
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

uint64_t sub_258FB82F0(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_258FB8388(uint64_t a1)
{
  sub_258FC4054();
  if (v1 <= 0x3F)
  {
    sub_258FB842C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258FB842C()
{
  if (!qword_27F999150)
  {
    v0 = sub_258FC4354();
    if (!v1)
    {
      atomic_store(v0, &qword_27F999150);
    }
  }
}

uint64_t getEnumTagSinglePayload for MicroFindMyInterface.EndpointConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MicroFindMyInterface.EndpointConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_258FB85E0()
{
  result = qword_27F999158;
  if (!qword_27F999158)
  {
    result = swift_getWitnessTable(byte_258FC52B4, &type metadata for MicroFindMyInterface.Configuration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F999158);
  }

  return result;
}

unint64_t sub_258FB8638()
{
  result = qword_27F999160;
  if (!qword_27F999160)
  {
    result = swift_getWitnessTable(aM, &type metadata for MicroFindMyInterface.EndpointConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F999160);
  }

  return result;
}

unint64_t sub_258FB8690()
{
  result = qword_27F999168;
  if (!qword_27F999168)
  {
    result = swift_getWitnessTable(byte_258FC52DC, &type metadata for MicroFindMyInterface.EndpointConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F999168);
  }

  return result;
}

unint64_t sub_258FB86E8()
{
  result = qword_27F999170;
  if (!qword_27F999170)
  {
    result = swift_getWitnessTable(byte_258FC5304, &type metadata for MicroFindMyInterface.EndpointConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F999170);
  }

  return result;
}

unint64_t sub_258FB8740()
{
  result = qword_27F999178;
  if (!qword_27F999178)
  {
    result = swift_getWitnessTable(asc_258FC5224, &type metadata for MicroFindMyInterface.Configuration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F999178);
  }

  return result;
}

unint64_t sub_258FB8798()
{
  result = qword_27F999180;
  if (!qword_27F999180)
  {
    result = swift_getWitnessTable(byte_258FC524C, &type metadata for MicroFindMyInterface.Configuration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F999180);
  }

  return result;
}

uint64_t sub_258FB87EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000258FC6CD0 == a2;
  if (v3 || (sub_258FC44B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000258FC6CF0 == a2 || (sub_258FC44B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000258FC6D10 == a2 || (sub_258FC44B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000258FC6D30 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_258FC44B4();

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

uint64_t sub_258FB8958(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_258FC44B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x41747865746E6F63 && a2 == 0xEA00000000007070 || (sub_258FC44B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xED00006E6F697461 || (sub_258FC44B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65696C43656D6DLL && a2 == 0xED00006F666E4974 || (sub_258FC44B4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E65674172657375 && a2 == 0xE900000000000074 || (sub_258FC44B4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656E6F7A656D6974 && a2 == 0xE800000000000000 || (sub_258FC44B4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684628597 && a2 == 0xE400000000000000 || (sub_258FC44B4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000258FC6D60 == a2 || (sub_258FC44B4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000258FC6D80 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_258FC44B4();

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

uint64_t sub_258FB8C6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_258FB8CC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258FB8D44(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_258FC44B4() & 1;
  }
}

uint64_t sub_258FB8D9C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
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

uint64_t sub_258FB8E7C@<X0>(uint64_t a3@<X2>, _DWORD *a5@<X8>)
{
  v25 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991A0, &unk_258FC5450);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v24 - v7);
  v9 = type metadata accessor for rpc_server_t();
  Description = v9[-1].Description;
  MEMORY[0x28223BE20](v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258FC3650(v8);
  if (Description[6](v8, 1, v9) == 1)
  {
    sub_258FB9130(v8);
    sub_258FB9198();
    swift_allocError();
    *v13 = 1;
    return swift_willThrow();
  }

  Description[4](v12, v8, v9);
  v15 = MobileGestalt_get_current_device();
  if (v15)
  {
    v16 = v15;
    if (MobileGestalt_get_deviceSupportsAOP2() && MobileGestalt_get_deviceSupportsUltraLowPowerNetworking())
    {
      v17 = v26;
      v18 = sub_258FC36A8(v12, a3);
      if (v17)
      {
      }

      else
      {
        v20 = v18;

        v21 = v25;
        *v25 = v20;
        v22 = *MEMORY[0x277D714A8];
        v23 = sub_258FC4244();
        (*(*(v23 - 8) + 104))(v21, v22, v23);
      }

      goto LABEL_10;
    }
  }

  sub_258FB9198();
  swift_allocError();
  *v19 = 0;
  swift_willThrow();
LABEL_10:
  sub_258FC36A0(v12);
  return (Description[1])(v12, v9);
}

uint64_t sub_258FB9130(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991A0, &unk_258FC5450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258FB9198()
{
  result = qword_2813928B0;
  if (!qword_2813928B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MicroFindMyInterface.Error, &type metadata for MicroFindMyInterface.Error, v0, v1);
    atomic_store(result, &qword_2813928B0);
  }

  return result;
}

uint64_t sub_258FB91EC()
{
  v0 = sub_258FC4184();
  v27 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_258FC4214();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_258FC4234();
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = v30;
  sub_258FC4254();
  if (v15)
  {
    v19 = v31;
    type metadata accessor for TransportError();
    v24 = v20;
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    swift_allocError();
    *v21 = v19;
  }

  else
  {
    v26 = v2;
    v30 = v0;
    v16 = v28;
    v17 = *(v29 + 32);
    v29 += 32;
    v18 = v17;
    v17(v12, v14, v28);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC4204();
    sub_258FC4264();
    v18(v12, v9, v16);
    v23 = v26;
    sub_258FC4174();
    v24 = sub_258FC25DC();
    (*(v27 + 8))(v23, v30);
  }

  return v24;
}

uint64_t sub_258FB95BC(unint64_t a1, unint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v2 = sub_258FC4184();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258FC4214();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_258FC4234();
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = v37;
  sub_258FC4254();
  if (v17)
  {
    v19 = v39;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    result = swift_allocError();
    *v21 = v19;
  }

  else
  {
    v29 = v4;
    v30 = v2;
    v31 = HIDWORD(v33);
    v18 = *(v36 + 32);
    v36 += 32;
    v37 = HIDWORD(v34);
    v28 = v18;
    v18(v14, v16, v35);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC41C4();
    sub_258FC41C4();
    sub_258FC41C4();
    sub_258FC41C4();
    sub_258FC4204();
    sub_258FC4264();
    v28(v14, v11, v35);
    v22 = v29;
    sub_258FC4174();
    v23 = sub_258FC4134();
    if (v23)
    {
      v24 = v30;
      v25 = v32;
      if (v23 == 1)
      {
        v26 = sub_258FC2844();
        v38 = v26;
        sub_258FB7D0C();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v27 = v26;
        return (*(v25 + 8))(v22, v24);
      }

      else
      {
        result = sub_258FC43D4();
        __break(1u);
      }
    }

    else
    {
      return (*(v32 + 8))(v22, v30);
    }
  }

  return result;
}

unint64_t sub_258FB9A5C()
{
  v0 = sub_258FC4184();
  v22 = *(v0 - 8);
  v23 = v0;
  MEMORY[0x28223BE20](v0);
  v21 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_258FC4214();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_258FC4234();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = v24;
  sub_258FC4254();
  if (v14)
  {
    v15 = v25;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    result = swift_allocError();
    *v17 = v15;
  }

  else
  {
    v24 = *(v4 + 32);
    v24(v11, v13, v3);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC4204();
    sub_258FC4264();
    v24(v11, v8, v3);
    v18 = v21;
    sub_258FC4174();
    v19 = sub_258FC4124();
    v20 = sub_258FC4124();
    sub_258FC4124();
    sub_258FC4124();
    (*(v22 + 8))(v18, v23);
    return v19 | (v20 << 32);
  }

  return result;
}

uint64_t sub_258FB9DAC(uint64_t *a1)
{
  v39 = sub_258FC4184();
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_258FC4214();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258FC4234();
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  v42 = &v36 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = *a1;
  if (*a1)
  {
    v17 = *(a1 + 3);
    v49[2] = *(a1 + 2);
    v49[3] = v17;
    v50 = *(a1 + 64);
    v18 = *(a1 + 1);
    v49[0] = *a1;
    v49[1] = v18;
    v19 = sub_258FC2930(v49);
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v20 = 1;
  }

  if (__OFADD__(v20, 8))
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_258FC4254();
  if (v1)
  {
LABEL_5:
    v21 = v52;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    result = swift_allocError();
    *v23 = v21;
    return result;
  }

LABEL_8:
  v24 = *(v44 + 32);
  v25 = v15;
  v26 = v43;
  v44 += 32;
  v36 = v24;
  v24(v13, v25, v43);
  sub_258FC4224();
  sub_258FC41F4();
  if (v16)
  {
    v45 = v16;
    v27 = *(a1 + 3);
    v46 = *(a1 + 1);
    v47 = v27;
    v48[0] = *(a1 + 5);
    *(v48 + 9) = *(a1 + 49);
    sub_258FC41D4();
    v28 = sub_258FBE3AC(&v45);
    if (v1)
    {
      v29 = v28;
      type metadata accessor for TransportError();
      sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
      swift_allocError();
      *v30 = v29;
      return (*(v40 + 8))(v5, v41);
    }
  }

  else
  {
    sub_258FC41D4();
  }

  sub_258FC4204();
  v31 = v42;
  sub_258FC4264();
  if (v1)
  {
    goto LABEL_5;
  }

  v36(v13, v31, v26);
  v32 = v37;
  sub_258FC4174();
  v33 = sub_258FC4134();
  if (!v33)
  {
    return (*(v38 + 8))(v32, v39);
  }

  if (v33 == 1)
  {
    v34 = sub_258FC2844();
    v51 = v34;
    sub_258FB7D0C();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v35 = v34;
    return (*(v38 + 8))(v32, v39);
  }

LABEL_18:
  result = sub_258FC43D4();
  __break(1u);
  return result;
}

double sub_258FBA3A8@<D0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_258FC4184();
  v30 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258FC4214();
  MEMORY[0x28223BE20](v4 - 8);
  *&v32 = sub_258FC4234();
  *&v31 = *(v32 - 8);
  v5 = MEMORY[0x28223BE20](v32);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = v33;
  sub_258FC4254();
  if (v14)
  {
    v16 = v36;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    swift_allocError();
    *v18 = v16;
  }

  else
  {
    v28 = v3;
    v33 = v1;
    v15 = *(v31 + 32);
    v15(v11, v13, v32);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC4204();
    sub_258FC4264();
    v15(v11, v8, v32);
    v19 = v28;
    sub_258FC4174();
    if (sub_258FC4134() == 1)
    {
      sub_258FC2A34(v34);
      v20 = v33;
      v21 = v29;
      v22 = v30;
      v31 = v34[1];
      v32 = v34[0];
      v26 = v34[3];
      v27 = v34[2];
      v23 = v35;
    }

    else
    {
      v23 = 0;
      v31 = 0u;
      v32 = 0u;
      v27 = 0u;
      v26 = 0u;
      v20 = v33;
      v21 = v29;
      v22 = v30;
    }

    (*(v22 + 8))(v19, v20);
    v24 = v31;
    *v21 = v32;
    *(v21 + 16) = v24;
    v25 = v26;
    result = *&v27;
    *(v21 + 32) = v27;
    *(v21 + 48) = v25;
    *(v21 + 64) = v23;
  }

  return result;
}

uint64_t sub_258FBA7E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a2;
  v5 = sub_258FC4184();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v46 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258FC4214();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_258FC4234();
  v10 = MEMORY[0x28223BE20](v50);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v43 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v43 - v15;
  MEMORY[0x28223BE20](v14);
  v20 = v43 - v19;
  if (!a1)
  {
    v26 = 1;
    if (!v17)
    {
      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = *(a1 + 16);
  v17 = __OFADD__(v21, 8);
  v22 = v21 + 8;
  if (v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = *(v51 + 16);
  v17 = __OFADD__(v23, 8);
  v24 = v23 + 8;
  if (v17)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = __OFADD__(v22, v24);
  v25 = v22 + v24;
  if (v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (__OFADD__(v26, 8))
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = v18;
  v45 = v5;
  sub_258FC4254();
  if (v2)
  {
LABEL_8:
    v27 = v53;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    result = swift_allocError();
    *v29 = v27;
    return result;
  }

LABEL_12:
  v30 = *(v3 + 32);
  v31 = v20;
  v32 = v50;
  v43[1] = v3 + 32;
  v44 = v2;
  v30(v16, v31, v50);
  sub_258FC4224();
  sub_258FC41F4();
  if (a1)
  {
    sub_258FC41D4();
    v33 = v44;
    v34 = sub_258FBE524(a1, v51);
    v44 = v33;
    if (v33)
    {
      v35 = v34;
      type metadata accessor for TransportError();
      sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
      swift_allocError();
      *v36 = v35;
      return (*(v48 + 8))(v9, v49);
    }
  }

  else
  {
    sub_258FC41D4();
  }

  sub_258FC4204();
  v37 = v44;
  sub_258FC4264();
  if (v37)
  {
    goto LABEL_8;
  }

  v30(v16, v13, v32);
  v38 = v46;
  sub_258FC4174();
  v39 = sub_258FC4134();
  if (!v39)
  {
    return (*(v47 + 8))(v38, v45);
  }

  v40 = v45;
  if (v39 == 1)
  {
    v41 = sub_258FC2844();
    v52 = v41;
    sub_258FB7D0C();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v42 = v41;
    return (*(v47 + 8))(v38, v40);
  }

LABEL_25:
  result = sub_258FC43D4();
  __break(1u);
  return result;
}

uint64_t sub_258FBAD98(uint64_t a1)
{
  v3 = sub_258FC4184();
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258FC4214();
  MEMORY[0x28223BE20](v5 - 8);
  v35 = sub_258FC4234();
  v6 = MEMORY[0x28223BE20](v35);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v29 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v29 - v11;
  MEMORY[0x28223BE20](v10);
  v15 = v29 - v14;
  v34 = a1;
  v16 = *(a1 + 16);
  if (__OFADD__(v16, 8))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(v16 + 8, 8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v13;
  v31 = v3;
  sub_258FC4254();
  if (v1)
  {
    goto LABEL_8;
  }

  v18 = v17 + 32;
  v19 = *(v17 + 32);
  v29[1] = v18;
  v30 = 0;
  v19(v12, v15, v35);
  sub_258FC4224();
  sub_258FC41F4();
  sub_258FC41F4();
  if (v16)
  {
    v20 = v34 + 32;
    do
    {
      ++v20;
      sub_258FC41D4();
      --v16;
    }

    while (v16);
  }

  sub_258FC4204();
  v21 = v30;
  sub_258FC4264();
  if (v21)
  {
LABEL_8:
    v22 = v37;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    result = swift_allocError();
    *v24 = v22;
    return result;
  }

  v19(v12, v9, v35);
  v25 = v32;
  sub_258FC4174();
  v26 = sub_258FC4134();
  if (!v26)
  {
    return (*(v33 + 8))(v25, v31);
  }

  if (v26 == 1)
  {
    v27 = sub_258FC2844();
    v36 = v27;
    sub_258FB7D0C();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v28 = v27;
    return (*(v33 + 8))(v25, v31);
  }

LABEL_15:
  result = sub_258FC43D4();
  __break(1u);
  return result;
}

uint64_t sub_258FBB230(uint64_t a1)
{
  v36 = a1;
  v1 = *(a1 + 32);
  v2 = sub_258FC4184();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258FC4214();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_258FC4234();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v37 = v1;
  v18 = v38;
  sub_258FC4254();
  if (v18)
  {
    goto LABEL_6;
  }

  v31 = v9;
  v32 = v12;
  v38 = 0;
  v19 = *(v6 + 32);
  v19(v15, v17, v5);
  sub_258FC4224();
  sub_258FC41F4();
  if (v37)
  {
    sub_258FC41D4();
  }

  else
  {
    sub_258FC41D4();
    sub_258FC41A4();
    sub_258FC41A4();
    sub_258FC41A4();
    sub_258FC41A4();
  }

  v20 = v32;
  sub_258FC4204();
  v21 = v38;
  sub_258FC4264();
  if (v21)
  {
LABEL_6:
    v22 = v40;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    result = swift_allocError();
    *v24 = v22;
  }

  else
  {
    v19(v15, v20, v5);
    v25 = v33;
    sub_258FC4174();
    v26 = sub_258FC4134();
    if (v26)
    {
      v28 = v34;
      v27 = v35;
      if (v26 == 1)
      {
        v29 = sub_258FC2844();
        v39 = v29;
        sub_258FB7D0C();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v30 = v29;
        return (*(v28 + 8))(v25, v27);
      }

      else
      {
        result = sub_258FC43D4();
        __break(1u);
      }
    }

    else
    {
      return (*(v34 + 8))(v25, v35);
    }
  }

  return result;
}

double sub_258FBB708@<D0>(_OWORD *a1@<X8>)
{
  v33 = a1;
  v1 = sub_258FC4184();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x28223BE20](v1);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_258FC4214();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_258FC4234();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = v34;
  sub_258FC4254();
  if (v15)
  {
    v16 = v35;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    swift_allocError();
    *v18 = v16;
  }

  else
  {
    *&v34 = *(v5 + 32);
    (v34)(v12, v14, v4);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC4204();
    sub_258FC4264();
    (v34)(v12, v9, v4);
    v19 = v30;
    sub_258FC4174();
    v20 = sub_258FC4134();
    v34 = 0u;
    v29 = 0u;
    if (v20 == 1)
    {
      sub_258FC4104();
      v34 = v21;
      sub_258FC4104();
      v28 = v22;
      sub_258FC4104();
      v29 = v23;
      sub_258FC4104();
      *&v24 = v34;
      *(&v24 + 1) = v28;
      v34 = v24;
      *&v24 = v29;
      *(&v24 + 1) = v25;
      v29 = v24;
    }

    (*(v31 + 8))(v19, v32);
    v26 = v33;
    v27 = v29;
    result = *&v34;
    *v33 = v34;
    v26[1] = v27;
    *(v26 + 32) = v20 != 1;
  }

  return result;
}

uint64_t sub_258FBBAEC(uint64_t a1)
{
  v3 = sub_258FC4184();
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258FC4214();
  MEMORY[0x28223BE20](v5 - 8);
  v35 = sub_258FC4234();
  v6 = MEMORY[0x28223BE20](v35);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v29 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v29 - v11;
  MEMORY[0x28223BE20](v10);
  v15 = v29 - v14;
  v34 = a1;
  v16 = *(a1 + 16);
  if (__OFADD__(v16, 8))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(v16 + 8, 8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v13;
  v31 = v3;
  sub_258FC4254();
  if (v1)
  {
    goto LABEL_8;
  }

  v18 = v17 + 32;
  v19 = *(v17 + 32);
  v29[1] = v18;
  v30 = 0;
  v19(v12, v15, v35);
  sub_258FC4224();
  sub_258FC41F4();
  sub_258FC41F4();
  if (v16)
  {
    v20 = v34 + 32;
    do
    {
      ++v20;
      sub_258FC41D4();
      --v16;
    }

    while (v16);
  }

  sub_258FC4204();
  v21 = v30;
  sub_258FC4264();
  if (v21)
  {
LABEL_8:
    v22 = v37;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    result = swift_allocError();
    *v24 = v22;
    return result;
  }

  v19(v12, v9, v35);
  v25 = v32;
  sub_258FC4174();
  v26 = sub_258FC4134();
  if (!v26)
  {
    return (*(v33 + 8))(v25, v31);
  }

  if (v26 == 1)
  {
    v27 = sub_258FC2844();
    v36 = v27;
    sub_258FB7D0C();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v28 = v27;
    return (*(v33 + 8))(v25, v31);
  }

LABEL_15:
  result = sub_258FC43D4();
  __break(1u);
  return result;
}

uint64_t sub_258FBBF84()
{
  v0 = sub_258FC4184();
  v35 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_258FC4214();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_258FC4234();
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = v38;
  sub_258FC4254();
  if (v15)
  {
    v19 = v40;
    type metadata accessor for TransportError();
    v21 = v20;
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    swift_allocError();
    *v22 = v19;
    return v21;
  }

  v34 = v2;
  v38 = v0;
  v16 = v36;
  v17 = *(v37 + 32);
  v37 += 32;
  v18 = v17;
  v17(v12, v14, v36);
  sub_258FC4224();
  sub_258FC41F4();
  sub_258FC4204();
  sub_258FC4264();
  v18(v12, v9, v16);
  v24 = v34;
  sub_258FC4174();
  v25 = sub_258FC4134();
  if (!v25)
  {
    v26 = sub_258FC4154();
    MEMORY[0x28223BE20](v26);
    v32 = v24;
    v21 = sub_258FC13AC(sub_258FC3620, (&v33 - 4), 0, v27, sub_258FC2394);
    (*(v35 + 8))(v24, v38);
    return v21;
  }

  v28 = v38;
  v29 = v35;
  if (v25 == 1)
  {
    v30 = sub_258FC2844();
    v39 = v30;
    sub_258FB7D0C();
    swift_willThrowTypedImpl();
    v21 = swift_allocError();
    *v31 = v30;
    (*(v29 + 8))(v24, v28);
    return v21;
  }

  result = sub_258FC43D4();
  __break(1u);
  return result;
}

uint64_t sub_258FBC46C(uint64_t a1)
{
  v3 = sub_258FC4184();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258FC4214();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = sub_258FC4234();
  v7 = MEMORY[0x28223BE20](v42);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v39 = &v35 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v17 = &v35 - v16;
  v18 = 0;
  while (v18 != 57)
  {
    v19 = *(a1 + 16);
    v20 = v18 >= v19;
    if (v18 == v19)
    {
      break;
    }

    ++v18;
    if (v20)
    {
      __break(1u);
      break;
    }
  }

  v21 = v15;
  v36 = v4;
  v37 = v3;
  sub_258FC4254();
  if (v1)
  {
    v22 = v44;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    result = swift_allocError();
    *v24 = v22;
  }

  else
  {
    v35 = v9;
    v25 = *(v21 + 32);
    v26 = v17;
    v27 = v42;
    v25(v14, v26, v42);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FBE5A0(a1);
    v41 = v25;
    sub_258FC4204();
    v28 = v39;
    sub_258FC4264();
    v41(v14, v28, v27);
    v29 = v38;
    sub_258FC4174();
    v30 = sub_258FC4134();
    if (v30)
    {
      v32 = v36;
      v31 = v37;
      if (v30 == 1)
      {
        v33 = sub_258FC2844();
        v43 = v33;
        sub_258FB7D0C();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v34 = v33;
        return (*(v32 + 8))(v29, v31);
      }

      else
      {
        result = sub_258FC43D4();
        __break(1u);
      }
    }

    else
    {
      return (*(v36 + 8))(v29, v37);
    }
  }

  return result;
}

uint64_t sub_258FBCA04(uint64_t a1)
{
  v16 = a1;
  v2 = sub_258FC4214();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_258FC4234();
  v17 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_258FC4254();
  if (v1)
  {
    v13 = v18;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    result = swift_allocError();
    *v15 = v13;
  }

  else
  {
    (*(v17 + 32))(v10, v12, v3);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC4204();
    sub_258FC4264();
    return (*(v17 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_258FBCCA8(uint64_t a1)
{
  v26 = a1;
  v1 = sub_258FC4184();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_258FC4214();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_258FC4234();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = v27;
  sub_258FC4254();
  if (v15)
  {
    v16 = v28;
    type metadata accessor for TransportError();
    v18 = v17;
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    swift_allocError();
    *v19 = v16;
  }

  else
  {
    v27 = *(v5 + 32);
    v27(v12, v14, v4);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC4204();
    sub_258FC4264();
    v27(v12, v9, v4);
    v21 = v23;
    sub_258FC4174();
    v18 = sub_258FC40F4();
    (*(v24 + 8))(v21, v25);
  }

  return v18 & 1;
}

uint64_t sub_258FBCFC8(uint64_t a1)
{
  v3 = sub_258FC4214();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_258FC4234();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v24 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v24 - v13;
  v15 = *(v1 + 16);
  v16 = v27;
  sub_258FC4254();
  if (!v16)
  {
    v24[1] = v15;
    v25 = v9;
    v26 = v5;
    v27 = 0;
    (*(v5 + 32))(v12, v14, v4);
    sub_258FC4224();
    sub_258FC41F4();
    v17 = *(a1 + 16);
    if (v17 != 16)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_258FC43B4();
      MEMORY[0x259C9FB70](0x2844495555746573, 0xEE00293A64697575);
      MEMORY[0x259C9FB70](0xD000000000000037, 0x8000000258FC74A0);
      v28 = v17;
      v23 = sub_258FC44A4();
      MEMORY[0x259C9FB70](v23);

      result = sub_258FC43D4();
      __break(1u);
      return result;
    }

    sub_258FC41D4();
    sub_258FC41D4();
    sub_258FC41D4();
    sub_258FC41D4();
    sub_258FC41D4();
    sub_258FC41D4();
    sub_258FC41D4();
    sub_258FC41D4();
    sub_258FC41D4();
    sub_258FC41D4();
    sub_258FC41D4();
    sub_258FC41D4();
    sub_258FC41D4();
    sub_258FC41D4();
    sub_258FC41D4();
    sub_258FC41D4();
    sub_258FC4204();
    v18 = v25;
    v19 = v27;
    sub_258FC4264();
    if (!v19)
    {
      return (*(v26 + 8))(v18, v4);
    }
  }

  v20 = v31;
  type metadata accessor for TransportError();
  sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
  result = swift_allocError();
  *v22 = v20;
  return result;
}

unint64_t sub_258FBD3B8()
{
  v0 = sub_258FC4184();
  v22 = *(v0 - 8);
  v23 = v0;
  MEMORY[0x28223BE20](v0);
  v21 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_258FC4214();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_258FC4234();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = v24;
  sub_258FC4254();
  if (v14)
  {
    v15 = v25;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    result = swift_allocError();
    *v17 = v15;
  }

  else
  {
    v24 = *(v4 + 32);
    v24(v11, v13, v3);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC4204();
    sub_258FC4264();
    v24(v11, v8, v3);
    v18 = v21;
    sub_258FC4174();
    v19 = sub_258FC4144();
    v20 = sub_258FC4144();
    sub_258FC4144();
    sub_258FC4144();
    sub_258FC4144();
    sub_258FC4144();
    (*(v22 + 8))(v18, v23);
    return v19 | (v20 << 32);
  }

  return result;
}

uint64_t sub_258FBD720(unsigned int a1)
{
  v29 = a1;
  v1 = sub_258FC4184();
  v27 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258FC4214();
  MEMORY[0x28223BE20](v4 - 8);
  v30 = sub_258FC4234();
  v28 = *(v30 - 8);
  v5 = MEMORY[0x28223BE20](v30);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = v31;
  sub_258FC4254();
  if (v14)
  {
    v22 = v33;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    swift_allocError();
    *v16 = v22;
  }

  else
  {
    v26 = v3;
    v31 = v1;
    v15 = *(v28 + 32);
    v15(v11, v13, v30);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC41E4();
    sub_258FC4204();
    sub_258FC4264();
    v15(v11, v8, v30);
    v18 = v26;
    v19 = sub_258FC4174();
    v20 = sub_258FC2C9C(v19);
    v22 = v20;
    v23 = v31;
    v24 = v27;
    if (v21)
    {
      v32 = v20;
      sub_258FB7D0C();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v25 = v22;
      (*(v24 + 8))(v18, v23);
    }

    else
    {
      (*(v27 + 8))(v18, v31);
    }
  }

  return v22;
}

uint64_t sub_258FBDB64(uint64_t a1)
{
  v3 = sub_258FC4184();
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v39 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258FC4214();
  MEMORY[0x28223BE20](v5 - 8);
  v41 = sub_258FC4234();
  v6 = MEMORY[0x28223BE20](v41);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v36 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v36 - v11;
  MEMORY[0x28223BE20](v10);
  v15 = v36 - v14;
  v16 = 0;
  while (v16 != 32)
  {
    v17 = *(a1 + 16);
    v18 = v16 >= v17;
    if (v16 == v17)
    {
      break;
    }

    ++v16;
    if (v18)
    {
      __break(1u);
      break;
    }
  }

  v19 = v13;
  v38 = v3;
  sub_258FC4254();
  if (v1)
  {
    goto LABEL_12;
  }

  v20 = *(v19 + 32);
  v36[1] = v19 + 32;
  v37 = 0;
  v20(v12, v15, v41);
  sub_258FC4224();
  sub_258FC41F4();
  v21 = *(a1 + 16);
  if (v21 == 32)
  {
    v22 = 0;
    do
    {
      v23 = v22 + 1;
      sub_258FC41D4();
      v22 = v23;
    }

    while (v23 != 32);
    sub_258FC4204();
    v24 = v37;
    sub_258FC4264();
    if (!v24)
    {
      v20(v12, v9, v41);
      v30 = v39;
      v31 = sub_258FC4174();
      v32 = sub_258FC2DEC(v31);
      v27 = v32;
      if (v33)
      {
        LOBYTE(v43) = v32;
        sub_258FB7D0C();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v34 = v27;
      }

      (*(v40 + 8))(v30, v38);
      return v27;
    }

LABEL_12:
    v25 = v45;
    type metadata accessor for TransportError();
    v27 = v26;
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    swift_allocError();
    *v28 = v25;
    return v27;
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  sub_258FC43B4();
  MEMORY[0x259C9FB70](0xD000000000000021, 0x8000000258FC73B0);
  MEMORY[0x259C9FB70](0xD000000000000037, 0x8000000258FC7330);
  v42 = v21;
  v35 = sub_258FC44A4();
  MEMORY[0x259C9FB70](v35);

  result = sub_258FC43D4();
  __break(1u);
  return result;
}

BOOL sub_258FBE104(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_258FBE134@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_258FBE160@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_258FBE238@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_258FBE268@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_258FC26BC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_258FBE2A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 9;
  }

  if (!a2)
  {
    v15 = 1;
    if (!v3)
    {
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = 0;
  v6 = 0;
  while (v5 != *(a2 + 16))
  {
    v8 = 0;
    v9 = v5 + 1;
    v10 = *(a2 + 32 + 16 * v5);
    while (v8 != 32)
    {
      v11 = *(v10 + 16);
      v12 = v8 >= v11;
      if (v8 == v11)
      {
        break;
      }

      ++v8;
      if (v12)
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    v7 = v8 + 8;
    v5 = v9;
    v3 = __OFADD__(v6, v7);
    v6 += v7;
    if (v3)
    {
      goto LABEL_21;
    }
  }

LABEL_13:
  v3 = __OFADD__(v6, 8);
  v13 = v6 + 8;
  if (v3)
  {
    goto LABEL_23;
  }

  v3 = __OFADD__(v13, 4);
  v14 = v13 + 4;
  if (v3)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v3 = __OFADD__(v14, 1);
  v15 = v14 + 1;
  if (v3)
  {
    goto LABEL_20;
  }

LABEL_16:
  result = v15 + 1;
  if (__OFADD__(v15, 1))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_258FBE358(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 9;
  }

  if (!a3)
  {
    v9 = 1;
    if (!v4)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(a3 + 16);
  v4 = __OFADD__(v6, 8);
  v7 = v6 + 8;
  if (v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = __OFADD__(v7, 9);
  v8 = v7 + 9;
  if (v4)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = __OFADD__(v8, 1);
  v9 = v8 + 1;
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_7:
  result = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_258FBE3AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  sub_258FC41F4();
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      ++v4;
      sub_258FC41B4();
      --v3;
    }

    while (v3);
  }

  v5 = a1[1];
  v6 = *(v5 + 16);
  sub_258FC41F4();
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      ++v7;
      sub_258FC41B4();
      --v6;
    }

    while (v6);
  }

  v8 = a1[2];
  v9 = *(v8 + 16);
  sub_258FC41F4();
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      ++v10;
      sub_258FC41B4();
      --v9;
    }

    while (v9);
  }

  v11 = a1[3];
  v12 = *(v11 + 16);
  sub_258FC41F4();
  if (v12)
  {
    v13 = v11 + 32;
    do
    {
      ++v13;
      sub_258FC41B4();
      --v12;
    }

    while (v12);
  }

  v14 = a1[4];
  v15 = *(v14 + 16);
  sub_258FC41F4();
  if (v15)
  {
    v16 = v14 + 32;
    do
    {
      ++v16;
      sub_258FC41B4();
      --v15;
    }

    while (v15);
  }

  v17 = a1[5];
  v18 = *(v17 + 16);
  sub_258FC41F4();
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      ++v19;
      sub_258FC41B4();
      --v18;
    }

    while (v18);
  }

  v20 = a1[6];
  v21 = *(v20 + 16);
  sub_258FC41F4();
  if (v21)
  {
    v22 = v20 + 32;
    do
    {
      ++v22;
      sub_258FC41B4();
      --v21;
    }

    while (v21);
  }

  v23 = a1[7];
  v24 = *(v23 + 16);
  sub_258FC41F4();
  if (v24)
  {
    v25 = v23 + 32;
    do
    {
      ++v25;
      sub_258FC41B4();
      --v24;
    }

    while (v24);
  }

  return sub_258FC4194();
}

uint64_t sub_258FBE524(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  sub_258FC41F4();
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      ++v5;
      sub_258FC41B4();
      --v4;
    }

    while (v4);
  }

  v6 = *(a2 + 16);
  result = sub_258FC41F4();
  if (v6)
  {
    v8 = a2 + 32;
    do
    {
      ++v8;
      result = sub_258FC41B4();
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_258FBE5A0(uint64_t a1)
{
  if (*(a1 + 16) == 57)
  {
    v1 = 0;
    do
    {
      v2 = v1 + 1;
      result = sub_258FC41D4();
      v1 = v2;
    }

    while (v2 != 57);
  }

  else
  {
    sub_258FC43B4();
    MEMORY[0x259C9FB70](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259C9FB70](0xD000000000000037, 0x8000000258FC7520);
    v4 = sub_258FC44A4();
    MEMORY[0x259C9FB70](v4);

    result = sub_258FC43D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_258FBE6C8()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_258FBE700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_258FC4244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  (*(v5 + 16))(v7, a1, v4);
  sub_258FC4284();
  swift_allocObject();
  v9 = sub_258FC4274();
  result = (*(v5 + 8))(a1, v4);
  *(v8 + 16) = v9;
  *a2 = v8;
  return result;
}

uint64_t sub_258FBE830@<X0>(unsigned int (*a1)(void, void, void)@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v271 = a2;
  v268 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991D8, &qword_258FC5828);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v261 = &v254 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v260 = &v254 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  *&v264 = &v254 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v256 = &v254 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v255 = &v254 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v254 = &v254 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v267 = &v254 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v257 = &v254 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v254 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v254 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  *&v266 = &v254 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  *&v265 = &v254 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v259 = &v254 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v254 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v262 = &v254 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v254 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v258 = &v254 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v254 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v263 = &v254 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v254 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v254 - v51;
  v53 = sub_258FC4214();
  v275 = *(v53 - 8);
  v276 = v53;
  v54 = *(v275 + 56);
  v273 = v52;
  v269 = v54;
  v270 = v275 + 56;
  (v54)(v52, 1, 1);
  v300 = a1;
  v55 = sub_258FC328C();
  switch(v55)
  {
    case 1:
      v154 = v272[6];
      v155 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v154);
      (*(v155 + 40))(v154, v155);
      v156 = v274;
      sub_258FC4164();
      if (v156)
      {
        goto LABEL_76;
      }

      v300 = 0;
      v63 = v276;
      v269(v40, 0, 1, v276);
      v157 = (v275 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v62 = v273;
      v158 = *(v275 + 48);
      if (v158(v273, 1, v63) != 1)
      {
        sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v40, v62);
      v61 = v158;
      if (!v158(v62, 1, v63))
      {
        v272 = v157;
        sub_258FC41C4();
        sub_258FC41C4();
        sub_258FC41C4();
        sub_258FC41C4();
      }

      goto LABEL_198;
    case 2:
      MEMORY[0x28223BE20](v55);
      v252 = v300;
      v120 = v274;
      v121 = sub_258FC16D0(sub_258FC3620, (&v254 - 4), 0, 32);
      v122 = v120;
      v123 = v272[6];
      v124 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v123);
      v125 = (*(v124 + 160))(v121, v123, v124);
      if (v120)
      {
        *&v279 = v120;
        MEMORY[0x259CA0180](v120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        if (!swift_dynamicCast())
        {
          MEMORY[0x259CA0170](v279);
          v253 = 0;
          v252 = 788;
          goto LABEL_222;
        }

        MEMORY[0x259CA0170](v120);

        v128 = v278;
        MEMORY[0x259CA0170](v279);
        v129 = 0;
        v130 = 0;
      }

      else
      {
        v128 = v125;
        v129 = v126;
        v130 = v127;
      }

      sub_258FBE358(v128, v129, v130, v120 != 0);
      sub_258FC336C(v128, v129, v130, v120 != 0);
      v215 = v261;
      sub_258FC4164();
      v216 = v128;
      v300 = 0;
      v63 = v276;
      v269(v215, 0, 1, v276);
      v217 = *(v275 + 48);
      v272 = ((v275 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000);
      v62 = v273;
      v274 = v217;
      v275 += 48;
      if (v217(v273, 1, v63) != 1)
      {
        sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v215, v62);
      if (v274(v62, 1, v63))
      {
        v218 = v120 != 0;
        v219 = v216;
LABEL_121:
        sub_258FC336C(v219, v129, v130, v218);
        goto LABEL_127;
      }

      v236 = v216;
      v237 = v300;
      v238 = sub_258FC1B38(v216, v129, v130, v122 != 0);
      if (!v237)
      {
        v300 = 0;
        v218 = v122 != 0;
        v219 = v216;
        goto LABEL_121;
      }

      v111 = v238;
      sub_258FC336C(v236, v129, v130, v122 != 0);
      result = (v274)(v62, 1, v63);
      goto LABEL_171;
    case 3:
      v139 = sub_258FC4144();
      v140 = v272[6];
      v141 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v140);
      v142 = v274;
      v143 = (*(v141 + 152))(v139, v140, v141);
      v145 = v142;
      if (v142)
      {
        *&v279 = v142;
        MEMORY[0x259CA0180](v142);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        if (!swift_dynamicCast())
        {
          MEMORY[0x259CA0170](v279);
          v253 = 0;
          v250 = 774;
          goto LABEL_221;
        }

        MEMORY[0x259CA0170](v142);
        v146 = v278;
        MEMORY[0x259CA0170](v279);
        v147 = 0;
      }

      else
      {
        v146 = v143;
        v147 = v144;
      }

      v62 = v273;
      sub_258FBE2A8(v146, v147, v142 != 0);
      sub_258FC33EC(v146, v147, v142 != 0);
      v220 = v260;
      sub_258FC4164();
      v300 = 0;
      v221 = v276;
      v269(v220, 0, 1, v276);
      v222 = *(v275 + 48);
      v272 = ((v275 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000);
      v274 = v222;
      if (v222(v62, 1, v221) != 1)
      {
        sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v220, v62);
      v63 = v276;
      if (!v274(v62, 1, v276))
      {
        v239 = v300;
        v240 = sub_258FC19DC(v146, v147, v145 != 0);
        if (v239)
        {
          v111 = v240;
          sub_258FC33EC(v146, v147, v145 != 0);
          result = (v274)(v62, 1, v63);
          goto LABEL_171;
        }

        v300 = 0;
      }

      sub_258FC33EC(v146, v147, v145 != 0);
LABEL_127:
      v61 = v274;
      goto LABEL_198;
    case 4:
      v104 = v272[6];
      v105 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v104);
      (*(v105 + 56))(v287, v104, v105);
      if (*v287)
      {
        v296[2] = *&v287[32];
        v296[3] = *&v287[48];
        v297 = v287[64];
        v296[0] = *v287;
        v296[1] = *&v287[16];
        v106 = sub_258FC2930(v296);
      }

      else
      {
        v106 = 0;
      }

      v62 = v273;
      v213 = v275;
      v63 = v276;
      if (__OFADD__(v106, 1))
      {
        __break(1u);
        goto LABEL_207;
      }

      v214 = v274;
      sub_258FC4164();
      if (v214)
      {
        v111 = v284;
        sub_258FB8CC8(v287, &qword_27F9990B0, &qword_258FC5058);
        result = (*(v213 + 48))(v62, 1, v63);
        goto LABEL_171;
      }

      v300 = 0;
      v269(v35, 0, 1, v63);
      v61 = *(v213 + 48);
      if (v61(v62, 1, v63) != 1)
      {
        sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v35, v62);
      if (!*v287)
      {
        if (!v61(v62, 1, v63))
        {
LABEL_34:
          sub_258FC41D4();
        }

        goto LABEL_198;
      }

      v290 = *v287;
      v291 = *&v287[8];
      v292 = *&v287[24];
      v293[0] = *&v287[40];
      *(v293 + 9) = *&v287[49];
      if (!v61(v62, 1, v63))
      {
        sub_258FC41D4();
      }

      if (v61(v62, 1, v63))
      {
        goto LABEL_156;
      }

      v243 = v300;
      v244 = sub_258FBE3AC(&v290);
      if (!v243)
      {
        v300 = 0;
LABEL_156:
        sub_258FB8CC8(v287, &qword_27F9990B0, &qword_258FC5058);
        goto LABEL_198;
      }

      v111 = v244;
      sub_258FB8CC8(v287, &qword_27F9990B0, &qword_258FC5058);
      result = (v61)(v62, 1, v63);
      goto LABEL_171;
    case 5:
      v163 = v272[6];
      v164 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v163);
      (*(v164 + 88))(v163, v164);
      v165 = v274;
      sub_258FC4164();
      if (v165)
      {
        goto LABEL_76;
      }

      v300 = 0;
      v63 = v276;
      v269(v26, 0, 1, v276);
      v61 = *(v275 + 48);
      v166 = v273;
      if (v61(v273, 1, v63) != 1)
      {
        sub_258FB8CC8(v166, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v26, v166);
      v62 = v166;
      goto LABEL_198;
    case 6:
      v176 = v272[6];
      v177 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v176);
      v178 = v274;
      v179 = (*(v177 + 24))(v176, v177);
      v180 = v178;
      if (v178)
      {
        *&v279 = v178;
        MEMORY[0x259CA0180](v178);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        if (!swift_dynamicCast())
        {
          MEMORY[0x259CA0170](v279);
          v253 = 0;
          v251 = 627;
LABEL_219:
          v252 = v251;
          goto LABEL_222;
        }

        MEMORY[0x259CA0170](v178);
        v181 = v278;
        MEMORY[0x259CA0170](v279);
        v182 = 1;
        v62 = v273;
        v63 = v276;
      }

      else
      {
        v181 = v179;
        v224 = *(v179 + 16);
        v225 = v224 + 8;
        v226 = __OFADD__(v224, 8);

        if (v226)
        {
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          MEMORY[0x259CA0170](v279);
          v253 = 0;
          v249 = 701;
LABEL_214:
          v252 = v249;
          goto LABEL_222;
        }

        v62 = v273;
        v63 = v276;
        if (__OFADD__(v225, 1))
        {
          goto LABEL_208;
        }

        v182 = 0;
      }

      sub_258FC34B4(v181, v180 != 0);
      sub_258FC4164();
      v227 = v182;
      v300 = 0;
      v269(v45, 0, 1, v63);
      v228 = *(v275 + 48);
      v272 = ((v275 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000);
      v229 = v228;
      if (v228(v62, 1, v63) != 1)
      {
        sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v45, v62);
      if (v229(v62, 1, v63))
      {
        goto LABEL_149;
      }

      v241 = v300;
      v242 = sub_258FC1844(v181, v227);
      if (!v241)
      {
        v300 = 0;
LABEL_149:
        sub_258FC34B4(v181, v180 != 0);
        v61 = v229;
        goto LABEL_198;
      }

      v111 = v242;
      sub_258FC34B4(v181, v180 != 0);
      result = (v229)(v62, 1, v63);
      goto LABEL_171;
    case 7:
      v148 = v272[6];
      v149 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v148);
      (*(v149 + 144))(v148, v149);
      v151 = v150;
      v152 = v264;
      v153 = v274;
      sub_258FC4164();
      if (v153)
      {
        goto LABEL_76;
      }

      v300 = 0;
      v63 = v276;
      v269(v152, 0, 1, v276);
      v61 = *(v275 + 48);
      v62 = v273;
      if (v61(v273, 1, v63) != 1)
      {
        sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v264, v62);
      if (!v61(v62, 1, v63))
      {
        v274 = v61;
        v275 = HIDWORD(v151);
        sub_258FC41E4();
        sub_258FC41E4();
        sub_258FC41E4();
        v61 = v274;
        sub_258FC41E4();
        sub_258FC41E4();
        v63 = v276;
        sub_258FC41E4();
      }

      goto LABEL_198;
    case 8:
      v189 = v272[6];
      v190 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v189);
      (*(v190 + 96))(v189, v190);
      v191 = v274;
      sub_258FC4164();
      if (v191)
      {
        goto LABEL_76;
      }

      v300 = 0;
      v63 = v276;
      v269(v23, 0, 1, v276);
      v61 = *(v275 + 48);
      v62 = v273;
      if (v61(v273, 1, v63) != 1)
      {
        sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v23, v62);
      if (!v61(v62, 1, v63))
      {
        goto LABEL_140;
      }

      goto LABEL_198;
    case 9:
      v114 = v272[6];
      v115 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v114);
      (*(v115 + 120))(v288, v114, v115);
      v116 = v254;
      v117 = v274;
      sub_258FC4164();
      if (v117)
      {
        goto LABEL_76;
      }

      v300 = 0;
      v63 = v276;
      v269(v116, 0, 1, v276);
      v61 = *(v275 + 48);
      v62 = v273;
      if (v61(v273, 1, v63) != 1)
      {
        sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v116, v62);
      v118 = v289;
      v119 = v61(v62, 1, v63);
      if ((v118 & 1) == 0)
      {
        if (!v119)
        {
          sub_258FC41D4();
        }

        if (!v61(v62, 1, v63))
        {
          sub_258FC41A4();
          sub_258FC41A4();
          sub_258FC41A4();
          sub_258FC41A4();
        }

        goto LABEL_198;
      }

      if (v119)
      {
        goto LABEL_198;
      }

      goto LABEL_34;
    case 10:
      v187 = v272[6];
      v188 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v187);
      (*(v188 + 136))(v187, v188);
      v162 = v256;
      v161 = v274;
      sub_258FC4164();
      if (!v161)
      {
        goto LABEL_72;
      }

      goto LABEL_76;
    case 11:
      v93 = sub_258FC4124();
      v94 = sub_258FC4124();
      v95 = sub_258FC4124();
      v96 = sub_258FC4124();
      v97 = v272[6];
      v98 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v97);
      v99 = v274;
      (*(v98 + 32))(v93 | (v94 << 32), v95 | (v96 << 32), v97, v98);
      if (v99)
      {
        *&v279 = v99;
        MEMORY[0x259CA0180](v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        v100 = swift_dynamicCast();
        v101 = v258;
        if ((v100 & 1) == 0)
        {
          MEMORY[0x259CA0170](v279);
          v253 = 0;
          v252 = 640;
          goto LABEL_222;
        }

        MEMORY[0x259CA0170](v99);
        v90 = v278;
        v102 = v278;
        MEMORY[0x259CA0170](v279);
        v62 = v273;
        v103 = v275;
        v63 = v276;
        if (v102 != 8)
        {
LABEL_100:
          sub_258FC4164();
          v300 = 0;
          v269(v101, 0, 1, v63);
          v61 = *(v103 + 48);
          if (v61(v62, 1, v63) != 1)
          {
            sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
          }

          v212 = v101;
          goto LABEL_103;
        }
      }

      else
      {
        v62 = v273;
        v103 = v275;
        v63 = v276;
        v101 = v258;
      }

      v90 = 8;
      goto LABEL_100;
    case 12:
      v107 = v300;
      if (sub_258FC4134() == 1)
      {
        v108 = v274;
        sub_258FC2A34(v285);
        v62 = v273;
        v109 = v275;
        v63 = v276;
        v110 = v262;
        if (v108)
        {
          v111 = v284;
          if ((*(v275 + 48))(v273, 1, v276) != 1)
          {
            sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
          }

          v112 = sub_258FC4184();
          result = (*(*(v112 - 8) + 8))(v107, v112);
          goto LABEL_174;
        }

        v274 = 0;
        v281 = v285[2];
        v282 = v285[3];
        v283 = v286;
        v279 = v285[0];
        v280 = v285[1];
      }

      else
      {
        v283 = 0;
        v281 = 0u;
        v282 = 0u;
        v279 = 0u;
        v280 = 0u;
        v62 = v273;
        v109 = v275;
        v63 = v276;
        v110 = v262;
      }

      v294[2] = v281;
      v294[3] = v282;
      v295 = v283;
      v294[0] = v279;
      v294[1] = v280;
      v232 = v272[6];
      v233 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v232);
      v234 = v274;
      (*(v233 + 48))(v294, v232, v233);
      if (!v234)
      {
        sub_258FB8CC8(&v279, &qword_27F9990B0, &qword_258FC5058);
LABEL_169:
        v75 = 8;
LABEL_170:
        sub_258FC4164();
        v300 = 0;
        v269(v110, 0, 1, v63);
        v61 = *(v109 + 48);
        if (v61(v62, 1, v63) != 1)
        {
          sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
        }

        v211 = v262;
        goto LABEL_178;
      }

      v278 = v234;
      MEMORY[0x259CA0180](v234);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
      if (swift_dynamicCast())
      {
        MEMORY[0x259CA0170](v234);
        sub_258FB8CC8(&v279, &qword_27F9990B0, &qword_258FC5058);
        v75 = v277;
        v235 = v277;
        MEMORY[0x259CA0170](v278);
        if (v235 != 8)
        {
          goto LABEL_170;
        }

        goto LABEL_169;
      }

      MEMORY[0x259CA0170](v278);
      v253 = 0;
      v250 = 659;
LABEL_221:
      v252 = v250;
LABEL_222:
      result = sub_258FC43D4();
      __break(1u);
      return result;
    case 13:
      v167 = v300;
      if (sub_258FC4134() == 1)
      {
        v168 = sub_258FC4154();
        MEMORY[0x28223BE20](v168);
        v169 = v274;
        v171 = sub_258FC13AC(sub_258FC3638, (&v254 - 4), 0, v170, sub_258FC2364);
        v172 = sub_258FC4154();
        MEMORY[0x28223BE20](v172);
        v252 = v167;
        v174 = sub_258FC13AC(sub_258FC3478, (&v254 - 4), 0, v173, sub_258FC2364);
        v175 = v169;
      }

      else
      {
        v171 = 0;
        v174 = 0;
        v175 = v274;
      }

      v205 = v272[6];
      v206 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v205);
      v207 = v175;
      (*(v206 + 64))(v171, v174, v205, v206);
      v62 = v273;
      v208 = v275;
      v63 = v276;
      if (v207)
      {
        *&v279 = v207;
        MEMORY[0x259CA0180](v207);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        if ((swift_dynamicCast() & 1) == 0)
        {
          MEMORY[0x259CA0170](v279);
          v253 = 0;
          v252 = 688;
          goto LABEL_222;
        }

        MEMORY[0x259CA0170](v207);
        sub_258FC3438(v171, v174);
        v209 = v278;
        v210 = v278;
        MEMORY[0x259CA0170](v279);
        if (v210 != 8)
        {
          v223 = v259;
LABEL_158:
          sub_258FC4164();
          v300 = 0;
          v269(v223, 0, 1, v63);
          v61 = *(v208 + 48);
          if (v61(v62, 1, v63) != 1)
          {
            sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
          }

          sub_258FC337C(v223, v62);
          if (!v61(v62, 1, v63))
          {
            v230 = v300;
            v231 = sub_258FC18C4(v209);
            if (v230)
            {
              goto LABEL_162;
            }

            v300 = 0;
          }

          goto LABEL_198;
        }
      }

      else
      {
        sub_258FC3438(v171, v174);
      }

      v223 = v259;
      v209 = 8;
      goto LABEL_158;
    case 14:
      v78 = sub_258FC4134();
      v79 = 0uLL;
      v80 = 0uLL;
      if (v78 == 1)
      {
        sub_258FC4104();
        v265 = v81;
        sub_258FC4104();
        v266 = v82;
        sub_258FC4104();
        v264 = v83;
        sub_258FC4104();
        *&v79 = v265;
        *(&v79 + 1) = v266;
        *&v84 = v264;
        *(&v84 + 1) = v85;
        v80 = v84;
      }

      v298[0] = v79;
      v298[1] = v80;
      v299 = v78 != 1;
      v86 = v272[6];
      v87 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v86);
      v88 = v274;
      (*(v87 + 112))(v298, v86, v87);
      v89 = v267;
      if (v88)
      {
        *&v279 = v88;
        MEMORY[0x259CA0180](v88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        if ((swift_dynamicCast() & 1) == 0)
        {
          MEMORY[0x259CA0170](v279);
          v253 = 0;
          v252 = 737;
          goto LABEL_222;
        }

        MEMORY[0x259CA0170](v88);
        v90 = v278;
        v91 = v278;
        MEMORY[0x259CA0170](v279);
        v62 = v273;
        v92 = v275;
        v63 = v276;
        if (v91 != 8)
        {
LABEL_95:
          sub_258FC4164();
          v300 = 0;
          v269(v89, 0, 1, v63);
          v61 = *(v92 + 48);
          if (v61(v62, 1, v63) != 1)
          {
            sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
          }

          v212 = v267;
LABEL_103:
          sub_258FC337C(v212, v62);
          if (!v61(v62, 1, v63))
          {
            v64 = v300;
            v65 = sub_258FC18C4(v90);
            if (v64)
            {
LABEL_105:
              v111 = v65;
              result = (v61)(v62, 1, v63);
LABEL_171:
              if (result != 1)
              {
                v193 = v62;
LABEL_173:
                result = sub_258FB8CC8(v193, &qword_27F9991D8, &qword_258FC5828);
              }

LABEL_174:
              *v271 = v111;
              return result;
            }

LABEL_180:
            v300 = v64;
            goto LABEL_198;
          }

          goto LABEL_198;
        }
      }

      else
      {
        v62 = v273;
        v92 = v275;
        v63 = v276;
      }

      v90 = 8;
      goto LABEL_95;
    case 15:
      MEMORY[0x28223BE20](v55);
      v252 = v300;
      v131 = v274;
      v132 = sub_258FC16D0(sub_258FC3620, (&v254 - 4), 0, 57);
      v133 = v272[6];
      v134 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v133);
      (*(v134 + 80))(v132, v133, v134);
      if (v131)
      {
        *&v279 = v131;
        MEMORY[0x259CA0180](v131);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        v135 = swift_dynamicCast();
        v136 = v266;
        if ((v135 & 1) == 0)
        {
          MEMORY[0x259CA0170](v279);
          v253 = 0;
          v249 = 714;
          goto LABEL_214;
        }

        MEMORY[0x259CA0170](v131);

        v75 = v278;
        v137 = v278;
        MEMORY[0x259CA0170](v279);
        v62 = v273;
        v138 = v275;
        v63 = v276;
        if (v137 != 8)
        {
LABEL_114:
          sub_258FC4164();
          v300 = 0;
          v269(v136, 0, 1, v63);
          v61 = *(v138 + 48);
          if (v61(v62, 1, v63) != 1)
          {
            sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
          }

          v211 = v266;
          goto LABEL_178;
        }
      }

      else
      {

        v62 = v273;
        v138 = v275;
        v63 = v276;
        v136 = v266;
      }

      v75 = 8;
      goto LABEL_114;
    case 16:
      v66 = v300;
      v67 = sub_258FC4154();
      MEMORY[0x28223BE20](v67);
      v252 = v66;
      v68 = v274;
      v70 = sub_258FC13AC(sub_258FC3620, (&v254 - 4), 0, v69, sub_258FC2394);
      v71 = v272[6];
      v72 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v71);
      (*(v72 + 72))(v70, v71, v72);
      if (v68)
      {
        *&v279 = v68;
        MEMORY[0x259CA0180](v68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        v73 = swift_dynamicCast();
        v74 = v265;
        if ((v73 & 1) == 0)
        {
          goto LABEL_209;
        }

        MEMORY[0x259CA0170](v68);

        v75 = v278;
        v76 = v278;
        MEMORY[0x259CA0170](v279);
        v62 = v273;
        v77 = v275;
        v63 = v276;
        if (v76 != 8)
        {
LABEL_90:
          sub_258FC4164();
          v300 = 0;
          v269(v74, 0, 1, v63);
          v61 = *(v77 + 48);
          if (v61(v62, 1, v63) != 1)
          {
            sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
          }

          v211 = v265;
          goto LABEL_178;
        }
      }

      else
      {

        v62 = v273;
        v77 = v275;
        v63 = v276;
        v74 = v265;
      }

      v75 = 8;
      goto LABEL_90;
    case 17:
      v159 = v272[7];
      v160 = __swift_project_boxed_opaque_existential_1(v272 + 3, v272[6]);
      MEMORY[0x28223BE20](v160);
      v252 = v300;
      v161 = v274;
      sub_258FC16D0(sub_258FC33FC, (&v254 - 4), 0, 16);
      (*(v159 + 104))();

      v162 = v257;
      sub_258FC4164();
      if (v161)
      {
        goto LABEL_76;
      }

LABEL_72:
      v300 = v161;
      v63 = v276;
      v269(v162, 0, 1, v276);
      v61 = *(v275 + 48);
      v62 = v273;
      if (v61(v273, 1, v63) != 1)
      {
        sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v162, v62);
      goto LABEL_198;
    case 18:
      v183 = v272[6];
      v184 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v183);
      (*(v184 + 128))(v183, v184);
      v185 = v255;
      v186 = v274;
      sub_258FC4164();
      if (v186)
      {
        goto LABEL_76;
      }

      v300 = 0;
      v63 = v276;
      v269(v185, 0, 1, v276);
      v61 = *(v275 + 48);
      v62 = v273;
      if (v61(v273, 1, v63) != 1)
      {
        sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v185, v62);
      if (!v61(v62, 1, v63))
      {
LABEL_140:
        sub_258FC4194();
      }

      goto LABEL_198;
    case 19:
      v194 = v300;
      v195 = sub_258FC4154();
      MEMORY[0x28223BE20](v195);
      v252 = v194;
      v196 = v274;
      v198 = sub_258FC13AC(sub_258FC3620, (&v254 - 4), 0, v197, sub_258FC2394);
      v199 = v272[6];
      v200 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v199);
      (*(v200 + 16))(v198, v199, v200);
      if (v196)
      {
        *&v279 = v196;
        MEMORY[0x259CA0180](v196);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        v201 = swift_dynamicCast();
        v202 = v263;
        if ((v201 & 1) == 0)
        {
          MEMORY[0x259CA0170](v279);
          v253 = 0;
          v251 = 615;
          goto LABEL_219;
        }

        MEMORY[0x259CA0170](v196);

        v75 = v278;
        v203 = v278;
        MEMORY[0x259CA0170](v279);
        v62 = v273;
        v204 = v275;
        v63 = v276;
        if (v203 != 8)
        {
LABEL_143:
          sub_258FC4164();
          v300 = 0;
          v269(v202, 0, 1, v63);
          v61 = *(v204 + 48);
          if (v61(v62, 1, v63) != 1)
          {
            sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
          }

          v211 = v263;
LABEL_178:
          sub_258FC337C(v211, v62);
          if (!v61(v62, 1, v63))
          {
            v64 = v300;
            v231 = sub_258FC18C4(v75);
            if (v64)
            {
LABEL_162:
              v111 = v231;
              result = (v61)(v62, 1, v63);
              goto LABEL_171;
            }

            goto LABEL_180;
          }

LABEL_198:
          v245 = (v61)(v62, 1, v63);
          v246 = v245;
          if (v245 == 1)
          {
            v247 = v268;
          }

          else
          {
            v247 = v268;
            if (v245)
            {
              sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
              v246 = 1;
            }

            else
            {
              sub_258FC4204();
              v246 = 0;
            }
          }

          v248 = sub_258FC4234();
          return (*(*(v248 - 8) + 56))(v247, v246, 1, v248);
        }
      }

      else
      {

        v62 = v273;
        v204 = v275;
        v63 = v276;
        v202 = v263;
      }

      v75 = 8;
      goto LABEL_143;
    default:
      v56 = v272[6];
      v57 = v272[7];
      __swift_project_boxed_opaque_existential_1(v272 + 3, v56);
      v58 = (*(v57 + 8))(v56, v57);
      v59 = v274;
      sub_258FC4164();
      if (v59)
      {
LABEL_76:
        v111 = v284;
        v192 = v273;
        result = (*(v275 + 48))(v273, 1, v276);
        if (result == 1)
        {
          goto LABEL_174;
        }

        v193 = v192;
        goto LABEL_173;
      }

      v300 = 0;
      v60 = v276;
      v269(v50, 0, 1, v276);
      v61 = *(v275 + 48);
      v62 = v273;
      if (v61(v273, 1, v60) != 1)
      {
        sub_258FB8CC8(v62, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v50, v62);
      v63 = v276;
      if (v61(v62, 1, v276))
      {
        goto LABEL_198;
      }

      v64 = v300;
      v65 = sub_258FC12CC(v58);
      if (v64)
      {
        goto LABEL_105;
      }

      goto LABEL_180;
  }
}

uint64_t sub_258FC12CC(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 0)
  {
    return sub_258FC41F4();
  }

  sub_258FC43B4();
  MEMORY[0x259C9FB70](0xD000000000000041, 0x8000000258FC72E0);
  v2 = sub_258FC44A4();
  MEMORY[0x259C9FB70](v2);

  result = sub_258FC43D4();
  __break(1u);
  return result;
}

uint64_t sub_258FC13AC(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(BOOL, uint64_t, uint64_t))
{
  v8 = a4 - a3;
  if (a4 >= a3)
  {
    if ((a4 - a3) < 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  if ((a3 - a4) >= 0)
  {
    v8 = a4 - a3;
LABEL_5:
    v9 = MEMORY[0x277D84F90];
    if (!v8)
    {
      return v9;
    }

    v23 = MEMORY[0x277D84F90];
    a5(0, v8 & ~(v8 >> 63), 0);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v9 = v23;
      v11 = a4 - a3;
      if (a4 < a3)
      {
        v11 = 0;
      }

      v19 = v11 + 1;
      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v21 = a3 + v10;
        a1(&v22, &v21);
        if (v5)
        {
          goto LABEL_24;
        }

        v13 = v22;
        v23 = v9;
        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          v17 = v22;
          a5(v14 > 1, v15 + 1, 1);
          v13 = v17;
          v9 = v23;
        }

        *(v9 + 16) = v15 + 1;
        *(v9 + v15 + 32) = v13;
        if (a4 < a3)
        {
          goto LABEL_19;
        }

        if (v19 == ++v10)
        {
          goto LABEL_20;
        }

        if (v12 == v8)
        {
          return v9;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

char *sub_258FC1540(char *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v21 = result;
  v7 = a4 - a3;
  if (a4 < a3)
  {
    if ((a3 - a4) < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v25 = MEMORY[0x277D84F90];
    result = sub_258FC23C4(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v25;
      v10 = v5 - v6;
      if (v5 < v6)
      {
        v10 = 0;
      }

      v19 = v10 + 1;
      v20 = v6;
      v18 = v7;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v23 = v6 + v9;
        result = (v21)(v24, &v23, &v22);
        if (v4)
        {

          return v22;
        }

        v12 = v5;
        v13 = v24[0];
        v14 = v24[1];
        v25 = v8;
        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_258FC23C4((v15 > 1), v16 + 1, 1);
          v8 = v25;
        }

        *(v8 + 16) = v16 + 1;
        v17 = v8 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v5 = v12;
        v6 = v20;
        if (v5 < v20)
        {
          goto LABEL_21;
        }

        if (v19 == ++v9)
        {
          goto LABEL_22;
        }

        if (v11 == v18)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a4 - a3) >= 0)
  {
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_258FC16D0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_258FC2394(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_258FC2394((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_258FC1844(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_258FC41D4();
    return sub_258FC41F4();
  }

  else
  {
    sub_258FC41D4();
    v4 = *(a1 + 16);
    result = sub_258FC41F4();
    if (v4)
    {
      v5 = a1 + 32;
      do
      {
        ++v5;
        result = sub_258FC41D4();
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t sub_258FC18C4(unsigned __int8 a1)
{
  if (a1 == 8)
  {
    return sub_258FC41D4();
  }

  sub_258FC41D4();
  return sub_258FC41F4();
}

uint64_t sub_258FC19DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_258FC41D4();
    return sub_258FC41F4();
  }

  else
  {
    sub_258FC41D4();
    if (a2)
    {
      sub_258FC41D4();
      LODWORD(result) = sub_258FC21DC(a1, a2);
      if (v3)
      {
        return result;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return sub_258FC41D4();
    }
  }
}

uint64_t sub_258FC1B38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_258FC41D4();
    return sub_258FC41F4();
  }

  else
  {
    sub_258FC41D4();
    if (a3)
    {
      sub_258FC41D4();
      sub_258FC41D4();
      sub_258FC41F4();
      v5 = *(a3 + 16);
      result = sub_258FC41F4();
      if (v5)
      {
        v6 = a3 + 32;
        do
        {
          ++v6;
          result = sub_258FC41B4();
          --v5;
        }

        while (v5);
      }
    }

    else
    {
      return sub_258FC41D4();
    }
  }

  return result;
}

uint64_t sub_258FC1CAC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_258FC1CEC@<X0>(unsigned int (*a1)(void, void, void)@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_258FBE830(a1, &v6, a3);
  if (v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MicroFindMyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MicroFindMyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_258FC1F20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_258FC1F68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_258FC1FE0()
{
  result = qword_27F9991A8;
  if (!qword_27F9991A8)
  {
    atomic_store(result, &qword_27F9991A8);
  }

  return result;
}

unint64_t sub_258FC2038()
{
  result = qword_27F9991B0;
  if (!qword_27F9991B0)
  {
    result = swift_getWitnessTable(aUy, &type metadata for CapabilityBitSet, v0, v1);
    atomic_store(result, &qword_27F9991B0);
  }

  return result;
}

unint64_t sub_258FC2090()
{
  result = qword_27F9991B8;
  if (!qword_27F9991B8)
  {
    result = swift_getWitnessTable(byte_258FC55CC, &type metadata for CapabilityBitSet, v0, v1);
    atomic_store(result, &qword_27F9991B8);
  }

  return result;
}

unint64_t sub_258FC20E8()
{
  result = qword_27F9991C0;
  if (!qword_27F9991C0)
  {
    result = swift_getWitnessTable("mP')", &type metadata for CapabilityBitSet, v0, v1);
    atomic_store(result, &qword_27F9991C0);
  }

  return result;
}

unint64_t sub_258FC2140()
{
  result = qword_27F9991C8;
  if (!qword_27F9991C8)
  {
    result = swift_getWitnessTable(byte_258FC5744, &type metadata for MicroFindMyError, v0, v1);
    atomic_store(result, &qword_27F9991C8);
  }

  return result;
}

uint64_t sub_258FC21DC(uint64_t a1, uint64_t a2)
{
  sub_258FC41E4();
  v3 = *(a2 + 16);
  result = sub_258FC41F4();
  if (v3)
  {
    v5 = 0;
    while (*(*(a2 + 32 + 16 * v5) + 16) == 32)
    {
      ++v5;

      for (i = 32; i != 64; ++i)
      {
        sub_258FC41D4();
      }

      sub_258FC41F4();

      if (v5 == v3)
      {
        return result;
      }
    }

    sub_258FC43B4();
    MEMORY[0x259C9FB70](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259C9FB70](0xD000000000000037, 0x8000000258FC7330);
    v7 = sub_258FC44A4();
    MEMORY[0x259C9FB70](v7);

    result = sub_258FC43D4();
    __break(1u);
  }

  return result;
}

char *sub_258FC2364(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258FC23E4(a1, a2, a3, *v3, &qword_27F9991E8, &unk_258FC5840);
  *v3 = result;
  return result;
}

char *sub_258FC2394(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258FC23E4(a1, a2, a3, *v3, &qword_27F999190, &qword_258FC5440);
  *v3 = result;
  return result;
}

char *sub_258FC23C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258FC24D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258FC23E4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_258FC24D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991F8, &qword_258FC5850);
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

uint64_t sub_258FC25DC()
{
  result = sub_258FC4154();
  if ((result & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    sub_258FC43B4();
    MEMORY[0x259C9FB70](0xD000000000000041, 0x8000000258FC72E0);
    v1 = sub_258FC44A4();
    MEMORY[0x259C9FB70](v1);

    result = sub_258FC43D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_258FC26BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_258FC26F4(uint64_t a1)
{
  if (a1 > 0x656732B065AD8EC9)
  {
    if (a1 > 0x73F413D1D0637ACDLL)
    {
      if (a1 == 0x73F413D1D0637ACELL)
      {
        return 1;
      }

      if (a1 == 0x7AF728B1EAE3351BLL)
      {
        return 3;
      }
    }

    else
    {
      if (a1 == 0x656732B065AD8ECALL)
      {
        return 2;
      }

      if (a1 == 0x73E909AB6E7598B1)
      {
        return 4;
      }
    }
  }

  else if (a1 > 0x4CAFA23047A22814)
  {
    if (a1 == 0x4CAFA23047A22815)
    {
      return 6;
    }

    if (a1 == 0x510C03B7C18A80A0)
    {
      return 7;
    }
  }

  else
  {
    if (a1 == 0xFC3087BD99A887ALL)
    {
      return 5;
    }

    if (a1 == 0x41F8D7222D3DA490)
    {
      return 0;
    }
  }

  return 8;
}

uint64_t sub_258FC2844()
{
  v0 = sub_258FC4154();
  result = sub_258FC26F4(v0);
  if (result == 8)
  {
    sub_258FC43B4();

    v2 = sub_258FC44A4();
    MEMORY[0x259C9FB70](v2);

    result = sub_258FC43D4();
    __break(1u);
  }

  return result;
}

void *sub_258FC2930(void *result)
{
  v1 = *(*result + 16);
  v2 = __OFADD__(v1, 8);
  v3 = v1 + 8;
  if (v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = *(result[1] + 16);
  v2 = __OFADD__(v4, 8);
  v5 = v4 + 8;
  if (v2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v2 = __OFADD__(v3, v5);
  v6 = v3 + v5;
  if (v2)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *(result[2] + 16);
  v2 = __OFADD__(v7, 8);
  v8 = v7 + 8;
  if (v2)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v2 = __OFADD__(v6, v8);
  v9 = v6 + v8;
  if (v2)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = *(result[3] + 16);
  v2 = __OFADD__(v10, 8);
  v11 = v10 + 8;
  if (v2)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v2 = __OFADD__(v9, v11);
  v12 = v9 + v11;
  if (v2)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = *(result[4] + 16);
  v2 = __OFADD__(v13, 8);
  v14 = v13 + 8;
  if (v2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v2 = __OFADD__(v12, v14);
  v15 = v12 + v14;
  if (v2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = *(result[5] + 16);
  v2 = __OFADD__(v16, 8);
  v17 = v16 + 8;
  if (v2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v2 = __OFADD__(v15, v17);
  v18 = v15 + v17;
  if (v2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v19 = *(result[6] + 16);
  v2 = __OFADD__(v19, 8);
  v20 = v19 + 8;
  if (v2)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v2 = __OFADD__(v18, v20);
  v21 = v18 + v20;
  if (v2)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v22 = *(result[7] + 16);
  v2 = __OFADD__(v22, 8);
  v23 = v22 + 8;
  if (v2)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v2 = __OFADD__(v21, v23);
  v24 = v21 + v23;
  if (v2)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  result = (v24 + 1);
  if (__OFADD__(v24, 1))
  {
LABEL_33:
    __break(1u);
  }

  return result;
}