uint64_t Database.DataMigrationStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1BAB2C4BC(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAF0E90(&v24);
  if (v2)
  {
LABEL_10:
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v3 + 4);
  v7 = v24;

  if (v7 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  v31 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](39);
  MEMORY[0x1BFAFD240](0x204543414C504552, 0xED0000204F544E49);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x202020200A2820, 0xE700000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF5800);
  v27 = MEMORY[0x1E69E6158];
  v28 = &protocol witness table for String;
  v24 = a1;
  v25 = a2;
  sub_1BAAE779C(&v24, &v20);

  SQLValue.init(_:)(&v20, v22);
  v10 = v22[0];
  v11 = v22[1];
  v12 = v23;
  v20 = 0x676E69646E696240;
  v21 = 0xE800000000000000;
  v13 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v13);

  v14 = v20;
  v3 = v21;
  MEMORY[0x1BFAFD240](v20, v21);
  sub_1BAAE7800(v10, v11, v12);
  v15 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v15;
  sub_1BAAE5904(v10, v11, v12, v14, v3, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v10, v11, v12);
  v31 = v20;
  __swift_destroy_boxed_opaque_existential_1(&v24);
  MEMORY[0x1BFAFD240](3877130, 0xE300000000000000);
  v18 = v29;
  v17 = v30;
  v19 = v31;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v24 = v19;
  v25 = v18;
  v26 = v17;
  SQLDatabase.perform(_:)(&v24);
}

uint64_t sub_1BAB2C83C(uint64_t a1)
{
  result = MEMORY[0x1E69E7CD0];
  v20 = MEMORY[0x1E69E7CD0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {

      v5 = sub_1BABE7B0C();
      SQLResult.subscript.getter(v5, v6, &v17);

      v7 = v19;
      if (v19 == 255 || (v8 = v17, v9 = v18, v10 = sub_1BAAF9770(v17, v18, v19), v12 = v11, sub_1BAAE8B8C(v8, v9, v7), !v12))
      {
        if (qword_1EBC12270 != -1)
        {
          swift_once();
        }

        v13 = sub_1BABE72BC();
        __swift_project_value_buffer(v13, qword_1EBC25018);
        v14 = sub_1BABE729C();
        v15 = sub_1BABE78EC();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1BAACF000, v14, v15, "Encountered malformed completed stage", v16, 2u);
          MEMORY[0x1BFAFE460](v16, -1, -1);
        }
      }

      else
      {
        sub_1BABB0450(&v17, v10, v12);
      }

      v4 += 8;
      --v3;
    }

    while (v3);
    return v20;
  }

  return result;
}

ReplicatorServices::ClientSettings __swiftcall ClientSettings.init(clientID:enabled:registered:)(ReplicatorServices::ClientSettings clientID, Swift::Bool enabled, Swift::Bool registered)
{
  *v3 = clientID.clientID;
  *(v3 + 16) = enabled;
  *(v3 + 17) = registered;
  clientID.enabled = enabled;
  return clientID;
}

uint64_t ClientSettings.clientID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ClientSettings.clientID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ClientSettings.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_1BABE7EDC();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t sub_1BAB2CC8C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_1BABE7EDC();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BAB2CD2C(uint64_t a1, int a2)
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

uint64_t sub_1BAB2CD74(uint64_t result, int a2, int a3)
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

uint64_t sub_1BAB2CDC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0x80000001BABF51B0;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001BABF51D0;
    v3 = 0xD000000000000013;
  }

  else if (a1 == 3)
  {
    v3 = 0x6C6F636F746F7270;
    v4 = 0xEF6E6F6973726556;
  }

  else
  {
    v3 = 0x73736572706D6F63;
    v4 = 0xED000073656C6946;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0x80000001BABF51B0;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000001BABF51D0;
    if (v3 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEF6E6F6973726556;
    if (v3 != 0x6C6F636F746F7270)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED000073656C6946;
    if (v3 != 0x73736572706D6F63)
    {
LABEL_31:
      v7 = sub_1BABE7EDC();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

__n128 ZoneDescriptor.init(id:publicationMethod:replicationPriority:protocolVersion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 17) = v7;
  result = *a5;
  *(a6 + 24) = *a5;
  *(a6 + 40) = 0;
  return result;
}

uint64_t ZoneDescriptor.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ZoneDescriptor.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 ZoneDescriptor.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

__n128 ZoneDescriptor.init(id:publicationMethod:replicationPriority:protocolVersion:compressFiles:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, __n128 *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  v8 = *a4;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v7;
  *(a7 + 17) = v8;
  result = *a5;
  *(a7 + 24) = *a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t ZoneDescriptor.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v2);
  MEMORY[0x1BFAFDC40](v3);
  MEMORY[0x1BFAFDC40](v4);
  MEMORY[0x1BFAFDC40](v5);
  return sub_1BABE7FBC();
}

uint64_t ZoneDescriptor.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1BABE7F9C();
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  MEMORY[0x1BFAFDC40](v2);
  MEMORY[0x1BFAFDC40](v3);
  MEMORY[0x1BFAFDC40](v4);
  sub_1BABE7FBC();
  return sub_1BABE7FDC();
}

double sub_1BAB2D24C@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_1BAB2D260(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v2);
  MEMORY[0x1BFAFDC40](v3);
  MEMORY[0x1BFAFDC40](v4);
  MEMORY[0x1BFAFDC40](v5);
  return sub_1BABE7FBC();
}

uint64_t sub_1BAB2D2DC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_1BABE7F9C();
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v2);
  MEMORY[0x1BFAFDC40](v3);
  MEMORY[0x1BFAFDC40](v4);
  MEMORY[0x1BFAFDC40](v5);
  sub_1BABE7FBC();
  return sub_1BABE7FDC();
}

ReplicatorServices::ZoneDescriptor::CodingKeys_optional __swiftcall ZoneDescriptor.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BABE7D1C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ReplicatorServices::ZoneDescriptor::CodingKeys_optional __swiftcall ZoneDescriptor.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = ZoneDescriptor.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1BAB2D438()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000013;
  v4 = 0x6C6F636F746F7270;
  if (v1 != 3)
  {
    v4 = 0x73736572706D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
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

uint64_t sub_1BAB2D4F8()
{
  sub_1BABE7F9C();
  sub_1BABE759C();

  return sub_1BABE7FDC();
}

uint64_t sub_1BAB2D5F4(uint64_t a1)
{
  sub_1BABE759C();
}

uint64_t sub_1BAB2D6DC(uint64_t a1)
{
  sub_1BABE7F9C();
  sub_1BABE759C();

  return sub_1BABE7FDC();
}

void sub_1BAB2D7E0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x80000001BABF51D0;
  v6 = 0xD000000000000013;
  v7 = 0xEF6E6F6973726556;
  v8 = 0x6C6F636F746F7270;
  if (v2 != 3)
  {
    v8 = 0x73736572706D6F63;
    v7 = 0xED000073656C6946;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001BABF51B0;
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

ReplicatorServices::ZoneDescriptor::CodingKeys_optional sub_1BAB2D898@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = ZoneDescriptor.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_1BAB2D8DC(uint64_t a1)
{
  v2 = sub_1BAB2DF6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB2D918(uint64_t a1)
{
  v2 = sub_1BAB2DF6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ZoneDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12D88, &qword_1BABEA700);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB2DF6C();
  sub_1BABE7FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v9 = sub_1BABE7DAC();
  v11 = v10;
  v19 = v9;
  v23 = 1;
  sub_1BAB2DFC0();
  sub_1BABE7DCC();
  v12 = v20;
  v23 = 2;
  sub_1BAB2E014();
  sub_1BABE7DCC();
  v22 = v12;
  LOBYTE(v12) = v20;
  v23 = 3;
  sub_1BAB2E068();
  sub_1BABE7DCC();
  v17 = v21;
  v18 = v20;
  LOBYTE(v20) = 4;
  v14 = sub_1BABE7D5C();
  (*(v6 + 8))(v8, v5);
  *a2 = v19;
  *(a2 + 8) = v11;
  *(a2 + 16) = v22;
  *(a2 + 17) = v12;
  v15 = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v14 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ZoneDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12D90, &qword_1BABEA708);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v20 = *(v1 + 16);
  v16 = *(v1 + 17);
  v7 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = v7;
  v13[3] = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB2DF6C();
  sub_1BABE800C();
  LOBYTE(v18) = 0;
  v8 = v17;
  sub_1BABE7E5C();
  if (!v8)
  {
    v9 = v16;
    v11 = v14;
    v10 = v15;
    LOBYTE(v18) = v20;
    v21 = 1;
    sub_1BAB2E0BC();
    sub_1BABE7E7C();
    LOBYTE(v18) = v9;
    v21 = 2;
    sub_1BAB2E110();
    sub_1BABE7E7C();
    v18 = v10;
    v19 = v11;
    v21 = 3;
    sub_1BAB2E164();
    sub_1BABE7E7C();
    LOBYTE(v18) = 4;
    sub_1BABE7E6C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t _s18ReplicatorServices14ZoneDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v5 = a1[3];
  v4 = a1[4];
  v6 = *(a1 + 40);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    result = 0;
    if (v2 != v7)
    {
      return result;
    }
  }

  else
  {
    v13 = sub_1BABE7EDC();
    result = 0;
    if ((v13 & 1) == 0 || v2 != v7)
    {
      return result;
    }
  }

  if (v3 == v8 && v5 == v10 && v4 == v9)
  {
    return v6 ^ v11 ^ 1u;
  }

  return result;
}

unint64_t sub_1BAB2DF6C()
{
  result = qword_1ED787898[0];
  if (!qword_1ED787898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED787898);
  }

  return result;
}

unint64_t sub_1BAB2DFC0()
{
  result = qword_1ED7873D8;
  if (!qword_1ED7873D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7873D8);
  }

  return result;
}

unint64_t sub_1BAB2E014()
{
  result = qword_1ED7873D0;
  if (!qword_1ED7873D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7873D0);
  }

  return result;
}

unint64_t sub_1BAB2E068()
{
  result = qword_1ED787540;
  if (!qword_1ED787540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787540);
  }

  return result;
}

unint64_t sub_1BAB2E0BC()
{
  result = qword_1ED787840;
  if (!qword_1ED787840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787840);
  }

  return result;
}

unint64_t sub_1BAB2E110()
{
  result = qword_1ED787830;
  if (!qword_1ED787830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787830);
  }

  return result;
}

unint64_t sub_1BAB2E164()
{
  result = qword_1ED787B50;
  if (!qword_1ED787B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787B50);
  }

  return result;
}

unint64_t sub_1BAB2E1C8()
{
  result = qword_1EBC12D98;
  if (!qword_1EBC12D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12D98);
  }

  return result;
}

unint64_t sub_1BAB2E220()
{
  result = qword_1EBC12DA0;
  if (!qword_1EBC12DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12DA0);
  }

  return result;
}

unint64_t sub_1BAB2E278()
{
  result = qword_1ED787888;
  if (!qword_1ED787888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787888);
  }

  return result;
}

unint64_t sub_1BAB2E2D0()
{
  result = qword_1ED787890;
  if (!qword_1ED787890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787890);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BAB2E338(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1BAB2E380(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZoneDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ZoneDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BAB2E5A8()
{
  v1 = type metadata accessor for ReplicatorDevice(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(v0 + OBJC_IVAR____TtC18ReplicatorServices33ReplicatorControlClientObjcBridge_controlClient) + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_singleton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0, &unk_1BABEA9E0);
  sub_1BABE794C();
  v5 = v21;
  v6 = *(v21 + 16);
  if (v6)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1BABE7B9C();
    v7 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    v16 = v5;
    v17 = v8;
    do
    {
      v19 = v6;
      sub_1BAB2F578(v7, v4);
      v18 = qword_1BABEAA40[v4[*(v1 + 32)]];
      v9 = objc_allocWithZone(RPLReplicatorDevice);
      v10 = sub_1BABE6CBC();
      v11 = sub_1BABE6CBC();
      v12 = sub_1BABE74EC();
      v13 = sub_1BABE6C2C();
      [v9 initWithDeviceID:v10 relationshipID:v11 name:v12 deviceType:v18 initialDiscoveryDate:{v13, v16}];

      v14 = v19;
      sub_1BAB2F5DC(v4);
      sub_1BABE7B6C();
      sub_1BABE7BAC();
      sub_1BABE7BBC();
      sub_1BABE7B7C();
      v7 += v17;
      v6 = v14 - 1;
    }

    while (v6);

    return v21;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

void sub_1BAB2E8B0(Swift::Bool a1)
{
  ReplicatorControlClient.setEnabled(_:)(a1);
  if (v1)
  {
    if (qword_1EBC12478 != -1)
    {
      swift_once();
    }

    v2 = sub_1BABE72BC();
    __swift_project_value_buffer(v2, qword_1EBC25030);
    v3 = v1;
    oslog = sub_1BABE729C();
    v4 = sub_1BABE78EC();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138543362;
      v7 = v1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_1BAACF000, oslog, v4, "Could not set replicator enabled state: %{public}@", v5, 0xCu);
      sub_1BAB2F654(v6);
      MEMORY[0x1BFAFE460](v6, -1, -1);
      MEMORY[0x1BFAFE460](v5, -1, -1);

      v9 = oslog;
    }

    else
    {

      v9 = v1;
    }
  }
}

uint64_t sub_1BAB2EB50(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  sub_1BABE794C();

  return v5;
}

uint64_t sub_1BAB2EBD4()
{
  sub_1BABE794C();
  result = 0;
  if (v1 == 1)
  {
    MEMORY[0x1EEE9AC00](0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AB0, &unk_1BABEA9F0);
    sub_1BABE794C();
    return v1;
  }

  return result;
}

void sub_1BAB2ED50(Swift::OpaquePointer a1)
{
  if (a1._rawValue)
  {
    sub_1BABE794C();
    ReplicatorControlClient.setAllowList(idsIDs:)(a1);
    if (v2)
    {
      if (qword_1EBC12478 != -1)
      {
        swift_once();
      }

      v3 = sub_1BABE72BC();
      __swift_project_value_buffer(v3, qword_1EBC25030);
      v4 = v2;
      v5 = sub_1BABE729C();
      v6 = sub_1BABE78EC();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138543362;
        v9 = v2;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 4) = v10;
        *v8 = v10;
        _os_log_impl(&dword_1BAACF000, v5, v6, "Could not set replicator allow list: %{public}@", v7, 0xCu);
        sub_1BAB2F654(v8);
        MEMORY[0x1BFAFE460](v8, -1, -1);
        MEMORY[0x1BFAFE460](v7, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1BABE794C();
  }
}

uint64_t sub_1BAB2EFDC(uint64_t a1)
{
  v1 = sub_1BABE6CFC();
  MEMORY[0x1EEE9AC00](v1);
  sub_1BABE794C();
  return v3;
}

id ReplicatorControlClientObjcBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReplicatorControlClientObjcBridge.init()()
{
  v1 = OBJC_IVAR____TtC18ReplicatorServices33ReplicatorControlClientObjcBridge_controlClient;
  type metadata accessor for ReplicatorControlClient(0);
  swift_allocObject();
  *&v0[v1] = ReplicatorControlClient.init()();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ReplicatorControlClientObjcBridge();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ReplicatorControlClientObjcBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReplicatorControlClientObjcBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BAB2F578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAB2F5DC(uint64_t a1)
{
  v2 = type metadata accessor for ReplicatorDevice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAB2F654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A00, &qword_1BABE9FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BAB2F8D8()
{
  result = qword_1EBC12DB0;
  if (!qword_1EBC12DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC12DB0);
  }

  return result;
}

uint64_t sub_1BAB2F96C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12800, &qword_1BABE9BF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1BABE715C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1BAAD2E14(a1, &qword_1EBC12800, &qword_1BABE9BF8);
    sub_1BAB3BF48(a2, v7);
    v12 = sub_1BABE6CFC();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1BAAD2E14(v7, &qword_1EBC12800, &qword_1BABE9BF8);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1BAAE5A74(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1BABE6CFC();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1BAB2FB98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1BAAE5F20(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1BABE6CFC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1BAAD37E8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1BABDC600();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1BABE6CFC();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1BAB3CAB0(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1BABE6CFC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1BAB2FD58(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20, &qword_1BABEA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1BAAD2E14(a1, &qword_1EBC12A20, &qword_1BABEA000);
    sub_1BAB3C350(a2, v7);
    sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    return sub_1BAAD2E14(v7, &qword_1EBC12A20, &qword_1BABEA000);
  }

  else
  {
    sub_1BAB41B4C(a1, v10, type metadata accessor for ReplicatorRecord.ID);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1BAAE6580(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_1BAB2FF40(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60, &qword_1BABE9B50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_1BABE6CFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1BAAD2E14(a1, &qword_1EBC12B60, &qword_1BABE9B50);
    sub_1BAB3C1B4(a2, v7);
    sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    return sub_1BAAD2E14(v7, &qword_1EBC12B60, &qword_1BABE9B50);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1BAAE63A4(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_1BAB30134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1BAAE625C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1BABD5AB4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1BABDCAF0();
        v14 = v16;
      }

      result = sub_1BAB3CDD0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1BAB3022C(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B20, &unk_1BABEA0B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ReplicatorRecord(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1BAAD2E14(a1, &unk_1EBC12B20, &unk_1BABEA0B0);
    sub_1BAB3C4D8(a2, v7);
    sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    return sub_1BAAD2E14(v7, &unk_1EBC12B20, &unk_1BABEA0B0);
  }

  else
  {
    sub_1BAB41B4C(a1, v10, type metadata accessor for ReplicatorRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1BAAE6740(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_1BAB30414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B30, &unk_1BABEA0C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ReplicatorRecord.Value(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1BAAD2E14(a1, &qword_1EBC12B30, &unk_1BABEA0C0);
    v13 = sub_1BABD5D84(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BABDD980();
        v17 = v21;
      }

      sub_1BAB41B4C(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for ReplicatorRecord.Value);
      sub_1BAB3DE3C(v15, v17, type metadata accessor for ReplicatorRecord.Value);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1BAAD2E14(v8, &qword_1EBC12B30, &unk_1BABEA0C0);
  }

  else
  {
    sub_1BAB41B4C(a1, v12, type metadata accessor for ReplicatorRecord.Value);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1BAAE6A90(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1BAB3067C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70, &unk_1BABE9A80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1BABE6BAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1BAAD2E14(a1, &unk_1EBC13D70, &unk_1BABE9A80);
    v13 = sub_1BABD5D84(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BABDDD5C();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_1BAB3DE3C(v15, v17, MEMORY[0x1E6968FB0]);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1BAAD2E14(v8, &unk_1EBC13D70, &unk_1BABE9A80);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1BAAE6BE4(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1BAB30938(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1BAAE6ED4(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    *v2 = v15;
  }

  else
  {
    v8 = sub_1BABD5D18(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v16 = *v3;
      if (!v11)
      {
        sub_1BABDE4C4();
        v12 = v16;
      }

      v13 = *(v12 + 48);
      v14 = type metadata accessor for ReplicatorRecord.ID(0);
      sub_1BAB41BB4(v13 + *(*(v14 - 8) + 72) * v10, type metadata accessor for ReplicatorRecord.ID);

      sub_1BAB3E4C4(v10, v12);
      result = sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
      *v3 = v12;
    }

    else
    {
      return sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    }
  }

  return result;
}

uint64_t sub_1BAB30AB4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DC8, &unk_1BABEAB90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1BAAD2E14(a1, &qword_1EBC12DC8, &unk_1BABEAB90);
    sub_1BAB3C730(a2, v7);
    v12 = sub_1BABE6CFC();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1BAAD2E14(v7, &qword_1EBC12DC8, &unk_1BABEAB90);
  }

  else
  {
    sub_1BAB41B4C(a1, v10, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1BAAE7420(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1BABE6CFC();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1BAB30CD4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BABD5E5C(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v21 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BABDE998();
        v10 = v21;
      }

      v11 = *(v10 + 48);
      v12 = sub_1BABE6BAC();
      v13 = *(v12 - 8);
      v14 = *(v13 + 8);
      v14(v11 + *(v13 + 72) * v8, v12);
      sub_1BAB3E974(v8, v10);
      result = (v14)(a3, v12);
      *v4 = v10;
    }

    else
    {
      v19 = sub_1BABE6BAC();
      v20 = *(*(v19 - 8) + 8);

      return v20(a3, v19);
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1BAAE7284(a1, a3, v17);
    v18 = sub_1BABE6BAC();
    result = (*(*(v18 - 8) + 8))(a3, v18);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1BAB30E88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1BAAE70B8(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1BABE6BAC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1BABD5E5C(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1BABDE718();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1BABE6BAC();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1BAB3E974(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1BABE6BAC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1BAB31074(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v12 = sub_1BABE6CFC();
    result = (*(*(v12 - 8) + 8))(a3, v12);
    *v5 = v26;
  }

  else
  {
    v15 = sub_1BAAD37E8(a3);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v5;
      v27 = *v6;
      if (!v18)
      {
        a5();
        v19 = v27;
      }

      v20 = *(v19 + 48);
      v21 = sub_1BABE6CFC();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v20 + *(v22 + 72) * v17, v21);

      sub_1BAB3E1A4(v17, v19);
      result = (v23)(a3, v21);
      *v6 = v19;
    }

    else
    {
      v24 = sub_1BABE6CFC();
      v25 = *(*(v24 - 8) + 8);

      return v25(a3, v24);
    }
  }

  return result;
}

uint64_t sub_1BAB31250(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1BABE786C();
  if (!v19)
  {
    return sub_1BABE76FC();
  }

  v41 = v19;
  v45 = sub_1BABE7BDC();
  v32 = sub_1BABE7BEC();
  sub_1BABE7B8C();
  result = sub_1BABE785C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1BABE788C();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1BABE7BCC();
      result = sub_1BABE787C();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAB31670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for ReplicatorStore.Entry(0, a3, a4, v9);
  return sub_1BAB41B4C(a2, a5 + *(v10 + 36), type metadata accessor for ReplicatorRecord);
}

uint64_t sub_1BAB31708()
{
  v1 = *(v0 + 240);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1BABE747C();
  sub_1BAB31CA8(sub_1BAB31994, v0, v1);
  return v3;
}

uint64_t sub_1BAB317F8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1BABE741C();
  type metadata accessor for ReplicatorStore.Entry(255, v3, v2, v4);
  sub_1BABE747C();
  sub_1BABE747C();
  swift_getWitnessTable();
  sub_1BABE763C();
}

uint64_t sub_1BAB319B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v7 = sub_1BABE799C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = *(a4 + 24);
  v30 = &v27 - v9;
  v31 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = type metadata accessor for ReplicatorStore.Entry(255, a3, a4, v11);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  v19 = *(v13 + 16);
  v19(&v27 - v17, a2, TupleTypeMetadata2);
  v29 = *(TupleTypeMetadata2 + 48);
  v19(v16, a2, TupleTypeMetadata2);
  v20 = *(TupleTypeMetadata2 + 48);
  v21 = *(a3 - 8);
  v22 = v30;
  (*(v21 + 16))(v30, &v16[v20], a3);
  v23 = *(*(v28 - 8) + 8);
  v24 = &v16[v20];
  v25 = v28;
  v23(v24);
  (*(v21 + 56))(v22, 0, 1, a3);
  swift_getAssociatedConformanceWitness();
  sub_1BABE747C();
  sub_1BABE749C();
  (*(*(AssociatedTypeWitness - 8) + 8))(v16, AssociatedTypeWitness);
  return (v23)(&v18[v29], v25);
}

void sub_1BAB31CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v4));
  sub_1BAB41DC0();
  os_unfair_lock_unlock((a3 + v4));
}

void *ReplicatorStore.__allocating_init(replicator:zoneDescriptor:coder:recordIDProvider:recordVersionProvider:recordValueProvider:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_allocObject();
  v17 = sub_1BAB3FA34(a1, a2, a3, a4, a5, a6, a7, a8, a9);

  return v17;
}

void *ReplicatorStore.init(replicator:zoneDescriptor:coder:recordIDProvider:recordVersionProvider:recordValueProvider:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_1BAB3FA34(a1, a2, a3, a4, a5, a6, a7, a8, a9);

  return v9;
}

uint64_t sub_1BAB31E84(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DD8, &qword_1BABF13C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1BABE778C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = *(v4 + 80);
  v10[5] = *(v4 + 88);
  v10[6] = v9;
  sub_1BAB388AC(0, 0, v7, a2, v10);
}

void sub_1BAB31FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for ReplicatorStore.Entry(255, *(*v4 + 80), *(*v4 + 88), a4);
  v122 = sub_1BABE799C();
  v128 = *(v122 - 8);
  v7 = MEMORY[0x1EEE9AC00](v122);
  v129 = &v112 - v8;
  v134 = v6;
  v118 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v121 = &v112 - v9;
  v10 = type metadata accessor for ReplicatorRecord(0);
  v126 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v136 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v112 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B18, &qword_1BABEA0A8);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v133 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v127 = &v112 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20, &qword_1BABEA000);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v125 = &v112 - v19;
  v124 = type metadata accessor for ReplicatorRecord.ID(0);
  v130 = *(v124 - 8);
  v20 = MEMORY[0x1EEE9AC00](v124);
  v135 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v131 = &v112 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v112 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v112 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70, &unk_1BABE9A80);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v112 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A10, &qword_1BABE9FF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v112 - v33;
  v35 = v5[5];
  v36 = v5[10];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v35);
  v37 = (*(v36 + 64))(v35, v36);
  v120 = v32;
  v114 = v28;
  v115 = v26;
  v116 = v31;
  v137 = v5;
  v38 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v37 + 64);
  v42 = (v39 + 63) >> 6;
  v43 = v130;
  v119 = (v130 + 48);
  v123 = v37;

  v44 = 0;
  v117 = MEMORY[0x1E69E7CC0];
  v45 = v43;
  v46 = v128;
LABEL_4:
  v47 = v44;
  if (!v41)
  {
    goto LABEL_6;
  }

  do
  {
    v44 = v47;
LABEL_9:
    v48 = __clz(__rbit64(v41)) | (v44 << 6);
    v49 = v123;
    v50 = v45;
    v51 = *(v45 + 72);
    sub_1BAB41C14(*(v123 + 48) + v51 * v48, v34, type metadata accessor for ReplicatorRecord.ID);
    v52 = *(v49 + 56);
    v53 = sub_1BABE6CFC();
    (*(*(v53 - 8) + 16))(&v34[*(v120 + 48)], v52 + *(*(v53 - 8) + 72) * v48, v53);
    v54 = v125;
    sub_1BAB3B65C(v34, v137, v125);
    v41 &= v41 - 1;
    sub_1BAAD2E14(v34, &qword_1EBC12A10, &qword_1BABE9FF0);
    if ((*v119)(v54, 1, v124) != 1)
    {
      v55 = v54;
      v56 = v114;
      sub_1BAB41B4C(v55, v114, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAB41B4C(v56, v115, type metadata accessor for ReplicatorRecord.ID);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v128;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v117 = sub_1BAAF9A54(0, v117[2] + 1, 1, v117);
      }

      v59 = v117[2];
      v58 = v117[3];
      v60 = v59 + 1;
      v61 = v115;
      if (v59 >= v58 >> 1)
      {
        v113 = v59 + 1;
        v63 = sub_1BAAF9A54((v58 > 1), v59 + 1, 1, v117);
        v60 = v113;
        v117 = v63;
        v61 = v115;
      }

      v62 = v117;
      v117[2] = v60;
      sub_1BAB41B4C(v61, v62 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + v59 * v51, type metadata accessor for ReplicatorRecord.ID);
      v45 = v50;
      goto LABEL_4;
    }

    sub_1BAAD2E14(v54, &qword_1EBC12A20, &qword_1BABEA000);
    v47 = v44;
    v45 = v50;
    v46 = v128;
  }

  while (v41);
LABEL_6:
  while (1)
  {
    v44 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v44 >= v42)
    {

      v64 = v137;
      v65 = v137[5];
      v66 = v137[10];
      __swift_project_boxed_opaque_existential_1(v137 + 2, v65);
      v67 = sub_1BABE6BAC();
      v68 = v116;
      (*(*(v67 - 8) + 56))(v116, 1, 1, v67);
      v69 = (*(v66 + 48))(v117, v68, v64[15], 0, v65, v66);
      sub_1BAAD2E14(v68, &unk_1EBC13D70, &unk_1BABE9A80);

      v70 = 0;
      v71 = v69 + 64;
      v72 = 1 << *(v69 + 32);
      v73 = -1;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      v74 = v73 & *(v69 + 64);
      v75 = (v72 + 63) >> 6;
      v128 = (v118 + 48);
      v123 = v118 + 32;
      v124 = v69;
      v119 = v46 + 1;
      v120 = v118 + 8;
      v76 = v132;
      v77 = v133;
      v78 = v127;
      v125 = v71;
      while (v74)
      {
        v80 = v70;
LABEL_32:
        v83 = __clz(__rbit64(v74));
        v74 &= v74 - 1;
        v84 = v83 | (v80 << 6);
        v85 = v124;
        v86 = v131;
        sub_1BAB41C14(*(v124 + 48) + *(v130 + 72) * v84, v131, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB41C14(*(v85 + 56) + *(v126 + 72) * v84, v76, type metadata accessor for ReplicatorRecord);
        v87 = v76;
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B10, &qword_1BABEA0A0);
        v89 = *(v88 + 48);
        v90 = v86;
        v77 = v133;
        sub_1BAB41B4C(v90, v133, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB41B4C(v87, v77 + v89, type metadata accessor for ReplicatorRecord);
        (*(*(v88 - 8) + 56))(v77, 0, 1, v88);
        v78 = v127;
LABEL_33:
        sub_1BAB23414(v77, v78, &qword_1EBC12B18, &qword_1BABEA0A8);
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B10, &qword_1BABEA0A0);
        if ((*(*(v91 - 8) + 48))(v78, 1, v91) == 1)
        {

          return;
        }

        v92 = *(v91 + 48);
        sub_1BAB41B4C(v78, v135, type metadata accessor for ReplicatorRecord.ID);
        v93 = v136;
        sub_1BAB41B4C(v78 + v92, v136, type metadata accessor for ReplicatorRecord);
        v94 = v129;
        sub_1BAB3AC00(v93, v129);
        v95 = v134;
        if ((*v128)(v94, 1, v134) == 1)
        {
          sub_1BAB41BB4(v136, type metadata accessor for ReplicatorRecord);
          (*v119)(v94, v122);
          v76 = v132;
          v79 = v135;
        }

        else
        {
          v96 = v121;
          v97 = (*v123)(v121, v94, v95);
          v98 = v137[30];
          v99 = MEMORY[0x1EEE9AC00](v97);
          *(&v112 - 4) = v100;
          *(&v112 - 3) = v96;
          v79 = v135;
          *(&v112 - 2) = v135;
          MEMORY[0x1EEE9AC00](v99);
          *(&v112 - 2) = sub_1BAB41750;
          *(&v112 - 1) = v101;
          os_unfair_lock_lock(v98 + 4);
          sub_1BAB41E5C();
          os_unfair_lock_unlock(v98 + 4);
          sub_1BAB41BB4(v136, type metadata accessor for ReplicatorRecord);
          v102 = v96;
          v77 = v133;
          (*v120)(v102, v134);
          v76 = v132;
        }

        sub_1BAB41BB4(v79, type metadata accessor for ReplicatorRecord.ID);
        v71 = v125;
      }

      if (v75 <= v70 + 1)
      {
        v81 = v70 + 1;
      }

      else
      {
        v81 = v75;
      }

      v82 = v81 - 1;
      while (1)
      {
        v80 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          break;
        }

        if (v80 >= v75)
        {
          v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B10, &qword_1BABEA0A0);
          (*(*(v103 - 8) + 56))(v77, 1, 1, v103);
          v74 = 0;
          v70 = v82;
          goto LABEL_33;
        }

        v74 = *(v71 + 8 * v80);
        ++v70;
        if (v74)
        {
          v70 = v80;
          v76 = v132;
          goto LABEL_32;
        }
      }

      __break(1u);
      break;
    }

    v41 = *(v38 + 8 * v44);
    ++v47;
    if (v41)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  swift_once();
  v104 = sub_1BABE72BC();
  __swift_project_value_buffer(v104, qword_1ED78BBA0);
  v105 = 0;
  v106 = sub_1BABE729C();
  v107 = sub_1BABE78EC();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    *v108 = 138543362;
    v110 = 0;
    v111 = _swift_stdlib_bridgeErrorToNSError();
    *(v108 + 4) = v111;
    *v109 = v111;
    _os_log_impl(&dword_1BAACF000, v106, v107, "Could not fetch initial record set: %{public}@", v108, 0xCu);
    sub_1BAAD2E14(v109, &qword_1EBC12A00, &qword_1BABE9FE0);
    MEMORY[0x1BFAFE460](v109, -1, -1);
    MEMORY[0x1BFAFE460](v108, -1, -1);
  }

  else
  {
  }
}

void sub_1BAB32E50()
{
  v2 = v0[5];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v5 = v0[30];
    v6 = MEMORY[0x1EEE9AC00](v4);
    MEMORY[0x1EEE9AC00](v6);
    os_unfair_lock_lock(v5 + 4);
    sub_1BAB41E5C();
    os_unfair_lock_unlock(v5 + 4);
    if (v1)
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1BABE72BC();
    __swift_project_value_buffer(v7, qword_1ED78BBA0);
    v8 = sub_1BABE729C();
    v9 = sub_1BABE78EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BAACF000, v8, v9, "Client is not registered", v10, 2u);
      MEMORY[0x1BFAFE460](v10, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0;

    swift_willThrow();
  }
}

uint64_t sub_1BAB3305C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v28 = a3;
  v3 = *a1;
  v25 = type metadata accessor for ReplicatorRecord(0);
  MEMORY[0x1EEE9AC00](v25);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReplicatorStore.Entry(255, *(v3 + 80), *(v3 + 88), v5);
  v7 = sub_1BABE799C();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v22 - v12;
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1BABE748C();

  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    (*(v23 + 8))(v10, v24);
    v14 = sub_1BABE6CFC();
    return (*(*(v14 - 8) + 56))(v28, 1, 1, v14);
  }

  else
  {
    (*(v11 + 32))(v13, v10, v6);
    v16 = v26;
    sub_1BAB41C14(&v13[*(v6 + 36)], v26, type metadata accessor for ReplicatorRecord);
    (*(v11 + 8))(v13, v6);
    v17 = *(v25 + 20);
    v18 = sub_1BABE6CFC();
    v19 = *(v18 - 8);
    v20 = v16 + v17;
    v21 = v28;
    (*(v19 + 16))(v28, v20, v18);
    sub_1BAB41BB4(v16, type metadata accessor for ReplicatorRecord);
    return (*(v19 + 56))(v21, 0, 1, v18);
  }
}

void sub_1BAB33448()
{
  v1 = v0[5];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 8))(v1, v2);
  if (v3)
  {
    v11[1] = v11;
    v4 = v0[30];
    v5 = MEMORY[0x1EEE9AC00](v3);
    MEMORY[0x1EEE9AC00](v5);
    os_unfair_lock_lock(v4 + 4);
    sub_1BAB3FFA4();
    os_unfair_lock_unlock(v4 + 4);
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v6 = sub_1BABE72BC();
    __swift_project_value_buffer(v6, qword_1ED78BBA0);
    v7 = sub_1BABE729C();
    v8 = sub_1BABE78EC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BAACF000, v7, v8, "Client is not registered", v9, 2u);
      MEMORY[0x1BFAFE460](v9, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v10 = 2;
    *(v10 + 8) = 0;

    swift_willThrow();
  }
}

uint64_t sub_1BAB33674@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v46 = a3;
  v47 = a2;
  v7 = type metadata accessor for ReplicatorStore.Entry(255, *(*a1 + 80), *(*a1 + 88), a4);
  v8 = sub_1BABE799C();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v39 - v13;
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1BABE748C();

  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v41 + 8))(v11, v42);
    v14 = sub_1BABE6BAC();
    return (*(*(v14 - 8) + 56))(v45, 1, 1, v14);
  }

  else
  {
    v47 = v12;
    v16 = v40;
    (*(v12 + 32))();
    if (v43)
    {
      v46 = a1[15];
    }

    v17 = a1[5];
    v18 = a1[10];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A40, &qword_1BABE9D50);
    v19 = *(type metadata accessor for ReplicatorRecord.ID(0) - 8);
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BABE9F00;
    v22 = *(v7 + 36);
    sub_1BAB41C14(&v16[v22], v21 + v20, type metadata accessor for ReplicatorRecord.ID);
    v23 = v46;
    v24 = v48;
    v25 = (*(v18 + 56))(v21, v44, v46, 0, v17, v18);
    if (v24)
    {
      (*(v47 + 8))(v16, v7);
    }

    else
    {
      v26 = v25;

      if (*(v26 + 16) && (v27 = sub_1BABD5D18(&v16[v22]), (v28 & 1) != 0))
      {
        v29 = *(*(v26 + 56) + 8 * v27);

        v30 = v45;
        if (*(v29 + 16) && (v31 = sub_1BABD5D84(v23), (v32 & 1) != 0))
        {
          v33 = v31;
          v34 = *(v29 + 56);
          v35 = sub_1BABE6BAC();
          v36 = *(v35 - 8);
          (*(v36 + 16))(v30, v34 + *(v36 + 72) * v33, v35);
          (*(v47 + 8))(v16, v7);

          return (*(v36 + 56))(v30, 0, 1, v35);
        }

        else
        {

          (*(v47 + 8))(v16, v7);
          v38 = sub_1BABE6BAC();
          return (*(*(v38 - 8) + 56))(v30, 1, 1, v38);
        }
      }

      else
      {

        (*(v47 + 8))(v16, v7);
        v37 = sub_1BABE6BAC();
        return (*(*(v37 - 8) + 56))(v45, 1, 1, v37);
      }
    }
  }
}

void sub_1BAB33C48()
{
  v2 = v0[5];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v5 = v0[30];
    v6 = MEMORY[0x1EEE9AC00](v4);
    MEMORY[0x1EEE9AC00](v6);
    os_unfair_lock_lock(v5 + 4);
    sub_1BAB41E5C();
    os_unfair_lock_unlock(v5 + 4);
    if (v1)
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1BABE72BC();
    __swift_project_value_buffer(v7, qword_1ED78BBA0);
    v8 = sub_1BABE729C();
    v9 = sub_1BABE78EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BAACF000, v8, v9, "Client is not registered", v10, 2u);
      MEMORY[0x1BFAFE460](v10, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0;

    swift_willThrow();
  }
}

uint64_t sub_1BAB33E54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v19 = a2;
  v20 = a3;
  v4 = type metadata accessor for ReplicatorStore.Entry(255, *(*a1 + 80), *(*a1 + 88), a4);
  v5 = sub_1BABE799C();
  v17 = *(v5 - 8);
  v18 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v16 - v10;
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1BABE748C();

  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v17 + 8))(v8, v18);
    v12 = 1;
    v13 = v20;
  }

  else
  {
    (*(v9 + 32))(v11, v8, v4);
    v13 = v20;
    sub_1BAB41C14(&v11[*(v4 + 36)], v20, type metadata accessor for ReplicatorRecord);
    (*(v9 + 8))(v11, v4);
    v12 = 0;
  }

  v14 = type metadata accessor for ReplicatorRecord(0);
  return (*(*(v14 - 8) + 56))(v13, v12, 1, v14);
}

uint64_t sub_1BAB34144(uint64_t a1, uint64_t *a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0, &unk_1BABE9C10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = *a3;
  v14 = *a2;
  v13 = v9;
  v10 = sub_1BABE6C8C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1BAB34260(a1, &v14, &v13);
  return sub_1BAAD2E14(v8, &qword_1EBC132A0, &unk_1BABE9C10);
}

uint64_t sub_1BAB34260(uint64_t a1, uint64_t *a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0, &unk_1BABE9C10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = *a3;
  v15 = *a2;
  v14 = v9;
  v10 = sub_1BABE6C8C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v13 = 0;
  sub_1BAB34388(a1, &v15, &v14, v8, &v13);
  return sub_1BAAD2E14(v8, &qword_1EBC132A0, &unk_1BABE9C10);
}

uint64_t sub_1BAB34388(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *a5;
  v11 = *(*v5 + 80);
  sub_1BAB3BED4(v11, v11);
  v12 = *(v11 - 8);
  swift_allocObject();
  v13 = sub_1BABE76CC();
  (*(v12 + 16))(v14, a1, v11);
  sub_1BABE775C();
  v18 = v8;
  v17 = v9;
  v16 = v10;
  sub_1BAB344CC(v13, &v18, &v17, a4, &v16);
}

uint64_t sub_1BAB344CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = v6;
  *&v181 = a3;
  v155 = a1;
  v11 = *v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0, &unk_1BABE9C10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v140 - v13;
  v152 = type metadata accessor for ReplicatorRecord(0);
  v151 = *(v152 - 8);
  v15 = MEMORY[0x1EEE9AC00](v152);
  v158 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v157 = &v140 - v17;
  v18 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v154 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v161 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DB8, &qword_1BABF1410);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v163 = &v140 - v23;
  v177 = type metadata accessor for ReplicatorDevice(0);
  v173 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v168 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1BABE6CFC();
  v179 = *(v189 - 8);
  v25 = MEMORY[0x1EEE9AC00](v189);
  v153 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v176 = &v140 - v27;
  v28 = type metadata accessor for ReplicatorRecord.Value(0);
  v169 = *(v28 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v165 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v162 = &v140 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v166 = &v140 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v167 = &v140 - v36;
  v37 = v11;
  v38 = v5;
  v39 = *(v37 + 80);
  v156 = *(v39 - 8);
  v40 = MEMORY[0x1EEE9AC00](v35);
  v42 = &v140 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v41;
  MEMORY[0x1EEE9AC00](v40);
  v159 = &v140 - v43;
  v180 = *a2;
  v144 = *v181;
  v150 = *a5;
  v44 = v5[5];
  v45 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v44);
  if (((*(v45 + 8))(v44, v45) & 1) == 0)
  {
    if (qword_1ED7876D0 != -1)
    {
      goto LABEL_85;
    }

    goto LABEL_5;
  }

  sub_1BAAD2DAC((v5 + 18), &v183, &qword_1EBC12DC0, &qword_1BABEAA70);
  if (*&v184[8])
  {
    sub_1BAB22994(&v183, &v187);
    v46 = v155;
  }

  else
  {
    v53 = v5[5];
    v181 = *(v38 + 4);
    v54 = __swift_project_boxed_opaque_existential_1(v38 + 2, v53);
    *v188 = v53;
    *&v188[8] = v181;
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v187);
    (*(*(v53 - 8) + 16))(boxed_opaque_existential_2, v54, v53);
    v46 = v155;
    if (*&v184[8])
    {
      sub_1BAAD2E14(&v183, &qword_1EBC12DC0, &qword_1BABEAA70);
    }
  }

  if (!sub_1BABE774C())
  {
    v160 = MEMORY[0x1E69E7CC0];
LABEL_72:
    v138 = v38[5];
    v139 = v38[10];
    __swift_project_boxed_opaque_existential_1(v38 + 2, v138);
    *&v183 = v180;
    LOBYTE(v182[0]) = v144;
    (*(v139 + 24))(v160, &v183, v182, v138, v139);
LABEL_73:

    return __swift_destroy_boxed_opaque_existential_1(&v187);
  }

  v56 = 0;
  v148 = (v156 + 16);
  v147 = (v156 + 32);
  v175 = (v179 + 16);
  v174 = (v179 + 8);
  v171 = (v173 + 48);
  v142 = (v179 + 56);
  v160 = MEMORY[0x1E69E7CC0];
  v145 = (v156 + 8);
  v178 = v38;
  v141 = a4;
  v140 = v14;
  v57 = v163;
  v146 = v39;
  v170 = v42;
  while (1)
  {
    v58 = sub_1BABE771C();
    sub_1BABE76DC();
    v59 = v56;
    v60 = v180;
    if (v58)
    {
      (*(v156 + 16))(v159, v46 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v59, v39);
    }

    else
    {
      v137 = sub_1BABE7B1C();
      if (v143 != 8)
      {
        goto LABEL_87;
      }

      *&v183 = v137;
      (*v148)(v159, &v183, v39);
      swift_unknownObjectRelease();
    }

    v149 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      goto LABEL_84;
    }

    (*v147)(v42, v159, v39);
    if (!v60)
    {
      break;
    }

    *&v181 = v7;
    v173 = *(v60 + 16);
    if (v173)
    {
      v61 = 0;
      v172 = v60 + ((*(v179 + 80) + 32) & ~*(v179 + 80));
      v62 = MEMORY[0x1E69E7CC8];
      while (v61 < *(v60 + 16))
      {
        v63 = v179;
        v64 = v176;
        v65 = v189;
        (*(v179 + 16))(v176, v172 + *(v179 + 72) * v61, v189);
        v66 = v178;
        v67 = v178[5];
        v68 = v178[11];
        __swift_project_boxed_opaque_existential_1(v178 + 2, v67);
        ReplicatorRemoteDeviceProviding.device(relationshipID:)(v67, v68, v57);
        (*(v63 + 8))(v64, v65);
        v69 = v177;
        if ((*v171)(v57, 1, v177) == 1)
        {
          sub_1BAAD2E14(v57, &qword_1EBC12DB8, &qword_1BABF1410);
        }

        else
        {
          v70 = v168;
          sub_1BAB41B4C(v57, v168, type metadata accessor for ReplicatorDevice);
          v71 = (v70 + *(v69 + 28));
          v72 = *v71;
          v73 = v71[1];
          v74 = v66[15];
          v75 = v72 >= v66[16] && v74 >= v73;
          if (v75)
          {
            if (v72 >= v74)
            {
              v76 = v66[15];
            }

            else
            {
              v76 = v72;
            }

            v77 = v66[28];
            v78 = *&v188[16];
            v164 = *v188;
            v79 = *v188;
            v80 = __swift_project_boxed_opaque_existential_1(&v187, *v188);
            *&v184[8] = v164;
            *&v184[24] = *(v78 + 16);
            v81 = __swift_allocate_boxed_opaque_existential_2(&v183);
            (*(*(v79 - 8) + 16))(v81, v80, v79);
            v82 = v162;
            v83 = v181;
            v77(v170, &v183, v76);
            *&v181 = v83;
            if (v83)
            {
              sub_1BAB41BB4(v168, type metadata accessor for ReplicatorDevice);
              (*v145)(v170, v146);

              __swift_destroy_boxed_opaque_existential_1(&v183);
              return __swift_destroy_boxed_opaque_existential_1(&v187);
            }

            __swift_destroy_boxed_opaque_existential_1(&v183);
            sub_1BAB41B4C(v82, v165, type metadata accessor for ReplicatorRecord.Value);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v183 = v62;
            v85 = sub_1BABD5D84(v76);
            v87 = v62[2];
            v88 = (v86 & 1) == 0;
            v89 = __OFADD__(v87, v88);
            v90 = v87 + v88;
            if (v89)
            {
              goto LABEL_82;
            }

            v91 = v86;
            if (v62[3] >= v90)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v96 = v85;
                sub_1BABDD980();
                v85 = v96;
              }
            }

            else
            {
              sub_1BABD997C(v90, isUniquelyReferenced_nonNull_native);
              v85 = sub_1BABD5D84(v76);
              if ((v91 & 1) != (v92 & 1))
              {
                goto LABEL_88;
              }
            }

            v93 = v168;
            v62 = v183;
            if (v91)
            {
              sub_1BAB400BC(v165, *(v183 + 56) + *(v169 + 72) * v85);
              sub_1BAB41BB4(v93, type metadata accessor for ReplicatorDevice);
            }

            else
            {
              *(v183 + 8 * (v85 >> 6) + 64) |= 1 << v85;
              *(v62[6] + 8 * v85) = v76;
              sub_1BAB41B4C(v165, v62[7] + *(v169 + 72) * v85, type metadata accessor for ReplicatorRecord.Value);
              sub_1BAB41BB4(v93, type metadata accessor for ReplicatorDevice);
              v94 = v62[2];
              v89 = __OFADD__(v94, 1);
              v95 = v94 + 1;
              if (v89)
              {
                goto LABEL_83;
              }

              v62[2] = v95;
            }

            v57 = v163;
          }

          else
          {
            sub_1BAB41BB4(v70, type metadata accessor for ReplicatorDevice);
          }
        }

        v60 = v180;
        if (v173 == ++v61)
        {
          goto LABEL_61;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      swift_once();
LABEL_5:
      v47 = sub_1BABE72BC();
      __swift_project_value_buffer(v47, qword_1ED78BBA0);
      v48 = sub_1BABE729C();
      v49 = sub_1BABE78EC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1BAACF000, v48, v49, "Client is not registered", v50, 2u);
        MEMORY[0x1BFAFE460](v50, -1, -1);
      }

      sub_1BAB15A08();
      swift_allocError();
      *v51 = 2;
      *(v51 + 8) = 0;

      return swift_willThrow();
    }

    v62 = MEMORY[0x1E69E7CC8];
LABEL_61:
    v117 = v178;
    v173 = v178[24];
    v118 = v178[12];
    v119 = v178[13];
    v120 = v178[5];
    v121 = v178[6];
    __swift_project_boxed_opaque_existential_1(v178 + 2, v120);
    (*(v121 + 8))(v182, v120, v121);
    v183 = v182[0];
    *v184 = v182[1];
    *&v184[16] = v182[2];
    v185 = v182[3];
    v186 = v182[4];
    v122 = v182[0];

    sub_1BAB21D34(&v183);
    v123 = v154;
    (*v142)(v154, 1, 1, v189);
    v124 = v170;
    v125 = v181;
    (v173)(v170, v118, v119, v122, *(&v122 + 1), v123);
    if (v125)
    {

      sub_1BAB41BB4(v123, type metadata accessor for ReplicatorRecord.ID.Ownership);
      (*v145)(v124, v146);

      goto LABEL_73;
    }

    sub_1BAB41BB4(v123, type metadata accessor for ReplicatorRecord.ID.Ownership);

    v126 = v153;
    (v117[26])(v124);
    v42 = v124;
    v127 = v157;
    sub_1BAB41C14(v161, v157, type metadata accessor for ReplicatorRecord.ID);
    v128 = v152;
    (*v175)(v127 + *(v152 + 20), v126, v189);
    v129 = v140;
    sub_1BAAD2DAC(v141, v140, &qword_1EBC132A0, &unk_1BABE9C10);
    v130 = v128[7];
    v131 = sub_1BABE6C8C();
    (*(*(v131 - 8) + 56))(v127 + v130, 1, 1, v131);
    *(v127 + v128[6]) = v62;
    sub_1BAB4004C(v129, v127 + v130);
    *(v127 + v128[8]) = v150;
    sub_1BAB41C14(v127, v158, type metadata accessor for ReplicatorRecord);
    v132 = v160;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = sub_1BAAF9DD0(0, v132[2] + 1, 1, v132);
    }

    v46 = v155;
    v57 = v163;
    v134 = v132[2];
    v133 = v132[3];
    v7 = 0;
    if (v134 >= v133 >> 1)
    {
      v160 = sub_1BAAF9DD0((v133 > 1), v134 + 1, 1, v132);
    }

    else
    {
      v160 = v132;
    }

    v38 = v178;
    v39 = v146;
    (*v174)(v126, v189);
    sub_1BAB41BB4(v161, type metadata accessor for ReplicatorRecord.ID);
    (*v145)(v42, v39);
    v135 = v160;
    v160[2] = v134 + 1;
    sub_1BAB41B4C(v158, v135 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v134, type metadata accessor for ReplicatorRecord);
    sub_1BAB41BB4(v157, type metadata accessor for ReplicatorRecord);
    v136 = sub_1BABE774C();
    v56 = v149;
    if (v149 == v136)
    {
      goto LABEL_72;
    }
  }

  v98 = v38[15];
  v97 = v38[16];
  if (v98 < v97)
  {
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

  v99 = v38[29];
  v173 = v38[28];
  v172 = v99;
  v62 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v100 = *&v188[16];
    v181 = *v188;
    v101 = *v188;
    v102 = __swift_project_boxed_opaque_existential_1(&v187, *v188);
    *&v184[8] = v181;
    *&v184[24] = *(v100 + 16);
    v103 = __swift_allocate_boxed_opaque_existential_2(&v183);
    (*(*(v101 - 8) + 16))(v103, v102, v101);
    v104 = v167;
    (v173)(v42, &v183, v97);
    if (v7)
    {
      break;
    }

    *&v181 = 0;
    __swift_destroy_boxed_opaque_existential_1(&v183);
    v105 = v166;
    sub_1BAB41B4C(v104, v166, type metadata accessor for ReplicatorRecord.Value);
    v106 = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = v62;
    v108 = sub_1BABD5D84(v97);
    v109 = v62[2];
    v110 = (v107 & 1) == 0;
    v111 = v109 + v110;
    if (__OFADD__(v109, v110))
    {
      goto LABEL_79;
    }

    v112 = v107;
    if (v62[3] >= v111)
    {
      if (v106)
      {
        v62 = v183;
        if ((v107 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_1BABDD980();
        v62 = v183;
        if ((v112 & 1) == 0)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      sub_1BABD997C(v111, v106);
      v113 = sub_1BABD5D84(v97);
      if ((v112 & 1) != (v114 & 1))
      {
        goto LABEL_88;
      }

      v108 = v113;
      v62 = v183;
      if ((v112 & 1) == 0)
      {
LABEL_54:
        v62[(v108 >> 6) + 8] |= 1 << v108;
        *(v62[6] + 8 * v108) = v97;
        sub_1BAB41B4C(v105, v62[7] + *(v169 + 72) * v108, type metadata accessor for ReplicatorRecord.Value);
        v115 = v62[2];
        v89 = __OFADD__(v115, 1);
        v116 = v115 + 1;
        if (v89)
        {
          goto LABEL_81;
        }

        v62[2] = v116;
        goto LABEL_56;
      }
    }

    sub_1BAB400BC(v105, v62[7] + *(v169 + 72) * v108);
LABEL_56:
    v7 = v181;
    v42 = v170;
    if (v98 == v97)
    {
      goto LABEL_61;
    }

    v75 = __CFADD__(v97++, 1);
    if (v75)
    {
      goto LABEL_80;
    }
  }

  (*v145)(v42, v146);

  __swift_destroy_boxed_opaque_existential_1(&v183);
  return __swift_destroy_boxed_opaque_existential_1(&v187);
}

void sub_1BAB35A54(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ReplicatorRecord.ID(0);
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20, &qword_1BABEA000);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  v39 = *a2;
  v15 = v3[5];
  v16 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v15);
  v17 = (*(v16 + 8))(v15, v16);
  if (v17)
  {
    v36 = v8;
    v18 = v3[30];
    v19 = MEMORY[0x1EEE9AC00](v17);
    *(&v35 - 2) = v3;
    *(&v35 - 1) = a1;
    MEMORY[0x1EEE9AC00](v19);
    *(&v35 - 2) = sub_1BAB40120;
    *(&v35 - 1) = v20;
    os_unfair_lock_lock(v18 + 4);
    v21 = v37;
    sub_1BAB41E5C();
    if (v21)
    {
      os_unfair_lock_unlock(v18 + 4);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v18 + 4);
      sub_1BAAD2DAC(v14, v12, &qword_1EBC12A20, &qword_1BABEA000);
      v22 = v38;
      if ((*(v38 + 48))(v12, 1, v6) == 1)
      {
        sub_1BAAD2E14(v14, &qword_1EBC12A20, &qword_1BABEA000);
        v23 = v12;
      }

      else
      {
        v29 = v12;
        v30 = v36;
        sub_1BAB41B4C(v29, v36, type metadata accessor for ReplicatorRecord.ID);
        v31 = v3[5];
        v32 = v3[10];
        __swift_project_boxed_opaque_existential_1(v3 + 2, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A40, &qword_1BABE9D50);
        v33 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1BABE9F00;
        sub_1BAB41C14(v30, v34 + v33, type metadata accessor for ReplicatorRecord.ID);
        v40 = v39;
        (*(v32 + 40))(v34, &v40, v31, v32);

        sub_1BAB41BB4(v30, type metadata accessor for ReplicatorRecord.ID);
        v23 = v14;
      }

      sub_1BAAD2E14(v23, &qword_1EBC12A20, &qword_1BABEA000);
    }
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v24 = sub_1BABE72BC();
    __swift_project_value_buffer(v24, qword_1ED78BBA0);
    v25 = sub_1BABE729C();
    v26 = sub_1BABE78EC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1BAACF000, v25, v26, "Client is not registered", v27, 2u);
      MEMORY[0x1BFAFE460](v27, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v28 = 2;
    *(v28 + 8) = 0;

    swift_willThrow();
  }
}

uint64_t sub_1BAB35EE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v16[1] = a2;
  v19 = a3;
  v4 = type metadata accessor for ReplicatorStore.Entry(255, *(*a1 + 80), *(*a1 + 88), a4);
  v17 = sub_1BABE799C();
  v5 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v7 = v16 - v6;
  v18 = type metadata accessor for ReplicatorRecord.ID(0);
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v16[0] = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1BABE748C();

  if ((*(*(v4 - 8) + 48))(v7, 1, v4))
  {
    (*(v5 + 8))(v7, v17);
    v10 = 1;
    v11 = v19;
  }

  else
  {
    v12 = v16[0];
    sub_1BAB41C14(&v7[*(v4 + 36)], v16[0], type metadata accessor for ReplicatorRecord.ID);
    (*(v5 + 8))(v7, v17);
    v13 = v12;
    v14 = v19;
    sub_1BAB41B4C(v13, v19, type metadata accessor for ReplicatorRecord.ID);
    v10 = 0;
    v11 = v14;
  }

  return (*(v8 + 56))(v11, v10, 1, v18);
}

uint64_t sub_1BAB361E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ReplicatorStore.Change(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1BABE775C();
  v5 = sub_1BABE77BC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  swift_checkMetadataState();
  v8 = *MEMORY[0x1E69E8650];
  v9 = sub_1BABE77BC();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  return sub_1BABE780C();
}

uint64_t sub_1BAB36324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v6 = *(*a2 + 80);
  v7 = *(*a2 + 88);
  type metadata accessor for ReplicatorStore.Change(255, v6, v7, a4);
  sub_1BABE775C();
  v8 = sub_1BABE77DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v29 = sub_1BABE6CFC();
  v12 = *(v29 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v29);
  v27 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v26 = &v25 - v15;
  v16 = *(v9 + 16);
  v28 = v8;
  v16(v11, a1, v8);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v7;
  (*(v9 + 32))(v18 + v17, v11, v8);
  v19 = v26;
  sub_1BAB3673C(sub_1BAB41528, v18, v26);

  v20 = v27;
  v21 = v29;
  (*(v12 + 16))(v27, v19, v29);
  v22 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v6;
  *(v23 + 3) = v7;
  *(v23 + 4) = a2;
  (*(v12 + 32))(&v23[v22], v20, v21);

  sub_1BABE77AC();
  return (*(v12 + 8))(v19, v21);
}

uint64_t sub_1BAB36624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ReplicatorStore.Change(255, a3, a4, a4);
  sub_1BABE775C();
  v5 = sub_1BABE779C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  v10[1] = a1;
  sub_1BABE77DC();

  sub_1BABE77CC();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BAB3673C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v28 = a2;
  v29 = a1;
  v8 = *v3;
  v31 = sub_1BABE737C();
  v34 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BABE73BC();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BABE6CEC();
  v13 = v4[30];
  v36 = v4;
  v37 = a3;
  v38 = a1;
  v39 = a2;
  v14 = *(v8 + 88);
  v15 = *(v8 + 80);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ReplicatorStore.Entry(255, v15, v14, v16);
  swift_getAssociatedConformanceWitness();
  sub_1BABE747C();
  sub_1BAB31CA8(sub_1BAB4164C, v35, v13);
  type metadata accessor for ReplicatorStore.Change(0, v15, v14, v17);
  swift_getWitnessTable();
  v18 = sub_1BABE761C();

  v19 = v4[34];
  v20 = swift_allocObject();
  v20[2] = v15;
  v20[3] = v14;
  v21 = v28;
  v20[4] = v29;
  v20[5] = v21;
  v20[6] = v18;
  aBlock[4] = sub_1BAB41688;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_0;
  v22 = _Block_copy(aBlock);
  v23 = v19;

  sub_1BABE739C();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1BAAD3904(&qword_1ED787CB0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0, &unk_1BABEABA0);
  sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0, &unk_1BABEABA0);
  v25 = v30;
  v24 = v31;
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v12, v25, v22);
  _Block_release(v22);

  (*(v34 + 8))(v25, v24);
  (*(v32 + 8))(v12, v33);
}

void sub_1BAB36B84()
{
  v1 = *(v0 + 240);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAB3FFA4();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t ReplicatorStore.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_1BAAD2E14(v0 + 144, &qword_1EBC12DC0, &qword_1BABEAA70);

  return v0;
}

uint64_t ReplicatorStore.__deallocating_deinit()
{
  ReplicatorStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 280, 7);
}

void sub_1BAB36CA0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_1BABE6CFC();
  MEMORY[0x1EEE9AC00](v11);
  (*(v13 + 16))(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v14 = swift_allocObject();
  v15 = *(v10 + 80);
  v14[2] = v15;
  v16 = *(v10 + 88);
  v14[3] = v16;
  v14[4] = a3;
  v14[5] = a4;
  v18[1] = sub_1BAB416B8;
  v18[2] = v14;
  swift_beginAccess();
  type metadata accessor for ReplicatorStore.Change(255, v15, v16, v17);
  sub_1BABE775C();
  swift_getFunctionTypeMetadata1();
  sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BABE747C();

  sub_1BABE749C();
  swift_endAccess();
  swift_beginAccess();
  *a5 = a1[31];
}

uint64_t sub_1BAB36ED4@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v76 = a3;
  v5 = *a2;
  v74 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1BABE6CFC();
  v84 = *(v86 - 8);
  v7 = MEMORY[0x1EEE9AC00](v86);
  v85 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 80);
  v81 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v63 - v10;
  v11 = type metadata accessor for ReplicatorRecord(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v72 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v63 - v14;
  v65 = a2;
  v16 = *(v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = v9;
  v73 = v16;
  v19 = type metadata accessor for ReplicatorStore.Entry(255, v9, v16, v18);
  v80 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = *(TupleTypeMetadata2 - 8);
  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v70 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v63 - v24;
  v64 = type metadata accessor for ReplicatorRecord.Value(0);
  v63 = *(v64 - 1);
  MEMORY[0x1EEE9AC00](v64);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70, &unk_1BABE9A80);
  MEMORY[0x1EEE9AC00](v68);
  v29 = &v63 - v28;
  v78 = *(v21 + 16);
  v79 = a1;
  v91 = v21 + 16;
  v78(v25, a1, TupleTypeMetadata2);
  v30 = &v25[*(TupleTypeMetadata2 + 48)];
  sub_1BAB41C14(&v30[*(v19 + 36)], v15, type metadata accessor for ReplicatorRecord);
  v31 = *(v19 - 8);
  v32 = *(v31 + 8);
  v69 = v19;
  v67 = v32;
  v77 = v31 + 8;
  v32(v30, v19);
  v71 = v11;
  v33 = *&v15[*(v11 + 24)];

  sub_1BAB41BB4(v15, type metadata accessor for ReplicatorRecord);
  v34 = *(v33 + 16);
  v66 = v29;
  if (v34 && (v35 = sub_1BABD5D84(*(v65 + 15)), (v36 & 1) != 0))
  {
    sub_1BAB41C14(*(v33 + 56) + *(v63 + 72) * v35, v27, type metadata accessor for ReplicatorRecord.Value);

    sub_1BAAD2DAC(&v27[*(v64 + 5)], v29, &unk_1EBC13D70, &unk_1BABE9A80);
    sub_1BAB41BB4(v27, type metadata accessor for ReplicatorRecord.Value);
    v65 = *(v80 - 8);
    v37 = v80;
    (*(v65 + 1))(v25);
  }

  else
  {

    v65 = *(v80 - 8);
    v37 = v80;
    (*(v65 + 1))(v25);
    v38 = sub_1BABE6BAC();
    (*(*(v38 - 8) + 56))(v29, 1, 1, v38);
  }

  v39 = v70;
  v40 = v78;
  v41 = v79;
  v78(v70, v79, TupleTypeMetadata2);
  v42 = *(TupleTypeMetadata2 + 48);
  (*(v81 + 16))(v82, &v39[v42], v83);
  v43 = &v39[v42];
  v44 = v69;
  v45 = v67;
  v67(v43, v69);
  v65 = *(v65 + 1);
  v65(v39, v37);
  v40(v39, v41, TupleTypeMetadata2);
  v46 = &v39[*(TupleTypeMetadata2 + 48)];
  v47 = *(v44 + 36);
  v64 = type metadata accessor for ReplicatorRecord;
  v48 = v72;
  sub_1BAB41C14(&v46[v47], v72, type metadata accessor for ReplicatorRecord);
  v45(v46, v44);
  (*(v84 + 16))(v85, v48 + *(v71 + 20), v86);
  sub_1BAB41BB4(v48, type metadata accessor for ReplicatorRecord);
  v49 = v37;
  v50 = v65;
  v65(v39, v49);
  v78(v39, v79, TupleTypeMetadata2);
  v51 = &v39[*(TupleTypeMetadata2 + 48)];
  sub_1BAB41C14(&v51[*(v44 + 36)], v48, v64);
  v45(v51, v44);
  v52 = v75;
  sub_1BAB41C14(v48, v75, type metadata accessor for ReplicatorRecord.ID);
  sub_1BAB41BB4(v48, type metadata accessor for ReplicatorRecord);
  v50(v39, v80);
  v53 = v83;
  v87 = v83;
  v88 = v74;
  v54 = v86;
  v89 = v68;
  v90 = v86;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v56 = TupleTypeMetadata[12];
  v57 = TupleTypeMetadata[16];
  v58 = TupleTypeMetadata[20];
  v59 = v76;
  (*(v81 + 32))(v76, v82, v53);
  sub_1BAB41B4C(v52, v59 + v56, type metadata accessor for ReplicatorRecord.ID);
  sub_1BAB23414(v66, v59 + v57, &unk_1EBC13D70, &unk_1BABE9A80);
  (*(v84 + 32))(v59 + v58, v85, v54);
  v61 = type metadata accessor for ReplicatorStore.Change(0, v53, v73, v60);
  swift_storeEnumTagMultiPayload();
  return (*(*(v61 - 8) + 56))(v59, 0, 1, v61);
}

uint64_t sub_1BAB37844(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1BABE6CFC();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v9[4] = 0;
  v9[5] = 0;
  swift_beginAccess();
  type metadata accessor for ReplicatorStore.Change(255, *(v3 + 80), *(v3 + 88), v7);
  sub_1BABE775C();
  swift_getFunctionTypeMetadata1();
  sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BABE747C();
  sub_1BABE749C();
  return swift_endAccess();
}

uint64_t sub_1BAB379F8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1BABE737C();
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BABE73BC();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[30];
  sub_1BABE6CFC();
  v12 = *(v4 + 80);
  v13 = *(v4 + 88);
  type metadata accessor for ReplicatorStore.Change(255, v12, v13, v14);
  sub_1BABE775C();
  swift_getFunctionTypeMetadata1();
  sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BABE747C();
  sub_1BAB31CA8(sub_1BAB41AB8, v2, v11);
  v15 = aBlock[0];
  v16 = v2[34];
  v17 = swift_allocObject();
  v17[2] = v12;
  v17[3] = v13;
  v17[4] = v15;
  v17[5] = a1;
  aBlock[4] = sub_1BAB41B08;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_40;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  sub_1BABE739C();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1BAAD3904(&qword_1ED787CB0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0, &unk_1BABEABA0);
  sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0, &unk_1BABEABA0);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v10, v7, v18);
  _Block_release(v18);

  (*(v24 + 8))(v7, v5);
  (*(v22 + 8))(v10, v23);
}

void sub_1BAB37DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v55 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DF0, &unk_1BABF1210);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v44 - v7;
  v8 = sub_1BABE6CFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C00, &qword_1BABEAC00);
  v11 = MEMORY[0x1EEE9AC00](v58);
  v61 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v60 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v44 - v16;
  v17 = *(a1 + 64);
  v44 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v48 = v9 + 16;
  v59 = (v9 + 32);
  v62 = (v6 + 48);
  v63 = (v6 + 56);
  v56 = (v15 + 32);
  v50 = v9;
  v51 = a1;
  v54 = (v9 + 8);

  v22 = 0;
  if (v20)
  {
    while (1)
    {
      v23 = v22;
LABEL_12:
      v27 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v28 = v27 | (v23 << 6);
      v30 = v50;
      v29 = v51;
      v31 = v49;
      (*(v50 + 16))(v49, *(v51 + 48) + *(v50 + 72) * v28, v8);
      v32 = *(v5 + 48);
      v33 = *(v30 + 32);
      v64 = *(*(v29 + 56) + 16 * v28);
      v26 = v61;
      v33(v61, v31, v8);
      *&v26[v32] = v64;
      v34 = *v63;
      (*v63)(v26, 0, 1, v5);

      v25 = v23;
LABEL_13:
      v35 = *v62;
      v36 = 1;
      if ((*v62)(v26, 1, v5) != 1)
      {
        v52 = *(v5 + 48);
        v53 = v34;
        *&v64 = v25;
        v37 = *v59;
        v38 = v61;
        (*v59)(v45, v61, v8);
        v39 = swift_allocObject();
        v40 = v47;
        *(v39 + 16) = v46;
        *(v39 + 24) = v40;
        *(v39 + 32) = *&v38[v52];
        v41 = &v60[*(v5 + 48)];
        v37();
        v34 = v53;
        v25 = v64;
        v36 = 0;
        *v41 = sub_1BAB41B14;
        v41[1] = v39;
      }

      v42 = v60;
      v34(v60, v36, 1, v5);
      v43 = v57;
      (*v56)(v57, v42, v58);
      if (v35(v43, 1, v5) == 1)
      {
        break;
      }

      (*&v43[*(v5 + 48)])(v55);

      (*v54)(v43, v8);
      v22 = v25;
      if (!v20)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v21 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v21;
    }

    v25 = v24 - 1;
    v26 = v61;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {
        v34 = *v63;
        (*v63)(v61, 1, 1, v5);
        v20 = 0;
        goto LABEL_13;
      }

      v20 = *(v44 + 8 * v23);
      ++v22;
      if (v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BAB38300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DF8, &qword_1BABEAC18);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12E00, &qword_1BABEAC20);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BAB38434, 0, 0);
}

uint64_t sub_1BAB38434()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    v5 = Strong[5];
    v6 = Strong[7];
    __swift_project_boxed_opaque_existential_1(Strong + 2, v5);
    (*(v6 + 16))(v5, v6);
    sub_1BABE77EC();
    (*(v3 + 8))(v2, v4);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_1BAB385D8;
    v8 = v0[9];

    return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1BAB385D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BAB386D4, 0, 0);
}

uint64_t sub_1BAB386D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 112);
  if (v5 == 2)
  {
    (*(*(v4 + 80) + 8))(*(v4 + 88), *(v4 + 72));

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      sub_1BAB387FC(a1, a2, a3, a4);
    }

    v8 = swift_task_alloc();
    *(v4 + 104) = v8;
    *v8 = v4;
    v8[1] = sub_1BAB385D8;
    v9 = *(v4 + 72);

    return MEMORY[0x1EEE6D9C8](v4 + 112, 0, 0, v9);
  }
}

uint64_t sub_1BAB387FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[30];
  type metadata accessor for ReplicatorStore.Change(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1BABE775C();
  sub_1BAB31CA8(sub_1BAB41D84, v4, v5);
  sub_1BAB379F8(v7);
}

uint64_t sub_1BAB388AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DD8, &qword_1BABF13C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1BAAD2DAC(a3, v25 - v10, &qword_1EBC12DD8, &qword_1BABF13C0);
  v12 = sub_1BABE778C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BAAD2E14(v11, &qword_1EBC12DD8, &qword_1BABF13C0);
  }

  else
  {
    sub_1BABE777C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BABE776C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BABE756C() + 32;
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

      sub_1BAAD2E14(a3, &qword_1EBC12DD8, &qword_1BABF13C0);

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

  sub_1BAAD2E14(a3, &qword_1EBC12DD8, &qword_1BABF13C0);
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

uint64_t sub_1BAB38BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DE0, &qword_1BABEABE8);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DE8, &unk_1BABEABF0);
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BAB38CE4, 0, 0);
}

uint64_t sub_1BAB38CE4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v3 = v0[11];
    v2 = v0[12];
    v14 = v0[10];
    v4 = Strong[5];
    v5 = Strong[10];
    v6 = Strong;
    __swift_project_boxed_opaque_existential_1(Strong + 2, v4);
    v7 = v6[12];
    v8 = v6[13];
    v9 = *(v5 + 16);

    v9(v7, v8, v4, v5);

    sub_1BABE77EC();
    (*(v3 + 8))(v2, v14);
    v0[17] = 0;
    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_1BAB38EBC;
    v11 = v0[13];

    return MEMORY[0x1EEE6D9C8](v0 + 5, 0, 0, v11);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1BAB38EBC()
{

  return MEMORY[0x1EEE6DFA0](sub_1BAB38FB8, 0, 0);
}

uint64_t sub_1BAB38FB8()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[16];
    v3 = v0[17];
    v5 = v0[8];
    v4 = v0[9];
    v6 = *(v2 + 240);
    v7 = swift_task_alloc();
    *(v7 + 16) = v1;
    *(v7 + 24) = v2;
    type metadata accessor for ReplicatorStore.Change(255, v5, v4, v8);
    sub_1BABE775C();

    sub_1BAB31CA8(sub_1BAB41A9C, v7, v6);

    sub_1BAB379F8(v0[6]);

    v0[17] = v3;
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_1BAB38EBC;
    v10 = v0[13];

    return MEMORY[0x1EEE6D9C8](v0 + 5, 0, 0, v10);
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1BAB3919C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v158 = a3;
  v5 = *a2;
  v144 = type metadata accessor for ReplicatorRecord.Value(0);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v142 = v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v5 + 80);
  v8 = *(v5 + 88);
  v10 = type metadata accessor for ReplicatorStore.Entry(0, v7, v8, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v146 = v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v154 = v137 - v14;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70, &unk_1BABE9A80);
  v15 = MEMORY[0x1EEE9AC00](v148);
  v152 = v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v182 = v137 - v17;
  v153 = type metadata accessor for ReplicatorRecord(0);
  v157 = *(v153 - 8);
  v18 = MEMORY[0x1EEE9AC00](v153);
  v156 = v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v159 = v137 - v20;
  v145 = type metadata accessor for ReplicatorRecordVersion(0);
  v21 = MEMORY[0x1EEE9AC00](v145);
  v178 = v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v190 = (v137 - v23);
  v25 = type metadata accessor for ReplicatorStore.Change(0, v7, v8, v24);
  MEMORY[0x1EEE9AC00](v25);
  v174 = v137 - v26;
  v177 = v10;
  v151 = sub_1BABE799C();
  v193 = *(v151 - 8);
  v27 = MEMORY[0x1EEE9AC00](v151);
  v150 = v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = v137 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v173 = v137 - v32;
  v176 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v169 = sub_1BABE799C();
  v34 = *(v169 - 8);
  v35 = MEMORY[0x1EEE9AC00](v169);
  v172 = v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v185 = v137 - v38;
  v188 = AssociatedTypeWitness;
  v39 = *(AssociatedTypeWitness - 8);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v149 = v137 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v171 = v137 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v168 = v137 - v44;
  v189 = type metadata accessor for ReplicatorRecord.ID(0);
  v181 = *(v189 - 8);
  v45 = MEMORY[0x1EEE9AC00](v189);
  v170 = v137 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v187 = v137 - v47;
  v192 = type metadata accessor for ReplicatorRecordChange(0);
  v48 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v186 = v137 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v25;
  result = sub_1BABE742C();
  v201 = result;
  v51 = *(a1 + 16);
  if (v51)
  {
    v195 = a1 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v147 = (v11 + 48);
    v191 = *(v48 + 72);
    v141 = (v11 + 32);
    v166 = (v39 + 8);
    v139 = (v11 + 8);
    v140 = (v193 + 8);
    v165 = (v39 + 56);
    v138 = (v11 + 16);
    v164 = (v11 + 56);
    v137[1] = v7 - 8;
    v180 = (v39 + 48);
    v163 = (v39 + 32);
    v162 = (v39 + 16);
    v161 = (v34 + 8);
    *(&v52 + 1) = 2;
    v179 = xmmword_1BABE9F00;
    *&v52 = 136446210;
    v160 = v52;
    v53 = v190;
    v155 = v31;
    v55 = v187;
    v54 = v188;
    v56 = v185;
    v57 = v186;
    v58 = v51;
    v183 = v3;
    v167 = v7;
    while (1)
    {
      sub_1BAB41C14(v195, v57, type metadata accessor for ReplicatorRecordChange);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1BAB41B4C(v57, v55, type metadata accessor for ReplicatorRecord.ID);
        v64 = *(v55 + 16) == v3[12] && *(v55 + 24) == v3[13];
        if (v64 || (sub_1BABE7EDC() & 1) != 0)
        {
          swift_beginAccess();
          sub_1BAAD3904(&qword_1ED787418, type metadata accessor for ReplicatorRecord.ID, &protocol conformance descriptor for ReplicatorRecord.ID);

          sub_1BABE748C();

          if ((*v180)(v56, 1, v54) == 1)
          {
            sub_1BAB41BB4(v55, type metadata accessor for ReplicatorRecord.ID);
            (*v161)(v56, v169);
          }

          else
          {
            v59 = v168;
            (*v163)(v168, v56, v54);
            v184 = *v162;
            (v184)(v171, v59, v54);
            v60 = *v164;
            v193 = v58;
            v60(v173, 1, 1, v177);
            swift_beginAccess();
            swift_getAssociatedConformanceWitness();
            sub_1BABE747C();
            sub_1BABE749C();
            swift_endAccess();
            sub_1BAB41C14(v55, v170, type metadata accessor for ReplicatorRecord.ID);
            (*v165)(v172, 1, 1, v54);
            swift_beginAccess();
            sub_1BABE747C();
            sub_1BABE749C();
            swift_endAccess();
            v61 = *(swift_getTupleTypeMetadata2() + 48);
            v62 = v174;
            (v184)(v174, v59, v188);
            v56 = v185;
            v58 = v193;
            sub_1BAB41C14(v187, &v62[v61], type metadata accessor for ReplicatorRecord.ID);
            swift_storeEnumTagMultiPayload();
            sub_1BABE775C();
            v55 = v187;
            v54 = v188;
            sub_1BABE773C();
            v63 = v59;
            v57 = v186;
            (*v166)(v63, v54);
            sub_1BAB41BB4(v55, type metadata accessor for ReplicatorRecord.ID);
          }

          v53 = v190;
        }

        else
        {
          sub_1BAB41BB4(v55, type metadata accessor for ReplicatorRecord.ID);
        }

        goto LABEL_5;
      }

      sub_1BAB41B4C(v57, v53, type metadata accessor for ReplicatorRecordVersion);
      v65 = v53[2] == v3[12] && v53[3] == v3[13];
      if (v65 || (sub_1BABE7EDC() & 1) != 0)
      {
        v193 = v58;
        v66 = v3;
        v67 = v3[5];
        v68 = v66[10];
        __swift_project_boxed_opaque_existential_1(v66 + 2, v67);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A40, &qword_1BABE9D50);
        v69 = v53;
        v70 = (*(v181 + 80) + 32) & ~*(v181 + 80);
        v71 = swift_allocObject();
        v72 = v69;
        v73 = v71;
        *(v71 + 16) = v179;
        sub_1BAB41C14(v72, v71 + v70, type metadata accessor for ReplicatorRecord.ID);
        v74 = sub_1BABE6BAC();
        v75 = *(v74 - 8);
        v76 = *(v75 + 56);
        v77 = (v75 + 56);
        v78 = v182;
        v76(v182, 1, 1, v74);
        v79 = v66[15];
        v80 = v194;
        v81 = (*(v68 + 48))(v73, v78, v79, 0, v67, v68);
        v194 = v80;
        if (v80)
        {
          sub_1BAAD2E14(v78, &unk_1EBC13D70, &unk_1BABE9A80);

          v184 = v194;
          v194 = 0;
          v53 = v190;
LABEL_21:
          v57 = v186;
          v55 = v187;
          v82 = v178;
          v54 = v188;
          if (qword_1ED7876D0 != -1)
          {
            swift_once();
          }

          v83 = sub_1BABE72BC();
          __swift_project_value_buffer(v83, qword_1ED78BBA0);
          v84 = v53;
          sub_1BAB41C14(v53, v82, type metadata accessor for ReplicatorRecordVersion);
          v85 = sub_1BABE729C();
          v86 = sub_1BABE78EC();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = v54;
            v89 = swift_slowAlloc();
            v200 = v89;
            *v87 = v160;
            v196 = 0;
            v197 = 0xE000000000000000;
            sub_1BABE7AEC();
            MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
            MEMORY[0x1BFAFD240](*(v82 + *(v189 + 32)), *(v82 + *(v189 + 32) + 8));
            MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
            MEMORY[0x1BFAFD240](v82[2], v82[3]);
            MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
            MEMORY[0x1BFAFD240](v82[4], v82[5]);
            MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
            type metadata accessor for ReplicatorRecord.ID.Ownership(0);
            sub_1BABE7BFC();
            v90 = v82;
            v91 = v196;
            v92 = v197;
            sub_1BAB41BB4(v90, type metadata accessor for ReplicatorRecordVersion);
            v93 = sub_1BAAFA460(v91, v92, &v200);

            *(v87 + 4) = v93;
            _os_log_impl(&dword_1BAACF000, v85, v86, "Failed to fetch record for update with record ID: %{public}s", v87, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v89);
            v94 = v89;
            v54 = v88;
            v95 = v190;
            MEMORY[0x1BFAFE460](v94, -1, -1);
            v57 = v186;
            MEMORY[0x1BFAFE460](v87, -1, -1);

            v3 = v183;
          }

          else
          {

            sub_1BAB41BB4(v82, type metadata accessor for ReplicatorRecordVersion);
            v3 = v183;
            v95 = v84;
          }

          v56 = v185;
          sub_1BAB41BB4(v95, type metadata accessor for ReplicatorRecordVersion);
          v58 = v193;
          v53 = v95;
          goto LABEL_5;
        }

        v96 = v81;
        v184 = v77;
        v97 = v76;
        sub_1BAAD2E14(v78, &unk_1EBC13D70, &unk_1BABE9A80);

        v53 = v190;
        if (*(v96 + 16) && (v98 = sub_1BABD5D18(v190), (v99 & 1) != 0))
        {
          v100 = v156;
          sub_1BAB41C14(*(v96 + 56) + *(v157 + 72) * v98, v156, type metadata accessor for ReplicatorRecord);

          v101 = v100;
          v102 = v159;
          sub_1BAB41B4C(v101, v159, type metadata accessor for ReplicatorRecord);
          v103 = v155;
          v3 = v183;
          v104 = v194;
          sub_1BAB3AC00(v102, v155);
          v194 = v104;
          if (v104)
          {
            sub_1BAB41BB4(v102, type metadata accessor for ReplicatorRecord);
            v184 = v194;
            v194 = 0;
            goto LABEL_21;
          }

          v105 = *v147;
          v106 = v177;
          if ((*v147)(v103, 1, v177) == 1)
          {
            sub_1BAB41BB4(v102, type metadata accessor for ReplicatorRecord);
            v53 = v190;
            sub_1BAB41BB4(v190, type metadata accessor for ReplicatorRecordVersion);
            (*v140)(v103, v151);
            v54 = v188;
            goto LABEL_45;
          }

          v137[0] = *v141;
          (v137[0])(v154, v103, v106);
          v107 = *(v102 + *(v153 + 24));
          if (*(v107 + 16) && (v108 = sub_1BABD5D84(v79), (v109 & 1) != 0))
          {
            v110 = v142;
            sub_1BAB41C14(*(v107 + 56) + *(v143 + 72) * v108, v142, type metadata accessor for ReplicatorRecord.Value);
            sub_1BAAD2DAC(v110 + *(v144 + 20), v152, &unk_1EBC13D70, &unk_1BABE9A80);
            sub_1BAB41BB4(v110, type metadata accessor for ReplicatorRecord.Value);
          }

          else
          {
            v97(v152, 1, 1, v74);
          }

          v111 = v150;
          v112 = v188;
          v113 = v149;
          sub_1BABE7AFC();
          swift_beginAccess();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

          v115 = v177;
          sub_1BABE748C();

          (*v166)(v113, v112);
          if (v105(v111, 1, v115) == 1)
          {
            (*v140)(v111, v151);
            v116 = v190;
LABEL_44:
            v184 = type metadata accessor for ReplicatorRecord.ID;
            v137[0] = AssociatedConformanceWitness;
            sub_1BAB41C14(v116, v170, type metadata accessor for ReplicatorRecord.ID);
            v120 = v172;
            v121 = v154;
            v122 = v167;
            sub_1BABE7AFC();
            (*v165)(v120, 0, 1, v188);
            swift_beginAccess();
            sub_1BAAD3904(&qword_1ED787418, type metadata accessor for ReplicatorRecord.ID, &protocol conformance descriptor for ReplicatorRecord.ID);
            sub_1BABE747C();
            sub_1BABE749C();
            swift_endAccess();
            sub_1BABE7AFC();
            v123 = v173;
            (*v138)(v173, v121, v115);
            (*v164)(v123, 0, 1, v115);
            swift_beginAccess();
            sub_1BABE747C();
            sub_1BABE749C();
            swift_endAccess();
            v196 = v122;
            v197 = v189;
            v198 = v148;
            v199 = sub_1BABE6CFC();
            TupleTypeMetadata = swift_getTupleTypeMetadata();
            v125 = TupleTypeMetadata[12];
            v126 = TupleTypeMetadata[16];
            v127 = TupleTypeMetadata[20];
            v128 = v174;
            (*(*(v122 - 8) + 16))(v174, v121, v122);
            sub_1BAB41C14(&v121[*(v115 + 36)], &v128[v125], v184);
            v129 = &v128[v126];
            v130 = v152;
            sub_1BAAD2DAC(v152, v129, &unk_1EBC13D70, &unk_1BABE9A80);
            v131 = *(v153 + 20);
            v132 = sub_1BABE6CFC();
            v133 = &v128[v127];
            v134 = v159;
            (*(*(v132 - 8) + 16))(v133, v159 + v131, v132);
            swift_storeEnumTagMultiPayload();
            sub_1BABE775C();
            v135 = v188;
            sub_1BABE773C();
            v3 = v183;
            sub_1BAAD2E14(v130, &unk_1EBC13D70, &unk_1BABE9A80);
            v136 = v121;
            v54 = v135;
            v53 = v190;
            (*v139)(v136, v115);
            sub_1BAB41BB4(v134, type metadata accessor for ReplicatorRecord);
            sub_1BAB41BB4(v53, type metadata accessor for ReplicatorRecordVersion);
LABEL_45:
            v56 = v185;
            v57 = v186;
            v55 = v187;
            v58 = v193;
            goto LABEL_5;
          }

          v117 = v146;
          (v137[0])(v146, v111, v115);
          sub_1BABE6CFC();
          sub_1BAAD3904(&unk_1ED7872A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v116 = v190;
          v118 = sub_1BABE74DC();
          v119 = *v139;
          (*v139)(v117, v115);
          if ((v118 & 1) == 0)
          {
            goto LABEL_44;
          }

          sub_1BAAD2E14(v152, &unk_1EBC13D70, &unk_1BABE9A80);
          v119(v154, v115);
          sub_1BAB41BB4(v159, type metadata accessor for ReplicatorRecord);
          sub_1BAB41BB4(v116, type metadata accessor for ReplicatorRecordVersion);
          v3 = v183;
          v56 = v185;
          v57 = v186;
          v55 = v187;
          v58 = v193;
          v53 = v116;
          v54 = v188;
        }

        else
        {

          sub_1BAB41BB4(v53, type metadata accessor for ReplicatorRecordVersion);
          v3 = v183;
          v55 = v187;
          v54 = v188;
          v58 = v193;
          v56 = v185;
          v57 = v186;
        }
      }

      else
      {
        sub_1BAB41BB4(v53, type metadata accessor for ReplicatorRecordVersion);
      }

LABEL_5:
      v195 += v191;
      if (!--v58)
      {
        result = v201;
        break;
      }
    }
  }

  *v158 = result;
  return result;
}

uint64_t sub_1BAB3AC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = *v2;
  v6 = type metadata accessor for ReplicatorRecord(0);
  v7 = v6 - 8;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v59 + 80);
  v54 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v51 - v13;
  v14 = type metadata accessor for ReplicatorRecord.Value(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v21 = (&v51 - v20);
  v22 = *(v7 + 32);
  v57 = a1;
  v23 = *(a1 + v22);
  if (*(v23 + 16) && (v24 = v3[15], v25 = sub_1BABD5D84(v24), (v26 & 1) != 0))
  {
    sub_1BAB41C14(*(v23 + 56) + *(v15 + 72) * v25, v18, type metadata accessor for ReplicatorRecord.Value);
    sub_1BAB41B4C(v18, v21, type metadata accessor for ReplicatorRecord.Value);
    sub_1BAAD2DAC((v3 + 18), &v60, &qword_1EBC12DC0, &qword_1BABEAA70);
    v52 = a2;
    v53 = v24;
    if (v61)
    {
      sub_1BAB22994(&v60, &v62);
    }

    else
    {
      v29 = v3[5];
      v51 = *(v3 + 4);
      v30 = __swift_project_boxed_opaque_existential_1(v3 + 2, v29);
      v63 = v29;
      v64 = v51;
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v62);
      (*(*(v29 - 8) + 16))(boxed_opaque_existential_2, v30, v29);
      if (v61)
      {
        sub_1BAAD2E14(&v60, &qword_1EBC12DC0, &qword_1BABEAA70);
      }
    }

    v32 = v63;
    v33 = *(&v64 + 1);
    __swift_project_boxed_opaque_existential_1(&v62, v63);
    v35 = *v21;
    v34 = v21[1];
    v36 = *(v33 + 8);
    v37 = *(v36 + 8);
    sub_1BAAE7824(*v21, v34);
    v38 = *(v59 + 88);
    v39 = *(v38 + 8);
    v40 = *(v38 + 16);
    v59 = v38;
    v50 = v36;
    v41 = v58;
    v42 = v65;
    v37(v10, v35, v34, v53, v10, v39, v40, v32, v50);
    sub_1BAB41BB4(v21, type metadata accessor for ReplicatorRecord.Value);
    sub_1BAAD73E4(v35, v34);
    if (!v42)
    {
      v43 = v55;
      (*(v54 + 32))(v55, v41, v10);
      v44 = v56;
      sub_1BAB41C14(v57, v56, type metadata accessor for ReplicatorRecord);
      v45 = v52;
      v46 = v44;
      v47 = v59;
      sub_1BAB31670(v43, v46, v10, v59, v52);
      v49 = type metadata accessor for ReplicatorStore.Entry(0, v10, v47, v48);
      (*(*(v49 - 8) + 56))(v45, 0, 1, v49);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v62);
  }

  else
  {
    v27 = type metadata accessor for ReplicatorStore.Entry(0, v10, *(v59 + 88), v19);
    return (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
  }
}

uint64_t sub_1BAB3B0E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  v3 = *a1;
  swift_beginAccess();
  v15 = a1[31];
  v13 = *(v3 + 80);
  v14 = *(v3 + 88);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ReplicatorStore.Entry(255, v13, v14, v4);
  swift_getAssociatedConformanceWitness();
  v5 = sub_1BABE747C();
  v7 = type metadata accessor for ReplicatorStore.Change(0, v13, v14, v6);

  WitnessTable = swift_getWitnessTable();
  v10 = sub_1BAB31250(sub_1BAB41DA0, &v12, v5, v7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  swift_beginAccess();
  type metadata accessor for ReplicatorRecord.ID(255);
  sub_1BAAD3904(&qword_1ED787418, type metadata accessor for ReplicatorRecord.ID, &protocol conformance descriptor for ReplicatorRecord.ID);
  sub_1BABE747C();
  sub_1BABE746C();
  swift_endAccess();
  swift_beginAccess();
  sub_1BABE746C();
  result = swift_endAccess();
  *v16 = v10;
  return result;
}

uint64_t sub_1BAB3B338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v8 = type metadata accessor for ReplicatorRecord(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for ReplicatorStore.Entry(255, a2, a3, v11);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - v18;
  type metadata accessor for ReplicatorRecord.ID(255);
  v29 = *(swift_getTupleTypeMetadata2() + 48);
  v20 = *(v14 + 16);
  v20(v19, a1, TupleTypeMetadata2);
  v21 = *(TupleTypeMetadata2 + 48);
  v30 = AssociatedTypeWitness;
  v31 = v21;
  v22 = AssociatedTypeWitness;
  v23 = *(AssociatedTypeWitness - 8);
  (*(v23 + 32))(a4, v19, v22);
  v20(v17, a1, TupleTypeMetadata2);
  v24 = &v17[*(TupleTypeMetadata2 + 48)];
  v25 = v32;
  sub_1BAB41C14(&v24[*(v12 + 36)], v32, type metadata accessor for ReplicatorRecord);
  v26 = *(*(v12 - 8) + 8);
  v26(v24, v12);
  sub_1BAB41C14(v25, a4 + v29, type metadata accessor for ReplicatorRecord.ID);
  sub_1BAB41BB4(v25, type metadata accessor for ReplicatorRecord);
  type metadata accessor for ReplicatorStore.Change(0, v33, v34, v27);
  swift_storeEnumTagMultiPayload();
  (*(v23 + 8))(v17, v30);
  return (v26)(&v19[v31], v12);
}

uint64_t sub_1BAB3B65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A10, &qword_1BABE9FF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  sub_1BAAD2DAC(a1, &v22 - v10, &qword_1EBC12A10, &qword_1BABE9FF0);
  v12 = *(v6 + 48);
  v14 = *(v11 + 2);
  v13 = *(v11 + 3);

  sub_1BAB41BB4(v11, type metadata accessor for ReplicatorRecord.ID);
  if (v14 == *(a2 + 96) && v13 == *(a2 + 104))
  {

    v17 = sub_1BABE6CFC();
    (*(*(v17 - 8) + 8))(&v11[v12], v17);
LABEL_8:
    sub_1BAAD2DAC(a1, v9, &qword_1EBC12A10, &qword_1BABE9FF0);
    v18 = *(v6 + 48);
    sub_1BAB41B4C(v9, a3, type metadata accessor for ReplicatorRecord.ID);
    v19 = type metadata accessor for ReplicatorRecord.ID(0);
    (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
    sub_1BABE6CFC();
    return (*(*(v17 - 8) + 8))(&v9[v18], v17);
  }

  v16 = sub_1BABE7EDC();

  v17 = sub_1BABE6CFC();
  (*(*(v17 - 8) + 8))(&v11[v12], v17);
  if (v16)
  {
    goto LABEL_8;
  }

  v21 = type metadata accessor for ReplicatorRecord.ID(0);
  return (*(*(v21 - 8) + 56))(a3, 1, 1, v21);
}

uint64_t sub_1BAB3B91C(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v27 = a1;
  v4 = *a1;
  v23 = a1 + 31;
  v5 = *(v4 + 88);
  v6 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1BABE799C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v24 = &v21 - v9;
  v25 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v25);
  v22 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReplicatorStore.Entry(255, v6, v5, v11);
  v13 = sub_1BABE799C();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v21 = a2;
  sub_1BABE7AFC();
  v18 = *(v12 - 8);
  (*(v18 + 16))(v16, a2, v12);
  (*(v18 + 56))(v16, 0, 1, v12);
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  sub_1BABE747C();
  sub_1BABE749C();
  swift_endAccess();
  sub_1BAB41C14(v26, v22, type metadata accessor for ReplicatorRecord.ID);
  v19 = v24;
  sub_1BABE7AFC();
  (*(v17 + 56))(v19, 0, 1, AssociatedTypeWitness);
  swift_beginAccess();
  sub_1BAAD3904(&qword_1ED787418, type metadata accessor for ReplicatorRecord.ID, &protocol conformance descriptor for ReplicatorRecord.ID);
  sub_1BABE747C();
  sub_1BABE749C();
  return swift_endAccess();
}

uint64_t sub_1BAB3BCE4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BAB3BDDC;

  return v6(a1);
}

uint64_t sub_1BAB3BDDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BAB3BED4(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DD0, &unk_1BABEABB0);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t sub_1BAB3BF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BAAD37E8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BABDBFB8();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1BABE6CFC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_1BABE715C();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1BAB3EC94(v7, v9, MEMORY[0x1E69C7308]);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1BABE715C();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1BAB3C0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_1BABD5AB4(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BABDC470();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 24 * v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    LOBYTE(v11) = *(v11 + 17);
    *a3 = v12;
    *(a3 + 8) = v13;
    *(a3 + 16) = v14;
    *(a3 + 17) = v11;
    result = sub_1BAB3C8E0(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_1BAB3C1B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BABD5D18(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BABDCC60();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ReplicatorRecord.ID(0);
    sub_1BAB41BB4(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for ReplicatorRecord.ID);
    v12 = *(v9 + 56);
    v13 = sub_1BABE6CFC();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1BAB3CF80(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1BABE6CFC();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1BAB3C350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BABD5D18(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BABDCF90();
      v9 = v20;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ReplicatorRecord.ID(0);
    v19 = *(v11 - 8);
    v12 = *(v19 + 72) * v7;
    sub_1BAB41BB4(v10 + v12, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB41B4C(*(v9 + 56) + v12, a2, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB3D468(v7, v9);
    *v3 = v9;
    v13 = *(v19 + 56);
    v14 = a2;
    v15 = 0;
    v16 = v11;
  }

  else
  {
    v17 = type metadata accessor for ReplicatorRecord.ID(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1BAB3C4D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BABD5D18(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BABDD454();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ReplicatorRecord.ID(0);
    sub_1BAB41BB4(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for ReplicatorRecord.ID);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ReplicatorRecord(0);
    v20 = *(v13 - 8);
    sub_1BAB41B4C(v12 + *(v20 + 72) * v7, a2, type metadata accessor for ReplicatorRecord);
    sub_1BAB3D93C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ReplicatorRecord(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1BAB3C670@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1BABD5AB4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BABDE2E8();
      v10 = v15;
    }

    v11 = (*(v10 + 56) + 80 * v8);
    v12 = v11[3];
    a3[2] = v11[2];
    a3[3] = v12;
    a3[4] = v11[4];
    v13 = v11[1];
    *a3 = *v11;
    a3[1] = v13;
    sub_1BAB3DFF0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1BAB3C730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BAAD37E8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BABDEC08();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1BABE6CFC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase(0);
    v20 = *(v13 - 8);
    sub_1BAB41B4C(v12 + *(v20 + 72) * v7, a2, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
    sub_1BAB3EC94(v7, v9, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1BAB3C8E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BABE7A1C() + 1) & ~v5;
    do
    {
      sub_1BABE7F9C();

      sub_1BABE759C();
      v10 = sub_1BABE7FDC();

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
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (24 * v3 < (24 * v6) || v16 >= v17 + 24 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
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

unint64_t sub_1BAB3CAB0(int64_t a1, uint64_t a2)
{
  v40 = sub_1BABE6CFC();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1BABE7A1C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v23 = sub_1BABE74AC();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1BAB3CDD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BABE7A1C() + 1) & ~v5;
    do
    {
      sub_1BABE7F9C();

      sub_1BABE759C();
      v9 = sub_1BABE7FDC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAB3CF80(int64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6CFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReplicatorRecord.ID(0);
  v11 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2 + 64;
  v16 = -1 << *(a2 + 32);
  v17 = (a1 + 1) & ~v16;
  if ((*(a2 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v41 = v5;
    v18 = ~v16;
    v44 = (sub_1BABE7A1C() + 1) & ~v16;
    v19 = *(v11 + 72);
    v42 = (v41 + 48);
    v43 = v19;
    v37 = (v41 + 8);
    v38 = (v41 + 32);
    v20 = v18;
    v21 = v19;
    v39 = v20;
    while (1)
    {
      v22 = *(a2 + 48);
      v45 = v21 * v17;
      sub_1BAB41C14(v22 + v21 * v17, v14, type metadata accessor for ReplicatorRecord.ID);
      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BAB41C14(&v14[*(v10 + 28)], v9, type metadata accessor for ReplicatorRecord.ID.Ownership);
      if ((*v42)(v9, 1, v4) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v23 = a1;
        v24 = a2;
        v25 = v10;
        v26 = v15;
        v27 = v40;
        (*v38)(v40, v9, v4);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1BABE74BC();
        v28 = v27;
        v15 = v26;
        v10 = v25;
        a2 = v24;
        a1 = v23;
        v20 = v39;
        (*v37)(v28, v4);
      }

      sub_1BABE759C();
      v29 = sub_1BABE7FDC();
      result = sub_1BAB41BB4(v14, type metadata accessor for ReplicatorRecord.ID);
      v30 = v29 & v20;
      if (a1 >= v44)
      {
        break;
      }

      v21 = v43;
      if (v30 < v44)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (v21 * a1 < v45 || *(a2 + 48) + v21 * a1 >= (*(a2 + 48) + v45 + v21))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v21 * a1 != v45)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v31 = *(a2 + 56);
      v32 = *(v41 + 72);
      v33 = v32 * a1;
      result = v31 + v32 * a1;
      if (v32 * a1 < (v32 * v17) || result >= v31 + v32 * v17 + v32)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v17;
        if (v33 == v32 * v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      a1 = v17;
LABEL_5:
      v17 = (v17 + 1) & v20;
      if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v21 = v43;
    if (v30 < v44)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (a1 < v30)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_23:
  *(v15 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAB3D468(int64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6CFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReplicatorRecord.ID(0);
  v11 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v45 = v4;
    v17 = ~v15;
    v18 = sub_1BABE7A1C();
    v46 = v17;
    v44 = (v18 + 1) & v17;
    v19 = *(v11 + 72);
    v42 = (v5 + 48);
    v43 = v19;
    v38 = (v5 + 8);
    v39 = (v5 + 32);
    v20 = a2 + 64;
    v21 = v19;
    while (1)
    {
      v22 = v21 * v16;
      sub_1BAB41C14(*(a2 + 48) + v21 * v16, v14, type metadata accessor for ReplicatorRecord.ID);
      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BAB41C14(&v14[*(v10 + 28)], v9, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v23 = v45;
      if ((*v42)(v9, 1, v45) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v24 = *v39;
        v41 = a1;
        v25 = v10;
        v26 = a2;
        v27 = v20;
        v28 = v9;
        v29 = v40;
        v24(v40, v28, v23);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1BABE74BC();
        v30 = v29;
        v9 = v28;
        v20 = v27;
        a2 = v26;
        v10 = v25;
        a1 = v41;
        (*v38)(v30, v23);
      }

      sub_1BABE759C();
      v31 = sub_1BABE7FDC();
      result = sub_1BAB41BB4(v14, type metadata accessor for ReplicatorRecord.ID);
      v32 = v31 & v46;
      v21 = v43;
      if (a1 >= v44)
      {
        break;
      }

      if (v32 < v44)
      {
        goto LABEL_13;
      }

LABEL_14:
      v33 = v43 * a1;
      if (v43 * a1 < v22 || *(a2 + 48) + v43 * a1 >= (*(a2 + 48) + v22 + v43))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v33 != v22)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v34 = *(a2 + 56);
      result = v34 + v33;
      if (v33 < v22 || result >= v34 + v22 + v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v16;
        if (v33 == v22)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      a1 = v16;
LABEL_5:
      v16 = (v16 + 1) & v46;
      if (((*(v20 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if (v32 < v44)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (a1 < v32)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v20 = a2 + 64;
LABEL_24:
  *(v20 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAB3D93C(int64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6CFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReplicatorRecord.ID(0);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v46 = v4;
    v17 = ~v15;
    v18 = v12;
    v44 = (sub_1BABE7A1C() + 1) & ~v15;
    v45 = v17;
    v19 = *(v18 + 72);
    v43 = (v5 + 48);
    v39 = (v5 + 8);
    v40 = (v5 + 32);
    v20 = v19;
    v21 = a2 + 64;
    v47 = v19;
    while (1)
    {
      v22 = v20 * v16;
      sub_1BAB41C14(*(a2 + 48) + v20 * v16, v14, type metadata accessor for ReplicatorRecord.ID);
      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BAB41C14(&v14[*(v10 + 28)], v9, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v23 = v46;
      if ((*v43)(v9, 1, v46) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v24 = *v40;
        v42 = a1;
        v25 = a2;
        v26 = v10;
        v27 = v21;
        v28 = v41;
        v24(v41, v9, v23);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1BABE74BC();
        v29 = v28;
        v21 = v27;
        v10 = v26;
        a2 = v25;
        a1 = v42;
        (*v39)(v29, v23);
      }

      sub_1BABE759C();
      v30 = sub_1BABE7FDC();
      result = sub_1BAB41BB4(v14, type metadata accessor for ReplicatorRecord.ID);
      v31 = v45;
      v32 = v30 & v45;
      if (a1 >= v44)
      {
        v20 = v47;
        if (v32 < v44)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v20 = v47;
        if (v32 >= v44)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v32)
      {
LABEL_13:
        if (v20 * a1 < v22 || *(a2 + 48) + v20 * a1 >= (*(a2 + 48) + v22 + v20))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v20 * a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v33 = *(a2 + 56);
        v34 = *(*(type metadata accessor for ReplicatorRecord(0) - 8) + 72);
        v35 = v34 * a1;
        result = v33 + v34 * a1;
        if (v34 * a1 < (v34 * v16) || result >= v33 + v34 * v16 + v34)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          a1 = v16;
          v20 = v47;
        }

        else
        {
          a1 = v16;
          v20 = v47;
          if (v35 != v34 * v16)
          {
            result = swift_arrayInitWithTakeBackToFront();
            a1 = v16;
          }
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v31;
      if (((*(v21 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  v21 = a2 + 64;
LABEL_23:
  *(v21 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAB3DE3C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1BABE7A1C() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v7);
      result = sub_1BABE7F8C();
      v13 = result & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v11 + 8 * v4);
      if (v4 != v7 || v16 >= v12 + 1)
      {
        *v16 = *v12;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v4;
      result = v17 + v18 * v4;
      v20 = v18 * v7;
      v21 = v17 + v18 * v7 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_1BAB3DFF0(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BABE7A1C() + 1) & ~v5;
    do
    {
      sub_1BABE7F9C();

      sub_1BABE759C();
      v9 = sub_1BABE7FDC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 80 * v3);
        v15 = (v14 + 80 * v6);
        if (v3 != v6 || result >= v15 + 80)
        {
          result = memmove(result, v15, 0x50uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAB3E1A4(int64_t a1, uint64_t a2)
{
  v40 = sub_1BABE6CFC();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1BABE7A1C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v23 = sub_1BABE74AC();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1BAB3E4C4(int64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6CFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReplicatorRecord.ID(0);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v48 = v4;
    v17 = ~v15;
    v18 = v12;
    v46 = (sub_1BABE7A1C() + 1) & ~v15;
    v47 = v17;
    v19 = *(v18 + 72);
    v44 = (v5 + 48);
    v45 = v19;
    v40 = (v5 + 8);
    v41 = (v5 + 32);
    v20 = v19;
    v21 = a2 + 64;
    while (1)
    {
      v22 = v20 * v16;
      sub_1BAB41C14(*(a2 + 48) + v20 * v16, v14, type metadata accessor for ReplicatorRecord.ID);
      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BAB41C14(&v14[*(v10 + 28)], v9, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v23 = v48;
      if ((*v44)(v9, 1, v48) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v24 = *v41;
        v43 = a1;
        v25 = a2;
        v26 = v10;
        v27 = v21;
        v28 = v42;
        v24(v42, v9, v23);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1BABE74BC();
        v29 = v28;
        v21 = v27;
        v10 = v26;
        a2 = v25;
        a1 = v43;
        (*v40)(v29, v23);
      }

      sub_1BABE759C();
      v30 = sub_1BABE7FDC();
      result = sub_1BAB41BB4(v14, type metadata accessor for ReplicatorRecord.ID);
      v31 = v47;
      v32 = v30 & v47;
      if (a1 >= v46)
      {
        v20 = v45;
        if (v32 < v46)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v20 = v45;
        if (v32 >= v46)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v32)
      {
LABEL_13:
        v33 = *(a2 + 48);
        result = v33 + v20 * a1;
        if (v20 * a1 < v22 || result >= v33 + v22 + v20)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v20 * a1 != v22)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v34 = *(a2 + 56);
        v35 = (v34 + 8 * a1);
        v36 = (v34 + 8 * v16);
        if (a1 != v16 || v35 >= v36 + 1)
        {
          *v35 = *v36;
          a1 = v16;
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v31;
      if (((*(v21 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  v21 = a2 + 64;
LABEL_22:
  *(v21 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v37 = *(a2 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v39;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAB3E974(int64_t a1, uint64_t a2)
{
  v40 = sub_1BABE6BAC();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1BABE7A1C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1BAAD3904(&qword_1EBC12228, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v23 = sub_1BABE74AC();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1BAB3EC94(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_1BABE6CFC();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_1BABE7A1C();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v23 = sub_1BABE74AC();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAB3EFE4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_1BAB3F038(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BABE6CFC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_1BABE715C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1BAB3F12C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
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

unint64_t sub_1BAB3F170(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6 & 1;
  *(v8 + 17) = HIBYTE(a6) & 1;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_1BAB3F1D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BABE6CFC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1BAB3F288(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1BABE6CFC();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1BAB3F334(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1BAB3F37C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ReplicatorRecord.ID(0);
  sub_1BAB41B4C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ReplicatorRecord.ID);
  v10 = a4[7];
  v11 = sub_1BABE6CFC();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1BAB3F46C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6];
  v8 = *(*(type metadata accessor for ReplicatorRecord.ID(0) - 8) + 72) * a1;
  sub_1BAB41B4C(a2, v7 + v8, type metadata accessor for ReplicatorRecord.ID);
  result = sub_1BAB41B4C(a3, a4[7] + v8, type metadata accessor for ReplicatorRecord.ID);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1BAB3F534(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ReplicatorRecord.ID(0);
  sub_1BAB41B4C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ReplicatorRecord.ID);
  v10 = a4[7];
  v11 = type metadata accessor for ReplicatorRecord(0);
  result = sub_1BAB41B4C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ReplicatorRecord);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1BAB3F620(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ReplicatorRecord.ID(0);
  result = sub_1BAB41B4C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ReplicatorRecord.ID);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1BAB3F6D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ReplicatorRecord.Value(0);
  result = sub_1BAB41B4C(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for ReplicatorRecord.Value);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1BAB3F77C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1BABE6BAC();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1BAB3F828(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 80 * result);
  v7 = a4[4];
  v6[3] = a4[3];
  v6[4] = v7;
  v8 = a4[2];
  v6[1] = a4[1];
  v6[2] = v8;
  *v6 = *a4;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t sub_1BAB3F88C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BABE6BAC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1BAB3F944(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BABE6CFC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase(0);
  result = sub_1BAB41B4C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_1BAB3FA34(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v52 = a7;
  v53 = a8;
  v50 = a5;
  v51 = a6;
  v47 = a3;
  v48 = a4;
  v46 = a1;
  v49 = a9;
  v12 = *v9;
  v13 = sub_1BABE793C();
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = *a2;
  v41 = a2[1];
  v42 = v17;
  LODWORD(v17) = *(a2 + 16);
  v39 = *(a2 + 17);
  v40 = v17;
  v18 = a2[3];
  v37 = a2[4];
  v38 = v18;
  HIDWORD(v36) = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AF0, &unk_1BABF0FA0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v9[30] = v19;
  v20 = *(v12 + 88);
  v21 = *(v12 + 80);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ReplicatorStore.Entry(0, v21, v20, v22);
  swift_getAssociatedConformanceWitness();
  v9[31] = sub_1BABE741C();
  type metadata accessor for ReplicatorRecord.ID(0);
  sub_1BAAD3904(&qword_1ED787418, type metadata accessor for ReplicatorRecord.ID, &protocol conformance descriptor for ReplicatorRecord.ID);
  v9[32] = sub_1BABE741C();
  sub_1BABE6CFC();
  type metadata accessor for ReplicatorStore.Change(255, v21, v20, v23);
  sub_1BABE775C();
  swift_getFunctionTypeMetadata1();
  sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v9[33] = sub_1BABE741C();
  sub_1BAAD14BC();
  sub_1BABE73AC();
  v54 = MEMORY[0x1E69E7CC0];
  sub_1BAAD3904(&qword_1ED787C70, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0, &qword_1BABEA0F0);
  sub_1BAAD1598(&qword_1ED787C80, &unk_1EBC12BA0, &qword_1BABEA0F0);
  sub_1BABE79FC();
  (*(v44 + 104))(v43, *MEMORY[0x1E69E8090], v45);
  v9[34] = sub_1BABE796C();
  v24 = v46;
  sub_1BAB416E4(v46, (v9 + 2));
  v25 = v41;
  v9[12] = v42;
  v9[13] = v25;
  LOBYTE(v25) = v39;
  *(v9 + 112) = v40;
  *(v9 + 113) = v25;
  v26 = v37;
  v9[15] = v38;
  v9[16] = v26;
  *(v9 + 136) = BYTE4(v36);
  v27 = v47;
  sub_1BAAD2DAC(v47, (v9 + 18), &qword_1EBC12DC0, &qword_1BABEAA70);
  v28 = v49;
  v29 = v50;
  v9[24] = v48;
  v9[25] = v29;
  v30 = v52;
  v10[26] = v51;
  v10[27] = v30;
  v10[28] = v53;
  v10[29] = v28;

  sub_1BAB31E84(&unk_1F38BD420, &unk_1BABEAC10);
  v31 = sub_1BAB31E84(&unk_1F38BD330, &unk_1BABEABC8);
  sub_1BAB31FD0(v31, v32, v33, v34);
  sub_1BAAD2E14(v27, &qword_1EBC12DC0, &qword_1BABEAA70);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v10;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1BAB4004C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0, &unk_1BABE9C10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAB400BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorRecord.Value(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of ReplicatorStore.add(_:destination:schedule:expiration:options:)()
{
  return (*(*v0 + 344))();
}

{
  return (*(*v0 + 352))();
}

uint64_t sub_1BAB404DC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for ReplicatorRecord.ID(255);
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBC13D70, &unk_1BABE9A80);
    sub_1BABE6CFC();
    result = swift_getTupleTypeMetadata();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAB405D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(sub_1BABE6CFC() - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 | 7) + v6) & ~(v8 | 7);
  v10 = *(v7 + 84);
  v11 = *(v7 + 64);
  v12 = *(*(v5 - 8) + 64);
  v13 = *(sub_1BABE6BAC() - 8);
  v14 = *(v13 + 80);
  v15 = *(v13 + 84);
  v16 = *(v13 + 64);
  if (v10)
  {
    v17 = v11;
  }

  else
  {
    v17 = v11 + 1;
  }

  v18 = v15 == 0;
  v19 = ((v17 + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v20 = v16 + v8;
  if (v18)
  {
    ++v20;
  }

  v21 = ((v20 + ((((v12 + (v8 | 7)) & ~(v8 | 7)) + v14 + v19) & ~v14)) & ~v8) + v11;
  if (v21 <= v19 + v9)
  {
    v22 = v19 + v9;
  }

  else
  {
    v22 = v21;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_31;
  }

  v23 = v22 + 1;
  v24 = 8 * (v22 + 1);
  if ((v22 + 1) <= 3)
  {
    v27 = ((a2 + ~(-1 << v24) - 254) >> v24) + 1;
    if (HIWORD(v27))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v27 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v27 < 2)
    {
LABEL_31:
      v29 = *(a1 + v22);
      if (v29 >= 2)
      {
        return (v29 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_31;
  }

LABEL_20:
  v28 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v28 = 0;
  }

  if (v23)
  {
    if (v23 > 3)
    {
      LODWORD(v23) = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        LODWORD(v23) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v23) = *a1;
      }
    }

    else if (v23 == 1)
    {
      LODWORD(v23) = *a1;
    }

    else
    {
      LODWORD(v23) = *a1;
    }
  }

  return (v23 | v28) + 255;
}

void sub_1BAB40854(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(sub_1BABE6CFC() - 8);
  v10 = *(v9 + 80);
  v11 = ((v10 | 7) + v8) & ~(v10 | 7);
  v12 = *(v9 + 84);
  v13 = *(v9 + 64);
  v14 = *(*(v7 - 8) + 64);
  v15 = *(sub_1BABE6BAC() - 8);
  v16 = *(v15 + 80);
  v17 = *(v15 + 84);
  v18 = *(v15 + 64);
  if (v12)
  {
    v19 = v13;
  }

  else
  {
    v19 = v13 + 1;
  }

  v20 = v17 == 0;
  v21 = ((v19 + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v22 = v18 + v10;
  if (v20)
  {
    ++v22;
  }

  v23 = ((v22 + ((((v14 + (v10 | 7)) & ~(v10 | 7)) + v16 + v21) & ~v16)) & ~v10) + v13;
  if (v23 <= v21 + v11)
  {
    v23 = v21 + v11;
  }

  v24 = v23 + 1;
  if (a3 < 0xFF)
  {
    v25 = 0;
  }

  else if (v24 <= 3)
  {
    v28 = ((a3 + ~(-1 << (8 * v24)) - 254) >> (8 * v24)) + 1;
    if (HIWORD(v28))
    {
      v25 = 4;
    }

    else
    {
      if (v28 < 0x100)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (v28 >= 2)
      {
        v25 = v29;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 1;
  }

  if (a2 > 0xFE)
  {
    v26 = a2 - 255;
    if (v24 >= 4)
    {
      bzero(a1, v23 + 1);
      *a1 = v26;
      v27 = 1;
      if (v25 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v27 = (v26 >> (8 * v24)) + 1;
    if (v23 != -1)
    {
      v30 = v26 & ~(-1 << (8 * v24));
      bzero(a1, v24);
      if (v24 != 3)
      {
        if (v24 == 2)
        {
          *a1 = v30;
          if (v25 > 1)
          {
LABEL_44:
            if (v25 == 2)
            {
              *&a1[v24] = v27;
            }

            else
            {
              *&a1[v24] = v27;
            }

            return;
          }
        }

        else
        {
          *a1 = v26;
          if (v25 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v25)
        {
          a1[v24] = v27;
        }

        return;
      }

      *a1 = v30;
      a1[2] = BYTE2(v30);
    }

    if (v25 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v25 <= 1)
  {
    if (v25)
    {
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v23] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v25 == 2)
  {
    *&a1[v24] = 0;
    goto LABEL_29;
  }

  *&a1[v24] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

uint64_t sub_1BAB40B4C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ReplicatorRecord(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAB40BD4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v46 = *(a3 + 16);
  v4 = *(v46 - 8);
  v5 = *(v4 + 84);
  v45 = sub_1BABE6CFC();
  v6 = *(v45 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (v7 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(sub_1BABE6C8C() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v10 > v14)
  {
    v14 = v10;
  }

  if (v14 <= v5)
  {
    v15 = v5;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 80);
  v17 = *(v11 + 80);
  v18 = *(v6 + 64);
  v19 = v18 + 7;
  if (v7)
  {
    v20 = v18 + 7;
  }

  else
  {
    v20 = v18 + 8;
  }

  v21 = *(v11 + 64);
  if (v13)
  {
    v22 = 7;
  }

  else
  {
    v22 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v16 | v17 | 7;
  v24 = v23 + *(v4 + 64);
  v25 = ((v20 + ((v16 + 48) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v26 = v17 + 8;
  v27 = a1;
  if (v15 >= a2)
  {
LABEL_46:
    if (v5 >= v14)
    {
      v40 = v46;
      v41 = *(v4 + 48);
      v42 = v5;
    }

    else
    {
      v37 = ~v16;
      v38 = (a1 + v24) & ~v23;
      if (v9 == v14)
      {
        if ((v8 & 0x80000000) == 0)
        {
          v39 = *(v38 + 8);
LABEL_59:
          if (v39 >= 0xFFFFFFFF)
          {
            LODWORD(v39) = -1;
          }

          return (v39 + 1);
        }

        v44 = (*(v6 + 48))((v16 + ((((v38 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & v37, v7, v45);
        goto LABEL_66;
      }

      v27 = ((v38 + v16 + v25) & v37);
      if (v7 != v14)
      {
        v43 = ((v27 + v19) & 0xFFFFFFFFFFFFFFF8);
        if ((v14 & 0x80000000) == 0)
        {
          v39 = *v43;
          goto LABEL_59;
        }

        v44 = (*(v12 + 48))((v43 + v26) & ~v17);
LABEL_66:
        if (v44 >= 2)
        {
          return v44 - 1;
        }

        else
        {
          return 0;
        }
      }

      v41 = *(v6 + 48);
      v42 = v7;
      v40 = v45;
    }

    return v41(v27, v42, v40);
  }

  v28 = (v24 & ~v23) + ((v22 + v21 + ((v26 + ((v19 + ((v25 + v16) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v29 = v28 & 0xFFFFFFF8;
  if ((v28 & 0xFFFFFFF8) != 0)
  {
    v30 = 2;
  }

  else
  {
    v30 = a2 - v15 + 1;
  }

  if (v30 >= 0x10000)
  {
    v31 = 4;
  }

  else
  {
    v31 = 2;
  }

  if (v30 < 0x100)
  {
    v31 = 1;
  }

  if (v30 >= 2)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v32 > 1)
  {
    if (v32 == 2)
    {
      v33 = *(a1 + v28);
      if (!v33)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v33 = *(a1 + v28);
      if (!v33)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (!v32)
    {
      goto LABEL_46;
    }

    v33 = *(a1 + v28);
    if (!v33)
    {
      goto LABEL_46;
    }
  }

  v35 = v33 - 1;
  if (v29)
  {
    v35 = 0;
    v36 = *a1;
  }

  else
  {
    v36 = 0;
  }

  return v15 + (v36 | v35) + 1;
}

void sub_1BAB40FA8(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v61 = *(a4 + 16);
  v5 = *(v61 - 8);
  v60 = v5;
  v6 = *(v5 + 84);
  v58 = sub_1BABE6CFC();
  v7 = *(v58 - 8);
  v64 = v7;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v59 = v9;
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v8 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = 0;
  v13 = *(sub_1BABE6C8C() - 8);
  v14 = *(v13 + 84);
  v15 = *(v7 + 64);
  v16 = *(v5 + 64);
  if (v14)
  {
    v17 = v14 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v11 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= v6)
  {
    v19 = v6;
  }

  else
  {
    v19 = v18;
  }

  if (v8)
  {
    v20 = *(v7 + 64);
  }

  else
  {
    v20 = v15 + 1;
  }

  v21 = *(v7 + 80);
  v22 = *(v13 + 80);
  v23 = v21 | v22 | 7;
  v24 = v23 + v16;
  v25 = (v23 + v16) & ~v23;
  v26 = ((((v21 + 48) & ~v21) + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v27 = v15 + 7;
  v28 = v15 + 7 + ((v26 + v21) & ~v21);
  v29 = v22 + 8;
  v30 = *(v13 + 64);
  if (!v14)
  {
    ++v30;
  }

  v31 = v25 + ((v30 + ((v22 + 8 + (v28 & 0xFFFFFFFFFFFFFFF8)) & ~v22) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v19 < a3)
  {
    if (v25 + ((v30 + ((v22 + 8 + (v28 & 0xFFFFFFF8)) & ~v22) + 7) & 0xFFFFFFF8) == -8)
    {
      v32 = a3 - v19 + 1;
    }

    else
    {
      v32 = 2;
    }

    if (v32 >= 0x10000)
    {
      v33 = 4;
    }

    else
    {
      v33 = 2;
    }

    if (v32 < 0x100)
    {
      v33 = 1;
    }

    if (v32 >= 2)
    {
      v12 = v33;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 > v19)
  {
    if (v25 + ((v30 + ((v22 + 8 + (v28 & 0xFFFFFFF8)) & ~v22) + 7) & 0xFFFFFFF8) == -8)
    {
      v34 = a2 - v19;
    }

    else
    {
      v34 = 1;
    }

    if (v25 + ((v30 + ((v22 + 8 + (v28 & 0xFFFFFFF8)) & ~v22) + 7) & 0xFFFFFFF8) != -8)
    {
      v35 = ~v19 + a2;
      bzero(a1, v31);
      *a1 = v35;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(a1 + v31) = v34;
      }

      else
      {
        *(a1 + v31) = v34;
      }
    }

    else if (v12)
    {
      *(a1 + v31) = v34;
    }

    return;
  }

  v36 = a1;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v31) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    }

    *(a1 + v31) = 0;
  }

  else if (v12)
  {
    *(a1 + v31) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_54;
  }

  if (!a2)
  {
    return;
  }

LABEL_54:
  if (v6 >= v18)
  {
    v41 = *(v60 + 56);
    v42 = a2;
    v43 = v6;
    v44 = v61;
LABEL_59:

    v41(v36, v42, v43, v44);
    return;
  }

  v37 = ~v22;
  v38 = ((a1 + v24) & ~v23);
  if (v18 < a2)
  {
    v39 = (((v29 + (v28 & 0xFFFFFFF8)) & v37) + v30 + 7) & 0xFFFFFFF8;
    if (v39 != -8)
    {
      v40 = ~v18 + a2;
      bzero(((a1 + v24) & ~v23), (v39 + 8));
      *v38 = v40;
    }

    return;
  }

  v45 = ~v21;
  if (v10 == v18)
  {
    if ((v59 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *v38 = a2 & 0x7FFFFFFF;
        *(((a1 + v24) & ~v23) + 8) = 0;
      }

      else
      {
        *(((a1 + v24) & ~v23) + 8) = a2 - 1;
      }

      return;
    }

    v48 = v21 + ((((v38 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v49 = (v48 & v45);
    if (v59 < a2)
    {
      if (v20 <= 3)
      {
        v50 = ~(-1 << (8 * v20));
      }

      else
      {
        v50 = -1;
      }

      if (v20)
      {
        v51 = v50 & (~v59 + a2);
        if (v20 <= 3)
        {
          v52 = v20;
        }

        else
        {
          v52 = 4;
        }

        bzero(v49, v20);
        if (v52 > 2)
        {
          if (v52 == 3)
          {
            *v49 = v51;
            v49[2] = BYTE2(v51);
          }

          else
          {
            *v49 = v51;
          }
        }

        else if (v52 == 1)
        {
          *v49 = v51;
        }

        else
        {
          *v49 = v51;
        }
      }

      return;
    }

    v41 = *(v64 + 56);
    v42 = a2 + 1;
    v36 = (v48 & v45);
    goto LABEL_98;
  }

  v36 = ((v38 + v21 + v26) & v45);
  if (v8 == v18)
  {
    v41 = *(v64 + 56);
    v42 = a2;
LABEL_98:
    v43 = v8;
    v44 = v58;
    goto LABEL_59;
  }

  v46 = ((v36 + v27) & 0xFFFFFFFFFFFFFFF8);
  if ((v18 & 0x80000000) != 0)
  {
    v53 = ((v46 + v29) & v37);
    if (v17 >= a2)
    {
      v57 = *(v13 + 56);

      v57((v46 + v29) & v37, a2 + 1);
    }

    else
    {
      if (v30 <= 3)
      {
        v54 = ~(-1 << (8 * v30));
      }

      else
      {
        v54 = -1;
      }

      if (v30)
      {
        v55 = v54 & (~v17 + a2);
        if (v30 <= 3)
        {
          v56 = v30;
        }

        else
        {
          v56 = 4;
        }

        bzero(v53, v30);
        if (v56 > 2)
        {
          if (v56 == 3)
          {
            *v53 = v55;
            v53[2] = BYTE2(v55);
          }

          else
          {
            *v53 = v55;
          }
        }

        else if (v56 == 1)
        {
          *v53 = v55;
        }

        else
        {
          *v53 = v55;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v47 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v47 = a2 - 1;
    }

    *v46 = v47;
  }
}

uint64_t sub_1BAB41528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  type metadata accessor for ReplicatorStore.Change(255, v6, v7, a4);
  sub_1BABE775C();
  v8 = *(sub_1BABE77DC() - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1BAB36624(a1, v9, v6, v7);
}

uint64_t sub_1BAB416E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = v5;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BAB41770(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BAB41838;

  return sub_1BAB38BAC(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_1BAB41838()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BAB4192C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BAB41E38;

  return sub_1BAB3BCE4(a1, v4);
}

uint64_t sub_1BAB419E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BAB41838;

  return sub_1BAB3BCE4(a1, v4);
}

double sub_1BAB41AB8@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 264);

  return result;
}

uint64_t sub_1BAB41B14(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1BAB41B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAB41BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BAB41C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_21Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAB41CBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BAB41E38;

  return sub_1BAB38300(a1, v4, v5, v6);
}

__n128 ReplicatorClient.replicatorProtocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t ReplicatorClient.__allocating_init(descriptor:recordVersions:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ReplicatorClient.init(descriptor:recordVersions:)(a1, a2);
  return v4;
}

void *ReplicatorClient.init(descriptor:recordVersions:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v5 = sub_1BABE793C();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1BABE6F8C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = a1[3];
  v30[2] = a1[2];
  v30[3] = v16;
  v30[4] = a1[4];
  v17 = a1[1];
  v30[0] = *a1;
  v30[1] = v17;
  sub_1BABE6D0C();
  v18 = sub_1BABE6F6C();
  v19 = *(v10 + 8);
  v19(v15, v9);
  sub_1BABE6D0C();
  v20 = sub_1BABE6F7C();
  v19(v13, v9);
  v3[2] = v18;
  v3[3] = v20;
  sub_1BAAD14BC();
  sub_1BABE73AC();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1BAB4CC80(&qword_1ED787C70, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0, &qword_1BABEA0F0);
  sub_1BAAD1598(&qword_1ED787C80, &unk_1EBC12BA0, &qword_1BABEA0F0);
  sub_1BABE79FC();
  (*(v26 + 104))(v25, *MEMORY[0x1E69E8090], v27);
  v3[18] = sub_1BABE796C();
  v21 = type metadata accessor for ReplicatorClientWithoutPersistence();
  swift_allocObject();
  v22 = sub_1BABC472C(v30, v28);
  v3[7] = v21;
  v3[8] = &off_1F38C2B50;
  v3[9] = &off_1F38C2B38;
  v3[10] = &off_1F38C2B10;
  v3[11] = &off_1F38C2AF8;
  v3[12] = &off_1F38C2AD8;
  v3[13] = &off_1F38C2AC0;
  v3[14] = &off_1F38C2AA0;
  v3[15] = &off_1F38C2A88;
  v3[16] = &off_1F38C2A40;
  v3[17] = &off_1F38C2A30;
  v3[4] = v22;
  return v3;
}

uint64_t ReplicatorClient.__allocating_init(id:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ReplicatorClient.init(id:)(a1, a2);
  return v4;
}

void *ReplicatorClient.init(id:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  v23[0] = *v2;
  v4 = sub_1BABE793C();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1BABE6F8C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - v14;
  sub_1BABE6D0C();
  v16 = sub_1BABE6F6C();
  v17 = *(v10 + 8);
  v17(v15, v9);
  sub_1BABE6D0C();
  v18 = sub_1BABE6F7C();
  v17(v13, v9);
  v3[2] = v16;
  v3[3] = v18;
  sub_1BAAD14BC();
  sub_1BABE73AC();
  *&v29 = MEMORY[0x1E69E7CC0];
  sub_1BAB4CC80(&qword_1ED787C70, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0, &qword_1BABEA0F0);
  sub_1BAAD1598(&qword_1ED787C80, &unk_1EBC12BA0, &qword_1BABEA0F0);
  sub_1BABE79FC();
  (*(v25 + 104))(v24, *MEMORY[0x1E69E8090], v26);
  v3[18] = sub_1BABE796C();
  v19 = type metadata accessor for ReplicatorClientWithoutPersistence();
  swift_allocObject();
  v20 = v41;
  v21 = sub_1BABC4D30(v27, v28);
  if (v20)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = &off_1F38C2B50;
    v32 = &off_1F38C2B38;
    v33 = &off_1F38C2B10;
    v34 = &off_1F38C2AF8;
    v35 = &off_1F38C2AD8;
    v36 = &off_1F38C2AC0;
    v37 = &off_1F38C2AA0;
    v38 = &off_1F38C2A88;
    v39 = &off_1F38C2A40;
    v40 = &off_1F38C2A30;
    v30 = v19;
    *&v29 = v21;
    sub_1BAB4A588(&v29, v3 + 2);
  }

  return v3;
}

uint64_t ReplicatorClient.__allocating_init(id:cacheURL:corruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ReplicatorClient.init(id:cacheURL:corruptionHandler:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ReplicatorClient.init(id:cacheURL:corruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v40 = a4;
  v41 = a3;
  v43 = a1;
  v44 = a2;
  v32[1] = *v5;
  v38 = sub_1BABE6BAC();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v39 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1BABE793C();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1BABE6F8C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v32 - v15;
  sub_1BABE6D0C();
  v17 = sub_1BABE6F6C();
  v18 = *(v11 + 8);
  v18(v16, v10);
  sub_1BABE6D0C();
  v19 = sub_1BABE6F7C();
  v18(v14, v10);
  v20 = v33;
  *(v33 + 16) = v17;
  *(v20 + 24) = v19;
  v32[2] = sub_1BAAD14BC();
  sub_1BABE73AC();
  *&v45 = MEMORY[0x1E69E7CC0];
  sub_1BAB4CC80(&qword_1ED787C70, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0, &qword_1BABEA0F0);
  v21 = v36;
  sub_1BAAD1598(&qword_1ED787C80, &unk_1EBC12BA0, &qword_1BABEA0F0);
  v22 = v38;
  v23 = v40;
  sub_1BABE79FC();
  (*(v35 + 104))(v34, *MEMORY[0x1E69E8090], v37);
  v24 = v41;
  v25 = v42;
  *(v20 + 144) = sub_1BABE796C();
  v26 = v39;
  (*(v21 + 16))(v39, v24, v22);
  v27 = type metadata accessor for ReplicatorClientWithPersistence(0);
  swift_allocObject();
  sub_1BAADAF5C(v23, v25);
  v28 = v57;
  sub_1BAB7878C(v43, v44, v26, v23, v25);
  if (v28)
  {
    sub_1BAADAFD4(v23, v25);
    (*(v21 + 8))(v24, v22);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v29;
    v46 = v27;
    v47 = &off_1F38C1360;
    v48 = &off_1F38C1348;
    v49 = &off_1F38C1320;
    v50 = &off_1F38C1308;
    v51 = &off_1F38C12E8;
    v52 = &off_1F38C12D0;
    v53 = &off_1F38C12B0;
    v54 = &off_1F38C1298;
    v55 = &off_1F38C1250;
    v56 = &off_1F38C1240;
    sub_1BAADAFD4(v23, v25);
    *&v45 = v30;
    (*(v21 + 8))(v24, v22);
    sub_1BAB4A588(&v45, (v20 + 32));
  }

  return v20;
}

uint64_t ReplicatorClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return v0;
}

uint64_t ReplicatorClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

uint64_t ReplicatorClient.descriptor.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1BAB42E90()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t ReplicatorClient.messageUpdates.getter()
{
  v1 = v0[7];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t ReplicatorClient.send(message:)(uint64_t a1)
{
  v3 = v1;
  v68 = type metadata accessor for ReplicatorMessage(0);
  v5 = MEMORY[0x1EEE9AC00](v68);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v61 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - v11;
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v13 = sub_1BABE72BC();
  v14 = __swift_project_value_buffer(v13, qword_1ED78BBA0);
  sub_1BAB4CC18(a1, v12, type metadata accessor for ReplicatorMessage);
  sub_1BAB4CC18(a1, v10, type metadata accessor for ReplicatorMessage);
  sub_1BAB4CC18(a1, v7, type metadata accessor for ReplicatorMessage);

  v67 = v14;
  v15 = sub_1BABE729C();
  v16 = sub_1BABE790C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v65 = a1;
    v18 = v17;
    v64 = swift_slowAlloc();
    v71 = v64;
    *v18 = 136446978;
    v63 = v16;
    v19 = v3[7];
    v20 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v19);
    v21 = *(v20 + 8);
    v62 = v15;
    v21(&v69, v19, v20);
    v22 = v69;
    v23 = v70;

    sub_1BAB21D34(&v69);
    v24 = sub_1BAAFA460(v22, v23, &v71);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v61 = sub_1BABE6CFC();
    sub_1BAB4CC80(&qword_1EBC128F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v25 = sub_1BABE7EAC();
    v27 = v26;
    v66 = v2;
    sub_1BAB4A600(v12, type metadata accessor for ReplicatorMessage);
    v28 = sub_1BAAFA460(v25, v27, &v71);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2082;
    v29 = &v10[*(v68 + 28)];
    v30 = *v29;
    v31 = v29[1];

    sub_1BAB4A600(v10, type metadata accessor for ReplicatorMessage);
    v32 = sub_1BAAFA460(v30, v31, &v71);

    *(v18 + 24) = v32;
    *(v18 + 32) = 2082;
    v33 = sub_1BABE7EAC();
    v35 = v34;
    sub_1BAB4A600(v7, type metadata accessor for ReplicatorMessage);
    v36 = sub_1BAAFA460(v33, v35, &v71);

    *(v18 + 34) = v36;
    v37 = v62;
    _os_log_impl(&dword_1BAACF000, v62, v63, "Client %{public}s sending fire-and-forget message %{public}s of type %{public}s to %{public}s", v18, 0x2Au);
    v38 = v64;
    swift_arrayDestroy();
    MEMORY[0x1BFAFE460](v38, -1, -1);
    v39 = v18;
    a1 = v65;
    MEMORY[0x1BFAFE460](v39, -1, -1);
  }

  else
  {

    sub_1BAB4A600(v7, type metadata accessor for ReplicatorMessage);
    sub_1BAB4A600(v10, type metadata accessor for ReplicatorMessage);
    sub_1BAB4A600(v12, type metadata accessor for ReplicatorMessage);
  }

  v40 = v3[7];
  v41 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v40);
  if (((*(v41 + 8))(v40, v41) & 1) == 0)
  {
    v50 = sub_1BABE729C();
    v51 = sub_1BABE78EC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1BAACF000, v50, v51, "Client is not registered", v52, 2u);
      MEMORY[0x1BFAFE460](v52, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v53 = 2;
    goto LABEL_13;
  }

  v42 = a1;
  v43 = (a1 + *(v68 + 20));
  v44 = *v43;
  v45 = v43[1];
  v46 = v3[7];
  v47 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v46);
  (*(v47 + 8))(&v69, v46, v47);
  v49 = v69;
  v48 = v70;

  sub_1BAB21D34(&v69);
  if (v44 != v49 || v45 != v48)
  {
    v55 = sub_1BABE7EDC();

    if (v55)
    {
      goto LABEL_15;
    }

    v58 = sub_1BABE729C();
    v59 = sub_1BABE78EC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1BAACF000, v58, v59, "Wrong client ID", v60, 2u);
      MEMORY[0x1BFAFE460](v60, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v53 = 0;
LABEL_13:
    *(v53 + 8) = 0;

    return swift_willThrow();
  }

LABEL_15:
  v56 = v3[7];
  v57 = v3[14];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v56);
  return (*(v57 + 16))(v42, v56, v57);
}

uint64_t ReplicatorClient.isRegistered.getter()
{
  v1 = v0[7];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

uint64_t ReplicatorClient.sendExpectingResponse(message:timeout:retries:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v85 = a3;
  v6 = v5;
  v78 = a2;
  v10 = sub_1BABE737C();
  v83 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1BABE73BC();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ReplicatorMessage(0);
  v13 = MEMORY[0x1EEE9AC00](v84);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v72 - v19;
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v21 = sub_1BABE72BC();
  __swift_project_value_buffer(v21, qword_1ED78BBA0);
  sub_1BAB4CC18(a1, v20, type metadata accessor for ReplicatorMessage);
  sub_1BAB4CC18(a1, v18, type metadata accessor for ReplicatorMessage);
  v86 = a1;
  sub_1BAB4CC18(a1, v15, type metadata accessor for ReplicatorMessage);

  v22 = sub_1BABE729C();
  v23 = sub_1BABE790C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v76 = a4;
    v25 = v24;
    v75 = swift_slowAlloc();
    v88[0] = v75;
    *v25 = 136446978;
    v74 = v22;
    v77 = v10;
    v26 = v6[7];
    v27 = v6[8];
    __swift_project_boxed_opaque_existential_1(v6 + 4, v26);
    v28 = *(v27 + 8);
    v73 = v23;
    v28(&aBlock, v26, v27);
    v29 = aBlock;
    v30 = v90;

    sub_1BAB21D34(&aBlock);
    v31 = sub_1BAAFA460(v29, v30, v88);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2082;
    v72 = sub_1BABE6CFC();
    sub_1BAB4CC80(&qword_1EBC128F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v32 = sub_1BABE7EAC();
    v34 = v33;
    sub_1BAB4A600(v20, type metadata accessor for ReplicatorMessage);
    v35 = sub_1BAAFA460(v32, v34, v88);

    *(v25 + 14) = v35;
    *(v25 + 22) = 2082;
    v36 = &v18[*(v84 + 28)];
    v37 = *v36;
    v38 = v36[1];

    sub_1BAB4A600(v18, type metadata accessor for ReplicatorMessage);
    v39 = sub_1BAAFA460(v37, v38, v88);

    *(v25 + 24) = v39;
    *(v25 + 32) = 2082;
    v40 = sub_1BABE7EAC();
    v42 = v41;
    v10 = v77;
    sub_1BAB4A600(v15, type metadata accessor for ReplicatorMessage);
    v43 = sub_1BAAFA460(v40, v42, v88);

    *(v25 + 34) = v43;
    v44 = v74;
    _os_log_impl(&dword_1BAACF000, v74, v73, "Client %{public}s sending message %{public}s of type %{public}s to %{public}s", v25, 0x2Au);
    v45 = v75;
    swift_arrayDestroy();
    MEMORY[0x1BFAFE460](v45, -1, -1);
    v46 = v25;
    a4 = v76;
    MEMORY[0x1BFAFE460](v46, -1, -1);
  }

  else
  {

    sub_1BAB4A600(v15, type metadata accessor for ReplicatorMessage);
    sub_1BAB4A600(v18, type metadata accessor for ReplicatorMessage);
    sub_1BAB4A600(v20, type metadata accessor for ReplicatorMessage);
  }

  v47 = v6[7];
  v48 = v6[10];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v47);
  if (((*(v48 + 8))(v47, v48) & 1) == 0)
  {
    v56 = v6[18];
    v57 = swift_allocObject();
    *(v57 + 16) = v85;
    *(v57 + 24) = a4;
    v93 = sub_1BAB4A5B0;
    v94 = v57;
    aBlock = MEMORY[0x1E69E9820];
    v90 = 1107296256;
    v91 = sub_1BAAD173C;
    v92 = &block_descriptor_1;
    v58 = _Block_copy(&aBlock);

    v59 = v56;
    v60 = v79;
    sub_1BABE739C();
    v88[0] = MEMORY[0x1E69E7CC0];
    sub_1BAB4CC80(&qword_1ED787CB0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0, &unk_1BABEABA0);
    sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0, &unk_1BABEABA0);
    v61 = v80;
    sub_1BABE79FC();
    MEMORY[0x1BFAFD5D0](0, v60, v61, v58);
    _Block_release(v58);

    (*(v83 + 8))(v61, v10);
    (*(v81 + 8))(v60, v82);
  }

  v49 = (v86 + *(v84 + 20));
  v50 = *v49;
  v51 = v49[1];
  v52 = v6[7];
  v53 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v52);
  (*(v53 + 8))(&aBlock, v52, v53);
  v55 = aBlock;
  v54 = v90;

  sub_1BAB21D34(&aBlock);
  if (v50 != v55 || v51 != v54)
  {
    v63 = sub_1BABE7EDC();

    if (v63)
    {
      goto LABEL_13;
    }

    v66 = v6[18];
    v67 = swift_allocObject();
    *(v67 + 16) = v85;
    *(v67 + 24) = a4;
    v88[4] = sub_1BAB4A5D8;
    v88[5] = v67;
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 1107296256;
    v88[2] = sub_1BAAD173C;
    v88[3] = &block_descriptor_6;
    v68 = _Block_copy(v88);
    v69 = v66;

    v70 = v79;
    sub_1BABE739C();
    v87 = MEMORY[0x1E69E7CC0];
    sub_1BAB4CC80(&qword_1ED787CB0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0, &unk_1BABEABA0);
    sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0, &unk_1BABEABA0);
    v71 = v80;
    sub_1BABE79FC();
    MEMORY[0x1BFAFD5D0](0, v70, v71, v68);
    _Block_release(v68);

    (*(v83 + 8))(v71, v10);
    (*(v81 + 8))(v70, v82);
  }

LABEL_13:
  v64 = v6[7];
  v65 = v6[14];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v64);
  return (*(v65 + 24))(v86, v78, v85, a4, v64, v65, a5);
}

uint64_t sub_1BAB44074(void (*a1)(uint64_t *), uint64_t a2, const char *a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AC8, &qword_1BABEAE30);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v17 - v8);
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v10 = sub_1BABE72BC();
  __swift_project_value_buffer(v10, qword_1ED78BBA0);
  v11 = sub_1BABE729C();
  v12 = sub_1BABE78EC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BAACF000, v11, v12, a3, v13, 2u);
    MEMORY[0x1BFAFE460](v13, -1, -1);
  }

  sub_1BAB15A08();
  v14 = swift_allocError();
  *v15 = a4;
  *(v15 + 8) = 0;

  *v9 = v14;
  swift_storeEnumTagMultiPayload();
  a1(v9);
  return sub_1BAAD2E14(v9, &qword_1EBC12AC8, &qword_1BABEAE30);
}

uint64_t sub_1BAB44234()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 112);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t ReplicatorClient.id.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  (*(v2 + 8))(&v5, v1, v2);
  v3 = v5;

  sub_1BAB21D34(&v5);
  return v3;
}

uint64_t ReplicatorClient.localDeviceID.getter()
{
  v1 = v0[7];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(*(v2 + 8) + 8))(v1);
}

uint64_t ReplicatorClient.deviceUpdates.getter()
{
  v1 = v0[7];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(*(v2 + 24) + 8))(v1);
}

uint64_t ReplicatorClient.pairedDeviceUpdates.getter()
{
  v1 = v0[7];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(*(v2 + 24) + 16))(v1);
}

uint64_t ReplicatorClient.devices.getter()
{
  v1 = v0[7];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(*(v2 + 16) + 8))(v1);
}

uint64_t ReplicatorClient.pairedDevices.getter()
{
  v1 = v0[7];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return ReplicatorRemoteDeviceProviding.pairedDevices()(v1, *(v2 + 16));
}

uint64_t sub_1BAB4451C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 32), v2);
  return (*(*(v3 + 8) + 8))(v2);
}

__n128 sub_1BAB44580@<Q0>(__n128 *a1@<X8>)
{
  result = (*v1)[1];
  *a1 = result;
  return result;
}

uint64_t sub_1BAB44590()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 32), v2);
  return (*(*(v3 + 16) + 8))(v2);
}

uint64_t sub_1BAB445E4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 32), v2);
  return (*(*(v3 + 24) + 8))(v2);
}

uint64_t sub_1BAB44648()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 32), v2);
  return (*(*(v3 + 24) + 16))(v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ReplicatorClient.setEnabled(_:)(Swift::Bool a1)
{
  v3 = v1[7];
  v4 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  if ((*(v4 + 8))(v3, v4))
  {
    v5 = v1[7];
    v6 = v1[9];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v5);
    (*(v6 + 16))(a1, v5, v6);
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1BABE72BC();
    __swift_project_value_buffer(v7, qword_1ED78BBA0);
    v8 = sub_1BABE729C();
    v9 = sub_1BABE78EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BAACF000, v8, v9, "Client is not registered", v10, 2u);
      MEMORY[0x1BFAFE460](v10, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0;

    swift_willThrow();
  }
}

uint64_t ReplicatorClient.isEnabled.getter()
{
  v1 = v0[7];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  if ((*(v2 + 8))(v1, v2))
  {
    v3 = v0[7];
    v4 = v0[9];
    __swift_project_boxed_opaque_existential_1(v0 + 4, v3);
    return (*(v4 + 8))(v3, v4) & 1;
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v6 = sub_1BABE72BC();
    __swift_project_value_buffer(v6, qword_1ED78BBA0);
    v7 = sub_1BABE729C();
    v8 = sub_1BABE78EC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BAACF000, v7, v8, "Client is not registered", v9, 2u);
      MEMORY[0x1BFAFE460](v9, -1, -1);
    }

    return 0;
  }
}

uint64_t ReplicatorClient.recordUpdates.getter()
{
  v1 = v0[7];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t ReplicatorClient.zoneUpdates(zone:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[7];
  v6 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t ReplicatorClient.InvalidRecordResolution.hashValue.getter()
{
  v1 = *v0;
  sub_1BABE7F9C();
  MEMORY[0x1BFAFDC20](v1);
  return sub_1BABE7FDC();
}

uint64_t ReplicatorClient.add(records:destination:schedule:)(int *a1, uint64_t *a2, char *a3)
{
  v3 = *a3;
  v7 = *a2;
  v6 = v3;
  v5 = 1;
  return ReplicatorClient.add(records:destination:schedule:invalidRecordResolution:)(a1, &v7, &v6, &v5);
}

uint64_t ReplicatorClient.add(records:destination:schedule:invalidRecordResolution:)(int *a1, uint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = v4;
  v382 = a4;
  v394 = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70, &unk_1BABE9A80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v367 = v328 - v10;
  v11 = sub_1BABE6BAC();
  v345 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v357 = v328 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v328 - v14;
  v366 = type metadata accessor for ReplicatorRecord.Value(0);
  v363 = *(v366 - 8);
  MEMORY[0x1EEE9AC00](v366);
  v362 = v328 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12E08, &unk_1BABF1400);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v375 = (v328 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v372 = v328 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0, &unk_1BABE9C10);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v349 = v328 - v22;
  v351 = sub_1BABE6C8C();
  v344 = *(v351 - 8);
  v23 = MEMORY[0x1EEE9AC00](v351);
  v341 = v328 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v346 = v328 - v25;
  v353 = type metadata accessor for ReplicatorRecord(0);
  *&v343 = *(v353 - 8);
  v26 = MEMORY[0x1EEE9AC00](v353);
  v354 = (v328 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v26);
  v358 = (v328 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v352 = v328 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v348 = (v328 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v337 = v328 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v336 = v328 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v347 = v328 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v356 = (v328 - v41);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v340 = (v328 - v43);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v339 = (v328 - v45);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v338 = (v328 - v47);
  MEMORY[0x1EEE9AC00](v46);
  v49 = v328 - v48;
  v373 = sub_1BABE6CFC();
  v381 = *(v373 - 8);
  v50 = MEMORY[0x1EEE9AC00](v373);
  v350 = (v328 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = MEMORY[0x1EEE9AC00](v50);
  v377 = v328 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v380 = v328 - v54;
  v55 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v374 = v328 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for ReplicatorDevice(0);
  v383 = *(v57 - 1);
  v384 = v57;
  v58 = MEMORY[0x1EEE9AC00](v57);
  v376 = (v328 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = MEMORY[0x1EEE9AC00](v58);
  v379 = v328 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v378 = v328 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v65 = v328 - v64;
  v359 = *a2;
  v342 = *a3;
  v365 = *v382;
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v66 = sub_1BABE72BC();
  v67 = __swift_project_value_buffer(v66, qword_1ED78BBA0);

  v370 = v67;
  v68 = sub_1BABE729C();
  v69 = a1;
  v70 = sub_1BABE790C();
  v71 = os_log_type_enabled(v68, v70);
  v371 = v11;
  v368 = v5;
  v355 = v69;
  if (v71)
  {
    v72 = swift_slowAlloc();
    *v72 = 134349056;
    *(v72 + 4) = *(v69 + 2);

    _os_log_impl(&dword_1BAACF000, v68, v70, "Adding %{public}ld records", v72, 0xCu);
    v73 = v72;
    v5 = v368;
    MEMORY[0x1BFAFE460](v73, -1, -1);
  }

  else
  {
  }

  v74 = v5;
  v75 = v5[7];
  v76 = v74[10];
  __swift_project_boxed_opaque_existential_1(v74 + 4, v75);
  if (((*(v76 + 8))(v75, v76) & 1) == 0)
  {
    v96 = sub_1BABE729C();
    v97 = sub_1BABE78EC();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_1BAACF000, v96, v97, "Client is not registered", v98, 2u);
      MEMORY[0x1BFAFE460](v98, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v99 = 2;
    goto LABEL_26;
  }

  v360 = v15;
  v361 = v49;
  v77 = v74[7];
  v78 = v74[12];
  __swift_project_boxed_opaque_existential_1(v74 + 4, v77);
  v80 = (*(*(v78 + 16) + 8))(v77);
  v81 = *(v80 + 16);
  if (v81)
  {
    v82 = 0;
    v364 = (v381 + 8);
    v382 = MEMORY[0x1E69E7CC0];
    v83 = v384;
    v84 = v374;
    *&v369 = v81;
    while (1)
    {
      if (v82 >= *(v80 + 16))
      {
        goto LABEL_160;
      }

      v88 = (v383[80] + 32) & ~v383[80];
      v89 = *(v383 + 9);
      sub_1BAB4CC18(v80 + v88 + v89 * v82, v65, type metadata accessor for ReplicatorDevice);
      sub_1BAB4CC18(&v65[v83[12]], v84, type metadata accessor for ReplicatorDevice.RelationshipState);
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50, &qword_1BABF0310);
      v91 = (*(*(v90 - 8) + 48))(v84, 4, v90);
      if ((v91 - 2) >= 2)
      {
        if (v91)
        {
          sub_1BAB4A600(v65, type metadata accessor for ReplicatorDevice);
          v85 = type metadata accessor for ReplicatorDevice.RelationshipState;
          v86 = v84;
          goto LABEL_10;
        }

        (*v364)(v84, v373);
      }

      if (v65[v83[14]] != 1)
      {
        sub_1BAB4CBB0(v65, v378, type metadata accessor for ReplicatorDevice);
        v92 = v382;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v393[0] = v92;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BAAFAAE0(0, *(v92 + 2) + 1, 1);
          v92 = *&v393[0];
        }

        v95 = *(v92 + 2);
        v94 = *(v92 + 3);
        if (v95 >= v94 >> 1)
        {
          sub_1BAAFAAE0((v94 > 1), v95 + 1, 1);
          v92 = *&v393[0];
        }

        *(v92 + 2) = v95 + 1;
        v382 = v92;
        sub_1BAB4CBB0(v378, &v92[v88 + v95 * v89], type metadata accessor for ReplicatorDevice);
        v83 = v384;
        v84 = v374;
        v81 = v369;
        goto LABEL_11;
      }

      v85 = type metadata accessor for ReplicatorDevice;
      v86 = v65;
LABEL_10:
      sub_1BAB4A600(v86, v85);
LABEL_11:
      ++v82;
      v87 = v380;
      if (v81 == v82)
      {
        goto LABEL_28;
      }
    }
  }

  v382 = MEMORY[0x1E69E7CC0];
  v83 = v384;
  v87 = v380;
LABEL_28:

  v101 = v382;
  v102 = *(v382 + 2);
  v103 = MEMORY[0x1E69E7CC0];
  if (v102)
  {
    *&v393[0] = MEMORY[0x1E69E7CC0];
    sub_1BAAFABF0(0, v102, 0);
    v103 = *&v393[0];
    v104 = &v101[(v383[80] + 32) & ~v383[80]];
    v380 = *(v383 + 9);
    v105 = (v381 + 16);
    v378 = v381 + 32;
    v106 = v373;
    do
    {
      v107 = v379;
      sub_1BAB4CC18(v104, v379, type metadata accessor for ReplicatorDevice);
      (*v105)(v87, &v107[v83[5]], v106);
      sub_1BAB4A600(v107, type metadata accessor for ReplicatorDevice);
      *&v393[0] = v103;
      v108 = v87;
      v110 = *(v103 + 16);
      v109 = *(v103 + 24);
      if (v110 >= v109 >> 1)
      {
        sub_1BAAFABF0((v109 > 1), v110 + 1, 1);
        v106 = v373;
        v103 = *&v393[0];
      }

      *(v103 + 16) = v110 + 1;
      (*(v381 + 32))(v103 + ((*(v381 + 80) + 32) & ~*(v381 + 80)) + *(v381 + 72) * v110, v108, v106);
      v104 += v380;
      --v102;
      v83 = v384;
      v87 = v108;
    }

    while (v102);
  }

  v111 = sub_1BABE729C();
  v112 = sub_1BABE790C();

  v113 = os_log_type_enabled(v111, v112);
  v82 = v361;
  if (v113)
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    *&v393[0] = v115;
    *v114 = 136380675;
    v116 = MEMORY[0x1BFAFD330](v103, v373);
    v118 = v117;

    v119 = sub_1BAAFA460(v116, v118, v393);

    *(v114 + 4) = v119;
    _os_log_impl(&dword_1BAACF000, v111, v112, "Retrieved paired relationships: %{private}s", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v115);
    MEMORY[0x1BFAFE460](v115, -1, -1);
    MEMORY[0x1BFAFE460](v114, -1, -1);
  }

  else
  {
  }

  v120 = v355;
  v121 = v382;
  v122 = v359;
  if (!v359)
  {

    goto LABEL_47;
  }

  v123 = *(v359 + 16);
  if (!v123)
  {

    v311 = sub_1BABE729C();
    v312 = sub_1BABE78EC();
    if (os_log_type_enabled(v311, v312))
    {
      v313 = swift_slowAlloc();
      *v313 = 0;
      _os_log_impl(&dword_1BAACF000, v311, v312, "No destination relationship IDs specified", v313, 2u);
      MEMORY[0x1BFAFE460](v313, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v99 = 0;
LABEL_26:
    *(v99 + 8) = 0;

    return swift_willThrow();
  }

  v124 = 0;
  v125 = *(v382 + 2);
  v126 = (v359 + ((*(v381 + 80) + 32) & ~*(v381 + 80)));
  v379 = v126;
  v380 = v381 + 8;
  v127 = v373;
  do
  {
    if (v124 >= *(v122 + 16))
    {
      __break(1u);
    }

    v128 = v124 + 1;
    v82 = *(v381 + 16);
    (v82)(v377, &v126[*(v381 + 72) * v124], v127);
    v129 = 0;
    do
    {
      if (v125 == v129)
      {

        v299 = v350;
        v300 = v373;
        (v82)(v350, v377, v373);
        v301 = sub_1BABE729C();
        v302 = sub_1BABE78EC();
        if (os_log_type_enabled(v301, v302))
        {
          v303 = swift_slowAlloc();
          v384 = swift_slowAlloc();
          *&v393[0] = v384;
          *v303 = 136446210;
          sub_1BAB4CC80(&qword_1EBC128F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v304 = sub_1BABE7EAC();
          v305 = v299;
          v307 = v306;
          v308 = *v380;
          (*v380)(v305, v300);
          v309 = sub_1BAAFA460(v304, v307, v393);

          *(v303 + 4) = v309;
          _os_log_impl(&dword_1BAACF000, v301, v302, "Unpaired or unknown destination relationship ID: %{public}s", v303, 0xCu);
          v310 = v384;
          __swift_destroy_boxed_opaque_existential_1(v384);
          MEMORY[0x1BFAFE460](v310, -1, -1);
          MEMORY[0x1BFAFE460](v303, -1, -1);
        }

        else
        {

          v308 = *v380;
          (*v380)(v299, v300);
        }

        sub_1BAB15A08();
        swift_allocError();
        *v314 = 0;
        *(v314 + 8) = 0;

        swift_willThrow();
        return (v308)(v377, v300);
      }

      if (v129 >= *(v121 + 2))
      {
        goto LABEL_161;
      }

      v130 = &v121[((v383[80] + 32) & ~v383[80]) + *(v383 + 9) * v129];
      v131 = v376;
      sub_1BAB4CC18(v130, v376, type metadata accessor for ReplicatorDevice);
      ++v129;
      v132 = sub_1BABE6CCC();
      v133 = v131;
      v121 = v382;
      sub_1BAB4A600(v133, type metadata accessor for ReplicatorDevice);
    }

    while ((v132 & 1) == 0);
    v127 = v373;
    (*v380)(v377, v373);
    v124 = v128;
    v82 = v361;
    v122 = v359;
    v126 = v379;
  }

  while (v128 != v123);

  v120 = v355;
LABEL_47:
  v377 = v120[2];
  if (!v377)
  {
    v315 = MEMORY[0x1E69E7CC0];
LABEL_152:
    v316 = v368[7];
    v317 = v368[16];
    __swift_project_boxed_opaque_existential_1(v368 + 4, v316);
    *&v393[0] = v359;
    LOBYTE(v385) = v342;
    (*(v317 + 24))(v315, v393, &v385, v316, v317);
  }

  v135 = 0;
  v329 = (*(v343 + 80) + 32) & ~*(v343 + 80);
  v136 = v120 + v329;
  v378 = *(v343 + 72);
  v332 = (v344 + 32);
  v334 = (v344 + 8);
  v335 = (v344 + 48);
  v330 = 0x80000001BABF69A0;
  v382 = (v345 + 6);
  v376 = v345 + 4;
  v364 = (v345 + 2);
  v379 = (v345 + 1);
  v344 = *MEMORY[0x1E696A3A0];
  v331 = *MEMORY[0x1E696A378];
  v328[1] = *MEMORY[0x1E696A380];
  v345 = MEMORY[0x1E69E7CC0];
  *&v134 = 136446210;
  v369 = v134;
  *&v134 = 136446722;
  v333 = v134;
  *&v134 = 136446466;
  v343 = v134;
  v373 = v120 + v329;
  while (1)
  {
    v383 = v135;
    sub_1BAB4CC18(&v136[v378 * v135], v82, type metadata accessor for ReplicatorRecord);
    v139 = *(v82 + 32);
    v138 = *(v82 + 40);
    v140 = v368[7];
    v141 = v368[8];
    __swift_project_boxed_opaque_existential_1(v368 + 4, v140);
    (*(v141 + 8))(&v385, v140, v141);
    v393[0] = v385;
    v393[1] = v386;
    v393[2] = v387;
    v393[3] = v388;
    v393[4] = v389;
    v142 = v385;

    sub_1BAB21D34(v393);
    if (__PAIR128__(v138, v139) == v142)
    {
    }

    else
    {
      v143 = sub_1BABE7EDC();

      if ((v143 & 1) == 0)
      {
        v173 = v136;
        v174 = v354;
        sub_1BAB4CC18(v82, v354, type metadata accessor for ReplicatorRecord);
        v175 = sub_1BABE729C();
        v176 = sub_1BABE78EC();
        if (os_log_type_enabled(v175, v176))
        {
          v177 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          *&v391[0] = v178;
          *v177 = v369;
          *&v385 = 0;
          *(&v385 + 1) = 0xE000000000000000;
          sub_1BABE7AEC();
          MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
          v179 = type metadata accessor for ReplicatorRecord.ID(0);
          MEMORY[0x1BFAFD240](*(v174 + *(v179 + 32)), *(v174 + *(v179 + 32) + 8));
          MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
          MEMORY[0x1BFAFD240](v174[2], v174[3]);
          MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
          MEMORY[0x1BFAFD240](v174[4], v174[5]);
          MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
          type metadata accessor for ReplicatorRecord.ID.Ownership(0);
          sub_1BABE7BFC();
          v181 = *(&v385 + 1);
          v180 = v385;
          sub_1BAB4A600(v174, type metadata accessor for ReplicatorRecord);
          v182 = sub_1BAAFA460(v180, v181, v391);
          v137 = v383;
          v82 = v361;
          v136 = v373;

          *(v177 + 4) = v182;
          _os_log_impl(&dword_1BAACF000, v175, v176, "Client ID mismatch: %{public}s", v177, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v178);
          MEMORY[0x1BFAFE460](v178, -1, -1);
          MEMORY[0x1BFAFE460](v177, -1, -1);

          if (v365)
          {
            goto LABEL_153;
          }
        }

        else
        {

          sub_1BAB4A600(v174, type metadata accessor for ReplicatorRecord);
          v136 = v173;
          v137 = v383;
          if (v365)
          {
LABEL_153:

            sub_1BAB15A08();
            swift_allocError();
            *v318 = 0;
            *(v318 + 8) = 0;

            swift_willThrow();
LABEL_154:
            v319 = v82;
            return sub_1BAB4A600(v319, type metadata accessor for ReplicatorRecord);
          }
        }

        goto LABEL_52;
      }
    }

    v144 = v368[7];
    v145 = v368[8];
    __swift_project_boxed_opaque_existential_1(v368 + 4, v144);
    (*(v145 + 8))(v391, v144, v145);
    v388 = v391[3];
    v389 = v392;
    v386 = v391[1];
    v387 = v391[2];
    v385 = v391[0];
    v146 = v392;

    sub_1BAB21D34(&v385);
    if (!*(v146 + 16))
    {

LABEL_62:
      v165 = v136;
      v166 = v358;
      sub_1BAB4CC18(v82, v358, type metadata accessor for ReplicatorRecord);
      v153 = sub_1BABE729C();
      v167 = sub_1BABE78EC();
      if (os_log_type_enabled(v153, v167))
      {
        v155 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v390 = v168;
        *v155 = v369;
        *&v391[0] = 0;
        *(&v391[0] + 1) = 0xE000000000000000;
        sub_1BABE7AEC();
        MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
        v169 = type metadata accessor for ReplicatorRecord.ID(0);
        MEMORY[0x1BFAFD240](*(v166 + *(v169 + 32)), *(v166 + *(v169 + 32) + 8));
        MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
        MEMORY[0x1BFAFD240](v166[2], v166[3]);
        MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
        MEMORY[0x1BFAFD240](v166[4], v166[5]);
        MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
        type metadata accessor for ReplicatorRecord.ID.Ownership(0);
        sub_1BABE7BFC();
        v171 = *(&v391[0] + 1);
        v170 = *&v391[0];
        sub_1BAB4A600(v166, type metadata accessor for ReplicatorRecord);
        v172 = sub_1BAAFA460(v170, v171, &v390);
        v137 = v383;
        v82 = v361;
        v136 = v373;

        *(v155 + 4) = v172;
        _os_log_impl(&dword_1BAACF000, v153, v167, "Zone does not exist: %{public}s", v155, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v168);
        v164 = v168;
        goto LABEL_64;
      }

      sub_1BAB4A600(v166, type metadata accessor for ReplicatorRecord);
      v136 = v165;
LABEL_50:
      v137 = v383;
      goto LABEL_51;
    }

    sub_1BABD5AB4(*(v82 + 16), *(v82 + 24));
    v148 = v147;

    v149 = v372;
    if ((v148 & 1) == 0)
    {
      goto LABEL_62;
    }

    ReplicatorRecord.size.getter();
    if (v150 > 102400)
    {
      v151 = v348;
      sub_1BAB4CC18(v82, v348, type metadata accessor for ReplicatorRecord);
      v152 = v352;
      sub_1BAB4CC18(v82, v352, type metadata accessor for ReplicatorRecord);
      v153 = sub_1BABE729C();
      v154 = sub_1BABE78EC();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        v384 = swift_slowAlloc();
        v390 = v384;
        *v155 = v333;
        *&v391[0] = 0;
        *(&v391[0] + 1) = 0xE000000000000000;
        LODWORD(v381) = v154;
        sub_1BABE7AEC();
        MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
        v156 = type metadata accessor for ReplicatorRecord.ID(0);
        MEMORY[0x1BFAFD240](*(v151 + *(v156 + 32)), *(v151 + *(v156 + 32) + 8));
        MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
        MEMORY[0x1BFAFD240](v151[2], v151[3]);
        MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
        MEMORY[0x1BFAFD240](v151[4], v151[5]);
        MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
        type metadata accessor for ReplicatorRecord.ID.Ownership(0);
        sub_1BABE7BFC();
        v158 = *(&v391[0] + 1);
        v157 = *&v391[0];
        sub_1BAB4A600(v151, type metadata accessor for ReplicatorRecord);
        v159 = sub_1BAAFA460(v157, v158, &v390);
        v137 = v383;

        *(v155 + 4) = v159;
        *(v155 + 12) = 2048;
        *(v155 + 14) = 102400;
        *(v155 + 22) = 2048;
        v160 = v352;
        ReplicatorRecord.size.getter();
        v162 = v161;
        sub_1BAB4A600(v160, type metadata accessor for ReplicatorRecord);
        *(v155 + 24) = v162;
        _os_log_impl(&dword_1BAACF000, v153, v381, "Record exceeds maximum size: %{public}s (max %llu; requested %ld)", v155, 0x20u);
        v163 = v384;
        __swift_destroy_boxed_opaque_existential_1(v384);
        v164 = v163;
LABEL_64:
        MEMORY[0x1BFAFE460](v164, -1, -1);
        MEMORY[0x1BFAFE460](v155, -1, -1);

        goto LABEL_51;
      }

      sub_1BAB4A600(v152, type metadata accessor for ReplicatorRecord);

      sub_1BAB4A600(v151, type metadata accessor for ReplicatorRecord);
      goto LABEL_50;
    }

    v183 = v349;
    sub_1BAAD2DAC(v82 + *(v353 + 28), v349, &qword_1EBC132A0, &unk_1BABE9C10);
    v184 = v351;
    if ((*v335)(v183, 1, v351) == 1)
    {
      sub_1BAAD2E14(v183, &qword_1EBC132A0, &unk_1BABE9C10);
    }

    else
    {
      v185 = v346;
      (*v332)(v346, v183, v184);
      v186 = v341;
      sub_1BABE6C6C();
      v187 = sub_1BABE6C3C();
      v188 = v186;
      v189 = *v334;
      (*v334)(v188, v184);
      if (v187)
      {
        v384 = v189;
        v82 = v361;
        v190 = v338;
        sub_1BAB4CC18(v361, v338, type metadata accessor for ReplicatorRecord);
        v191 = sub_1BABE729C();
        v192 = sub_1BABE78EC();
        if (os_log_type_enabled(v191, v192))
        {
          v193 = swift_slowAlloc();
          v194 = swift_slowAlloc();
          v390 = v194;
          *v193 = v369;
          *&v391[0] = 0;
          *(&v391[0] + 1) = 0xE000000000000000;
          sub_1BABE7AEC();
          MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
          v195 = type metadata accessor for ReplicatorRecord.ID(0);
          MEMORY[0x1BFAFD240](*(v190 + *(v195 + 32)), *(v190 + *(v195 + 32) + 8));
          MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
          MEMORY[0x1BFAFD240](v190[2], v190[3]);
          MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
          MEMORY[0x1BFAFD240](v190[4], v190[5]);
          MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
          type metadata accessor for ReplicatorRecord.ID.Ownership(0);
          sub_1BABE7BFC();
          v196 = v391[0];
          sub_1BAB4A600(v190, type metadata accessor for ReplicatorRecord);
          v197 = sub_1BAAFA460(v196, *(&v196 + 1), &v390);

          *(v193 + 4) = v197;
          _os_log_impl(&dword_1BAACF000, v191, v192, "Record has already expired: %{public}s", v193, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v194);
          MEMORY[0x1BFAFE460](v194, -1, -1);
          MEMORY[0x1BFAFE460](v193, -1, -1);
        }

        else
        {

          sub_1BAB4A600(v190, type metadata accessor for ReplicatorRecord);
        }

        v137 = v383;
        v136 = v373;
        if (v365)
        {
          v324 = v346;
          v325 = v351;

          sub_1BAB15A08();
          swift_allocError();
          *v326 = 0;
          *(v326 + 8) = 0;

          swift_willThrow();
          (v384)(v324, v325);
          goto LABEL_154;
        }

        (v384)(v346, v351);
        goto LABEL_52;
      }

      (v189)(v185, v184);
    }

    v82 = v361;
    v198 = &unk_1EBC12B50;
    if (sub_1BABE75AC() < 1025 || v139 == 0xD000000000000011 && v330 == v138)
    {
      break;
    }

    if (sub_1BABE7EDC())
    {
      break;
    }

    v286 = v336;
    sub_1BAB4CC18(v82, v336, type metadata accessor for ReplicatorRecord);
    v287 = v337;
    sub_1BAB4CC18(v82, v337, type metadata accessor for ReplicatorRecord);
    v288 = sub_1BABE729C();
    v289 = sub_1BABE78EC();
    if (!os_log_type_enabled(v288, v289))
    {
      sub_1BAB4A600(v287, type metadata accessor for ReplicatorRecord);

      sub_1BAB4A600(v286, type metadata accessor for ReplicatorRecord);
      v136 = v373;
      goto LABEL_50;
    }

    v290 = v286;
    v291 = swift_slowAlloc();
    v384 = swift_slowAlloc();
    v390 = v384;
    *v291 = v333;
    *&v391[0] = 0;
    *(&v391[0] + 1) = 0xE000000000000000;
    sub_1BABE7AEC();
    MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
    v292 = type metadata accessor for ReplicatorRecord.ID(0);
    MEMORY[0x1BFAFD240](*(v290 + *(v292 + 32)), *(v290 + *(v292 + 32) + 8));
    MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
    MEMORY[0x1BFAFD240](v290[2], v290[3]);
    MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
    MEMORY[0x1BFAFD240](v290[4], v290[5]);
    MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
    type metadata accessor for ReplicatorRecord.ID.Ownership(0);
    sub_1BABE7BFC();
    v294 = *(&v391[0] + 1);
    v293 = *&v391[0];
    sub_1BAB4A600(v290, type metadata accessor for ReplicatorRecord);
    v295 = sub_1BAAFA460(v293, v294, &v390);
    v137 = v383;

    *(v291 + 4) = v295;
    *(v291 + 12) = 2048;
    *(v291 + 14) = 1024;
    *(v291 + 22) = 2048;
    v296 = v337;
    v297 = sub_1BABE75AC();
    sub_1BAB4A600(v296, type metadata accessor for ReplicatorRecord);
    *(v291 + 24) = v297;
    _os_log_impl(&dword_1BAACF000, v288, v289, "Record ID is too long: %{public}s (max %llu; requested %ld)", v291, 0x20u);
    v298 = v384;
    __swift_destroy_boxed_opaque_existential_1(v384);
    MEMORY[0x1BFAFE460](v298, -1, -1);
    MEMORY[0x1BFAFE460](v291, -1, -1);

    v136 = v373;
LABEL_51:
    if (v365)
    {
      goto LABEL_153;
    }

LABEL_52:
    v135 = v137 + 1;
    sub_1BAB4A600(v82, type metadata accessor for ReplicatorRecord);
    if (v135 == v377)
    {
      v315 = v345;
      goto LABEL_152;
    }
  }

  v199 = *(v82 + *(v353 + 24));
  v200 = v199 + 64;
  v201 = 1 << *(v199 + 32);
  if (v201 < 64)
  {
    v202 = ~(-1 << v201);
  }

  else
  {
    v202 = -1;
  }

  v203 = v202 & *(v199 + 64);
  v374 = ((v201 + 63) >> 6);
  v380 = v199;

  v204 = 0;
  v381 = v200;
  while (v203)
  {
    v205 = v204;
LABEL_96:
    v208 = __clz(__rbit64(v203));
    v209 = ((v203 - 1) & v203);
    v210 = v208 | (v205 << 6);
    v211 = *(*(v380 + 48) + 8 * v210);
    v212 = v362;
    sub_1BAB4CC18(*(v380 + 56) + *(v363 + 72) * v210, v362, type metadata accessor for ReplicatorRecord.Value);
    v213 = __swift_instantiateConcreteTypeFromMangledNameV2(v198, &qword_1BABEAC40);
    v214 = *(v213 + 48);
    v215 = v375;
    *v375 = v211;
    v216 = v215;
    sub_1BAB4CBB0(v212, v215 + v214, type metadata accessor for ReplicatorRecord.Value);
    (*(*(v213 - 8) + 56))(v216, 0, 1, v213);
    v149 = v372;
LABEL_97:
    sub_1BAB23414(v375, v149, &qword_1EBC12E08, &unk_1BABF1400);
    v217 = v198;
    v218 = __swift_instantiateConcreteTypeFromMangledNameV2(v198, &qword_1BABEAC40);
    if ((*(*(v218 - 8) + 48))(v149, 1, v218) == 1)
    {

      v82 = v361;
      sub_1BAB4CC18(v361, v347, type metadata accessor for ReplicatorRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v345 = sub_1BAAF9DD0(0, v345[2] + 1, 1, v345);
      }

      v137 = v383;
      v136 = v373;
      v284 = v345[2];
      v283 = v345[3];
      if (v284 >= v283 >> 1)
      {
        v345 = sub_1BAAF9DD0((v283 > 1), v284 + 1, 1, v345);
      }

      v285 = v345;
      v345[2] = v284 + 1;
      sub_1BAB4CBB0(v347, v285 + v329 + v284 * v378, type metadata accessor for ReplicatorRecord);
      goto LABEL_52;
    }

    v384 = v209;
    v219 = v149 + *(v218 + 48);
    v220 = v367;
    v82 = &unk_1EBC13D70;
    sub_1BAAD2DAC(v219 + *(v366 + 20), v367, &unk_1EBC13D70, &unk_1BABE9A80);
    v221 = v219;
    v222 = v371;
    sub_1BAB4A600(v221, type metadata accessor for ReplicatorRecord.Value);
    if ((*v382)(v220, 1, v222) == 1)
    {
      sub_1BAAD2E14(v220, &unk_1EBC13D70, &unk_1BABE9A80);
      v200 = v381;
      v203 = v384;
      v198 = v217;
      continue;
    }

    v82 = v360;
    (*v376)(v360, v220, v222);
    v223 = objc_opt_self();
    v224 = [v223 defaultManager];
    sub_1BABE6B5C();
    v225 = sub_1BABE74EC();

    v226 = [v224 fileExistsAtPath_];

    if (v226)
    {
      v227 = [v223 defaultManager];
      sub_1BABE6B5C();
      v228 = sub_1BABE74EC();

      *&v391[0] = 0;
      v229 = [v227 attributesOfItemAtPath:v228 error:v391];

      v230 = *&v391[0];
      v203 = v384;
      if (!v229)
      {
        v321 = *&v391[0];

        sub_1BABE6ADC();

        swift_willThrow();

        (*v379)(v360, v371);
        goto LABEL_157;
      }

      type metadata accessor for FileAttributeKey(0);
      sub_1BAB4CC80(&qword_1EBC12428, type metadata accessor for FileAttributeKey, &unk_1BABE97A0);
      v231 = sub_1BABE744C();
      v232 = v230;

      if (!*(v231 + 16) || (v233 = sub_1BABD5DC8(v344), (v234 & 1) == 0))
      {

        (*v379)(v360, v371);
LABEL_111:
        v149 = v372;
        v198 = &unk_1EBC12B50;
        v200 = v381;
        continue;
      }

      sub_1BAAFBEE8(*(v231 + 56) + 32 * v233, v391);

      type metadata accessor for FileProtectionType(0);
      v235 = swift_dynamicCast();
      v149 = v372;
      v198 = &unk_1EBC12B50;
      if ((v235 & 1) == 0)
      {
        (*v379)(v360, v371);
        v200 = v381;
        continue;
      }

      v236 = v390;
      v237 = sub_1BABE751C();
      v239 = v238;
      v240 = sub_1BABE751C();
      v355 = v236;
      if (v237 == v240 && v239 == v241)
      {

        goto LABEL_117;
      }

      v260 = sub_1BABE7EDC();

      if (v260)
      {
LABEL_117:
        v261 = v339;
        sub_1BAB4CC18(v361, v339, type metadata accessor for ReplicatorRecord);
        v262 = sub_1BABE729C();
        v263 = sub_1BABE78EC();
        if (os_log_type_enabled(v262, v263))
        {
          v264 = swift_slowAlloc();
          v350 = swift_slowAlloc();
          v390 = v350;
          *v264 = v369;
          *&v391[0] = 0;
          *(&v391[0] + 1) = 0xE000000000000000;
          sub_1BABE7AEC();
          MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
          v265 = type metadata accessor for ReplicatorRecord.ID(0);
          MEMORY[0x1BFAFD240](*(v261 + *(v265 + 32)), *(v261 + *(v265 + 32) + 8));
          MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
          MEMORY[0x1BFAFD240](v261[2], v261[3]);
          MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
          MEMORY[0x1BFAFD240](v261[4], v261[5]);
          MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
          type metadata accessor for ReplicatorRecord.ID.Ownership(0);
          sub_1BABE7BFC();
          v266 = v391[0];
          sub_1BAB4A600(v261, type metadata accessor for ReplicatorRecord);
          v267 = sub_1BAAFA460(v266, *(&v266 + 1), &v390);

          *(v264 + 4) = v267;
          _os_log_impl(&dword_1BAACF000, v262, v263, "Files with class A protection should not be replicated: %{public}s", v264, 0xCu);
          v268 = v350;
          __swift_destroy_boxed_opaque_existential_1(v350);
          MEMORY[0x1BFAFE460](v268, -1, -1);
          MEMORY[0x1BFAFE460](v264, -1, -1);
        }

        else
        {

          sub_1BAB4A600(v261, type metadata accessor for ReplicatorRecord);
        }

        v79 = v371;
        v149 = v372;
        v198 = &unk_1EBC12B50;
        v200 = v381;
        v82 = v355;
        if (v365)
        {
          goto LABEL_162;
        }

        (*v379)(v360, v371);
      }

      else
      {
        v269 = sub_1BABE751C();
        v271 = v270;
        if (v269 == sub_1BABE751C() && v271 == v272)
        {

          v273 = v340;
        }

        else
        {
          v274 = sub_1BABE7EDC();

          v273 = v340;
          if ((v274 & 1) == 0)
          {
            (*v379)(v360, v371);

            goto LABEL_111;
          }
        }

        sub_1BAB4CC18(v361, v273, type metadata accessor for ReplicatorRecord);
        v275 = sub_1BABE729C();
        v276 = sub_1BABE78EC();
        if (os_log_type_enabled(v275, v276))
        {
          v277 = swift_slowAlloc();
          v350 = swift_slowAlloc();
          v390 = v350;
          *v277 = v369;
          *&v391[0] = 0;
          *(&v391[0] + 1) = 0xE000000000000000;
          sub_1BABE7AEC();
          MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
          v278 = type metadata accessor for ReplicatorRecord.ID(0);
          MEMORY[0x1BFAFD240](*(v340 + *(v278 + 32)), *(v340 + *(v278 + 32) + 8));
          MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
          MEMORY[0x1BFAFD240](v340[2], v340[3]);
          MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
          MEMORY[0x1BFAFD240](v340[4], v340[5]);
          MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
          v279 = v340;
          type metadata accessor for ReplicatorRecord.ID.Ownership(0);
          sub_1BABE7BFC();
          v280 = v391[0];
          sub_1BAB4A600(v279, type metadata accessor for ReplicatorRecord);
          v281 = sub_1BAAFA460(v280, *(&v280 + 1), &v390);

          *(v277 + 4) = v281;
          _os_log_impl(&dword_1BAACF000, v275, v276, "Files with class B protection should not be replicated: %{public}s", v277, 0xCu);
          v282 = v350;
          __swift_destroy_boxed_opaque_existential_1(v350);
          MEMORY[0x1BFAFE460](v282, -1, -1);
          MEMORY[0x1BFAFE460](v277, -1, -1);
        }

        else
        {

          sub_1BAB4A600(v273, type metadata accessor for ReplicatorRecord);
        }

        v82 = v371;
        v149 = v372;
        v198 = &unk_1EBC12B50;
        v200 = v381;
        if (v365)
        {

          sub_1BAB15A08();
          swift_allocError();
          *v327 = 0;
          *(v327 + 8) = 0;

          swift_willThrow();

          (*v379)(v360, v82);
          goto LABEL_157;
        }

        (*v379)(v360, v371);
      }
    }

    else
    {
      v242 = v357;
      (*v364)(v357, v82, v222);
      v243 = v356;
      sub_1BAB4CC18(v361, v356, type metadata accessor for ReplicatorRecord);
      v244 = sub_1BABE729C();
      v245 = sub_1BABE78EC();
      v246 = os_log_type_enabled(v244, v245);
      v203 = v384;
      if (v246)
      {
        v247 = swift_slowAlloc();
        v355 = swift_slowAlloc();
        v390 = v355;
        *v247 = v343;
        sub_1BAB4CC80(&qword_1EBC12E10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        LODWORD(v350) = v245;
        v248 = sub_1BABE7EAC();
        v250 = v249;
        v251 = v242;
        v252 = *v379;
        (*v379)(v251, v371);
        v253 = sub_1BAAFA460(v248, v250, &v390);

        *(v247 + 4) = v253;
        *(v247 + 12) = 2082;
        *&v391[0] = 0;
        *(&v391[0] + 1) = 0xE000000000000000;
        sub_1BABE7AEC();
        MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
        v254 = type metadata accessor for ReplicatorRecord.ID(0);
        MEMORY[0x1BFAFD240](*(v243 + *(v254 + 32)), *(v243 + *(v254 + 32) + 8));
        MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
        MEMORY[0x1BFAFD240](v243[2], v243[3]);
        MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
        MEMORY[0x1BFAFD240](v243[4], v243[5]);
        MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
        type metadata accessor for ReplicatorRecord.ID.Ownership(0);
        sub_1BABE7BFC();
        v255 = v391[0];
        sub_1BAB4A600(v243, type metadata accessor for ReplicatorRecord);
        v256 = sub_1BAAFA460(v255, *(&v255 + 1), &v390);

        *(v247 + 14) = v256;
        _os_log_impl(&dword_1BAACF000, v244, v350, "File at path %{public}s does not exist: %{public}s", v247, 0x16u);
        v257 = v355;
        swift_arrayDestroy();
        MEMORY[0x1BFAFE460](v257, -1, -1);
        v82 = v371;
        MEMORY[0x1BFAFE460](v247, -1, -1);
      }

      else
      {

        sub_1BAB4A600(v243, type metadata accessor for ReplicatorRecord);
        v259 = v242;
        v252 = *v379;
        v82 = v222;
        (*v379)(v259, v222);
      }

      v198 = &unk_1EBC12B50;
      v200 = v381;
      v149 = v372;
      if (v365)
      {

        sub_1BAB15A08();
        swift_allocError();
        *v320 = 0;
        *(v320 + 8) = 0;

        swift_willThrow();

        v252(v360, v82);
        goto LABEL_157;
      }

      v252(v360, v82);
    }
  }

  if (v374 <= v204 + 1)
  {
    v206 = (v204 + 1);
  }

  else
  {
    v206 = v374;
  }

  v207 = v206 - 1;
  while (1)
  {
    v205 = v204 + 1;
    if (__OFADD__(v204, 1))
    {
      break;
    }

    if (v205 >= v374)
    {
      v258 = __swift_instantiateConcreteTypeFromMangledNameV2(v198, &qword_1BABEAC40);
      (*(*(v258 - 8) + 56))(v375, 1, 1, v258);
      v209 = 0;
      v204 = v207;
      goto LABEL_97;
    }

    v203 = *(v200 + 8 * v205);
    ++v204;
    if (v203)
    {
      v204 = v205;
      goto LABEL_96;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  v322 = v79;

  sub_1BAB15A08();
  swift_allocError();
  *v323 = 0;
  *(v323 + 8) = 0;

  swift_willThrow();

  (*v379)(v360, v322);
LABEL_157:
  v319 = v361;
  return sub_1BAB4A600(v319, type metadata accessor for ReplicatorRecord);
}