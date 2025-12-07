uint64_t sub_29EAC0ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5C8, &qword_29EB16CE0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v26 = v23 - v6;
  v7 = sub_29EB1418C();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29EB1458C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  (*(v12 + 16))(v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = sub_29EB1475C();
  if (v15)
  {
    v16 = *(v8 + 16);
    v23[1] = v14;
    v25 = v7;
    v16(v10, a2, v7);
    v17 = sub_29EB1422C();
    v23[0] = a2;
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v24 = a1;
    v20 = v27;
    v19(v26, 1, 1, v17);
    sub_29EB1420C();
    (*(v8 + 8))(v23[0], v25);
    (*(v12 + 8))(v24, v11);
    return (v19)(v20, 0, 1, v18);
  }

  else
  {
    (*(v8 + 8))(a2, v7);
    (*(v12 + 8))(a1, v11);
    v22 = sub_29EB1422C();
    return (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  }
}

uint64_t sub_29EAC0DE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MigrationExtensionConfiguration(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_29EAC0E2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29EAC0E74(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_29EAC0F3C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

unint64_t ArchiveCompressionScheme.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_29EAC1028()
{
  result = qword_2A187A940;
  if (!qword_2A187A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A940);
  }

  return result;
}

unint64_t sub_29EAC1080()
{
  result = qword_2A187A948;
  if (!qword_2A187A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A948);
  }

  return result;
}

uint64_t sub_29EAC10D4()
{
  v1 = *v0;
  sub_29EB14F8C();
  MEMORY[0x29EDA7610](v1);
  return sub_29EB14FAC();
}

uint64_t sub_29EAC111C(uint64_t a1)
{
  v2 = *v1;
  sub_29EB14F8C();
  MEMORY[0x29EDA7610](v2);
  return sub_29EB14FAC();
}

unint64_t *sub_29EAC1160@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_29EAC124C()
{
  result = qword_2A187A950;
  if (!qword_2A187A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A950);
  }

  return result;
}

unint64_t sub_29EAC12A0()
{
  result = qword_2A187A958;
  if (!qword_2A187A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A958);
  }

  return result;
}

_BYTE *sub_29EAC13A4()
{
  v2 = sub_29EB146EC();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[3] = &type metadata for _t_Preflight;
  v16[4] = sub_29EAA88D4();
  v5 = swift_allocObject();
  v16[0] = v5;
  v6 = *(v0 + 80);
  *(v5 + 80) = *(v0 + 64);
  *(v5 + 96) = v6;
  *(v5 + 112) = *(v0 + 96);
  *(v5 + 128) = *(v0 + 112);
  v7 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v7;
  v8 = *(v0 + 48);
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 64) = v8;
  sub_29EB1408C();
  swift_allocObject();
  sub_29EAA95D8(v0, v15);
  sub_29EB1407C();
  sub_29EAACFBC();
  v9 = sub_29EB1406C();
  if (v1)
  {
    sub_29EAAD4D8(v16);

    return v4;
  }

  v11 = v9;
  v12 = v10;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v14)
  {
    v4 = result;
    sub_29EAAD4D8(v16);
    sub_29EAAD010(v11, v12);
    return v4;
  }

  __break(1u);
  return result;
}

_BYTE *sub_29EAC1538()
{
  v2 = sub_29EB146EC();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15[3] = &type metadata for _t_StreamRepeated;
  v15[4] = sub_29EAB622C();
  v5 = swift_allocObject();
  v15[0] = v5;
  v6 = v0[1];
  v5[1] = *v0;
  v5[2] = v6;
  v5[3] = v0[2];
  sub_29EB1408C();
  swift_allocObject();
  sub_29EAC3C50(v0, v14);
  sub_29EB1407C();
  sub_29EAACFBC();
  v7 = sub_29EB1406C();
  if (v1)
  {
    sub_29EAAD4D8(v15);

    return v4;
  }

  v9 = v7;
  v10 = v8;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v12)
  {
    v4 = result;
    sub_29EAAD4D8(v15);
    sub_29EAAD010(v9, v10);
    return v4;
  }

  __break(1u);
  return result;
}

char *sub_29EAC16B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v11 = sub_29EB146EC();
  v12 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v23[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[3] = a4;
  v15 = a5(v12);
  v23[0] = a1;
  v23[1] = a2;
  v23[4] = v15;
  v23[2] = a3;
  sub_29EB1408C();
  swift_allocObject();
  sub_29EB1407C();
  sub_29EAACFBC();
  v16 = sub_29EB1406C();
  if (v5)
  {
    sub_29EAAD4D8(v23);

    return v14;
  }

  v18 = v16;
  v19 = v17;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v21)
  {
    v14 = result;
    sub_29EAAD4D8(v23);
    sub_29EAAD010(v18, v19);
    return v14;
  }

  __break(1u);
  return result;
}

char *sub_29EAC1818(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_29EB146EC();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[3] = &type metadata for _t_ArchiveRepeatedFiles;
  v20[4] = sub_29EAC3ACC();
  v12 = swift_allocObject();
  v20[0] = v12;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  sub_29EB1408C();
  swift_allocObject();
  sub_29EAB0308(a3, a4);
  sub_29EB1407C();
  sub_29EAACFBC();
  v13 = sub_29EB1406C();
  if (v4)
  {
    sub_29EAAD4D8(v20);

    return v11;
  }

  v15 = v13;
  v16 = v14;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v18)
  {
    v11 = result;
    sub_29EAAD4D8(v20);
    sub_29EAAD010(v15, v16);
    return v11;
  }

  __break(1u);
  return result;
}

_BYTE *sub_29EAC199C(char a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = sub_29EB146EC();
  v8 = MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v19 = a2;
  v20 = a3(v8);
  v18[0] = a1;
  sub_29EB1408C();
  swift_allocObject();
  sub_29EB1407C();
  sub_29EAACFBC();
  v11 = sub_29EB1406C();
  if (v3)
  {
    sub_29EAAD4D8(v18);

    return v10;
  }

  v13 = v11;
  v14 = v12;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v16)
  {
    v10 = result;
    sub_29EAAD4D8(v18);
    sub_29EAAD010(v13, v14);
    return v10;
  }

  __break(1u);
  return result;
}

_BYTE *sub_29EAC1AEC(unint64_t a1)
{
  v2 = a1;
  v3 = HIDWORD(a1);
  v4 = sub_29EB146EC();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = &type metadata for _t_ThrowsPosixError;
  v17 = sub_29EAC397C();
  v14[0] = v2;
  v15 = v3;
  sub_29EB1408C();
  swift_allocObject();
  sub_29EB1407C();
  sub_29EAACFBC();
  v7 = sub_29EB1406C();
  if (v1)
  {
    sub_29EAAD4D8(v14);

    return v6;
  }

  v9 = v7;
  v10 = v8;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v12)
  {
    v6 = result;
    sub_29EAAD4D8(v14);
    sub_29EAAD010(v9, v10);
    return v6;
  }

  __break(1u);
  return result;
}

_BYTE *sub_29EAC1C40(char a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_29EB146EC();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v20 = &type metadata for _t_ThrowsGenericError;
  v21 = sub_29EAC3928();
  v17[0] = a1;
  v18 = a2;
  v19 = a3;
  sub_29EB1408C();
  swift_allocObject();

  sub_29EB1407C();
  sub_29EAACFBC();
  v10 = sub_29EB1406C();
  if (v3)
  {
    sub_29EAAD4D8(v17);

    return v9;
  }

  v12 = v10;
  v13 = v11;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v15)
  {
    v9 = result;
    sub_29EAAD4D8(v17);
    sub_29EAAD010(v12, v13);
    return v9;
  }

  __break(1u);
  return result;
}

char *_t_MigrationInjectionMessage.jsonString.getter(uint64_t a1, uint64_t a2)
{
  v6 = sub_29EB146EC();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = a1;
  v17[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v2, a1);
  sub_29EB1408C();
  swift_allocObject();
  sub_29EB1407C();
  sub_29EAACFBC();
  v10 = sub_29EB1406C();
  if (v3)
  {
    sub_29EAAD4D8(v17);

    return v8;
  }

  v12 = v10;
  v13 = v11;

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v15)
  {
    v8 = result;
    sub_29EAAD4D8(v17);
    sub_29EAAD010(v12, v13);
    return v8;
  }

  __break(1u);
  return result;
}

char *_t_MigrationInjectionMessageWrapper.jsonString.getter()
{
  v1 = sub_29EB146EC();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EB1408C();
  swift_allocObject();
  sub_29EB1407C();
  sub_29EAACFBC();
  v4 = sub_29EB1406C();
  v6 = v5;

  if (v0)
  {
    return v3;
  }

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v8)
  {
    v3 = result;
    sub_29EAAD010(v4, v6);
    return v3;
  }

  __break(1u);
  return result;
}

char *sub_29EAC20BC()
{
  if (qword_2A187A340 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1881300;
  v1 = qword_2A187A338;

  if (v1 != -1)
  {
    swift_once();
  }

  sub_29EAC3D60(v2);
  if (qword_2A187A2F8 != -1)
  {
    swift_once();
  }

  sub_29EAC3D60(v3);
  if (qword_2A187A2D0 != -1)
  {
    swift_once();
  }

  result = sub_29EAC3D60(v4);
  off_2A187A960 = v0;
  return result;
}

uint64_t _t_allMigrationInjectionMessages.getter()
{
  if (qword_2A187A320 != -1)
  {
    swift_once();
  }
}

uint64_t sub_29EAC2280()
{
  swift_getMetatypeMetadata();
  v0 = sub_29EB146FC();
  v2 = v1;
  if ((sub_29EB1479C() & 1) == 0)
  {
    return v0;
  }

  v3 = sub_29EAC2420(0x30007uLL, v0, v2);
  v5 = v4 >> 14;
  if (v4 >> 14 == v3 >> 14)
  {

    return v0;
  }

  sub_29EB14B8C();

  v6 = sub_29EB14B7C();

  if (v5 >= v6 >> 14)
  {
    sub_29EB14B9C();

    v8 = sub_29EB1465C();

    sub_29EAC3D0C();
    sub_29EB1476C();

    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_29EAC2420(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_29EB147BC();
  }

  __break(1u);
  return result;
}

unint64_t sub_29EAC246C()
{
  v0 = sub_29EAC2280();

  return _t_MigrationInjectionCodingKey.init(stringValue:)(*&v0);
}

AppMigrationKit::_t_MigrationInjectionCodingKey __swiftcall _t_MigrationInjectionCodingKey.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = qword_2A187A320;

  if (v5 != -1)
  {
LABEL_15:
    swift_once();
  }

  v6 = 0;
  v7 = off_2A187A960;
  v8 = *(off_2A187A960 + 2);
  v9 = off_2A187A960 + 32;
  while (1)
  {
    v10 = v6;
    if (v8 == v6)
    {
      v14 = 0;
      goto LABEL_13;
    }

    if (v6 >= v7[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    if (sub_29EAC2280() == countAndFlagsBits && v11 == object)
    {
      break;
    }

    v13 = sub_29EB14EBC();

    v9 += 16;
    v6 = v10 + 1;
    if (v13)
    {
      v14 = v10;
      goto LABEL_13;
    }
  }

  v14 = v10;
LABEL_13:

  *v4 = countAndFlagsBits;
  *(v4 + 8) = object;
  *(v4 + 16) = v14;
  *(v4 + 24) = v8 == v10;
  result.intValue.value = v17;
  result.stringValue._object = v16;
  result.stringValue._countAndFlagsBits = v15;
  result.intValue.is_nil = v18;
  return result;
}

uint64_t _t_MigrationInjectionCodingKey.stringValue.getter()
{
  v1 = *v0;

  return v1;
}

void __swiftcall _t_MigrationInjectionCodingKey.init(intValue:)(AppMigrationKit::_t_MigrationInjectionCodingKey_optional *__return_ptr retstr, Swift::Int intValue)
{
  if (qword_2A187A320 == -1)
  {
    if ((intValue & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  swift_once();
  if (intValue < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(off_2A187A960 + 2) > intValue)
  {
    v4._countAndFlagsBits = sub_29EAC2280();
    _t_MigrationInjectionCodingKey.init(stringValue:)(v4);
    retstr->value.stringValue._countAndFlagsBits = v5;
    retstr->value.stringValue._object = v6;
    retstr->value.intValue.value = intValue;
    retstr->value.intValue.is_nil = 0;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_29EAC26D0()
{
  v1 = *v0;

  return v1;
}

double sub_29EAC2700@<D0>(Swift::String a1@<X1:X0>, uint64_t a2@<X8>)
{
  _t_MigrationInjectionCodingKey.init(stringValue:)(a1);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_29EAC2758(uint64_t a1)
{
  v2 = sub_29EAC2AE8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAC2794(uint64_t a1)
{
  v2 = sub_29EAC2AE8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t _t_MigrationInjectionMessageWrapper.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A968, &qword_29EB17920);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAC2AE8();
  sub_29EB14FEC();
  if (!v2)
  {
    v27 = v6;
    v15 = a2;
    if (qword_2A187A320 != -1)
    {
      swift_once();
    }

    if (*(off_2A187A960 + 2))
    {
      v16 = *(off_2A187A960 + 2);
      v9._countAndFlagsBits = sub_29EAC2280();
      _t_MigrationInjectionCodingKey.init(stringValue:)(v9);
      v17 = v20;
      v18 = v21;
      v19 = v22;
      *(&v23[1] + 8) = v16;
      __swift_allocate_boxed_opaque_existential_0(v23);
      sub_29EB14DFC();

      (*(v27 + 8))(v8, v5);
      sub_29EAADE9C(v23, v24);
      sub_29EAADE9C(v24, v25);
      v11 = v25[1];
      v12 = v15;
      *v15 = v25[0];
      v12[1] = v11;
      *(v12 + 4) = v26;
    }

    else
    {
      sub_29EABCDBC();
      swift_allocError();
      *v10 = 0xD000000000000010;
      v10[1] = 0x800000029EB1BD50;
      v10[2] = 0;
      swift_willThrow();
      (*(v27 + 8))(v8, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_29EAC2AE8()
{
  result = qword_2A187A970;
  if (!qword_2A187A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A970);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x29EDA8150);
  }

  return result;
}

uint64_t sub_29EAC2B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A978, &qword_29EB17928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _t_MigrationInjectionMessageWrapper.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A980, &qword_29EB17930);
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v10[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAC2AE8();
  sub_29EB14FFC();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_29EAAD474(v2, v16);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v16);
  v8._countAndFlagsBits = sub_29EAC2280();
  _t_MigrationInjectionCodingKey.init(stringValue:)(v8);
  *&v10[8] = v13;
  v11 = v14;
  v12 = v15;
  sub_29EB14E6C();

  return (*(v5 + 8))(v7, v4);
}

char *_t_MigrationInjectionControlMessage.jsonString.getter()
{
  v1 = sub_29EB146EC();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EB1408C();
  swift_allocObject();
  sub_29EB1407C();
  sub_29EAC2EF4();
  v4 = sub_29EB1406C();
  v6 = v5;

  if (v0)
  {
    return v3;
  }

  sub_29EB146DC();
  result = sub_29EB146CC();
  if (v8)
  {
    v3 = result;
    sub_29EAAD010(v4, v6);
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_29EAC2EF4()
{
  result = qword_2A187A988;
  if (!qword_2A187A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A988);
  }

  return result;
}

uint64_t _t_MigrationInjectionControlMessage.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_29EB14D8C();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_29EAC2FB0()
{
  result = qword_2A187A990;
  if (!qword_2A187A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A990);
  }

  return result;
}

unint64_t sub_29EAC3008()
{
  result = qword_2A187A998;
  if (!qword_2A187A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A998);
  }

  return result;
}

unint64_t sub_29EAC3068()
{
  result = qword_2A187A9A0;
  if (!qword_2A187A9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9A0);
  }

  return result;
}

uint64_t sub_29EAC30BC()
{
  sub_29EB14F8C();
  sub_29EB1473C();
  return sub_29EB14FAC();
}

uint64_t sub_29EAC3120(uint64_t a1)
{
  sub_29EB14F8C();
  sub_29EB1473C();
  return sub_29EB14FAC();
}

uint64_t sub_29EAC316C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_29EB14D8C();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_29EAC328C()
{
  result = qword_2A187A9A8;
  if (!qword_2A187A9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A187A9B0, &qword_29EB17B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9A8);
  }

  return result;
}

uint64_t dispatch thunk of _t_MigrationInjectionMessage.perform(operation:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_29EAAAE5C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of _t_MigrationInjectionMessage.perform(operation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EAB73B4;

  return v9(a1, a2, a3);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_29EAC35A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_29EAC35F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29EAC3658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_29EAC36A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _t_MigrationInjectionControlMessage(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for _t_MigrationInjectionControlMessage(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_29EAC3928()
{
  result = qword_2A187A9B8;
  if (!qword_2A187A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9B8);
  }

  return result;
}

unint64_t sub_29EAC397C()
{
  result = qword_2A187A9C0;
  if (!qword_2A187A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9C0);
  }

  return result;
}

unint64_t sub_29EAC39D0()
{
  result = qword_2A187A9C8;
  if (!qword_2A187A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9C8);
  }

  return result;
}

unint64_t sub_29EAC3A24()
{
  result = qword_2A187A9D0;
  if (!qword_2A187A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9D0);
  }

  return result;
}

unint64_t sub_29EAC3A78()
{
  result = qword_2A187A9D8;
  if (!qword_2A187A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9D8);
  }

  return result;
}

unint64_t sub_29EAC3ACC()
{
  result = qword_2A187A9E0;
  if (!qword_2A187A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9E0);
  }

  return result;
}

uint64_t sub_29EAC3B20()
{
  sub_29EAAD010(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

unint64_t sub_29EAC3B58()
{
  result = qword_2A187A9E8;
  if (!qword_2A187A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9E8);
  }

  return result;
}

unint64_t sub_29EAC3BAC()
{
  result = qword_2A187A9F0;
  if (!qword_2A187A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9F0);
  }

  return result;
}

uint64_t sub_29EAC3C00()
{

  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    sub_29EAAD010(*(v0 + 48), v1);
  }

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29EAC3CAC()
{
  if (*(v0 + 48))
  {
  }

  if (*(v0 + 104))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 136, 7);
}

unint64_t sub_29EAC3D0C()
{
  result = qword_2A187A9F8;
  if (!qword_2A187A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A9F8);
  }

  return result;
}

char *sub_29EAC3D60(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_29EAAD300(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[16 * v7 + 32], v6 + 32, 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of BrowserDataImporting.importBrowserData(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EAAAE5C;

  return v9(a1, a2, a3);
}

uint64_t DeviceToDeviceTransferMetrics.init(estimatedSize:actualSize:usesCustomProgress:compressedSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  *(a6 + 40) = 0;
  return result;
}

uint64_t DeviceToDeviceTransferMetrics.init(estimatedSize:actualSize:usesCustomProgress:compressedSize:duration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5 & 1;
  *(a7 + 40) = a6;
  return result;
}

__n128 DeviceToDeviceTransferMetrics.XPCHelper.deviceToDeviceTransferMetrics.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 16);
  v3 = *(v1 + OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 24);
  v4 = *(v1 + OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 32);
  v5 = *(v1 + OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 40);
  result = *(v1 + OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u64[1] = v3;
  a1[2].n128_u8[0] = v4;
  a1[2].n128_u64[1] = v5;
  return result;
}

void sub_29EAC4038(void *a1)
{
  v3 = v1 + OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics;
  v4 = sub_29EB14FCC();
  v5 = sub_29EB1467C();
  [a1 encodeObject:v4 forKey:v5];

  v6 = sub_29EB14FCC();
  v7 = sub_29EB1467C();
  [a1 encodeObject:v6 forKey:v7];

  v8 = *(v3 + 16);
  v9 = sub_29EB1467C();
  [a1 encodeBool:v8 forKey:v9];

  if (*(v3 + 32))
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_29EB14FCC();
  }

  v11 = sub_29EB1467C();
  [a1 encodeObject:v10 forKey:v11];

  v12 = sub_29EB14FCC();
  v13 = sub_29EB1467C();
  [a1 encodeObject:v12 forKey:v13];
}

id DeviceToDeviceTransferMetrics.XPCHelper.init(coder:)(void *a1)
{
  sub_29EAC44F8();
  v2 = sub_29EB14B3C();
  if (v2)
  {
    v5 = 0;
    v3 = v2;
    sub_29EB14FDC();
  }

  type metadata accessor for DeviceToDeviceTransferMetrics.XPCHelper();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_29EAC44F8()
{
  result = qword_2A187AD40;
  if (!qword_2A187AD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A187AD40);
  }

  return result;
}

id DeviceToDeviceTransferMetrics.XPCHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceToDeviceTransferMetrics.XPCHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceToDeviceTransferMetrics.XPCHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29EAC4658(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29EAC46AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t MigrationDataContainer.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MigrationDataContainer.containerRootDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MigrationDataContainer(0) + 20);
  v4 = sub_29EB1422C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MigrationDataContainer(uint64_t a1)
{
  result = qword_2A187AA08;
  if (!qword_2A187AA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MigrationDataContainer.documentsDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MigrationDataContainer(0) + 24);
  v4 = sub_29EB1422C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MigrationDataContainer.documentsDirectory.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MigrationDataContainer(0) + 24);
  v4 = sub_29EB1422C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MigrationDataContainer.applicationSupportDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MigrationDataContainer(0) + 28);
  v4 = sub_29EB1422C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MigrationDataContainer.applicationSupportDirectory.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MigrationDataContainer(0) + 28);
  v4 = sub_29EB1422C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_29EAC4AF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29EB1422C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29EAC4BB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_29EB1422C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29EAC4C5C(uint64_t a1)
{
  result = sub_29EB1422C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29EAC4CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAC4D0C, 0, 0);
}

uint64_t sub_29EAC4D0C()
{
  v25 = v0;
  v1 = (*(v0 + 96) + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID);
  v2 = *v1;
  *(v0 + 104) = *v1;
  v3 = v1[1];
  *(v0 + 112) = v3;
  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v4 = sub_29EB1454C();
  *(v0 + 120) = __swift_project_value_buffer(v4, qword_2A187A840);

  v5 = sub_29EB1452C();
  v6 = sub_29EB14A4C();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_29EABC674(v8, v7, &v24);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_29EABC674(v2, v3, &v24);
    _os_log_impl(&dword_29EAA5000, v5, v6, "Starting to %s for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v10, -1, -1);
    MEMORY[0x29EDA8150](v9, -1, -1);
  }

  v11 = *(v0 + 96);
  v13 = *(v0 + 64);
  v12 = *(v0 + 72);
  v15 = *(v0 + 48);
  v14 = *(v0 + 56);
  type metadata accessor for ForceCancellationTracker();
  swift_allocObject();

  v23 = *(v0 + 80);
  v17 = sub_29EABD970(v16);
  *(v0 + 128) = v17;
  v18 = swift_task_alloc();
  *(v0 + 136) = v18;
  *(v18 + 16) = v11;
  *(v18 + 24) = v15;
  *(v18 + 32) = v14;
  *(v18 + 40) = v2;
  *(v18 + 48) = v3;
  *(v18 + 56) = v23;
  *(v18 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 144) = v19;
  v19[2] = v13;
  v19[3] = v12;
  v19[4] = v17;
  v19[5] = v15;
  v19[6] = v14;
  v19[7] = v2;
  v19[8] = v3;
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA78, qword_29EB17F60);
  *(v0 + 160) = v21;
  *v20 = v0;
  v20[1] = sub_29EAC5018;

  return MEMORY[0x2A1C73C78](v0 + 16, &unk_29EB17F58, v18, sub_29EACDD94, v19, 0, 0, v21);
}

uint64_t sub_29EAC5018()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_29EAC534C;
  }

  else
  {

    v2 = sub_29EAC513C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAC513C()
{
  v19 = v0;
  sub_29EABE608();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = sub_29EB1452C();
  v4 = sub_29EB14A4C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v17 = *(v0 + 112);
    v6 = v1;
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315650;
    v11 = v8;
    v1 = v6;
    *(v9 + 4) = sub_29EABC674(v7, v11, &v18);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_29EABC674(v5, v17, &v18);
    *(v9 + 22) = 2080;
    *(v0 + 32) = v6;
    *(v0 + 40) = v2;
    v12 = sub_29EB146FC();
    v14 = sub_29EABC674(v12, v13, &v18);

    *(v9 + 24) = v14;
    _os_log_impl(&dword_29EAA5000, v3, v4, "Finished %s for %s -- %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v10, -1, -1);
    MEMORY[0x29EDA8150](v9, -1, -1);
  }

  else
  {
  }

  sub_29EABECB0(*(v0 + 64));
  v15 = *(v0 + 8);

  return v15(v1, v2);
}

uint64_t sub_29EAC534C()
{
  v20 = v0;
  v1 = v0[21];

  sub_29EABE608();

  v2 = v1;
  v3 = sub_29EB1452C();
  v4 = sub_29EB14A5C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = v0[14];
    v18 = v0[13];
    v7 = v0[6];
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_29EABC674(v7, v8, v19);
    *(v9 + 12) = 2080;
    v12 = sub_29EABC674(v18, v6, v19);

    *(v9 + 14) = v12;
    *(v9 + 22) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v14;
    *v10 = v14;
    _os_log_impl(&dword_29EAA5000, v3, v4, "Failed to %s for %s -- %@", v9, 0x20u);
    sub_29EABCCEC(v10, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v11, -1, -1);
    MEMORY[0x29EDA8150](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[8];
  swift_willThrow();

  sub_29EABECB0(v15);
  v16 = v0[1];

  return v16();
}

uint64_t sub_29EAC55A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[7] = a7;
  v8[8] = v7;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  return MEMORY[0x2A1C73D48](sub_29EAC55CC, 0, 0);
}

uint64_t sub_29EAC55CC()
{
  v25 = v0;
  v1 = (*(v0 + 64) + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID);
  v2 = *v1;
  *(v0 + 72) = *v1;
  v3 = v1[1];
  *(v0 + 80) = v3;
  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v4 = sub_29EB1454C();
  *(v0 + 88) = __swift_project_value_buffer(v4, qword_2A187A840);

  v5 = sub_29EB1452C();
  v6 = sub_29EB14A4C();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_29EABC674(v8, v7, &v24);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_29EABC674(v2, v3, &v24);
    _os_log_impl(&dword_29EAA5000, v5, v6, "Starting to %s for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v10, -1, -1);
    MEMORY[0x29EDA8150](v9, -1, -1);
  }

  v11 = *(v0 + 64);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  type metadata accessor for ForceCancellationTracker();
  swift_allocObject();

  v23 = *(v0 + 48);
  v17 = sub_29EABD970(v16);
  *(v0 + 96) = v17;
  v18 = swift_task_alloc();
  *(v0 + 104) = v18;
  *(v18 + 16) = v11;
  *(v18 + 24) = v15;
  *(v18 + 32) = v14;
  *(v18 + 40) = v2;
  *(v18 + 48) = v3;
  *(v18 + 56) = v23;
  *(v18 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 112) = v19;
  v19[2] = v13;
  v19[3] = v12;
  v19[4] = v17;
  v19[5] = v15;
  v19[6] = v14;
  v19[7] = v2;
  v19[8] = v3;
  v20 = swift_task_alloc();
  *(v0 + 120) = v20;
  *v20 = v0;
  v20[1] = sub_29EAC58C0;
  v21 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C78](v20, &unk_29EB17F28, v18, sub_29EACDD94, v19, 0, 0, v21);
}

uint64_t sub_29EAC58C0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_29EACDDCC;
  }

  else
  {

    v2 = sub_29EACDD8C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAC59E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[89] = v7;
  v8[88] = a7;
  v8[87] = a6;
  v8[86] = a5;
  v8[85] = a4;
  v8[84] = a3;
  v8[83] = a2;
  v8[82] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAC5A20, 0, 0);
}

uint64_t sub_29EAC5A20()
{
  v24 = v0;
  v1 = (*(v0 + 712) + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID);
  v2 = *v1;
  *(v0 + 720) = *v1;
  v3 = v1[1];
  *(v0 + 728) = v3;
  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v4 = sub_29EB1454C();
  *(v0 + 736) = __swift_project_value_buffer(v4, qword_2A187A840);

  v5 = sub_29EB1452C();
  v6 = sub_29EB14A4C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 672);
    v8 = *(v0 + 664);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_29EABC674(v8, v7, &v23);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_29EABC674(v2, v3, &v23);
    _os_log_impl(&dword_29EAA5000, v5, v6, "Starting to %s for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v10, -1, -1);
    MEMORY[0x29EDA8150](v9, -1, -1);
  }

  v11 = *(v0 + 712);
  v12 = *(v0 + 688);
  v13 = *(v0 + 680);
  v14 = *(v0 + 672);
  v15 = *(v0 + 664);
  type metadata accessor for ForceCancellationTracker();
  swift_allocObject();

  v22 = *(v0 + 696);
  v17 = sub_29EABD970(v16);
  *(v0 + 744) = v17;
  v18 = swift_task_alloc();
  *(v0 + 752) = v18;
  *(v18 + 16) = v11;
  *(v18 + 24) = v15;
  *(v18 + 32) = v14;
  *(v18 + 40) = v2;
  *(v18 + 48) = v3;
  *(v18 + 56) = v22;
  *(v18 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 760) = v19;
  v19[2] = v13;
  v19[3] = v12;
  v19[4] = v17;
  v19[5] = v15;
  v19[6] = v14;
  v19[7] = v2;
  v19[8] = v3;
  v20 = swift_task_alloc();
  *(v0 + 768) = v20;
  *v20 = v0;
  v20[1] = sub_29EAC5D28;

  return MEMORY[0x2A1C73C78](v0 + 16, &unk_29EB17F10, v18, sub_29EACDD94, v19, 0, 0, &type metadata for PreflightInfo);
}

uint64_t sub_29EAC5D28()
{
  *(*v1 + 776) = v0;

  if (v0)
  {
    v2 = sub_29EAC60DC;
  }

  else
  {
    v2 = sub_29EAC5E3C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAC5E3C()
{
  v31 = v0;
  sub_29EABE608();
  v1 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v1;
  v2 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v2;
  v3 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v3;
  v4 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v4;
  sub_29EAB83AC(v0 + 144, v0 + 272);

  sub_29EAB83AC(v0 + 144, v0 + 400);
  v5 = sub_29EB1452C();
  v6 = sub_29EB14A4C();

  sub_29EACD61C(v0 + 144);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 728);
    v8 = *(v0 + 720);
    v9 = *(v0 + 672);
    v10 = *(v0 + 664);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_29EABC674(v10, v9, &v30);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_29EABC674(v8, v7, &v30);
    *(v11 + 22) = 2080;
    v13 = *(v0 + 224);
    *(v0 + 592) = *(v0 + 208);
    *(v0 + 608) = v13;
    v14 = *(v0 + 256);
    *(v0 + 624) = *(v0 + 240);
    *(v0 + 640) = v14;
    v15 = *(v0 + 160);
    *(v0 + 528) = *(v0 + 144);
    *(v0 + 544) = v15;
    v16 = *(v0 + 192);
    *(v0 + 560) = *(v0 + 176);
    *(v0 + 576) = v16;
    v17 = sub_29EB146FC();
    v19 = sub_29EABC674(v17, v18, &v30);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_29EAA5000, v5, v6, "Finished %s for %s -- %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v12, -1, -1);
    MEMORY[0x29EDA8150](v11, -1, -1);
  }

  else
  {
    sub_29EACD61C(v0 + 144);
  }

  v20 = *(v0 + 680);
  v21 = *(v0 + 656);
  v22 = *(v0 + 128);
  v24 = *(v0 + 80);
  v23 = *(v0 + 96);
  v21[6] = *(v0 + 112);
  v21[7] = v22;
  v21[4] = v24;
  v21[5] = v23;
  v25 = *(v0 + 16);
  v26 = *(v0 + 32);
  v27 = *(v0 + 64);
  v21[2] = *(v0 + 48);
  v21[3] = v27;
  *v21 = v25;
  v21[1] = v26;
  sub_29EABECB0(v20);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_29EAC60DC()
{
  v20 = v0;
  v1 = v0[97];

  sub_29EABE608();

  v2 = v1;
  v3 = sub_29EB1452C();
  v4 = sub_29EB14A5C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[97];
    v6 = v0[91];
    v18 = v0[90];
    v7 = v0[84];
    v8 = v0[83];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_29EABC674(v8, v7, v19);
    *(v9 + 12) = 2080;
    v12 = sub_29EABC674(v18, v6, v19);

    *(v9 + 14) = v12;
    *(v9 + 22) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v14;
    *v10 = v14;
    _os_log_impl(&dword_29EAA5000, v3, v4, "Failed to %s for %s -- %@", v9, 0x20u);
    sub_29EABCCEC(v10, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v11, -1, -1);
    MEMORY[0x29EDA8150](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[85];
  swift_willThrow();

  sub_29EABECB0(v15);
  v16 = v0[1];

  return v16();
}

uint64_t sub_29EAC6340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[109] = v7;
  v8[108] = a7;
  v8[107] = a6;
  v8[106] = a5;
  v8[105] = a4;
  v8[104] = a3;
  v8[103] = a2;
  v8[102] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAC637C, 0, 0);
}

uint64_t sub_29EAC637C()
{
  v25 = v0;
  v1 = (*(v0 + 872) + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID);
  v2 = *v1;
  *(v0 + 880) = *v1;
  v3 = v1[1];
  *(v0 + 888) = v3;
  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v4 = sub_29EB1454C();
  *(v0 + 896) = __swift_project_value_buffer(v4, qword_2A187A840);

  v5 = sub_29EB1452C();
  v6 = sub_29EB14A4C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 832);
    v8 = *(v0 + 824);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_29EABC674(v8, v7, &v24);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_29EABC674(v2, v3, &v24);
    _os_log_impl(&dword_29EAA5000, v5, v6, "Starting to %s for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v10, -1, -1);
    MEMORY[0x29EDA8150](v9, -1, -1);
  }

  v11 = *(v0 + 872);
  v12 = *(v0 + 848);
  v13 = *(v0 + 840);
  v14 = *(v0 + 832);
  v15 = *(v0 + 824);
  type metadata accessor for ForceCancellationTracker();
  swift_allocObject();

  v23 = *(v0 + 856);
  v17 = sub_29EABD970(v16);
  *(v0 + 904) = v17;
  v18 = swift_task_alloc();
  *(v0 + 912) = v18;
  *(v18 + 16) = v11;
  *(v18 + 24) = v15;
  *(v18 + 32) = v14;
  *(v18 + 40) = v2;
  *(v18 + 48) = v3;
  *(v18 + 56) = v23;
  *(v18 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 920) = v19;
  v19[2] = v13;
  v19[3] = v12;
  v19[4] = v17;
  v19[5] = v15;
  v19[6] = v14;
  v19[7] = v2;
  v19[8] = v3;
  v20 = swift_task_alloc();
  *(v0 + 928) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA48, &qword_29EB17EF0);
  *(v0 + 936) = v21;
  *v20 = v0;
  v20[1] = sub_29EAC6698;

  return MEMORY[0x2A1C73C78](v0 + 16, &unk_29EB17EE8, v18, sub_29EACDD94, v19, 0, 0, v21);
}

uint64_t sub_29EAC6698()
{
  *(*v1 + 944) = v0;

  if (v0)
  {
    v2 = sub_29EAC6A88;
  }

  else
  {
    v2 = sub_29EAC67AC;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAC67AC()
{
  v34 = v0;
  sub_29EABE608();
  v1 = *(v0 + 128);
  *(v0 + 272) = *(v0 + 112);
  *(v0 + 288) = v1;
  v2 = *(v0 + 160);
  *(v0 + 304) = *(v0 + 144);
  *(v0 + 320) = v2;
  v3 = *(v0 + 64);
  *(v0 + 208) = *(v0 + 48);
  *(v0 + 224) = v3;
  v4 = *(v0 + 96);
  *(v0 + 240) = *(v0 + 80);
  *(v0 + 256) = v4;
  v5 = *(v0 + 32);
  *(v0 + 176) = *(v0 + 16);
  *(v0 + 192) = v5;
  sub_29EACD444(v0 + 176, v0 + 336);

  sub_29EACD444(v0 + 176, v0 + 496);
  v6 = sub_29EB1452C();
  v7 = sub_29EB14A4C();

  sub_29EABCCEC(v0 + 176, &qword_2A187AA48, &qword_29EB17EF0);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 888);
    v9 = *(v0 + 880);
    v10 = *(v0 + 832);
    v11 = *(v0 + 824);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_29EABC674(v11, v10, &v33);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_29EABC674(v9, v8, &v33);
    *(v12 + 22) = 2080;
    v14 = *(v0 + 288);
    *(v0 + 752) = *(v0 + 272);
    *(v0 + 768) = v14;
    v15 = *(v0 + 320);
    *(v0 + 784) = *(v0 + 304);
    *(v0 + 800) = v15;
    v16 = *(v0 + 224);
    *(v0 + 688) = *(v0 + 208);
    *(v0 + 704) = v16;
    v17 = *(v0 + 256);
    *(v0 + 720) = *(v0 + 240);
    *(v0 + 736) = v17;
    v18 = *(v0 + 192);
    *(v0 + 656) = *(v0 + 176);
    *(v0 + 672) = v18;
    v19 = sub_29EB146FC();
    v21 = sub_29EABC674(v19, v20, &v33);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_29EAA5000, v6, v7, "Finished %s for %s -- %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v13, -1, -1);
    MEMORY[0x29EDA8150](v12, -1, -1);
  }

  else
  {
    sub_29EABCCEC(v0 + 176, &qword_2A187AA48, &qword_29EB17EF0);
  }

  v22 = *(v0 + 840);
  v23 = *(v0 + 816);
  v24 = *(v0 + 96);
  v26 = *(v0 + 48);
  v25 = *(v0 + 64);
  v23[4] = *(v0 + 80);
  v23[5] = v24;
  v23[2] = v26;
  v23[3] = v25;
  v27 = *(v0 + 160);
  v29 = *(v0 + 112);
  v28 = *(v0 + 128);
  v23[8] = *(v0 + 144);
  v23[9] = v27;
  v23[6] = v29;
  v23[7] = v28;
  v30 = *(v0 + 32);
  *v23 = *(v0 + 16);
  v23[1] = v30;
  sub_29EABECB0(v22);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_29EAC6A88()
{
  v20 = v0;
  v1 = v0[118];

  sub_29EABE608();

  v2 = v1;
  v3 = sub_29EB1452C();
  v4 = sub_29EB14A5C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[118];
    v6 = v0[111];
    v18 = v0[110];
    v7 = v0[104];
    v8 = v0[103];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_29EABC674(v8, v7, v19);
    *(v9 + 12) = 2080;
    v12 = sub_29EABC674(v18, v6, v19);

    *(v9 + 14) = v12;
    *(v9 + 22) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v14;
    *v10 = v14;
    _os_log_impl(&dword_29EAA5000, v3, v4, "Failed to %s for %s -- %@", v9, 0x20u);
    sub_29EABCCEC(v10, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v11, -1, -1);
    MEMORY[0x29EDA8150](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[105];
  swift_willThrow();

  sub_29EABECB0(v15);
  v16 = v0[1];

  return v16();
}

uint64_t sub_29EAC6CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[7] = a7;
  v8[8] = v7;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  return MEMORY[0x2A1C73D48](sub_29EAC6D18, 0, 0);
}

uint64_t sub_29EAC6D18()
{
  v25 = v0;
  v1 = (*(v0 + 64) + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID);
  v2 = *v1;
  *(v0 + 72) = *v1;
  v3 = v1[1];
  *(v0 + 80) = v3;
  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v4 = sub_29EB1454C();
  *(v0 + 88) = __swift_project_value_buffer(v4, qword_2A187A840);

  v5 = sub_29EB1452C();
  v6 = sub_29EB14A4C();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_29EABC674(v8, v7, &v24);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_29EABC674(v2, v3, &v24);
    _os_log_impl(&dword_29EAA5000, v5, v6, "Starting to %s for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v10, -1, -1);
    MEMORY[0x29EDA8150](v9, -1, -1);
  }

  v11 = *(v0 + 64);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  type metadata accessor for ForceCancellationTracker();
  swift_allocObject();

  v23 = *(v0 + 48);
  v17 = sub_29EABD970(v16);
  *(v0 + 96) = v17;
  v18 = swift_task_alloc();
  *(v0 + 104) = v18;
  *(v18 + 16) = v11;
  *(v18 + 24) = v15;
  *(v18 + 32) = v14;
  *(v18 + 40) = v2;
  *(v18 + 48) = v3;
  *(v18 + 56) = v23;
  *(v18 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 112) = v19;
  v19[2] = v13;
  v19[3] = v12;
  v19[4] = v17;
  v19[5] = v15;
  v19[6] = v14;
  v19[7] = v2;
  v19[8] = v3;
  v20 = swift_task_alloc();
  *(v0 + 120) = v20;
  *v20 = v0;
  v20[1] = sub_29EAC700C;
  v21 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C78](v20, &unk_29EB17EA8, v18, sub_29EACD2A4, v19, 0, 0, v21);
}

uint64_t sub_29EAC700C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_29EAC731C;
  }

  else
  {

    v2 = sub_29EAC7130;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAC7130()
{
  v15 = v0;
  sub_29EABE608();

  v1 = sub_29EB1452C();
  v2 = sub_29EB14A4C();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_29EABC674(v6, v5, &v14);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_29EABC674(v4, v3, &v14);
    *(v7 + 22) = 2080;
    v9 = sub_29EB146FC();
    v11 = sub_29EABC674(v9, v10, &v14);

    *(v7 + 24) = v11;
    _os_log_impl(&dword_29EAA5000, v1, v2, "Finished %s for %s -- %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v8, -1, -1);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  else
  {
  }

  sub_29EABECB0(*(v0 + 32));
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_29EAC731C()
{
  v20 = v0;
  v1 = v0[16];

  sub_29EABE608();

  v2 = v1;
  v3 = sub_29EB1452C();
  v4 = sub_29EB14A5C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = v0[10];
    v18 = v0[9];
    v7 = v0[2];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_29EABC674(v7, v8, v19);
    *(v9 + 12) = 2080;
    v12 = sub_29EABC674(v18, v6, v19);

    *(v9 + 14) = v12;
    *(v9 + 22) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v14;
    *v10 = v14;
    _os_log_impl(&dword_29EAA5000, v3, v4, "Failed to %s for %s -- %@", v9, 0x20u);
    sub_29EABCCEC(v10, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v11, -1, -1);
    MEMORY[0x29EDA8150](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[4];
  swift_willThrow();

  sub_29EABECB0(v15);
  v16 = v0[1];

  return v16();
}

uint64_t sub_29EAC7570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAC75A8, 0, 0);
}

uint64_t sub_29EAC75A8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v10 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  *(v3 + 16) = v10;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  *(v3 + 64) = v5;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_29EAC76C8;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C80](v7, 0, 0, 0xD000000000000056, 0x800000029EB1BE60, sub_29EACD888, v3, v8);
}

uint64_t sub_29EAC76C8()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EACDDE0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_29EAC7804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAC783C, 0, 0);
}

uint64_t sub_29EAC783C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v9 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  *(v3 + 16) = v9;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  *(v3 + 64) = v5;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_29EAC76C8;
  v7 = *(v0 + 16);

  return MEMORY[0x2A1C73C80](v7, 0, 0, 0xD000000000000056, 0x800000029EB1BE60, sub_29EACD670, v3, &type metadata for PreflightInfo);
}

uint64_t sub_29EAC7958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAC7990, 0, 0);
}

uint64_t sub_29EAC7990()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v10 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  *(v3 + 16) = v10;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  *(v3 + 64) = v5;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA48, &qword_29EB17EF0);
  *v6 = v0;
  v6[1] = sub_29EAC7ABC;
  v8 = *(v0 + 16);

  return MEMORY[0x2A1C73C80](v8, 0, 0, 0xD000000000000056, 0x800000029EB1BE60, sub_29EACD4B4, v3, v7);
}

uint64_t sub_29EAC7ABC()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EAC7BF8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_29EAC7BF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EAC7C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAC7C94, 0, 0);
}

uint64_t sub_29EAC7C94()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v10 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  *(v3 + 16) = v10;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  *(v3 + 64) = v5;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_29EAC76C8;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C80](v7, 0, 0, 0xD000000000000056, 0x800000029EB1BE60, sub_29EACD2A8, v3, v8);
}

void sub_29EAC7DB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t), uint64_t a8, id a9, uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v59 = a8;
  v60 = a7;
  v67 = a13;
  v68 = a14;
  v66 = a12;
  v20 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v63 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29EB1400C();
  v64 = *(v22 - 8);
  v65 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v62 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = &v57 - v26;
  v61 = a2;
  v28 = *(a2 + 16);
  v29 = *(v25 + 16);
  v69 = a1;
  v30 = a1;
  v32 = v31;
  v29(&v57 - v26, v30, v31);
  v33 = (*(v25 + 80) + 48) & ~*(v25 + 80);
  v34 = swift_allocObject();
  v58 = a3;
  *(v34 + 2) = a3;
  *(v34 + 3) = a4;
  v66 = a5;
  *(v34 + 4) = a5;
  *(v34 + 5) = a6;
  (*(v25 + 32))(&v34[v33], v27, v32);
  aBlock[4] = v67;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6D9C;
  aBlock[3] = v68;
  v35 = _Block_copy(aBlock);

  v36 = [v28 remoteObjectProxyWithErrorHandler_];
  _Block_release(v35);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA60, &qword_29EB17F38);
  if (swift_dynamicCast())
  {
    v72 = v70;
    v38 = v60(&v72, v69);
    if (v38)
    {
      v39 = v38;
      [a9 addChild:v38 withPendingUnitCount:{objc_msgSend(a9, sel_totalUnitCount)}];
      if ([a9 isCancelled])
      {
        if (qword_2A187A310 != -1)
        {
          swift_once();
        }

        v40 = sub_29EB1454C();
        __swift_project_value_buffer(v40, qword_2A187A840);

        v41 = sub_29EB1452C();
        v42 = sub_29EB14A5C();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          aBlock[0] = v44;
          *v43 = 136315394;
          *(v43 + 4) = sub_29EABC674(v58, a4, aBlock);
          *(v43 + 12) = 2080;
          *(v43 + 14) = sub_29EABC674(v66, a6, aBlock);
          _os_log_impl(&dword_29EAA5000, v41, v42, "Parent progress of %s is already cancelled. Immediately cancelling child for %s", v43, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29EDA8150](v44, -1, -1);
          MEMORY[0x29EDA8150](v43, -1, -1);
        }

        [v39 cancel];
        swift_unknownObjectRelease();

        return;
      }
    }

    swift_unknownObjectRelease();
    return;
  }

  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v45 = sub_29EB1454C();
  __swift_project_value_buffer(v45, qword_2A187A840);
  v46 = v61;

  v47 = sub_29EB1452C();
  v48 = sub_29EB14A5C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v49 = 136315394;
    v72 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA68, &qword_29EB17F40);
    v51 = sub_29EB146FC();
    v53 = sub_29EABC674(v51, v52, aBlock);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_29EABC674(*(v46 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(v46 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), aBlock);
    _os_log_impl(&dword_29EAA5000, v47, v48, "Connection does not conform to %s for %s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v50, -1, -1);
    MEMORY[0x29EDA8150](v49, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EACD300();
  v54 = v62;
  v55 = v65;
  sub_29EB1415C();
  v56 = sub_29EB13F9C();
  (*(v64 + 8))(v54, v55);
  aBlock[0] = v56;
  sub_29EB148BC();
}

void sub_29EAC848C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t), uint64_t a8, id a9)
{
  v51 = a8;
  v52 = a7;
  v15 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v55 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29EB1400C();
  v56 = *(v17 - 8);
  v57 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v54 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA58, &qword_29EB19010);
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v49 - v21;
  v53 = a2;
  v23 = *(a2 + 16);
  v24 = *(v20 + 16);
  v58 = a1;
  v24(&v49 - v21, a1, v19);
  v25 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v26 = swift_allocObject();
  v49 = a3;
  v50 = a5;
  *(v26 + 2) = a3;
  *(v26 + 3) = a4;
  *(v26 + 4) = a5;
  *(v26 + 5) = a6;
  (*(v20 + 32))(&v26[v25], v22, v19);
  aBlock[4] = sub_29EACD69C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6D9C;
  aBlock[3] = &block_descriptor_51;
  v27 = _Block_copy(aBlock);

  v28 = [v23 remoteObjectProxyWithErrorHandler_];
  _Block_release(v27);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA38, &qword_29EB17EC8);
  if (swift_dynamicCast())
  {
    v61 = v59;
    v30 = v52(&v61, v58);
    if (v30)
    {
      v31 = v30;
      [a9 addChild:v30 withPendingUnitCount:{objc_msgSend(a9, sel_totalUnitCount)}];
      if ([a9 isCancelled])
      {
        if (qword_2A187A310 != -1)
        {
          swift_once();
        }

        v32 = sub_29EB1454C();
        __swift_project_value_buffer(v32, qword_2A187A840);

        v33 = sub_29EB1452C();
        v34 = sub_29EB14A5C();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          aBlock[0] = v36;
          *v35 = 136315394;
          *(v35 + 4) = sub_29EABC674(v49, a4, aBlock);
          *(v35 + 12) = 2080;
          *(v35 + 14) = sub_29EABC674(v50, a6, aBlock);
          _os_log_impl(&dword_29EAA5000, v33, v34, "Parent progress of %s is already cancelled. Immediately cancelling child for %s", v35, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29EDA8150](v36, -1, -1);
          MEMORY[0x29EDA8150](v35, -1, -1);
        }

        [v31 cancel];
        swift_unknownObjectRelease();

        return;
      }
    }

    swift_unknownObjectRelease();
    return;
  }

  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v37 = sub_29EB1454C();
  __swift_project_value_buffer(v37, qword_2A187A840);
  v38 = v53;

  v39 = sub_29EB1452C();
  v40 = sub_29EB14A5C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315394;
    v61 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA40, &qword_29EB17ED0);
    v43 = sub_29EB146FC();
    v45 = sub_29EABC674(v43, v44, aBlock);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_29EABC674(*(v38 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(v38 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), aBlock);
    _os_log_impl(&dword_29EAA5000, v39, v40, "Connection does not conform to %s for %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v42, -1, -1);
    MEMORY[0x29EDA8150](v41, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EACD300();
  v46 = v54;
  v47 = v57;
  sub_29EB1415C();
  v48 = sub_29EB13F9C();
  (*(v56 + 8))(v46, v47);
  aBlock[0] = v48;
  sub_29EB148BC();
}

void sub_29EAC8B6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t), uint64_t a8, id a9)
{
  v51 = a8;
  v52 = a7;
  v15 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v55 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29EB1400C();
  v56 = *(v17 - 8);
  v57 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v54 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA50, &qword_29EB17EF8);
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v49 - v21;
  v53 = a2;
  v23 = *(a2 + 16);
  v24 = *(v20 + 16);
  v58 = a1;
  v24(&v49 - v21, a1, v19);
  v25 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v26 = swift_allocObject();
  v49 = a3;
  v50 = a5;
  *(v26 + 2) = a3;
  *(v26 + 3) = a4;
  *(v26 + 4) = a5;
  *(v26 + 5) = a6;
  (*(v20 + 32))(&v26[v25], v22, v19);
  aBlock[4] = sub_29EACD51C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6D9C;
  aBlock[3] = &block_descriptor_39;
  v27 = _Block_copy(aBlock);

  v28 = [v23 remoteObjectProxyWithErrorHandler_];
  _Block_release(v27);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA38, &qword_29EB17EC8);
  if (swift_dynamicCast())
  {
    v61 = v59;
    v30 = v52(&v61, v58);
    if (v30)
    {
      v31 = v30;
      [a9 addChild:v30 withPendingUnitCount:{objc_msgSend(a9, sel_totalUnitCount)}];
      if ([a9 isCancelled])
      {
        if (qword_2A187A310 != -1)
        {
          swift_once();
        }

        v32 = sub_29EB1454C();
        __swift_project_value_buffer(v32, qword_2A187A840);

        v33 = sub_29EB1452C();
        v34 = sub_29EB14A5C();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          aBlock[0] = v36;
          *v35 = 136315394;
          *(v35 + 4) = sub_29EABC674(v49, a4, aBlock);
          *(v35 + 12) = 2080;
          *(v35 + 14) = sub_29EABC674(v50, a6, aBlock);
          _os_log_impl(&dword_29EAA5000, v33, v34, "Parent progress of %s is already cancelled. Immediately cancelling child for %s", v35, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29EDA8150](v36, -1, -1);
          MEMORY[0x29EDA8150](v35, -1, -1);
        }

        [v31 cancel];
        swift_unknownObjectRelease();

        return;
      }
    }

    swift_unknownObjectRelease();
    return;
  }

  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v37 = sub_29EB1454C();
  __swift_project_value_buffer(v37, qword_2A187A840);
  v38 = v53;

  v39 = sub_29EB1452C();
  v40 = sub_29EB14A5C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315394;
    v61 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA40, &qword_29EB17ED0);
    v43 = sub_29EB146FC();
    v45 = sub_29EABC674(v43, v44, aBlock);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_29EABC674(*(v38 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(v38 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), aBlock);
    _os_log_impl(&dword_29EAA5000, v39, v40, "Connection does not conform to %s for %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v42, -1, -1);
    MEMORY[0x29EDA8150](v41, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EACD300();
  v46 = v54;
  v47 = v57;
  sub_29EB1415C();
  v48 = sub_29EB13F9C();
  (*(v56 + 8))(v46, v47);
  aBlock[0] = v48;
  sub_29EB148BC();
}

void sub_29EAC924C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t), uint64_t a8, id a9)
{
  v51 = a8;
  v52 = a7;
  v15 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v55 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29EB1400C();
  v56 = *(v17 - 8);
  v57 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v54 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v49 - v21;
  v53 = a2;
  v23 = *(a2 + 16);
  v24 = *(v20 + 16);
  v58 = a1;
  v24(&v49 - v21, a1, v19);
  v25 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v26 = swift_allocObject();
  v49 = a3;
  v50 = a5;
  *(v26 + 2) = a3;
  *(v26 + 3) = a4;
  *(v26 + 4) = a5;
  *(v26 + 5) = a6;
  (*(v20 + 32))(&v26[v25], v22, v19);
  aBlock[4] = sub_29EACD2D4;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6D9C;
  aBlock[3] = &block_descriptor_4;
  v27 = _Block_copy(aBlock);

  v28 = [v23 remoteObjectProxyWithErrorHandler_];
  _Block_release(v27);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA38, &qword_29EB17EC8);
  if (swift_dynamicCast())
  {
    v61 = v59;
    v30 = v52(&v61, v58);
    if (v30)
    {
      v31 = v30;
      [a9 addChild:v30 withPendingUnitCount:{objc_msgSend(a9, sel_totalUnitCount)}];
      if ([a9 isCancelled])
      {
        if (qword_2A187A310 != -1)
        {
          swift_once();
        }

        v32 = sub_29EB1454C();
        __swift_project_value_buffer(v32, qword_2A187A840);

        v33 = sub_29EB1452C();
        v34 = sub_29EB14A5C();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          aBlock[0] = v36;
          *v35 = 136315394;
          *(v35 + 4) = sub_29EABC674(v49, a4, aBlock);
          *(v35 + 12) = 2080;
          *(v35 + 14) = sub_29EABC674(v50, a6, aBlock);
          _os_log_impl(&dword_29EAA5000, v33, v34, "Parent progress of %s is already cancelled. Immediately cancelling child for %s", v35, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29EDA8150](v36, -1, -1);
          MEMORY[0x29EDA8150](v35, -1, -1);
        }

        [v31 cancel];
        swift_unknownObjectRelease();

        return;
      }
    }

    swift_unknownObjectRelease();
    return;
  }

  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v37 = sub_29EB1454C();
  __swift_project_value_buffer(v37, qword_2A187A840);
  v38 = v53;

  v39 = sub_29EB1452C();
  v40 = sub_29EB14A5C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315394;
    v61 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA40, &qword_29EB17ED0);
    v43 = sub_29EB146FC();
    v45 = sub_29EABC674(v43, v44, aBlock);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_29EABC674(*(v38 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(v38 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), aBlock);
    _os_log_impl(&dword_29EAA5000, v39, v40, "Connection does not conform to %s for %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v42, -1, -1);
    MEMORY[0x29EDA8150](v41, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EACD300();
  v46 = v54;
  v47 = v57;
  sub_29EB1415C();
  v48 = sub_29EB13F9C();
  (*(v56 + 8))(v46, v47);
  aBlock[0] = v48;
  sub_29EB148BC();
}

uint64_t sub_29EAC992C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v15 = sub_29EB1454C();
  __swift_project_value_buffer(v15, qword_2A187A840);

  v16 = a1;
  v17 = sub_29EB1452C();
  v18 = sub_29EB14A5C();

  if (os_log_type_enabled(v17, v18))
  {
    v28 = a4;
    v19 = swift_slowAlloc();
    v29 = a7;
    v20 = a8;
    v21 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v22 = v30;
    *v19 = 136315650;
    *(v19 + 4) = sub_29EABC674(a2, a3, &v30);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_29EABC674(v28, a5, &v30);
    *(v19 + 22) = 2112;
    v23 = a1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v24;
    *v21 = v24;
    _os_log_impl(&dword_29EAA5000, v17, v18, "Failed %s for %s -- %@", v19, 0x20u);
    sub_29EABCCEC(v21, &qword_2A187A648, qword_29EB17EB0);
    v25 = v21;
    a8 = v20;
    a7 = v29;
    MEMORY[0x29EDA8150](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v22, -1, -1);
    MEMORY[0x29EDA8150](v19, -1, -1);
  }

  v30 = a1;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  return sub_29EB148BC();
}

uint64_t sub_29EAC9B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 152) = a3;
  *(v4 + 160) = v3;
  *(v4 + 144) = a1;
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  return MEMORY[0x2A1C73D48](sub_29EAC9BBC, 0, 0);
}

uint64_t sub_29EAC9BBC()
{
  v1 = sub_29EAADFF0();
  *(v0 + 168) = v1;
  *(v0 + 176) = v2;
  v3 = v1;
  v4 = v2;
  v5 = 0xD000000000000055;
  v6 = *(v0 + 144);
  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  v7[2] = v6;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v0 + 16;
  v8 = 0x800000029EB1BDC0;
  *(v0 + 128) = 40;
  *(v0 + 112) = 0xD000000000000055;
  *(v0 + 120) = 0x800000029EB1BDC0;
  *(v0 + 136) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 104) & 1) == 0)
  {
    v9 = sub_29EB147BC();
    v5 = MEMORY[0x29EDA6DA0](v9);
    v8 = v10;
  }

  *(v0 + 192) = v8;
  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *(v11 + 16) = sub_29EACA2A0;
  *(v11 + 24) = v7;
  v12 = swift_task_alloc();
  *(v0 + 208) = v12;
  *v12 = v0;
  v12[1] = sub_29EAC9DD0;
  v13 = *(v0 + 152);

  return sub_29EAC4CE0(v5, v8, 0, v13, sub_29EACC2AC, v11);
}

uint64_t sub_29EAC9DD0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 216) = v2;

  if (v2)
  {

    v7 = sub_29EAC9FBC;
  }

  else
  {
    *(v6 + 224) = a2;
    *(v6 + 232) = a1;

    v7 = sub_29EAC9F54;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EAC9F54()
{
  sub_29EAAD010(v0[21], v0[22]);
  v1 = v0[1];
  v3 = v0[28];
  v2 = v0[29];

  return v1(v2, v3);
}

uint64_t sub_29EAC9FBC()
{
  v1 = v0[22];
  v2 = v0[21];

  sub_29EAAD010(v2, v1);
  v3 = v0[1];

  return v3();
}

id sub_29EACA030(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA70, &qword_29EB17F48);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v26 - v10;
  v12 = sub_29EB141BC();
  v13 = sub_29EB142BC();
  v14 = type metadata accessor for SerializedDataImportRequest.XPCHelper();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest];
  *v16 = *a6;
  v17 = *(a6 + 16);
  v18 = *(a6 + 32);
  v19 = *(a6 + 48);
  *(v16 + 8) = *(a6 + 64);
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 1) = v17;
  sub_29EACD6D0(a6, aBlock);
  v27.receiver = v15;
  v27.super_class = v14;
  v20 = objc_msgSendSuper2(&v27, sel_init);
  (*(v9 + 16))(v11, a2, v8);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v11, v8);
  aBlock[4] = sub_29EACDD90;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EACA354;
  aBlock[3] = &block_descriptor_108;
  v23 = _Block_copy(aBlock);

  v24 = [v26 importSerializedDataFrom:v12 sandboxExtension:v13 importRequest:v20 completion:v23];
  _Block_release(v23);

  return v24;
}

unint64_t sub_29EACA2AC()
{
  result = qword_2A187AA18;
  if (!qword_2A187AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AA18);
  }

  return result;
}

unint64_t sub_29EACA300()
{
  result = qword_2A187AA20;
  if (!qword_2A187AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AA20);
  }

  return result;
}

void sub_29EACA354(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_29EACA3DC(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 144) = a3;
  *(v4 + 152) = v3;
  *(v4 + 136) = a1;
  v5 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  v6 = a2[3];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v6;
  return MEMORY[0x2A1C73D48](sub_29EACA410, 0, 0);
}

uint64_t sub_29EACA410()
{
  v1 = sub_29EAADFF0();
  *(v0 + 160) = v1;
  *(v0 + 168) = v2;
  v3 = v1;
  v4 = v2;
  v5 = 0xD000000000000055;
  v6 = *(v0 + 136);
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  v7[2] = v6;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v0 + 16;
  v8 = 0x800000029EB1BDC0;
  *(v0 + 120) = 40;
  *(v0 + 104) = 0xD000000000000055;
  *(v0 + 112) = 0x800000029EB1BDC0;
  *(v0 + 128) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 96) & 1) == 0)
  {
    v9 = sub_29EB147BC();
    v5 = MEMORY[0x29EDA6DA0](v9);
    v8 = v10;
  }

  *(v0 + 184) = v8;
  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  *(v11 + 16) = sub_29EACC2D8;
  *(v11 + 24) = v7;
  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = sub_29EACA624;
  v13 = *(v0 + 144);

  return sub_29EAC4CE0(v5, v8, 0, v13, sub_29EACDDD4, v11);
}

uint64_t sub_29EACA624(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 208) = v2;

  if (v2)
  {

    v7 = sub_29EACA810;
  }

  else
  {
    *(v6 + 216) = a2;
    *(v6 + 224) = a1;

    v7 = sub_29EACA7A8;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EACA7A8()
{
  sub_29EAAD010(v0[20], v0[21]);
  v1 = v0[1];
  v3 = v0[27];
  v2 = v0[28];

  return v1(v2, v3);
}

uint64_t sub_29EACA810()
{
  v1 = v0[21];
  v2 = v0[20];

  sub_29EAAD010(v2, v1);
  v3 = v0[1];

  return v3();
}

id sub_29EACA884(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  v27 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA70, &qword_29EB17F48);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v26 - v10;
  v12 = sub_29EB141BC();
  v13 = sub_29EB142BC();
  v14 = type metadata accessor for ResourcesImportRequest.XPCHelper();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR___AMKResourcesImportRequest_resourcesImportRequest];
  v18 = a6[2];
  v17 = a6[3];
  v19 = a6[1];
  *v16 = *a6;
  *(v16 + 1) = v19;
  *(v16 + 2) = v18;
  *(v16 + 3) = v17;
  sub_29EACD8F4(a6, aBlock);
  v28.receiver = v15;
  v28.super_class = v14;
  v20 = objc_msgSendSuper2(&v28, sel_init);
  (*(v9 + 16))(v11, a2, v8);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v11, v8);
  aBlock[4] = sub_29EACD950;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EACA354;
  aBlock[3] = &block_descriptor_90;
  v23 = _Block_copy(aBlock);

  v24 = [v27 importResourcesFrom:v12 sandboxExtension:v13 importRequest:v20 completion:v23];
  _Block_release(v23);

  return v24;
}

uint64_t sub_29EACAAE4(uint64_t a1, uint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA70, &qword_29EB17F48);
    return sub_29EB148BC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA70, &qword_29EB17F48);
    return sub_29EB148CC();
  }
}

uint64_t sub_29EACAB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[9] = a1;
  return MEMORY[0x2A1C73D48](sub_29EACAB88, 0, 0);
}

uint64_t sub_29EACAB88()
{
  v1 = sub_29EAADFF0();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  v3 = v1;
  v4 = v2;
  v5 = 0xD000000000000055;
  v6 = *(v0 + 72);
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  v7[2] = v6;
  v7[3] = v3;
  v7[4] = v4;
  v8 = 0x800000029EB1BDC0;
  *(v0 + 40) = 0xD000000000000055;
  *(v0 + 48) = 0x800000029EB1BDC0;
  *(v0 + 56) = 40;
  *(v0 + 64) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 32) & 1) == 0)
  {
    v9 = sub_29EB147BC();
    v5 = MEMORY[0x29EDA6DA0](v9);
    v8 = v10;
  }

  *(v0 + 120) = v8;
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  *(v11 + 16) = sub_29EACC2E4;
  *(v11 + 24) = v7;
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *v12 = v0;
  v12[1] = sub_29EACAD94;
  v13 = *(v0 + 80);

  return sub_29EAC55A0(v12, v5, v8, 0, v13, sub_29EACDDD4, v11);
}

uint64_t sub_29EACAD94()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_29EACAF68;
  }

  else
  {

    v2 = sub_29EACAF04;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EACAF04()
{
  sub_29EAAD010(v0[12], v0[13]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_29EACAF68()
{
  v1 = v0[13];
  v2 = v0[12];

  sub_29EAAD010(v2, v1);
  v3 = v0[1];

  return v3();
}

id sub_29EACAFDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = aBlock - v9;
  v11 = sub_29EB141BC();
  v12 = sub_29EB142BC();
  (*(v8 + 16))(v10, a2, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v10, v7);
  aBlock[4] = sub_29EACDDD8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6E0C;
  aBlock[3] = &block_descriptor_84;
  v15 = _Block_copy(aBlock);

  v16 = [a1 importStagedDataclassResourcesFrom:v11 sandboxExtension:v12 dataclass:0 completion:v15];

  _Block_release(v15);
  return v16;
}

uint64_t sub_29EACB1DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29EAAAE5C;

  return sub_29EACC604(a1, a2);
}

id sub_29EACB294(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for SerializedDataImportRequest.XPCHelper();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest];
  *v13 = *a4;
  v14 = *(a4 + 16);
  v15 = *(a4 + 32);
  v16 = *(a4 + 48);
  *(v13 + 8) = *(a4 + 64);
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 1) = v14;
  sub_29EACD6D0(a4, aBlock);
  v24.receiver = v12;
  v24.super_class = v11;
  v17 = objc_msgSendSuper2(&v24, sel_init);
  (*(v8 + 16))(v10, a2, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v18, v10, v7);
  aBlock[4] = sub_29EACDDD8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6E0C;
  aBlock[3] = &block_descriptor_66;
  v20 = _Block_copy(aBlock);

  v21 = [a1 importSerializedDataFrom:v23 importRequest:v17 completion:v20];
  _Block_release(v20);

  return v21;
}

uint64_t sub_29EACB4D8(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2A1C73D48](sub_29EACB4F8, 0, 0);
}

uint64_t sub_29EACB4F8()
{
  v1 = 0xD000000000000055;
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v2;
  *(v0 + 40) = 0xD000000000000055;
  v4 = 0x800000029EB1BDC0;
  *(v0 + 48) = 0x800000029EB1BDC0;
  *(v0 + 56) = 40;
  *(v0 + 64) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 32) & 1) == 0)
  {
    v5 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v5);
    v4 = v6;
  }

  *(v0 + 96) = v4;
  v7 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  *(v0 + 104) = v7;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *(v8 + 16) = sub_29EACCA00;
  *(v8 + 24) = v3;
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_29EACB6D0;

  return sub_29EAC55A0(v9, v1, v4, 0, v7, sub_29EACDDD4, v8);
}

uint64_t sub_29EACB6D0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {

    v3 = sub_29EACB848;
  }

  else
  {

    v3 = sub_29EAC1308;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EACB848()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_29EACB8B8(void *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = aBlock - v8;
  if (a3)
  {
    a3 = sub_29EB1416C();
  }

  (*(v7 + 16))(v9, a2, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_29EACD6C4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6E0C;
  aBlock[3] = &block_descriptor_57;
  v12 = _Block_copy(aBlock);

  v13 = [a1 registerImportCompletionWithError:a3 completion:v12];
  _Block_release(v12);

  return v13;
}

uint64_t sub_29EACBA94(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
    return sub_29EB148BC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
    return sub_29EB148CC();
  }
}

uint64_t ImportExtensionController.__allocating_init(identity:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_29EB1446C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_allocObject();

  return MEMORY[0x2A1C73D48](sub_29EACBBDC, 0, 0);
}

uint64_t sub_29EACBBDC()
{
  (*(v0[4] + 16))(v0[5], v0[2], v0[3]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_29EACBC8C;
  v2 = v0[5];

  return ExtensionController.init(identity:)(v2);
}

uint64_t sub_29EACBC8C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_29EACBE34;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_29EACBDB4;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EACBDB4()
{
  (*(v0[4] + 8))(v0[2], v0[3]);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_29EACBE34()
{
  (*(v0[4] + 8))(v0[2], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t ImportExtensionController.init(identity:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_29EB1446C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EACBF70, 0, 0);
}

uint64_t sub_29EACBF70()
{
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_29EACC028;
  v2 = v0[6];

  return ExtensionController.init(identity:)(v2);
}

uint64_t sub_29EACC028(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_29EACC1D4;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_29EACC150;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EACC150()
{
  (*(v0[5] + 8))(v0[2], v0[4]);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_29EACC1D4()
{
  (*(v0[5] + 8))(v0[2], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t ImportExtensionController.__deallocating_deinit()
{
  v0 = ExtensionController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v1, v2);
}

uint64_t sub_29EACC2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v10;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v8[5] = a2;
  v8[6] = a3;
  v8[4] = a1;
  return MEMORY[0x2A1C73D48](sub_29EACC328, 0, 0);
}

uint64_t sub_29EACC328()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v9 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  v4 = *(v0 + 72);
  v5 = *(v0 + 88);
  *(v3 + 16) = v9;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  *(v3 + 64) = v5;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA78, qword_29EB17F60);
  *v6 = v0;
  v6[1] = sub_29EACC454;

  return MEMORY[0x2A1C73C80](v0 + 16, 0, 0, 0xD000000000000056, 0x800000029EB1BE60, sub_29EACDA64, v3, v7);
}

uint64_t sub_29EACC454()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EACC5A0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 32);

    *v3 = *(v2 + 16);
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_29EACC5A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EACC604(uint64_t a1, uint64_t a2)
{
  *(v3 + 144) = a1;
  *(v3 + 152) = v2;
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  return MEMORY[0x2A1C73D48](sub_29EACC63C, 0, 0);
}

uint64_t sub_29EACC63C()
{
  v1 = 0xD000000000000055;
  v2 = *(v0 + 144);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v0 + 128) = 40;
  v4 = 0x800000029EB1BDC0;
  *(v0 + 112) = 0xD000000000000055;
  *(v0 + 120) = 0x800000029EB1BDC0;
  *(v0 + 136) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 104) & 1) == 0)
  {
    v5 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v5);
    v4 = v6;
  }

  *(v0 + 168) = v4;
  v7 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  *(v0 + 176) = v7;
  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *(v8 + 16) = sub_29EACD6C8;
  *(v8 + 24) = v3;
  v9 = swift_task_alloc();
  *(v0 + 192) = v9;
  *v9 = v0;
  v9[1] = sub_29EACC818;

  return sub_29EAC55A0(v9, v1, v4, 0, v7, sub_29EACDDD4, v8);
}

uint64_t sub_29EACC818()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {

    v3 = sub_29EACC990;
  }

  else
  {

    v3 = sub_29EAC1308;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EACC990()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for ImportExtensionController(uint64_t a1)
{
  result = qword_2A187AA28;
  if (!qword_2A187AA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ImportExtensionController.importSerializedData(from:importRequest:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_29EACDDD0;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of ImportExtensionController.importResources(from:importRequest:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 128) + **(*v3 + 128));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_29EACCD1C;

  return v10(a1, a2, a3);
}

uint64_t sub_29EACCD1C(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of ImportExtensionController.importStagedDataclassResources(from:for:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 136) + **(*v3 + 136));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_29EAB73B4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of ImportExtensionController._t_importSerializedData(from:importRequest:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 144) + **(*v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_29EAB73B4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of ImportExtensionController.registerImportCompletion(error:)(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29EAB73B4;

  return v6(a1);
}

uint64_t sub_29EACD1B8(uint64_t a1)
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
  v11[1] = sub_29EAB73B4;

  return sub_29EAC7C5C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29EACD300()
{
  result = qword_2A187A800;
  if (!qword_2A187A800)
  {
    sub_29EB1400C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A800);
  }

  return result;
}

uint64_t sub_29EACD358(uint64_t a1)
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
  v11[1] = sub_29EAAAE5C;

  return sub_29EAC7958(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_29EACD444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA48, &qword_29EB17EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EACD530(uint64_t a1)
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
  v11[1] = sub_29EAB73B4;

  return sub_29EAC7804(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_29EACD79C(uint64_t a1)
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
  v11[1] = sub_29EAB73B4;

  return sub_29EAC7570(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_29EACD954()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_29EAB73B4;

  JUMPOUT(0x29EACC2F0);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2A1C733A0](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_53Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2A1C733A0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_29EACDDE8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29EACDE88(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 291) = a1;
  return MEMORY[0x2A1C73D48](sub_29EACDEAC, v2, 0);
}

uint64_t sub_29EACDEAC()
{
  v33 = v0;
  if (qword_2A187A2D8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187A580);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 291);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136315394;
    *(v0 + 290) = v5;
    v8 = sub_29EB146FC();
    v10 = sub_29EABC674(v8, v9, &v32);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v0 + 208) = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AC08, &qword_29EB181D8);
    v11 = sub_29EB146FC();
    v13 = sub_29EABC674(v11, v12, &v32);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Performing injections for %s with options %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v14 = *(v0 + 224);
  swift_beginAccess();
  v15 = *(v14 + 112);
  *(v0 + 232) = v15;
  v16 = *(v15 + 16);
  *(v0 + 240) = v16;
  if (v16)
  {
    *(v0 + 248) = 0;
    v17 = *(v15 + 16);

    if (v17)
    {
      sub_29EAAD064(result + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AC00, &qword_29EB181D0);
      if (swift_dynamicCast())
      {
        v19 = *(v0 + 216);
        v20 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v21 = *(v0 + 80);
        v22 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v21);
        *(v0 + 289) = v20;
        *(v0 + 200) = v19;
        v23 = *(v22 + 32);

        v30 = (v23 + *v23);
        v24 = swift_task_alloc();
        *(v0 + 256) = v24;
        *v24 = v0;
        v24[1] = sub_29EACE394;

        return v30(v0 + 289, v0 + 200, v21, v22);
      }

      else
      {
        v26 = *(v0 + 291);
        v27 = *(v0 + 40);
        v28 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v27);
        *(v0 + 288) = v26;
        v31 = (*(v28 + 40) + **(v28 + 40));
        v29 = swift_task_alloc();
        *(v0 + 272) = v29;
        *v29 = v0;
        v29[1] = sub_29EACE6B0;

        return v31(v0 + 288, v27, v28);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v25 = *(v0 + 8);

    return v25();
  }

  return result;
}

uint64_t sub_29EACE394()
{
  v2 = *v1;
  *(v2 + 264) = v0;

  v3 = *(v2 + 224);

  if (v0)
  {

    v4 = sub_29EACE638;
  }

  else
  {
    v4 = sub_29EACE4F4;
  }

  return MEMORY[0x2A1C73D48](v4, v3, 0);
}

uint64_t sub_29EACE4F4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 291);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 288) = v1;
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  *v4 = v0;
  v4[1] = sub_29EACE6B0;

  return v6(v0 + 288, v2, v3);
}

uint64_t sub_29EACE638()
{
  sub_29EAAD4D8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EACE6B0()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);

    v4 = sub_29EACEB48;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 224);
    v4 = sub_29EACE7D4;
  }

  return MEMORY[0x2A1C73D48](v4, v5, 0);
}

uint64_t sub_29EACE7D4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248) + 1;
  result = sub_29EAAD4D8(v0 + 16);
  if (v2 == v1)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v5 = *(v0 + 248) + 1;
    *(v0 + 248) = v5;
    v6 = *(v0 + 232);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_29EAAD064(v6 + 40 * v5 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AC00, &qword_29EB181D0);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 216);
        v8 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v9 = *(v0 + 80);
        v10 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v9);
        *(v0 + 289) = v8;
        *(v0 + 200) = v7;
        v11 = *(v10 + 32);

        v17 = (v11 + *v11);
        v12 = swift_task_alloc();
        *(v0 + 256) = v12;
        *v12 = v0;
        v12[1] = sub_29EACE394;

        return v17(v0 + 289, v0 + 200, v9, v10);
      }

      else
      {
        v13 = *(v0 + 291);
        v14 = *(v0 + 40);
        v15 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
        *(v0 + 288) = v13;
        v18 = (*(v15 + 40) + **(v15 + 40));
        v16 = swift_task_alloc();
        *(v0 + 272) = v16;
        *v16 = v0;
        v16[1] = sub_29EACE6B0;

        return v18(v0 + 288, v14, v15);
      }
    }
  }

  return result;
}

uint64_t sub_29EACEB48()
{
  sub_29EAAD4D8(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EACEBB8(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 291) = a1;
  return MEMORY[0x2A1C73D48](sub_29EACEBDC, v2, 0);
}

uint64_t sub_29EACEBDC()
{
  v33 = v0;
  if (qword_2A187A2D8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187A580);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 291);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136315394;
    *(v0 + 290) = v5;
    v8 = sub_29EB146FC();
    v10 = sub_29EABC674(v8, v9, &v32);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v0 + 208) = v4;
    type metadata accessor for SerializedDataExportStream();

    v11 = sub_29EB146FC();
    v13 = sub_29EABC674(v11, v12, &v32);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Performing injections for %s with options %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v14 = *(v0 + 224);
  swift_beginAccess();
  v15 = *(v14 + 112);
  *(v0 + 232) = v15;
  v16 = *(v15 + 16);
  *(v0 + 240) = v16;
  if (v16)
  {
    *(v0 + 248) = 0;
    v17 = *(v15 + 16);

    if (v17)
    {
      sub_29EAAD064(result + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABC8, &qword_29EB18180);
      if (swift_dynamicCast())
      {
        v19 = *(v0 + 216);
        v20 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v21 = *(v0 + 80);
        v22 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v21);
        *(v0 + 289) = v20;
        *(v0 + 200) = v19;
        v23 = *(v22 + 32);

        v30 = (v23 + *v23);
        v24 = swift_task_alloc();
        *(v0 + 256) = v24;
        *v24 = v0;
        v24[1] = sub_29EACF0BC;

        return v30(v0 + 289, v0 + 200, v21, v22);
      }

      else
      {
        v26 = *(v0 + 291);
        v27 = *(v0 + 40);
        v28 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v27);
        *(v0 + 288) = v26;
        v31 = (*(v28 + 40) + **(v28 + 40));
        v29 = swift_task_alloc();
        *(v0 + 272) = v29;
        *v29 = v0;
        v29[1] = sub_29EACF360;

        return v31(v0 + 288, v27, v28);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v25 = *(v0 + 8);

    return v25();
  }

  return result;
}

uint64_t sub_29EACF0BC()
{
  v2 = *v1;
  *(v2 + 264) = v0;

  v3 = *(v2 + 224);

  if (v0)
  {

    v4 = sub_29EAE494C;
  }

  else
  {
    v4 = sub_29EACF21C;
  }

  return MEMORY[0x2A1C73D48](v4, v3, 0);
}

uint64_t sub_29EACF21C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 291);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 288) = v1;
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  *v4 = v0;
  v4[1] = sub_29EACF360;

  return v6(v0 + 288, v2, v3);
}

uint64_t sub_29EACF360()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);

    v4 = sub_29EAE49A8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 224);
    v4 = sub_29EACF484;
  }

  return MEMORY[0x2A1C73D48](v4, v5, 0);
}

uint64_t sub_29EACF484()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248) + 1;
  result = sub_29EAAD4D8(v0 + 16);
  if (v2 == v1)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v5 = *(v0 + 248) + 1;
    *(v0 + 248) = v5;
    v6 = *(v0 + 232);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_29EAAD064(v6 + 40 * v5 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABC8, &qword_29EB18180);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 216);
        v8 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v9 = *(v0 + 80);
        v10 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v9);
        *(v0 + 289) = v8;
        *(v0 + 200) = v7;
        v11 = *(v10 + 32);

        v17 = (v11 + *v11);
        v12 = swift_task_alloc();
        *(v0 + 256) = v12;
        *v12 = v0;
        v12[1] = sub_29EACF0BC;

        return v17(v0 + 289, v0 + 200, v9, v10);
      }

      else
      {
        v13 = *(v0 + 291);
        v14 = *(v0 + 40);
        v15 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
        *(v0 + 288) = v13;
        v18 = (*(v15 + 40) + **(v15 + 40));
        v16 = swift_task_alloc();
        *(v0 + 272) = v16;
        *v16 = v0;
        v16[1] = sub_29EACF360;

        return v18(v0 + 288, v14, v15);
      }
    }
  }

  return result;
}

uint64_t sub_29EACF7F8(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 291) = a1;
  return MEMORY[0x2A1C73D48](sub_29EACF81C, v2, 0);
}

uint64_t sub_29EACF81C()
{
  v33 = v0;
  if (qword_2A187A2D8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187A580);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 291);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136315394;
    *(v0 + 290) = v5;
    v8 = sub_29EB146FC();
    v10 = sub_29EABC674(v8, v9, &v32);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v0 + 208) = v4;
    type metadata accessor for ResourcesArchiver();

    v11 = sub_29EB146FC();
    v13 = sub_29EABC674(v11, v12, &v32);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Performing injections for %s with options %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v14 = *(v0 + 224);
  swift_beginAccess();
  v15 = *(v14 + 112);
  *(v0 + 232) = v15;
  v16 = *(v15 + 16);
  *(v0 + 240) = v16;
  if (v16)
  {
    *(v0 + 248) = 0;
    v17 = *(v15 + 16);

    if (v17)
    {
      sub_29EAAD064(result + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABB0, &qword_29EB18150);
      if (swift_dynamicCast())
      {
        v19 = *(v0 + 216);
        v20 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v21 = *(v0 + 80);
        v22 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v21);
        *(v0 + 289) = v20;
        *(v0 + 200) = v19;
        v23 = *(v22 + 32);

        v30 = (v23 + *v23);
        v24 = swift_task_alloc();
        *(v0 + 256) = v24;
        *v24 = v0;
        v24[1] = sub_29EACFCFC;

        return v30(v0 + 289, v0 + 200, v21, v22);
      }

      else
      {
        v26 = *(v0 + 291);
        v27 = *(v0 + 40);
        v28 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v27);
        *(v0 + 288) = v26;
        v31 = (*(v28 + 40) + **(v28 + 40));
        v29 = swift_task_alloc();
        *(v0 + 272) = v29;
        *v29 = v0;
        v29[1] = sub_29EAD0018;

        return v31(v0 + 288, v27, v28);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v25 = *(v0 + 8);

    return v25();
  }

  return result;
}

uint64_t sub_29EACFCFC()
{
  v2 = *v1;
  *(v2 + 264) = v0;

  v3 = *(v2 + 224);

  if (v0)
  {

    v4 = sub_29EACFFA0;
  }

  else
  {
    v4 = sub_29EACFE5C;
  }

  return MEMORY[0x2A1C73D48](v4, v3, 0);
}

uint64_t sub_29EACFE5C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 291);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 288) = v1;
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  *v4 = v0;
  v4[1] = sub_29EAD0018;

  return v6(v0 + 288, v2, v3);
}

uint64_t sub_29EACFFA0()
{
  sub_29EAAD4D8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EAD0018()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);

    v4 = sub_29EAD04B0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 224);
    v4 = sub_29EAD013C;
  }

  return MEMORY[0x2A1C73D48](v4, v5, 0);
}

uint64_t sub_29EAD013C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248) + 1;
  result = sub_29EAAD4D8(v0 + 16);
  if (v2 == v1)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v5 = *(v0 + 248) + 1;
    *(v0 + 248) = v5;
    v6 = *(v0 + 232);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_29EAAD064(v6 + 40 * v5 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABB0, &qword_29EB18150);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 216);
        v8 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v9 = *(v0 + 80);
        v10 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v9);
        *(v0 + 289) = v8;
        *(v0 + 200) = v7;
        v11 = *(v10 + 32);

        v17 = (v11 + *v11);
        v12 = swift_task_alloc();
        *(v0 + 256) = v12;
        *v12 = v0;
        v12[1] = sub_29EACFCFC;

        return v17(v0 + 289, v0 + 200, v9, v10);
      }

      else
      {
        v13 = *(v0 + 291);
        v14 = *(v0 + 40);
        v15 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
        *(v0 + 288) = v13;
        v18 = (*(v15 + 40) + **(v15 + 40));
        v16 = swift_task_alloc();
        *(v0 + 272) = v16;
        *v16 = v0;
        v16[1] = sub_29EAD0018;

        return v18(v0 + 288, v14, v15);
      }
    }
  }

  return result;
}

uint64_t sub_29EAD04B0()
{
  sub_29EAAD4D8(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EAD0520(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 291) = a1;
  return MEMORY[0x2A1C73D48](sub_29EAD0544, v2, 0);
}

uint64_t sub_29EAD0544()
{
  v33 = v0;
  if (qword_2A187A2D8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187A580);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 291);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136315394;
    *(v0 + 290) = v5;
    v8 = sub_29EB146FC();
    v10 = sub_29EABC674(v8, v9, &v32);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v0 + 208) = v4;
    type metadata accessor for SerializedDataReader(0);

    v11 = sub_29EB146FC();
    v13 = sub_29EABC674(v11, v12, &v32);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Performing injections for %s with options %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v14 = *(v0 + 224);
  swift_beginAccess();
  v15 = *(v14 + 112);
  *(v0 + 232) = v15;
  v16 = *(v15 + 16);
  *(v0 + 240) = v16;
  if (v16)
  {
    *(v0 + 248) = 0;
    v17 = *(v15 + 16);

    if (v17)
    {
      sub_29EAAD064(result + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB98, &qword_29EB18120);
      if (swift_dynamicCast())
      {
        v19 = *(v0 + 216);
        v20 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v21 = *(v0 + 80);
        v22 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v21);
        *(v0 + 289) = v20;
        *(v0 + 200) = v19;
        v23 = *(v22 + 32);

        v30 = (v23 + *v23);
        v24 = swift_task_alloc();
        *(v0 + 256) = v24;
        *v24 = v0;
        v24[1] = sub_29EAD0A24;

        return v30(v0 + 289, v0 + 200, v21, v22);
      }

      else
      {
        v26 = *(v0 + 291);
        v27 = *(v0 + 40);
        v28 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v27);
        *(v0 + 288) = v26;
        v31 = (*(v28 + 40) + **(v28 + 40));
        v29 = swift_task_alloc();
        *(v0 + 272) = v29;
        *v29 = v0;
        v29[1] = sub_29EAD0CC8;

        return v31(v0 + 288, v27, v28);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v25 = *(v0 + 8);

    return v25();
  }

  return result;
}

uint64_t sub_29EAD0A24()
{
  v2 = *v1;
  *(v2 + 264) = v0;

  v3 = *(v2 + 224);

  if (v0)
  {

    v4 = sub_29EAE494C;
  }

  else
  {
    v4 = sub_29EAD0B84;
  }

  return MEMORY[0x2A1C73D48](v4, v3, 0);
}

uint64_t sub_29EAD0B84()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 291);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 288) = v1;
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  *v4 = v0;
  v4[1] = sub_29EAD0CC8;

  return v6(v0 + 288, v2, v3);
}

uint64_t sub_29EAD0CC8()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);

    v4 = sub_29EAE49A8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 224);
    v4 = sub_29EAD0DEC;
  }

  return MEMORY[0x2A1C73D48](v4, v5, 0);
}

uint64_t sub_29EAD0DEC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248) + 1;
  result = sub_29EAAD4D8(v0 + 16);
  if (v2 == v1)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v5 = *(v0 + 248) + 1;
    *(v0 + 248) = v5;
    v6 = *(v0 + 232);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_29EAAD064(v6 + 40 * v5 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB98, &qword_29EB18120);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 216);
        v8 = *(v0 + 291);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v9 = *(v0 + 80);
        v10 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v9);
        *(v0 + 289) = v8;
        *(v0 + 200) = v7;
        v11 = *(v10 + 32);

        v17 = (v11 + *v11);
        v12 = swift_task_alloc();
        *(v0 + 256) = v12;
        *v12 = v0;
        v12[1] = sub_29EAD0A24;

        return v17(v0 + 289, v0 + 200, v9, v10);
      }

      else
      {
        v13 = *(v0 + 291);
        v14 = *(v0 + 40);
        v15 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
        *(v0 + 288) = v13;
        v18 = (*(v15 + 40) + **(v15 + 40));
        v16 = swift_task_alloc();
        *(v0 + 272) = v16;
        *v16 = v0;
        v16[1] = sub_29EAD0CC8;

        return v18(v0 + 288, v14, v15);
      }
    }
  }

  return result;
}

uint64_t sub_29EAD1160(char a1)
{
  *(v2 + 248) = v1;
  *(v2 + 371) = a1;
  v3 = sub_29EB1422C();
  *(v2 + 256) = v3;
  v4 = *(v3 - 8);
  *(v2 + 264) = v4;
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  (*(v4 + 32))();

  return MEMORY[0x2A1C73D48](sub_29EAD1274, v1, 0);
}

uint64_t sub_29EAD1274()
{
  v39 = v0;
  if (qword_2A187A2D8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187A580);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v35 = *(v0 + 280);
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = *(v0 + 371);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v38 = v9;
    *v8 = 136315394;
    *(v0 + 370) = v7;
    v10 = sub_29EB146FC();
    v12 = sub_29EABC674(v10, v11, &v38);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_beginAccess();
    (*(v5 + 16))(v35, v4, v6);
    v13 = sub_29EB146FC();
    v15 = sub_29EABC674(v13, v14, &v38);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Performing injections for %s with options %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v9, -1, -1);
    MEMORY[0x29EDA8150](v8, -1, -1);
  }

  v16 = *(v0 + 248);
  swift_beginAccess();
  v17 = *(v16 + 112);
  *(v0 + 296) = v17;
  v18 = *(v17 + 16);
  *(v0 + 304) = v18;
  if (v18)
  {

    result = swift_beginAccess();
    *(v0 + 312) = 0;
    v20 = *(v0 + 296);
    if (*(v20 + 16))
    {
      sub_29EAAD064(v20 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB78, &qword_29EB180F0);
      if (swift_dynamicCast())
      {
        v21 = *(v0 + 288);
        v23 = *(v0 + 264);
        v22 = *(v0 + 272);
        v24 = *(v0 + 256);
        v25 = *(v0 + 371);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v26 = *(v0 + 80);
        v27 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v26);
        *(v0 + 369) = v25;
        (*(v23 + 16))(v22, v21, v24);
        v36 = (*(v27 + 32) + **(v27 + 32));
        v28 = swift_task_alloc();
        *(v0 + 320) = v28;
        *v28 = v0;
        v28[1] = sub_29EAD17E0;
        v29 = *(v0 + 272);

        return v36(v0 + 369, v29, v26, v27);
      }

      else
      {
        v31 = *(v0 + 371);
        v32 = *(v0 + 40);
        v33 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v32);
        *(v0 + 368) = v31;
        v37 = (*(v33 + 40) + **(v33 + 40));
        v34 = swift_task_alloc();
        *(v0 + 352) = v34;
        *v34 = v0;
        v34[1] = sub_29EAD1B38;

        return v37(v0 + 368, v32, v33);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));

    v30 = *(v0 + 8);

    return v30();
  }

  return result;
}

uint64_t sub_29EAD17E0()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = v2[33];
    v3 = v2[34];
    v6 = v2[31];
    v5 = v2[32];
    v7 = *(v4 + 8);
    v2[42] = v7;
    v2[43] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v8 = sub_29EAD1A90;
    v9 = v6;
  }

  else
  {
    v10 = v2[31];
    (*(v2[33] + 8))(v2[34], v2[32]);
    v8 = sub_29EAD194C;
    v9 = v10;
  }

  return MEMORY[0x2A1C73D48](v8, v9, 0);
}

uint64_t sub_29EAD194C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 371);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 368) = v1;
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 352) = v4;
  *v4 = v0;
  v4[1] = sub_29EAD1B38;

  return v6(v0 + 368, v2, v3);
}

uint64_t sub_29EAD1A90()
{
  v1 = v0[42];
  v2 = v0[36];
  v3 = v0[32];
  sub_29EAAD4D8((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29EAD1B38()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = *(v2 + 248);

    v4 = sub_29EAD2020;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 248);
    v4 = sub_29EAD1C60;
  }

  return MEMORY[0x2A1C73D48](v4, v5, 0);
}

uint64_t sub_29EAD1C60()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312) + 1;
  result = sub_29EAAD4D8(v0 + 16);
  if (v2 == v1)
  {

    (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v5 = *(v0 + 312) + 1;
    *(v0 + 312) = v5;
    v6 = *(v0 + 296);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_29EAAD064(v6 + 40 * v5 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB78, &qword_29EB180F0);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 288);
        v9 = *(v0 + 264);
        v8 = *(v0 + 272);
        v10 = *(v0 + 256);
        v11 = *(v0 + 371);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v12 = *(v0 + 80);
        v13 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v12);
        *(v0 + 369) = v11;
        (*(v9 + 16))(v8, v7, v10);
        v20 = (*(v13 + 32) + **(v13 + 32));
        v14 = swift_task_alloc();
        *(v0 + 320) = v14;
        *v14 = v0;
        v14[1] = sub_29EAD17E0;
        v15 = *(v0 + 272);

        return v20(v0 + 369, v15, v12, v13);
      }

      else
      {
        v16 = *(v0 + 371);
        v17 = *(v0 + 40);
        v18 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
        *(v0 + 368) = v16;
        v21 = (*(v18 + 40) + **(v18 + 40));
        v19 = swift_task_alloc();
        *(v0 + 352) = v19;
        *v19 = v0;
        v19[1] = sub_29EAD1B38;

        return v21(v0 + 368, v17, v18);
      }
    }
  }

  return result;
}

uint64_t sub_29EAD2020()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[33];
  sub_29EAAD4D8((v0 + 2));
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29EAD20C8(char a1)
{
  *(v2 + 248) = v1;
  *(v2 + 371) = a1;
  v3 = sub_29EB14A0C();
  *(v2 + 256) = v3;
  v4 = *(v3 - 8);
  *(v2 + 264) = v4;
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  (*(v4 + 32))();

  return MEMORY[0x2A1C73D48](sub_29EAD21DC, v1, 0);
}

uint64_t sub_29EAD21DC()
{
  v39 = v0;
  if (qword_2A187A2D8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187A580);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v35 = *(v0 + 280);
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = *(v0 + 371);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v38 = v9;
    *v8 = 136315394;
    *(v0 + 370) = v7;
    v10 = sub_29EB146FC();
    v12 = sub_29EABC674(v10, v11, &v38);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_beginAccess();
    (*(v5 + 16))(v35, v4, v6);
    v13 = sub_29EB146FC();
    v15 = sub_29EABC674(v13, v14, &v38);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Performing injections for %s with options %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v9, -1, -1);
    MEMORY[0x29EDA8150](v8, -1, -1);
  }

  v16 = *(v0 + 248);
  swift_beginAccess();
  v17 = *(v16 + 112);
  *(v0 + 296) = v17;
  v18 = *(v17 + 16);
  *(v0 + 304) = v18;
  if (v18)
  {

    result = swift_beginAccess();
    *(v0 + 312) = 0;
    v20 = *(v0 + 296);
    if (*(v20 + 16))
    {
      sub_29EAAD064(v20 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB30, &qword_29EB18088);
      if (swift_dynamicCast())
      {
        v21 = *(v0 + 288);
        v23 = *(v0 + 264);
        v22 = *(v0 + 272);
        v24 = *(v0 + 256);
        v25 = *(v0 + 371);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v26 = *(v0 + 80);
        v27 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v26);
        *(v0 + 369) = v25;
        (*(v23 + 16))(v22, v21, v24);
        v36 = (*(v27 + 32) + **(v27 + 32));
        v28 = swift_task_alloc();
        *(v0 + 320) = v28;
        *v28 = v0;
        v28[1] = sub_29EAD2748;
        v29 = *(v0 + 272);

        return v36(v0 + 369, v29, v26, v27);
      }

      else
      {
        v31 = *(v0 + 371);
        v32 = *(v0 + 40);
        v33 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v32);
        *(v0 + 368) = v31;
        v37 = (*(v33 + 40) + **(v33 + 40));
        v34 = swift_task_alloc();
        *(v0 + 352) = v34;
        *v34 = v0;
        v34[1] = sub_29EAD29F8;

        return v37(v0 + 368, v32, v33);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));

    v30 = *(v0 + 8);

    return v30();
  }

  return result;
}

uint64_t sub_29EAD2748()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = v2[33];
    v3 = v2[34];
    v6 = v2[31];
    v5 = v2[32];
    v7 = *(v4 + 8);
    v2[42] = v7;
    v2[43] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v8 = sub_29EAE4948;
    v9 = v6;
  }

  else
  {
    v10 = v2[31];
    (*(v2[33] + 8))(v2[34], v2[32]);
    v8 = sub_29EAD28B4;
    v9 = v10;
  }

  return MEMORY[0x2A1C73D48](v8, v9, 0);
}

uint64_t sub_29EAD28B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 371);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 368) = v1;
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 352) = v4;
  *v4 = v0;
  v4[1] = sub_29EAD29F8;

  return v6(v0 + 368, v2, v3);
}

uint64_t sub_29EAD29F8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = *(v2 + 248);

    v4 = sub_29EAE4984;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 248);
    v4 = sub_29EAD2B20;
  }

  return MEMORY[0x2A1C73D48](v4, v5, 0);
}

uint64_t sub_29EAD2B20()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312) + 1;
  result = sub_29EAAD4D8(v0 + 16);
  if (v2 == v1)
  {

    (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v5 = *(v0 + 312) + 1;
    *(v0 + 312) = v5;
    v6 = *(v0 + 296);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_29EAAD064(v6 + 40 * v5 + 32, v0 + 16);
      sub_29EAAD474(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB30, &qword_29EB18088);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 288);
        v9 = *(v0 + 264);
        v8 = *(v0 + 272);
        v10 = *(v0 + 256);
        v11 = *(v0 + 371);
        sub_29EAADE9C((v0 + 136), v0 + 56);
        v12 = *(v0 + 80);
        v13 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v12);
        *(v0 + 369) = v11;
        (*(v9 + 16))(v8, v7, v10);
        v20 = (*(v13 + 32) + **(v13 + 32));
        v14 = swift_task_alloc();
        *(v0 + 320) = v14;
        *v14 = v0;
        v14[1] = sub_29EAD2748;
        v15 = *(v0 + 272);

        return v20(v0 + 369, v15, v12, v13);
      }

      else
      {
        v16 = *(v0 + 371);
        v17 = *(v0 + 40);
        v18 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
        *(v0 + 368) = v16;
        v21 = (*(v18 + 40) + **(v18 + 40));
        v19 = swift_task_alloc();
        *(v0 + 352) = v19;
        *v19 = v0;
        v19[1] = sub_29EAD29F8;

        return v21(v0 + 368, v17, v18);
      }
    }
  }

  return result;
}

uint64_t sub_29EAD2EE0(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_29EB14A0C();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAD2FCC, v1, 0);
}

uint64_t sub_29EAD2FCC()
{
  sub_29EB1405C();
  swift_allocObject();
  *(v0 + 216) = sub_29EB1404C();
  *(v0 + 160) = xmmword_29EB16E70;

  return MEMORY[0x2A1C73D48](sub_29EAD3084, 0, 0);
}

uint64_t sub_29EAD3084()
{
  (*(*(v0 + 200) + 16))(*(v0 + 208), *(v0 + 176), *(v0 + 192));
  sub_29EAE414C(&qword_2A187AB28, MEMORY[0x29EDB9DC8], MEMORY[0x29EDB9DD0]);
  sub_29EB1495C();
  for (i = *(v0 + 144); i != *(v0 + 152); i = *(v0 + 144))
  {
    v3 = *i;
    *(v0 + 144) = i + 1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB38, &qword_29EB180A8);
    *(v0 + 40) = v2;
    *(v0 + 48) = sub_29EAE3B20();
    *(v0 + 16) = v3;
    *(v0 + 258) = *__swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    sub_29EB1427C();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = sub_29EAD327C;

  return MEMORY[0x2A1C5A720]();
}

uint64_t sub_29EAD327C(__int16 a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    swift_unknownObjectRelease();
    sub_29EAAD010(*(v4 + 160), *(v4 + 168));
    v5 = sub_29EAD35D8;
  }

  else
  {
    *(v4 + 256) = a1;
    v5 = sub_29EAD33DC;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EAD33DC()
{
  v1 = *(v0 + 256);
  if ((v1 & 0x100) != 0)
  {
    v5 = *(v0 + 184);
    swift_unknownObjectRelease();
    *(v0 + 240) = *(v0 + 160);

    return MEMORY[0x2A1C73D48](sub_29EAD3724, v5, 0);
  }

  else
  {
    v2 = v1;
    while (1)
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB38, &qword_29EB180A8);
      *(v0 + 40) = v3;
      *(v0 + 48) = sub_29EAE3B20();
      *(v0 + 16) = v2;
      *(v0 + 258) = *__swift_project_boxed_opaque_existential_1((v0 + 16), v3);
      sub_29EB1427C();
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v4 = *(v0 + 144);
      if (v4 == *(v0 + 152))
      {
        break;
      }

      v2 = *v4;
      *(v0 + 144) = v4 + 1;
    }

    v6 = swift_task_alloc();
    *(v0 + 224) = v6;
    *v6 = v0;
    v6[1] = sub_29EAD327C;

    return MEMORY[0x2A1C5A720]();
  }
}

uint64_t sub_29EAD35D8()
{
  v1 = *(v0 + 184);

  return MEMORY[0x2A1C73D48](sub_29EAD3664, v1, 0);
}

uint64_t sub_29EAD3664()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29EAD3724()
{
  v1 = *(v0 + 232);
  sub_29EAAD660();
  sub_29EB1403C();
  if (v1)
  {

    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_29EABCCEC(v0 + 96, &qword_2A187AB48, &qword_29EB180B0);
    sub_29EAE3B84();
    sub_29EB1403C();
    sub_29EAACE48();
    v8 = *(v0 + 240);
    v9 = *(v0 + 248);
    (*(*(v0 + 200) + 8))(*(v0 + 176), *(v0 + 192));
    sub_29EAAD010(v8, v9);
  }

  else
  {
    v2 = *(v0 + 112);
    *(v0 + 56) = *(v0 + 96);
    *(v0 + 72) = v2;
    *(v0 + 88) = *(v0 + 128);
    sub_29EAACB3C(v0 + 56);
    v3 = *(v0 + 240);
    v4 = *(v0 + 248);
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 176);

    sub_29EAAD010(v3, v4);
    (*(v6 + 8))(v7, v5);
    sub_29EAAD4D8(v0 + 56);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_29EAD3968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v25 - v10;
  sub_29EAE37E4(a3, v25 - v10);
  v12 = sub_29EB1491C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_29EABCCEC(v11, &unk_2A187A8A0, &qword_29EB17630);
  }

  else
  {
    sub_29EB1490C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_29EB1489C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_29EB1471C() + 32;
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

      sub_29EABCCEC(a3, &unk_2A187A8A0, &qword_29EB17630);

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

  sub_29EABCCEC(a3, &unk_2A187A8A0, &qword_29EB17630);
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

uint64_t sub_29EAD3C58()
{
  v0 = sub_29EB1454C();
  __swift_allocate_value_buffer(v0, qword_2A187AA80);
  v1 = __swift_project_value_buffer(v0, qword_2A187AA80);
  if (qword_2A187A2E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2A1881290);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_29EAD3D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = aBlock - v7;
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v9 = sub_29EB1454C();
  __swift_project_value_buffer(v9, qword_2A187AA80);
  v10 = sub_29EB1452C();
  v11 = sub_29EB14A4C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_29EAA5000, v10, v11, "Received request to preflight export", v12, 2u);
    MEMORY[0x29EDA8150](v12, -1, -1);
  }

  v13 = sub_29EB1491C();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;
  v15 = v3;

  v16 = sub_29EAD3968(0, 0, v8, &unk_29EB18190, v14);
  v17 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  aBlock[4] = sub_29EAE4610;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EABE4EC;
  aBlock[3] = &block_descriptor_86;
  v18 = _Block_copy(aBlock);

  [v17 setCancellationHandler_];
  _Block_release(v18);

  return v17;
}

uint64_t sub_29EAD3FF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[95] = a6;
  v6[94] = a5;
  v6[93] = a4;
  v7 = *((*MEMORY[0x29EDCA1E8] & *a4) + 0x50);
  v6[96] = v7;
  v6[97] = *(v7 - 8);
  v6[98] = swift_task_alloc();
  v6[99] = swift_task_alloc();
  v6[100] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAD40F0, 0, 0);
}

uint64_t sub_29EAD40F0()
{
  sub_29EB148FC();
  *(v0 + 808) = sub_29EB148EC();
  v2 = sub_29EB1489C();

  return MEMORY[0x2A1C73D48](sub_29EAD4184, v2, v1);
}

uint64_t sub_29EAD4184()
{
  v1 = *(v0 + 744);

  *(v0 + 816) = *(v1 + *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60));

  return MEMORY[0x2A1C73D48](sub_29EAD4224, 0, 0);
}

uint64_t sub_29EAD4224()
{
  if (*(v0 + 816))
  {
    v1 = swift_task_alloc();
    *(v0 + 824) = v1;
    *v1 = v0;
    v1[1] = sub_29EAD4B7C;

    return sub_29EAABD08(v0 + 16);
  }

  v3 = *(v0 + 800);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v6 = *(v0 + 744);
  v7 = *((*MEMORY[0x29EDCA1E8] & *v6) + 0x68);
  *(v0 + 840) = v7;
  v8 = *(v4 + 16);
  *(v0 + 848) = v8;
  *(v0 + 856) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, &v6[v7], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABB8, &qword_29EB18158);
  if (swift_dynamicCast())
  {
    sub_29EAADE9C((v0 + 312), v0 + 272);
    sub_29EAAD474(v0 + 272, v0 + 632);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABF0, &qword_29EB181B8);
    if (swift_dynamicCast())
    {
      sub_29EAADE9C((v0 + 672), v0 + 592);
      v9 = *(v0 + 616);
      v10 = *(v0 + 624);
      __swift_project_boxed_opaque_existential_1((v0 + 592), v9);
      v39 = (*(v10 + 16) + **(v10 + 16));
      v11 = swift_task_alloc();
      *(v0 + 864) = v11;
      *v11 = v0;
      v11[1] = sub_29EAD5628;
      v12 = v9;
      v13 = v10;
      v14 = v39;
    }

    else
    {
      *(v0 + 704) = 0;
      *(v0 + 672) = 0u;
      *(v0 + 688) = 0u;
      sub_29EABCCEC(v0 + 672, &qword_2A187ABF8, &qword_29EB181C0);
      *(v0 + 896) = 0u;
      v18 = *(v0 + 296);
      v19 = *(v0 + 304);
      __swift_project_boxed_opaque_existential_1((v0 + 272), v18);
      v41 = (*(v19 + 56) + **(v19 + 56));
      v20 = swift_task_alloc();
      *(v0 + 912) = v20;
      *v20 = v0;
      v20[1] = sub_29EAD5B3C;
      v12 = v18;
      v13 = v19;
      v14 = v41;
    }

    return v14(v12, v13);
  }

  *(v0 + 344) = 0;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  sub_29EABCCEC(v0 + 312, &qword_2A187ABC0, &qword_29EB18160);
  *(v0 + 928) = 0u;
  *(v0 + 944) = 0u;
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0;
  (*(v0 + 848))(*(v0 + 792), *(v0 + 744) + *(v0 + 840), *(v0 + 768));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABA0, &qword_29EB18128);
  if (swift_dynamicCast())
  {
    sub_29EAADE9C((v0 + 392), v0 + 352);
    sub_29EAAD474(v0 + 352, v0 + 512);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABE0, &qword_29EB181A8);
    if (swift_dynamicCast())
    {
      sub_29EAADE9C((v0 + 552), v0 + 472);
      v15 = *(v0 + 496);
      v16 = *(v0 + 504);
      __swift_project_boxed_opaque_existential_1((v0 + 472), v15);
      v40 = (*(v16 + 16) + **(v16 + 16));
      v17 = swift_task_alloc();
      *(v0 + 984) = v17;
      *v17 = v0;
      v17[1] = sub_29EAD6428;
      v12 = v15;
      v13 = v16;
      v14 = v40;
    }

    else
    {
      *(v0 + 584) = 0;
      *(v0 + 552) = 0u;
      *(v0 + 568) = 0u;
      sub_29EABCCEC(v0 + 552, &qword_2A187ABE8, &qword_29EB181B0);
      *(v0 + 1016) = 0u;
      v34 = *(v0 + 376);
      v35 = *(v0 + 384);
      __swift_project_boxed_opaque_existential_1((v0 + 352), v34);
      v43 = (*(v35 + 56) + **(v35 + 56));
      v36 = swift_task_alloc();
      *(v0 + 1032) = v36;
      *v36 = v0;
      v36[1] = sub_29EAD6938;
      v12 = v34;
      v13 = v35;
      v14 = v43;
    }

    return v14(v12, v13);
  }

  *(v0 + 424) = 0;
  *(v0 + 392) = 0u;
  *(v0 + 408) = 0u;
  sub_29EABCCEC(v0 + 392, &qword_2A187ABA8, &qword_29EB18130);
  (*(v0 + 848))(*(v0 + 784), *(v0 + 744) + *(v0 + 840), *(v0 + 768));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABD0, &qword_29EB18198);
  v21 = swift_dynamicCast();
  if ((v21 & 1) == 0)
  {
    *(v0 + 464) = 0;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
  }

  sub_29EABCCEC(v0 + 432, &qword_2A187ABD8, &qword_29EB181A0);
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v22 = sub_29EB1454C();
  __swift_project_value_buffer(v22, qword_2A187AA80);
  v23 = sub_29EB1452C();
  v24 = sub_29EB14A4C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_29EAA5000, v23, v24, "Completed calculating preflight info", v25, 2u);
    MEMORY[0x29EDA8150](v25, -1, -1);
  }

  v26 = *(v0 + 976);
  v27 = *(v0 + 752);
  v38 = *(v0 + 928);
  v42 = *(v0 + 960);
  v37 = *(v0 + 944);

  v28 = type metadata accessor for PreflightInfo.XPCHelper();
  v29 = objc_allocWithZone(v28);
  v30 = &v29[OBJC_IVAR___AMKPreflightInfo_preflightInfo];
  *v30 = v38;
  *(v30 + 1) = v37;
  *(v30 + 2) = v42;
  *(v30 + 6) = v26;
  *(v30 + 56) = 0u;
  *(v30 + 72) = 0u;
  *(v30 + 88) = 0u;
  *(v30 + 13) = 0;
  v31 = MEMORY[0x29EDCA190];
  v30[112] = v21;
  *(v30 + 15) = v31;
  *(v0 + 712) = v29;
  *(v0 + 720) = v28;
  v32 = objc_msgSendSuper2((v0 + 712), sel_init);
  v27(v32, 0);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_29EAD4B7C()
{
  *(*v1 + 832) = v0;

  if (v0)
  {
    v2 = sub_29EAD6F00;
  }

  else
  {
    v2 = sub_29EAD4C90;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAD4C90()
{
  v1 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v1;
  v2 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v2;
  v3 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v3;
  v4 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v4;
  if (sub_29EAE4618(v0 + 144) == 1)
  {

    v5 = *(v0 + 800);
    v6 = *(v0 + 776);
    v7 = *(v0 + 768);
    v8 = *(v0 + 744);
    v9 = *((*MEMORY[0x29EDCA1E8] & *v8) + 0x68);
    *(v0 + 840) = v9;
    v10 = *(v6 + 16);
    *(v0 + 848) = v10;
    *(v0 + 856) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v5, &v8[v9], v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABB8, &qword_29EB18158);
    if (swift_dynamicCast())
    {
      sub_29EAADE9C((v0 + 312), v0 + 272);
      sub_29EAAD474(v0 + 272, v0 + 632);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABF0, &qword_29EB181B8);
      if (swift_dynamicCast())
      {
        sub_29EAADE9C((v0 + 672), v0 + 592);
        v11 = *(v0 + 616);
        v12 = *(v0 + 624);
        __swift_project_boxed_opaque_existential_1((v0 + 592), v11);
        v53 = (*(v12 + 16) + **(v12 + 16));
        v13 = swift_task_alloc();
        *(v0 + 864) = v13;
        *v13 = v0;
        v13[1] = sub_29EAD5628;
        v14 = v11;
        v15 = v12;
        v16 = v53;
      }

      else
      {
        *(v0 + 704) = 0;
        *(v0 + 672) = 0u;
        *(v0 + 688) = 0u;
        sub_29EABCCEC(v0 + 672, &qword_2A187ABF8, &qword_29EB181C0);
        *(v0 + 896) = 0u;
        v33 = *(v0 + 296);
        v34 = *(v0 + 304);
        __swift_project_boxed_opaque_existential_1((v0 + 272), v33);
        v55 = (*(v34 + 56) + **(v34 + 56));
        v35 = swift_task_alloc();
        *(v0 + 912) = v35;
        *v35 = v0;
        v35[1] = sub_29EAD5B3C;
        v14 = v33;
        v15 = v34;
        v16 = v55;
      }

      return v16(v14, v15);
    }

    *(v0 + 344) = 0;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    sub_29EABCCEC(v0 + 312, &qword_2A187ABC0, &qword_29EB18160);
    *(v0 + 928) = 0u;
    *(v0 + 944) = 0u;
    *(v0 + 960) = 0u;
    *(v0 + 976) = 0;
    (*(v0 + 848))(*(v0 + 792), *(v0 + 744) + *(v0 + 840), *(v0 + 768));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABA0, &qword_29EB18128);
    if (swift_dynamicCast())
    {
      sub_29EAADE9C((v0 + 392), v0 + 352);
      sub_29EAAD474(v0 + 352, v0 + 512);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABE0, &qword_29EB181A8);
      if (swift_dynamicCast())
      {
        sub_29EAADE9C((v0 + 552), v0 + 472);
        v30 = *(v0 + 496);
        v31 = *(v0 + 504);
        __swift_project_boxed_opaque_existential_1((v0 + 472), v30);
        v54 = (*(v31 + 16) + **(v31 + 16));
        v32 = swift_task_alloc();
        *(v0 + 984) = v32;
        *v32 = v0;
        v32[1] = sub_29EAD6428;
        v14 = v30;
        v15 = v31;
        v16 = v54;
      }

      else
      {
        *(v0 + 584) = 0;
        *(v0 + 552) = 0u;
        *(v0 + 568) = 0u;
        sub_29EABCCEC(v0 + 552, &qword_2A187ABE8, &qword_29EB181B0);
        *(v0 + 1016) = 0u;
        v48 = *(v0 + 376);
        v49 = *(v0 + 384);
        __swift_project_boxed_opaque_existential_1((v0 + 352), v48);
        v57 = (*(v49 + 56) + **(v49 + 56));
        v50 = swift_task_alloc();
        *(v0 + 1032) = v50;
        *v50 = v0;
        v50[1] = sub_29EAD6938;
        v14 = v48;
        v15 = v49;
        v16 = v57;
      }

      return v16(v14, v15);
    }

    *(v0 + 424) = 0;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    sub_29EABCCEC(v0 + 392, &qword_2A187ABA8, &qword_29EB18130);
    (*(v0 + 848))(*(v0 + 784), *(v0 + 744) + *(v0 + 840), *(v0 + 768));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABD0, &qword_29EB18198);
    v36 = swift_dynamicCast();
    if ((v36 & 1) == 0)
    {
      *(v0 + 464) = 0;
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;
    }

    sub_29EABCCEC(v0 + 432, &qword_2A187ABD8, &qword_29EB181A0);
    if (qword_2A187A328 != -1)
    {
      swift_once();
    }

    v37 = sub_29EB1454C();
    __swift_project_value_buffer(v37, qword_2A187AA80);
    v38 = sub_29EB1452C();
    v39 = sub_29EB14A4C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_29EAA5000, v38, v39, "Completed calculating preflight info", v40, 2u);
      MEMORY[0x29EDA8150](v40, -1, -1);
    }

    v41 = *(v0 + 976);
    v42 = *(v0 + 752);
    v52 = *(v0 + 928);
    v56 = *(v0 + 960);
    v51 = *(v0 + 944);

    v43 = type metadata accessor for PreflightInfo.XPCHelper();
    v44 = objc_allocWithZone(v43);
    v45 = &v44[OBJC_IVAR___AMKPreflightInfo_preflightInfo];
    *v45 = v52;
    *(v45 + 1) = v51;
    *(v45 + 2) = v56;
    *(v45 + 6) = v41;
    *(v45 + 56) = 0u;
    *(v45 + 72) = 0u;
    *(v45 + 88) = 0u;
    *(v45 + 13) = 0;
    v46 = MEMORY[0x29EDCA190];
    v45[112] = v36;
    *(v45 + 15) = v46;
    *(v0 + 712) = v44;
    *(v0 + 720) = v43;
    v47 = objc_msgSendSuper2((v0 + 712), sel_init);
    v42(v47, 0);
  }

  else
  {
    v17 = *(v0 + 752);
    v18 = type metadata accessor for PreflightInfo.XPCHelper();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR___AMKPreflightInfo_preflightInfo];
    v21 = *(v0 + 176);
    v22 = *(v0 + 192);
    v23 = *(v0 + 160);
    *v20 = *(v0 + 144);
    v24 = *(v0 + 208);
    v25 = *(v0 + 224);
    v26 = *(v0 + 256);
    *(v20 + 6) = *(v0 + 240);
    *(v20 + 7) = v26;
    *(v20 + 4) = v24;
    *(v20 + 5) = v25;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    *(v20 + 1) = v23;
    *(v0 + 728) = v19;
    *(v0 + 736) = v18;
    v27 = objc_msgSendSuper2((v0 + 728), sel_init);
    v17(v27, 0);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_29EAD5628(uint64_t a1)
{
  *(*v1 + 872) = a1;

  return MEMORY[0x2A1C73D48](sub_29EAD5728, 0, 0);
}

uint64_t sub_29EAD5728()
{
  v1 = v0[77];
  v2 = v0[78];
  __swift_project_boxed_opaque_existential_1(v0 + 74, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[110] = v3;
  *v3 = v0;
  v3[1] = sub_29EAD5850;

  return v5(v1, v2);
}

uint64_t sub_29EAD5850(uint64_t a1)
{
  *(*v1 + 888) = a1;

  return MEMORY[0x2A1C73D48](sub_29EAD5950, 0, 0);
}

uint64_t sub_29EAD5950()
{
  if ((v0[109] & 0x8000000000000000) != 0 || (v0[111] & 0x8000000000000000) != 0)
  {
    return sub_29EB14D2C();
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 74);
  v1 = v0[111];
  v0[113] = v0[109];
  v0[112] = v1;
  v2 = v0[37];
  v3 = v0[38];
  __swift_project_boxed_opaque_existential_1(v0 + 34, v2);
  v6 = (*(v3 + 56) + **(v3 + 56));
  v4 = swift_task_alloc();
  v0[114] = v4;
  *v4 = v0;
  v4[1] = sub_29EAD5B3C;

  return v6(v2, v3);
}

uint64_t sub_29EAD5B3C(uint64_t a1)
{
  *(*v1 + 920) = a1;

  return MEMORY[0x2A1C73D48](sub_29EAD5C3C, 0, 0);
}

uint64_t sub_29EAD5C3C()
{
  if ((*(v0 + 920) & 0x8000000000000000) != 0)
  {
    return sub_29EB14D2C();
  }

  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  __swift_project_boxed_opaque_existential_1((v0 + 272), v2);
  v3 = sub_29EB04E10(v2, v1);
  v4 = v3[2];
  if (v4 > 0x63)
  {
    return sub_29EB14D2C();
  }

  v5 = v3;
  if (v4)
  {
    v6 = 0;
    v7 = (v0 + 1052);
    v8 = v3 + 5;
    while (v6 < v5[2])
    {

      if (sub_29EB1474C() > 254)
      {
        sub_29EB14C2C();

        *v7 = 255;
        v37 = sub_29EB14E8C();
        MEMORY[0x29EDA6DF0](v37);

        MEMORY[0x29EDA6DF0](41, 0xE100000000000000);
        return sub_29EB14D2C();
      }

      ++v6;
      v8 += 2;
      if (v4 == v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_18;
  }

LABEL_8:
  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  __swift_project_boxed_opaque_existential_1((v0 + 272), v9);
  v11 = (*(v10 + 64))(v9, v10);
  v13 = v12;
  v14 = *(v0 + 296);
  v15 = *(v0 + 304);
  __swift_project_boxed_opaque_existential_1((v0 + 272), v14);
  v16 = (*(v15 + 72))(v14, v15) & 1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  v17 = *(v0 + 920);
  *(v0 + 976) = v5;
  *(v0 + 968) = v16;
  *(v0 + 960) = v13;
  *(v0 + 952) = v11;
  *(v0 + 936) = vextq_s8(*(v0 + 896), *(v0 + 896), 8uLL);
  *(v0 + 928) = v17;
  (*(v0 + 848))(*(v0 + 792), *(v0 + 744) + *(v0 + 840), *(v0 + 768));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABA0, &qword_29EB18128);
  if (swift_dynamicCast())
  {
    sub_29EAADE9C((v0 + 392), v0 + 352);
    sub_29EAAD474(v0 + 352, v0 + 512);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABE0, &qword_29EB181A8);
    if (swift_dynamicCast())
    {
      sub_29EAADE9C((v0 + 552), v0 + 472);
      v18 = *(v0 + 496);
      v19 = *(v0 + 504);
      __swift_project_boxed_opaque_existential_1((v0 + 472), v18);
      v43 = (*(v19 + 16) + **(v19 + 16));
      v20 = swift_task_alloc();
      *(v0 + 984) = v20;
      *v20 = v0;
      v20[1] = sub_29EAD6428;
      v21 = v18;
      v22 = v19;
      v23 = v43;
    }

    else
    {
      *(v0 + 584) = 0;
      *(v0 + 552) = 0u;
      *(v0 + 568) = 0u;
      sub_29EABCCEC(v0 + 552, &qword_2A187ABE8, &qword_29EB181B0);
      *(v0 + 1016) = 0u;
      v38 = *(v0 + 376);
      v39 = *(v0 + 384);
      __swift_project_boxed_opaque_existential_1((v0 + 352), v38);
      v45 = (*(v39 + 56) + **(v39 + 56));
      v40 = swift_task_alloc();
      *(v0 + 1032) = v40;
      *v40 = v0;
      v40[1] = sub_29EAD6938;
      v21 = v38;
      v22 = v39;
      v23 = v45;
    }

    return v23(v21, v22);
  }

  *(v0 + 424) = 0;
  *(v0 + 392) = 0u;
  *(v0 + 408) = 0u;
  sub_29EABCCEC(v0 + 392, &qword_2A187ABA8, &qword_29EB18130);
  (*(v0 + 848))(*(v0 + 784), *(v0 + 744) + *(v0 + 840), *(v0 + 768));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABD0, &qword_29EB18198);
  LOBYTE(v7) = swift_dynamicCast();
  if ((v7 & 1) == 0)
  {
    *(v0 + 464) = 0;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
  }

  sub_29EABCCEC(v0 + 432, &qword_2A187ABD8, &qword_29EB181A0);
  if (qword_2A187A328 != -1)
  {
    goto LABEL_29;
  }

LABEL_18:
  v25 = sub_29EB1454C();
  __swift_project_value_buffer(v25, qword_2A187AA80);
  v26 = sub_29EB1452C();
  v27 = sub_29EB14A4C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_29EAA5000, v26, v27, "Completed calculating preflight info", v28, 2u);
    MEMORY[0x29EDA8150](v28, -1, -1);
  }

  v29 = *(v0 + 976);
  v30 = *(v0 + 752);
  v42 = *(v0 + 928);
  v44 = *(v0 + 960);
  v41 = *(v0 + 944);

  v31 = type metadata accessor for PreflightInfo.XPCHelper();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR___AMKPreflightInfo_preflightInfo];
  *v33 = v42;
  *(v33 + 1) = v41;
  *(v33 + 2) = v44;
  *(v33 + 6) = v29;
  *(v33 + 56) = 0u;
  *(v33 + 72) = 0u;
  *(v33 + 88) = 0u;
  *(v33 + 13) = 0;
  v34 = MEMORY[0x29EDCA190];
  v33[112] = v7;
  *(v33 + 15) = v34;
  *(v0 + 712) = v32;
  *(v0 + 720) = v31;
  v35 = objc_msgSendSuper2((v0 + 712), sel_init);
  v30(v35, 0);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_29EAD6428(uint64_t a1)
{
  *(*v1 + 992) = a1;

  return MEMORY[0x2A1C73D48](sub_29EAD6528, 0, 0);
}

uint64_t sub_29EAD6528()
{
  v1 = v0[62];
  v2 = v0[63];
  __swift_project_boxed_opaque_existential_1(v0 + 59, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[125] = v3;
  *v3 = v0;
  v3[1] = sub_29EAD664C;

  return v5(v1, v2);
}

uint64_t sub_29EAD664C(uint64_t a1)
{
  *(*v1 + 1008) = a1;

  return MEMORY[0x2A1C73D48](sub_29EAD674C, 0, 0);
}

uint64_t sub_29EAD674C()
{
  if ((v0[124] & 0x8000000000000000) != 0 || (v0[126] & 0x8000000000000000) != 0)
  {
    return sub_29EB14D2C();
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 59);
  v1 = v0[126];
  v0[128] = v0[124];
  v0[127] = v1;
  v2 = v0[47];
  v3 = v0[48];
  __swift_project_boxed_opaque_existential_1(v0 + 44, v2);
  v6 = (*(v3 + 56) + **(v3 + 56));
  v4 = swift_task_alloc();
  v0[129] = v4;
  *v4 = v0;
  v4[1] = sub_29EAD6938;

  return v6(v2, v3);
}

uint64_t sub_29EAD6938(uint64_t a1)
{
  *(*v1 + 1040) = a1;

  return MEMORY[0x2A1C73D48](sub_29EAD6A38, 0, 0);
}

uint64_t sub_29EAD6A38()
{
  if ((*(v0 + 1040) & 0x8000000000000000) != 0)
  {
    return sub_29EB14D2C();
  }

  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  __swift_project_boxed_opaque_existential_1((v0 + 352), v3);
  v4 = sub_29EAB035C(v3, v2);
  v5 = v4[2];
  if (v5 > 0x63)
  {
    return sub_29EB14D2C();
  }

  v6 = v4;
  if (v5)
  {
    v7 = 0;
    v8 = v4 + 5;
    while (v7 < v6[2])
    {
      v1 = *(v8 - 1);

      if (sub_29EB1474C() > 254)
      {
        sub_29EB14C2C();

        *(v0 + 1048) = 255;
        v27 = sub_29EB14E8C();
        MEMORY[0x29EDA6DF0](v27);

        MEMORY[0x29EDA6DF0](41, 0xE100000000000000);
        return sub_29EB14D2C();
      }

      ++v7;
      v8 += 2;
      if (v5 == v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v9 = *(v0 + 376);
    v10 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v9);
    v11 = (*(v10 + 64))(v9, v10);
    v33 = v12;
    v34 = v11;
    v5 = *(v0 + 376);
    v7 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v5);
    LOBYTE(v5) = (*(v7 + 72))(v5, v7);
    __swift_destroy_boxed_opaque_existential_1((v0 + 352));
    v1 = *(v0 + 1024);
    v31 = *(v0 + 1016);
    v32 = *(v0 + 1040);
    (*(v0 + 848))(*(v0 + 784), *(v0 + 744) + *(v0 + 840), *(v0 + 768));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABD0, &qword_29EB18198);
    LOBYTE(v7) = swift_dynamicCast();
    if ((v7 & 1) == 0)
    {
      *(v0 + 464) = 0;
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;
    }

    sub_29EABCCEC(v0 + 432, &qword_2A187ABD8, &qword_29EB181A0);
    if (qword_2A187A328 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v13 = sub_29EB1454C();
  __swift_project_value_buffer(v13, qword_2A187AA80);
  v14 = sub_29EB1452C();
  v15 = sub_29EB14A4C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_29EAA5000, v14, v15, "Completed calculating preflight info", v16, 2u);
    MEMORY[0x29EDA8150](v16, -1, -1);
  }

  v17 = v5 & 1;
  v18 = *(v0 + 976);
  v19 = *(v0 + 752);
  v29 = *(v0 + 928);
  v30 = *(v0 + 960);
  v28 = *(v0 + 944);

  v20 = type metadata accessor for PreflightInfo.XPCHelper();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR___AMKPreflightInfo_preflightInfo];
  *v22 = v29;
  *(v22 + 1) = v28;
  *(v22 + 2) = v30;
  *(v22 + 6) = v18;
  *(v22 + 7) = v32;
  *(v22 + 8) = v1;
  *(v22 + 9) = v31;
  *(v22 + 10) = v34;
  *(v22 + 11) = v33;
  *(v22 + 12) = v17;
  *(v22 + 13) = v6;
  v23 = MEMORY[0x29EDCA190];
  v22[112] = v7;
  *(v22 + 15) = v23;
  *(v0 + 712) = v21;
  *(v0 + 720) = v20;
  v24 = objc_msgSendSuper2((v0 + 712), sel_init);
  v19(v24, 0);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_29EAD6F00()
{
  v1 = v0[104];
  v2 = v0[94];

  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

void sub_29EAD6FBC(uint64_t a1)
{
  sub_29EB1492C();
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187AA80);
  oslog = sub_29EB1452C();
  v2 = sub_29EB14A5C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_29EAA5000, oslog, v2, "Preflight was cancelled", v3, 2u);
    MEMORY[0x29EDA8150](v3, -1, -1);
  }
}

id sub_29EAD70C4(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  v7 = sub_29EAD3D54(sub_29EAE4980, v5);

  return v7;
}

id sub_29EAD715C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void *), uint64_t a7)
{
  v8 = v7;
  v63 = a7;
  v64 = a6;
  v57 = a4;
  v58 = a5;
  v55 = a2;
  v11 = *v7;
  v12 = *MEMORY[0x29EDCA1E8];
  v13 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v60 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29EB1400C();
  v61 = *(v15 - 8);
  v62 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v19 = MEMORY[0x2A1C7C4A8](v18 - 8);
  v56 = &v55 - v20;
  v21 = *((v12 & v11) + 0x50);
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v24 = &v55 - v23;
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v25 = sub_29EB1454C();
  v59 = __swift_project_value_buffer(v25, qword_2A187AA80);
  v26 = sub_29EB1452C();
  v27 = sub_29EB14A4C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v8;
    v29 = a1;
    v30 = a3;
    v31 = v17;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_29EAA5000, v26, v27, "Received request to export serialized data", v32, 2u);
    v33 = v32;
    v17 = v31;
    a3 = v30;
    a1 = v29;
    v8 = v28;
    MEMORY[0x29EDA8150](v33, -1, -1);
  }

  (*(v22 + 16))(v24, v8 + *((*MEMORY[0x29EDCA1E8] & *v8) + 0x68), v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABB8, &qword_29EB18158);
  if (swift_dynamicCast())
  {
    result = sub_29EAADE9C(&aBlock, v69);
    if (a3 < 0)
    {
      __break(1u);
    }

    else
    {
      v36 = *(v55 + OBJC_IVAR___AMKRawMigrationRequest_request + 8);
      v35 = *(v55 + OBJC_IVAR___AMKRawMigrationRequest_request + 16);
      v37 = *(v55 + OBJC_IVAR___AMKRawMigrationRequest_request);
      v38 = objc_opt_self();

      v39 = [v38 progressWithTotalUnitCount_];
      [v39 setCancellable_];
      v40 = sub_29EB1491C();
      v41 = v56;
      (*(*(v40 - 8) + 56))(v56, 1, 1, v40);
      sub_29EAAD474(v69, &aBlock);
      v42 = swift_allocObject();
      v42[2] = 0;
      v42[3] = 0;
      v43 = v57;
      v42[4] = a1;
      v42[5] = v43;
      v42[6] = v58;
      v42[7] = v39;
      v42[8] = v8;
      sub_29EAADE9C(&aBlock, (v42 + 9));
      v42[14] = v37;
      v42[15] = v36;
      v42[16] = v35;
      v42[17] = a3;
      v44 = v63;
      v42[18] = v64;
      v42[19] = v44;

      v45 = v39;
      v46 = v8;

      v47 = a1;
      v48 = sub_29EAD3968(0, 0, v41, &unk_29EB18170, v42);
      v67 = sub_29EAE44D0;
      v68 = v48;
      *&aBlock = MEMORY[0x29EDCA5F8];
      *(&aBlock + 1) = 1107296256;
      *&v66 = sub_29EABE4EC;
      *(&v66 + 1) = &block_descriptor_70;
      v49 = _Block_copy(&aBlock);

      [v45 setCancellationHandler_];
      _Block_release(v49);

      __swift_destroy_boxed_opaque_existential_1(v69);
      return v45;
    }
  }

  else
  {
    v67 = 0;
    aBlock = 0u;
    v66 = 0u;
    sub_29EABCCEC(&aBlock, &qword_2A187ABC0, &qword_29EB18160);
    v50 = sub_29EB1452C();
    v51 = sub_29EB14A5C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_29EAA5000, v50, v51, "App extension doesn't support serialized data export", v52, 2u);
      MEMORY[0x29EDA8150](v52, -1, -1);
    }

    sub_29EB13FBC();
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EAE414C(&qword_2A187A800, MEMORY[0x29EDB9860], MEMORY[0x29EDB9858]);
    v53 = v62;
    sub_29EB1415C();
    v54 = sub_29EB13F9C();
    (*(v61 + 8))(v17, v53);
    v64(0, v54);

    return 0;
  }

  return result;
}

uint64_t sub_29EAD77F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = v15;
  *(v8 + 160) = v13;
  *(v8 + 176) = v14;
  *(v8 + 144) = v12;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 104) = a4;
  v9 = sub_29EB1430C();
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAD78E8, 0, 0);
}

uint64_t sub_29EAD78E8()
{
  v10 = v0;
  if (*(v0 + 120))
  {
    v1 = sub_29EB14D8C() != 0;
  }

  else
  {
    v1 = 1;
  }

  *(v0 + 486) = v1;
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v9[0] = v1;
  v4 = v3;
  v5 = v2;
  *(v0 + 232) = sub_29EB054D0(v9, v4, v2);
  sub_29EB148FC();
  *(v0 + 240) = sub_29EB148EC();
  v7 = sub_29EB1489C();

  return MEMORY[0x2A1C73D48](sub_29EAD7C08, v7, v6);
}

uint64_t sub_29EAD7C08()
{
  v1 = *(v0 + 136);

  *(v0 + 248) = *(v1 + *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60));

  return MEMORY[0x2A1C73D48](sub_29EAD7CA8, 0, 0);
}

uint64_t sub_29EAD7CA8()
{
  if (*(v0 + 248))
  {

    v1 = swift_task_alloc();
    *(v0 + 256) = v1;
    *v1 = v0;
    v1[1] = sub_29EAD7E2C;
    v2 = *(v0 + 232);

    return sub_29EACEBB8(2, v2);
  }

  else
  {
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    v10 = *(v0 + 160);
    sub_29EB142FC();
    v6 = v4[3];
    v7 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v6);
    *(v0 + 16) = v5;
    *(v0 + 24) = v10;
    v8 = swift_task_alloc();
    *(v0 + 272) = v8;
    *v8 = v0;
    v8[1] = sub_29EAD8030;
    v9 = *(v0 + 232);

    return sub_29EB01B54(v9, v0 + 16, v6, v7);
  }
}

uint64_t sub_29EAD7E2C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_29EAD886C;
  }

  else
  {
    v2 = sub_29EAD7F40;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAD7F40()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v8 = *(v0 + 160);
  sub_29EB142FC();
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = v8;
  v5 = swift_task_alloc();
  *(v0 + 272) = v5;
  *v5 = v0;
  v5[1] = sub_29EAD8030;
  v6 = *(v0 + 232);

  return sub_29EB01B54(v6, v0 + 16, v3, v4);
}

uint64_t sub_29EAD8030()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_29EAD8F58;
  }

  else
  {
    v2 = sub_29EAD8144;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAD8144(uint64_t a1)
{
  v2 = v1[27];
  v3 = v1[25];
  v4 = v1[26];
  sub_29EB142FC();
  sub_29EB142EC();
  v1[36] = v5;
  v6 = *(v4 + 8);
  v1[37] = v6;
  v1[38] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = swift_task_alloc();
  v1[39] = v7;
  *v7 = v1;
  v7[1] = sub_29EAD8220;

  return sub_29EB01CD4();
}

uint64_t sub_29EAD8220()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_29EAD9018;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 232);
    v3 = sub_29EAD833C;
  }

  return MEMORY[0x2A1C73D48](v3, v4, 0);
}

uint64_t sub_29EAD833C()
{
  v1 = v0[29];
  v0[41] = v1[19];
  v2 = v1[14];
  v0[42] = v2;
  if (v2)
  {
    v0[43] = v1[16];
    v0[44] = v1[15];
    v3 = sub_29EAD8394;
  }

  else
  {
    v0[47] = 0;
    v3 = sub_29EAD85D8;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAD8394()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = swift_task_alloc();
  v0[45] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[46] = v5;
  *v5 = v0;
  v5[1] = sub_29EAD849C;
  v6 = MEMORY[0x29EDCA0D0];

  return MEMORY[0x2A1C73C70](v0 + 12, 0, 0, 0xD000000000000019, 0x800000029EB1BFA0, sub_29EAE4988, v4, v6);
}

uint64_t sub_29EAD849C()
{

  return MEMORY[0x2A1C73D48](sub_29EAD85B4, 0, 0);
}

uint64_t sub_29EAD85D8()
{
  v2 = *(v1 + 288);
  if (v2 <= 0.0)
  {
    v2 = 0.0;
  }

  v3 = v2 * 1000.0;
  if (COERCE__INT64(fabs(v2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v3 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 1.84467441e19)
  {
    v0 = *(v1 + 336);
    v23 = *(v1 + 486);
    if (qword_2A187A328 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  swift_once();
LABEL_7:
  v4 = sub_29EB1454C();
  __swift_project_value_buffer(v4, qword_2A187AA80);
  v5 = sub_29EB1452C();
  v6 = sub_29EB14A4C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_29EAA5000, v5, v6, "Completed exporting serialized data", v7, 2u);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  v8 = *(v1 + 376);
  v9 = *(v1 + 328);
  v22 = *(v1 + 296);
  v20 = *(v1 + 200);
  v21 = *(v1 + 224);
  v10 = *(v1 + 176);
  v11 = *(v1 + 184);
  v19 = *(v1 + 104);

  v12 = type metadata accessor for AppContentMetrics.XPCHelper();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
  *v14 = 0;
  v15 = *(v1 + 479);
  *(v14 + 1) = *(v1 + 482);
  *(v14 + 1) = v15;
  *(v14 + 1) = v23;
  *(v14 + 2) = v10;
  *(v14 + 3) = v9;
  *(v14 + 4) = 0;
  *(v14 + 5) = v8;
  *(v14 + 6) = v0 == 0;
  *(v14 + 7) = v3;
  *(v14 + 4) = 0u;
  *(v14 + 5) = 0u;
  *(v14 + 6) = 0u;
  *(v14 + 14) = 0;
  *(v14 + 15) = 2;
  *(v14 + 17) = 0;
  *(v14 + 18) = 0;
  *(v14 + 16) = 0;
  *(v1 + 72) = v13;
  *(v1 + 80) = v12;
  v16 = objc_msgSendSuper2((v1 + 72), sel_init);
  v11(v16, 0);

  v22(v21, v20);
  sub_29EADB428(v19);

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_29EAD886C()
{

  v1 = *(v0 + 264);
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v2 = sub_29EB1454C();
  __swift_project_value_buffer(v2, qword_2A187AA80);
  v3 = v1;
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Failed to export serialized data %@", v6, 0xCu);
    sub_29EABCCEC(v7, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v10 = *(v0 + 184);
  v11 = *(v0 + 104);

  v12 = type metadata accessor for AppContentMetrics.XPCHelper();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = 2;
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0u;
  *(v14 + 15) = 2;
  *(v14 + 16) = 0;
  *(v14 + 17) = 0;
  *(v14 + 18) = 0;
  *(v0 + 40) = v13;
  *(v0 + 48) = v12;
  v15 = objc_msgSendSuper2((v0 + 40), sel_init);
  v16 = v1;
  v10(v15, v1);

  sub_29EADB428(v11);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_29EAD8AC4()
{
  v1 = v0[29];
  v0[52] = v1[19];
  v2 = v1[14];
  v0[53] = v2;
  if (v2)
  {
    v0[54] = v1[16];
    v0[55] = v1[15];
    v3 = sub_29EAD8B1C;
  }

  else
  {
    v0[58] = 0;
    v3 = sub_29EAD8D5C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAD8B1C()
{
  v1 = v0[26].i64[1];
  v2 = swift_task_alloc();
  v0[28].i64[0] = v2;
  v3 = v0[27];
  *(v2 + 16) = v1;
  *(v2 + 24) = vextq_s8(v3, v3, 8uLL);
  v4 = swift_task_alloc();
  v0[28].i64[1] = v4;
  *v4 = v0;
  v4[1] = sub_29EAD8C20;
  v5 = MEMORY[0x29EDCA0D0];

  return MEMORY[0x2A1C73C70](&v0[5].u64[1], 0, 0, 0xD000000000000019, 0x800000029EB1BFA0, sub_29EAE44F4, v2, v5);
}

uint64_t sub_29EAD8C20()
{

  return MEMORY[0x2A1C73D48](sub_29EAD8D38, 0, 0);
}

void sub_29EAD8D5C()
{
  v2 = *(v0 + 392);
  if (v2 <= 0.0)
  {
    v2 = 0.0;
  }

  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 <= -1.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v4 = *(v0 + 464);
  v5 = *(v0 + 416);
  v22 = *(v0 + 400);
  v6 = *(v0 + 384);
  v7 = *(v0 + 486);
  v20 = *(v0 + 200);
  v21 = *(v0 + 224);
  v18 = *(v0 + 184);
  v8 = *(v0 + 176);
  v19 = *(v0 + 104);
  v9 = *(v0 + 424) == 0;
  v10 = v3;
  v11 = type metadata accessor for AppContentMetrics.XPCHelper();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
  *v13 = 0;
  v14 = *(v0 + 472);
  *(v13 + 1) = *(v0 + 475);
  *(v13 + 1) = v14;
  *(v13 + 1) = v7;
  *(v13 + 2) = v8;
  *(v13 + 3) = v5;
  *(v13 + 4) = 0;
  *(v13 + 5) = v4;
  *(v13 + 6) = v9;
  *(v13 + 7) = v10;
  *(v13 + 4) = 0u;
  *(v13 + 5) = 0u;
  *(v13 + 6) = 0u;
  *(v13 + 14) = 0;
  *(v13 + 15) = 2;
  *(v13 + 17) = 0;
  *(v13 + 18) = 0;
  *(v13 + 16) = 0;
  *(v0 + 56) = v12;
  *(v0 + 64) = v11;
  v15 = objc_msgSendSuper2((v0 + 56), sel_init);
  v16 = v6;
  v18(v15, v6);

  v22(v21, v20);
  sub_29EADB428(v19);

  v17 = *(v0 + 8);

  v17();
}

uint64_t sub_29EAD8F58(uint64_t a1)
{
  v1[48] = v1[35];
  v2 = v1[29];
  v4 = v1[26];
  v3 = v1[27];
  v5 = v1[25];
  sub_29EB142FC();
  sub_29EB142EC();
  v1[49] = v6;
  v7 = *(v4 + 8);
  v1[50] = v7;
  v1[51] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);

  return MEMORY[0x2A1C73D48](sub_29EAD8AC4, v2, 0);
}

uint64_t sub_29EAD9018(uint64_t a1)
{
  v1[48] = v1[40];
  v2 = v1[29];
  v4 = v1[26];
  v3 = v1[27];
  v5 = v1[25];
  sub_29EB142FC();
  sub_29EB142EC();
  v1[49] = v6;
  v7 = *(v4 + 8);
  v1[50] = v7;
  v1[51] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);

  return MEMORY[0x2A1C73D48](sub_29EAD8AC4, v2, 0);
}

id sub_29EAD90D8(void *a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *aBlock)
{
  v12 = _Block_copy(aBlock);
  if (a6)
  {
    v13 = sub_29EB146AC();
    a6 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = a3;
  v17 = a4;
  v18 = a1;
  v19 = sub_29EAD715C(v16, v17, a5, v13, a6, sub_29EAE4980, v15);

  return v19;
}

void sub_29EAD91E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_29EB1416C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_29EAD9254(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void *), uint64_t a7)
{
  v8 = v7;
  v64 = a7;
  v65 = a6;
  v57 = a4;
  v58 = a5;
  v59 = a1;
  v11 = *v7;
  v12 = *MEMORY[0x29EDCA1E8];
  v13 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v62 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29EB1400C();
  v63 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v61 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v18 = MEMORY[0x2A1C7C4A8](v17 - 8);
  v56 = &v56 - v19;
  v20 = *((v12 & v11) + 0x50);
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v23 = &v56 - v22;
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v24 = sub_29EB1454C();
  v60 = __swift_project_value_buffer(v24, qword_2A187AA80);
  v25 = sub_29EB1452C();
  v26 = sub_29EB14A4C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v8;
    v28 = v15;
    v29 = a2;
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_29EAA5000, v25, v26, "Starting to export resources", v30, 2u);
    v31 = v30;
    a2 = v29;
    v15 = v28;
    v8 = v27;
    MEMORY[0x29EDA8150](v31, -1, -1);
  }

  (*(v21 + 16))(v23, v8 + *((*MEMORY[0x29EDCA1E8] & *v8) + 0x68), v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ABA0, &qword_29EB18128);
  if (swift_dynamicCast())
  {
    result = sub_29EAADE9C(&aBlock, v70);
    if (a3 < 0)
    {
      __break(1u);
    }

    else
    {
      v34 = *(a2 + OBJC_IVAR___AMKRawMigrationRequest_request + 8);
      v33 = *(a2 + OBJC_IVAR___AMKRawMigrationRequest_request + 16);
      v35 = *(a2 + OBJC_IVAR___AMKRawMigrationRequest_request);
      v36 = a3;
      v37 = objc_opt_self();

      v38 = [v37 progressWithTotalUnitCount_];
      [v38 setCancellable_];
      v39 = sub_29EB1491C();
      v40 = v56;
      (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
      sub_29EAAD474(v70, &aBlock);
      v41 = swift_allocObject();
      v41[2] = 0;
      v41[3] = 0;
      v42 = v59;
      v44 = v57;
      v43 = v58;
      v41[4] = v59;
      v41[5] = v44;
      v41[6] = v43;
      v41[7] = v38;
      v41[8] = v8;
      sub_29EAADE9C(&aBlock, (v41 + 9));
      v41[14] = v35;
      v41[15] = v34;
      v41[16] = v33;
      v41[17] = v36;
      v45 = v64;
      v41[18] = v65;
      v41[19] = v45;
      v46 = v42;
      v47 = v38;
      v48 = v8;

      v49 = sub_29EAD3968(0, 0, v40, &unk_29EB18140, v41);
      v68 = sub_29EAE431C;
      v69 = v49;
      *&aBlock = MEMORY[0x29EDCA5F8];
      *(&aBlock + 1) = 1107296256;
      *&v67 = sub_29EABE4EC;
      *(&v67 + 1) = &block_descriptor_57_0;
      v50 = _Block_copy(&aBlock);

      [v47 setCancellationHandler_];
      _Block_release(v50);

      __swift_destroy_boxed_opaque_existential_1(v70);
      return v47;
    }
  }

  else
  {
    v68 = 0;
    aBlock = 0u;
    v67 = 0u;
    sub_29EABCCEC(&aBlock, &qword_2A187ABA8, &qword_29EB18130);
    v51 = sub_29EB1452C();
    v52 = sub_29EB14A5C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_29EAA5000, v51, v52, "App extension doesn't support resources export", v53, 2u);
      MEMORY[0x29EDA8150](v53, -1, -1);
    }

    sub_29EB13FBC();
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EAE414C(&qword_2A187A800, MEMORY[0x29EDB9860], MEMORY[0x29EDB9858]);
    v54 = v61;
    sub_29EB1415C();
    v55 = sub_29EB13F9C();
    (*(v63 + 8))(v54, v15);
    v65(0, v55);

    return 0;
  }

  return result;
}

uint64_t sub_29EAD98E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v15;
  *(v8 + 184) = v14;
  *(v8 + 168) = v13;
  *(v8 + 152) = v12;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 112) = a4;
  v9 = sub_29EB1430C();
  *(v8 + 208) = v9;
  *(v8 + 216) = *(v9 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAD9A04, 0, 0);
}

uint64_t sub_29EAD9A04()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  type metadata accessor for ResourcesArchiver();
  v3 = swift_allocObject();
  *(v0 + 240) = v3;
  *(v3 + 24) = v1 != 0;
  if (v2)
  {
    *(v0 + 88) = v2;
    v4 = v0 + 88;
    v5 = &type metadata for ArchiveFormat;
LABEL_9:
    v15 = MEMORY[0x29EDC9CA8];

    return MEMORY[0x2A1C73108](v5, v4, v5, v15);
  }

  if (v1 >= 2)
  {
    *(v0 + 96) = v1;
    v4 = v0 + 96;
    v5 = &type metadata for ArchiveCompressionScheme;
    goto LABEL_9;
  }

  v6 = v3;
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = objc_allocWithZone(AMKArchiveWriter);
  *(v0 + 104) = 0;
  v10 = [v9 initWithArchiveFormat:0 compressionScheme:v1 fileHandle:v8 progress:v7 updateProgress:1 error:v0 + 104];
  *(v0 + 248) = v10;
  v11 = *(v0 + 104);
  if (v10)
  {
    *(v6 + 16) = v10;
    sub_29EB148FC();
    v12 = v11;
    *(v0 + 256) = sub_29EB148EC();
    v14 = sub_29EB1489C();

    return MEMORY[0x2A1C73D48](sub_29EAD9E40, v14, v13);
  }

  else
  {
    v16 = v11;
    v17 = sub_29EB1417C();

    swift_willThrow();
    swift_deallocPartialClassInstance();
    if (qword_2A187A328 != -1)
    {
      swift_once();
    }

    v18 = sub_29EB1454C();
    __swift_project_value_buffer(v18, qword_2A187AA80);
    v19 = v17;
    v20 = sub_29EB1452C();
    v21 = sub_29EB14A5C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v17;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_29EAA5000, v20, v21, "Failed to export resources %@", v22, 0xCu);
      sub_29EABCCEC(v23, &qword_2A187A648, qword_29EB17EB0);
      MEMORY[0x29EDA8150](v23, -1, -1);
      MEMORY[0x29EDA8150](v22, -1, -1);
    }

    v26 = *(v0 + 248);
    v27 = *(v0 + 192);

    v28 = type metadata accessor for AppContentMetrics.XPCHelper();
    v29 = objc_allocWithZone(v28);
    v30 = &v29[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
    *v30 = 1;
    *(v30 + 1) = 0;
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    *(v30 + 4) = 2;
    *(v30 + 40) = 0u;
    *(v30 + 56) = 0u;
    *(v30 + 72) = 0u;
    *(v30 + 88) = 0u;
    *(v30 + 104) = 0u;
    *(v30 + 15) = 2;
    *(v30 + 16) = 0;
    *(v30 + 17) = 0;
    *(v30 + 18) = 0;
    *(v0 + 40) = v29;
    *(v0 + 48) = v28;
    v31 = objc_msgSendSuper2((v0 + 40), sel_init);
    v32 = v17;
    v27(v31, v17);

    if (v26)
    {
    }

    sub_29EADB428(*(v0 + 112));

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_29EAD9E40()
{
  v1 = *(v0 + 144);

  *(v0 + 264) = *(v1 + *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60));

  return MEMORY[0x2A1C73D48](sub_29EAD9F0C, 0, 0);
}

uint64_t sub_29EAD9F0C(uint64_t a1)
{
  if (*(v1 + 264))
  {

    v2 = swift_task_alloc();
    *(v1 + 272) = v2;
    *v2 = v1;
    v2[1] = sub_29EADA0D0;
    v3 = *(v1 + 240);

    return sub_29EACF7F8(0, v3);
  }

  else
  {
    v5 = *(v1 + 152);
    v6 = *(v1 + 160);
    v11 = *(v1 + 168);
    sub_29EB142FC();
    v8 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v8);
    *(v1 + 16) = v6;
    *(v1 + 24) = v11;
    v9 = swift_task_alloc();
    *(v1 + 288) = v9;
    *v9 = v1;
    v9[1] = sub_29EADA330;
    v10 = *(v1 + 240);

    return sub_29EAAEE34(v10, v1 + 16, v8, v7);
  }
}

uint64_t sub_29EADA0D0()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_29EADA9A0;
  }

  else
  {
    v2 = sub_29EADA210;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EADA210()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v8 = *(v0 + 168);
  sub_29EB142FC();
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  *(v0 + 16) = v2;
  *(v0 + 24) = v8;
  v5 = swift_task_alloc();
  *(v0 + 288) = v5;
  *v5 = v0;
  v5[1] = sub_29EADA330;
  v6 = *(v0 + 240);

  return sub_29EAAEE34(v6, v0 + 16, v4, v3);
}

uint64_t sub_29EADA330()
{
  v2 = *v1;
  *(v2 + 296) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EADAC28, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 304) = v3;
    *v3 = v2;
    v3[1] = sub_29EADA4EC;

    return sub_29EAAF7C8();
  }
}

uint64_t sub_29EADA4EC()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_29EADB028;
  }

  else
  {
    v2 = sub_29EADA62C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EADA62C(uint64_t a1)
{
  v2 = *(v1 + 240);
  v4 = *(v1 + 216);
  v3 = *(v1 + 224);
  v5 = *(v1 + 208);
  sub_29EB142FC();
  sub_29EB142EC();
  v7 = v6;
  v8 = *(v4 + 8);
  v8(v3, v5);
  v9 = 0.0;
  if (v7 > 0.0)
  {
    v9 = v7;
  }

  v10 = v9 * 1000.0;
  v11 = [*(v2 + 16) uncompressedBytes];
  v12 = *(v2 + 24);
  if (v12 == 1)
  {
    v13 = [*(*(v1 + 240) + 16) compressedBytes];
  }

  else
  {
    v13 = 0;
  }

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v10 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 1.84467441e19)
  {
    v35 = v13;
    v34 = v12 ^ 1;
    v14 = *(v1 + 240);
    v33 = [*(v14 + 16) fileCount];
    v32 = [*(v14 + 16) directoryCount];
    v31 = [*(v14 + 16) symlinkCount];
    if (qword_2A187A328 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  v36 = v11;
  v15 = sub_29EB1454C();
  __swift_project_value_buffer(v15, qword_2A187AA80);
  v16 = sub_29EB1452C();
  v17 = sub_29EB14A4C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_29EAA5000, v16, v17, "Completed exporting resources", v18, 2u);
    MEMORY[0x29EDA8150](v18, -1, -1);
  }

  v19 = *(v1 + 232);
  v20 = *(v1 + 208);
  v21 = *(v1 + 184);
  v22 = *(v1 + 192);
  v23 = *(v1 + 128);
  v24 = *(v1 + 112);

  v25 = type metadata accessor for AppContentMetrics.XPCHelper();
  v26 = objc_allocWithZone(v25);
  v27 = &v26[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
  *v27 = 1;
  *(v27 + 1) = 0;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = 2;
  *(v27 + 56) = 0u;
  *(v27 + 40) = 0u;
  *(v27 + 9) = v23;
  *(v27 + 10) = v33;
  *(v27 + 11) = v32;
  *(v27 + 12) = v31;
  *(v27 + 13) = v21;
  *(v27 + 14) = v36;
  v27[120] = 0;
  *(v27 + 16) = v35;
  v27[136] = v34;
  *(v27 + 18) = v10;
  *(v1 + 72) = v26;
  *(v1 + 80) = v25;
  v28 = objc_msgSendSuper2((v1 + 72), sel_init);
  v22(v28, 0);

  v8(v19, v20);

  sub_29EADB428(v24);

  v29 = *(v1 + 8);

  return v29();
}

uint64_t sub_29EADA9A0()
{

  v1 = *(v0 + 280);
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v2 = sub_29EB1454C();
  __swift_project_value_buffer(v2, qword_2A187AA80);
  v3 = v1;
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Failed to export resources %@", v6, 0xCu);
    sub_29EABCCEC(v7, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 192);

  v12 = type metadata accessor for AppContentMetrics.XPCHelper();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
  *v14 = 1;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = 2;
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0u;
  *(v14 + 15) = 2;
  *(v14 + 16) = 0;
  *(v14 + 17) = 0;
  *(v14 + 18) = 0;
  *(v0 + 40) = v13;
  *(v0 + 48) = v12;
  v15 = objc_msgSendSuper2((v0 + 40), sel_init);
  v16 = v1;
  v11(v15, v1);

  if (v10)
  {
  }

  sub_29EADB428(*(v0 + 112));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_29EADAC28()
{
  v1 = *(v0 + 296);
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v2 = sub_29EB1454C();
  __swift_project_value_buffer(v2, qword_2A187AA80);
  v3 = v1;
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A3C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Failed to export resources %@", v6, 0xCu);
    sub_29EABCCEC(v7, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v10 = *(v0 + 240);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 208);

  sub_29EB142FC();
  sub_29EB142EC();
  v15 = v14;
  v16 = *(v12 + 8);
  v16(v11, v13);
  v17 = 0.0;
  if (v15 > 0.0)
  {
    v17 = v15;
  }

  v18 = v17 * 1000.0;
  v19 = [*(v10 + 16) uncompressedBytes];
  v20 = *(v10 + 24);
  if (v20 == 1)
  {
    v21 = [*(*(v0 + 240) + 16) compressedBytes];
  }

  else
  {
    v21 = 0;
  }

  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v18 <= -1.0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (v18 >= 1.84467441e19)
  {
    goto LABEL_18;
  }

  v37 = v19;
  v22 = *(v0 + 240);
  v40 = *(v0 + 208);
  v41 = *(v0 + 232);
  v38 = *(v0 + 192);
  v35 = *(v0 + 184);
  v36 = v21;
  v39 = v16;
  v23 = *(v0 + 128);
  v42 = *(v0 + 112);
  v24 = [*(v22 + 16) fileCount];
  v25 = [*(v22 + 16) directoryCount];
  v26 = [*(v22 + 16) symlinkCount];
  v27 = v20 ^ 1;
  v28 = type metadata accessor for AppContentMetrics.XPCHelper();
  v29 = objc_allocWithZone(v28);
  v30 = &v29[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
  *v30 = 1;
  *(v30 + 1) = 0;
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = 2;
  *(v30 + 56) = 0u;
  *(v30 + 40) = 0u;
  *(v30 + 9) = v23;
  *(v30 + 10) = v24;
  *(v30 + 11) = v25;
  *(v30 + 12) = v26;
  *(v30 + 13) = v35;
  *(v30 + 14) = v37;
  v30[120] = 0;
  *(v30 + 16) = v36;
  v30[136] = v27;
  *(v30 + 18) = v18;
  *(v0 + 56) = v29;
  *(v0 + 64) = v28;
  v31 = objc_msgSendSuper2((v0 + 56), sel_init);
  v32 = v1;
  v38(v31, v1);

  v39(v41, v40);

  sub_29EADB428(v42);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_29EADB028()
{
  v1 = *(v0 + 312);
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v2 = sub_29EB1454C();
  __swift_project_value_buffer(v2, qword_2A187AA80);
  v3 = v1;
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A3C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Failed to export resources %@", v6, 0xCu);
    sub_29EABCCEC(v7, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v10 = *(v0 + 240);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 208);

  sub_29EB142FC();
  sub_29EB142EC();
  v15 = v14;
  v16 = *(v12 + 8);
  v16(v11, v13);
  v17 = 0.0;
  if (v15 > 0.0)
  {
    v17 = v15;
  }

  v18 = v17 * 1000.0;
  v19 = [*(v10 + 16) uncompressedBytes];
  v20 = *(v10 + 24);
  if (v20 == 1)
  {
    v21 = [*(*(v0 + 240) + 16) compressedBytes];
  }

  else
  {
    v21 = 0;
  }

  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v18 <= -1.0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (v18 >= 1.84467441e19)
  {
    goto LABEL_18;
  }

  v37 = v19;
  v22 = *(v0 + 240);
  v40 = *(v0 + 208);
  v41 = *(v0 + 232);
  v38 = *(v0 + 192);
  v35 = *(v0 + 184);
  v36 = v21;
  v39 = v16;
  v23 = *(v0 + 128);
  v42 = *(v0 + 112);
  v24 = [*(v22 + 16) fileCount];
  v25 = [*(v22 + 16) directoryCount];
  v26 = [*(v22 + 16) symlinkCount];
  v27 = v20 ^ 1;
  v28 = type metadata accessor for AppContentMetrics.XPCHelper();
  v29 = objc_allocWithZone(v28);
  v30 = &v29[OBJC_IVAR___AMKAppMetrics_appContentMetrics];
  *v30 = 1;
  *(v30 + 1) = 0;
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = 2;
  *(v30 + 56) = 0u;
  *(v30 + 40) = 0u;
  *(v30 + 9) = v23;
  *(v30 + 10) = v24;
  *(v30 + 11) = v25;
  *(v30 + 12) = v26;
  *(v30 + 13) = v35;
  *(v30 + 14) = v37;
  v30[120] = 0;
  *(v30 + 16) = v36;
  v30[136] = v27;
  *(v30 + 18) = v18;
  *(v0 + 56) = v29;
  *(v0 + 64) = v28;
  v31 = objc_msgSendSuper2((v0 + 56), sel_init);
  v32 = v1;
  v38(v31, v1);

  v39(v41, v40);

  sub_29EADB428(v42);

  v33 = *(v0 + 8);

  return v33();
}

void sub_29EADB428(void *a1)
{
  v6[1] = *MEMORY[0x29EDCA608];
  v6[0] = 0;
  v1 = [a1 closeAndReturnError_];
  v2 = v6[0];
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v6[0];
    v5 = sub_29EB1417C();

    swift_willThrow();
  }
}

id sub_29EADB508(void *a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *aBlock)
{
  v14 = _Block_copy(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = a3;
  v17 = a4;
  v18 = a1;
  v19 = sub_29EAD9254(v16, v17, a5, a6, a7, sub_29EAE48E4, v15);

  return v19;
}

id sub_29EADB5F4(uint64_t *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = a1;
  v9 = sub_29EAE2A28(sub_29EAE49AC);

  return v9;
}

void sub_29EADB6E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_29EB1416C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_29EADB748(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void, void, void *), uint64_t a6)
{
  v7 = v6;
  v80 = a5;
  v68 = a4;
  v72 = a1;
  v92 = *MEMORY[0x29EDCA608];
  v11 = *v6;
  v12 = *MEMORY[0x29EDCA1E8];
  v73 = *MEMORY[0x29EDCA1E8] & v11;
  v13 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v76 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_29EB1400C();
  v77 = *(v78 - 8);
  MEMORY[0x2A1C7C4A8](v78);
  v75 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_29EB1422C();
  v67 = *(v71 - 8);
  MEMORY[0x2A1C7C4A8](v71);
  v69 = v16;
  v70 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v18 = MEMORY[0x2A1C7C4A8](v17 - 8);
  v79 = &v65 - v19;
  v20 = *((v12 & v11) + 0x50);
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v23 = &v65 - v22;
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v24 = sub_29EB1454C();
  v74 = __swift_project_value_buffer(v24, qword_2A187AA80);
  v25 = sub_29EB1452C();
  v26 = sub_29EB14A4C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = a2;
    v28 = v7;
    v29 = a3;
    v30 = v20;
    v31 = a6;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_29EAA5000, v25, v26, "Starting to import serialized data", v32, 2u);
    v33 = v32;
    a6 = v31;
    v20 = v30;
    a3 = v29;
    v7 = v28;
    a2 = v27;
    MEMORY[0x29EDA8150](v33, -1, -1);
  }

  (*(v21 + 16))(v23, v7 + *((*MEMORY[0x29EDCA1E8] & *v7) + 0x68), v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB18, &qword_29EB18008);
  if (swift_dynamicCast())
  {
    sub_29EAADE9C(&v87, v86);
    v34 = a3 >> 62;
    v66 = a6;
    v65 = v20;
    if ((a3 >> 62) > 1)
    {
      if (v34 != 2)
      {
        *(&v87 + 6) = 0;
        *&v87 = 0;
        goto LABEL_22;
      }

      v42 = *(a2 + 16);
      if (!sub_29EB140BC() || !__OFSUB__(v42, sub_29EB140DC()))
      {
        goto LABEL_20;
      }

      __break(1u);
    }

    else if (!v34)
    {
      *&v87 = a2;
      WORD4(v87) = a3;
      BYTE10(v87) = BYTE2(a3);
      BYTE11(v87) = BYTE3(a3);
      BYTE12(v87) = BYTE4(a3);
      BYTE13(v87) = BYTE5(a3);
LABEL_22:
      v78 = sandbox_extension_consume();
      v43 = *(v68 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 48);
      v89 = *(v68 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 32);
      v90 = v43;
      v91 = *(v68 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 64);
      v44 = *(v68 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 16);
      v87 = *(v68 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest);
      v88 = v44;
      v45 = objc_allocWithZone(MEMORY[0x29EDBA0B8]);
      sub_29EACD6D0(&v87, &aBlock);
      v77 = [v45 init];
      v46 = sub_29EB1491C();
      (*(*(v46 - 8) + 56))(v79, 1, 1, v46);
      v47 = v67;
      v48 = v70;
      v49 = v71;
      (*(v67 + 16))(v70, v72, v71);
      sub_29EAAD474(v86, &aBlock);
      v50 = (*(v47 + 80) + 56) & ~*(v47 + 80);
      v51 = (v69 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
      v53 = (v52 + 47) & 0xFFFFFFFFFFFFFFF8;
      v54 = swift_allocObject();
      *(v54 + 2) = 0;
      *(v54 + 3) = 0;
      *(v54 + 4) = v65;
      v55 = v78;
      *(v54 + 5) = *(v73 + 88);
      *(v54 + 6) = v55;
      (*(v47 + 32))(&v54[v50], v48, v49);
      *&v54[v51] = v7;
      sub_29EAADE9C(&aBlock, &v54[v52]);
      v56 = &v54[v53];
      v57 = v90;
      *(v56 + 2) = v89;
      *(v56 + 3) = v57;
      *(v56 + 8) = v91;
      v58 = v88;
      *v56 = v87;
      *(v56 + 1) = v58;
      v59 = &v54[(v53 + 79) & 0xFFFFFFFFFFFFFFF8];
      v60 = v66;
      *v59 = v80;
      *(v59 + 1) = v60;
      v61 = v7;

      v62 = sub_29EAD3968(0, 0, v79, &unk_29EB18100, v54);
      v84 = sub_29EAE4128;
      v85 = v62;
      *&aBlock = MEMORY[0x29EDCA5F8];
      *(&aBlock + 1) = 1107296256;
      v82 = sub_29EABE4EC;
      v83 = &block_descriptor_44;
      v63 = _Block_copy(&aBlock);

      v64 = v77;
      [v77 setCancellationHandler_];
      _Block_release(v63);

      __swift_destroy_boxed_opaque_existential_1(v86);
      return v64;
    }

    if (a2 > a2 >> 32)
    {
      __break(1u);
    }

    else if (!sub_29EB140BC() || !__OFSUB__(a2, sub_29EB140DC()))
    {
LABEL_20:
      sub_29EB140CC();
      goto LABEL_22;
    }

    __break(1u);
  }

  *&v89 = 0;
  v87 = 0u;
  v88 = 0u;
  sub_29EABCCEC(&v87, &qword_2A187AB20, &qword_29EB18010);
  v35 = sub_29EB1452C();
  v36 = sub_29EB14A5C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_29EAA5000, v35, v36, "App Extension doesn't support serialized data importing", v37, 2u);
    MEMORY[0x29EDA8150](v37, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EAE414C(&qword_2A187A800, MEMORY[0x29EDB9860], MEMORY[0x29EDB9858]);
  v38 = v75;
  v39 = v78;
  sub_29EB1415C();
  v40 = sub_29EB13F9C();
  (*(v77 + 1))(v38, v39);
  v80(0, 0, v40);

  return 0;
}

uint64_t sub_29EADC104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = v10;
  v8[44] = v11;
  v8[41] = a7;
  v8[42] = a8;
  v8[39] = a5;
  v8[40] = a6;
  v8[38] = a4;
  return MEMORY[0x2A1C73D48](sub_29EADC138, 0, 0);
}

uint64_t sub_29EADC138()
{
  sub_29EAE4A18(v0[39], 1, v0 + 35);
  v0[45] = v0[35];
  sub_29EB148FC();
  v0[46] = sub_29EB148EC();
  v2 = sub_29EB1489C();

  return MEMORY[0x2A1C73D48](sub_29EADC39C, v2, v1);
}

uint64_t sub_29EADC39C()
{
  v1 = *(v0 + 320);

  *(v0 + 376) = *(v1 + *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60));

  return MEMORY[0x2A1C73D48](sub_29EADC43C, 0, 0);
}

uint64_t sub_29EADC43C()
{
  if (*(v0 + 376))
  {

    v1 = swift_task_alloc();
    *(v0 + 384) = v1;
    *v1 = v0;
    v1[1] = sub_29EADC884;
    v2 = *(v0 + 360);

    return sub_29EAD0520(3, v2);
  }

  else
  {
    sub_29EAAD474(*(v0 + 328), v0 + 200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB18, &qword_29EB18008);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB80, &qword_29EB18108);
    v4 = swift_dynamicCast();
    v5 = *(v0 + 360);
    v6 = *(v0 + 336);
    if (v4)
    {
      sub_29EAADE9C((v0 + 240), v0 + 160);
      v7 = *(v0 + 184);
      v8 = *(v0 + 192);
      __swift_project_boxed_opaque_existential_1((v0 + 160), v7);
      *(v0 + 296) = v5;
      *(v0 + 88) = *v6;
      v10 = *(v6 + 32);
      v9 = *(v6 + 48);
      v11 = *(v6 + 64);
      *(v0 + 104) = *(v6 + 16);
      *(v0 + 152) = v11;
      *(v0 + 136) = v9;
      *(v0 + 120) = v10;
      v29 = (*(v8 + 16) + **(v8 + 16));
      v12 = swift_task_alloc();
      *(v0 + 416) = v12;
      v13 = type metadata accessor for SerializedDataReader(0);
      v14 = sub_29EAE414C(&qword_2A187AB90, type metadata accessor for SerializedDataReader, &unk_29EB18488);
      *v12 = v0;
      v12[1] = sub_29EADCE60;
      v15 = v0 + 296;
      v16 = v0 + 88;
      v17 = v13;
      v18 = v7;
      v19 = v8;
      v20 = v29;
    }

    else
    {
      v21 = *(v0 + 328);
      *(v0 + 240) = 0u;
      *(v0 + 256) = 0u;
      *(v0 + 272) = 0;
      sub_29EABCCEC(v0 + 240, &qword_2A187AB88, &qword_29EB18110);
      v22 = v21[3];
      v23 = v21[4];
      __swift_project_boxed_opaque_existential_1(v21, v22);
      *(v0 + 288) = v5;
      *(v0 + 16) = *v6;
      v25 = *(v6 + 32);
      v24 = *(v6 + 48);
      v26 = *(v6 + 16);
      *(v0 + 80) = *(v6 + 64);
      *(v0 + 48) = v25;
      *(v0 + 64) = v24;
      *(v0 + 32) = v26;
      v30 = (*(v23 + 16) + **(v23 + 16));
      v27 = swift_task_alloc();
      *(v0 + 400) = v27;
      v28 = type metadata accessor for SerializedDataReader(0);
      v14 = sub_29EAE414C(&qword_2A187AB90, type metadata accessor for SerializedDataReader, &unk_29EB18488);
      *v27 = v0;
      v27[1] = sub_29EADCD4C;
      v15 = v0 + 288;
      v16 = v0 + 16;
      v17 = v28;
      v18 = v22;
      v19 = v23;
      v20 = v30;
    }

    return v20(v15, v16, v17, v14, v18, v19);
  }
}

uint64_t sub_29EADC884()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_29EADD250;
  }

  else
  {
    v2 = sub_29EADC998;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EADC998()
{

  sub_29EAAD474(*(v0 + 328), v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB18, &qword_29EB18008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB80, &qword_29EB18108);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 360);
  v3 = *(v0 + 336);
  if (v1)
  {
    sub_29EAADE9C((v0 + 240), v0 + 160);
    v4 = *(v0 + 184);
    v5 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v0 + 160), v4);
    *(v0 + 296) = v2;
    *(v0 + 88) = *v3;
    v7 = *(v3 + 32);
    v6 = *(v3 + 48);
    v8 = *(v3 + 64);
    *(v0 + 104) = *(v3 + 16);
    *(v0 + 152) = v8;
    *(v0 + 136) = v6;
    *(v0 + 120) = v7;
    v27 = (*(v5 + 16) + **(v5 + 16));
    v9 = swift_task_alloc();
    *(v0 + 416) = v9;
    v10 = type metadata accessor for SerializedDataReader(0);
    v11 = sub_29EAE414C(&qword_2A187AB90, type metadata accessor for SerializedDataReader, &unk_29EB18488);
    *v9 = v0;
    v9[1] = sub_29EADCE60;
    v12 = v0 + 296;
    v13 = v0 + 88;
    v14 = v10;
    v15 = v4;
    v16 = v5;
    v17 = v27;
  }

  else
  {
    v18 = *(v0 + 328);
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0;
    sub_29EABCCEC(v0 + 240, &qword_2A187AB88, &qword_29EB18110);
    v19 = v18[3];
    v20 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v19);
    *(v0 + 288) = v2;
    *(v0 + 16) = *v3;
    v22 = *(v3 + 32);
    v21 = *(v3 + 48);
    v23 = *(v3 + 16);
    *(v0 + 80) = *(v3 + 64);
    *(v0 + 48) = v22;
    *(v0 + 64) = v21;
    *(v0 + 32) = v23;
    v28 = (*(v20 + 16) + **(v20 + 16));
    v24 = swift_task_alloc();
    *(v0 + 400) = v24;
    v25 = type metadata accessor for SerializedDataReader(0);
    v11 = sub_29EAE414C(&qword_2A187AB90, type metadata accessor for SerializedDataReader, &unk_29EB18488);
    *v24 = v0;
    v24[1] = sub_29EADCD4C;
    v12 = v0 + 288;
    v13 = v0 + 16;
    v14 = v25;
    v15 = v19;
    v16 = v20;
    v17 = v28;
  }

  return v17(v12, v13, v14, v11, v15, v16);
}

uint64_t sub_29EADCD4C()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_29EADD60C;
  }

  else
  {
    v2 = sub_29EADD0FC;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EADCE60(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 424) = v2;

  if (v2)
  {
    v7 = sub_29EADD430;
  }

  else
  {
    *(v6 + 432) = a2;
    *(v6 + 440) = a1;
    v7 = sub_29EADCF94;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EADCF94()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  v2 = v0[54];
  v1 = v0[55];
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v3 = sub_29EB1454C();
  __swift_project_value_buffer(v3, qword_2A187AA80);
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A4C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Completed importing serialized data", v6, 2u);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v7 = v0[43];
  v8 = v0[38];

  v7(v1, v2, 0);

  if (v8 >= 1)
  {
    sandbox_extension_release();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_29EADD0FC()
{
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187AA80);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Completed importing serialized data", v4, 2u);
    MEMORY[0x29EDA8150](v4, -1, -1);
  }

  v5 = v0[43];
  v6 = v0[38];

  v5(-1, -1, 0);

  if (v6 >= 1)
  {
    sandbox_extension_release();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_29EADD250()
{
  v1 = v0[38];

  v2 = v0[49];
  if (v1 > 0)
  {
    sandbox_extension_release();
  }

  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v3 = sub_29EB1454C();
  __swift_project_value_buffer(v3, qword_2A187AA80);
  v4 = v2;
  v5 = sub_29EB1452C();
  v6 = sub_29EB14A5C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_29EAA5000, v5, v6, "Failed importing serialized data %@", v7, 0xCu);
    sub_29EABCCEC(v8, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v8, -1, -1);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  v11 = v0[43];

  v12 = v2;
  v11(0, 0, v2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_29EADD430()
{
  v1 = v0[38];

  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  v2 = v0[53];
  if (v1 > 0)
  {
    sandbox_extension_release();
  }

  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v3 = sub_29EB1454C();
  __swift_project_value_buffer(v3, qword_2A187AA80);
  v4 = v2;
  v5 = sub_29EB1452C();
  v6 = sub_29EB14A5C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_29EAA5000, v5, v6, "Failed importing serialized data %@", v7, 0xCu);
    sub_29EABCCEC(v8, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v8, -1, -1);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  v11 = v0[43];

  v12 = v2;
  v11(0, 0, v2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_29EADD60C()
{
  v1 = v0[38];

  v2 = v0[51];
  if (v1 > 0)
  {
    sandbox_extension_release();
  }

  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v3 = sub_29EB1454C();
  __swift_project_value_buffer(v3, qword_2A187AA80);
  v4 = v2;
  v5 = sub_29EB1452C();
  v6 = sub_29EB14A5C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_29EAA5000, v5, v6, "Failed importing serialized data %@", v7, 0xCu);
    sub_29EABCCEC(v8, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v8, -1, -1);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  v11 = v0[43];

  v12 = v2;
  v11(0, 0, v2);

  v13 = v0[1];

  return v13();
}

void sub_29EADD830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_29EB1416C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

char *sub_29EADD8B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void, void, void *), uint64_t a6)
{
  v7 = v6;
  v80 = a6;
  v79 = a5;
  v70 = a4;
  v67 = a2;
  v74 = a1;
  v93 = *MEMORY[0x29EDCA608];
  v9 = *v6;
  v10 = *MEMORY[0x29EDCA1E8];
  v75 = *MEMORY[0x29EDCA1E8] & v9;
  v11 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v78 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29EB1400C();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v77 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_29EB1422C();
  v71 = *(v72 - 8);
  MEMORY[0x2A1C7C4A8](v72);
  v69 = v16;
  v68 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v18 = MEMORY[0x2A1C7C4A8](v17 - 8);
  v73 = &v66 - v19;
  v20 = *((v10 & v9) + 0x50);
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v23 = &v66 - v22;
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v24 = sub_29EB1454C();
  v76 = __swift_project_value_buffer(v24, qword_2A187AA80);
  v25 = sub_29EB1452C();
  v26 = sub_29EB14A4C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v7;
    v28 = v14;
    v29 = v13;
    v30 = a3;
    v31 = v20;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_29EAA5000, v25, v26, "Starting to import resources", v32, 2u);
    v33 = v32;
    v20 = v31;
    a3 = v30;
    v13 = v29;
    v14 = v28;
    v7 = v27;
    MEMORY[0x29EDA8150](v33, -1, -1);
  }

  (*(v21 + 16))(v23, v7 + *((*MEMORY[0x29EDCA1E8] & *v7) + 0x68), v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB58, &qword_29EB180B8);
  if (swift_dynamicCast())
  {
    sub_29EAADE9C(&v89, v86);
    v34 = a3 >> 62;
    v66 = v20;
    if ((a3 >> 62) > 1)
    {
      if (v34 != 2)
      {
        *(&v89 + 6) = 0;
        *&v89 = 0;
        goto LABEL_22;
      }

      v41 = *(v67 + 16);
      if (!sub_29EB140BC() || !__OFSUB__(v41, sub_29EB140DC()))
      {
        goto LABEL_20;
      }

      __break(1u);
    }

    else if (!v34)
    {
      *&v89 = v67;
      WORD4(v89) = a3;
      BYTE10(v89) = BYTE2(a3);
      BYTE11(v89) = BYTE3(a3);
      BYTE12(v89) = BYTE4(a3);
      BYTE13(v89) = BYTE5(a3);
LABEL_22:
      v77 = sandbox_extension_consume();
      v43 = v87;
      v44 = v88;
      __swift_project_boxed_opaque_existential_1(v86, v87);
      v78 = (*(v44 + 24))(v43, v44);
      v45 = *(v70 + OBJC_IVAR___AMKResourcesImportRequest_resourcesImportRequest + 16);
      v89 = *(v70 + OBJC_IVAR___AMKResourcesImportRequest_resourcesImportRequest);
      v90 = v45;
      v46 = *(v70 + OBJC_IVAR___AMKResourcesImportRequest_resourcesImportRequest + 48);
      v91 = *(v70 + OBJC_IVAR___AMKResourcesImportRequest_resourcesImportRequest + 32);
      v92 = v46;
      v47 = sub_29EB1491C();
      v48 = v73;
      (*(*(v47 - 8) + 56))(v73, 1, 1, v47);
      v49 = v71;
      v50 = v68;
      v51 = v72;
      (*(v71 + 16))(v68, v74, v72);
      sub_29EAAD474(v86, &aBlock);
      v52 = (*(v49 + 80) + 64) & ~*(v49 + 80);
      v53 = (v69 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
      v54 = (v53 + 47) & 0xFFFFFFFFFFFFFFF8;
      v55 = swift_allocObject();
      *(v55 + 2) = 0;
      *(v55 + 3) = 0;
      *(v55 + 4) = v66;
      v56 = v77;
      *(v55 + 5) = *(v75 + 88);
      *(v55 + 6) = v56;
      *(v55 + 7) = v7;
      (*(v49 + 32))(&v55[v52], v50, v51);
      sub_29EAADE9C(&aBlock, &v55[v53]);
      v57 = &v55[v54];
      v58 = v90;
      *v57 = v89;
      *(v57 + 1) = v58;
      v59 = v92;
      *(v57 + 2) = v91;
      *(v57 + 3) = v59;
      v60 = &v55[(v54 + 71) & 0xFFFFFFFFFFFFFFF8];
      v61 = v80;
      *v60 = v79;
      *(v60 + 1) = v61;
      sub_29EACD8F4(&v89, &aBlock);
      v62 = v7;

      v63 = sub_29EAD3968(0, 0, v48, &unk_29EB180D0, v55);
      v84 = sub_29EAE3E60;
      v85 = v63;
      *&aBlock = MEMORY[0x29EDCA5F8];
      *(&aBlock + 1) = 1107296256;
      v82 = sub_29EABE4EC;
      v83 = &block_descriptor_31;
      v64 = _Block_copy(&aBlock);

      v65 = v78;
      [v78 setCancellationHandler_];
      _Block_release(v64);

      __swift_destroy_boxed_opaque_existential_1(v86);
      return v65;
    }

    v42 = v67;
    if (v67 > v67 >> 32)
    {
      __break(1u);
    }

    else if (!sub_29EB140BC() || !__OFSUB__(v42, sub_29EB140DC()))
    {
LABEL_20:
      sub_29EB140CC();
      goto LABEL_22;
    }

    __break(1u);
  }

  *&v91 = 0;
  v89 = 0u;
  v90 = 0u;
  sub_29EABCCEC(&v89, &qword_2A187AB60, &qword_29EB180C0);
  v35 = sub_29EB1452C();
  v36 = sub_29EB14A5C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_29EAA5000, v35, v36, "App Extension doesn't support resources importing", v37, 2u);
    MEMORY[0x29EDA8150](v37, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EAE414C(&qword_2A187A800, MEMORY[0x29EDB9860], MEMORY[0x29EDB9858]);
  v38 = v77;
  sub_29EB1415C();
  v39 = sub_29EB13F9C();
  (*(v14 + 8))(v38, v13);
  v79(0, 0, v39);

  return 0;
}