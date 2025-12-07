uint64_t sub_1A2CB45F4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A2D08B34() & 1;
  }
}

uint64_t sub_1A2CB4668(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A2D08B34() & 1;
  }
}

unint64_t sub_1A2CB46C0()
{
  result = qword_1EB09F078;
  if (!qword_1EB09F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F078);
  }

  return result;
}

uint64_t _s11ActivityKit0A21PresentationPredicateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v4)
  {
    if (v6 && (sub_1A2CC30E4(v4, v6) & 1) != 0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_4:
  result = (v5 | v7) == 0;
  if (v5)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {

    return sub_1A2CC30E4(v5, v7);
  }

  return result;
}

unint64_t sub_1A2CB479C(void *a1)
{
  a1[1] = sub_1A2CB47D4();
  a1[2] = sub_1A2CA5AA8();
  result = sub_1A2CB4828();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CB47D4()
{
  result = qword_1EB09ED80;
  if (!qword_1EB09ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED80);
  }

  return result;
}

unint64_t sub_1A2CB4828()
{
  result = qword_1EB09ED78;
  if (!qword_1EB09ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED78);
  }

  return result;
}

uint64_t sub_1A2CB487C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1A2CB48D8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1A2CB494C()
{
  result = qword_1EB0A0968;
  if (!qword_1EB0A0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0968);
  }

  return result;
}

unint64_t sub_1A2CB49A4()
{
  result = qword_1EB09F068;
  if (!qword_1EB09F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F068);
  }

  return result;
}

unint64_t sub_1A2CB49FC()
{
  result = qword_1EB09F070;
  if (!qword_1EB09F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F070);
  }

  return result;
}

unint64_t sub_1A2CB4A50()
{
  result = qword_1ED7088C8;
  if (!qword_1ED7088C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7088C8);
  }

  return result;
}

uint64_t sub_1A2CB4C20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ActivityEndingOptions(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v14 = sub_1A2D07F44();
    a1 = v15;
    sub_1A2C569E8(&qword_1EB09F0D0, type metadata accessor for ActivityEndingOptions, &protocol conformance descriptor for ActivityEndingOptions);
    sub_1A2D07E64();
    sub_1A2C54E38(v11, &unk_1EB0A0AC0, &qword_1A2D0A810);
    sub_1A2C55840(v14, a1);

    v19(v8, 0, 1, v12);
    sub_1A2C639DC(v8, v11, &unk_1EB0A0AC0, &qword_1A2D0A810);
    v16 = v20;
    sub_1A2C6BD18(v11, v20, &unk_1EB0A0AC0, &qword_1A2D0A810);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1A2C54E38(v11, &unk_1EB0A0AC0, &qword_1A2D0A810);
      return sub_1A2C72628(v16, v18, type metadata accessor for ActivityEndingOptions);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB4EFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for ActivityDescriptor(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  if (a1)
  {
    v19 = a2;
    v20 = v15;
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v2 = sub_1A2D07F44();
    v15 = v16;
    sub_1A2C569E8(&qword_1ED709430, type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
    sub_1A2D07E64();
    sub_1A2C54E38(v12, &qword_1EB0A0210, &unk_1A2D0ACA0);
    sub_1A2C55840(v2, v15);

    v20(v9, 0, 1, v13);
    sub_1A2C639DC(v9, v12, &qword_1EB0A0210, &unk_1A2D0ACA0);
    v17 = v21;
    sub_1A2C6BD18(v12, v21, &qword_1EB0A0210, &unk_1A2D0ACA0);
    if ((*(v14 + 48))(v17, 1, v13) != 1)
    {
      sub_1A2C54E38(v12, &qword_1EB0A0210, &unk_1A2D0ACA0);
      return sub_1A2C72628(v17, v19, type metadata accessor for ActivityDescriptor);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v2, v15);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB51D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v3 = sub_1A2D07F44();
    v5 = v4;
    sub_1A2CA7000();
    sub_1A2D07E64();
    sub_1A2C55840(v3, v5);

    if (v7 != 2)
    {
      *a2 = v7 & 1;
      a2[1] = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB52D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v3 = sub_1A2D07F44();
    v5 = v4;
    sub_1A2CA6274();
    sub_1A2D07E64();
    sub_1A2C55840(v3, v5);

    if (v7 != 2)
    {
      *a2 = v7 & 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB53C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0790, &unk_1A2D0D270);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = type metadata accessor for AlertPayload(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v14 = sub_1A2D07F44();
    a1 = v15;
    sub_1A2C569E8(&qword_1EB09EFA0, type metadata accessor for AlertPayload, &protocol conformance descriptor for AlertPayload);
    sub_1A2D07E64();
    sub_1A2C54E38(v11, &qword_1EB0A0790, &unk_1A2D0D270);
    sub_1A2C55840(v14, a1);

    v19(v8, 0, 1, v12);
    sub_1A2C639DC(v8, v11, &qword_1EB0A0790, &unk_1A2D0D270);
    v16 = v20;
    sub_1A2C6BD18(v11, v20, &qword_1EB0A0790, &unk_1A2D0D270);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1A2C54E38(v11, &qword_1EB0A0790, &unk_1A2D0D270);
      return sub_1A2C72628(v16, v18, type metadata accessor for AlertPayload);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB56FC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v3 = sub_1A2D07F44();
    v5 = v4;
    sub_1A2CB47D4();
    sub_1A2D07E64();
    sub_1A2C55840(v3, v5);

    if (v7 != 1)
    {
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB57EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v3 = sub_1A2D07F44();
    v5 = v4;
    sub_1A2CA7000();
    sub_1A2D07E64();
    sub_1A2C55840(v3, v5);

    if (v7 != 2)
    {
      *a2 = v7 & 1;
      a2[1] = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB58E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v3 = sub_1A2D07F44();
    v5 = v4;
    sub_1A2C620FC();
    sub_1A2D07E64();
    sub_1A2C55840(v3, v5);

    if (v7 != 2)
    {
      *a2 = v7 & 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB59D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v3 = sub_1A2D07F44();
    v5 = v4;
    sub_1A2C6CDD0();
    sub_1A2D07E64();
    sub_1A2C55840(v3, v5);

    if (v8)
    {
      *a2 = v7;
      a2[1] = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB5AE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v3 = sub_1A2D07F44();
    v5 = v4;
    sub_1A2C78A64();
    sub_1A2D07E64();
    sub_1A2C55840(v3, v5);

    if (v7 != 5)
    {
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB5BCC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AA0, &unk_1A2D10000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = type metadata accessor for OpaqueActivityContent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v14 = sub_1A2D07F44();
    a1 = v15;
    sub_1A2C569E8(&qword_1ED709098, type metadata accessor for OpaqueActivityContent, &protocol conformance descriptor for OpaqueActivityContent);
    sub_1A2D07E64();
    sub_1A2C54E38(v11, &unk_1EB0A0AA0, &unk_1A2D10000);
    sub_1A2C55840(v14, a1);

    v19(v8, 0, 1, v12);
    sub_1A2C639DC(v8, v11, &unk_1EB0A0AA0, &unk_1A2D10000);
    v16 = v20;
    sub_1A2C6BD18(v11, v20, &unk_1EB0A0AA0, &unk_1A2D10000);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1A2C54E38(v11, &unk_1EB0A0AA0, &unk_1A2D10000);
      return sub_1A2C72628(v16, v18, type metadata accessor for OpaqueActivityContent);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB5EA8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A90, &unk_1A2D0D260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ActivityUIDismissalPolicy(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v14 = sub_1A2D07F44();
    a1 = v15;
    sub_1A2C569E8(&qword_1EB09F090, type metadata accessor for ActivityUIDismissalPolicy, &protocol conformance descriptor for ActivityUIDismissalPolicy);
    sub_1A2D07E64();
    sub_1A2C54E38(v11, &unk_1EB0A0A90, &unk_1A2D0D260);
    sub_1A2C55840(v14, a1);

    v19(v8, 0, 1, v12);
    sub_1A2C639DC(v8, v11, &unk_1EB0A0A90, &unk_1A2D0D260);
    v16 = v20;
    sub_1A2C6BD18(v11, v20, &unk_1EB0A0A90, &unk_1A2D0D260);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1A2C54E38(v11, &unk_1EB0A0A90, &unk_1A2D0D260);
      return sub_1A2C72628(v16, v18, type metadata accessor for ActivityUIDismissalPolicy);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB6184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v3 = sub_1A2D07F44();
    v5 = v4;
    sub_1A2CBBB98();
    sub_1A2D07E64();
    sub_1A2C55840(v3, v5);

    if (v8 != 1)
    {
      *a2 = v7;
      *(a2 + 8) = v8;
      *(a2 + 24) = v9;
      *(a2 + 40) = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB62A8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a4@<X8>)
{
  if (a1)
  {
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v6 = sub_1A2D07F44();
    v8 = v7;
    a2();
    sub_1A2D07E64();
    sub_1A2C55840(v6, v8);

    if (v10 != 1)
    {
      *a4 = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB63A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A04F0, &qword_1A2D0AC98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ActivityRequest(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v14 = sub_1A2D07F44();
    a1 = v15;
    sub_1A2C569E8(&qword_1EB09EFD8, type metadata accessor for ActivityRequest, &protocol conformance descriptor for ActivityRequest);
    sub_1A2D07E64();
    sub_1A2C54E38(v11, &unk_1EB0A04F0, &qword_1A2D0AC98);
    sub_1A2C55840(v14, a1);

    v19(v8, 0, 1, v12);
    sub_1A2C639DC(v8, v11, &unk_1EB0A04F0, &qword_1A2D0AC98);
    v16 = v20;
    sub_1A2C6BD18(v11, v20, &unk_1EB0A04F0, &qword_1A2D0AC98);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1A2C54E38(v11, &unk_1EB0A04F0, &qword_1A2D0AC98);
      return sub_1A2C72628(v16, v18, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB6680@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A70, &unk_1A2D0D250);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ActivityPlatterDismissalPolicy(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v14 = sub_1A2D07F44();
    a1 = v15;
    sub_1A2C569E8(&qword_1EB0A0A78, type metadata accessor for ActivityPlatterDismissalPolicy, &protocol conformance descriptor for ActivityPlatterDismissalPolicy);
    sub_1A2D07E64();
    sub_1A2C54E38(v11, &qword_1EB0A0A70, &unk_1A2D0D250);
    sub_1A2C55840(v14, a1);

    v19(v8, 0, 1, v12);
    sub_1A2C639DC(v8, v11, &qword_1EB0A0A70, &unk_1A2D0D250);
    v16 = v20;
    sub_1A2C6BD18(v11, v20, &qword_1EB0A0A70, &unk_1A2D0D250);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1A2C54E38(v11, &qword_1EB0A0A70, &unk_1A2D0D250);
      return sub_1A2C72628(v16, v18, type metadata accessor for ActivityPlatterDismissalPolicy);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB697C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = type metadata accessor for OpaqueActivityPayload(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v14 = sub_1A2D07F44();
    a1 = v15;
    sub_1A2C569E8(&qword_1ED709070, type metadata accessor for OpaqueActivityPayload, &protocol conformance descriptor for OpaqueActivityPayload);
    sub_1A2D07E64();
    sub_1A2C54E38(v11, &qword_1EB0A02E0, &qword_1A2D0AA50);
    sub_1A2C55840(v14, a1);

    v19(v8, 0, 1, v12);
    sub_1A2C639DC(v8, v11, &qword_1EB0A02E0, &qword_1A2D0AA50);
    v16 = v20;
    sub_1A2C6BD18(v11, v20, &qword_1EB0A02E0, &qword_1A2D0AA50);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1A2C54E38(v11, &qword_1EB0A02E0, &qword_1A2D0AA50);
      return sub_1A2C72628(v16, v18, type metadata accessor for OpaqueActivityPayload);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB6C58@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A68, &unk_1A2D0D240);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ActivityDescriptorContentState(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v14 = sub_1A2D07F44();
    a1 = v15;
    sub_1A2C569E8(qword_1ED7090F0, type metadata accessor for ActivityDescriptorContentState, &protocol conformance descriptor for ActivityDescriptorContentState);
    sub_1A2D07E64();
    sub_1A2C54E38(v11, &qword_1EB0A0A68, &unk_1A2D0D240);
    sub_1A2C55840(v14, a1);

    v19(v8, 0, 1, v12);
    sub_1A2C639DC(v8, v11, &qword_1EB0A0A68, &unk_1A2D0D240);
    v16 = v20;
    sub_1A2C6BD18(v11, v20, &qword_1EB0A0A68, &unk_1A2D0D240);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1A2C54E38(v11, &qword_1EB0A0A68, &unk_1A2D0D240);
      return sub_1A2C72628(v16, v18, type metadata accessor for ActivityDescriptorContentState);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB6F54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ActivityDescriptor(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v14 = sub_1A2D07F44();
    a1 = v15;
    sub_1A2C569E8(&qword_1ED709430, type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
    sub_1A2D07E64();
    sub_1A2C54E38(v11, &qword_1EB0A0210, &unk_1A2D0ACA0);
    sub_1A2C55840(v14, a1);

    v19(v8, 0, 1, v12);
    sub_1A2C639DC(v8, v11, &qword_1EB0A0210, &unk_1A2D0ACA0);
    v16 = v20;
    sub_1A2C6BD18(v11, v20, &qword_1EB0A0210, &unk_1A2D0ACA0);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1A2C54E38(v11, &qword_1EB0A0210, &unk_1A2D0ACA0);
      return sub_1A2C72628(v16, v18, type metadata accessor for ActivityDescriptor);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB7250@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a4@<X8>)
{
  if (a1)
  {
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v6 = sub_1A2D07F44();
    v8 = v7;
    a2();
    sub_1A2D07E64();
    sub_1A2C55840(v6, v8);

    if (v10)
    {
      *a4 = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB7348()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB09F610);
  __swift_project_value_buffer(v0, qword_1EB09F610);
  return sub_1A2D08084();
}

id sub_1A2CB73CC()
{
  result = [objc_allocWithZone(type metadata accessor for ActivityAuthorizationClient()) init];
  qword_1EB0B25B0 = result;
  return result;
}

char *sub_1A2CB73FC()
{
  v1 = sub_1A2D086E4();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v23 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient__activityAuthorizationPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A30, &unk_1A2D0D220);
  swift_allocObject();
  *&v0[v6] = sub_1A2D08144();
  v7 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient__frequentUpdatesPublisher;
  swift_allocObject();
  *&v0[v7] = sub_1A2D08144();
  v8 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient__activityAuthorizationLevelPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A20, &qword_1A2D0D218);
  swift_allocObject();
  *&v0[v8] = sub_1A2D08144();
  v9 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_serverStartupToken] = -1;
  v21 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue;
  sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  sub_1A2D082F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C569E8(&qword_1ED709E30, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0, MEMORY[0x1E69E6328]);
  sub_1A2D08804();
  (*(v24 + 104))(v23, *MEMORY[0x1E69E8098], v25);
  *&v0[v21] = sub_1A2D08724();
  *&v0[OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue_subscribedAuthorizationBundleIDs] = MEMORY[0x1E69E7CD0];
  v10 = *&v0[v9];
  *&v0[v9] = 0;

  v11 = type metadata accessor for ActivityAuthorizationClient();
  v27.receiver = v0;
  v27.super_class = v11;
  v12 = objc_msgSendSuper2(&v27, sel_init);
  v13 = *&v12[OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1A2CBBB20;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_45;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  v18 = v13;

  dispatch_sync(v18, v16);

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

void sub_1A2CB78D8()
{
  v1 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_connection])
  {
    v2 = v0;
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2CBBAC4();
    v3 = sub_1A2D08784();
    if (v3)
    {
      v4 = *&v0[v1];
      *&v2[v1] = v3;
      v5 = v3;

      v6 = swift_allocObject();
      *(v6 + 16) = v2;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_1A2CBBB18;
      *(v7 + 24) = v6;
      v9[4] = sub_1A2C573BC;
      v9[5] = v7;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_1A2C57338;
      v9[3] = &block_descriptor_27;
      v8 = _Block_copy(v9);
      v2;

      [v5 configureConnection_];
      _Block_release(v8);
      LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

      if (v8)
      {
        __break(1u);
      }

      else
      {
        sub_1A2CB805C();
      }
    }
  }
}

void sub_1A2CB7AA0(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_1A2CB7D98;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_30;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1A2CB7DA4;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_33;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1A2CB7DB0;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_36;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1A2CB7DBC(uint64_t a1, const char *a2)
{
  if (qword_1EB09F600 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1EB09F610);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CB7EAC()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_1A2CB78D8();
    v8 = *(v0 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_connection);
    if (v8)
    {
      v9 = v8;
      if ([v9 remoteTarget])
      {
        sub_1A2D087F4();
        swift_unknownObjectRelease();

        sub_1A2C54E38(v10, &qword_1EB0A04E0, &unk_1A2D0AA70);
      }

      else
      {
        memset(v10, 0, sizeof(v10));
        sub_1A2C54E38(v10, &qword_1EB0A04E0, &unk_1A2D0AA70);
        [v9 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CB805C()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CBBABC;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_18_0;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1EB09F600 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1EB09F610);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

void sub_1A2CB8254(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A2CB7EAC();
    sub_1A2CB82C4();
  }
}

void sub_1A2CB82C4()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1A2D08344();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1A2D08364();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (qword_1EB09F600 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v11 = sub_1A2D08094();
    v12 = __swift_project_value_buffer(v11, qword_1EB09F610);
    v13 = sub_1A2D08074();
    v14 = sub_1A2D086A4();
    v15 = os_log_type_enabled(v13, v14);
    v50 = v12;
    if (v15)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1A2C51000, v13, v14, "Resubscribing to authorization status updates", v16, 2u);
      MEMORY[0x1A58E5180](v16, -1, -1);
    }

    v17 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue_subscribedAuthorizationBundleIDs;
    swift_beginAccess();
    if (!*(*(v3 + v17) + 16))
    {
      break;
    }

    v49 = sub_1A2CB8864();
    if (!v49)
    {
      v41 = sub_1A2D08074();
      v42 = sub_1A2D08684();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1A2C51000, v41, v42, "Could not resubscribe to authorization status updates because connection is nil", v43, 2u);
        MEMORY[0x1A58E5180](v43, -1, -1);
      }

      sub_1A2CA1590();
      swift_allocError();
      *v44 = xmmword_1A2D0AC20;
      *(v44 + 16) = 0u;
      *(v44 + 32) = 0u;
      *(v44 + 48) = 0u;
      *(v44 + 64) = 0;
      swift_willThrow();
      return;
    }

    v45 = v2;
    v18 = *(v3 + v17);
    v3 = v18 + 56;
    v19 = 1 << *(v18 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v18 + 56);
    v22 = (v19 + 63) >> 6;
    v48 = v18;

    v23 = 0;
    *&v24 = 136380675;
    v47 = v24;
    while (v21)
    {
      v25 = v23;
LABEL_16:
      v26 = (*(v48 + 48) + ((v25 << 10) | (16 * __clz(__rbit64(v21)))));
      v27 = *v26;
      v28 = v26[1];
      swift_bridgeObjectRetain_n();
      v29 = sub_1A2D08074();
      v2 = sub_1A2D086A4();

      v30 = os_log_type_enabled(v29, v2);
      v51 = v27;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v52 = v32;
        *v31 = v47;
        *(v31 + 4) = sub_1A2C55558(v51, v28, &v52);
        _os_log_impl(&dword_1A2C51000, v29, v2, "Resubscribing to authorization status updates for %{private}s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x1A58E5180](v32, -1, -1);
        MEMORY[0x1A58E5180](v31, -1, -1);
      }

      v21 &= v21 - 1;
      v33 = sub_1A2D08434();
      v34 = [v49 subscribeToAuthorizationLevelChangesForBundleIdentifier_];

      if (v34)
      {

        v23 = v25;
      }

      else
      {

        v35 = sub_1A2D08074();
        v2 = sub_1A2D08684();

        if (os_log_type_enabled(v35, v2))
        {
          v36 = swift_slowAlloc();
          v46 = v35;
          v37 = v36;
          v38 = swift_slowAlloc();
          v52 = v38;
          *v37 = v47;
          v39 = sub_1A2C55558(v51, v28, &v52);

          *(v37 + 4) = v39;
          v40 = v46;
          _os_log_impl(&dword_1A2C51000, v46, v2, "Could not resubscribe to authorization status updates for %{private}s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x1A58E5180](v38, -1, -1);
          MEMORY[0x1A58E5180](v37, -1, -1);
        }

        else
        {
        }

        v23 = v25;
      }
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        swift_unknownObjectRelease();
        return;
      }

      v21 = *(v3 + 8 * v25);
      ++v23;
      if (v21)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }
}

uint64_t sub_1A2CB8864()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v5 = v6;
  (*(isa + 13))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(isa + 1))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2CB7EAC();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_connection);
  if (!v8)
  {
    if (qword_1EB09F600 != -1)
    {
      swift_once();
    }

    v9 = sub_1A2D08094();
    __swift_project_value_buffer(v9, qword_1EB09F610);
    v1 = sub_1A2D08074();
    v10 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v10, "Authorization Service: Failed to establish a connection", v11, 2u);
      MEMORY[0x1A58E5180](v11, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A58, &unk_1A2D0D230);
    if (swift_dynamicCast())
    {

      return v17[1];
    }
  }

  else
  {
    sub_1A2C54E38(v20, &qword_1EB0A04E0, &unk_1A2D0AA70);
  }

  if (qword_1EB09F600 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1EB09F610);
  v14 = sub_1A2D08074();
  v15 = sub_1A2D08694();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A2C51000, v14, v15, "Autorization Service: Failed to cast connection to server interface protocol", v16, 2u);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

LABEL_18:
  return 0;
}

id sub_1A2CB8BA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAuthorizationClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2CB8CE0(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1A2D08344();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
  }

  v9 = sub_1A2CB8864();
  if (v9)
  {
    v10 = v9;
    v11 = sub_1A2D08434();
    v17[0] = 0;
    v12 = [v10 clearActivitiesAuthorizationForBundleIdentifier:v11 error:v17];

    if (v12)
    {
      v13 = v17[0];
    }

    else
    {
      v16 = v17[0];
      sub_1A2D07ED4();

      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1A2CA1590();
    swift_allocError();
    *v14 = xmmword_1A2D0AC20;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0;
    return swift_willThrow();
  }
}

void *sub_1A2CB8EF4@<X0>(char *a2@<X8>)
{
  v4 = sub_1A2D08344();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1A2D08364();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    result = sub_1A2CB8864();
    v12 = 3;
    if (result)
    {
      v13 = result;
      v14 = sub_1A2D08434();
      v15 = [v13 activityAuthorizationsCountForBundleIdentifier_];

      v16 = [v15 integerValue];
      result = swift_unknownObjectRelease();
      if (v16 == 2)
      {
        v17 = 1;
      }

      else
      {
        v17 = 3;
      }

      if (v16 == 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = v17;
      }
    }

    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CB9090(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1A2D08344();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v3 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1A2D08364();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (qword_1EB09F600 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1EB09F610);

  v14 = sub_1A2D08074();
  v15 = sub_1A2D086A4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30[0] = v17;
    *v16 = 136380675;
    *(v16 + 4) = sub_1A2C55558(a1, a2, v30);
    _os_log_impl(&dword_1A2C51000, v14, v15, "Subscribing to authorization status updates for %{private}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1A58E5180](v17, -1, -1);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

  v18 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue_subscribedAuthorizationBundleIDs;
  swift_beginAccess();
  v19 = *(v3 + v18);

  v20 = sub_1A2CB9DD0(a1, a2, v19);

  if ((v20 & 1) == 0)
  {
    swift_beginAccess();

    sub_1A2CBAD68(&v29, a1, a2);
    swift_endAccess();

    v22 = sub_1A2CB8864();
    if (v22)
    {
      v23 = v22;
      v24 = sub_1A2D08434();
      v25 = [v23 subscribeToAuthorizationLevelChangesForBundleIdentifier_];

      if ((v25 & 1) == 0)
      {
        sub_1A2CA1590();
        swift_allocError();
        *v26 = xmmword_1A2D0AC20;
        *(v26 + 16) = 0u;
        *(v26 + 32) = 0u;
        *(v26 + 48) = 0u;
        *(v26 + 64) = 0;
        swift_willThrow();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1A2CA1590();
      swift_allocError();
      *v27 = xmmword_1A2D0AC20;
      *(v27 + 16) = 0u;
      *(v27 + 32) = 0u;
      *(v27 + 48) = 0u;
      *(v27 + 64) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1A2CB9424(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1A2D08344();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v3 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1A2D08364();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (qword_1EB09F600 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1EB09F610);

  v14 = sub_1A2D08074();
  v15 = sub_1A2D086A4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29[0] = v17;
    *v16 = 136380675;
    *(v16 + 4) = sub_1A2C55558(a1, a2, v29);
    _os_log_impl(&dword_1A2C51000, v14, v15, "Unsubscribing from authorization status updates for %{private}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1A58E5180](v17, -1, -1);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

  v18 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue_subscribedAuthorizationBundleIDs;
  swift_beginAccess();
  v19 = *(v3 + v18);

  v20 = sub_1A2CB9DD0(a1, a2, v19);

  if (v20)
  {
    swift_beginAccess();
    sub_1A2CBB62C(a1, a2);
    swift_endAccess();

    v22 = sub_1A2CB8864();
    if (v22)
    {
      v23 = v22;
      v24 = sub_1A2D08434();
      v25 = [v23 unsubscribeToAuthorizationLevelChangesForBundleIdentifier_];

      if ((v25 & 1) == 0)
      {
        sub_1A2CA1590();
        swift_allocError();
        *v26 = xmmword_1A2D0AC20;
        *(v26 + 16) = 0u;
        *(v26 + 32) = 0u;
        *(v26 + 48) = 0u;
        *(v26 + 64) = 0;
        swift_willThrow();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1A2CA1590();
      swift_allocError();
      *v27 = xmmword_1A2D0AC20;
      *(v27 + 16) = 0u;
      *(v27 + 32) = 0u;
      *(v27 + 48) = 0u;
      *(v27 + 64) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

id sub_1A2CB97C4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = sub_1A2D08344();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1A2D08364();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = sub_1A2CB8864();
    if (!v13)
    {
      return 0;
    }

    v14 = v13;
    v15 = sub_1A2D08434();
    v16 = [v14 *a3];
    swift_unknownObjectRelease();

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CB9984(uint64_t a1, uint64_t a2, char *a3, SEL *a4)
{
  v32 = a2;
  v33 = a4;
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1A2D08344();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a3;
  v13 = a3[1];
  v14 = *(v4 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v11 = v14;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v15 = v14;
  LOBYTE(v14) = sub_1A2D08364();
  (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
  }

  v16 = sub_1A2CB8864();
  if (v16)
  {
    v17 = v16;
    LOBYTE(v34[0]) = v12;
    BYTE1(v34[0]) = v13;
    sub_1A2D07EB4();
    swift_allocObject();
    sub_1A2D07EA4();
    sub_1A2CA7054();
    v18 = sub_1A2D07E94();
    if (v5)
    {
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v20 = v18;
      v21 = v19;
      v22 = sub_1A2D07F24();
      sub_1A2C55840(v20, v21);

      v23 = sub_1A2D07F44();
      v25 = v24;

      v26 = sub_1A2D08434();
      v27 = sub_1A2D07F24();
      v34[0] = 0;
      LOBYTE(v21) = [v17 *v33];

      if (v21)
      {
        v28 = v34[0];
      }

      else
      {
        v31 = v34[0];
        sub_1A2D07ED4();

        swift_willThrow();
      }

      sub_1A2C55840(v23, v25);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1A2CA1590();
    swift_allocError();
    *v29 = xmmword_1A2D0AC20;
    *(v29 + 16) = 0u;
    *(v29 + 32) = 0u;
    *(v29 + 48) = 0u;
    *(v29 + 64) = 0;
    return swift_willThrow();
  }

  return result;
}

void *sub_1A2CB9C78@<X0>(uint64_t a1@<X0>, const char **a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v6 = sub_1A2D08344();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1A2D08364();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    result = sub_1A2CB8864();
    if (result)
    {
      v14 = [result *a2];
      result = swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
    }

    *a3 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CB9DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1A2D08C14();
  sub_1A2D08484();
  v6 = sub_1A2D08C54();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1A2D08B34() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1A2CB9F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_1A2C56A78(a6, a4, a5, MEMORY[0x1E695BF88]);
  return sub_1A2D081F4();
}

uint64_t sub_1A2CBA2E8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_1A2D082D4();
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A2D08314();
  v10 = *(v22 - 8);
  v11 = MEMORY[0x1EEE9AC00](v22);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a3 integerValue];
  if (v14 == 2)
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  if (v14 == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = v16;
  *(v17 + 40) = v3;
  aBlock[4] = sub_1A2CBBAAC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C5E5B8;
  aBlock[3] = &block_descriptor_6;
  v18 = _Block_copy(aBlock);

  v19 = v3;
  sub_1A2D082E4();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1A2C569E8(&qword_1ED709AD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A50, &unk_1A2D0AA40);
  sub_1A2C56A78(&unk_1ED709AC0, &qword_1EB0A0A50, &unk_1A2D0AA40, MEMORY[0x1E69E6328]);
  sub_1A2D08804();
  MEMORY[0x1A58E43D0](0, v13, v9, v18);
  _Block_release(v18);
  (*(v23 + 8))(v9, v7);
  (*(v10 + 8))(v13, v22);
}

uint64_t sub_1A2CBA5F8(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (qword_1EB09F600 != -1)
  {
    swift_once();
  }

  v7 = sub_1A2D08094();
  __swift_project_value_buffer(v7, qword_1EB09F610);

  v8 = sub_1A2D08074();
  v9 = sub_1A2D086A4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v10 = 136380931;
    *(v10 + 4) = sub_1A2C55558(a1, a2, v20);
    *(v10 + 12) = 2082;
    v12 = 0xEA0000000000736ELL;
    v13 = 0x6F6974704F206F4ELL;
    if (a3 == 2)
    {
      v13 = 0xD000000000000015;
      v12 = 0x80000001A2D198D0;
    }

    v14 = 0xD000000000000010;
    v15 = 0x80000001A2D19910;
    if (a3)
    {
      v14 = 0xD000000000000011;
      v15 = 0x80000001A2D198F0;
    }

    if (a3 <= 1u)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    if (a3 <= 1u)
    {
      v17 = v15;
    }

    else
    {
      v17 = v12;
    }

    v18 = sub_1A2C55558(v16, v17, v20);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1A2C51000, v8, v9, "Activity authorization level for %{private}s changed to %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58E5180](v11, -1, -1);
    MEMORY[0x1A58E5180](v10, -1, -1);
  }

  v20[0] = a1;
  v20[1] = a2;
  v21 = a3;

  sub_1A2D08124();
}

uint64_t sub_1A2CBA8CC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EB09F600 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08094();
  __swift_project_value_buffer(v2, qword_1EB09F610);
  v3 = sub_1A2D08074();
  v4 = sub_1A2D086A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1A2C51000, v3, v4, "Activity authorization changed to %{BOOL,public}d", v5, 8u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }

  return sub_1A2D08124();
}

uint64_t sub_1A2CBAA88(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A2D07F24();
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v3 = sub_1A2D07F44();
  v5 = v4;
  sub_1A2CA7000();
  sub_1A2D07E64();
  sub_1A2C55840(v3, v5);

  if (v11 == 2)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    if (qword_1EB09F600 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1EB09F610);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D086A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67240192;
      *(v9 + 4) = v11 & 1;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Frequent updates changed to %{BOOL,public}d", v9, 8u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }

    return sub_1A2D08124();
  }

  return result;
}

uint64_t sub_1A2CBAD68(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1A2D08C14();
  sub_1A2D08484();
  v8 = sub_1A2D08C54();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1A2D08B34() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1A2CBB118(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1A2CBAEB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0A0B30, &qword_1A2D0D210);
  result = sub_1A2D08834();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1A2D08C14();
      sub_1A2D08484();
      result = sub_1A2D08C54();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_1A2CBB118(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1A2CBAEB8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1A2CBB298();
      goto LABEL_16;
    }

    sub_1A2CBB3F4(v8 + 1);
  }

  v10 = *v4;
  sub_1A2D08C14();
  sub_1A2D08484();
  v11 = sub_1A2D08C54();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1A2D08B34() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1A2D08B74();
  __break(1u);
}

void sub_1A2CBB298()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0A0B30, &qword_1A2D0D210);
  v2 = *v0;
  v3 = sub_1A2D08824();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1A2CBB3F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0A0B30, &qword_1A2D0D210);
  result = sub_1A2D08834();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1A2D08C14();

      sub_1A2D08484();
      result = sub_1A2D08C54();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A2CBB62C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1A2D08C14();
  sub_1A2D08484();
  v6 = sub_1A2D08C54();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1A2D08B34() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A2CBB298();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1A2CBB768(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1A2CBB768(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1A2D08814();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1A2D08C14();

        sub_1A2D08484();
        v10 = sub_1A2D08C54();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1A2CBB9D8(SEL *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 41);
  v7[0] = *(v1 + 40);
  v7[1] = v5;
  return sub_1A2CB9984(v3, v4, v7, a1);
}

uint64_t sub_1A2CBBA3C@<X0>(SEL *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A2CB97C4(*(v2 + 24), *(v2 + 32), a1);
  *a2 = result & 1;
  return result;
}

unint64_t sub_1A2CBBAC4()
{
  result = qword_1EB09F628;
  if (!qword_1EB09F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F628);
  }

  return result;
}

unint64_t sub_1A2CBBB44()
{
  result = qword_1EB0A0A80;
  if (!qword_1EB0A0A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0A80);
  }

  return result;
}

unint64_t sub_1A2CBBB98()
{
  result = qword_1EB0A1B60;
  if (!qword_1EB0A1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1B60);
  }

  return result;
}

id ActivityFrequentUpdatesObservationClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityFrequentUpdatesObservationClient.init()()
{
  if (qword_1ED709978 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED709988;
  *&v0[OBJC_IVAR____TtC11ActivityKit40ActivityFrequentUpdatesObservationClient_singleton] = qword_1ED709988;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ActivityFrequentUpdatesObservationClient();
  v2 = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1A2CBBCD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0940, &unk_1A2D0D280);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0AE0, &qword_1A2D15370);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC11ActivityKit40ActivityFrequentUpdatesObservationClient_singleton);
  v10 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activities;
  swift_beginAccess();
  v11 = MEMORY[0x1E69E7CD0];
  if (*(v9 + v10))
  {
    v11 = *(v9 + v10);
  }

  v14 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0AF0, qword_1A2D0D290);
  sub_1A2D081D4();
  v14 = *(v9 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activityDiffPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0B00, &qword_1A2D0CDF0);
  sub_1A2C56A78(&unk_1EB09EB48, &qword_1EB0A0940, &unk_1A2D0D280, MEMORY[0x1E695C008]);
  sub_1A2C56A78(&qword_1EB09EB70, &qword_1EB0A0B00, &qword_1A2D0CDF0, MEMORY[0x1E695BF88]);
  sub_1A2D08244();
  (*(v2 + 8))(v4, v1);
  sub_1A2C56A78(&qword_1EB09EBE0, &qword_1EB0A0AE0, &qword_1A2D15370, MEMORY[0x1E695BDC0]);
  v12 = sub_1A2D081F4();
  (*(v6 + 8))(v8, v5);
  return v12;
}

void sub_1A2CBC098(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A2C5BCFC();
  }
}

id sub_1A2CBC108(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A2CBC1AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A2CBC01C(v9);
  if (*v5)
  {

    sub_1A2CBAD68(&v10, a1, a2);
  }

  (v4)(v9, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v7 = sub_1A2CDCE74(inited);
  swift_setDeallocating();
  sub_1A2CBC528(inited + 32);
  v9[0] = v7;
  sub_1A2D08124();
}

uint64_t sub_1A2CBC3D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1A2D08C14();
  sub_1A2D08484();
  result = sub_1A2D08C54();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  v10 = v9 >> 6;
  v11 = *(v5 + 56 + 8 * (v9 >> 6));
  v12 = 1 << v9;
  if (((1 << v9) & v11) != 0)
  {
    v13 = ~v8;
    while (1)
    {
      v14 = (*(v5 + 48) + 16 * v9);
      if (*v14 == a1 && v14[1] == a2)
      {
        break;
      }

      result = sub_1A2D08B34();
      if (result)
      {
        break;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v7 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) == 0)
      {
        goto LABEL_9;
      }
    }

    *v14 = a1;
    v14[1] = a2;
  }

  else
  {
LABEL_9:
    if (*(v5 + 16) >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v7 + 8 * v10) = v12 | v11;
      v16 = (*(v5 + 48) + 16 * v9);
      *v16 = a1;
      v16[1] = a2;
      v17 = *(v5 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v5 + 16) = v19;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CBC5E4()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB09EC10);
  __swift_project_value_buffer(v0, qword_1EB09EC10);
  return sub_1A2D08084();
}

uint64_t sub_1A2CBC6A8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A2CBC714(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2CBC7B4;
}

void sub_1A2CBC7B4(uint64_t a1, char a2, __n128 a3)
{
  v4 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v4);
}

id AlertClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *AlertClient.init()()
{
  v1 = v0;
  v2 = sub_1A2D086E4();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = OBJC_IVAR____TtC11ActivityKit11AlertClient_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKit11AlertClient_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKit11AlertClient_serverStartupToken] = -1;
  *&v0[OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC11ActivityKit11AlertClient_queue;
  v8 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v20[1] = "datesObservationClient";
  v20[2] = v8;
  sub_1A2D082F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C94E04(&qword_1ED709E30, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0, MEMORY[0x1E69E6328]);
  sub_1A2D08804();
  (*(v22 + 104))(v4, *MEMORY[0x1E69E8098], v23);
  *&v0[v21] = sub_1A2D08724();
  v9 = OBJC_IVAR____TtC11ActivityKit11AlertClient__queue_bufferedAlerts;
  *&v1[v9] = sub_1A2CAAD58(MEMORY[0x1E69E7CC0]);
  *&v1[OBJC_IVAR____TtC11ActivityKit11AlertClient__queue_activityStatusSubscription] = 0;
  v10 = *&v1[v7];
  *&v1[v7] = 0;

  type metadata accessor for ActivityOutputClient();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC11ActivityKit11AlertClient_outputClient] = ActivityOutputClient.init()();
  v11 = type metadata accessor for AlertClient();
  v25.receiver = v1;
  v25.super_class = v11;
  v12 = objc_msgSendSuper2(&v25, sel_init);
  v13 = *&v12[OBJC_IVAR____TtC11ActivityKit11AlertClient_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1A2CC02DC;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_8;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  v18 = v13;

  dispatch_sync(v18, v16);

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

void sub_1A2CBCCD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0BD0, &unk_1A2D0D3A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v30 - v7;
  v9 = sub_1A2D08344();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  v16 = sub_1A2D08364();
  (*(v10 + 8))(v13, v9);
  if (v16)
  {
    ActivityOutputClient.observeDescriptorStates()();
    v31 = v26;
    v30[0] = v26;
    v30[1] = v15;
    v27 = sub_1A2D086D4();
    (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
    v28 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0148, &qword_1A2D0A850);
    sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
    sub_1A2C56A78(&unk_1EB09F510, &qword_1EB0A0148, &qword_1A2D0A850, MEMORY[0x1E695BED8]);
    sub_1A2C8B9D4();
    sub_1A2D08264();
    sub_1A2C54E38(v4, &qword_1EB0A0570, &qword_1A2D0ADA0);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1A2C56A78(&qword_1EB0A0BE0, &unk_1EB0A0BD0, &unk_1A2D0D3A8, MEMORY[0x1E695BE98]);
    v29 = sub_1A2D08284();

    (*(v6 + 8))(v8, v5);
    *(v1 + OBJC_IVAR____TtC11ActivityKit11AlertClient__queue_activityStatusSubscription) = v29;
  }

  else
  {
    __break(1u);
    swift_once();
    v17 = sub_1A2D08094();
    __swift_project_value_buffer(v17, qword_1EB09EC10);
    v18 = v13;
    v19 = sub_1A2D08074();
    v20 = sub_1A2D08684();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136446210;
      swift_getErrorValue();
      v23 = sub_1A2D08BB4();
      v25 = sub_1A2C55558(v23, v24, &v31);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1A2C51000, v19, v20, "Failed to start monitoring activities: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1A58E5180](v22, -1, -1);
      MEMORY[0x1A58E5180](v21, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1A2CBD210()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC11ActivityKit11AlertClient_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = OBJC_IVAR____TtC11ActivityKit11AlertClient_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKit11AlertClient_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2CC0580();
    v9 = v0;
    v10 = sub_1A2D08784();
    if (v10)
    {
      v11 = *&v0[v8];
      *&v9[v8] = v10;
      v12 = v10;

      v13 = swift_allocObject();
      *(v13 + 16) = v9;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1A2CC05D4;
      *(v14 + 24) = v13;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_35;
      v15 = _Block_copy(aBlock);
      v9;

      [v12 configureConnection_];
      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if ((v15 & 1) == 0)
      {
        sub_1A2CBDA78();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

void sub_1A2CBD4BC(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_1A2CBD7B4;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_38_1;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1A2CBD7C0;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_41_2;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1A2CBD7CC;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_44_1;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1A2CBD7D8(uint64_t a1, const char *a2)
{
  if (qword_1EB09EC00 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1EB09EC10);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CBD8C8()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_1A2CBD210();
    v8 = *(v0 + OBJC_IVAR____TtC11ActivityKit11AlertClient_connection);
    if (v8)
    {
      v9 = v8;
      if ([v9 remoteTarget])
      {
        sub_1A2D087F4();
        swift_unknownObjectRelease();

        sub_1A2C54E38(v10, &qword_1EB0A04E0, &unk_1A2D0AA70);
      }

      else
      {
        memset(v10, 0, sizeof(v10));
        sub_1A2C54E38(v10, &qword_1EB0A04E0, &unk_1A2D0AA70);
        [v9 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CBDA78()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CC0578;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_26_0;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKit11AlertClient_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1EB09EC00 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1EB09EC10);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

void sub_1A2CBDC70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A2CBD8C8();
  }
}

uint64_t sub_1A2CBDCC4()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  *v5 = v6;
  (*(isa + 13))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(isa + 1))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2CBD8C8();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKit11AlertClient_connection);
  if (!v8)
  {
    if (qword_1EB09EC00 != -1)
    {
      swift_once();
    }

    v9 = sub_1A2D08094();
    __swift_project_value_buffer(v9, qword_1EB09EC10);
    v1 = sub_1A2D08074();
    v10 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v10, "AlertClient: Failed to establish a connection", v11, 2u);
      MEMORY[0x1A58E5180](v11, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0BA8, &qword_1A2D0D3A0);
    if (swift_dynamicCast())
    {

      return v17[1];
    }
  }

  else
  {
    sub_1A2C54E38(v20, &qword_1EB0A04E0, &unk_1A2D0AA70);
  }

  if (qword_1EB09EC00 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1EB09EC10);
  v14 = sub_1A2D08074();
  v15 = sub_1A2D08694();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A2C51000, v14, v15, "AlertClient: Failed to cast connection to server interface protocol", v16, 2u);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

LABEL_18:
  return 0;
}

id AlertClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A2CBE0C8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1A2CBE124(v2, v4);
  }
}

void sub_1A2CBE124(void *a1, double a2)
{
  v138 = a1;
  v3 = type metadata accessor for BufferedAlert(0);
  v143 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v150 = (&v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v132 = &v130 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v131 = &v130 - v8;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0BE8, &qword_1A2D0D3B8);
  MEMORY[0x1EEE9AC00](v135);
  v142 = (&v130 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0BB0, &unk_1A2D0B780);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v130 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v130 - v17;
  v19 = type metadata accessor for ActivityDescriptorState(0);
  v146 = *(v19 - 8);
  v147 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v141 = (&v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1A2D08344();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = v2;
  v26 = *(v2 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x1E69E8020], v21, v23);
  v27 = v26;
  v28 = sub_1A2D08364();
  (*(v22 + 8))(v25, v21);
  if ((v28 & 1) == 0)
  {
LABEL_77:
    __break(1u);
    return;
  }

  v30 = v138[2];
  v149 = v3;
  v145 = v12;
  v134 = v15;
  if (!v30)
  {
    v133 = MEMORY[0x1E69E7CC0];
    v32 = v148;
    goto LABEL_29;
  }

  v31 = 0;
  v140 = OBJC_IVAR____TtC11ActivityKit11AlertClient__queue_bufferedAlerts;
  v133 = MEMORY[0x1E69E7CC0];
  v139 = (v143 + 56);
  *&v29 = 136446210;
  v136 = v29;
  v33 = v147;
  v32 = v148;
  v34 = v138;
  v35 = v146;
  v144 = v30;
  *&v137 = v18;
  do
  {
    v36 = v31;
    while (1)
    {
      if (v36 >= v30)
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v31 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_76;
      }

      v37 = (v34 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + v35[9] * v36);
      if (*(v37 + *(v33 + 20)) > 2u)
      {
        break;
      }

      if (*(v37 + *(v33 + 20)))
      {
        goto LABEL_22;
      }

LABEL_6:
      ++v36;
      if (v31 == v30)
      {
        goto LABEL_29;
      }
    }

    if (*(v37 + *(v33 + 20)) == 3)
    {
      if (qword_1EB09EC00 != -1)
      {
        swift_once();
      }

      v38 = sub_1A2D08094();
      __swift_project_value_buffer(v38, qword_1EB09EC10);
      v39 = v141;
      sub_1A2CC06C8(v37, v141, type metadata accessor for ActivityDescriptorState);
      v40 = sub_1A2D08074();
      v41 = sub_1A2D086A4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v153[0] = v43;
        *v42 = v136;
        v45 = *v39;
        v44 = v39[1];

        sub_1A2CC0730(v39, type metadata accessor for ActivityDescriptorState);
        v46 = sub_1A2C55558(v45, v44, v153);

        *(v42 + 4) = v46;
        v34 = v138;
        _os_log_impl(&dword_1A2C51000, v40, v41, "Activity %{public}s has been dismissed, deleting any buffered alert", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        v47 = v43;
        v18 = v137;
        MEMORY[0x1A58E5180](v47, -1, -1);
        MEMORY[0x1A58E5180](v42, -1, -1);
      }

      else
      {

        sub_1A2CC0730(v39, type metadata accessor for ActivityDescriptorState);
      }

      v49 = *v37;
      v48 = v37[1];
      v50 = v148;
      v51 = v140;
      swift_beginAccess();
      v52 = sub_1A2C64868(v49, v48);
      v35 = v146;
      if (v53)
      {
        v54 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = *(v50 + v51);
        v154 = v56;
        v32 = v50;
        v57 = v149;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1A2CB4108();
          v56 = v154;
        }

        sub_1A2CC0604(*(v56 + 56) + *(v143 + 72) * v54, v18, type metadata accessor for BufferedAlert);
        sub_1A2CA9310(v54, v56);
        v58 = 0;
        *(v32 + v51) = v56;
      }

      else
      {
        v58 = 1;
        v32 = v50;
        v57 = v149;
      }

      (*v139)(v18, v58, 1, v57);
      sub_1A2C54E38(v18, &unk_1EB0A0BB0, &unk_1A2D0B780);
      swift_endAccess();
      v33 = v147;
      v30 = v144;
      goto LABEL_6;
    }

LABEL_22:
    v59 = *v37;
    v60 = v37[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v133 = sub_1A2C8A10C(0, *(v133 + 2) + 1, 1, v133);
    }

    v62 = *(v133 + 2);
    v61 = *(v133 + 3);
    if (v62 >= v61 >> 1)
    {
      v133 = sub_1A2C8A10C((v61 > 1), v62 + 1, 1, v133);
    }

    v63 = v133;
    *(v133 + 2) = v62 + 1;
    v64 = &v63[16 * v62];
    *(v64 + 4) = v59;
    *(v64 + 5) = v60;
    v30 = v144;
    v32 = v148;
  }

  while (v31 != v144);
LABEL_29:
  v65 = sub_1A2CC0790(v133);

  v66 = OBJC_IVAR____TtC11ActivityKit11AlertClient__queue_bufferedAlerts;
  swift_beginAccess();
  v144 = v66;
  v67 = *(v32 + v66);
  v68 = (v67 + 8);
  v69 = 1 << *(v67 + 32);
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  else
  {
    v70 = -1;
  }

  v71 = v70 & v67[8];
  v72 = (v69 + 63) >> 6;
  v147 = v65 + 56;
  v146 = (v143 + 56);
  v141 = (v143 + 48);
  swift_bridgeObjectRetain_n();
  v73 = 0;
  v138 = MEMORY[0x1E69E7CC0];
  *&v74 = 136446210;
  v137 = v74;
  v139 = v67;
  while (v71)
  {
    v75 = v73;
LABEL_38:
    v76 = __clz(__rbit64(v71)) | (v75 << 6);
    v77 = v67[7];
    v78 = (v67[6] + 16 * v76);
    v79 = *v78;
    v80 = v78[1];
    v140 = *(v143 + 72);
    v81 = *(v135 + 48);
    v82 = v142;
    sub_1A2CC06C8(v77 + v140 * v76, v142 + v81, type metadata accessor for BufferedAlert);
    *v82 = v79;
    v82[1] = v80;
    if (*(v65 + 16))
    {
      sub_1A2D08C14();

      sub_1A2D08484();
      v83 = sub_1A2D08C54();
      v84 = v65;
      v85 = -1 << *(v65 + 32);
      v86 = v83 & ~v85;
      if ((*(v147 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86))
      {
        v87 = ~v85;
        while (1)
        {
          v88 = (*(v84 + 48) + 16 * v86);
          v89 = *v88 == v79 && v88[1] == v80;
          if (v89 || (sub_1A2D08B34() & 1) != 0)
          {
            break;
          }

          v86 = (v86 + 1) & v87;
          if (((*(v147 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        if (qword_1EB09EC00 != -1)
        {
          swift_once();
        }

        v92 = sub_1A2D08094();
        __swift_project_value_buffer(v92, qword_1EB09EC10);

        v93 = sub_1A2D08074();
        v94 = sub_1A2D086A4();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          LODWORD(v133) = v94;
          v96 = v95;
          *&v136 = swift_slowAlloc();
          v153[0] = v136;
          *v96 = v137;
          *(v96 + 4) = sub_1A2C55558(v79, v80, v153);
          _os_log_impl(&dword_1A2C51000, v93, v133, "Activity %{public}s is now active, presenting buffered alert", v96, 0xCu);
          v97 = v136;
          __swift_destroy_boxed_opaque_existential_1(v136);
          MEMORY[0x1A58E5180](v97, -1, -1);
          MEMORY[0x1A58E5180](v96, -1, -1);
        }

        v65 = v84;
        v98 = v142 + v81;
        v91 = v134;
        sub_1A2CC06C8(v98, v134, type metadata accessor for BufferedAlert);
        v90 = 0;
      }

      else
      {
LABEL_47:
        v90 = 1;
        v91 = v134;
        v65 = v84;
      }

      v67 = v139;
    }

    else
    {

      v90 = 1;
      v91 = v134;
    }

    v71 &= v71 - 1;
    v99 = v149;
    (*v146)(v91, v90, 1, v149);
    sub_1A2C54E38(v142, &qword_1EB0A0BE8, &qword_1A2D0D3B8);
    if ((*v141)(v91, 1, v99) == 1)
    {
      sub_1A2C54E38(v91, &unk_1EB0A0BB0, &unk_1A2D0B780);
      v73 = v75;
    }

    else
    {
      v100 = v131;
      sub_1A2CC0604(v91, v131, type metadata accessor for BufferedAlert);
      sub_1A2CC0604(v100, v132, type metadata accessor for BufferedAlert);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = sub_1A2CB2C68(0, v138[2] + 1, 1, v138);
      }

      v102 = v138[2];
      v101 = v138[3];
      if (v102 >= v101 >> 1)
      {
        v138 = sub_1A2CB2C68((v101 > 1), v102 + 1, 1, v138);
      }

      v103 = v138;
      v138[2] = v102 + 1;
      sub_1A2CC0604(v132, v103 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + v102 * v140, type metadata accessor for BufferedAlert);
      v73 = v75;
    }
  }

  while (1)
  {
    v75 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      __break(1u);
      goto LABEL_75;
    }

    if (v75 >= v72)
    {
      break;
    }

    v71 = v68[v75];
    ++v73;
    if (v71)
    {
      goto LABEL_38;
    }
  }

  v104 = v138[2];
  if (v104)
  {
    v105 = v148 + OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate;
    v106 = v143;
    v107 = v138 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
    swift_beginAccess();
    v147 = *(v106 + 72);
    v108 = v149;
    do
    {
      v117 = v150;
      sub_1A2CC06C8(v107, v150, type metadata accessor for BufferedAlert);
      v118 = *(*(*(v117 + v108[8]) + 24) + 16);

      os_unfair_lock_lock(v118);
      sub_1A2C8EB74();
      os_unfair_lock_unlock(v118);

      v120 = *v117;
      v119 = v117[1];
      v121 = v148;
      v122 = v144;
      swift_beginAccess();
      v123 = sub_1A2C64868(v120, v119);
      if (v124)
      {
        v125 = v123;
        v126 = swift_isUniquelyReferenced_nonNull_native();
        v127 = *(v121 + v122);
        v151 = v127;
        *(v121 + v122) = 0x8000000000000000;
        v128 = v145;
        if (!v126)
        {
          sub_1A2CB4108();
          v127 = v151;
        }

        sub_1A2CC0604(*(v127 + 56) + v125 * v147, v128, type metadata accessor for BufferedAlert);
        sub_1A2CA9310(v125, v127);
        *(v121 + v122) = v127;

        v129 = 0;
      }

      else
      {
        v129 = 1;
        v128 = v145;
      }

      v108 = v149;
      (*v146)(v128, v129, 1, v149);
      sub_1A2C54E38(v128, &unk_1EB0A0BB0, &unk_1A2D0B780);
      swift_endAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v109 = *(v105 + 8);
        ObjectType = swift_getObjectType();
        v111 = v108[5];
        v112 = v150;
        v113 = v150 + v108[6];
        v114 = *v113;
        v115 = v113[1];
        LOBYTE(v113) = v113[2];
        v152[0] = v114;
        v152[1] = v115;
        v152[2] = v113;
        (*(v109 + 8))(v120, v119, v150 + v111, v152, *(v150 + v108[7]), *(v150 + v108[7] + 8), ObjectType, v109);
        swift_unknownObjectRelease();
        v116 = v112;
      }

      else
      {
        v116 = v150;
      }

      sub_1A2CC0730(v116, type metadata accessor for BufferedAlert);
      v107 += v147;
      --v104;
    }

    while (v104);
  }
}

void sub_1A2CBF0F8(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v84 = a3;
  v85 = a5;
  v87 = a1;
  v88 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0BB0, &unk_1A2D0B780);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = &v75 - v10;
  v11 = type metadata accessor for BufferedAlert(0);
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SubscribedActivity(0);
  v75 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A2D08344();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v19) = a4[1];
  v81 = *a4;
  v82 = v19;
  v83 = a4[2];
  v21 = *(v6 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  *v20 = v21;
  v22 = v17 + 104;
  v23 = *(v17 + 104);
  v23(v20, *MEMORY[0x1E69E8020], v16, v18);
  v79 = v21;
  LOBYTE(v21) = sub_1A2D08364();
  v24 = *(v17 + 8);
  v24(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v80 = a6;
  v89 = v6;
  v25 = *(*(v6 + OBJC_IVAR____TtC11ActivityKit11AlertClient_outputClient) + 24);
  v26 = *(v25 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  *v20 = v26;
  (v23)(v20, *MEMORY[0x1E69E8018], v16);
  v27 = v26;
  LOBYTE(v26) = sub_1A2D08364();
  v28 = (v24)(v20, v16);
  if ((v26 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  MEMORY[0x1EEE9AC00](v28);
  *(&v75 - 2) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0190, &qword_1A2D0A890);
  sub_1A2D08704();
  v29 = v91[0];
  v22 = v87;
  v24 = v88;
  if (!*(v91[0] + 16) || (v30 = sub_1A2C64868(v87, v88), (v31 & 1) == 0))
  {

    if (qword_1EB09EC00 != -1)
    {
      swift_once();
    }

    v40 = sub_1A2D08094();
    __swift_project_value_buffer(v40, qword_1EB09EC10);

    v35 = sub_1A2D08074();
    v36 = sub_1A2D086A4();

    v41 = os_log_type_enabled(v35, v36);
    v15 = v86;
    if (v41)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v91[0] = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_1A2C55558(v22, v24, v91);
      v39 = "Activity %{public}s not found, buffering alert";
      goto LABEL_15;
    }

LABEL_16:

    v42 = v77;
    v43 = v78;
    v44 = v76;
    type metadata accessor for Watchdog();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    type metadata accessor for UnfairLock();
    v45 = swift_allocObject();
    v46 = swift_slowAlloc();
    *(v45 + 16) = v46;
    *v46 = 0;
    *(v16 + 24) = v45;
    *(v16 + 32) = 0;
    sub_1A2CC06C8(v84, &v15[v42[5]], type metadata accessor for AlertPayload);
    *v15 = v22;
    *(v15 + 1) = v24;
    v47 = &v15[v42[6]];
    v48 = v82;
    *v47 = v81;
    v47[1] = v48;
    v47[2] = v83;
    v49 = &v15[v42[7]];
    v50 = v80;
    *v49 = v85;
    v49[1] = v50;
    *&v15[v42[8]] = v16;
    sub_1A2CC06C8(v15, v43, type metadata accessor for BufferedAlert);
    (*(v44 + 56))(v43, 0, 1, v42);
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    sub_1A2CA840C(v43, v22, v24);
    swift_endAccess();
    if (qword_1EB09EC00 == -1)
    {
LABEL_17:
      v51 = sub_1A2D08094();
      __swift_project_value_buffer(v51, qword_1EB09EC10);

      v52 = sub_1A2D08074();
      v53 = sub_1A2D086A4();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v91[0] = v55;
        *v54 = 136446210;
        *(v54 + 4) = sub_1A2C55558(v22, v24, v91);
        _os_log_impl(&dword_1A2C51000, v52, v53, "Buffered alert for activity %{public}s.", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x1A58E5180](v55, -1, -1);
        MEMORY[0x1A58E5180](v54, -1, -1);
      }

      v56 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v57 = swift_allocObject();
      v57[2] = v56;
      v57[3] = v22;
      v57[4] = v24;
      v58 = *(*(v16 + 24) + 16);

      os_unfair_lock_lock(v58);
      sub_1A2C8BCE8(v79, sub_1A2CC05F8, v57, 5.0);
      os_unfair_lock_unlock(v58);

      sub_1A2CC0730(v15, type metadata accessor for BufferedAlert);

      return;
    }

LABEL_35:
    swift_once();
    goto LABEL_17;
  }

  sub_1A2CC06C8(*(v29 + 56) + *(v75 + 72) * v30, v15, type metadata accessor for SubscribedActivity);

  v32 = v15[16];
  sub_1A2CC0730(v15, type metadata accessor for SubscribedActivity);
  v33 = v89;
  if (v32 <= 2)
  {
    v15 = v86;
    if ((v32 - 1) >= 2)
    {
      if (qword_1EB09EC00 != -1)
      {
        swift_once();
      }

      v34 = sub_1A2D08094();
      __swift_project_value_buffer(v34, qword_1EB09EC10);

      v35 = sub_1A2D08074();
      v36 = sub_1A2D086A4();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v91[0] = v38;
        *v37 = 136446210;
        *(v37 + 4) = sub_1A2C55558(v22, v24, v91);
        v39 = "Activity %{public}s is pending, buffering alert";
LABEL_15:
        _os_log_impl(&dword_1A2C51000, v35, v36, v39, v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x1A58E5180](v38, -1, -1);
        MEMORY[0x1A58E5180](v37, -1, -1);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    goto LABEL_27;
  }

  if (v32 != 3)
  {
LABEL_27:
    if (qword_1EB09EC00 != -1)
    {
      swift_once();
    }

    v66 = sub_1A2D08094();
    __swift_project_value_buffer(v66, qword_1EB09EC10);

    v67 = sub_1A2D08074();
    v68 = sub_1A2D086A4();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v91[0] = v70;
      *v69 = 136446210;
      *(v69 + 4) = sub_1A2C55558(v22, v24, v91);
      _os_log_impl(&dword_1A2C51000, v67, v68, "Activity %{public}s is active, presenting alert immediately", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      v71 = v70;
      v33 = v89;
      MEMORY[0x1A58E5180](v71, -1, -1);
      MEMORY[0x1A58E5180](v69, -1, -1);
    }

    v72 = v33 + OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v73 = *(v72 + 8);
      ObjectType = swift_getObjectType();
      v90[0] = v81;
      v90[1] = v82;
      v90[2] = v83;
      (*(v73 + 8))(v22, v24, v84, v90, v85, v80, ObjectType, v73);
      swift_unknownObjectRelease();
    }

    return;
  }

  if (qword_1EB09EC00 != -1)
  {
    swift_once();
  }

  v59 = sub_1A2D08094();
  __swift_project_value_buffer(v59, qword_1EB09EC10);

  v60 = sub_1A2D08074();
  v61 = sub_1A2D086A4();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64 = v22;
    v65 = v63;
    v91[0] = v63;
    *v62 = 136446210;
    *(v62 + 4) = sub_1A2C55558(v64, v24, v91);
    _os_log_impl(&dword_1A2C51000, v60, v61, "Activity %{public}s is dismissed, ignoring alert", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x1A58E5180](v65, -1, -1);
    MEMORY[0x1A58E5180](v62, -1, -1);
  }
}

void sub_1A2CBFCB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1A2CBFD20(a3, a4);
  }
}

uint64_t sub_1A2CBFD20(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0BB0, &unk_1A2D0B780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29[-1] - v6;
  v8 = type metadata accessor for BufferedAlert(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A2D08344();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v29[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_1A2D08364();
  v19 = *(v12 + 8);
  v18 = v12 + 8;
  v19(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  sub_1A2CA8D54(a1, a2, v7);
  swift_endAccess();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1A2C54E38(v7, &unk_1EB0A0BB0, &unk_1A2D0B780);
  }

  v18 = v28;
  sub_1A2CC0604(v7, v28, type metadata accessor for BufferedAlert);
  if (qword_1EB09EC00 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v21 = sub_1A2D08094();
  __swift_project_value_buffer(v21, qword_1EB09EC10);

  v22 = sub_1A2D08074();
  v23 = sub_1A2D086A4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_1A2C55558(a1, a2, v29);
    _os_log_impl(&dword_1A2C51000, v22, v23, "Buffered alert for activity %{public}s timed out after 5 seconds", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1A58E5180](v25, -1, -1);
    MEMORY[0x1A58E5180](v24, -1, -1);
  }

  v26 = *(v18 + *(v8 + 28));
  sub_1A2CC066C();
  v27 = swift_allocError();
  v26();

  return sub_1A2CC0730(v18, type metadata accessor for BufferedAlert);
}

void *sub_1A2CC0194@<X0>(BOOL *a2@<X8>)
{
  result = sub_1A2CBDCC4();
  v4 = result;
  if (result)
  {
    v5 = sub_1A2D08434();
    [v4 requestAlertDismissalWithActivityIdentifier_];

    result = swift_unknownObjectRelease();
  }

  *a2 = v4 == 0;
  return result;
}

Swift::Void __swiftcall AlertClient.dismissAlert(withActivityIdentifier:)(Swift::String withActivityIdentifier)
{
  object = withActivityIdentifier._object;
  countAndFlagsBits = withActivityIdentifier._countAndFlagsBits;
  v4 = v1 + OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(countAndFlagsBits, object, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

uint64_t type metadata accessor for BufferedAlert(uint64_t a1)
{
  result = qword_1EB0A0B90;
  if (!qword_1EB0A0B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A2CC0474(uint64_t a1)
{
  result = type metadata accessor for AlertPayload(319);
  if (v2 <= 0x3F)
  {
    result = sub_1A2CC0528();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Watchdog();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1A2CC0528()
{
  result = qword_1EB0A0BA0;
  if (!qword_1EB0A0BA0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB0A0BA0);
  }

  return result;
}

unint64_t sub_1A2CC0580()
{
  result = qword_1EB09ECF8;
  if (!qword_1EB09ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ECF8);
  }

  return result;
}

uint64_t sub_1A2CC0604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A2CC066C()
{
  result = qword_1EB0A0BC0;
  if (!qword_1EB0A0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0BC0);
  }

  return result;
}

uint64_t sub_1A2CC06C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2CC0730(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2CC0790(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1A58E4320](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1A2CBAD68(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1A2CC083C()
{
  result = qword_1EB0A0BF0;
  if (!qword_1EB0A0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0BF0);
  }

  return result;
}

uint64_t static ActivityOutputServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709D48 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709D50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t ActivitySubscriptionOptions.description.getter()
{
  v1 = *v0;
  sub_1A2D08864();

  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v2, v3);

  return 0xD000000000000011;
}

uint64_t sub_1A2CC0A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x506564756C636E69 && a2 == 0xEF7364616F6C7961)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CC0AA8(uint64_t a1)
{
  v2 = sub_1A2C61DDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC0AE4(uint64_t a1)
{
  v2 = sub_1A2C61DDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySubscriptionOptions.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C00, &qword_1A2D0D480);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C61DDC();
  sub_1A2D08C74();
  sub_1A2D08AC4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A2CC0C5C(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C61B90();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2CC0D24()
{
  v1 = 0x696669746E656469;
  v2 = 0x7470697263736564;
  if (*v0 != 2)
  {
    v2 = 0x7364616F6C796170;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
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

uint64_t sub_1A2CC0DA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2CC245C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2CC0DD4(uint64_t a1)
{
  v2 = sub_1A2CC190C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC0E10(uint64_t a1)
{
  v2 = sub_1A2CC190C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SubscribedActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C10, &qword_1A2D0D490);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CC190C();
  sub_1A2D08C74();
  v16 = 0;
  sub_1A2D08AB4();
  if (!v2)
  {
    v15 = *(v3 + 16);
    v14 = 1;
    sub_1A2C74124();
    sub_1A2D08AE4();
    v9 = type metadata accessor for SubscribedActivity(0);
    v13 = 2;
    type metadata accessor for ActivityDescriptor(0);
    sub_1A2C60E08(&qword_1ED708D60, type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
    sub_1A2D08AE4();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C20, &qword_1A2D0D498);
    sub_1A2CC1960();
    sub_1A2D08AE4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SubscribedActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for ActivityDescriptor(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C38, &qword_1A2D0D4A0);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for SubscribedActivity(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CC190C();
  v26 = v8;
  v12 = v27;
  sub_1A2D08C64();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v15 = v24;
  v14 = v25;
  v33 = 0;
  *v11 = sub_1A2D08A24();
  *(v11 + 1) = v16;
  v27 = v16;
  v31 = 1;
  sub_1A2C78A64();
  sub_1A2D08A54();
  v11[16] = v32;
  v30 = 2;
  sub_1A2C60E08(&qword_1ED709430, type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
  v22 = v11;
  v17 = v5;
  sub_1A2D08A54();
  v18 = v13;
  v19 = v22;
  sub_1A2C72690(v17, &v22[*(v9 + 24)], type metadata accessor for ActivityDescriptor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C20, &qword_1A2D0D498);
  v29 = 3;
  sub_1A2CC1A70();
  sub_1A2D08A54();
  (*(v15 + 8))(v26, v14);
  *(v19 + *(v9 + 28)) = v28;
  sub_1A2C72558(v19, v23, type metadata accessor for SubscribedActivity);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_1A2C74070(v19, type metadata accessor for SubscribedActivity);
}

uint64_t sub_1A2CC150C(uint64_t a1)
{
  v2 = sub_1A2C72504();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC1548(uint64_t a1)
{
  v2 = sub_1A2C72504();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CC1584(uint64_t a1)
{
  v2 = sub_1A2C6F514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC15C0(uint64_t a1)
{
  v2 = sub_1A2C6F514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CC15FC(uint64_t a1)
{
  v2 = sub_1A2C7495C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC1638(uint64_t a1)
{
  v2 = sub_1A2C7495C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CC1674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CC16F4(uint64_t a1)
{
  v2 = sub_1A2C740D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC1730(uint64_t a1)
{
  v2 = sub_1A2C740D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityChange.identifier.getter()
{
  v1 = *v0;

  return v1;
}

ActivityKit::ActivityChange __swiftcall ActivityChange.init(identifier:changes:)(Swift::String identifier, Swift::OpaquePointer changes)
{
  *v2 = identifier;
  *(v2 + 16) = changes;
  result.identifier = identifier;
  result.changes = changes;
  return result;
}

uint64_t sub_1A2CC17B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365676E616863 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CC1894(uint64_t a1)
{
  v2 = sub_1A2C6EDCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC18D0(uint64_t a1)
{
  v2 = sub_1A2C6EDCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A2CC190C()
{
  result = qword_1EB0A0C18;
  if (!qword_1EB0A0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0C18);
  }

  return result;
}

unint64_t sub_1A2CC1960()
{
  result = qword_1EB0A0C28;
  if (!qword_1EB0A0C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0C20, &qword_1A2D0D498);
    sub_1A2CC1A1C();
    sub_1A2C60E08(&qword_1EB09F658, type metadata accessor for OpaqueActivityPayload, &protocol conformance descriptor for OpaqueActivityPayload);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0C28);
  }

  return result;
}

unint64_t sub_1A2CC1A1C()
{
  result = qword_1EB0A0C30;
  if (!qword_1EB0A0C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0C30);
  }

  return result;
}

unint64_t sub_1A2CC1A70()
{
  result = qword_1EB0A0C40;
  if (!qword_1EB0A0C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0C20, &qword_1A2D0D498);
    sub_1A2CC1B2C();
    sub_1A2C60E08(&qword_1ED709070, type metadata accessor for OpaqueActivityPayload, &protocol conformance descriptor for OpaqueActivityPayload);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0C40);
  }

  return result;
}

unint64_t sub_1A2CC1B2C()
{
  result = qword_1EB0A0C48;
  if (!qword_1EB0A0C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0C48);
  }

  return result;
}

unint64_t sub_1A2CC1B80(void *a1)
{
  a1[1] = sub_1A2C620FC();
  a1[2] = sub_1A2C61B90();
  result = sub_1A2CC1BB8();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CC1BB8()
{
  result = qword_1EB09F080;
  if (!qword_1EB09F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F080);
  }

  return result;
}

uint64_t sub_1A2CC1C1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A2CC1C64(uint64_t result, int a2, int a3)
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

uint64_t sub_1A2CC1CF4(uint64_t a1)
{
  result = type metadata accessor for ActivityDescriptor(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OpaqueActivityPayload(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A2CC1DD8()
{
  result = qword_1EB0A0CA8;
  if (!qword_1EB0A0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CA8);
  }

  return result;
}

unint64_t sub_1A2CC1E30()
{
  result = qword_1EB0A0CB0;
  if (!qword_1EB0A0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CB0);
  }

  return result;
}

unint64_t sub_1A2CC1E88()
{
  result = qword_1EB0A0CB8;
  if (!qword_1EB0A0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CB8);
  }

  return result;
}

unint64_t sub_1A2CC1EE0()
{
  result = qword_1EB0A0CC0;
  if (!qword_1EB0A0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CC0);
  }

  return result;
}

unint64_t sub_1A2CC1F38()
{
  result = qword_1EB0A0CC8;
  if (!qword_1EB0A0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CC8);
  }

  return result;
}

unint64_t sub_1A2CC1F90()
{
  result = qword_1EB0A0CD0;
  if (!qword_1EB0A0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CD0);
  }

  return result;
}

unint64_t sub_1A2CC1FE8()
{
  result = qword_1EB0A0CD8;
  if (!qword_1EB0A0CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CD8);
  }

  return result;
}

unint64_t sub_1A2CC2040()
{
  result = qword_1ED709158;
  if (!qword_1ED709158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709158);
  }

  return result;
}

unint64_t sub_1A2CC2098()
{
  result = qword_1ED709160;
  if (!qword_1ED709160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709160);
  }

  return result;
}

unint64_t sub_1A2CC20F0()
{
  result = qword_1ED7091D0;
  if (!qword_1ED7091D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091D0);
  }

  return result;
}

unint64_t sub_1A2CC2148()
{
  result = qword_1ED7091D8;
  if (!qword_1ED7091D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091D8);
  }

  return result;
}

unint64_t sub_1A2CC21A0()
{
  result = qword_1ED7091A8;
  if (!qword_1ED7091A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091A8);
  }

  return result;
}

unint64_t sub_1A2CC21F8()
{
  result = qword_1ED7091B0;
  if (!qword_1ED7091B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091B0);
  }

  return result;
}

unint64_t sub_1A2CC2250()
{
  result = qword_1ED7091C0;
  if (!qword_1ED7091C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091C0);
  }

  return result;
}

unint64_t sub_1A2CC22A8()
{
  result = qword_1ED7091C8;
  if (!qword_1ED7091C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091C8);
  }

  return result;
}

unint64_t sub_1A2CC2300()
{
  result = qword_1ED7091E8;
  if (!qword_1ED7091E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091E8);
  }

  return result;
}

unint64_t sub_1A2CC2358()
{
  result = qword_1ED7091F0;
  if (!qword_1ED7091F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091F0);
  }

  return result;
}

unint64_t sub_1A2CC23B0()
{
  result = qword_1EB0A0CE0;
  if (!qword_1EB0A0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CE0);
  }

  return result;
}

unint64_t sub_1A2CC2408()
{
  result = qword_1EB0A0CE8;
  if (!qword_1EB0A0CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CE8);
  }

  return result;
}

uint64_t sub_1A2CC245C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7364616F6C796170 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

uint64_t ActivityAttributesType.attributesType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActivityAttributesType.attributesType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1A2CC266C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEE00657079547365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CC26FC(uint64_t a1)
{
  v2 = sub_1A2C6697C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC2738(uint64_t a1)
{
  v2 = sub_1A2C6697C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityAttributesType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0CF8, &qword_1A2D0DFC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6697C();
  sub_1A2D08C74();
  sub_1A2D08AB4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static ActivityAttributesType.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A2D08B34();
  }
}

uint64_t ActivityAttributesType.hashValue.getter()
{
  sub_1A2D08C14();
  sub_1A2D08484();
  return sub_1A2D08C54();
}

uint64_t sub_1A2CC2934()
{
  sub_1A2D08C14();
  sub_1A2D08484();
  return sub_1A2D08C54();
}

uint64_t sub_1A2CC2988(uint64_t a1)
{
  sub_1A2D08C14();
  sub_1A2D08484();
  return sub_1A2D08C54();
}

uint64_t sub_1A2CC29D0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A2D08B34();
  }
}

unint64_t ActivityAttributesType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A2D08864();

  MEMORY[0x1A58E4150](v1, v2);
  return 0xD000000000000011;
}

unint64_t ActivityAttributesType.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A2D08864();

  MEMORY[0x1A58E4150](v1, v2);
  return 0xD000000000000011;
}

unint64_t sub_1A2CC2AFC()
{
  result = qword_1EB09F0C0;
  if (!qword_1EB09F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F0C0);
  }

  return result;
}

unint64_t sub_1A2CC2B50(void *a1)
{
  a1[1] = sub_1A2C6CDD0();
  a1[2] = sub_1A2C6ABA0();
  result = sub_1A2CC2B88();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CC2B88()
{
  result = qword_1EB09F5F0;
  if (!qword_1EB09F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F5F0);
  }

  return result;
}

uint64_t sub_1A2CC2BDC(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C6ABA0();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2CC2CA4(uint64_t a1, int a2)
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

uint64_t sub_1A2CC2CEC(uint64_t result, int a2, int a3)
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

unint64_t sub_1A2CC2D3C()
{
  result = qword_1EB0A0D00;
  if (!qword_1EB0A0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0D00);
  }

  return result;
}

unint64_t sub_1A2CC2D94()
{
  result = qword_1ED709B78;
  if (!qword_1ED709B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709B78);
  }

  return result;
}

unint64_t sub_1A2CC2DEC()
{
  result = qword_1ED709B80;
  if (!qword_1ED709B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709B80);
  }

  return result;
}

uint64_t sub_1A2CC2E40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 49);
    for (i = (a1 + 49); ; i += 24)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = *(i - 17) == *(v3 - 17) && *(i - 9) == *(v3 - 9);
      if (!v9 && (sub_1A2D08B34() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (v6 == 1)
        {
          result = 0;
          if (v8 != 1 || ((v7 ^ v5) & 1) != 0)
          {
            return result;
          }
        }

        else
        {
          result = 0;
          if (v8 != 2 || v7)
          {
            return result;
          }
        }
      }

      else
      {
        if (v8)
        {
          return 0;
        }

        if (v5 == 2)
        {
          if (v7 != 2)
          {
            return 0;
          }
        }

        else if (v7 == 2 || ((v7 ^ v5) & 1) != 0)
        {
          return 0;
        }
      }

      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1A2CC2F58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      v3 = (a2 + 64);
      v4 = (a1 + 64);
      do
      {
        v5 = *(v4 - 3);
        v6 = *(v4 - 2);
        v7 = *(v4 - 1);
        v8 = *v4;
        v27 = *(v4 - 4);
        v28 = v5;
        v29 = v6;
        v30 = v7;
        v31 = v8;
        v10 = *(v3 - 3);
        v11 = *(v3 - 2);
        v12 = *(v3 - 1);
        v13 = *v3;
        v22 = *(v3 - 4);
        v9 = v22;
        v23 = v10;
        v24 = v11;
        v25 = v12;
        v26 = v13;
        sub_1A2CC35F8(v27, v5, v6, v7, v8, sub_1A2C66A94, sub_1A2C66A98);
        sub_1A2CC35F8(v9, v10, v11, v12, v13, sub_1A2C66A94, sub_1A2C66A98);
        v20 = _s11ActivityKit0A13ContentSourceO7RequestO2eeoiySbAE_AEtFZ_0(&v27, &v22, v14, v15, v16, v17, v18, v19);
        sub_1A2CC35F8(v22, v23, v24, v25, v26, sub_1A2C6AE84, sub_1A2C6AE84);
        sub_1A2CC35F8(v27, v28, v29, v30, v31, sub_1A2C6AE84, sub_1A2C6AE84);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v4 += 40;
        v3 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1A2CC30E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1A2D08B34() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

Swift::Bool __swiftcall ActivityProminencePredicate.matches(activityIdentifier:)(Swift::String activityIdentifier)
{
  if (*v1)
  {
    v6 = activityIdentifier;
    MEMORY[0x1EEE9AC00](activityIdentifier._countAndFlagsBits);
    v5[2] = &v6;
    v3 = sub_1A2C956A8(sub_1A2CB05CC, v5, v2);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_1A2CC321C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001A2D19F50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A2D08B34();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A2CC32B0(uint64_t a1)
{
  v2 = sub_1A2C8A41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC32EC(uint64_t a1)
{
  v2 = sub_1A2C8A41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CC3328(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C8A218();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t static ActivityProminencePredicate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sub_1A2CC30E4(v2, v3);
  }
}

uint64_t sub_1A2CC3418(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sub_1A2CC30E4(v2, v3);
  }
}

unint64_t sub_1A2CC3444(void *a1)
{
  a1[1] = sub_1A2C8B528();
  a1[2] = sub_1A2C8A218();
  result = sub_1A2CC347C();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CC347C()
{
  result = qword_1EB09ED88;
  if (!qword_1EB09ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED88);
  }

  return result;
}

unint64_t sub_1A2CC34F4()
{
  result = qword_1EB0A0D18;
  if (!qword_1EB0A0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0D18);
  }

  return result;
}

unint64_t sub_1A2CC354C()
{
  result = qword_1ED708438;
  if (!qword_1ED708438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708438);
  }

  return result;
}

unint64_t sub_1A2CC35A4()
{
  result = qword_1ED708440;
  if (!qword_1ED708440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708440);
  }

  return result;
}

uint64_t sub_1A2CC35F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a5)
  {

    return a7(a1, a2, a3, a4);
  }

  else
  {
    a6(a1, a2);

    return (a7)(a3, a4);
  }
}

double sub_1A2CC3668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else
  {
    if (a5)
    {
      return result;
    }
  }

  return result;
}

uint64_t static ActivityFrequentUpdatesObservationServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709B00 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709B08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t RemoteSubscriptionType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6168436574617473;
    }

    if (a1 == 3)
    {
      return 1701736302;
    }
  }

  else
  {
    if (!a1)
    {
      return 1819047270;
    }

    if (a1 == 1)
    {
      return 0x737472656C61;
    }
  }

  result = sub_1A2D08B64();
  __break(1u);
  return result;
}

uint64_t static RemoteSubscriptionType.mostRestrictive(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = 0;
  v5 = a1 + 32;
  while (2)
  {
    v6 = result;
    v7 = result - 1;
    for (i = v4; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_22;
      }

      result = *(v5 + 8 * i);
      if (result > 1)
      {
        break;
      }

      if (result)
      {
        if (result != 1)
        {
          goto LABEL_23;
        }

        if (v6 < 2)
        {
          goto LABEL_17;
        }
      }

      else if (v7 >= 3)
      {
        goto LABEL_17;
      }

LABEL_5:
      if (v4 == v1)
      {
        return v6;
      }
    }

    if (result == 2)
    {
      if (v6 != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    }

    if (result != 3)
    {
LABEL_23:
      result = sub_1A2D08B64();
      __break(1u);
      return result;
    }

LABEL_17:
    if (v4 != v1)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_1A2CC3964()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CC39D8(uint64_t a1)
{
  v2 = *v1;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v2);
  return sub_1A2D08C54();
}

unint64_t sub_1A2CC3A1C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A2CC44DC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t RemoteSubscription.presentationTargetBundleIDExceptions.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t RemoteSubscription.init(subscriptionType:presentationTargetBundleIDExceptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double sub_1A2CC3CA4@<D0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a5@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a2;
    v9 = a3;
    v10 = a5;
    swift_once();
    a2 = v8;
    a5 = v10;
    a3 = v9;
  }

  v6 = *a3;
  *a5 = *a2;
  a5[1] = v6;

  return result;
}

uint64_t RemoteSubscription.description.getter()
{
  v1 = *v0;
  if (!*(v0[1] + 16))
  {
    if (v1 <= 1)
    {
      if (!v1)
      {
        return 1819047270;
      }

LABEL_16:
      if (v1 == 1)
      {
        return 0x737472656C61;
      }

      goto LABEL_23;
    }

    if (v1 == 2)
    {
      return 0x6168436574617473;
    }

    if (v1 != 3)
    {
LABEL_23:
      result = sub_1A2D08B64();
      __break(1u);
      return result;
    }

LABEL_12:

    return 1701736302;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
  sub_1A2CC44EC();
  v2 = sub_1A2D08404();
  v4 = v3;

  if (v1 == 3)
  {
    goto LABEL_12;
  }

  result = 1819047270;
  if (v4)
  {
    switch(v1)
    {
      case 0:
        v6 = 0xE400000000000000;
        goto LABEL_21;
      case 2:
        result = 0x6168436574617473;
        v6 = 0xEC0000007365676ELL;
LABEL_21:
        MEMORY[0x1A58E4150](result, v6);

        MEMORY[0x1A58E4150](0x2074706563786520, 0xE800000000000000);
        MEMORY[0x1A58E4150](v2, v4);

        return 0;
      case 1:
        v6 = 0xE600000000000000;
        result = 0x737472656C61;
        goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (v1)
  {
    if (v1 == 2)
    {
      return 0x6168436574617473;
    }

    goto LABEL_16;
  }

  return result;
}

unint64_t sub_1A2CC3F30()
{
  if (*v0)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1A2CC3F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A2D1A350 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001A2D1A370 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A2D08B34();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A2CC4050(uint64_t a1)
{
  v2 = sub_1A2CC4550();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC408C(uint64_t a1)
{
  v2 = sub_1A2CC4550();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteSubscription.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0D78, &qword_1A2D0E5C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CC4550();
  sub_1A2D08C74();
  v12 = v8;
  v11 = 0;
  sub_1A2CC45A4();
  sub_1A2D08AE4();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
    sub_1A2C8A470(&unk_1ED708820, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1A2D08AE4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RemoteSubscription.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0D90, &qword_1A2D0E5D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CC4550();
  sub_1A2D08C64();
  if (!v2)
  {
    v13 = 0;
    sub_1A2CC45F8();
    sub_1A2D08A54();
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
    v13 = 1;
    sub_1A2C8A470(&qword_1ED709510, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1A2D08A54();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1A2CC44DC(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1A2CC44EC()
{
  result = qword_1EB0A0D70;
  if (!qword_1EB0A0D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0D70);
  }

  return result;
}

unint64_t sub_1A2CC4550()
{
  result = qword_1EB0A0D80;
  if (!qword_1EB0A0D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0D80);
  }

  return result;
}

unint64_t sub_1A2CC45A4()
{
  result = qword_1EB0A0D88;
  if (!qword_1EB0A0D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0D88);
  }

  return result;
}

unint64_t sub_1A2CC45F8()
{
  result = qword_1EB0A0D98;
  if (!qword_1EB0A0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0D98);
  }

  return result;
}

unint64_t sub_1A2CC4650()
{
  result = qword_1EB0A0DA0;
  if (!qword_1EB0A0DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0DA0);
  }

  return result;
}

unint64_t sub_1A2CC46D8()
{
  result = qword_1EB0A0DA8;
  if (!qword_1EB0A0DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0DA8);
  }

  return result;
}

unint64_t sub_1A2CC4730()
{
  result = qword_1EB0A0DB0;
  if (!qword_1EB0A0DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0DB0);
  }

  return result;
}

unint64_t sub_1A2CC4788()
{
  result = qword_1EB0A0DB8;
  if (!qword_1EB0A0DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0DB8);
  }

  return result;
}

unint64_t sub_1A2CC47DC()
{
  result = qword_1EB09EF48;
  if (!qword_1EB09EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EF48);
  }

  return result;
}

void sub_1A2CC49B0(uint64_t a1, const char *a2)
{
  if (qword_1ED7097E8 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1ED7097F0);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CC4AA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A2C59424();
  }
}

double sub_1A2CC4AF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient__queue_pushTokens);
  if (*(v5 + 16))
  {

    v8 = sub_1A2C64868(a2, a3);
    if (v9)
    {
      v10 = *(*(v5 + 56) + 16 * v8);
      *a4 = v10;
      sub_1A2C5E63C(v10, *(&v10 + 1));
    }

    else
    {

      result = 0.0;
      *a4 = xmmword_1A2D0AC30;
    }
  }

  else
  {
    result = 0.0;
    *a4 = xmmword_1A2D0AC30;
  }

  return result;
}

id sub_1A2CC4BA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityPushTokenClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2CC4C48(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0DF8, &qword_1A2D0E948);
  sub_1A2D08704();
  return v3;
}

ActivityKit::AlertPresentationOptions __swiftcall AlertPresentationOptions.init(optional:interrupting:breaksThroughFocus:)(Swift::Bool optional, Swift::Bool interrupting, Swift::Bool breaksThroughFocus)
{
  *v3 = optional;
  v3[1] = interrupting;
  v3[2] = breaksThroughFocus;
  result.optional = optional;
  return result;
}

id AlertPresentationOptions.acAlertPresentationOptions.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = [objc_allocWithZone(ACAlertPresentationOptions) init];
  [v4 setInterrupting_];
  [v4 setOptional_];
  [v4 setBreaksThroughFocus_];
  return v4;
}

uint64_t sub_1A2CC4DB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2CC5418(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2CC4DD8(uint64_t a1)
{
  v2 = sub_1A2C94000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC4E14(uint64_t a1)
{
  v2 = sub_1A2C94000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static AlertPresentationOptions._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2)
{
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v3 = sub_1A2D07F44();
  v5 = v4;
  sub_1A2C944B4();
  sub_1A2D07E64();

  result = sub_1A2C55840(v3, v5);
  if (v9)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 2) = v10 != 0;
  *a2 = v7 | v8;
  return result;
}

uint64_t sub_1A2CC4F60(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C93DD8();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2CC5034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v4 = sub_1A2D07F44();
  v6 = v5;
  sub_1A2C944B4();
  sub_1A2D07E64();

  result = sub_1A2C55840(v4, v6);
  if (v10)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  *(a2 + 2) = v11 != 0;
  *a2 = v8 | v9;
  return result;
}

uint64_t sub_1A2CC5148@<X0>(uint64_t a1@<X0>, _BYTE *a3@<X8>)
{
  if (a1)
  {
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v6 = sub_1A2D07F44();
    v8 = v7;
    sub_1A2C944B4();
    sub_1A2D07E64();

    result = sub_1A2C55840(v6, v8);
    *a3 = v10;
    a3[1] = v11;
    a3[2] = v12;
  }

  else
  {
    __break(1u);
    sub_1A2C55840(v4, v3);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CC5244()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1ED708838);
  __swift_project_value_buffer(v0, qword_1ED708838);
  return sub_1A2D08004();
}

uint64_t static AlertServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED708830 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED708838);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CC5354@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED708830 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED708838);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CC5418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E6F6974706FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7075727265746E69 && a2 == 0xEC000000676E6974 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A2D1A470 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

BOOL _s11ActivityKit24AlertPresentationOptionsV34_conditionallyBridgeFromObjectiveC_6resultSbSo6NSDataC_ACSgztFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v3 = sub_1A2D07F44();
  v5 = v4;
  sub_1A2C944B4();
  sub_1A2D07E64();

  sub_1A2C55840(v3, v5);
  if (v12)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | v11;
  if (v13)
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 | v8;
  *a2 = v9;
  *(a2 + 2) = BYTE2(v9);
  return v9 != 2;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AlertPresentationOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for AlertPresentationOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1A2CC57A4()
{
  result = qword_1EB0A0E20;
  if (!qword_1EB0A0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0E20);
  }

  return result;
}

unint64_t sub_1A2CC57FC()
{
  result = qword_1EB09EF30;
  if (!qword_1EB09EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EF30);
  }

  return result;
}

unint64_t sub_1A2CC5854()
{
  result = qword_1EB09EF38;
  if (!qword_1EB09EF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EF38);
  }

  return result;
}

uint64_t sub_1A2CC58A8()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB09F570);
  __swift_project_value_buffer(v0, qword_1EB09F570);
  return sub_1A2D08084();
}

uint64_t static Activity.request(attributes:contentState:pushType:)(char *a1, uint64_t a2, uint64_t *a3)
{
  v27 = a2;
  v29 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = &v24 - v6;
  v28 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v24 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = AssociatedConformanceWitness;
  v12 = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v30 = AssociatedTypeWitness;
  v31 = AssociatedConformanceWitness;
  v32 = v12;
  v33 = v13;
  v25 = type metadata accessor for ActivityContent(0, &v30);
  v14 = *(v25 - 8);
  v15 = MEMORY[0x1EEE9AC00](v25);
  v17 = &v24 - v16;
  v19 = *a3;
  v18 = a3[1];
  (*(v8 + 16))(v10, v27, AssociatedTypeWitness, v15);
  v20 = sub_1A2D07F94();
  v21 = v26;
  (*(*(v20 - 8) + 56))(v26, 1, 1, v20);
  ActivityContent.init(state:staleDate:relevanceScore:)(v10, v21, AssociatedTypeWitness, v24, v12, v13, v17, 0.0);
  v30 = v19;
  v31 = v18;
  v22 = static Activity.request(attributes:content:pushType:)(v29, v17, &v30);
  (*(v14 + 8))(v17, v25);
  return v22;
}

uint64_t static Activity.request(attributes:content:pushType:)(char *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      v5 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v4 = *a3;
  }

  v6 = a1;
  v7 = a2;

  v5 = sub_1A2CB2C90(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = *(v5 + 2);
  v8 = *(v5 + 3);
  if (v9 >= v8 >> 1)
  {
    v5 = sub_1A2CB2C90((v8 > 1), v9 + 1, 1, v5);
  }

  *(v5 + 2) = v9 + 1;
  v10 = &v5[40 * v9];
  *(v10 + 4) = v4;
  *(v10 + 5) = v3;
  *(v10 + 3) = xmmword_1A2D0EBF0;
  v10[64] = 0;
  a2 = v7;
  a1 = v6;
LABEL_8:
  *&v15 = &unk_1F15791C8;
  DWORD2(v15) = 65793;
  WORD6(v15) = 0;
  BYTE14(v15) = 3;
  v16 = 0;
  v11 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:)(a1, a2, &v15, 0, 1uLL, 0, v5, 0, 0, 0);
  v13 = v15;
  v14 = v16;
  sub_1A2C69EAC(&v13);

  return v11;
}

uint64_t static Activity.request(attributes:content:pushType:isMomentary:)(char *a1, uint64_t a2, uint64_t *a3, char a4)
{
  v6 = a3[1];
  v7 = v6;
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v7 = *a3;
  }

  v20 = v4;
  v9 = a1;
  v10 = a2;

  v8 = sub_1A2CB2C90(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_1A2CB2C90((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[40 * v12];
  *(v13 + 4) = v7;
  *(v13 + 5) = v6;
  *(v13 + 3) = xmmword_1A2D0EBF0;
  v13[64] = 0;
  a2 = v10;
  a1 = v9;
LABEL_8:
  *&v18 = &unk_1F15791C8;
  DWORD2(v18) = 65793;
  WORD6(v18) = 0;
  BYTE14(v18) = 3;
  v19 = 0;
  v14 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:)(a1, a2, &v18, 0, 1uLL, 0, v8, 0, 0, a4 & 1);
  v16 = v18;
  v17 = v19;
  sub_1A2C69EAC(&v16);

  return v14;
}

uint64_t static Activity.request(attributes:content:pushType:style:)(char *a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v6 = a3[1];
  v7 = *a4;
  v8 = v6;
  if (v6)
  {
    if (v6 == 1)
    {
      v9 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v8 = *a3;
  }

  v22 = v4;
  v10 = a1;
  v11 = a2;

  v9 = sub_1A2CB2C90(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v9 + 2);
  v12 = *(v9 + 3);
  if (v13 >= v12 >> 1)
  {
    v9 = sub_1A2CB2C90((v12 > 1), v13 + 1, 1, v9);
  }

  *(v9 + 2) = v13 + 1;
  v14 = &v9[40 * v13];
  *(v14 + 4) = v8;
  *(v14 + 5) = v6;
  *(v14 + 3) = xmmword_1A2D0EBF0;
  v14[64] = 0;
  a2 = v11;
  a1 = v10;
LABEL_8:
  *&v20 = &unk_1F15791C8;
  DWORD2(v20) = 65793;
  WORD6(v20) = 0;
  BYTE14(v20) = 3;
  v21 = 0;
  if (v7)
  {
    v15 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:)(a1, a2, &v20, 0, 1uLL, 0, v9, 0, 0, 1u);
  }

  else
  {
    v15 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:)(a1, a2, &v20, 0, 1uLL, 0, v9, 0, 0, 0);
  }

  v18 = v20;
  v19 = v21;
  if (v5)
  {
    sub_1A2C69EAC(&v18);
  }

  else
  {
    v17 = v15;
    sub_1A2C69EAC(&v18);

    return v17;
  }
}

NSObject *static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:alertConfiguration:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v75 = a8;
  v76 = a7;
  v71 = a6;
  v73 = a5;
  v72 = a4;
  v68 = a2;
  v65 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v58 = &v57 - v17;
  v70 = sub_1A2D07F94();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v74 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v14 + 80);
  v19 = *(v14 + 88);
  v78 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  *&v82 = AssociatedTypeWitness;
  *(&v82 + 1) = AssociatedConformanceWitness;
  v64 = AssociatedConformanceWitness;
  v67 = v23;
  v83 = v23;
  v84 = v24;
  v66 = v24;
  v25 = type metadata accessor for ActivityContent(0, &v82);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v87 = &v57 - v27;
  v28 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ActivityRequest(0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = (&v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = *a3;
  v86 = *(a3 + 2);
  if (*(v85 + 16))
  {
    v63 = a12;
    v59 = a11;
    v61 = a10;
    v62 = a9;
    v35 = *(v28 + 16);
    v60 = v31;
    v35(v31, v65, v20);
    ActivityAttributesType.init<A>(from:)(v81);
    v80[0] = v81[0];
    v80[1] = v81[1];
    (*(v26 + 16))(v87, v68, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E30, &qword_1A2D0EC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A2D0AD20;
    *(inited + 32) = 0;
    v37 = v72;
    v38 = v73;
    *(inited + 40) = v72;
    *(inited + 48) = v38;
    v39 = v71 & 1;
    *(inited + 56) = v71 & 1;
    sub_1A2C66A94(v37, v38, v39);
    v40 = sub_1A2C66AAC(inited);
    swift_setDeallocating();
    sub_1A2C54E38(inited + 32, &qword_1EB0A0E38, &qword_1A2D0EC28);
    v41 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
    v82 = v85;
    v83 = v86;
    v42 = v74;
    (*(v69 + 16))(v74, a13, v70);
    sub_1A2C66F58(&v85, v79);
    v43 = *(v19 + 8);
    v44 = *(v19 + 16);
    v45 = v76;

    v56 = v43;
    v46 = v77;
    ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v60, v80, v87, v40, v41, &v82, v45, v75 & 1, v34, v62 & 1, v61 & 1, v59 & 1, 0, 0, v63, v42, 0, 0, v20, AssociatedTypeWitness, v56, v44, v64, v67, v66);
    v47 = v46;
    if (v46)
    {
      sub_1A2CC6E68(v46);
      swift_willThrow();
    }

    else
    {
      v52 = a14;
      if (qword_1ED709CF0 != -1)
      {
        swift_once();
        v52 = a14;
      }

      v53 = v58;
      sub_1A2C7FF28(v52, v58, type metadata accessor for AlertConfiguration);
      v54 = type metadata accessor for AlertConfiguration(0);
      (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
      v47 = sub_1A2C67380(v34, v53, v20, v19);
      sub_1A2C54E38(v53, &qword_1EB0A04D0, &unk_1A2D15640);
      sub_1A2C69F84(v34, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v48 = sub_1A2D08094();
    __swift_project_value_buffer(v48, qword_1EB09F570);
    v47 = sub_1A2D08074();
    v49 = sub_1A2D08684();
    if (os_log_type_enabled(v47, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1A2C51000, v47, v49, "Cannot specify presentationOptions with no visual destinations", v50, 2u);
      MEMORY[0x1A58E5180](v50, -1, -1);
    }

    sub_1A2CA1590();
    swift_allocError();
    *v51 = xmmword_1A2D0EBF0;
    *(v51 + 16) = 0u;
    *(v51 + 32) = 0u;
    *(v51 + 48) = 0u;
    *(v51 + 64) = 0;
    swift_willThrow();
  }

  return v47;
}

NSObject *sub_1A2CC6908(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v8 = a3[1];
  v9 = *a4;
  v10 = v8;
  if (v8)
  {
    if (v8 == 1)
    {
      v11 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v10 = *a3;
  }

  v20 = a5;
  v21 = a6;
  v26 = v6;
  v12 = a1;
  v13 = a2;

  v11 = sub_1A2CB2C90(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = *(v11 + 2);
  v14 = *(v11 + 3);
  if (v15 >= v14 >> 1)
  {
    v11 = sub_1A2CB2C90((v14 > 1), v15 + 1, 1, v11);
  }

  *(v11 + 2) = v15 + 1;
  v16 = &v11[40 * v15];
  *(v16 + 4) = v10;
  *(v16 + 5) = v8;
  *(v16 + 3) = xmmword_1A2D0EBF0;
  v16[64] = 0;
  a2 = v13;
  a1 = v12;
  a5 = v20;
  a6 = v21;
LABEL_8:
  *&v24 = &unk_1F15791F0;
  DWORD2(v24) = 65793;
  WORD6(v24) = 0;
  BYTE14(v24) = 3;
  v25 = 0;
  if (v9)
  {
    v17 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:alertConfiguration:)(a1, a2, &v24, 0, 1, 0, v11, 0, 0, 1u, 0, 2u, a6, a5);
  }

  else
  {
    v17 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:alertConfiguration:)(a1, a2, &v24, 0, 1, 0, v11, 0, 0, 0, 0, 2u, a6, a5);
  }

  v22 = v24;
  v23 = v25;
  if (v7)
  {
    sub_1A2C69EAC(&v22);
  }

  else
  {
    v19 = v17;
    sub_1A2C69EAC(&v22);

    return v19;
  }
}

uint64_t static Activity.request(attributes:contentState:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v37 = a8;
  v35 = a5;
  v36 = a7;
  v33 = a6;
  v34 = a4;
  v28 = a3;
  v29 = a2;
  v32 = a1;
  v31 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - v11;
  v30 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v26 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v38[0] = AssociatedTypeWitness;
  v38[1] = AssociatedConformanceWitness;
  v38[2] = v18;
  v38[3] = v19;
  v27 = type metadata accessor for ActivityContent(0, v38);
  v20 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v22 = &v26 - v21;
  v39 = *v28;
  v40 = *(v28 + 16);
  (*(v14 + 16))(v16, v29, AssociatedTypeWitness);
  v23 = sub_1A2D07F94();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  ActivityContent.init(state:staleDate:relevanceScore:)(v16, v12, AssociatedTypeWitness, AssociatedConformanceWitness, v18, v19, v22, 0.0);
  v24 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:)(v32, v22, &v39, v34, v35, v33 & 1, v36, v37, v31, 0);
  (*(v20 + 8))(v22, v27);
  return v24;
}

void sub_1A2CC6E68(void *a1)
{
  v23 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
  if (swift_dynamicCast())
  {
    sub_1A2CD149C();
    swift_allocError();
    *v3 = v22;
  }

  else
  {
    v21 = sub_1A2D07EC4();
    v4 = [v21 underlyingErrors];
    v5 = sub_1A2D08554();

    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      while (1)
      {
        if (v7 >= *(v5 + 16))
        {
          __break(1u);
          return;
        }

        v8 = *(v5 + 8 * v7 + 32);
        v9 = v8;
        v10 = sub_1A2D07EC4();
        v11 = [v10 domain];

        v12 = sub_1A2D08444();
        v14 = v13;

        if (v12 == 0xD00000000000002BLL && 0x80000001A2D1A530 == v14)
        {
          break;
        }

        v16 = sub_1A2D08B34();

        if (v16)
        {
          goto LABEL_14;
        }

        ++v7;

        if (v6 == v7)
        {
          goto LABEL_12;
        }
      }

LABEL_14:

      v23 = v8;
      sub_1A2C569A0(0, &qword_1EB0A1170, 0x1E696ABC0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_18;
      }

      v17 = v22;
      sub_1A2CE00C8([v17 code], &v23);
      v18 = v23;
      if (v23 == 12)
      {

        goto LABEL_18;
      }

      sub_1A2CD149C();
      swift_allocError();
      *v20 = v18;
    }

    else
    {
LABEL_12:

LABEL_18:
      v19 = a1;
    }
  }
}

uint64_t static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:protectionClass:)(char *a1, uint64_t a2, __int128 *a3, unint64_t a4, unint64_t a5, int a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v75 = a8;
  v76 = a7;
  LODWORD(v71) = a6;
  v73 = a5;
  v72 = a4;
  v70 = a2;
  v68 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v62 = &v61 - v14;
  v15 = sub_1A2D07F94();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v74 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v11 + 80);
  v17 = *(v11 + 88);
  v78 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  *&v82 = AssociatedTypeWitness;
  *(&v82 + 1) = AssociatedConformanceWitness;
  v67 = AssociatedConformanceWitness;
  v83 = v21;
  v84 = v22;
  v69 = v22;
  v23 = type metadata accessor for ActivityContent(0, &v82);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v87 = &v61 - v25;
  v26 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ActivityRequest(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = (&v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = *a3;
  v86 = *(a3 + 2);
  if (*(v85 + 16))
  {
    v66 = a11;
    v63 = a10;
    v64 = a9;
    v33 = *(v26 + 16);
    v65 = v29;
    v34 = v68;
    v68 = v32;
    v33(v29, v34, v18);
    ActivityAttributesType.init<A>(from:)(v81);
    v80[0] = v81[0];
    v80[1] = v81[1];
    (*(v24 + 16))(v87, v70, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E30, &qword_1A2D0EC20);
    inited = swift_initStackObject();
    v36 = v17;
    v37 = v67;
    v38 = inited;
    *(inited + 16) = xmmword_1A2D0AD20;
    *(inited + 32) = 0;
    v39 = inited + 32;
    v40 = v72;
    v41 = v73;
    *(v38 + 40) = v72;
    *(v38 + 48) = v41;
    v42 = v71 & 1;
    *(v38 + 56) = v71 & 1;
    sub_1A2C66A94(v40, v41, v42);
    v73 = sub_1A2C66AAC(v38);
    swift_setDeallocating();
    sub_1A2C54E38(v39, &qword_1EB0A0E38, &qword_1A2D0EC28);
    v72 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
    v82 = v85;
    v83 = v86;
    sub_1A2C66F58(&v85, v79);
    v71 = v36;
    v43 = *(v36 + 8);
    v44 = *(v36 + 16);
    v45 = v76;

    v46 = v74;
    v47 = v69;
    default argument 13 of ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v18, v48);
    v60 = v21;
    v49 = v68;
    v50 = v77;
    ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v65, v80, v87, v73, v72, &v82, v45, v75 & 1, v68, v64 & 1, v63 & 1, 0, 0, 0, v66, v46, 0, 0, v18, AssociatedTypeWitness, v43, v44, v37, v60, v47);
    if (v50)
    {
      v51 = v78;
      sub_1A2CC6E68(v50);
      swift_willThrow();
    }

    else
    {
      v56 = v71;
      if (qword_1ED709CF0 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for AlertConfiguration(0);
      v58 = v62;
      (*(*(v57 - 8) + 56))(v62, 1, 1, v57);
      v51 = sub_1A2C67380(v49, v58, v18, v56);
      sub_1A2C54E38(v58, &qword_1EB0A04D0, &unk_1A2D15640);
      sub_1A2C69F84(v49, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v52 = sub_1A2D08094();
    __swift_project_value_buffer(v52, qword_1EB09F570);
    v53 = sub_1A2D08074();
    v51 = sub_1A2D08684();
    if (os_log_type_enabled(v53, v51))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1A2C51000, v53, v51, "Cannot specify presentationOptions with no visual destinations", v54, 2u);
      MEMORY[0x1A58E5180](v54, -1, -1);
    }

    sub_1A2CA1590();
    swift_allocError();
    *v55 = xmmword_1A2D0EBF0;
    *(v55 + 16) = 0u;
    *(v55 + 32) = 0u;
    *(v55 + 48) = 0u;
    *(v55 + 64) = 0;
    swift_willThrow();
  }

  return v51;
}

uint64_t static Activity.request(attributes:content:presentationOptions:sceneTargets:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:)(char *a1, unint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v71 = a5;
  v69 = a8;
  v70 = a7;
  v68 = a6;
  v83 = a4;
  v67 = a2;
  v66 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v57 - v13;
  v14 = sub_1A2D07F94();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v65 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v10 + 80);
  v16 = *(v10 + 88);
  v73 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v74 = v16;
  v21 = swift_getAssociatedConformanceWitness();
  *&v78 = AssociatedTypeWitness;
  *(&v78 + 1) = AssociatedConformanceWitness;
  v63 = AssociatedConformanceWitness;
  v64 = v20;
  v79 = v20;
  v80 = v21;
  v22 = v21;
  v23 = type metadata accessor for ActivityContent(0, &v78);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v57 - v25;
  v27 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ActivityRequest(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = (&v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = *a3;
  v82 = *(a3 + 2);
  if (*(v81 + 16))
  {
    v62 = a10;
    v60 = a9;
    v34 = *(v27 + 16);
    v61 = v30;
    v35 = v66;
    v66 = v33;
    v34(v30, v35, v17);
    v36 = v74;
    ActivityAttributesType.init<A>(from:)(v77);
    v76[0] = v77[0];
    v76[1] = v77[1];
    v37 = *(v24 + 16);
    v59 = v26;
    v37(v26, v67, v23);

    v67 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
    v78 = v81;
    v79 = v82;
    sub_1A2C66F58(&v81, v75);
    v39 = *(v36 + 8);
    v38 = *(v36 + 16);
    v40 = v71;

    v41 = v65;
    v42 = v63;
    v43 = v64;
    default argument 13 of ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v17, v44);
    v56 = v43;
    v45 = v66;
    v46 = v72;
    ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v61, v76, v59, v83, v67, &v78, v40, v68 & 1, v66, v70 & 1, v69 & 1, v60 & 1, 0, 0, v62, v41, 0, 0, v17, AssociatedTypeWitness, v39, v38, v42, v56, v22);
    if (v46)
    {
      v47 = v73;
      sub_1A2CC6E68(v46);
      swift_willThrow();
    }

    else
    {
      v52 = v74;
      if (qword_1ED709CF0 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for AlertConfiguration(0);
      v54 = v58;
      (*(*(v53 - 8) + 56))(v58, 1, 1, v53);
      v47 = sub_1A2C67380(v45, v54, v17, v52);
      sub_1A2C54E38(v54, &qword_1EB0A04D0, &unk_1A2D15640);
      sub_1A2C69F84(v45, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v48 = sub_1A2D08094();
    __swift_project_value_buffer(v48, qword_1EB09F570);
    v49 = sub_1A2D08074();
    v47 = sub_1A2D08684();
    if (os_log_type_enabled(v49, v47))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1A2C51000, v49, v47, "Cannot specify presentationOptions with no visual destinations", v50, 2u);
      MEMORY[0x1A58E5180](v50, -1, -1);
    }

    sub_1A2CA1590();
    swift_allocError();
    *v51 = xmmword_1A2D0EBF0;
    *(v51 + 16) = 0u;
    *(v51 + 32) = 0u;
    *(v51 + 48) = 0u;
    *(v51 + 64) = 0;
    swift_willThrow();
  }

  return v47;
}

NSObject *static Activity.request(attributes:content:presentationOptions:sceneTargets:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:alertConfiguration:)(uint64_t a1, unint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v65 = a5;
  v61 = a8;
  v62 = a7;
  v63 = a6;
  v64 = a4;
  v59 = a2;
  v56 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v50 = &v49 - v15;
  v58 = sub_1A2D07F94();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v12 + 80);
  v17 = *(v12 + 88);
  v67 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  *&v71 = AssociatedTypeWitness;
  *(&v71 + 1) = AssociatedConformanceWitness;
  v55 = AssociatedConformanceWitness;
  v54 = v21;
  v72 = v21;
  v73 = v22;
  v53 = v22;
  v23 = type metadata accessor for ActivityContent(0, &v71);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v76 = &v49 - v25;
  v26 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ActivityRequest(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = (&v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = *a3;
  v75 = *(a3 + 2);
  if (*(v74 + 16))
  {
    v52 = a10;
    v51 = a9;
    (*(v26 + 16))(v29, v56, v18);
    ActivityAttributesType.init<A>(from:)(v70);
    v69[0] = v70[0];
    v69[1] = v70[1];
    (*(v24 + 16))(v76, v59, v23);
    v33 = v64;

    v59 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
    v71 = v74;
    v72 = v75;
    v34 = v60;
    (*(v57 + 16))(v60, a11, v58);
    sub_1A2C66F58(&v74, v68);
    v35 = *(v17 + 8);
    v36 = *(v17 + 16);
    v37 = v65;

    v48 = v35;
    v38 = v66;
    ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v29, v69, v76, v33, v59, &v71, v37, v63 & 1, v32, v62 & 1, v61 & 1, v51 & 1, 0, 0, v52, v34, 0, 0, v18, AssociatedTypeWitness, v48, v36, v55, v54, v53);
    v39 = v38;
    if (v38)
    {
      sub_1A2CC6E68(v38);
      swift_willThrow();
    }

    else
    {
      v44 = a12;
      if (qword_1ED709CF0 != -1)
      {
        swift_once();
        v44 = a12;
      }

      v45 = v50;
      sub_1A2C7FF28(v44, v50, type metadata accessor for AlertConfiguration);
      v46 = type metadata accessor for AlertConfiguration(0);
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      v39 = sub_1A2C67380(v32, v45, v18, v17);
      sub_1A2C54E38(v45, &qword_1EB0A04D0, &unk_1A2D15640);
      sub_1A2C69F84(v32, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v40 = sub_1A2D08094();
    __swift_project_value_buffer(v40, qword_1EB09F570);
    v39 = sub_1A2D08074();
    v41 = sub_1A2D08684();
    if (os_log_type_enabled(v39, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1A2C51000, v39, v41, "Cannot specify presentationOptions with no visual destinations", v42, 2u);
      MEMORY[0x1A58E5180](v42, -1, -1);
    }

    sub_1A2CA1590();
    swift_allocError();
    *v43 = xmmword_1A2D0EBF0;
    *(v43 + 16) = 0u;
    *(v43 + 32) = 0u;
    *(v43 + 48) = 0u;
    *(v43 + 64) = 0;
    swift_willThrow();
  }

  return v39;
}

uint64_t static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:)(char *a1, uint64_t a2, __int128 *a3, unint64_t a4, unint64_t a5, int a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12)
{
  v76 = a8;
  v77 = a7;
  LODWORD(v72) = a6;
  v74 = a5;
  v73 = a4;
  v71 = a2;
  v68 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v62 = &v62 - v15;
  v16 = sub_1A2D07F94();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v75 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v12 + 80);
  v18 = *(v12 + 88);
  v79 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  *&v83 = AssociatedTypeWitness;
  *(&v83 + 1) = AssociatedConformanceWitness;
  v69 = AssociatedConformanceWitness;
  v84 = v22;
  v85 = v23;
  v70 = v23;
  v24 = type metadata accessor for ActivityContent(0, &v83);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v88 = &v62 - v26;
  v27 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ActivityRequest(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = (&v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = *a3;
  v87 = *(a3 + 2);
  if (*(v86 + 16))
  {
    v67 = a12;
    v63 = a11;
    v64 = a10;
    v65 = a9;
    v34 = *(v27 + 16);
    v66 = v30;
    v35 = v68;
    v68 = v33;
    v34(v30, v35, v19);
    ActivityAttributesType.init<A>(from:)(v82);
    v81[0] = v82[0];
    v81[1] = v82[1];
    (*(v25 + 16))(v88, v71, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E30, &qword_1A2D0EC20);
    inited = swift_initStackObject();
    v37 = v18;
    v38 = v69;
    v39 = inited;
    *(inited + 16) = xmmword_1A2D0AD20;
    *(inited + 32) = 0;
    v40 = inited + 32;
    v41 = v73;
    v42 = v74;
    *(v39 + 40) = v73;
    *(v39 + 48) = v42;
    v43 = v72 & 1;
    *(v39 + 56) = v72 & 1;
    sub_1A2C66A94(v41, v42, v43);
    v74 = sub_1A2C66AAC(v39);
    swift_setDeallocating();
    sub_1A2C54E38(v40, &qword_1EB0A0E38, &qword_1A2D0EC28);
    v73 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
    v83 = v86;
    v84 = v87;
    sub_1A2C66F58(&v86, v80);
    v72 = v37;
    v44 = *(v37 + 8);
    v45 = *(v37 + 16);
    v46 = v77;

    v47 = v75;
    v48 = v70;
    default argument 13 of ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v19, v49);
    v61 = v22;
    v50 = v68;
    v51 = v78;
    ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v66, v81, v88, v74, v73, &v83, v46, v76 & 1, v68, v65 & 1, v64 & 1, v63 & 1, 0, 0, v67, v47, 0, 0, v19, AssociatedTypeWitness, v44, v45, v38, v61, v48);
    if (v51)
    {
      v52 = v79;
      sub_1A2CC6E68(v51);
      swift_willThrow();
    }

    else
    {
      v57 = v72;
      if (qword_1ED709CF0 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for AlertConfiguration(0);
      v59 = v62;
      (*(*(v58 - 8) + 56))(v62, 1, 1, v58);
      v52 = sub_1A2C67380(v50, v59, v19, v57);
      sub_1A2C54E38(v59, &qword_1EB0A04D0, &unk_1A2D15640);
      sub_1A2C69F84(v50, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v53 = sub_1A2D08094();
    __swift_project_value_buffer(v53, qword_1EB09F570);
    v54 = sub_1A2D08074();
    v52 = sub_1A2D08684();
    if (os_log_type_enabled(v54, v52))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1A2C51000, v54, v52, "Cannot specify presentationOptions with no visual destinations", v55, 2u);
      MEMORY[0x1A58E5180](v55, -1, -1);
    }

    sub_1A2CA1590();
    swift_allocError();
    *v56 = xmmword_1A2D0EBF0;
    *(v56 + 16) = 0u;
    *(v56 + 32) = 0u;
    *(v56 + 48) = 0u;
    *(v56 + 64) = 0;
    swift_willThrow();
  }

  return v52;
}

uint64_t sub_1A2CC8ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Activity(0, a2, a3, a4);

  return sub_1A2D08044();
}

uint64_t Activity.id.getter()
{
  v0 = sub_1A2CCF17C();

  return v0;
}

uint64_t sub_1A2CC8F5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E40, &unk_1A2D0EC30);
  sub_1A2C56A78(&unk_1EB09EEA0, &qword_1EB0A0E40, &unk_1A2D0EC30, MEMORY[0x1E695BFB0]);
  sub_1A2D081F4();
  return sub_1A2D08044();
}

uint64_t sub_1A2CC9008()
{

  sub_1A2D08184();
}

uint64_t sub_1A2CC9050()
{
  swift_getAssociatedTypeWitness();
  sub_1A2D08194();
  swift_getWitnessTable();
  sub_1A2D081F4();
  swift_getAssociatedTypeWitness();
  return sub_1A2D08044();
}

uint64_t sub_1A2CC9164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return sub_1A2D08044();
}

uint64_t sub_1A2CC91C8()
{
  v1 = *v0;
  v6[4] = v0[6];
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v6[0] = swift_getAssociatedTypeWitness();
  v6[1] = swift_getAssociatedConformanceWitness();
  v6[2] = swift_getAssociatedConformanceWitness();
  v6[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for ActivityContent(255, v6);
  sub_1A2D08194();
  swift_getWitnessTable();
  v4 = sub_1A2D081F4();
  return sub_1A2CC9330(v4, v3, v2);
}

uint64_t sub_1A2CC9330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = swift_getAssociatedTypeWitness();
  v4[1] = swift_getAssociatedConformanceWitness();
  v4[2] = swift_getAssociatedConformanceWitness();
  v4[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for ActivityContent(0, v4);
  return sub_1A2D08044();
}

uint64_t sub_1A2CC9424()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = sub_1A2CA7A1C(v1, v2);

  return v3;
}

uint64_t sub_1A2CC9498()
{
  v1 = *(v0 + *(*v0 + 144));
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(*(*(v1 + 80) + 16) + 16);

  os_unfair_lock_lock(v4);
  sub_1A2CA7BCC(v3, v2);
  os_unfair_lock_unlock(v4);

  return sub_1A2D08044();
}

uint64_t static Activity.pushToStartTokenUpdates.getter()
{
  if (qword_1ED709CF0 != -1)
  {
    swift_once();
  }

  sub_1A2CB06C0();

  return sub_1A2D08044();
}

uint64_t static Activity.pushToStartToken.getter()
{
  if (qword_1ED709CF0 != -1)
  {
    swift_once();
  }

  v0 = *(off_1ED709CF8 + 10);
  v1 = *(v0[2] + 16);

  os_unfair_lock_lock(v1);
  v2 = v0[10];
  sub_1A2CB0824(v2, v0[11]);
  os_unfair_lock_unlock(v1);

  return v2;
}

uint64_t sub_1A2CC9750(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v2[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[10] = AssociatedTypeWitness;
  v2[11] = *(AssociatedTypeWitness - 8);
  v2[12] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2[13] = AssociatedConformanceWitness;
  v5 = swift_getAssociatedConformanceWitness();
  v2[14] = v5;
  v6 = swift_getAssociatedConformanceWitness();
  v2[15] = v6;
  v2[2] = AssociatedTypeWitness;
  v2[3] = AssociatedConformanceWitness;
  v2[4] = v5;
  v2[5] = v6;
  v7 = type metadata accessor for ActivityContent(0, (v2 + 2));
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2CC99B4, 0, 0);
}

uint64_t sub_1A2CC99B4()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v8 = v0[8];
  v7 = v0[9];
  (*(v0[11] + 16))(v5, v0[6], v6);
  v9 = sub_1A2D07F94();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  ActivityContent.init(state:staleDate:relevanceScore:)(v5, v7, v6, v4, v3, v2, v1, 0.0);
  v10 = type metadata accessor for AlertConfiguration(0);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_1A2CC9B38;
  v12 = v0[18];
  v13 = v0[8];

  return sub_1A2C83E7C(v12, v13);
}

uint64_t sub_1A2CC9B38()
{
  v1 = *(*v0 + 64);

  sub_1A2C54E38(v1, &qword_1EB0A04D0, &unk_1A2D15640);

  return MEMORY[0x1EEE6DFA0](sub_1A2CC9C60, 0, 0);
}

uint64_t sub_1A2CC9C60()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A2CC9D04(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2CC9DA0, 0, 0);
}

uint64_t sub_1A2CC9DA0()
{
  v1 = v0[4];
  v2 = type metadata accessor for AlertConfiguration(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1A2CC9E7C;
  v4 = v0[4];
  v5 = v0[2];

  return sub_1A2C83E7C(v5, v4);
}

uint64_t sub_1A2CC9E7C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_1A2C54E38(v1, &qword_1EB0A04D0, &unk_1A2D15640);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A2CC9FA4(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v3[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v3[11] = *(AssociatedTypeWitness - 8);
  v3[12] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3[13] = AssociatedConformanceWitness;
  v6 = swift_getAssociatedConformanceWitness();
  v3[14] = v6;
  v7 = swift_getAssociatedConformanceWitness();
  v3[15] = v7;
  v3[2] = AssociatedTypeWitness;
  v3[3] = AssociatedConformanceWitness;
  v3[4] = v6;
  v3[5] = v7;
  v8 = type metadata accessor for ActivityContent(0, (v3 + 2));
  v3[16] = v8;
  v3[17] = *(v8 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2CCA1D4, 0, 0);
}

uint64_t sub_1A2CCA1D4()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[9];
  (*(v0[11] + 16))(v5, v0[6], v6);
  v8 = sub_1A2D07F94();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  ActivityContent.init(state:staleDate:relevanceScore:)(v5, v7, v6, v4, v3, v2, v1, 0.0);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_1A2CCA318;
  v10 = v0[18];
  v11 = v0[7];

  return sub_1A2C83E7C(v10, v11);
}

uint64_t sub_1A2CCA318()
{

  return MEMORY[0x1EEE6DFA0](sub_1A2CCA414, 0, 0);
}

uint64_t sub_1A2CCA414()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A2CCA4B0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v3[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v5 = sub_1A2D087E4();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = *(AssociatedTypeWitness - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3[17] = AssociatedConformanceWitness;
  v7 = swift_getAssociatedConformanceWitness();
  v3[18] = v7;
  v8 = swift_getAssociatedConformanceWitness();
  v3[19] = v8;
  v3[2] = AssociatedTypeWitness;
  v3[3] = AssociatedConformanceWitness;
  v3[4] = v7;
  v3[5] = v8;
  v3[20] = type metadata accessor for ActivityContent(255, (v3 + 2));
  v9 = sub_1A2D087E4();
  v3[21] = v9;
  v3[22] = *(v9 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2CCA75C, 0, 0);
}

uint64_t sub_1A2CCA75C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[6];
  v7 = *(*(v0[20] - 8) + 56);
  v7(v0[23], 1, 1);
  (*(v4 + 16))(v1, v6, v3);
  if ((*(v2 + 48))(v1, 1, v5) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
  }

  else
  {
    v8 = v0[23];
    v24 = v7;
    v25 = v0[20];
    v22 = v0[18];
    v23 = v0[19];
    v9 = v0[16];
    v21 = v0[17];
    v10 = v0[14];
    v11 = v0[15];
    v12 = v0[13];
    v13 = v0[9];
    v14 = v0[10];
    (*(v0[22] + 8))(v8, v0[21]);
    v15 = *(v10 + 32);
    v15(v9, v12, v14);
    v15(v11, v9, v14);
    v16 = sub_1A2D07F94();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    ActivityContent.init(state:staleDate:relevanceScore:)(v11, v13, v14, v21, v22, v23, v8, 0.0);
    v24(v8, 0, 1, v25);
  }

  v17 = swift_task_alloc();
  v0[24] = v17;
  *v17 = v0;
  v17[1] = sub_1A2CCA9A4;
  v18 = v0[23];
  v19 = v0[7];

  return sub_1A2CCAB58(v18, v19);
}

uint64_t sub_1A2CCA9A4()
{

  return MEMORY[0x1EEE6DFA0](sub_1A2CCAAA0, 0, 0);
}

uint64_t sub_1A2CCAAA0()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A2CCAB58(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A2D07F94();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2CCAC1C, 0, 0);
}

uint64_t sub_1A2CCAC1C(uint64_t a1)
{
  _s11ActivityKit0A7RequestV14attributesType0D4Data20initialOpaqueContent12sceneTargets010alertSceneK019presentationOptions21contentSourceRequests11isEphemeral0S9Unbounded0S9Momentary0S9Important10identifier15protectionClass9startDate21assetProviderBundleIdAcA0a10AttributesE0V_10Foundation0F0VAA0haI0VSDyAA0a12PresentationO0V0A23PresentationDestinationOAA0M6TargetO0C0OGA6_A_SayAA0aiQ0OA4_OGS4bSSSgAA0a10ProtectionZ0OSgAU4DateVA11_tcfcfA12__0();
  v2 = swift_task_alloc();
  v1[8] = v2;
  *v2 = v1;
  v2[1] = sub_1A2C8B248;
  v3 = v1[7];
  v4 = v1[3];
  v5 = v1[2];

  return sub_1A2CCACC0(v5, v4, v3);
}

uint64_t sub_1A2CCACC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A2CCACE4, 0, 0);
}

uint64_t sub_1A2CCACE4()
{
  sub_1A2C8F394(v0[2], v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1A2CCAD48(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v30 - v4;
  v39 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1A2D087E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v30 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v40[0] = AssociatedTypeWitness;
  v40[1] = AssociatedConformanceWitness;
  v33 = v16;
  v34 = AssociatedConformanceWitness;
  v40[2] = v16;
  v40[3] = v17;
  v32 = v17;
  v18 = type metadata accessor for ActivityContent(255, v40);
  v19 = sub_1A2D087E4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v30 - v22;
  v30 = *(*(v18 - 8) + 56);
  v30(&v30 - v22, 1, 1, v18, v21);
  (*(v7 + 16))(v9, v37, v6);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v20 + 8))(v23, v19);
    v24 = *(v10 + 32);
    v25 = v31;
    v24(v31, v9, AssociatedTypeWitness);
    v26 = v35;
    v24(v35, v25, AssociatedTypeWitness);
    v27 = sub_1A2D07F94();
    v28 = v36;
    (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
    ActivityContent.init(state:staleDate:relevanceScore:)(v26, v28, AssociatedTypeWitness, v34, v33, v32, v23, 0.0);
    (v30)(v23, 0, 1, v18);
  }

  sub_1A2C8F2B4(v23, v38);
  return (*(v20 + 8))(v23, v19);
}

uint64_t sub_1A2CCB1D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2CCB274, 0, 0);
}

uint64_t sub_1A2CCB274()
{
  v1 = v0[4];
  v2 = type metadata accessor for ActivityEndingOptions(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1A2CCB350;
  v4 = v0[4];
  v5 = v0[2];

  return sub_1A2CCB478(v5, v4);
}

uint64_t sub_1A2CCB350()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_1A2C54E38(v1, &unk_1EB0A0AC0, &qword_1A2D0A810);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A2CCB478(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A90, &unk_1A2D0D260);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for ActivityUIDismissalPolicy(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2CCB5AC, 0, 0);
}

uint64_t sub_1A2CCB5AC()
{
  v1 = v0[5];
  sub_1A2C6BD18(v0[3], v1, &unk_1EB0A0AC0, &qword_1A2D0A810);
  v2 = type metadata accessor for ActivityEndingOptions(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[6];
    sub_1A2C54E38(v0[5], &unk_1EB0A0AC0, &qword_1A2D0A810);
    (*(v4 + 56))(v5, 1, 1, v3);
    if (qword_1EB09F340 != -1)
    {
      swift_once();
    }

    v7 = v0[8];
    v6 = v0[9];
    v9 = v0[6];
    v8 = v0[7];
    v10 = __swift_project_value_buffer(v8, qword_1EB09F348);
    sub_1A2C7FF28(v10, v6, type metadata accessor for ActivityUIDismissalPolicy);
    if ((*(v7 + 48))(v9, 1, v8) != 1)
    {
      sub_1A2C54E38(v0[6], &unk_1EB0A0A90, &unk_1A2D0D260);
    }
  }

  else
  {
    v12 = v0[8];
    v11 = v0[9];
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];
    sub_1A2C7FF28(v15, v14, type metadata accessor for ActivityUIDismissalPolicy);
    sub_1A2C69F84(v15, type metadata accessor for ActivityEndingOptions);
    (*(v12 + 56))(v14, 0, 1, v13);
    sub_1A2C92B5C(v14, v11, type metadata accessor for ActivityUIDismissalPolicy);
  }

  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = sub_1A2CCB824;
  v17 = v0[9];
  v18 = v0[2];

  return sub_1A2CCA4B0(v18, v17);
}

uint64_t sub_1A2CCB824()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  sub_1A2C69F84(v1, type metadata accessor for ActivityUIDismissalPolicy);

  v2 = *(v4 + 8);

  return v2();
}

double sub_1A2CCB990@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A2CCF17C();
  a1[1] = v2;

  return result;
}

uint64_t sub_1A2CCB9D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A2CCBAD4, 0, 0);
}

uint64_t sub_1A2CCBAEC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1A2CCBC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1A2CD14F8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t Activity.ActivityStateUpdates.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E48, &qword_1A2D0EC98);
  result = sub_1A2D08024();
  *a1 = result;
  return result;
}

uint64_t Activity.ActivityStateUpdates.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1A2CCBD48, 0, 0);
}

uint64_t sub_1A2CCBD48()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 16);
  v3[2] = v4;
  v5 = *(v1 + 24);
  v3[3] = v5;
  v3[4] = v2;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E50, &qword_1A2D0ECB8);
  *v7 = v0;
  v7[1] = sub_1A2CCBE7C;
  v9 = v0[2];

  return MEMORY[0x1EEE6DE18](v9, &unk_1A2D0ECB0, v3, sub_1A2CCF238, v6, 0, 0, v8);
}

void sub_1A2CCBE7C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t sub_1A2CCBFB8(uint64_t a1)
{
  v5 = (*MEMORY[0x1E69CA958] + MEMORY[0x1E69CA958]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A2CCC06C;

  return v5(a1);
}

uint64_t sub_1A2CCC06C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A2CCC164(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A2CD151C;

  return Activity.ActivityStateUpdates.Iterator.next()(a1, a2);
}

uint64_t sub_1A2CCC20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1A2CCC2D8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_1A2CCC2D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Activity.ContentStateUpdates.makeAsyncIterator()@<X0>(uint64_t *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_1A2D08054();
  result = sub_1A2D08024();
  *a2 = result;
  return result;
}

uint64_t Activity.ContentStateUpdates.Iterator.next()(uint64_t a1)
{
  v5 = (*MEMORY[0x1E69CA958] + MEMORY[0x1E69CA958]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A2C8ED44;

  return v5(a1);
}

uint64_t sub_1A2CCC4F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A2CD151C;

  return Activity.ContentStateUpdates.Iterator.next()(a1);
}

uint64_t Activity.ContentUpdates.makeAsyncIterator()@<X0>(uint64_t *a2@<X8>)
{
  v4[0] = swift_getAssociatedTypeWitness();
  v4[1] = swift_getAssociatedConformanceWitness();
  v4[2] = swift_getAssociatedConformanceWitness();
  v4[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for ActivityContent(255, v4);
  sub_1A2D08054();
  result = sub_1A2D08024();
  *a2 = result;
  return result;
}

uint64_t Activity.ContentUpdates.Iterator.next()(uint64_t a1)
{
  v5 = (*MEMORY[0x1E69CA958] + MEMORY[0x1E69CA958]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A2C8ED48;

  return v5(a1);
}

uint64_t sub_1A2CCC744(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A2CD151C;

  return Activity.ContentUpdates.Iterator.next()(a1);
}

uint64_t sub_1A2CCC7F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t Activity.PushTokenUpdates.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0A0E58, &qword_1A2D0ECD0);
  result = sub_1A2D08024();
  *a1 = result;
  return result;
}

uint64_t Activity.PushTokenUpdates.Iterator.next()(uint64_t a1)
{
  v3 = *v1;
  v2[5] = a1;
  v2[6] = v3;
  v6 = (*MEMORY[0x1E69CA958] + MEMORY[0x1E69CA958]);
  v4 = swift_task_alloc();
  v2[7] = v4;
  *v4 = v2;
  v4[1] = sub_1A2CCC944;

  return v6(v2 + 2);
}

uint64_t sub_1A2CCC944()
{

  return MEMORY[0x1EEE6DFA0](sub_1A2CCCA40, 0, 0);
}

void sub_1A2CCCA40()
{
  v25 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v0[8] = v1;
  v0[9] = v2;
  if (v2 >> 60 != 15)
  {
    v3 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v3 != 2)
      {
        goto LABEL_21;
      }

      v5 = *(v1 + 16);
      v4 = *(v1 + 24);
      v6 = v4 - v5;
      if (!__OFSUB__(v4, v5))
      {
LABEL_12:
        sub_1A2C5E63C(v1, v2);
        if (v6 >= 1)
        {
LABEL_13:
          sub_1A2C5DE40(v1, v2);
          if (qword_1EB09F5F8 != -1)
          {
            swift_once();
          }

          v7 = sub_1A2D08094();
          __swift_project_value_buffer(v7, qword_1EB09F570);
          sub_1A2C5E63C(v1, v2);
          v8 = sub_1A2D08074();
          v9 = sub_1A2D086A4();
          sub_1A2C5DE40(v1, v2);
          if (os_log_type_enabled(v8, v9))
          {
            v10 = swift_slowAlloc();
            v11 = swift_slowAlloc();
            v24 = v11;
            *v10 = 136446210;
            sub_1A2C5E63C(v1, v2);
            v12 = sub_1A2D07F14();
            v14 = v13;
            sub_1A2C5DE40(v1, v2);
            v15 = sub_1A2C55558(v12, v14, &v24);

            *(v10 + 4) = v15;
            _os_log_impl(&dword_1A2C51000, v8, v9, "Emitting push token %{public}s", v10, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v11);
            MEMORY[0x1A58E5180](v11, -1, -1);
            MEMORY[0x1A58E5180](v10, -1, -1);
          }

          goto LABEL_18;
        }

LABEL_21:
        if (qword_1EB09F5F8 != -1)
        {
          swift_once();
        }

        v17 = sub_1A2D08094();
        __swift_project_value_buffer(v17, qword_1EB09F570);
        v18 = sub_1A2D08074();
        v19 = sub_1A2D086A4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_1A2C51000, v18, v19, "Push token is not available; waiting for next update", v20, 2u);
          MEMORY[0x1A58E5180](v20, -1, -1);
        }

        v21 = v0[6];

        v0[4] = v21;
        v22 = swift_task_alloc();
        v0[10] = v22;
        *v22 = v0;
        v22[1] = sub_1A2CCCDC8;
        v23 = v0[5];

        Activity.PushTokenUpdates.Iterator.next()(v23);
        return;
      }

      __break(1u);
    }

    else if (!v3)
    {
      if (!BYTE6(v2))
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    if (__OFSUB__(HIDWORD(v1), v1))
    {
      __break(1u);
      return;
    }

    v6 = HIDWORD(v1) - v1;
    goto LABEL_12;
  }

LABEL_18:
  v16 = v0[1];

  v16(v1, v2);
}

uint64_t sub_1A2CCCDC8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A2CCCEC8, 0, 0);
}

uint64_t sub_1A2CCCEC8()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_1A2C5DE40(v1, v2);
  sub_1A2C5DE40(v1, v2);
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_1A2CCCF40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A2CCCFD8;

  return Activity.PushTokenUpdates.Iterator.next()(a2);
}

uint64_t sub_1A2CCCFD8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  v5[1] = a2;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1A2CCD110(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t Activity.Request.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v7[0] = swift_getAssociatedTypeWitness();
  v7[1] = swift_getAssociatedConformanceWitness();
  v7[2] = swift_getAssociatedConformanceWitness();
  v7[3] = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ActivityContent(0, v7);
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t Activity.Request.content.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v7[0] = swift_getAssociatedTypeWitness();
  v7[1] = swift_getAssociatedConformanceWitness();
  v7[2] = swift_getAssociatedConformanceWitness();
  v7[3] = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ActivityContent(0, v7);
  return (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
}

uint64_t Activity.Request.sceneTargets.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
  return result;
}

uint64_t Activity.Request.alertSceneTargets.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);

  *(v2 + v4) = a1;
  return result;
}

uint64_t Activity.Request.presentationOptions.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 48));
  v7 = *v3;
  v4 = *(v3 + 2);
  v8 = v4;
  *a2 = v7;
  *(a2 + 16) = v4;
  return sub_1A2C66F58(&v7, v6);
}

__n128 Activity.Request.presentationOptions.setter(__n128 *a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 48));
  v6 = *v4;
  v7 = v4[1].n128_u64[0];
  sub_1A2C69EAC(&v6);
  result = *a1;
  *v4 = *a1;
  v4[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

uint64_t Activity.Request.contentSourceRequests.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);

  *(v2 + v4) = a1;
  return result;
}

uint64_t Activity.Request.startDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v5 = sub_1A2D07F94();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Activity.Request.startDate.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 76);
  v5 = sub_1A2D07F94();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Activity.Request.init(attributes:content:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v35 = *a5;
  v36 = *(a5 + 2);
  v17 = type metadata accessor for Activity.Request(0, a14, a15, a4);
  v27 = v17[18];
  v18 = v17[20];
  v19 = type metadata accessor for AlertConfiguration(0);
  v30 = *(*(v19 - 8) + 56);
  v30(a9 + v18, 1, 1, v19);
  (*(*(a14 - 8) + 32))(a9, a1, a14);
  v25 = v17[9];
  v34[0] = swift_getAssociatedTypeWitness();
  v34[1] = swift_getAssociatedConformanceWitness();
  v34[2] = swift_getAssociatedConformanceWitness();
  v34[3] = swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for ActivityContent(0, v34);
  (*(*(v20 - 8) + 32))(a9 + v25, a2, v20);
  *(a9 + v17[10]) = a3;
  *(a9 + v17[11]) = a4;
  v21 = a9 + v17[12];
  *v21 = v35;
  *(v21 + 16) = v36;
  *(a9 + v17[13]) = a6;
  *(a9 + v17[14]) = a7;
  *(a9 + v17[15]) = a8;
  *(a9 + v17[16]) = a10;
  *(a9 + v17[17]) = a11;
  *(a9 + v27) = a12;
  v22 = v17[19];
  v23 = sub_1A2D07F94();
  (*(*(v23 - 8) + 32))(a9 + v22, a13, v23);
  sub_1A2C54E38(a9 + v18, &qword_1EB0A04D0, &unk_1A2D15640);
  return (v30)(a9 + v18, 1, 1, v19);
}

uint64_t Activity.Request.init(attributes:content:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:alertConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v36 = *a5;
  v37 = *(a5 + 2);
  v18 = type metadata accessor for Activity.Request(0, a15, a16, a4);
  v27 = v18[18];
  v19 = v18[20];
  v34 = type metadata accessor for AlertConfiguration(0);
  v33 = *(*(v34 - 8) + 56);
  v33(a9 + v19, 1, 1, v34);
  (*(*(a15 - 8) + 32))(a9, a1, a15);
  v20 = v18[9];
  v35[0] = swift_getAssociatedTypeWitness();
  v35[1] = swift_getAssociatedConformanceWitness();
  v35[2] = swift_getAssociatedConformanceWitness();
  v35[3] = swift_getAssociatedConformanceWitness();
  v21 = type metadata accessor for ActivityContent(0, v35);
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v18[10]) = a3;
  *(a9 + v18[11]) = a4;
  v22 = a9 + v18[12];
  *v22 = v36;
  *(v22 + 16) = v37;
  *(a9 + v18[13]) = a6;
  *(a9 + v18[14]) = a7;
  *(a9 + v18[15]) = a8;
  *(a9 + v18[16]) = a10;
  *(a9 + v18[17]) = a11;
  *(a9 + v27) = a12;
  v23 = v18[19];
  v24 = sub_1A2D07F94();
  (*(*(v24 - 8) + 32))(a9 + v23, a13, v24);
  sub_1A2C54E38(a9 + v19, &qword_1EB0A04D0, &unk_1A2D15640);
  sub_1A2C92B5C(a14, a9 + v19, type metadata accessor for AlertConfiguration);
  return (v33)(a9 + v19, 0, 1, v34);
}

uint64_t static Activity.request(request:)(uint64_t a1)
{
  v3 = sub_1A2D07F94();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 80);
  v5 = *(v1 + 88);
  v61 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *&v67 = AssociatedTypeWitness;
  *(&v67 + 1) = AssociatedConformanceWitness;
  v56 = AssociatedConformanceWitness;
  v55 = v9;
  v68 = v9;
  v69 = v10;
  v54 = v10;
  v52 = type metadata accessor for ActivityContent(0, &v67);
  v11 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v70 = &v45 - v12;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ActivityRequest(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v53 = (&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Activity.Request(0, v6, v5, v19);
  v21 = (a1 + *(v20 + 48));
  if (*(*v21 + 16))
  {
    v22 = v20;
    v23 = *(v13 + 16);
    v51 = v16;
    v23(v16, a1, v6);
    ActivityAttributesType.init<A>(from:)(v66);
    v65[0] = v66[0];
    v65[1] = v66[1];
    (*(v11 + 16))(v70, a1 + v22[9], v52);
    v24 = v22[11];
    v46 = *(a1 + v22[10]);
    v25 = *(a1 + v24);
    v67 = *v21;
    v68 = v21[2];
    v63 = *v21;
    v26 = v21[2];
    v27 = v22[14];
    v45 = *(a1 + v22[13]);
    LODWORD(v52) = *(a1 + v27);
    v28 = v22[16];
    v50 = *(a1 + v22[15]);
    v49 = *(a1 + v28);
    v29 = v22[18];
    v48 = *(a1 + v22[17]);
    v64 = v26;
    v47 = *(a1 + v29);
    v30 = v59;
    (*(v57 + 16))(v59, a1 + v22[19], v58);

    sub_1A2C66F58(&v67, v62);
    v31 = *(v5 + 8);
    v32 = *(v5 + 16);
    v33 = v45;

    v44 = v31;
    v43 = v30;
    v34 = v53;
    v35 = v60;
    ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v51, v65, v70, v46, v25, &v63, v33, v52, v53, v50, v49, v48, 0, 0, v47, v43, 0, 0, v6, AssociatedTypeWitness, v44, v32, v56, v55, v54);
    if (v35)
    {
      v36 = v61;
      sub_1A2CC6E68(v35);
      swift_willThrow();
    }

    else
    {
      v41 = v34;
      if (qword_1ED709CF0 != -1)
      {
        swift_once();
      }

      v36 = sub_1A2C67380(v34, a1 + v22[20], v6, v5);
      sub_1A2C69F84(v41, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v37 = sub_1A2D08094();
    __swift_project_value_buffer(v37, qword_1EB09F570);
    v38 = sub_1A2D08074();
    v36 = sub_1A2D08684();
    if (os_log_type_enabled(v38, v36))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1A2C51000, v38, v36, "Cannot specify presentationOptions with no visual destinations", v39, 2u);
      MEMORY[0x1A58E5180](v39, -1, -1);
    }

    sub_1A2CA1590();
    swift_allocError();
    *v40 = xmmword_1A2D0EBF0;
    *(v40 + 16) = 0u;
    *(v40 + 32) = 0u;
    *(v40 + 48) = 0u;
    *(v40 + 64) = 0;
    swift_willThrow();
  }

  return v36;
}

void Activity.mockPush(forProcessIdentifier:payload:environmentName:pushPriority:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void *), uint64_t a8)
{
  v9 = v8;
  v18 = sub_1A2CC9424();
  if (v19 >> 60 == 15)
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v20 = sub_1A2D08094();
    __swift_project_value_buffer(v20, qword_1EB09F570);

    v21 = sub_1A2D08074();
    v22 = sub_1A2D08684();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_1A2C55558(0xD000000000000024, 0x80000001A2D19C30, aBlock);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1A2C55558(*(v9 + 16), *(v9 + 24), aBlock);
      _os_log_impl(&dword_1A2C51000, v21, v22, "%s %s. Ensure that you requested this activity with pushType of PushType.token", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58E5180](v24, -1, -1);
      MEMORY[0x1A58E5180](v23, -1, -1);
    }

    sub_1A2CAE3BC();
    v25 = swift_allocError();
    *v26 = 0;
    a7(0, v25);
  }

  else
  {
    v27 = a2;
    v35 = a7;
    v36 = a8;
    v28 = v19;
    v29 = v18;
    if (qword_1ED709CF0 != -1)
    {
      swift_once();
    }

    v30 = off_1ED709CF8;
    queue = *(off_1ED709CF8 + 12);
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v29;
    v31[4] = v28;
    v31[5] = 0;
    v31[6] = 0;
    v31[7] = a1;
    v31[8] = v27;
    v31[9] = a4;
    v31[10] = a5;
    v31[11] = a3;
    v31[12] = a6;
    v31[13] = v35;
    v31[14] = v36;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1A2CCF2E4;
    *(v32 + 24) = v31;
    aBlock[4] = sub_1A2C5C998;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A2C56C44;
    aBlock[3] = &block_descriptor_32_1;
    v33 = _Block_copy(aBlock);
    sub_1A2CB0824(v29, v28);
    sub_1A2CB0824(v29, v28);

    dispatch_sync(queue, v33);
    sub_1A2C5DE40(v29, v28);
    sub_1A2C5DE40(v29, v28);
    _Block_release(v33);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
    }
  }
}

uint64_t Activity.mockPushChannel(forProcessIdentifier:channelID:payload:environmentName:pushPriority:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (qword_1ED709CF0 != -1)
  {
    swift_once();
  }

  v16 = off_1ED709CF8;
  queue = *(off_1ED709CF8 + 12);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = xmmword_1A2D0AC30;
  *(v17 + 40) = a3;
  *(v17 + 48) = a4;
  *(v17 + 56) = a1;
  *(v17 + 64) = a2;
  *(v17 + 72) = a6;
  *(v17 + 80) = a7;
  *(v17 + 88) = a5;
  *(v17 + 96) = a8;
  *(v17 + 104) = a9;
  *(v17 + 112) = a10;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1A2CD1518;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1A2C5C998;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_43;
  v19 = _Block_copy(aBlock);

  dispatch_sync(queue, v19);
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  return result;
}

void static Activity.mockPushStart(forProcessIdentifier:payload:environmentName:pushPriority:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void *), uint64_t a8)
{
  started = static Activity.pushToStartToken.getter();
  if (v17 >> 60 == 15)
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v18 = sub_1A2D08094();
    __swift_project_value_buffer(v18, qword_1EB09F570);
    v19 = sub_1A2D08074();
    v20 = sub_1A2D08684();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1A2C55558(0xD000000000000024, 0x80000001A2D19C30, aBlock);
      _os_log_impl(&dword_1A2C51000, v19, v20, "%s. Ensure that you requested this activity from an activity that supports push-to-start", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1A58E5180](v22, -1, -1);
      MEMORY[0x1A58E5180](v21, -1, -1);
    }

    sub_1A2CAE3BC();
    v23 = swift_allocError();
    *v24 = 0;
    a7(0, v23);
  }

  else
  {
    v32 = a7;
    v33 = a8;
    v25 = v17;
    v26 = started;
    if (qword_1ED709CF0 != -1)
    {
      swift_once();
    }

    v27 = off_1ED709CF8;
    queue = *(off_1ED709CF8 + 12);
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v26;
    v28[4] = v25;
    v28[5] = 0;
    v28[6] = 0;
    v28[7] = a1;
    v28[8] = a2;
    v28[9] = a4;
    v28[10] = a5;
    v28[11] = a3;
    v28[12] = a6;
    v28[13] = v32;
    v28[14] = v33;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1A2CD1518;
    *(v29 + 24) = v28;
    aBlock[4] = sub_1A2C5C998;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A2C56C44;
    aBlock[3] = &block_descriptor_54;
    v30 = _Block_copy(aBlock);
    sub_1A2CB0824(v26, v25);
    sub_1A2CB0824(v26, v25);

    dispatch_sync(queue, v30);
    sub_1A2C5DE40(v26, v25);
    sub_1A2C5DE40(v26, v25);
    _Block_release(v30);
    LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

    if (v30)
    {
      __break(1u);
    }
  }
}

_BYTE **sub_1A2CCEF64(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1A2CCEF9C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1A2C55558(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1A2CCEFF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1168, &qword_1A2D0F3A8);
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