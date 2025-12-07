uint64_t CloudTVShow.Relationships.CodingKeys.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1D5615EF8();

  *a3 = v4 != 0;
  return result;
}

uint64_t CloudTVShow.Relationships.CodingKeys.init(stringValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1D5615EF8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1D4FC9494(uint64_t a1)
{
  v2 = sub_1D4FCE70C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FC94D0(uint64_t a1)
{
  v2 = sub_1D4FCE70C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudTVShow.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_47_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED0F0, &unk_1D5623EF8);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16_0();
  v16 = *(v15 + 56);
  sub_1D4F39AB0(v6, v1, &qword_1EC7ECD90, &unk_1D5622F80);
  sub_1D4F39AB0(v4, v1 + v16, &qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_57(v1, 1, v7);
  if (!v17)
  {
    sub_1D4F39AB0(v1, v2, &qword_1EC7ECD90, &unk_1D5622F80);
    OUTLINED_FUNCTION_57(v1 + v16, 1, v7);
    if (!v17)
    {
      (*(v9 + 32))(v0, v1 + v16, v7);
      sub_1D4FCE688();
      sub_1D5614D18();
      v18 = *(v9 + 8);
      v19 = OUTLINED_FUNCTION_71();
      v18(v19);
      (v18)(v2, v7);
      sub_1D4E50004(v1, &qword_1EC7ECD90, &unk_1D5622F80);
      goto LABEL_10;
    }

    (*(v9 + 8))(v2, v7);
LABEL_9:
    sub_1D4E50004(v1, &qword_1EC7ED0F0, &unk_1D5623EF8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_57(v1 + v16, 1, v7);
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v1, &qword_1EC7ECD90, &unk_1D5622F80);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

uint64_t CloudTVShow.Relationships.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED100, &qword_1D5623F08);
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_62_1();
  v5 = sub_1D4FCE70C();
  OUTLINED_FUNCTION_132(&type metadata for CloudTVShow.Relationships.CodingKeys, v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  sub_1D4FCE760();
  sub_1D5616068();
  return (*(v3 + 8))(v0, v1);
}

uint64_t CloudTVShow.Relationships.hash(into:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31();
  sub_1D4F39AB0(v1, v3, &qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_57(v3, 1, v4);
  if (v10)
  {
    return sub_1D56162F8();
  }

  (*(v6 + 32))(v2, v3, v4);
  sub_1D56162F8();
  sub_1D4F8B4A0();
  sub_1D5614CB8();
  v11 = OUTLINED_FUNCTION_98();
  return v12(v11);
}

uint64_t CloudTVShow.Relationships.hashValue.getter()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v10, &qword_1EC7ECD90, &unk_1D5622F80);
  v11 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v11, v12, v3);
  if (v13)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v1, v10, v3);
    sub_1D56162F8();
    sub_1D4F8B4A0();
    sub_1D5614CB8();
    v14 = OUTLINED_FUNCTION_98();
    v15(v14);
  }

  return sub_1D5616328();
}

void CloudTVShow.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v16 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED120, &qword_1D5623F10);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_114();
  v11 = type metadata accessor for CloudTVShow.Relationships(0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D4FCE70C();
  sub_1D5616398();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    sub_1D4FCE8EC();
    sub_1D5615F78();
    (*(v9 + 8))(v1, v7);
    sub_1D4F39A1C(v16, v15, &qword_1EC7ECD90, &unk_1D5622F80);
    OUTLINED_FUNCTION_16_21();
    sub_1D4FCEF48();
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4FC9DF4(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v9, &qword_1EC7ECD90, &unk_1D5622F80);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1D56162F8();
    sub_1D4F8B4A0();
    sub_1D5614CB8();
    (*(v4 + 8))(v6, v3);
  }

  return sub_1D5616328();
}

uint64_t sub_1D4FC9FC0(uint64_t a1)
{
  v2 = sub_1D4FCEA58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FC9FFC(uint64_t a1)
{
  v2 = sub_1D4FCEA58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudTVShow.Associations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED130, &qword_1D5623F18);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4FCEA58();
  sub_1D56163D8();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudTVShow.Metadata.init(snippets:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
  return result;
}

uint64_t CloudTVShow.Metadata.snippets.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static CloudTVShow.Metadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {

      v4 = OUTLINED_FUNCTION_159();
      sub_1D4EF7D1C(v4, v5);
      OUTLINED_FUNCTION_70_2();
      if (v2)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D4FCA2B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7374657070696E73 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D4FCA344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FCA2B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D4FCA370(uint64_t a1)
{
  v2 = sub_1D4FCEAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FCA3AC(uint64_t a1)
{
  v2 = sub_1D4FCEAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudTVShow.Metadata.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED140, &qword_1D5623F20);
  OUTLINED_FUNCTION_4();
  v28 = v27;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_19_0();
  v30 = *v20;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1D4FCEAAC();

  OUTLINED_FUNCTION_63_3();
  sub_1D56163D8();
  a10 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
  v31 = sub_1D4FCEB00();
  OUTLINED_FUNCTION_21_0(&a10, v32, v33, v34, v31);

  (*(v28 + 8))(v21, v26);
  OUTLINED_FUNCTION_26();
}

void CloudTVShow.Metadata.hash(into:)()
{
  if (*v0)
  {
    sub_1D56162F8();
    v1 = OUTLINED_FUNCTION_98();

    sub_1D4F068B4(v1);
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t CloudTVShow.Metadata.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_164();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D4F068B4(v3);
  }

  return sub_1D5616328();
}

void CloudTVShow.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED178, &qword_1D5623F28);
  OUTLINED_FUNCTION_4();
  v18 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9();
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_1D4FCEAAC();
  OUTLINED_FUNCTION_63_3();
  sub_1D5616398();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
    sub_1D4FCEC6C();
    sub_1D5615F78();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4FCA778(uint64_t a1)
{
  v2 = *v1;
  sub_1D56162D8();
  sub_1D56162F8();
  if (v2)
  {
    sub_1D4F068B4(v4);
  }

  return sub_1D5616328();
}

uint64_t CloudTVShow.attributes.getter()
{
  OUTLINED_FUNCTION_94_4();
  OUTLINED_FUNCTION_14_22();
  return sub_1D4FCF044();
}

uint64_t static CloudTVShow.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_1EC7ED028 = a1;
}

uint64_t (*static CloudTVShow.relationshipCodingKeys.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_159();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D4FCA964@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7ED028;
}

uint64_t sub_1D4FCA9B4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7ED028 = v1;
}

uint64_t CloudTVShow.views.getter()
{
  result = OUTLINED_FUNCTION_94_4();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudTVShow.meta.getter()
{
  v2 = *(v1 + *(OUTLINED_FUNCTION_94_4() + 32));
  *v0 = v2;

  return sub_1D4E67688(v2);
}

uint64_t CloudTVShow.meta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CloudTVShow(0) + 32);
  result = sub_1D4EA7410(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

void (*CloudTVShow.meta.modify())()
{
  v0 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for CloudTVShow(v0);
  return nullsub_1;
}

uint64_t sub_1D4FCAB3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  OUTLINED_FUNCTION_64_1();
  sub_1D5610088();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C050;
  result = sub_1D560FFE8();
  qword_1EDD588B8 = v0;
  return result;
}

void static CloudTVShow.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_106_0();
  v6 = type metadata accessor for CloudTVShow.Relationships(v5);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED198, &qword_1D5623F38);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v12 = *v1 == *v0 && v1[1] == v0[1];
  if (!v12 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_34;
  }

  type metadata accessor for CloudTVShow(0);
  OUTLINED_FUNCTION_90_5();
  static CloudTVShow.Attributes.== infix(_:_:)();
  if ((v13 & 1) == 0)
  {
    goto LABEL_34;
  }

  v14 = v4[6];
  v15 = *(v10 + 48);
  sub_1D4F39AB0(v1 + v14, v2, &qword_1EC7ED190, &qword_1D5623F30);
  sub_1D4F39AB0(v0 + v14, v2 + v15, &qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_57(v2, 1, v6);
  if (!v12)
  {
    sub_1D4F39AB0(v2, v3, &qword_1EC7ED190, &qword_1D5623F30);
    OUTLINED_FUNCTION_57(v2 + v15, 1, v6);
    if (!v16)
    {
      OUTLINED_FUNCTION_16_21();
      sub_1D4FCEF48();
      static CloudTVShow.Relationships.== infix(_:_:)();
      v18 = v17;
      sub_1D4FCEDF8();
      sub_1D4FCEDF8();
      sub_1D4E50004(v2, &qword_1EC7ED190, &qword_1D5623F30);
      if ((v18 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_17;
    }

    OUTLINED_FUNCTION_15_24();
    sub_1D4FCEDF8();
LABEL_15:
    sub_1D4E50004(v2, &qword_1EC7ED198, &qword_1D5623F38);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_57(v2 + v15, 1, v6);
  if (!v12)
  {
    goto LABEL_15;
  }

  sub_1D4E50004(v2, &qword_1EC7ED190, &qword_1D5623F30);
LABEL_17:
  if (*(v1 + v4[7]) == *(v0 + v4[7]))
  {
    v19 = v4[8];
    v20 = *(v1 + v19);
    v21 = *(v0 + v19);
    if (v20 == 1)
    {
      sub_1D4E67688(1);
      if (v21 == 1)
      {
        sub_1D4E67688(1);
        sub_1D4EA7410(1);
        goto LABEL_34;
      }

      sub_1D4E67688(v21);
      goto LABEL_24;
    }

    if (v21 == 1)
    {
      sub_1D4E67688(v20);
      sub_1D4E67688(1);
      sub_1D4E67688(v20);

LABEL_24:
      sub_1D4EA7410(v20);
      v22 = v21;
LABEL_33:
      sub_1D4EA7410(v22);
      goto LABEL_34;
    }

    if (v20)
    {
      if (v21)
      {
        sub_1D4E67688(v20);
        sub_1D4E67688(v21);
        sub_1D4E67688(v20);
        sub_1D4E67688(v21);
        v23 = OUTLINED_FUNCTION_159();
        sub_1D4EF7D1C(v23, v24);
        v26 = v25;
        sub_1D4EA7410(v21);
        sub_1D4EA7410(v21);
        if (v26)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_1D4E67688(v20);
        sub_1D4E67688(0);
        sub_1D4E67688(v20);
      }
    }

    else
    {
      sub_1D4E67688(0);
      if (!v21)
      {
        sub_1D4E67688(0);
        sub_1D4E67688(0);
LABEL_36:

        sub_1D4EA7410(v20);
        goto LABEL_34;
      }

      sub_1D4E67688(v21);
      sub_1D4E67688(0);
      sub_1D4EA7410(v21);
    }

    v22 = v20;
    goto LABEL_33;
  }

LABEL_34:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FCAFE4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FCB078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D4FCB0CC(uint64_t a1)
{
  v2 = sub_1D4FCEE4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FCB108(uint64_t a1)
{
  v2 = sub_1D4FCEE4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudTVShow.encode(to:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1A0, &qword_1D5623F40);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_62_1();
  v7 = sub_1D4FCEE4C();
  OUTLINED_FUNCTION_132(&type metadata for CloudTVShow.CodingKeys, v8, v7);
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_32_9();
  sub_1D56160C8();
  if (!v1)
  {
    v9 = type metadata accessor for CloudTVShow(0);
    type metadata accessor for CloudTVShow.Attributes(0);
    OUTLINED_FUNCTION_38_16();
    sub_1D4FC6B3C(v10);
    OUTLINED_FUNCTION_8_1();
    sub_1D56160C8();
    type metadata accessor for CloudTVShow.Relationships(0);
    OUTLINED_FUNCTION_37_14();
    sub_1D4FC6B3C(v11);
    OUTLINED_FUNCTION_8_1();
    sub_1D5616068();
    sub_1D4FCEEA0();
    OUTLINED_FUNCTION_32_9();
    sub_1D5616068();
    v13 = *(v0 + *(v9 + 32));
    sub_1D4E67688(v13);
    sub_1D4FCEEF4();
    OUTLINED_FUNCTION_32_9();
    sub_1D5616068();
    sub_1D4EA7410(v13);
  }

  return (*(v5 + 8))(v2, v3);
}

void CloudTVShow.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  OUTLINED_FUNCTION_4();
  v25 = v4;
  v26 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v24 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_114();
  type metadata accessor for CloudTVShow.Relationships(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  sub_1D5614E28();
  type metadata accessor for CloudTVShow(0);
  OUTLINED_FUNCTION_90_5();
  CloudTVShow.Attributes.hash(into:)();
  sub_1D4F39AB0(v0 + *(v1 + 24), v16, &qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_23_1(v16);
  if (v18)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_16_21();
    sub_1D4FCEF48();
    OUTLINED_FUNCTION_27();
    sub_1D4F39AB0(v12, v2, &qword_1EC7ECD90, &unk_1D5622F80);
    v17 = v26;
    OUTLINED_FUNCTION_57(v2, 1, v26);
    if (v18)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v20 = v24;
      v19 = v25;
      (*(v25 + 32))(v24, v2, v17);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B4A0();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      (*(v19 + 8))(v20, v17);
    }

    OUTLINED_FUNCTION_15_24();
    sub_1D4FCEDF8();
  }

  sub_1D56162F8();
  v21 = *(v0 + *(v1 + 32));
  if (v21 == 1 || (OUTLINED_FUNCTION_27(), !v21))
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    v22 = OUTLINED_FUNCTION_128();
    sub_1D4F068B4(v22);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FCB660(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_164();
  a1(v3);
  return sub_1D5616328();
}

void CloudTVShow.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v18 = v5;
  v6 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for CloudTVShow.Attributes(v6);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1D0, &qword_1D5623F48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_114();
  v9 = type metadata accessor for CloudTVShow(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v19 = (v13 - v12);
  v20 = *(v11 + 32);
  *(v13 - v12 + v20) = 1;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D4FCEE4C();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1D4EA7410(*(v19 + v20));
  }

  else
  {
    sub_1D4F89C9C();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615FD8();
    *v19 = v21;
    v19[1] = v22;
    OUTLINED_FUNCTION_38_16();
    sub_1D4FC6B3C(v14);
    sub_1D5615FD8();
    sub_1D4FCEF48();
    type metadata accessor for CloudTVShow.Relationships(0);
    LOBYTE(v21) = 2;
    OUTLINED_FUNCTION_37_14();
    sub_1D4FC6B3C(v15);
    sub_1D5615F78();
    sub_1D4F39A1C(v18, v19 + *(v9 + 24), &qword_1EC7ED190, &qword_1D5623F30);
    sub_1D4FCEF9C();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615F78();
    *(v19 + *(v9 + 28)) = 2;
    sub_1D4FCEFF0();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615F78();
    v16 = OUTLINED_FUNCTION_26_18();
    v17(v16);
    sub_1D4EA7410(*(v19 + v20));
    *(v19 + v20) = v21;
    OUTLINED_FUNCTION_40_14();
    sub_1D4FCF044();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_17_22();
    sub_1D4FCEDF8();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4FCBB40(uint64_t a1)
{
  v2 = sub_1D4FC6B3C(&unk_1EC7ED2E0);

  return MEMORY[0x1EEDCE440](a1, v2);
}

uint64_t sub_1D4FCBC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

void TVShow.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_47();
  v183 = v1;
  v184 = v2;
  v182 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v181 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v185 = v15;
  OUTLINED_FUNCTION_70_0();
  sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v179 = v17;
  v180 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v177 = v18;
  OUTLINED_FUNCTION_70_0();
  v178 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v176 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v26 = OUTLINED_FUNCTION_22(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  v171 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13();
  v172 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v40);
  v188 = type metadata accessor for CloudTVShow(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  v189 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v43);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_9();
  v45 = type metadata accessor for TVShowPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v49 = v48 - v47;
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  v51 = v50;
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v50);
  v55 = sub_1D5610978();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v55);
  v59 = sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
  OUTLINED_FUNCTION_33();
  v186 = v55;
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v55);
  sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  OUTLINED_FUNCTION_33();
  v174 = v73;
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v73);
  if (qword_1EC7E95E8 != -1)
  {
    swift_once();
  }

  v77 = sub_1D560D9A8();
  __swift_project_value_buffer(v77, qword_1EC7F5D98);
  OUTLINED_FUNCTION_64_1();
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD0, &qword_1D561F220);
  sub_1D56105B8();
  sub_1D4E50004(v0, &qword_1EC7EB5C0, &unk_1D56223C0);
  v187 = v45;
  sub_1D5610658();
  v82 = sub_1D5610618();
  v84 = v83;
  v85 = sub_1D56105C8();
  v86 = sub_1D56105F8();
  v87 = sub_1D56105E8();
  v88 = sub_1D56105A8();
  if (qword_1EC7E9800 != -1)
  {
    swift_once();
  }

  v89 = qword_1EC87C740;
  if (qword_1EC87C740 >> 62)
  {
    sub_1D560CDE8();

    v164 = sub_1D5615E18();

    v89 = v164;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v49 + v187[24]) = v89;
  v90 = (v49 + v187[27]);
  *v90 = v82;
  v90[1] = v84;
  *(v49 + v187[28]) = v85;
  *(v49 + v187[29]) = v86;
  *(v49 + v187[30]) = v87;
  *(v49 + v187[31]) = v88;
  sub_1D5610648();
  v91 = v189 + v188[5];
  sub_1D4F39AB0(v91, v167, &qword_1EC7EB5B8, &unk_1D56206A0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v93 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v93, v94, v92);
  if (v148)
  {
    sub_1D4E50004(v167, &qword_1EC7EB5B8, &unk_1D56206A0);
    v98 = 1;
    v99 = v169;
    v95 = v168;
  }

  else
  {
    v95 = v168;
    sub_1D5610758();
    OUTLINED_FUNCTION_24_0();
    v96 = OUTLINED_FUNCTION_159();
    v97(v96);
    v98 = 0;
    v99 = v169;
  }

  __swift_storeEnumTagSinglePayload(v95, v98, 1, v51);
  sub_1D4E68940(v95, v49, &qword_1EC7E9CA0, &unk_1D561A0C0);
  type metadata accessor for CloudTVShow.Attributes(0);
  OUTLINED_FUNCTION_90_5();
  v101 = *(v91 + v100);
  if (v101)
  {
    v101 = sub_1D511C2A4(v101);
  }

  *(v49 + v187[5]) = v101;
  v102 = *(v91 + v87[6]);
  if (v102)
  {
    v102 = sub_1D5259FF8(v102);
  }

  v103 = v187[7];
  *(v49 + v187[6]) = v102;
  *(v49 + v103) = *(v91 + v87[7]);
  v104 = *(v91 + v87[8]);

  if (v104)
  {
    v105 = sub_1D50C4BD4(v104);
  }

  else
  {
    v105 = 0;
  }

  *(v49 + v187[8]) = v105;
  sub_1D4F39AB0(v91 + v87[9], v99, &qword_1EC7EC960, &unk_1D56334C0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_23_1(v99);
  if (v148)
  {
    sub_1D4E50004(v99, &qword_1EC7EC960, &unk_1D56334C0);
    v109 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0();
    v107 = OUTLINED_FUNCTION_184();
    v108(v107);
    v109 = 0;
  }

  __swift_storeEnumTagSinglePayload(v170, v109, 1, v186);
  v110 = v187[10];
  v111 = v49 + v187[11];
  v112 = v187[12];
  v113 = v187[13];
  v114 = v187[14];
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v115, v116, v117, v118);
  *(v49 + v110) = *(v91 + v87[10]);
  v119 = v91 + v87[11];
  v120 = *v119;
  LOBYTE(v119) = *(v119 + 8);
  *v111 = v120;
  *(v111 + 8) = v119;
  *(v49 + v112) = *(v91 + v87[12]);
  *(v49 + v113) = *(v91 + v87[13]);
  *(v49 + v114) = *(v91 + v87[14]);

  OUTLINED_FUNCTION_61_2();
  sub_1D4F89DEC(v121, v122);
  v123 = *(v91 + v87[16]);
  if (v123)
  {
    v123 = sub_1D54FEF40(v123);
  }

  v124 = (v49 + v187[17]);
  *(v49 + v187[16]) = v123;
  v125 = (v91 + v87[17]);
  v126 = v125[1];
  *v124 = *v125;
  v124[1] = v126;
  v127 = *(v91 + v87[18]);

  if (v127)
  {
    v128 = sub_1D50C4BD4(v127);
  }

  else
  {
    v128 = 0;
  }

  *(v49 + v187[18]) = v128;
  sub_1D4F39AB0(v91 + v87[19], v171, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_23_1(v171);
  if (v148)
  {
    sub_1D4E50004(v171, &qword_1EC7EC960, &unk_1D56334C0);
    v130 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0();
    (*(v129 + 8))(v171, v106);
    v130 = 0;
  }

  __swift_storeEnumTagSinglePayload(v172, v130, 1, v186);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v172, v131, v132, v133);
  sub_1D56107A8();
  (*(v179 + 104))(v177, *MEMORY[0x1E6975DC8], v180);
  OUTLINED_FUNCTION_71();
  sub_1D5610798();
  (*(v179 + 8))(v177, v180);
  (*(v176 + 8))(v175, v178);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v173, v134, v135, v136);
  OUTLINED_FUNCTION_61_2();
  sub_1D4F89DEC(v137, v138);
  sub_1D4F39AB0(v189 + v188[6], v181, &qword_1EC7ED190, &qword_1D5623F30);
  type metadata accessor for CloudTVShow.Relationships(0);
  v139 = OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_57(v139, 1, v140);
  if (v148)
  {
    sub_1D4E50004(v181, &qword_1EC7ED190, &qword_1D5623F30);
    v141 = 1;
    v143 = v183;
    v142 = v184;
    v144 = v187;
  }

  else
  {
    sub_1D4F39AB0(v181, v166, &qword_1EC7ECD90, &unk_1D5622F80);
    OUTLINED_FUNCTION_15_24();
    sub_1D4FCEDF8();
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    v146 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v146, v147, v145);
    v143 = v183;
    v142 = v184;
    if (v148)
    {
      sub_1D4E50004(v166, &qword_1EC7ECD90, &unk_1D5622F80);
      v141 = 1;
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
      type metadata accessor for TVSeason(0);
      sub_1D4FC6B3C(&qword_1EC7ECC90);
      OUTLINED_FUNCTION_36_11();
      sub_1D4FC6B3C(v153);
      sub_1D5612368();
      sub_1D4E50004(v165, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0();
      v154 = OUTLINED_FUNCTION_159();
      v155(v154);
      v141 = 0;
    }

    v144 = v187;
  }

  __swift_storeEnumTagSinglePayload(v185, v141, 1, v174);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v185, v156, v157, v158);
  v159 = v188[8];
  v160 = *(v189 + v159);
  if (v160 == 1)
  {
    v161 = 0;
  }

  else
  {
    v161 = *(v189 + v159);
  }

  *(v49 + *(v144 + 92)) = v161;
  v190[3] = v144;
  v190[4] = sub_1D4FC6B3C(&qword_1EC7ED200);
  __swift_allocate_boxed_opaque_existential_0(v190);
  sub_1D4FCF044();
  sub_1D4E67688(v160);
  TVShow.init(propertyProvider:)(v190, v182);

  OUTLINED_FUNCTION_24_0();
  (*(v162 + 8))(v143, v142);
  OUTLINED_FUNCTION_24_0();
  (*(v163 + 8))();
  OUTLINED_FUNCTION_17_22();
  sub_1D4FCEDF8();
  sub_1D4FCEDF8();
  OUTLINED_FUNCTION_46();
}

void TVShow.convertToCloudResource<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v205 = v26;
  v204 = v27;
  v203 = v28;
  v237[1] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  v237[0] = v32;
  OUTLINED_FUNCTION_70_0();
  v33 = sub_1D5610088();
  v34 = OUTLINED_FUNCTION_22(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v236 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v36);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_3();
  v231 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v39);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  v230 = v41;
  OUTLINED_FUNCTION_70_0();
  sub_1D5612B78();
  OUTLINED_FUNCTION_4();
  v234 = v43;
  v235 = v42;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  v233 = v44;
  v45 = OUTLINED_FUNCTION_70_0();
  v232 = type metadata accessor for CloudTVShow(v45);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13();
  v240 = v47;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_2();
  v229 = v49;
  OUTLINED_FUNCTION_70_0();
  v202 = sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v201 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_22(v53);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_3();
  v226 = v55;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  OUTLINED_FUNCTION_4();
  v198 = v56;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_3();
  v227 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  v60 = OUTLINED_FUNCTION_22(v59);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13();
  v199 = v61;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_2();
  v241 = v63;
  OUTLINED_FUNCTION_70_0();
  v224 = sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v223 = v64;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v67);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v69);
  v221 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v219 = v70;
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v73);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v197 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v78 = OUTLINED_FUNCTION_22(v77);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_13();
  v225 = v79;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v197 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v84 = OUTLINED_FUNCTION_22(v83);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_13();
  v239 = v85;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_2();
  v238 = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v88);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_114();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v90);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_47_5();
  v92 = type metadata accessor for CloudTVShow.Attributes(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5_0();
  v242 = v94;
  if (qword_1EC7E9538 != -1)
  {
    swift_once();
  }

  v95 = sub_1D56140F8();
  sub_1D4FC6B3C(&qword_1EC7EA688);
  sub_1D4FC6B3C(&qword_1EC7EC4A0);
  v96 = OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_27_15(v96, v97);
  OUTLINED_FUNCTION_23_1(v22);
  if (v98)
  {
    sub_1D4E50004(v22, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  else
  {
    sub_1D5613F28();
    OUTLINED_FUNCTION_24_0();
    (*(v99 + 8))(v22, v95);
  }

  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_16(v100);
  if (qword_1EC7E9540 != -1)
  {
    swift_once();
  }

  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_19_21(v101);
  v102 = MEMORY[0x1E69E7CC0];
  if (v243)
  {
    v103 = v243;
  }

  else
  {
    v103 = MEMORY[0x1E69E7CC0];
  }

  v104 = sub_1D511C730(v103);
  OUTLINED_FUNCTION_81_6(v104, &a10);
  if (qword_1EC7E9598 != -1)
  {
    swift_once();
  }

  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED208, &unk_1D5623F80);
  OUTLINED_FUNCTION_19_21(v105);
  if (v243)
  {
    v106 = sub_1D525AA6C(v243);
    OUTLINED_FUNCTION_81_6(v106, &a9);
  }

  else
  {
    v216 = 0;
  }

  if (qword_1EC7E9548 != -1)
  {
    swift_once();
  }

  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_19_21(v107);
  v215 = v243;
  if (qword_1EC7E95A8 != -1)
  {
    swift_once();
  }

  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED210, &unk_1D5637540);
  v109 = OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_27_15(v109, v110);
  if (v243)
  {
    v111 = v243;
  }

  else
  {
    v111 = v102;
  }

  v112 = sub_1D50C4F58(v111);
  OUTLINED_FUNCTION_81_6(v112, &v244);
  if (qword_1EC7E9550 != -1)
  {
    swift_once();
  }

  v217 = v20;
  v113 = sub_1D5610978();
  v114 = OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_27_15(v114, v115);
  OUTLINED_FUNCTION_23_1(v82);
  if (v98)
  {
    sub_1D4E50004(v82, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0();
    (*(v116 + 8))(v82, v113);
  }

  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_16(v117);
  v118 = sub_1D4F84AE8();
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_27_15(v118, v119);

  v214 = v243;
  if (qword_1EC7E9558 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_27_15(qword_1EC87C5E8, MEMORY[0x1E69E6530]);
  v120 = v243;
  if (v244)
  {
    v120 = 0;
  }

  v213 = v120;
  v121 = v225;
  if (qword_1EC7E9560 != -1)
  {
    swift_once();
  }

  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  OUTLINED_FUNCTION_19_21(v122);
  v212 = v243;
  if (qword_1EC7E9568 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_27_15(qword_1EC87C5F8, MEMORY[0x1E69E6370]);
  v208 = v243;
  if (qword_1EC7E9570 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_27_15(qword_1EC87C600, MEMORY[0x1E69E6370]);
  LODWORD(v207) = v243;
  if (qword_1EC7E95B0 != -1)
  {
    swift_once();
  }

  v123 = qword_1EC7F5D50;
  v124 = v76;
  v211 = sub_1D560C0A8();
  OUTLINED_FUNCTION_27_15(v123, v211);
  if (qword_1EC7E9578 != -1)
  {
    swift_once();
  }

  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED218, &qword_1D5623F90);
  OUTLINED_FUNCTION_19_21(v125);
  v126 = MEMORY[0x1E69E7CC0];
  if (v243)
  {
    v127 = v243;
  }

  else
  {
    v127 = MEMORY[0x1E69E7CC0];
  }

  v128 = sub_1D54FF0E8(v127);
  OUTLINED_FUNCTION_81_6(v128, &v240);
  v210 = TVShow.name.getter();
  v209 = v129;
  if (qword_1EC7E95B8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_27_15(qword_1EC7F5D58, v108);
  if (v243)
  {
    v130 = v243;
  }

  else
  {
    v130 = v126;
  }

  v131 = sub_1D50C4F58(v130);
  OUTLINED_FUNCTION_81_6(v131, v237);
  if (qword_1EC7E95C0 != -1)
  {
    swift_once();
  }

  v132 = v25;
  sub_1D560EC28();
  OUTLINED_FUNCTION_23_1(v121);
  if (v98)
  {
    sub_1D4E50004(v121, &qword_1EC7EAC98, &unk_1D561DA80);
    v135 = 1;
    v133 = v239;
  }

  else
  {
    v133 = v239;
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0();
    (*(v134 + 8))(v121, v113);
    v135 = 0;
  }

  v225 = v124;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v133, v135, 1, v136);
  v206 = v208 & 1;
  v208 = v207 & 1;
  v137 = v218;
  sub_1D56107A8();
  if (qword_1EC7E9588 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  v138 = v220;
  v139 = v132;
  sub_1D560EC28();
  v140 = v223;
  v141 = v222;
  v142 = v224;
  (*(v223 + 104))(v222, *MEMORY[0x1E6975DC8], v224);
  OUTLINED_FUNCTION_128();
  v143 = v137;
  v144 = sub_1D56107B8();
  v207 = v145;
  (*(v140 + 8))(v141, v142);
  sub_1D4E50004(v138, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v219 + 8))(v143, v221);
  if (qword_1EC7E9590 != -1)
  {
    swift_once();
  }

  v146 = v242;
  sub_1D560EC28();
  if (v212)
  {
    v147 = v212;
  }

  else
  {
    v147 = MEMORY[0x1E69E7CC0];
  }

  sub_1D4F39A1C(v217, v146, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_148_1(v92[5]);
  OUTLINED_FUNCTION_148_1(v92[6]);
  OUTLINED_FUNCTION_148_1(v92[7]);
  OUTLINED_FUNCTION_148_1(v92[8]);
  sub_1D4F39A1C(v238, v146 + v92[9], &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_148_1(v92[10]);
  v148 = v146 + v92[11];
  *v148 = v213;
  *(v148 + 8) = 0;
  *(v146 + v92[12]) = v147;
  *(v146 + v92[13]) = v206;
  *(v146 + v92[14]) = v208;
  sub_1D4F39A1C(v225, v146 + v92[15], &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_148_1(v92[16]);
  v149 = (v146 + v92[17]);
  v150 = v209;
  *v149 = v210;
  v149[1] = v150;
  OUTLINED_FUNCTION_148_1(v92[18]);
  sub_1D4F39A1C(v239, v146 + v92[19], &qword_1EC7EC960, &unk_1D56334C0);
  v151 = (v146 + v92[20]);
  v152 = v207;
  *v151 = v144;
  v151[1] = v152;
  v153 = type metadata accessor for CloudTVShow.Relationships(0);
  v154 = v241;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v155, v156, v157, v153);
  if (qword_1EC7E95C8 != -1)
  {
    swift_once();
  }

  v158 = v226;
  v159 = v228;
  sub_1D560EC28();
  OUTLINED_FUNCTION_23_1(v158);
  if (v98)
  {
    sub_1D4E50004(v158, &qword_1EC7ED1F8, &qword_1D5634780);
  }

  else
  {
    (*(v198 + 32))(v227, v158, v159);
    type metadata accessor for TVSeason(0);
    v239 = v153;
    sub_1D4FC6B3C(&qword_1EC7ECC90);
    OUTLINED_FUNCTION_36_11();
    sub_1D4FC6B3C(v160);
    v161 = v200;
    sub_1D4F1ABE8(v200);
    sub_1D560DA98();
    (*(v201 + 8))(v161, v202);
    v162 = OUTLINED_FUNCTION_184();
    v163(v162);
    v154 = v241;
    v164 = OUTLINED_FUNCTION_71();
    sub_1D4E50004(v164, v165, &qword_1D5623F30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v166, v167, v168, v169);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v170, v171, v172, v239);
    v173 = OUTLINED_FUNCTION_98();
    sub_1D4F39A1C(v173, v174, &qword_1EC7ED190, &qword_1D5623F30);
  }

  type metadata accessor for TVShow(0);
  sub_1D4FC6B3C(&qword_1EC7ED220);
  v175 = sub_1D560CBD8();
  if (v175 <= 1)
  {
    v176 = 1;
  }

  else
  {
    v176 = v175;
  }

  v178 = *v139;
  v177 = v139[1];
  v179 = v232;
  OUTLINED_FUNCTION_14_22();
  v180 = v229;
  sub_1D4FCF044();
  sub_1D4F39AB0(v154, v180 + v179[6], &qword_1EC7ED190, &qword_1D5623F30);
  *v180 = v178;
  v180[1] = v177;
  *(v180 + v179[7]) = 1;
  *(v180 + v179[8]) = v176;

  sub_1D5611A28();
  sub_1D560D838();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v181, v182, v183, v184);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v185, v186, v187, v188);
  v189 = v233;
  sub_1D5612B38();
  OUTLINED_FUNCTION_40_14();
  sub_1D4FCF044();
  sub_1D5611A98();
  v190 = sub_1D5611A88();
  v238 = v191;
  v239 = v190;
  v193 = v234;
  v192 = v235;
  (*(v234 + 16))(v237[0], v189, v235);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v194, v195, v196, v192);
  v231 = sub_1D5611A38();
  v230 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D4FC6B3C(&qword_1EC7ED228);
  sub_1D5610628();
  (*(v193 + 8))(v189, v192);
  OUTLINED_FUNCTION_17_22();
  sub_1D4FCEDF8();
  sub_1D4E50004(v241, &qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_13_27();
  sub_1D4FCEDF8();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FCE12C(uint64_t a1)
{
  sub_1D4FC6B3C(&qword_1EC7ECBB0);

  return sub_1D5612668();
}

uint64_t sub_1D4FCE198(uint64_t a1)
{
  v2 = sub_1D4FC6B3C(&unk_1EC7ED2D8);

  return MEMORY[0x1EEDCE440](a1, v2);
}

unint64_t sub_1D4FCE204()
{
  result = qword_1EC7ED0C8;
  if (!qword_1EC7ED0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED048, &unk_1D56285A0);
    sub_1D4FCE290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED0C8);
  }

  return result;
}

unint64_t sub_1D4FCE290()
{
  result = qword_1EC7ED0D0;
  if (!qword_1EC7ED0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED060, &qword_1D5623EC0);
    sub_1D4FCE314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED0D0);
  }

  return result;
}

unint64_t sub_1D4FCE314()
{
  result = qword_1EC7ED0D8;
  if (!qword_1EC7ED0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB160, &qword_1D561DEE0);
    sub_1D4FC6B3C(&unk_1EC7ED070);
    sub_1D4FC6B3C(&unk_1EC7ED078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED0D8);
  }

  return result;
}

unint64_t sub_1D4FCE3FC()
{
  result = qword_1EDD528F8;
  if (!qword_1EDD528F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D4F886BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD528F8);
  }

  return result;
}

unint64_t sub_1D4FCE488()
{
  result = qword_1EDD52928;
  if (!qword_1EDD52928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED080, &qword_1D5623EC8);
    sub_1D4FCE514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52928);
  }

  return result;
}

unint64_t sub_1D4FCE514()
{
  result = qword_1EDD53240;
  if (!qword_1EDD53240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
    sub_1D4FC6B3C(&unk_1EDD56910);
    sub_1D4FC6B3C(&unk_1EDD56918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53240);
  }

  return result;
}

unint64_t sub_1D4FCE5FC()
{
  result = qword_1EDD52908;
  if (!qword_1EDD52908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D4F88B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52908);
  }

  return result;
}

unint64_t sub_1D4FCE688()
{
  result = qword_1EC7ED0F8;
  if (!qword_1EC7ED0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD88, &qword_1D5622F78);
    sub_1D4F36FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED0F8);
  }

  return result;
}

unint64_t sub_1D4FCE70C()
{
  result = qword_1EC7ED108;
  if (!qword_1EC7ED108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED108);
  }

  return result;
}

unint64_t sub_1D4FCE760()
{
  result = qword_1EC7ED110;
  if (!qword_1EC7ED110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD88, &qword_1D5622F78);
    sub_1D4FCE7E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED110);
  }

  return result;
}

unint64_t sub_1D4FCE7E4()
{
  result = qword_1EC7ED118;
  if (!qword_1EC7ED118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAA8, &unk_1D56223D0);
    sub_1D4FC6B3C(&unk_1EDD577F0);
    sub_1D4FC6B3C(&unk_1EDD577F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED118);
  }

  return result;
}

unint64_t sub_1D4FCE8EC()
{
  result = qword_1EC7ED128;
  if (!qword_1EC7ED128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD88, &qword_1D5622F78);
    sub_1D4FCE970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED128);
  }

  return result;
}

unint64_t sub_1D4FCE970()
{
  result = qword_1EDD532E8;
  if (!qword_1EDD532E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAA8, &unk_1D56223D0);
    sub_1D4FC6B3C(&unk_1EDD577F0);
    sub_1D4FC6B3C(&unk_1EDD577F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD532E8);
  }

  return result;
}

unint64_t sub_1D4FCEA58()
{
  result = qword_1EC7ED138;
  if (!qword_1EC7ED138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED138);
  }

  return result;
}

unint64_t sub_1D4FCEAAC()
{
  result = qword_1EC7ED148;
  if (!qword_1EC7ED148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED148);
  }

  return result;
}

unint64_t sub_1D4FCEB00()
{
  result = qword_1EC7ED158;
  if (!qword_1EC7ED158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED150, &unk_1D565B6C0);
    sub_1D4FCEB84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED158);
  }

  return result;
}

unint64_t sub_1D4FCEB84()
{
  result = qword_1EC7ED160;
  if (!qword_1EC7ED160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA618, &unk_1D561C520);
    sub_1D4FC6B3C(&unk_1EC7ED168);
    sub_1D4FC6B3C(&unk_1EC7ED170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED160);
  }

  return result;
}

unint64_t sub_1D4FCEC6C()
{
  result = qword_1EC7ED180;
  if (!qword_1EC7ED180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED150, &unk_1D565B6C0);
    sub_1D4FCECF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED180);
  }

  return result;
}

unint64_t sub_1D4FCECF0()
{
  result = qword_1EC7ED188;
  if (!qword_1EC7ED188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA618, &unk_1D561C520);
    sub_1D4FC6B3C(&unk_1EC7ED168);
    sub_1D4FC6B3C(&unk_1EC7ED170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED188);
  }

  return result;
}

uint64_t sub_1D4FCEDF8()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v2(v1);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1D4FCEE4C()
{
  result = qword_1EC7ED1A8;
  if (!qword_1EC7ED1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED1A8);
  }

  return result;
}

unint64_t sub_1D4FCEEA0()
{
  result = qword_1EC7ED1C0;
  if (!qword_1EC7ED1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED1C0);
  }

  return result;
}

unint64_t sub_1D4FCEEF4()
{
  result = qword_1EC7ED1C8;
  if (!qword_1EC7ED1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED1C8);
  }

  return result;
}

uint64_t sub_1D4FCEF48()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

unint64_t sub_1D4FCEF9C()
{
  result = qword_1EC7ED1E8;
  if (!qword_1EC7ED1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED1E8);
  }

  return result;
}

unint64_t sub_1D4FCEFF0()
{
  result = qword_1EC7ED1F0;
  if (!qword_1EC7ED1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED1F0);
  }

  return result;
}

uint64_t sub_1D4FCF044()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

unint64_t sub_1D4FCF0E4()
{
  result = qword_1EC7ED238;
  if (!qword_1EC7ED238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED238);
  }

  return result;
}

unint64_t sub_1D4FCF13C()
{
  result = qword_1EC7ED240;
  if (!qword_1EC7ED240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED240);
  }

  return result;
}

unint64_t sub_1D4FCF194()
{
  result = qword_1EC7ED248;
  if (!qword_1EC7ED248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED248);
  }

  return result;
}

unint64_t sub_1D4FCF1EC()
{
  result = qword_1EC7ED250;
  if (!qword_1EC7ED250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED258, &qword_1D5624140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED250);
  }

  return result;
}

unint64_t sub_1D4FCF29C()
{
  result = qword_1EC7ED268;
  if (!qword_1EC7ED268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED268);
  }

  return result;
}

unint64_t sub_1D4FCF2F4()
{
  result = qword_1EC7ED270;
  if (!qword_1EC7ED270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED270);
  }

  return result;
}

void sub_1D4FCF57C(uint64_t a1)
{
  type metadata accessor for CloudTVShow.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_1D4FCF9B0(319, &qword_1EDD58870, type metadata accessor for CloudTVShow.Relationships);
    if (v2 <= 0x3F)
    {
      sub_1D4E518A0(319, qword_1EDD588C0, &type metadata for CloudTVShow.Associations);
      if (v3 <= 0x3F)
      {
        sub_1D4E518A0(319, qword_1EDD58810, &type metadata for CloudTVShow.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D4FCF6A4(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD528D8, &qword_1EC7ED048, &unk_1D56285A0);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_1D4E6D600(319, &qword_1EDD52920, &qword_1EC7ED080, &qword_1D5623EC8);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
            if (v13 > 0x3F)
            {
              return v12;
            }

            else
            {
              sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
              if (v15 > 0x3F)
              {
                return v14;
              }

              sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
              if (v16 > 0x3F)
              {
                return v14;
              }

              sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
              if (v17 > 0x3F)
              {
                return v14;
              }

              sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
              if (v18 > 0x3F)
              {
                return v14;
              }

              sub_1D4FCF9B0(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
              if (v20 > 0x3F)
              {
                return v19;
              }

              sub_1D4E6D600(319, &qword_1EDD527B0, &qword_1EC7ED098, &unk_1D5623EE0);
              if (v21 > 0x3F)
              {
                return v14;
              }

              sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
              if (v22 > 0x3F)
              {
                return v14;
              }

              else
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1D4FCF9B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D4FCFA2C(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EC7ED278, &qword_1EC7ECD88, &qword_1D5622F78);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D4FCFAD0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D4FCFB24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudTVShow.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D4FCFC60(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CloudTVShow.Attributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudTVShow.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4FCFE84()
{
  result = qword_1EC7ED280;
  if (!qword_1EC7ED280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED280);
  }

  return result;
}

unint64_t sub_1D4FCFEDC()
{
  result = qword_1EC7ED288;
  if (!qword_1EC7ED288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED288);
  }

  return result;
}

unint64_t sub_1D4FCFF34()
{
  result = qword_1EC7ED290;
  if (!qword_1EC7ED290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED290);
  }

  return result;
}

unint64_t sub_1D4FCFF8C()
{
  result = qword_1EC7ED298;
  if (!qword_1EC7ED298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED298);
  }

  return result;
}

unint64_t sub_1D4FCFFE4()
{
  result = qword_1EC7ED2A0;
  if (!qword_1EC7ED2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2A0);
  }

  return result;
}

unint64_t sub_1D4FD003C()
{
  result = qword_1EC7ED2A8;
  if (!qword_1EC7ED2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2A8);
  }

  return result;
}

unint64_t sub_1D4FD0094()
{
  result = qword_1EC7ED2B0;
  if (!qword_1EC7ED2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2B0);
  }

  return result;
}

unint64_t sub_1D4FD00EC()
{
  result = qword_1EC7ED2B8;
  if (!qword_1EC7ED2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2B8);
  }

  return result;
}

unint64_t sub_1D4FD0144()
{
  result = qword_1EC7ED2C0;
  if (!qword_1EC7ED2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2C0);
  }

  return result;
}

unint64_t sub_1D4FD019C()
{
  result = qword_1EC7ED2C8;
  if (!qword_1EC7ED2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2C8);
  }

  return result;
}

unint64_t sub_1D4FD01F4()
{
  result = qword_1EC7ED2D0;
  if (!qword_1EC7ED2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_81_6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
}

uint64_t OUTLINED_FUNCTION_91_4()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_94_4()
{

  return type metadata accessor for CloudTVShow(0);
}

uint64_t MusicItem<>.with(_:preferredSource:includeOnlyDownloadedContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_2_24();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_32(v12);
  *v13 = v14;
  v13[1] = sub_1D4E6ED20;
  OUTLINED_FUNCTION_73_0();

  return MusicItem<>.with(_:preferredSource:includeOnlyDownloadedContent:)(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_2_24();
  *(v12 + 32) = v13;
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_32(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_0_40(v15);
  OUTLINED_FUNCTION_73_0();

  return MusicItem<>.with(_:preferredSource:options:)();
}

uint64_t sub_1D4FD0428()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t MusicItem<>.with(_:preferredSource:options:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  *(v1 + 64) = v4;
  *(v1 + 72) = v0;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  *(v1 + 32) = v7;
  *(v1 + 40) = v8;
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  v11 = sub_1D560CBA8();
  *(v1 + 80) = v11;
  OUTLINED_FUNCTION_69(v11);
  *(v1 + 88) = v12;
  *(v1 + 96) = swift_task_alloc();
  v13 = sub_1D560D838();
  *(v1 + 104) = v13;
  OUTLINED_FUNCTION_69(v13);
  *(v1 + 112) = v14;
  *(v1 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED2E8, &qword_1D5624AE8);
  *(v1 + 128) = swift_task_alloc();
  v15 = sub_1D560DE08();
  *(v1 + 136) = v15;
  OUTLINED_FUNCTION_69(v15);
  *(v1 + 144) = v16;
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 192) = *v3;
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_2_24();
  *(v0 + 32) = *v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_40(v3);
  OUTLINED_FUNCTION_73_0();

  return MusicItem<>.with(_:preferredSource:options:)();
}

uint64_t sub_1D4FD0720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[16];
  v14 = v12[17];
  sub_1D4FD0B78(v12[4], v13);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v16 = v12[21];
  v17 = v12[17];
  v18 = v12[18];
  v19 = v12[16];
  if (EnumTagSinglePayload == 1)
  {
    v20 = v12[19];
    v22 = v12[14];
    v21 = v12[15];
    a9 = v12[13];
    sub_1D4FD0BE8(v19);
    sub_1D560EC98();
    v23 = sub_1D560D668();
    (*(v22 + 8))(v21, a9);
    v24 = MEMORY[0x1E69750B0];
    if ((v23 & 1) == 0)
    {
      v24 = MEMORY[0x1E69750A8];
    }

    (*(v18 + 104))(v20, *v24, v17);
    (*(v18 + 32))(v16, v20, v17);
  }

  else
  {
    v25 = v12[20];
    v26 = *(v18 + 32);
    v26(v25, v19, v12[17]);
    v26(v16, v25, v17);
  }

  sub_1D560CB88();
  v27 = swift_task_alloc();
  v12[22] = v27;
  *v27 = v12;
  v27[1] = sub_1D4FD08F0;
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEDCF238](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_1D4FD08F0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4FD09E8()
{
  v3 = OUTLINED_FUNCTION_3_27();
  v4(v3);
  (*(v2 + 8))(v0, v1);

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D4FD0AB0()
{
  v3 = OUTLINED_FUNCTION_3_27();
  v4(v3);
  (*(v2 + 8))(v0, v1);

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D4FD0B78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED2E8, &qword_1D5624AE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FD0BE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED2E8, &qword_1D5624AE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4FD0CF4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t MusicRelationshipProperty.limit(_:)(uint64_t a1)
{
  v1 = sub_1D560CDD8();

  sub_1D560D0B8();

  return v1;
}

uint64_t MovieClip.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for MovieClip(uint64_t a1)
{
  result = qword_1EDD545E0;
  if (!qword_1EDD545E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static MovieClip.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v65 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v61 - v15;
  v16 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v68 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v61 - v28;
  v30 = *(a1 + 8);
  v31 = *(a2 + 8);
  if (v30)
  {
    if (!v31)
    {
      goto LABEL_36;
    }

    v32 = *a1 == *a2 && v30 == v31;
    if (!v32 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_10:
    v33 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (!*(a2 + 24))
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (*(a1 + 16) != *(a2 + 16))
      {
        v33 = 1;
      }

      if (v33)
      {
        goto LABEL_36;
      }
    }

    v62 = v4;
    v63 = v6;
    v34 = type metadata accessor for MovieClip(0);
    v64 = a2;
    v61 = v34;
    v35 = *(v34 + 24);
    v36 = *(v26 + 48);
    sub_1D4F1C460(a1 + v35, v29, &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D4F1C460(v64 + v35, &v29[v36], &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_57(v29, 1, v16);
    if (v32)
    {
      OUTLINED_FUNCTION_57(&v29[v36], 1, v16);
      v37 = v63;
      if (v32)
      {
        sub_1D4E50004(v29, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_26:
        v47 = *(v61 + 28);
        v48 = *(v13 + 48);
        v49 = v67;
        sub_1D4F1C460(a1 + v47, v67, &qword_1EC7E9CA0, &unk_1D561A0C0);
        sub_1D4F1C460(v64 + v47, v49 + v48, &qword_1EC7E9CA0, &unk_1D561A0C0);
        v50 = v62;
        OUTLINED_FUNCTION_57(v49, 1, v62);
        if (v32)
        {
          OUTLINED_FUNCTION_57(v49 + v48, 1, v50);
          if (v32)
          {
            sub_1D4E50004(v49, &qword_1EC7E9CA0, &unk_1D561A0C0);
            goto LABEL_39;
          }
        }

        else
        {
          v51 = v66;
          sub_1D4F1C460(v49, v66, &qword_1EC7E9CA0, &unk_1D561A0C0);
          OUTLINED_FUNCTION_57(v49 + v48, 1, v50);
          if (!v52)
          {
            v55 = v49 + v48;
            v56 = v65;
            (*(v37 + 32))(v65, v55, v50);
            OUTLINED_FUNCTION_0_41();
            sub_1D4FD2544(v57, v58, MEMORY[0x1E6976F80]);
            v59 = sub_1D5614D18();
            v60 = *(v37 + 8);
            v60(v56, v50);
            v60(v51, v50);
            sub_1D4E50004(v49, &qword_1EC7E9CA0, &unk_1D561A0C0);
            if ((v59 & 1) == 0)
            {
              goto LABEL_36;
            }

LABEL_39:
            sub_1D4F286E0();
            return v53 & 1;
          }

          (*(v37 + 8))(v51, v50);
        }

        v39 = &qword_1EC7E9FB8;
        v40 = &unk_1D561B9C0;
        v41 = v49;
        goto LABEL_35;
      }
    }

    else
    {
      sub_1D4F1C460(v29, v25, &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_57(&v29[v36], 1, v16);
      if (!v38)
      {
        v42 = v68;
        (*(v68 + 32))(v21, &v29[v36], v16);
        OUTLINED_FUNCTION_1_41();
        sub_1D4FD2544(v43, v44, MEMORY[0x1E6968FC8]);
        v45 = sub_1D5614D18();
        v46 = *(v42 + 8);
        v46(v21, v16);
        v46(v25, v16);
        v37 = v63;
        sub_1D4E50004(v29, &unk_1EC7E9CA8, &unk_1D561D1D0);
        if ((v45 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_26;
      }

      (*(v68 + 8))(v25, v16);
    }

    v39 = &qword_1EC7E9FB0;
    v40 = &qword_1D562C590;
    v41 = v29;
LABEL_35:
    sub_1D4E50004(v41, v39, v40);
    goto LABEL_36;
  }

  if (!v31)
  {
    goto LABEL_10;
  }

LABEL_36:
  v53 = 0;
  return v53 & 1;
}

uint64_t sub_1D4FD1578(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4C5255736C68 && a2 == 0xE600000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4177656976657270 && a2 == 0xEE006B726F777472;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x65756C6156776172 && a2 == 0xE900000000000073)
        {

          return 4;
        }

        else
        {
          v10 = sub_1D5616168();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1D4FD1720(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461727564;
      break;
    case 2:
      result = 0x4C5255736C68;
      break;
    case 3:
      result = 0x4177656976657270;
      break;
    case 4:
      result = 0x65756C6156776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FD17CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FD1578(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FD17F4(uint64_t a1)
{
  v2 = sub_1D4FD1ACC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FD1830(uint64_t a1)
{
  v2 = sub_1D4FD1ACC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MovieClip.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED2F0, &unk_1D5624B00);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4FD1ACC();
  sub_1D56163D8();
  v22 = 0;
  sub_1D5616028();
  if (!v2)
  {
    v21 = 1;
    sub_1D5616048();
    v11 = type metadata accessor for MovieClip(0);
    v20 = 2;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_1_41();
    sub_1D4FD2544(v12, v13, MEMORY[0x1E6968FB8]);
    OUTLINED_FUNCTION_7_7();
    sub_1D5616068();
    v19 = 3;
    sub_1D56140F8();
    OUTLINED_FUNCTION_0_41();
    sub_1D4FD2544(v14, v15, MEMORY[0x1E6976F70]);
    OUTLINED_FUNCTION_7_7();
    sub_1D5616068();
    v18 = *(v3 + *(v11 + 32));
    v17[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F2FBD4();
    OUTLINED_FUNCTION_7_7();
    sub_1D56160C8();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1D4FD1ACC()
{
  result = qword_1EC7ED2F8;
  if (!qword_1EC7ED2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2F8);
  }

  return result;
}

void MovieClip.hash(into:)(uint64_t a1)
{
  sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v33 = v4;
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v32 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_31();
  v9 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + 24) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v20 = *(v1 + 16);
    OUTLINED_FUNCTION_27();
    if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    MEMORY[0x1DA6EC100](v21);
  }

  v22 = type metadata accessor for MovieClip(0);
  sub_1D4F1C460(v1 + *(v22 + 24), v19, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v19, 1, v9);
  if (v23)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v11 + 32))(v15, v19, v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_41();
    sub_1D4FD2544(v24, v25, MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v11 + 8))(v15, v9);
  }

  sub_1D4F1C460(v1 + *(v22 + 28), v2, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v26 = v34;
  OUTLINED_FUNCTION_57(v2, 1, v34);
  if (v23)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v28 = v32;
    v27 = v33;
    (*(v33 + 32))(v32, v2, v26);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_41();
    sub_1D4FD2544(v29, v30, MEMORY[0x1E6976F78]);
    sub_1D5614CB8();
    (*(v27 + 8))(v28, v26);
  }

  sub_1D4F31AC0();
}

uint64_t MovieClip.hashValue.getter()
{
  sub_1D56162D8();
  MovieClip.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t MovieClip.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED308, &qword_1D5624B10);
  OUTLINED_FUNCTION_4();
  v39 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_10_31();
  v15 = type metadata accessor for MovieClip(v14);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4FD1ACC();
  v40 = v2;
  v20 = v42;
  sub_1D5616398();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v11;
  v42 = v7;
  v48 = 0;
  v22 = sub_1D5615F38();
  v24 = v23;
  *v19 = v22;
  *(v19 + 8) = v23;
  v47 = 1;
  *(v19 + 16) = sub_1D5615F58();
  *(v19 + 24) = v25 & 1;
  sub_1D560C0A8();
  v46 = 2;
  OUTLINED_FUNCTION_1_41();
  sub_1D4FD2544(v26, v27, MEMORY[0x1E6968FD0]);
  v37 = v19;
  v28 = v21;
  sub_1D5615F78();
  v36 = v24;
  v29 = v37;
  sub_1D4FD23EC(v28, v37 + v15[6], &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D56140F8();
  v45 = 3;
  OUTLINED_FUNCTION_0_41();
  sub_1D4FD2544(v30, v31, MEMORY[0x1E6976F88]);
  v32 = v42;
  sub_1D5615F78();
  sub_1D4FD23EC(v32, v29 + v15[7], &qword_1EC7E9CA0, &unk_1D561A0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  v44 = 4;
  sub_1D4F31CF4();
  sub_1D5615FD8();
  v33 = OUTLINED_FUNCTION_5_26();
  v34(v33);
  *(v29 + v15[8]) = v43;
  sub_1D4FD243C(v29, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D4FD24A0(v29);
}

uint64_t sub_1D4FD23B0(uint64_t a1)
{
  sub_1D56162D8();
  MovieClip.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t sub_1D4FD23EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1D4FD243C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MovieClip(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FD24A0(uint64_t a1)
{
  v2 = type metadata accessor for MovieClip(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4FD2544(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D4FD25B4(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD52730, MEMORY[0x1E69E63B0]);
    if (v2 <= 0x3F)
    {
      sub_1D4FD26D8(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
      if (v3 <= 0x3F)
      {
        sub_1D4FD26D8(319, &qword_1EDD5F190, MEMORY[0x1E6976F68]);
        if (v4 <= 0x3F)
        {
          sub_1D4E5CF94(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D4FD26D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MovieClip.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4FD280C()
{
  result = qword_1EC7ED318;
  if (!qword_1EC7ED318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED318);
  }

  return result;
}

unint64_t sub_1D4FD2864()
{
  result = qword_1EC7ED320;
  if (!qword_1EC7ED320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED320);
  }

  return result;
}

unint64_t sub_1D4FD28BC()
{
  result = qword_1EC7ED328;
  if (!qword_1EC7ED328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED328);
  }

  return result;
}

uint64_t type metadata accessor for UnknownMusicItem(uint64_t a1)
{
  result = qword_1EDD5C4C0;
  if (!qword_1EDD5C4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4FD2984@<X0>(uint64_t *x8_0@<X8>)
{
  v3 = type metadata accessor for UnknownMusicItemPropertyProvider(0);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  v7 = sub_1D560E728();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_5();
  v8 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1D560F0F8();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = sub_1D560F148();
  MEMORY[0x1EEE9AC00](v22 - 8);
  OUTLINED_FUNCTION_5();
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v42 = v24;
  v43 = v23;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  (*(v17 + 104))(v21, *MEMORY[0x1E69755D0], v15);
  sub_1D560F118();
  if (qword_1EC7E8AB0 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v8, qword_1EC87BED0);
  (*(v10 + 16))(v14, v28, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v29 = sub_1D560DB08();
  OUTLINED_FUNCTION_4();
  v31 = v30;
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D561C050;
  (*(v31 + 104))(v33 + v32, *MEMORY[0x1E6975060], v29);
  sub_1D560E718();
  sub_1D560D798();
  sub_1D5610018();
  sub_1D5614A88();
  v34 = MEMORY[0x1E69E7CC0];
  v35 = OUTLINED_FUNCTION_3_28();
  v36 = OUTLINED_FUNCTION_3_28();
  v37 = OUTLINED_FUNCTION_3_28();
  v38 = OUTLINED_FUNCTION_3_28();
  *v6 = v34;
  (*(v42 + 16))(&v6[v3[5]], v27, v43);
  v39 = &v6[v3[7]];
  *v39 = 0;
  *(v39 + 1) = 0;
  *&v6[v3[8]] = v35;
  *&v6[v3[9]] = v36;
  *&v6[v3[10]] = v37;
  *&v6[v3[11]] = v38;
  v45[3] = v3;
  v45[4] = sub_1D4FD36C8(&qword_1EC7ED348, type metadata accessor for UnknownMusicItemPropertyProvider, &unk_1D5659D74);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
  sub_1D4FD3710(v6, boxed_opaque_existential_0);
  sub_1D4FD2E3C(v45, x8_0);
  sub_1D4FD3774(v6);
  return (*(v42 + 8))(v27, v43);
}

uint64_t sub_1D4FD2E3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v11 = sub_1D560D708();
  v13 = v12;
  (*(v6 + 8))(v10, v4);
  *a2 = v11;
  a2[1] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for UnknownMusicItem(0);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D4FD2F6C()
{
  v0 = sub_1D5610F88();
  __swift_allocate_value_buffer(v0, qword_1EC87BE98);
  v1 = __swift_project_value_buffer(v0, qword_1EC87BE98);
  v2 = *MEMORY[0x1E69760C0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1D4FD2FF4(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownMusicItem(0);

  return sub_1D5611A78();
}

uint64_t sub_1D4FD3070(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for UnknownMusicItem(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_2_25();
  sub_1D4FD36C8(v1, v2, MEMORY[0x1E6976328]);
  return sub_1D5614CB8();
}

uint64_t sub_1D4FD30F0()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for UnknownMusicItem(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_2_25();
  sub_1D4FD36C8(v0, v1, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4FD318C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D4FD31C8(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5611AB8();
  sub_1D4FD36C8(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4FD326C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1D4FD32C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x1E6974FD0], v0);
  qword_1EC87BEB0 = v3;
  return result;
}

uint64_t sub_1D4FD33A4()
{
  if (qword_1EC7E8AA0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D4FD3404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1D5611AB8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4FD3478()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC87BEB8);
  __swift_project_value_buffer(v0, qword_1EC87BEB8);
  type metadata accessor for UnknownMusicItem(0);
  sub_1D4FD36C8(&qword_1EC7ED340, type metadata accessor for UnknownMusicItem, &unk_1D5624E74);
  return sub_1D560D988();
}

uint64_t sub_1D4FD3510@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E8AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D560D9A8();
  v3 = __swift_project_value_buffer(v2, qword_1EC87BEB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D4FD3600()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC87BED0);
  v1 = __swift_project_value_buffer(v0, qword_1EC87BED0);
  if (qword_1EC7E8AA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC87BEB8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D4FD36C8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4FD3710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownMusicItemPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FD3774(uint64_t a1)
{
  v2 = type metadata accessor for UnknownMusicItemPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s14descr1F509E369C4KindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE7)
  {
    if (a2 + 25 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 25) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 26;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v5 = v6 - 26;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr1F509E369C4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE6)
  {
    v6 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4FD3938()
{
  result = qword_1EC7ED350;
  if (!qword_1EC7ED350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED350);
  }

  return result;
}

unint64_t sub_1D4FD398C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D5616208();

  if (v2 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D4FD39E0(char a1)
{
  result = 0x6369666974726563;
  switch(a1)
  {
    case 1:
      result = 0x747265636E6F63;
      break;
    case 2:
      result = 6386787;
      break;
    case 3:
      result = 0x61776D6F74737563;
      break;
    case 4:
      result = 0x6964657263627564;
      break;
    case 5:
      v3 = 0x646F73697065;
      goto LABEL_18;
    case 6:
      result = 0x6265646F73697065;
      break;
    case 7:
      v3 = 0x727574616566;
LABEL_18:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 8:
      result = 0x7572646564697567;
      break;
    case 9:
      result = 0x6177646564697567;
      break;
    case 10:
      result = 0x76697372656D6D69;
      break;
    case 11:
      result = 1869049708;
      break;
    case 12:
      result = 0x697461746964656DLL;
      break;
    case 13:
      result = 0x77656976657270;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x746D6172676F7270;
      break;
    case 17:
      result = 0x6F6D6F7270;
      break;
    case 18:
      result = 0x676E69746172;
      break;
    case 19:
      result = 0x7061636572;
      break;
    case 20:
      result = 0x6F626E6F73616573;
      break;
    case 21:
      result = 0x74726F6873;
      break;
    case 22:
      result = 0x746C616963657073;
      break;
    case 23:
      result = 0x72656C69617274;
      break;
    case 24:
      result = 0x656C696172747674;
      break;
    case 25:
      result = 0x676E696E726177;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D4FD3CBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D4FD398C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D4FD3CEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4FD39E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D4FD3E00()
{
  result = qword_1EC7ED358;
  if (!qword_1EC7ED358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED360, qword_1D5624F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED358);
  }

  return result;
}

unint64_t sub_1D4FD3E64()
{
  result = qword_1EC7ED368;
  if (!qword_1EC7ED368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED368);
  }

  return result;
}

void MusicLibraryPlaylistEditViewModel.__allocating_init(_:author:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = OUTLINED_FUNCTION_201();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_122_3();
  sub_1D4E69970(v28, v20, &unk_1EC7F1990, &unk_1D561CEF0);
  sub_1D4E69970(v26, v32, &unk_1EC7ED370, &unk_1D5624FE0);
  type metadata accessor for MusicLibraryPlaylistEditViewModel(0);
  swift_allocObject();
  sub_1D4FD42FC(v20, MEMORY[0x1E69E7CC0], v32, v24);
  sub_1D4E50004(v26, &unk_1EC7ED370, &unk_1D5624FE0);
  sub_1D4E50004(v28, &unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_46();
}

void MusicLibraryPlaylistEditViewModel.__allocating_init<A>(_:entries:author:library:)()
{
  OUTLINED_FUNCTION_47();
  v29 = v2;
  v30 = v0;
  v27 = v4;
  v28 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v26 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_83_5();
  v13 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v25 - v21;
  v23 = sub_1D5614898();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v22, v10, v23);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
  (*(v15 + 16))(v18, v8, v13);
  sub_1D4E69970(v6, v1, &unk_1EC7ED370, &unk_1D5624FE0);
  sub_1D4FD4280(v22, v18, v1, v28, v27, v29);
  sub_1D4E50004(v6, &unk_1EC7ED370, &unk_1D5624FE0);
  (*(v15 + 8))(v8, v13);
  (*(v24 + 8))(v26, v23);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FD42FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v95 = a3;
  v96 = a1;
  v91 = a2;
  v92 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v92);
  v80 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v94 = &v76 - v9;
  v10 = sub_1D5614898();
  v79 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D56131C8();
  v89 = *(v12 - 8);
  v90 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v88 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v85 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED380, &qword_1D5624FF0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v76 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED388, &qword_1D5624FF8);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v76 - v24;
  v26 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__entries;
  v98[0] = MEMORY[0x1E69E7CC0];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED398, &unk_1D5625000);
  sub_1D560C8B8();
  v82 = v26;
  v83 = v23;
  (*(v23 + 32))(v5 + v26, v25, v22);
  *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_initialEntries) = 0;
  v27 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingTracklist;
  v98[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB720, &unk_1D561E890);
  sub_1D560C8B8();
  (*(v19 + 32))(v5 + v27, v21, v18);
  v28 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist;
  v29 = v10;
  __swift_storeEnumTagSinglePayload(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist, 1, 1, v10);
  *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver) = 0;
  *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__coverArtworkRecipes) = 0;
  *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) = 0;
  swift_beginAccess();
  sub_1D4FD625C(v96, v5 + v28);
  swift_endAccess();
  *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_library) = a4;

  v93 = a4;
  v30 = sub_1D560EFB8();
  if (!v30)
  {
    goto LABEL_18;
  }

  v31 = v30;
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
LABEL_18:
    result = sub_1D5615E08();
    __break(1u);
    return result;
  }

  v33 = v32;
  v34 = v85;
  sub_1D4E69970(v96, v85, &unk_1EC7F1990, &unk_1D561CEF0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v10);
  v36 = MEMORY[0x1E6976988];
  v37 = v94;
  v86 = v31;
  v84 = v22;
  if (EnumTagSinglePayload == 1)
  {
    swift_unknownObjectRetain();
    sub_1D4E50004(v34, &unk_1EC7F1990, &unk_1D561CEF0);
    v38 = 0;
  }

  else
  {
    v39 = *MEMORY[0x1E6976988];
    v77 = v33;
    v40 = v34;
    v41 = v89;
    v42 = v90;
    v43 = v79;
    v44 = v78;
    v45 = v87;
    (*(v89 + 104))(v87, v39, v90);
    v46 = v88;
    (*(v41 + 16))(v88, v45, v42);
    (*(v43 + 16))(v44, v40, v29);
    swift_unknownObjectRetain();
    sub_1D4ECAE6C(v44, v46);
    v38 = v47;
    v48 = v42;
    v37 = v94;
    (*(v41 + 8))(v45, v48);
    v49 = v40;
    v33 = v77;
    (*(v43 + 8))(v49, v29);
    v36 = MEMORY[0x1E6976988];
  }

  v50 = v91;
  if (v91)
  {
    v51 = v82;
    swift_beginAccess();
    v52 = *(v83 + 8);

    v52(v5 + v51, v84);
    v97 = v50;
    sub_1D560C8B8();
    swift_endAccess();
  }

  sub_1D4E69970(v95, v37, &unk_1EC7ED370, &unk_1D5624FE0);
  if (__swift_getEnumTagSinglePayload(v37, 1, v92) == 1)
  {
    sub_1D4E50004(v37, &unk_1EC7ED370, &unk_1D5624FE0);
    v53 = 0;
  }

  else
  {
    v54 = *v36;
    v55 = v89;
    v56 = v90;
    v57 = v87;
    (*(v89 + 104))(v87, v54, v90);
    (*(v55 + 16))(v88, v57, v56);
    sub_1D4FE1CA8(v37, v80, type metadata accessor for SocialProfile);
    sub_1D4ECAE94();
    v53 = v58;
    (*(v55 + 8))(v57, v56);
    sub_1D4FE1DDC();
  }

  v59 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController);
  v60 = v38;
  swift_unknownObjectRetain();
  v61 = sub_1D545D1EC(v38, 0, v53, v33);
  *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) = v61;
  v62 = v61;
  v63 = sub_1D4F636B4();
  v65 = v64;
  if (qword_1EC7E8DE8 != -1)
  {
    swift_once();
  }

  v66 = sub_1D560C758();
  __swift_project_value_buffer(v66, qword_1EC87C128);

  v67 = sub_1D560C738();
  v68 = sub_1D56156E8();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v98[0] = v70;
    *v69 = 136446210;
    v71 = sub_1D4E6835C(v63, v65, v98);

    *(v69 + 4) = v71;
    _os_log_impl(&dword_1D4E3F000, v67, v68, "<MusicLibraryPlaylistEditViewModel: %{public}s> Initialized underlying playlist edit view model.", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x1DA6ED200](v70, -1, -1);
    MEMORY[0x1DA6ED200](v69, -1, -1);
  }

  else
  {
  }

  sub_1D5611CC8();
  v72 = [objc_opt_self() playlistDidChangeNotificationName];
  swift_allocObject();
  swift_weakInit();
  v73 = v62;

  v74 = sub_1D5611CA8();

  swift_unknownObjectRelease_n();

  sub_1D4E50004(v95, &unk_1EC7ED370, &unk_1D5624FE0);
  sub_1D4E50004(v96, &unk_1EC7F1990, &unk_1D561CEF0);

  *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver) = v74;

  return v5;
}

uint64_t sub_1D4FD4D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v99 = a6;
  v112 = a4;
  v113 = a3;
  v114 = a2;
  v115 = a1;
  v108 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v108);
  v100 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v109 = v91 - v11;
  v12 = sub_1D56158D8();
  v13 = *(v12 - 8);
  v110 = v12;
  v111 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v102 = v91 - v15;
  v103 = a5;
  v98 = *(a5 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v96 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v97 = v91 - v18;
  v19 = sub_1D5614898();
  v93 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v101 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D56131C8();
  v106 = *(v21 - 8);
  v107 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v105 = v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v104 = v91 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = v91 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED380, &qword_1D5624FF0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v91 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED388, &qword_1D5624FF8);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = v91 - v34;
  v36 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__entries;
  v118[0] = MEMORY[0x1E69E7CC0];
  v91[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED398, &unk_1D5625000);
  sub_1D560C8B8();
  v94 = v33;
  v37 = v33;
  v38 = v19;
  v39 = *(v37 + 32);
  v92 = v36;
  v95 = v32;
  v39(v7 + v36, v35, v32);
  *(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_initialEntries) = 0;
  v40 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingTracklist;
  v118[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB720, &unk_1D561E890);
  sub_1D560C8B8();
  (*(v29 + 32))(v7 + v40, v31, v28);
  v41 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist;
  __swift_storeEnumTagSinglePayload(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist, 1, 1, v19);
  *(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver) = 0;
  *(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__coverArtworkRecipes) = 0;
  *(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) = 0;
  swift_beginAccess();
  sub_1D4FD625C(v115, v7 + v41);
  swift_endAccess();
  *(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_library) = v112;

  if (!sub_1D560EFB8())
  {
    goto LABEL_19;
  }

  objc_opt_self();
  v42 = swift_dynamicCastObjCClass();
  if (!v42)
  {
    swift_unknownObjectRelease();
LABEL_19:
    result = sub_1D5615E08();
    __break(1u);
    return result;
  }

  v43 = v42;
  sub_1D4E69970(v115, v27, &unk_1EC7F1990, &unk_1D561CEF0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v19);
  v45 = MEMORY[0x1E6976988];
  if (EnumTagSinglePayload == 1)
  {
    swift_unknownObjectRetain();
    sub_1D4E50004(v27, &unk_1EC7F1990, &unk_1D561CEF0);
    v101 = 0;
  }

  else
  {
    v47 = v106;
    v46 = v107;
    v48 = v104;
    (*(v106 + 104))(v104, *MEMORY[0x1E6976988], v107);
    v49 = v105;
    (*(v47 + 16))(v105, v48, v46);
    v50 = v93;
    v51 = v101;
    (*(v93 + 16))(v101, v27, v38);
    swift_unknownObjectRetain();
    sub_1D4ECAE6C(v51, v49);
    v101 = v52;
    v53 = v48;
    v45 = MEMORY[0x1E6976988];
    (*(v47 + 8))(v53, v46);
    (*(v50 + 8))(v27, v38);
  }

  v55 = v102;
  v54 = v103;
  v57 = v110;
  v56 = v111;
  (*(v111 + 16))(v102, v114, v110);
  if (__swift_getEnumTagSinglePayload(v55, 1, v54) == 1)
  {
    (*(v56 + 8))(v55, v57);
  }

  else
  {
    v58 = v98;
    v59 = v97;
    (*(v98 + 32))(v97, v55, v54);
    (*(v58 + 16))(v96, v59, v54);
    sub_1D5614828();
    v60 = sub_1D5615318();
    v61 = v92;
    swift_beginAccess();
    (*(v94 + 8))(v7 + v61, v95);
    v117 = v60;
    sub_1D560C8B8();
    swift_endAccess();
    (*(v58 + 8))(v59, v54);
  }

  v62 = v109;
  sub_1D4E69970(v113, v109, &unk_1EC7ED370, &unk_1D5624FE0);
  if (__swift_getEnumTagSinglePayload(v62, 1, v108) == 1)
  {
    sub_1D4E50004(v62, &unk_1EC7ED370, &unk_1D5624FE0);
    v63 = 0;
  }

  else
  {
    v64 = v106;
    v65 = v57;
    v66 = v104;
    v67 = v43;
    v68 = v107;
    (*(v106 + 104))(v104, *v45, v107);
    (*(v64 + 16))(v105, v66, v68);
    sub_1D4FE1CA8(v62, v100, type metadata accessor for SocialProfile);
    sub_1D4ECAE94();
    v63 = v69;
    v70 = v66;
    v57 = v65;
    v71 = v68;
    v43 = v67;
    (*(v64 + 8))(v70, v71);
    sub_1D4FE1DDC();
  }

  v72 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController);
  v73 = v101;
  v74 = v101;
  swift_unknownObjectRetain();
  v75 = sub_1D545D1EC(v73, 0, v63, v43);
  *(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) = v75;
  v76 = v75;
  v77 = sub_1D4F636B4();
  v79 = v78;
  if (qword_1EC7E8DE8 != -1)
  {
    swift_once();
  }

  v80 = sub_1D560C758();
  __swift_project_value_buffer(v80, qword_1EC87C128);

  v81 = sub_1D560C738();
  v82 = sub_1D56156E8();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v118[0] = v84;
    *v83 = 136446210;
    v85 = sub_1D4E6835C(v77, v79, v118);

    *(v83 + 4) = v85;
    _os_log_impl(&dword_1D4E3F000, v81, v82, "<MusicLibraryPlaylistEditViewModel: %{public}s> Initialized underlying playlist edit view model.", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v84);
    v86 = v84;
    v57 = v110;
    MEMORY[0x1DA6ED200](v86, -1, -1);
    MEMORY[0x1DA6ED200](v83, -1, -1);
  }

  else
  {
  }

  sub_1D5611CC8();
  v87 = [objc_opt_self() playlistDidChangeNotificationName];
  swift_allocObject();
  swift_weakInit();
  v88 = v76;

  v89 = sub_1D5611CA8();

  swift_unknownObjectRelease_n();

  sub_1D4E50004(v113, &unk_1EC7ED370, &unk_1D5624FE0);
  (*(v111 + 8))(v114, v57);
  sub_1D4E50004(v115, &unk_1EC7F1990, &unk_1D561CEF0);

  *(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver) = v89;

  return v7;
}

uint64_t sub_1D4FD5A10()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_127_3(v0);
}

uint64_t sub_1D4FD5A90()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59(*(v0 + 40) + 16, v0 + 16);
  if (swift_weakLoadStrong())
  {
    sub_1D4FDCFC4();
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t MusicLibraryPlaylistEditViewModel.__allocating_init(_:underlyingPlaylist:underlyingSectionedCollection:author:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = swift_allocObject();
  MusicLibraryPlaylistEditViewModel.init(_:underlyingPlaylist:underlyingSectionedCollection:author:library:)();
  return v5;
}

void MusicLibraryPlaylistEditViewModel.init(_:underlyingPlaylist:underlyingSectionedCollection:author:library:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v69 = v4;
  v70 = v5;
  v67 = v6;
  v71 = v7;
  v66 = type metadata accessor for SocialProfile(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v64 = v10 - v9;
  OUTLINED_FUNCTION_70_0();
  v65 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v63 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  v62 = v13 - v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  v61 = v60 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v60 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED380, &qword_1D5624FF0);
  OUTLINED_FUNCTION_4();
  v23 = v22;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v60 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED388, &qword_1D5624FF8);
  OUTLINED_FUNCTION_4();
  v29 = v28;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v60 - v31;
  v33 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__entries;
  v73[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED398, &unk_1D5625000);
  sub_1D560C8B8();
  (*(v29 + 32))(v1 + v33, v32, v27);
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_initialEntries) = 0;
  v34 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingTracklist;
  v73[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB720, &unk_1D561E890);
  sub_1D560C8B8();
  (*(v23 + 32))(v1 + v34, v26, v21);
  v35 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist;
  v36 = sub_1D5614898();
  __swift_storeEnumTagSinglePayload(v1 + v35, 1, 1, v36);
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__coverArtworkRecipes) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) = 0;
  OUTLINED_FUNCTION_54_0(v1 + v35, v73);
  sub_1D4FD625C(v71, v1 + v35);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_library) = v3;

  v68 = v3;
  if (!sub_1D560EFB8())
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (!v37)
  {
    swift_unknownObjectRelease();
LABEL_14:
    OUTLINED_FUNCTION_53_9();
    v60[0] = 73;
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_43_13();
    sub_1D5615E08();
    __break(1u);
    return;
  }

  v38 = v37;
  v39 = v69;
  v40 = v67;
  v41 = v20;
  if (v69)
  {
    ObjectType = swift_getObjectType();
    v43 = v39;
  }

  else
  {
    v43 = 0;
    ObjectType = 0;
    v73[1] = 0;
    v73[2] = 0;
  }

  v73[0] = v43;
  v73[3] = ObjectType;
  if (v40)
  {
    v44 = swift_getObjectType();
    v45 = v40;
  }

  else
  {
    v45 = 0;
    v44 = 0;
    v72[1] = 0;
    v72[2] = 0;
  }

  v72[0] = v45;
  v72[3] = v44;
  sub_1D4E69970(v70, v20, &unk_1EC7ED370, &unk_1D5624FE0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v66) == 1)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D4E50004(v20, &unk_1EC7ED370, &unk_1D5624FE0);
    v46 = 0;
  }

  else
  {
    v47 = *MEMORY[0x1E6976988];
    v66 = v38;
    v48 = v63;
    v49 = v61;
    v50 = v65;
    (*(v63 + 104))(v61, v47, v65);
    v51 = OUTLINED_FUNCTION_0_33();
    v52(v51);
    v60[1] = v41;
    sub_1D4FE1CA8(v41, v64, type metadata accessor for SocialProfile);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D4ECAE94();
    v46 = v53;
    (*(v48 + 8))(v49, v50);
    v38 = v66;
    sub_1D4FE1DDC();
  }

  v54 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController);
  swift_unknownObjectRetain();
  v55 = sub_1D4FE056C(v73, v72, v46, v38);
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) = v55;
  swift_unknownObjectRetain();
  v56 = v55;
  sub_1D4FD62CC();
  sub_1D5611CC8();
  v57 = [objc_opt_self() playlistDidChangeNotificationName];
  swift_allocObject();
  swift_weakInit();
  v58 = v56;

  OUTLINED_FUNCTION_176();
  v59 = sub_1D5611CA8();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();

  sub_1D4E50004(v70, &unk_1EC7ED370, &unk_1D5624FE0);
  sub_1D4E50004(v71, &unk_1EC7F1990, &unk_1D561CEF0);

  *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver) = v59;

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FD625C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FD62CC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_127_3(v0);
}

uint64_t sub_1D4FD634C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4FD63A4();
  *a1 = result;
  return result;
}

uint64_t sub_1D4FD63A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_159();
  sub_1D560C8F8();

  return v1;
}

uint64_t sub_1D4FD6430()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED458, &qword_1D5625238);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_100_2();
  v3(v2);
  OUTLINED_FUNCTION_54_0(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__entries, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED388, &qword_1D5624FF8);
  sub_1D560C8D8();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_15_8();
  return v5(v4);
}

uint64_t sub_1D4FD6530@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4FD6588();
  *a1 = result;
  return result;
}

uint64_t sub_1D4FD6588()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_159();
  sub_1D560C8F8();

  return v1;
}

uint64_t sub_1D4FD65F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_91_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v12 = OUTLINED_FUNCTION_61();
  v13(v12);
  return a7(v7);
}

uint64_t sub_1D4FD66C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED450, &qword_1D5625230);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_100_2();
  v3(v2);
  OUTLINED_FUNCTION_54_0(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingTracklist, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED380, &qword_1D5624FF0);
  sub_1D560C8D8();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_15_8();
  return v5(v4);
}

uint64_t sub_1D4FD67C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist;
  OUTLINED_FUNCTION_59(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist, v5);
  return sub_1D4E69970(v1 + v3, a1, &unk_1EC7F1990, &unk_1D561CEF0);
}

uint64_t sub_1D4FD6828(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist;
  OUTLINED_FUNCTION_54_0(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist, v5);
  sub_1D4FE1E30(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1D4FD6890()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) underlyingEditController];

  return v1;
}

uint64_t sub_1D4FD68E8(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1D4FD68D0();
  a1[1] = v3;
  return OUTLINED_FUNCTION_88_5();
}

uint64_t sub_1D4FD6944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_61();
  return a5(v6);
}

uint64_t sub_1D4FD69A0(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1D4FD6988();
  a1[1] = v3;
  return OUTLINED_FUNCTION_88_5();
}

uint64_t sub_1D4FD69FC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_61();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_61();
    return a3(v6);
  }
}

uint64_t sub_1D4FD6A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  OUTLINED_FUNCTION_91_5();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1D4E69970(v5, &v12 - v9, &unk_1EC7F1990, &unk_1D561CEF0);
  return a5(v10);
}

void sub_1D4FD6B1C()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  v8 = sub_1D560E728();
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1D560D9A8();
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  v15 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v47 - v23;
  v25 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) parentPlaylist];
  if (v25)
  {
    v52 = v25;
    v50 = [v25 legacyIdentifierSet];
    sub_1D560D968();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v26 = sub_1D560DB08();
    v51 = v3;
    v27 = v26;
    OUTLINED_FUNCTION_4();
    v48 = v1;
    v49 = v15;
    v29 = v28;
    v31 = *(v30 + 72);
    v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1D5621D90;
    v47 = v21;
    v34 = *(v29 + 104);
    v35 = OUTLINED_FUNCTION_96_2();
    v34(v35);
    (v34)(v33 + v32 + v31, *MEMORY[0x1E6975030], v27);
    sub_1D560E718();
    v36 = sub_1D560D9E8();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v36);
    sub_1D4F40E88(v50, v48, v12, v7, v24);
    v37 = v49;
    (*(v17 + 16))(v47, v24, v49);
    v38 = v52;
    v39 = [v52 underlyingObject];
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    v40 = v51;
    sub_1D56144C8();

    (*(v17 + 8))(v24, v37);
    v41 = sub_1D5614898();
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    sub_1D5614898();
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_46();

    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  }
}

void sub_1D4FD6EC0()
{
  OUTLINED_FUNCTION_47();
  v33 = v0;
  v3 = v2;
  v4 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v31 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  v20 = OUTLINED_FUNCTION_99_4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_122_3();
  v32 = *(v33 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
  v33 = v3;
  sub_1D4E69970(v3, v1, &unk_1EC7F1990, &unk_1D561CEF0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    sub_1D4E50004(v1, &unk_1EC7F1990, &unk_1D561CEF0);
    v24 = 0;
  }

  else
  {
    (*(v12 + 104))(v19, *MEMORY[0x1E6976988], v10);
    v25 = OUTLINED_FUNCTION_45_3();
    v26(v25);
    (*(v31 + 16))(v9, v1, v4);
    sub_1D4ECAE6C(v9, v16);
    v24 = v27;
    (*(v12 + 8))(v19, v10);
    v28 = OUTLINED_FUNCTION_176();
    v29(v28);
  }

  [v32 setParentPlaylist_];

  sub_1D4E50004(v33, &unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_46();
}

void (*sub_1D4FD715C(void *a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_125_3(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = __swift_coroFrameAllocStub(v4);
  sub_1D4FD6B1C();
  return sub_1D4FD71F0;
}

void sub_1D4FD71F0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1D4E69970(*(a1 + 16), v2, &unk_1EC7F1990, &unk_1D561CEF0);
    sub_1D4FD6EC0();
    sub_1D4E50004(v3, &unk_1EC7F1990, &unk_1D561CEF0);
  }

  else
  {
    sub_1D4FD6EC0();
  }

  free(v3);

  free(v2);
}

id (*sub_1D4FD72D4(void *a1))(void **a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
  *a1 = v3;
  OUTLINED_FUNCTION_115_0([v3 addInsertedTracksToLibrary]);
  return sub_1D4FD732C;
}

void sub_1D4FD7340(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D4FD73B0(v1);
}

id sub_1D4FD7370()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) userImage];

  return v1;
}

void sub_1D4FD73B0(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) setUserImage_];
}

uint64_t sub_1D4FD7400(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
  a1[1] = v3;
  *a1 = [v3 userImage];
  return OUTLINED_FUNCTION_88_5();
}

void sub_1D4FD7460(id *a1)
{
  v1 = *a1;
  [a1[1] setUserImage_];
}

void (*sub_1D4FD74C0(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_125_3(a1);
  v1 = sub_1D4FD74A8();
  OUTLINED_FUNCTION_115_0(v1);
  return sub_1D4FD7500;
}

void sub_1D4FD7540(char a1, SEL *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
  if (a1 == 2)
  {
    v5 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v5 = sub_1D5615828();
  }

  v6 = v5;
  [v4 *a2];
}

void (*sub_1D4FD75E0(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_125_3(a1);
  v1 = sub_1D4FD7528();
  OUTLINED_FUNCTION_115_0(v1);
  return sub_1D4FD7620;
}

uint64_t sub_1D4FD7654(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) *a1];
  if (!v2)
  {
    return 2;
  }

  v3 = v2;
  v4 = [v2 BOOLValue];

  return v4;
}

void (*sub_1D4FD76C4(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_125_3(a1);
  v1 = sub_1D4FD7648();
  OUTLINED_FUNCTION_115_0(v1);
  return sub_1D4FD7704;
}

uint64_t sub_1D4FD7738(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) *a1];
  if (v2)
  {
    v3 = v2;
    sub_1D5614D68();
  }

  return OUTLINED_FUNCTION_71();
}

void sub_1D4FD77B0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
  if (a2)
  {
    v6 = sub_1D5614D38();
  }

  else
  {
    v6 = 0;
  }

  [v5 *a3];
}

uint64_t sub_1D4FD7830(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1D4FD772C();
  a1[1] = v3;
  return OUTLINED_FUNCTION_88_5();
}

uint64_t sub_1D4FD78F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__coverArtworkRecipes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1D4FD79A8()
{
  OUTLINED_FUNCTION_60();
  v1[22] = v0;
  v2 = sub_1D560C998();
  v1[23] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[24] = v3;
  v1[25] = OUTLINED_FUNCTION_127();
  v4 = sub_1D56131C8();
  v1[26] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[27] = v5;
  v1[28] = OUTLINED_FUNCTION_167();
  v1[29] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v6);
  v1[30] = OUTLINED_FUNCTION_127();
  v7 = sub_1D5614898();
  v1[31] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[32] = v8;
  v1[33] = OUTLINED_FUNCTION_167();
  v1[34] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4FD7B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_68_1();
  a23 = v29;
  a24 = v30;
  OUTLINED_FUNCTION_76_2();
  a22 = v28;
  if (qword_1EC7E8DE8 != -1)
  {
    swift_once();
  }

  v31 = v28[22];
  v32 = sub_1D560C758();
  v28[35] = OUTLINED_FUNCTION_62_4(v32, qword_1EC87C128);

  v33 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_129_2())
  {
    OUTLINED_FUNCTION_142();
    v34 = OUTLINED_FUNCTION_37_0();
    a13 = v34;
    *v31 = 136446210;
    v35 = sub_1D4F636B4();
    v37 = sub_1D4E6835C(v35, v36, &a13);

    *(v31 + 4) = v37;
    OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v38, v39, "<MusicLibraryPlaylistEditViewModel: %{public}s>  Begin editing on playlist edit view model.");
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  v40 = v28[30];
  v41 = v28[31];
  v42 = v28[22];
  *(v42 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) = 1;
  v43 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist;
  OUTLINED_FUNCTION_59(v42 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist, (v28 + 18));
  sub_1D4E69970(v42 + v43, v40, &unk_1EC7F1990, &unk_1D561CEF0);
  v44 = OUTLINED_FUNCTION_45_1();
  if (__swift_getEnumTagSinglePayload(v44, v45, v41) == 1)
  {
    sub_1D4E50004(v28[30], &unk_1EC7F1990, &unk_1D561CEF0);
LABEL_12:
    OUTLINED_FUNCTION_86_6();
    v69 = v28[22];
    *(v69 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_initialEntries) = sub_1D4FD63A4();

    v28[2] = v28;
    OUTLINED_FUNCTION_36_12();
    v70 = swift_continuation_init();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_11_15(v71);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_4_27();
    v28[13] = v72;
    v28[14] = v70;
    v73 = OUTLINED_FUNCTION_63_7();
    [v73 v74];
    OUTLINED_FUNCTION_63_0();

    return MEMORY[0x1EEE6DEC8](v75);
  }

  (*(v28[32] + 32))(v28[34], v28[30], v28[31]);
  v46 = *(sub_1D4FD63A4() + 16);

  if (!v46)
  {
    (*(v28[32] + 8))(v28[34], v28[31]);
    goto LABEL_12;
  }

  v47 = v28[33];
  v49 = v28[28];
  v48 = v28[29];
  v50 = v28[26];
  v51 = v28[27];
  v52 = v28[24];
  v79 = v28[23];
  v80 = v28[25];
  v78 = v28[22];
  OUTLINED_FUNCTION_89_1();
  v53(v48);
  (*(v51 + 16))(v49, v48, v50);
  v54 = OUTLINED_FUNCTION_71();
  v55(v54);
  sub_1D4ECAE6C(v47, v49);
  v28[36] = v56;
  (*(v51 + 8))(v48, v50);
  v57 = sub_1D4FD63A4();
  v28[21] = v57;
  v28[37] = v57;
  (*(v52 + 104))(v80, *MEMORY[0x1E69E7F88], v79);
  v58 = swift_task_alloc();
  v28[38] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED398, &unk_1D5625000);
  v28[39] = sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
  sub_1D4FE2138(&qword_1EC7ED3E8, MEMORY[0x1E69E6328]);
  OUTLINED_FUNCTION_78_6();
  *v58 = v59;
  v58[1] = sub_1D4FD7F7C;
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEDD2260](v60, v61, v62, v63, v64, v65, v66, v67, a9, v78, v79, v80, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D4FD7F7C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;
  *(v6 + 320) = v5;

  v7 = OUTLINED_FUNCTION_15_8();
  v8(v7);

  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4FD80D0()
{
  OUTLINED_FUNCTION_75_0();
  v22 = v0;
  v1 = v0[36];
  v2 = [objc_allocWithZone(MEMORY[0x1E69776B8]) init];
  [v2 appendSection_];
  v3 = sub_1D5615158();

  v4 = OUTLINED_FUNCTION_121_3();
  [v4 v5];

  v6 = sub_1D560C738();
  v7 = sub_1D56156E8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_142();
    v21 = OUTLINED_FUNCTION_138_0();
    *v8 = 136446210;
    v9 = sub_1D4F636B4();
    v11 = sub_1D4E6835C(v9, v10, &v21);

    *(v8 + 4) = v11;
    _os_log_impl(&dword_1D4E3F000, v6, v7, "<MusicLibraryPlaylistEditViewModel: %{public}s> Setting initial tracklist on underlying playlist edit controller.", v8, 0xCu);
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  v12 = v0[36];
  [*(v0[22] + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) setInitialTrackList_];

  v13 = OUTLINED_FUNCTION_121();
  v14(v13);
  v15 = v0[22];
  *(v15 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_initialEntries) = sub_1D4FD63A4();

  v0[2] = v0;
  OUTLINED_FUNCTION_36_12();
  v16 = swift_continuation_init();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v17);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_27();
  v0[13] = v18;
  v0[14] = v16;
  OUTLINED_FUNCTION_130_3(v19, sel_beginEditingWithCompletion_);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D4FD8320()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FD841C()
{
  OUTLINED_FUNCTION_160();
  v12 = v0;
  v1 = *(v0 + 176);

  v2 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_129_2())
  {
    OUTLINED_FUNCTION_142();
    v3 = OUTLINED_FUNCTION_37_0();
    v11 = v3;
    *v1 = 136446210;
    v4 = sub_1D4F636B4();
    v6 = sub_1D4E6835C(v4, v5, &v11);

    *(v1 + 4) = v6;
    OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v7, v8, "<MusicLibraryPlaylistEditViewModel: %{public}s> Completed begin editing on playlist edit view model.");
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  OUTLINED_FUNCTION_55();

  return v9();
}

uint64_t sub_1D4FD855C()
{
  OUTLINED_FUNCTION_160();
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D4FD8610@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D5614828();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D56131C8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(v9 + 104))(&v18 - v13, *MEMORY[0x1E6976988], v8);
  (*(v9 + 16))(v12, v14, v8);
  (*(v5 + 16))(v7, a1, v4);
  sub_1D4ECAE44(v7, v12);
  v16 = v15;
  result = (*(v9 + 8))(v14, v8);
  *a2 = v16;
  return result;
}

uint64_t sub_1D4FD87F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D4FD8810()
{
  OUTLINED_FUNCTION_80();
  v13 = *(v0 + 64);
  *(v0 + 40) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  v9 = OUTLINED_FUNCTION_96_4(boxed_opaque_existential_0, v2, v3, v4, v5, v6, v7, v8, v13);
  (*(v10 + 16))(v9);
  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = sub_1D4FD88E0;

  return sub_1D4FD8A60();
}

uint64_t sub_1D4FD88E0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    OUTLINED_FUNCTION_55();

    return v9();
  }
}

uint64_t sub_1D4FD8A04()
{
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D4FD8A60()
{
  OUTLINED_FUNCTION_60();
  v1[33] = v2;
  v1[34] = v0;
  v3 = sub_1D56131C8();
  v1[35] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[36] = v4;
  v1[37] = OUTLINED_FUNCTION_127();
  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1D4FD8B04()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  if (*(*(v1 + 272) + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) != 1)
  {
    OUTLINED_FUNCTION_118_4();
    OUTLINED_FUNCTION_11_28();
LABEL_8:
    OUTLINED_FUNCTION_43_13();
    sub_1D5615E08();
    OUTLINED_FUNCTION_89();
    return;
  }

  sub_1D4E628D4(*(v1 + 264), v1 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (!OUTLINED_FUNCTION_102_4(v2))
  {
    *(v1 + 256) = 0;
    *(v1 + 224) = 0u;
    *(v1 + 240) = 0u;
    sub_1D4E50004(v1 + 224, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_11_28();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_86_6();
  v3 = *(v1 + 296);
  v4 = *(v1 + 272);
  sub_1D4E48324((v1 + 224), v1 + 144);
  v5 = *(v4 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
  v6 = *(v1 + 168);
  v7 = *(v1 + 176);
  __swift_project_boxed_opaque_existential_1((v1 + 144), v6);
  OUTLINED_FUNCTION_89_1();
  v8(v3);
  v9 = sub_1D5159364(v3, v6, v7);
  *(v1 + 304) = v9;
  v10 = OUTLINED_FUNCTION_201();
  v11(v10);
  OUTLINED_FUNCTION_78_6();
  *(v1 + 16) = v12;
  v13 = OUTLINED_FUNCTION_48_8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v14);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_27();
  *(v1 + 104) = v15;
  *(v1 + 112) = v13;
  [v5 appendModelObject:v9 completion:v0];
  OUTLINED_FUNCTION_89();

  MEMORY[0x1EEE6DEC8](v16);
}

uint64_t sub_1D4FD8D54()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FD8E50()
{
  OUTLINED_FUNCTION_60();

  sub_1D56153C8();
  v1 = OUTLINED_FUNCTION_111();
  *(v0 + 320) = v1;
  OUTLINED_FUNCTION_110_4(v1, MEMORY[0x1E69E85E0]);
  OUTLINED_FUNCTION_90();
  v2 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D4FD8ECC()
{
  OUTLINED_FUNCTION_60();

  sub_1D4FDD2A4();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D4FD8F30()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_116_4();
  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D4FD8F8C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 304);
  swift_willThrow();

  OUTLINED_FUNCTION_116_4();
  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D4FD8FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D4FD9018()
{
  if (*(*(v0 + 184) + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) == 1)
  {
    v1 = swift_task_alloc();
    v22 = *(v0 + 168);
    *(v1 + 16) = *(v0 + 152);
    *(v1 + 32) = v22;
    v2 = sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    OUTLINED_FUNCTION_113_4(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21, v22);
    sub_1D4FD9450(sub_1D4FE08D0, v1, v10, v2, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);

    *(v0 + 192) = sub_1D5615158();

    OUTLINED_FUNCTION_78_6();
    *(v0 + 16) = v13;
    v14 = OUTLINED_FUNCTION_48_8();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_35_7(v15);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_4_27();
    *(v0 + 104) = v16;
    *(v0 + 112) = v14;
    v17 = OUTLINED_FUNCTION_63_7();
    [v17 v18];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_95_1();
    return OUTLINED_FUNCTION_7_31();
  }
}

uint64_t sub_1D4FD920C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FD9308()
{
  OUTLINED_FUNCTION_60();

  sub_1D56153C8();
  v1 = OUTLINED_FUNCTION_111();
  *(v0 + 208) = v1;
  OUTLINED_FUNCTION_110_4(v1, MEMORY[0x1E69E85E0]);
  OUTLINED_FUNCTION_90();
  v2 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D4FD9384()
{
  OUTLINED_FUNCTION_60();

  sub_1D4FDD2A4();
  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D4FD93E8()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 192);
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D4FD9450(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a8;
  v9 = v8;
  v72 = a2;
  v73 = a4;
  v71 = a1;
  v11 = MEMORY[0x1E69E6208];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v66 = v15;
  OUTLINED_FUNCTION_11();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v59 = a5;
  v60 = &v54 - v18;
  v57 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_59_0();
  v69 = (v19 - v20);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  v67 = &v54 - v22;
  OUTLINED_FUNCTION_70_0();
  sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v55 = v24;
  v56 = v23;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_59_0();
  v27 = v25 - v26;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v54 - v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_59_0();
  v68 = v32 - v33;
  OUTLINED_FUNCTION_23();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v65 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v64 = v37 - v36;
  v63 = a6;
  v74 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v61 = v38;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_31();
  v40 = sub_1D5614FA8();
  v75 = sub_1D5615D08();
  v70 = sub_1D5615D18();
  sub_1D5615CA8();
  (*(v65 + 16))(v64, v62, a3);
  v73 = v11;
  v65 = a3;
  result = sub_1D5614F98();
  if (v40 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v40)
  {
    v42 = (v66 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1D5615938();
      result = __swift_getEnumTagSinglePayload(v31, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v71(v31, v67);
      if (v9)
      {
        v52 = OUTLINED_FUNCTION_81_7();
        v53(v52);

        (*(v57 + 32))(v58, v67, v59);
        return (*v42)(v31, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v31, AssociatedTypeWitness);
      sub_1D5615CF8();
      if (!--v40)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = (v66 + 32);
  v44 = (v66 + 8);
  v45 = v60;
  while (1)
  {
    sub_1D5615938();
    v46 = OUTLINED_FUNCTION_45_1();
    if (__swift_getEnumTagSinglePayload(v46, v47, AssociatedTypeWitness) == 1)
    {
      v48 = OUTLINED_FUNCTION_81_7();
      v49(v48);
      (*(v55 + 8))(v27, v56);
      return v75;
    }

    (*v43)(v45, v27, AssociatedTypeWitness);
    v71(v45, v69);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v44)(v45, AssociatedTypeWitness);
    sub_1D5615CF8();
  }

  (*v44)(v45, AssociatedTypeWitness);
  v50 = OUTLINED_FUNCTION_81_7();
  v51(v50);

  return (*(v57 + 32))(v58, v69, v59);
}

uint64_t sub_1D4FD9A40(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return sub_1D4F23514();
  }

  else
  {
    v6 = *v3;

    return j__swift_continuation_throwingResume(v6);
  }
}

uint64_t sub_1D4FD9AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D4FD9ACC()
{
  OUTLINED_FUNCTION_80();
  v13 = *(v0 + 72);
  *(v0 + 40) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  v9 = OUTLINED_FUNCTION_96_4(boxed_opaque_existential_0, v2, v3, v4, v5, v6, v7, v8, v13);
  (*(v10 + 16))(v9);
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *v11 = v0;
  v11[1] = sub_1D4FD9BA0;

  return sub_1D4FD9D20();
}

uint64_t sub_1D4FD9BA0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    OUTLINED_FUNCTION_55();

    return v9();
  }
}

uint64_t sub_1D4FD9CC4()
{
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D4FD9D20()
{
  OUTLINED_FUNCTION_60();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = sub_1D5614828();
  v1[36] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[37] = v5;
  v1[38] = OUTLINED_FUNCTION_127();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v6);
  v1[39] = OUTLINED_FUNCTION_127();
  v7 = sub_1D56131C8();
  v1[40] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[41] = v8;
  v1[42] = OUTLINED_FUNCTION_167();
  v1[43] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4FD9E4C()
{
  if (*(*(v0 + 280) + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) != 1)
  {
    OUTLINED_FUNCTION_118_4();
    OUTLINED_FUNCTION_11_28();
LABEL_7:
    OUTLINED_FUNCTION_43_13();
    return sub_1D5615E08();
  }

  sub_1D4E628D4(*(v0 + 264), v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (!OUTLINED_FUNCTION_102_4(v1))
  {
    *(v0 + 256) = 0;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    sub_1D4E50004(v0 + 224, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_11_28();
    goto LABEL_7;
  }

  v2 = *(v0 + 344);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 312);
  v6 = *(v0 + 280);
  v27 = *(v0 + 272);
  v28 = *(v0 + 288);
  sub_1D4E48324((v0 + 224), v0 + 144);
  v30 = *(v6 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v7);
  v9 = *MEMORY[0x1E6976988];
  v26 = *(v4 + 104);
  v26(v2, v9, v3);
  v10 = sub_1D5159364(v2, v7, v8);
  *(v0 + 352) = v10;
  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_201();
  v11(v12);
  sub_1D4E69970(v27, v5, &unk_1EC7F2BE0, &qword_1D56250F0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v28) == 1)
  {
    sub_1D4E50004(*(v0 + 312), &unk_1EC7F2BE0, &qword_1D56250F0);
    v9 = 0;
  }

  else
  {
    v29 = v10;
    v14 = *(v0 + 336);
    v15 = *(v0 + 320);
    v16 = *(v0 + 304);
    v17 = *(v0 + 296);
    v24 = *(v0 + 288);
    v25 = *(v0 + 312);
    v26(*(v0 + 344), v9, v15);
    v18 = OUTLINED_FUNCTION_99_4();
    v19(v18);
    (*(v17 + 16))(v16, v25, v24);
    sub_1D4ECAE44(v16, v14);
    v20 = OUTLINED_FUNCTION_92_3();
    (v11)(v20, v15);
    (*(v17 + 8))(v25, v24);
    v10 = v29;
  }

  *(v0 + 360) = v9;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D4FDA204;
  v21 = swift_continuation_init();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_34_2(v22);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_27();
  *(v0 + 104) = v23;
  *(v0 + 112) = v21;
  [v30 insertModelObject:v10 afterEntry:v9 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D4FDA204()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 368) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FDA300()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 352);

  sub_1D56153C8();
  v2 = OUTLINED_FUNCTION_111();
  *(v0 + 376) = v2;
  OUTLINED_FUNCTION_110_4(v2, MEMORY[0x1E69E85E0]);
  OUTLINED_FUNCTION_90();
  v3 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4FDA380()
{
  OUTLINED_FUNCTION_60();

  sub_1D4FDD2A4();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D4FDA3E4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_116_4();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D4FDA464()
{
  OUTLINED_FUNCTION_160();
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);
  swift_willThrow();

  OUTLINED_FUNCTION_116_4();

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D4FDA508()
{
  OUTLINED_FUNCTION_60();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v1[19] = v5;
  v1[20] = v6;
  v1[18] = v7;
  v8 = sub_1D5614828();
  v1[25] = v8;
  OUTLINED_FUNCTION_69(v8);
  v1[26] = v9;
  v1[27] = OUTLINED_FUNCTION_127();
  v10 = sub_1D56131C8();
  v1[28] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[29] = v11;
  v1[30] = OUTLINED_FUNCTION_167();
  v1[31] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v12);
  v1[32] = OUTLINED_FUNCTION_127();
  v13 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D4FDA63C()
{
  if (*(*(v0 + 192) + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) == 1)
  {
    v1 = *(v0 + 256);
    v2 = *(v0 + 200);
    v3 = swift_task_alloc();
    v45 = *(v0 + 176);
    *(v3 + 16) = *(v0 + 160);
    *(v3 + 32) = v45;
    v4 = sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    OUTLINED_FUNCTION_113_4(v4, v5, v6, v7, v8, v9, v10, v11, v43, v44, v45);
    v12 = OUTLINED_FUNCTION_88_5();
    sub_1D4FD9450(v12, v13, v14, v4, v15, v16, v17, v18);
    OUTLINED_FUNCTION_92_3();

    *(v0 + 264) = sub_1D5615158();

    v19 = OUTLINED_FUNCTION_45_3();
    sub_1D4E69970(v19, v20, v21, v22);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
    v24 = *(v0 + 256);
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E50004(*(v0 + 256), &unk_1EC7F2BE0, &qword_1D56250F0);
      v25 = 0;
    }

    else
    {
      v27 = *(v0 + 240);
      v28 = *(v0 + 248);
      v29 = *(v0 + 224);
      v30 = *(v0 + 232);
      v31 = *(v0 + 208);
      v32 = *(v0 + 216);
      v33 = *(v0 + 200);
      OUTLINED_FUNCTION_89_1();
      v34(v28);
      (*(v30 + 16))(v27, v28, v29);
      (*(v31 + 16))(v32, v24, v33);
      sub_1D4ECAE44(v32, v27);
      v25 = v35;
      v36 = OUTLINED_FUNCTION_201();
      v37(v36);
      (*(v31 + 8))(v24, v33);
    }

    *(v0 + 272) = v25;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1D4FDA950;
    v38 = swift_continuation_init();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_34_2(v39);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_4_27();
    *(v0 + 104) = v40;
    *(v0 + 112) = v38;
    v41 = OUTLINED_FUNCTION_96_2();
    [v41 v42];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_95_1();
    return OUTLINED_FUNCTION_7_31();
  }
}

uint64_t sub_1D4FDA950()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 280) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FDAA4C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 264);

  sub_1D56153C8();
  v2 = OUTLINED_FUNCTION_111();
  *(v0 + 288) = v2;
  OUTLINED_FUNCTION_110_4(v2, MEMORY[0x1E69E85E0]);
  OUTLINED_FUNCTION_90();
  v3 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4FDAACC()
{
  OUTLINED_FUNCTION_91();

  sub_1D4FDD2A4();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D4FDAB6C()
{
  OUTLINED_FUNCTION_160();
  v1 = *(v0 + 272);
  v2 = *(v0 + 264);
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D4FDAC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  (*(v11 + 16))(v10 - v9, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v19, v21);
    v12 = v22;
    v13 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    OUTLINED_FUNCTION_89_1();
    v14(v3);
    v15 = sub_1D5159364(v3, v12, v13);
    v16 = OUTLINED_FUNCTION_176();
    v17(v16);
    *a3 = v15;
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_1D4E50004(v19, &unk_1EC7ED400, &qword_1D5620CF0);
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_45_3();
    sub_1D5616138();
    MEMORY[0x1DA6EAC70](0xD00000000000005BLL, 0x80000001D5680D50);
    OUTLINED_FUNCTION_43_13();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

void sub_1D4FDAE98()
{
  OUTLINED_FUNCTION_47();
  v40 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v31 - v7;
  OUTLINED_FUNCTION_70_0();
  v8 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v12 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59_0();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) == 1)
  {
    v41 = v0;
    v39 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
    v22 = v14[13];
    v36 = *MEMORY[0x1E6976988];
    v35 = v22;
    v22(&v31 - v20);
    v34 = v14[2];
    v34(v18, v21, v12);
    v37 = v10;
    v33 = *(v10 + 16);
    v33(v1, v4, v8);
    sub_1D4ECAE44(v1, v18);
    v38 = v23;
    v32 = v14[1];
    v32(v21, v12);
    sub_1D4E69970(v40, v42, &unk_1EC7F2BE0, &qword_1D56250F0);
    v24 = OUTLINED_FUNCTION_45_1();
    v40 = v8;
    if (__swift_getEnumTagSinglePayload(v24, v25, v8) == 1)
    {
      sub_1D4E50004(v42, &unk_1EC7F2BE0, &qword_1D56250F0);
      v26 = 0;
    }

    else
    {
      v35(v21, v36, v12);
      v34(v18, v21, v12);
      v33(v1, v42, v40);
      sub_1D4ECAE44(v1, v18);
      v26 = v27;
      v32(v21, v12);
      v28 = OUTLINED_FUNCTION_71();
      v29(v28);
    }

    v30 = v38;
    [v39 moveEntry:v38 afterEntry:v26];

    sub_1D4FDD2A4();
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_53_9();
    v31 = 312;
    OUTLINED_FUNCTION_7_31();
    __break(1u);
  }
}

void sub_1D4FDB218()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  v3 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v7 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  if (*(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) == 1)
  {
    v17 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
    OUTLINED_FUNCTION_89_1();
    v18(v16);
    v19 = OUTLINED_FUNCTION_201();
    v20(v19);
    (*(v5 + 16))(v2, v0, v3);
    sub_1D4ECAE44(v2, v13);
    v22 = v21;
    (*(v9 + 8))(v16, v7);
    [v17 removeEntry_];

    sub_1D4FDD2A4();
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_53_9();
    v23 = 336;
    OUTLINED_FUNCTION_7_31();
    __break(1u);
  }
}

void sub_1D4FDB418()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v3 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v74 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_70_0();
  v69 = sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v71 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_70_0();
  v14 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v54 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_59_0();
  v70 = v17 - v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v53 - v20;
  OUTLINED_FUNCTION_70_0();
  v21 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v25);
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) == 1)
  {
    v28 = v2;
    v29 = *(v2 + 16);
    if (v29)
    {
      v53 = v0;
      v75 = MEMORY[0x1E69E7CC0];
      v63 = v27;
      v72 = &v53 - v26;
      sub_1D5615CB8();
      v30 = *(v23 + 16);
      v31 = (v28 + ((*(v23 + 80) + 32) & ~*(v23 + 80)));
      v61 = *(v23 + 72);
      v62 = v30;
      v60 = *MEMORY[0x1E6976988];
      v58 = (v54 + 2);
      v59 = (v54 + 13);
      v56 = (v23 + 8);
      v57 = (v71 + 8);
      v55 = (v74 + 8);
      ++v54;
      v67 = v3;
      v68 = v8;
      v65 = v14;
      v66 = v13;
      v64 = v23 + 16;
      v32 = v70;
      do
      {
        v74 = v31;
        v71 = v29;
        v33 = v13;
        v34 = v8;
        v35 = v72;
        v36 = v62;
        v62(v72, v31, v21);
        v37 = v73;
        (*v59)(v73, v60, v14);
        (*v58)(v32, v37, v14);
        v38 = v21;
        v39 = v63;
        v36(v63, v35, v38);
        sub_1D56132E8();
        sub_1D56132C8();
        v40 = sub_1D5159818();
        (*v57)(v33, v69);
        sub_1D560EC98();
        v41 = *v56;
        (*v56)(v39, v38);
        v42 = OUTLINED_FUNCTION_176();
        v44 = sub_1D4F42FA4(v42, v43);
        (*v55)(v34, v3);
        v45 = objc_allocWithZone(MEMORY[0x1E6977640]);
        v46 = sub_1D5614BA8();

        v47 = v40;
        v14 = v65;
        [v45 initWithIdentifierSet:v44 modelObjectType:v47 storageDictionary:v46];
        swift_unknownObjectRelease();

        v21 = v38;
        v48 = *v54;
        (*v54)(v32, v14);
        v48(v73, v14);
        v49 = v71;
        v41(v72, v38);
        v13 = v66;
        sub_1D5615C88();
        sub_1D5615CC8();
        v3 = v67;
        v8 = v68;
        sub_1D5615CD8();
        sub_1D5615C98();
        v31 = &v74[v61];
        v29 = v49 - 1;
      }

      while (v29);
    }

    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    v50 = sub_1D5615158();

    v51 = OUTLINED_FUNCTION_121_3();
    [v51 v52];

    sub_1D4FDD2A4();
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_53_9();
    v53 = 347;
    OUTLINED_FUNCTION_7_31();
    __break(1u);
  }
}

uint64_t sub_1D4FDB9CC()
{
  OUTLINED_FUNCTION_60();
  v1[27] = v2;
  v1[28] = v0;
  v3 = sub_1D5614898();
  v1[29] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[30] = v4;
  v1[31] = *(v5 + 64);
  v1[32] = OUTLINED_FUNCTION_127();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v6);
  v1[33] = OUTLINED_FUNCTION_127();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_22(v7);
  v1[34] = OUTLINED_FUNCTION_127();
  v8 = sub_1D560E728();
  OUTLINED_FUNCTION_22(v8);
  v1[35] = OUTLINED_FUNCTION_127();
  v9 = sub_1D560D9A8();
  OUTLINED_FUNCTION_22(v9);
  v1[36] = OUTLINED_FUNCTION_127();
  v10 = sub_1D560D838();
  v1[37] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[38] = v11;
  v1[39] = OUTLINED_FUNCTION_167();
  v1[40] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D4FDBB68()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[28];
  v2 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession;
  v0[41] = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession;
  if (*(v1 + v2) == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_1D4FDBCE4;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED410, &qword_1D5625108);
    v0[10] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    v0[12] = sub_1D4F40510;
    v0[13] = &block_descriptor_38;
    v0[14] = v4;
    [v3 commitWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    OUTLINED_FUNCTION_95_1();
    return OUTLINED_FUNCTION_7_31();
  }
}

uint64_t sub_1D4FDBCE4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 336) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FDBDE0()
{
  v40 = *(v0 + 320);
  v41 = *(v0 + 328);
  v1 = *(v0 + 304);
  v36 = *(v0 + 288);
  v38 = *(v0 + 280);
  v39 = *(v0 + 272);
  v42 = *(v0 + 296);
  v43 = *(v0 + 264);
  v2 = *(v0 + 224);
  v45 = *(v0 + 232);
  v47 = *(v0 + 312);
  v3 = *(v0 + 208);
  v37 = [v3 legacyIdentifierSet];
  sub_1D560D968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  OUTLINED_FUNCTION_64_1();
  v4 = sub_1D560DB08();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  v8 = *(v7 + 72);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D5621D90;
  v11 = v10 + v9;
  v12 = *(v6 + 104);
  v12(v11, *MEMORY[0x1E6975040], v4);
  v12(v11 + v8, *MEMORY[0x1E6975030], v4);
  sub_1D560E718();
  v13 = sub_1D560D9E8();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v13);
  sub_1D4F40E88(v37, v36, v38, v39, v40);
  *(v2 + v41) = 0;
  (*(v1 + 16))(v47, v40, v42);
  v14 = [v3 underlyingObject];
  v15 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist;
  OUTLINED_FUNCTION_59(v2 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist, v0 + 184);
  sub_1D4E69970(v2 + v15, v43, &unk_1EC7F1990, &unk_1D561CEF0);
  v16 = OUTLINED_FUNCTION_45_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, v17, v45);
  v19 = *(v0 + 264);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(*(v0 + 264), &unk_1EC7F1990, &unk_1D561CEF0);
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0;
  }

  else
  {
    v20 = *(v0 + 232);
    v21 = *(v0 + 240);
    v22 = MEMORY[0x1E69773A0];
    *(v0 + 168) = v20;
    *(v0 + 176) = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 144));
    (*(v21 + 32))(boxed_opaque_existential_0, v19, v20);
  }

  v24 = *(v0 + 224);
  sub_1D56144C8();
  v25 = *(v24 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_initialEntries);
  v26 = *(v0 + 304);
  if (v25)
  {
    v27 = *(v0 + 256);
    v29 = *(v0 + 232);
    v28 = *(v0 + 240);
    v30 = *(v0 + 216);
    v44 = *(v0 + 296);
    v46 = *(v0 + 320);

    v31 = sub_1D4FD63A4();
    (*(v28 + 16))(v27, v30, v29);
    v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = v25;
    (*(v28 + 32))(v33 + v32, v27, v29);
    sub_1D4FDC9B8();

    (*(v26 + 8))(v46, v44);
  }

  else
  {
    (*(v26 + 8))(*(v0 + 320), *(v0 + 296));
  }

  OUTLINED_FUNCTION_55();

  return v34();
}

uint64_t sub_1D4FDC1FC()
{
  OUTLINED_FUNCTION_75_0();
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D4FDC2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED490, &qword_1D5625298);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_1D5614828();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED498, &qword_1D56252A0);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4FDC460, 0, 0);
}

uint64_t sub_1D4FDC460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(uint64_t, uint64_t, uint64_t), void (**a13)(uint64_t, uint64_t, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  *(v16 + 16) = *(v16 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED398, &unk_1D5625000);
  sub_1D4FE2138(&qword_1EC7ED4A0, MEMORY[0x1E69E6310]);
  sub_1D5614CC8();
  v17 = sub_1D5615EB8();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v16 + 96);
    v20 = *(v16 + 72);
    a9 = v17;
    v21 = v17 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    a12 = (v19 + 16);
    a13 = (v19 + 32);
    a11 = v19 + 8;
    v22 = MEMORY[0x1E69E7CC0];
    v23 = *(v20 + 72);
    a10 = v23;
    do
    {
      sub_1D4E69970(v21, *(v16 + 80), &qword_1EC7ED490, &qword_1D5625298);
      OUTLINED_FUNCTION_0_33();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D4E50004(*(v16 + 80), &qword_1EC7ED490, &qword_1D5625298);
      }

      else
      {
        v25 = *(v16 + 104);
        v24 = *(v16 + 112);
        v27 = *(v16 + 80);
        v26 = *(v16 + 88);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED4A8, &qword_1D56252A8);
        v29 = *a13;
        (*a13)(v24, v27 + *(v28 + 48), v26);
        (*a12)(v25, v24, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D4F00B4C();
          v22 = v33;
        }

        v30 = *(v22 + 16);
        if (v30 >= *(v22 + 24) >> 1)
        {
          sub_1D4F00B4C();
          v22 = v34;
        }

        v31 = *(v16 + 104);
        v32 = *(v16 + 88);
        (*(v19 + 8))(*(v16 + 112), v32);
        *(v22 + 16) = v30 + 1;
        v29(v22 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v30, v31, v32);
        v23 = a10;
      }

      v21 += v23;
      --v18;
    }

    while (v18);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  if (*(v22 + 16))
  {
    sub_1D526EC0C(v22);
    *(v16 + 144) = v35;

    v36 = swift_task_alloc();
    *(v16 + 152) = v36;
    *v36 = v16;
    v36[1] = sub_1D4FDC81C;
    OUTLINED_FUNCTION_63_0();

    return sub_1D542C4D8();
  }

  else
  {
    (*(*(v16 + 128) + 8))(*(v16 + 136), *(v16 + 120));

    type metadata accessor for MusicLibraryIntentDonation(0);
    v39 = OUTLINED_FUNCTION_25_9();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_63_0();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1D4FDC81C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4FDC91C()
{
  OUTLINED_FUNCTION_80();
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_55();

  return v1();
}

void sub_1D4FDC9B8()
{
  OUTLINED_FUNCTION_91_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_47_5();
  if (sub_1D4FDDEA4())
  {
    sub_1D5615458();
    v4 = OUTLINED_FUNCTION_25_9();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
    OUTLINED_FUNCTION_123();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_69_8(v8);
    v9 = OUTLINED_FUNCTION_26_19();
    sub_1D4F405A0(v9, v10, v11, v12, v1);

    sub_1D4E50004(v0, &qword_1EC7EB710, &qword_1D561F440);
  }

  else
  {
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
    }

    v13 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v13, qword_1EDD76AF0);
    v19 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_64_9();
    if (os_log_type_enabled(v19, v14))
    {
      v15 = OUTLINED_FUNCTION_142();
      v16 = OUTLINED_FUNCTION_138_0();
      v20 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1D4E6835C(0xD000000000000010, 0x80000001D567D600, &v20);
      OUTLINED_FUNCTION_128_4(&dword_1D4E3F000, v17, v18, "MusicIntentDonator: %s is not defined in IntentDonation of Info.plist");
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_122();
    }

    else
    {
    }
  }
}

void sub_1D4FDCB78()
{
  OUTLINED_FUNCTION_91_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_47_5();
  if (sub_1D4FDDF8C())
  {
    sub_1D5615458();
    v4 = OUTLINED_FUNCTION_25_9();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
    OUTLINED_FUNCTION_123();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_69_8(v8);
    v9 = OUTLINED_FUNCTION_26_19();
    sub_1D4F405A0(v9, v10, v11, v12, v1);

    sub_1D4E50004(v0, &qword_1EC7EB710, &qword_1D561F440);
  }

  else
  {
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
    }

    v13 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v13, qword_1EDD76AF0);
    v19 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_64_9();
    if (os_log_type_enabled(v19, v14))
    {
      v15 = OUTLINED_FUNCTION_142();
      v16 = OUTLINED_FUNCTION_138_0();
      v20 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1D4E6835C(0xD000000000000016, 0x80000001D567D620, &v20);
      OUTLINED_FUNCTION_128_4(&dword_1D4E3F000, v17, v18, "MusicIntentDonator: %s is not defined in IntentDonation of Info.plist");
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_122();
    }

    else
    {
    }
  }
}

void sub_1D4FDCD38()
{
  OUTLINED_FUNCTION_91_5();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_47_5();
  if (sub_1D4FDE074())
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = [v3 isPrivateListeningEnabled];

    if ((v4 & 1) == 0)
    {
      sub_1D5615458();
      v12 = OUTLINED_FUNCTION_25_9();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
      OUTLINED_FUNCTION_123();
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_69_8(v16);
      v17 = OUTLINED_FUNCTION_26_19();
      sub_1D4F405A0(v17, v18, v19, v20, v3);

      sub_1D4E50004(v0, &qword_1EC7EB710, &qword_1D561F440);
      return;
    }

    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
    }

    v5 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v5, qword_1EDD76AF0);
    v21 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_64_9();
    if (os_log_type_enabled(v21, v6))
    {
      v7 = OUTLINED_FUNCTION_142();
      v8 = OUTLINED_FUNCTION_138_0();
      *(v7 + 4) = OUTLINED_FUNCTION_106_3(4.8149e-34);
      v9 = "MusicIntentDonator: %s is disabled.";
LABEL_11:
      _os_log_impl(&dword_1D4E3F000, v21, v0, v9, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_122();

      return;
    }
  }

  else
  {
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
    }

    v10 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v10, qword_1EDD76AF0);
    v21 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_64_9();
    if (os_log_type_enabled(v21, v11))
    {
      v7 = OUTLINED_FUNCTION_142();
      v8 = OUTLINED_FUNCTION_138_0();
      *(v7 + 4) = OUTLINED_FUNCTION_106_3(4.8149e-34);
      v9 = "MusicIntentDonator: %s is not defined in IntentDonation of Info.plist";
      goto LABEL_11;
    }
  }
}

uint64_t sub_1D4FDCFC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_47_5();
  v3 = type metadata accessor for MusicLibraryPlaylistEditViewModel.Properties(0);
  v4 = OUTLINED_FUNCTION_69(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v10 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v25 - v11);
  v13 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) currentTrackList];
  sub_1D4FDD3A4(v13, v12);
  sub_1D5615458();
  v14 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1D4FE1CA8(v12, v10, type metadata accessor for MusicLibraryPlaylistEditViewModel.Properties);
  v18 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v0;
  sub_1D4FE1F40(v10, v19 + v18, type metadata accessor for MusicLibraryPlaylistEditViewModel.Properties);

  v20 = OUTLINED_FUNCTION_26_19();
  sub_1D51EC8B4(v20, v21, v22, v23, v19);

  return sub_1D4FE1DDC();
}

uint64_t sub_1D4FDD1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D4FDD1CC, 0, 0);
}

uint64_t sub_1D4FDD1CC()
{
  OUTLINED_FUNCTION_60();
  sub_1D56153C8();
  v1 = OUTLINED_FUNCTION_111();
  *(v0 + 32) = v1;
  OUTLINED_FUNCTION_110_4(v1, MEMORY[0x1E69E85E0]);
  OUTLINED_FUNCTION_90();
  v2 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D4FDD240()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 24);

  sub_1D4FDDC7C(v1);
  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D4FDD2A4()
{
  v1 = type metadata accessor for MusicLibraryPlaylistEditViewModel.Properties(0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v4 = (v3 - v2);
  v5 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) currentTrackList];
  sub_1D4FDD3A4(v5, v4);

  sub_1D4FD5A10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED440, qword_1D5625208);
  sub_1D5612858();
  sub_1D4FD62CC();

  return sub_1D4FE1DDC();
}

uint64_t sub_1D4FDD3A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = MEMORY[0x1E69E7CC0];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = &v12;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D4FE1C78;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1D4FE1C80;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D4F233EC;
  aBlock[3] = &block_descriptor_101;
  v6 = _Block_copy(aBlock);
  v7 = a1;

  [v7 enumerateItemIdentifiersUsingBlock_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v9 = v12;

    v10 = [v7 underlyingSectionedCollection];
    *a2 = v9;
    aBlock[0] = v10;
    type metadata accessor for MusicLibraryPlaylistEditViewModel.Properties(0);
    sub_1D5612878();
  }

  return result;
}

uint64_t sub_1D4FDD56C(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v66 = a5;
  v61 = a4;
  v49 = a2;
  v59 = a1;
  v5 = sub_1D5614828();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v63 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v49 - v8;
  v60 = sub_1D5613558();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D560C4A8();
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v49 - v13;
  v15 = sub_1D560E728();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D560D9A8();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D560D838();
  v22 = *(v21 - 8);
  v52 = v21;
  v53 = v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v51 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v50 = &v49 - v25;
  swift_unknownObjectRetain();
  sub_1D560D898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v26 = sub_1D560DB08();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D5621D90;
  v31 = v30 + v29;
  v32 = *(v27 + 104);
  v32(v31, *MEMORY[0x1E6975040], v26);
  v32(v31 + v28, *MEMORY[0x1E6975030], v26);
  sub_1D560E718();
  v33 = sub_1D560D9E8();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v33);
  v34 = v50;
  sub_1D4F40E88(v49, v20, v17, v14, v50);
  v35 = *(v22 + 16);
  v36 = v52;
  v37 = v34;
  v35(v51, v34, v52);
  (*(v55 + 16))(v54, v59, v56);
  v38 = [v61 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v38;
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  sub_1D560D898();
  (*(v58 + 104))(v57, *MEMORY[0x1E6976A60], v60);
  v39 = sub_1D5613568();
  swift_allocObject();
  v40 = sub_1D5613538();
  *(&v68 + 1) = v39;
  v69 = MEMORY[0x1E6976A68];
  *&v67 = v40;

  v41 = v62;
  sub_1D5614768();
  v43 = v63;
  v42 = v64;
  v44 = v65;
  (*(v64 + 16))(v63, v41, v65);
  v45 = v66;
  sub_1D4EFF558();
  v46 = *(*v45 + 16);
  sub_1D4EFF7A0(v46);

  (*(v42 + 8))(v41, v44);
  (*(v53 + 8))(v37, v36);
  v47 = *v45;
  *(v47 + 16) = v46 + 1;
  return (*(v42 + 32))(v47 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v46, v43, v44);
}

uint64_t sub_1D4FDDC04()
{
  v1 = sub_1D560C478();
  v2 = OUTLINED_FUNCTION_71();
  v4 = v3(v2);

  sub_1D56159A8();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D4FDDC7C(void *a1)
{

  sub_1D4FD5A10();
  type metadata accessor for MusicLibraryPlaylistEditViewModel.Properties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED440, qword_1D5625208);
  sub_1D5612858();
  return sub_1D4FD62CC();
}

uint64_t MusicLibraryPlaylistEditViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__entries;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED388, &qword_1D5624FF8);
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingTracklist;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED380, &qword_1D5624FF0);
  OUTLINED_FUNCTION_14();
  (*(v4 + 8))(v0 + v3);
  sub_1D4E50004(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist, &unk_1EC7F1990, &unk_1D561CEF0);

  return v0;
}

uint64_t MusicLibraryPlaylistEditViewModel.__deallocating_deinit()
{
  MusicLibraryPlaylistEditViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D4FDDE64@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MusicLibraryPlaylistEditViewModel(0);
  result = sub_1D560C838();
  *a2 = result;
  return result;
}

BOOL sub_1D4FDDEA4()
{
  static ClientInfo.optionalDefault.getter(v4);
  if (*(&v4[0] + 1) && (v0 = v5, , v1 = sub_1D4E50004(v4, &qword_1EC7ED470, &qword_1D5625260), v0))
  {
    MEMORY[0x1EEE9AC00](v1);
    v2 = sub_1D4F25A04();
  }

  else
  {
    return 0;
  }

  return v2;
}

BOOL sub_1D4FDDF8C()
{
  static ClientInfo.optionalDefault.getter(v4);
  if (*(&v4[0] + 1) && (v0 = v5, , v1 = sub_1D4E50004(v4, &qword_1EC7ED470, &qword_1D5625260), v0))
  {
    MEMORY[0x1EEE9AC00](v1);
    v2 = sub_1D4F25A04();
  }

  else
  {
    return 0;
  }

  return v2;
}

BOOL sub_1D4FDE074()
{
  static ClientInfo.optionalDefault.getter(v4);
  if (*(&v4[0] + 1) && (v0 = v5, , v1 = sub_1D4E50004(v4, &qword_1EC7ED470, &qword_1D5625260), v0))
  {
    MEMORY[0x1EEE9AC00](v1);
    v2 = sub_1D4F25A04();
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t sub_1D4FDE15C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED488, &qword_1D5625290);
  v6 = swift_task_alloc();
  v4[19] = v6;
  v4[20] = type metadata accessor for MusicLibraryIntentDonation(0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  v4[24] = v7;
  *v7 = v4;
  v7[1] = sub_1D4FDE2E0;

  return v9(v6);
}

uint64_t sub_1D4FDE2E0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4FDE3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_87_5();
  if (v15)
  {
    sub_1D4E50004(v12, &qword_1EC7ED488, &qword_1D5625290);
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
    }

    v16 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v16, qword_1EDD76AF0);
    v17 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_64_9();
    if (os_log_type_enabled(v17, v18))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_72_4(&dword_1D4E3F000, v19, v20, "MusicIntentDonator: intentBuilder returned nil, I will not donate anything.");
      OUTLINED_FUNCTION_54();
    }
  }

  else
  {
    v21 = OUTLINED_FUNCTION_51_11();
    sub_1D4FE1F40(v21, v22, v23);
    v24 = sub_1D542CFEC();
    v13[25] = v24;
    if (v24)
    {
      v25 = v24;
      v26 = objc_allocWithZone(MEMORY[0x1E696E8B8]);
      v27 = v25;
      v28 = OUTLINED_FUNCTION_121_3();
      v13[26] = [v28 v29];
      v30 = [v27 identifier];

      if (v30)
      {
        v31 = OUTLINED_FUNCTION_96_2();
        [v31 v32];
      }

      OUTLINED_FUNCTION_86_6();
      v33 = sub_1D5614D38();
      OUTLINED_FUNCTION_130_3(v33, sel_setGroupIdentifier_);

      OUTLINED_FUNCTION_78_6();
      v13[2] = v34;
      OUTLINED_FUNCTION_48_8();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
      OUTLINED_FUNCTION_11_15(v35);
      OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
      OUTLINED_FUNCTION_9_31();
      v36 = OUTLINED_FUNCTION_63_7();
      [v36 v37];
      OUTLINED_FUNCTION_73_0();

      return MEMORY[0x1EEE6DEC8](v38);
    }

    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
    }

    v40 = sub_1D560C758();
    __swift_project_value_buffer(v40, qword_1EDD76AF0);
    v41 = OUTLINED_FUNCTION_51_11();
    sub_1D4FE1CA8(v41, v42, v43);
    v44 = sub_1D560C738();
    v45 = sub_1D56156E8();
    v46 = OUTLINED_FUNCTION_104_5(v45);
    v47 = v13[22];
    if (v46)
    {
      v48 = v13[21];
      OUTLINED_FUNCTION_142();
      a9 = OUTLINED_FUNCTION_37_0();
      *v14 = 136446210;
      sub_1D4FE1CA8(v47, v48, type metadata accessor for MusicLibraryIntentDonation);
      OUTLINED_FUNCTION_0_33();
      sub_1D5614DB8();
      OUTLINED_FUNCTION_67_8();
      v49 = OUTLINED_FUNCTION_0_33();
      sub_1D4E6835C(v49, v50, v51);
      OUTLINED_FUNCTION_107_3();
      *(v14 + 4) = v47;
      OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v52, v53, "MusicIntentDonator: %{public}s did not provide an INIntent to donate, I will not donate anything.");
      OUTLINED_FUNCTION_19_22();
      OUTLINED_FUNCTION_118();

      OUTLINED_FUNCTION_121();
    }

    else
    {

      sub_1D4FE1DDC();
      OUTLINED_FUNCTION_159();
    }

    sub_1D4FE1DDC();
  }

  OUTLINED_FUNCTION_29_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
}

uint64_t sub_1D4FDE76C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FDE868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
  }

  v15 = v14[26];
  v16 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v16, qword_1EDD76AF0);
  v17 = v15;
  v18 = sub_1D560C738();
  sub_1D56156E8();

  v19 = OUTLINED_FUNCTION_129_2();
  v20 = v14[25];
  v21 = v14[26];
  v22 = v14[23];
  if (v19)
  {
    OUTLINED_FUNCTION_142();
    a10 = v22;
    a11 = OUTLINED_FUNCTION_37_0();
    *v22 = 136446210;
    v23 = v21;
    v24 = [v23 description];
    sub_1D5614D68();

    v25 = OUTLINED_FUNCTION_0_33();
    sub_1D4E6835C(v25, v26, v27);
    OUTLINED_FUNCTION_107_3();
    *(v22 + 4) = v24;
    OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v28, v29, "MusicIntentDonator: Successfully donated %{public}s");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_118();
  }

  else
  {
  }

  OUTLINED_FUNCTION_5_27();
  sub_1D4FE1DDC();
  OUTLINED_FUNCTION_29_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D4FDE9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_68_1();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_76_2();
  a22 = v24;
  swift_willThrow();
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
  }

  v28 = v24[26];
  v27 = v24[27];
  v29 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v29, qword_1EDD76AF0);
  v30 = v28;
  v31 = OUTLINED_FUNCTION_92_3();
  v32 = sub_1D560C738();
  v33 = sub_1D56156C8();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v24[26];
  v36 = v24[27];
  v37 = v24[25];
  v38 = v24[23];
  if (v34)
  {
    swift_slowAlloc();
    a12 = OUTLINED_FUNCTION_66_6();
    *v38 = 136446466;
    a10 = v37;
    v39 = v35;
    v40 = [v39 description];
    sub_1D5614D68();

    v41 = OUTLINED_FUNCTION_99_4();
    sub_1D4E6835C(v41, v42, v43);
    OUTLINED_FUNCTION_103_3();
    OUTLINED_FUNCTION_47_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v44 = sub_1D5614DB8();
    sub_1D4E6835C(v44, v45, &a12);
    OUTLINED_FUNCTION_103_3();
    *(v38 + 14) = v40;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v46, v47, "MusicIntentDonator: Failed to donate %{public}s because of error: %{public}s");
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  OUTLINED_FUNCTION_5_27();
  sub_1D4FE1DDC();
  OUTLINED_FUNCTION_29_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_63_0();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D4FDEC00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED478, &qword_1D5625278);
  v6 = swift_task_alloc();
  v4[19] = v6;
  v4[20] = type metadata accessor for MusicSearchIntentDonation(0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  v4[24] = v7;
  *v7 = v4;
  v7[1] = sub_1D4FDED84;

  return v9(v6);
}

uint64_t sub_1D4FDED84()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4FDEE68()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_87_5();
  if (v2)
  {
    sub_1D4E50004(v0, &unk_1EC7ED478, &qword_1D5625278);
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
    }

    v3 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v3, qword_1EDD76AF0);
    v4 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_64_9();
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_72_4(&dword_1D4E3F000, v6, v7, "MusicIntentDonator: intentBuilder returned nil, I will not donate anything.");
      OUTLINED_FUNCTION_54();
    }

    OUTLINED_FUNCTION_29_17();

    OUTLINED_FUNCTION_55();

    return v8();
  }

  else
  {
    sub_1D4FE1F40(v0, *(v1 + 184), type metadata accessor for MusicSearchIntentDonation);
    v10 = swift_task_alloc();
    *(v1 + 200) = v10;
    *v10 = v1;
    v10[1] = sub_1D4FDF008;

    return sub_1D515D61C();
  }
}

uint64_t sub_1D4FDF008()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = v3;

  v4 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FDF0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  sub_1D515DA88();
  v14 = objc_allocWithZone(MEMORY[0x1E696E9C8]);
  v15 = OUTLINED_FUNCTION_71();
  v17 = sub_1D4FE0844(v15, v16);
  v12[27] = v17;
  if (v17)
  {
    v18 = v17;
    v19 = objc_allocWithZone(MEMORY[0x1E696E8B8]);
    v20 = v18;
    v21 = OUTLINED_FUNCTION_121_3();
    v12[28] = [v21 v22];
    v23 = [v20 identifier];

    if (v23)
    {
      v24 = OUTLINED_FUNCTION_96_2();
      [v24 v25];
    }

    OUTLINED_FUNCTION_86_6();
    v26 = sub_1D5614D38();
    OUTLINED_FUNCTION_130_3(v26, sel_setGroupIdentifier_);

    OUTLINED_FUNCTION_78_6();
    v12[2] = v27;
    OUTLINED_FUNCTION_48_8();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_11_15(v28);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_9_31();
    v29 = OUTLINED_FUNCTION_63_7();
    [v29 v30];
    OUTLINED_FUNCTION_73_0();

    return MEMORY[0x1EEE6DEC8](v31);
  }

  else
  {
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
    }

    v33 = sub_1D560C758();
    __swift_project_value_buffer(v33, qword_1EDD76AF0);
    v34 = OUTLINED_FUNCTION_51_11();
    sub_1D4FE1CA8(v34, v35, v36);
    v37 = sub_1D560C738();
    v38 = sub_1D56156E8();
    v39 = OUTLINED_FUNCTION_104_5(v38);
    v40 = v12[22];
    if (v39)
    {
      v41 = v12[21];
      OUTLINED_FUNCTION_142();
      a9 = OUTLINED_FUNCTION_37_0();
      *v13 = 136446210;
      sub_1D4FE1CA8(v40, v41, type metadata accessor for MusicSearchIntentDonation);
      OUTLINED_FUNCTION_0_33();
      sub_1D5614DB8();
      OUTLINED_FUNCTION_67_8();
      v42 = OUTLINED_FUNCTION_0_33();
      sub_1D4E6835C(v42, v43, v44);
      OUTLINED_FUNCTION_107_3();
      *(v13 + 4) = v40;
      OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v45, v46, "MusicIntentDonator: %{public}s did not provide an INIntent to donate, I will not donate anything.");
      OUTLINED_FUNCTION_19_22();
      OUTLINED_FUNCTION_118();

      OUTLINED_FUNCTION_121();
    }

    else
    {

      sub_1D4FE1DDC();
      OUTLINED_FUNCTION_159();
    }

    sub_1D4FE1DDC();
    OUTLINED_FUNCTION_29_17();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_73_0();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
  }
}

uint64_t sub_1D4FDF404()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FDF500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
  }

  v15 = v14[28];
  v16 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v16, qword_1EDD76AF0);
  v17 = v15;
  v18 = sub_1D560C738();
  v19 = sub_1D56156E8();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v14[27];
  v22 = v14[28];
  v23 = v14[23];
  if (v20)
  {
    OUTLINED_FUNCTION_142();
    a10 = v23;
    a11 = OUTLINED_FUNCTION_37_0();
    *v23 = 136446210;
    v24 = v22;
    v25 = [v24 description];
    sub_1D5614D68();

    v26 = OUTLINED_FUNCTION_0_33();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_107_3();
    *(v23 + 4) = v25;
    _os_log_impl(&dword_1D4E3F000, v18, v19, "MusicIntentDonator: Successfully donated %{public}s", v23, 0xCu);
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_118();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_29();
  sub_1D4FE1DDC();
  OUTLINED_FUNCTION_29_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D4FDF6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_68_1();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_76_2();
  a22 = v24;
  swift_willThrow();
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
  }

  v28 = *(v24 + 224);
  v27 = *(v24 + 232);
  v29 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v29, qword_1EDD76AF0);
  v30 = v28;
  v31 = OUTLINED_FUNCTION_92_3();
  v32 = sub_1D560C738();
  v33 = sub_1D56156C8();

  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v24 + 224);
  v36 = *(v24 + 232);
  v37 = *(v24 + 184);
  if (v34)
  {
    a10 = *(v24 + 216);
    swift_slowAlloc();
    a12 = OUTLINED_FUNCTION_66_6();
    *v37 = 136446466;
    v38 = v35;
    v39 = [v38 description];
    sub_1D5614D68();

    v40 = OUTLINED_FUNCTION_99_4();
    sub_1D4E6835C(v40, v41, v42);
    OUTLINED_FUNCTION_103_3();
    OUTLINED_FUNCTION_47_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v43 = sub_1D5614DB8();
    sub_1D4E6835C(v43, v44, &a12);
    OUTLINED_FUNCTION_103_3();
    *(v37 + 14) = v39;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v45, v46, "MusicIntentDonator: Failed to donate %{public}s because of error: %{public}s");
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_29();
  sub_1D4FE1DDC();
  OUTLINED_FUNCTION_29_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_63_0();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D4FDF8B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED460, &unk_1D5625250);
  v6 = swift_task_alloc();
  v4[19] = v6;
  v4[20] = type metadata accessor for MusicPlaybackIntentDonation(0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  v4[24] = v7;
  *v7 = v4;
  v7[1] = sub_1D4FDFA34;

  return v9(v6);
}

uint64_t sub_1D4FDFA34()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4FDFB18()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_87_5();
  if (v2)
  {
    sub_1D4E50004(v0, &unk_1EC7ED460, &unk_1D5625250);
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
    }

    v3 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v3, qword_1EDD76AF0);
    v4 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_64_9();
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_72_4(&dword_1D4E3F000, v6, v7, "MusicIntentDonator: intentBuilder returned nil, I will not donate anything.");
      OUTLINED_FUNCTION_54();
    }

    OUTLINED_FUNCTION_29_17();

    OUTLINED_FUNCTION_55();

    return v8();
  }

  else
  {
    sub_1D4FE1F40(v0, *(v1 + 184), type metadata accessor for MusicPlaybackIntentDonation);
    v10 = swift_task_alloc();
    *(v1 + 200) = v10;
    *v10 = v1;
    v10[1] = sub_1D4FDFCB8;

    return sub_1D5130274();
  }
}

uint64_t sub_1D4FDFCB8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = v3;

  v4 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FDFDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v14 = v12[26];
  if (v14)
  {
    v15 = objc_allocWithZone(MEMORY[0x1E696E8B8]);
    v16 = v14;
    v17 = OUTLINED_FUNCTION_63_7();
    v12[27] = [v17 v18];
    v19 = [v16 identifier];

    if (v19)
    {
      v20 = OUTLINED_FUNCTION_96_2();
      [v20 v21];
    }

    OUTLINED_FUNCTION_86_6();
    v22 = sub_1D5614D38();
    OUTLINED_FUNCTION_130_3(v22, sel_setGroupIdentifier_);

    OUTLINED_FUNCTION_78_6();
    v12[2] = v23;
    OUTLINED_FUNCTION_48_8();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_11_15(v24);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_9_31();
    v25 = OUTLINED_FUNCTION_63_7();
    [v25 v26];
    OUTLINED_FUNCTION_73_0();

    return MEMORY[0x1EEE6DEC8](v27);
  }

  else
  {
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
    }

    v29 = sub_1D560C758();
    __swift_project_value_buffer(v29, qword_1EDD76AF0);
    v30 = OUTLINED_FUNCTION_51_11();
    sub_1D4FE1CA8(v30, v31, v32);
    v33 = sub_1D560C738();
    v34 = sub_1D56156E8();
    v35 = OUTLINED_FUNCTION_104_5(v34);
    v36 = v12[22];
    if (v35)
    {
      v37 = v12[21];
      OUTLINED_FUNCTION_142();
      a9 = OUTLINED_FUNCTION_37_0();
      *v13 = 136446210;
      sub_1D4FE1CA8(v36, v37, type metadata accessor for MusicPlaybackIntentDonation);
      OUTLINED_FUNCTION_0_33();
      sub_1D5614DB8();
      OUTLINED_FUNCTION_67_8();
      v38 = OUTLINED_FUNCTION_0_33();
      sub_1D4E6835C(v38, v39, v40);
      OUTLINED_FUNCTION_107_3();
      *(v13 + 4) = v36;
      OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v41, v42, "MusicIntentDonator: %{public}s did not provide an INIntent to donate, I will not donate anything.");
      OUTLINED_FUNCTION_19_22();
      OUTLINED_FUNCTION_118();

      OUTLINED_FUNCTION_121();
    }

    else
    {

      sub_1D4FE1DDC();
      OUTLINED_FUNCTION_159();
    }

    sub_1D4FE1DDC();
    OUTLINED_FUNCTION_29_17();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_73_0();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
  }
}

uint64_t sub_1D4FE007C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4FE0178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
  }

  v15 = v14[27];
  v16 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v16, qword_1EDD76AF0);
  v17 = v15;
  v18 = sub_1D560C738();
  sub_1D56156E8();

  v19 = OUTLINED_FUNCTION_129_2();
  v20 = v14[26];
  v21 = v14[27];
  v22 = v14[23];
  if (v19)
  {
    OUTLINED_FUNCTION_142();
    a10 = v22;
    a11 = OUTLINED_FUNCTION_37_0();
    *v22 = 136446210;
    v23 = v21;
    v24 = [v23 description];
    sub_1D5614D68();

    v25 = OUTLINED_FUNCTION_0_33();
    sub_1D4E6835C(v25, v26, v27);
    OUTLINED_FUNCTION_107_3();
    *(v22 + 4) = v24;
    OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v28, v29, "MusicIntentDonator: Successfully donated %{public}s");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_118();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_32();
  sub_1D4FE1DDC();
  OUTLINED_FUNCTION_29_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D4FE0304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_68_1();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_76_2();
  a22 = v24;
  swift_willThrow();
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_0_42(&qword_1EDD544B0);
  }

  v28 = v24[27];
  v27 = v24[28];
  v29 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v29, qword_1EDD76AF0);
  v30 = v28;
  v31 = OUTLINED_FUNCTION_92_3();
  v32 = sub_1D560C738();
  v33 = sub_1D56156C8();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v24[27];
  v36 = v24[28];
  v37 = v24[26];
  v38 = v24[23];
  if (v34)
  {
    swift_slowAlloc();
    a12 = OUTLINED_FUNCTION_66_6();
    *v38 = 136446466;
    a10 = v37;
    v39 = v35;
    v40 = [v39 description];
    sub_1D5614D68();

    v41 = OUTLINED_FUNCTION_99_4();
    sub_1D4E6835C(v41, v42, v43);
    OUTLINED_FUNCTION_103_3();
    OUTLINED_FUNCTION_47_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v44 = sub_1D5614DB8();
    sub_1D4E6835C(v44, v45, &a12);
    OUTLINED_FUNCTION_103_3();
    *(v38 + 14) = v40;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v46, v47, "MusicIntentDonator: Failed to donate %{public}s because of error: %{public}s");
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_32();
  sub_1D4FE1DDC();
  OUTLINED_FUNCTION_29_17();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_63_0();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16);
}

id sub_1D4FE0510(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

id sub_1D4FE056C(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v9 = a1[3];
  if (v9)
  {
    v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = *(v9 - 8);
    MEMORY[0x1EEE9AC00](v11);
    v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_1D5616158();
    (*(v12 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = 0;
  }

  v16 = a2[3];
  if (v16)
  {
    v17 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v18 = *(v16 - 8);
    MEMORY[0x1EEE9AC00](v17);
    v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v20);
    v21 = sub_1D5616158();
    (*(v18 + 8))(v20, v16);
    __swift_destroy_boxed_opaque_existential_1(a2);
  }

  else
  {
    v21 = 0;
  }

  v22 = [v5 initWithPlaylist:v15 underlyingSectionedCollection:v21 authorProfile:a3 library:a4];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v22;
}

uint64_t sub_1D4FE07BC()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);
  v3 = OUTLINED_FUNCTION_71();

  return sub_1D4FD632C(v3, v4);
}

id sub_1D4FE0844(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1D4ECC7A8(0, &qword_1EDD52700, 0x1E696E8E8);
    v3 = sub_1D5615158();
  }

  else
  {
    v3 = 0;
  }

  v4 = OUTLINED_FUNCTION_63_7();
  v6 = [v4 v5];

  return v6;
}

uint64_t sub_1D4FE0920()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_64_1();
  v0 = sub_1D5614898();
  OUTLINED_FUNCTION_22(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v2[1] = sub_1D4E73560;
  v4 = OUTLINED_FUNCTION_18_27();

  return sub_1D4FDC2C0(v4, v5, v6, v7);
}

void sub_1D4FE09F8(uint64_t a1)
{
  sub_1D4FE1C04(319, &qword_1EC7ED430, &qword_1EC7ED398, &unk_1D5625000);
  if (v1 <= 0x3F)
  {
    sub_1D4FE1C04(319, &qword_1EC7ED438, &qword_1EC7EB720, &unk_1D561E890);
    if (v2 <= 0x3F)
    {
      sub_1D4FE22EC(319, &qword_1EDD52A70, MEMORY[0x1E69773E0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel.beginEditing()()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_58_0();
  v5 = (*(v0 + 616) + **(v0 + 616));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43_1(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_26_12(v2);

  return v5();
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel.append<A>(_:)()
{
  OUTLINED_FUNCTION_91();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_58_0();
  v11 = (*(v6 + 624) + **(v6 + 624));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_43_1(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_26_12(v8);

  return v11(v5, v3, v1);
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel._append(_:)()
{
  OUTLINED_FUNCTION_80();
  v1 = v0;
  OUTLINED_FUNCTION_58_0();
  v7 = (*(v2 + 632) + **(v2 + 632));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_1(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_26_12(v4);

  return v7(v1);
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel.append<A, B>(_:)()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_58_0();
  v6 = (*(v0 + 640) + **(v0 + 640));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43_1(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_26_12(v2);
  v4 = OUTLINED_FUNCTION_45_3();

  return v6(v4);
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:)()
{
  OUTLINED_FUNCTION_160();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_58_0();
  v13 = (*(v8 + 648) + **(v8 + 648));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_43_1(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_26_12(v10);

  return v13(v7, v5, v3, v1);
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel._insert(_:after:)()
{
  OUTLINED_FUNCTION_91();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_58_0();
  v9 = (*(v4 + 656) + **(v4 + 656));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_43_1(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_26_12(v6);

  return v9(v3, v1);
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A, B>(_:afterEntry:)()
{
  OUTLINED_FUNCTION_75_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_58_0();
  v17 = (*(v12 + 664) + **(v12 + 664));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_43_1(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_26_12(v14);

  return v17(v11, v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel.remove(_:)()
{
  return (*(*v0 + 688))();
}

{
  return (*(*v0 + 696))();
}

uint64_t dispatch thunk of MusicLibraryPlaylistEditViewModel.save()()
{
  OUTLINED_FUNCTION_80();
  v1 = v0;
  OUTLINED_FUNCTION_58_0();
  v7 = (*(v2 + 712) + **(v2 + 712));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  v4[1] = sub_1D4E73560;

  return v7(v1);
}

void sub_1D4FE1C04(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1D560C928();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D4FE1CA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D4FE1D04()
{
  OUTLINED_FUNCTION_91();
  v1 = OUTLINED_FUNCTION_64_1();
  v2 = type metadata accessor for MusicLibraryPlaylistEditViewModel.Properties(v1);
  OUTLINED_FUNCTION_22(v2);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  v5[1] = sub_1D4E73560;
  v7 = OUTLINED_FUNCTION_18_27();

  return sub_1D4FDD1AC(v7, v8, v9, v3, v10);
}

uint64_t sub_1D4FE1DDC()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v2(v1);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D4FE1E30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FE1EA0()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_84_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v2[1] = sub_1D4E73560;
  v4 = OUTLINED_FUNCTION_18_27();

  return sub_1D4FDF8B0(v4, v5, v6, v0);
}

uint64_t sub_1D4FE1F40(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D4FE1FBC()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_84_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v2[1] = sub_1D4E6ED20;
  v4 = OUTLINED_FUNCTION_18_27();

  return sub_1D4FDEC00(v4, v5, v6, v0);
}

uint64_t objectdestroy_110Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_123();

  return swift_deallocObject();
}

uint64_t sub_1D4FE2098()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_84_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v2[1] = sub_1D4E73560;
  v4 = OUTLINED_FUNCTION_18_27();

  return sub_1D4FDE15C(v4, v5, v6, v0);
}

uint64_t sub_1D4FE2138(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED398, &unk_1D5625000);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4FE2188()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);
  v3 = OUTLINED_FUNCTION_71();

  return sub_1D4FD5A70(v3, v4);
}

void sub_1D4FE2238(uint64_t a1)
{
  sub_1D4FE22EC(319, &qword_1EC7ED4C8, MEMORY[0x1E6977318], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D4FE2350();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D4FE22EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D4FE2350()
{
  if (!qword_1EC7ED4D0)
  {
    v0 = sub_1D5612868();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7ED4D0);
    }
  }
}

id OUTLINED_FUNCTION_47_14()
{
  *(v2 + 4) = v3;
  *(v2 + 12) = 2082;
  *(v1 + 144) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_66_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67_8()
{

  return sub_1D4FE1DDC();
}

uint64_t OUTLINED_FUNCTION_103_3()
{
}

uint64_t OUTLINED_FUNCTION_105_4()
{

  return swift_arrayDestroy();
}

unint64_t OUTLINED_FUNCTION_106_3(float a1)
{
  *v1 = a1;

  return sub_1D4E6835C(0xD000000000000011, v2 | 0x8000000000000000, (v3 - 56));
}

uint64_t OUTLINED_FUNCTION_110_4(uint64_t a1, uint64_t a2)
{

  return sub_1D5615338();
}

uint64_t OUTLINED_FUNCTION_116_4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
}

uint64_t OUTLINED_FUNCTION_127_3(uint64_t a1, ...)
{

  return sub_1D560C908();
}

BOOL OUTLINED_FUNCTION_129_2()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1D4FE25EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6E6950746F6ELL && a2 == 0xE900000000000064;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656E6E6970 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

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

uint64_t sub_1D4FE26B8(char a1)
{
  if (a1)
  {
    return 0x64656E6E6970;
  }

  else
  {
    return 0x656E6E6950746F6ELL;
  }
}

uint64_t sub_1D4FE26F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FE25EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FE2720(uint64_t a1)
{
  v2 = sub_1D4FE2B08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE275C(uint64_t a1)
{
  v2 = sub_1D4FE2B08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FE2798(uint64_t a1)
{
  v2 = sub_1D4FE2BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE27D4(uint64_t a1)
{
  v2 = sub_1D4FE2BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FE2810(uint64_t a1)
{
  v2 = sub_1D4FE2B5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE284C(uint64_t a1)
{
  v2 = sub_1D4FE2B5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicPinStatus.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED4D8, &qword_1D56252E0);
  OUTLINED_FUNCTION_4();
  v25 = v4;
  v26 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED4E0, &qword_1D56252E8);
  OUTLINED_FUNCTION_4();
  v22 = v8;
  v23 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED4E8, &qword_1D56252F0);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4FE2B08();
  sub_1D56163D8();
  v19 = (v14 + 8);
  if (v18)
  {
    v28 = 1;
    sub_1D4FE2B5C();
    v20 = v24;
    sub_1D5616018();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_1D4FE2BB0();
    sub_1D5616018();
    (*(v22 + 8))(v11, v23);
  }

  return (*v19)(v17, v12);
}

unint64_t sub_1D4FE2B08()
{
  result = qword_1EC7ED4F0;
  if (!qword_1EC7ED4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED4F0);
  }

  return result;
}

unint64_t sub_1D4FE2B5C()
{
  result = qword_1EC7ED4F8;
  if (!qword_1EC7ED4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED4F8);
  }

  return result;
}

unint64_t sub_1D4FE2BB0()
{
  result = qword_1EC7ED500;
  if (!qword_1EC7ED500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED500);
  }

  return result;
}

uint64_t MusicPinStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void MusicPinStatus.init(from:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED508, &qword_1D56252F8);
  OUTLINED_FUNCTION_4();
  v41 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED510, &qword_1D5625300);
  OUTLINED_FUNCTION_4();
  v40 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED518, &unk_1D5625308);
  OUTLINED_FUNCTION_4();
  v43 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v37 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4FE2B08();
  v17 = v45;
  sub_1D5616398();
  if (v17)
  {
    goto LABEL_10;
  }

  v38 = v7;
  v39 = v11;
  v45 = a1;
  v18 = v44;
  v19 = sub_1D5615FE8();
  sub_1D4FE3168(v19, 0);
  if (v22 == v23 >> 1)
  {
    v44 = v20;
LABEL_9:
    v33 = sub_1D5615C18();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v35 = &type metadata for MusicPinStatus;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v16, v12);
    a1 = v45;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v37[1] = 0;
  if (v22 >= (v23 >> 1))
  {
    __break(1u);
  }

  else
  {
    v24 = *(v21 + v22);
    v25 = sub_1D4FE356C(v22 + 1, v23 >> 1, v20, v21, v22, v23);
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    if (v27 != v29 >> 1)
    {
      v44 = v25;
      goto LABEL_9;
    }

    v46 = v24;
    if (v24)
    {
      v48 = 1;
      sub_1D4FE2B5C();
      v30 = v6;
      OUTLINED_FUNCTION_3_0(&type metadata for MusicPinStatus.PinnedCodingKeys, &v48);
      v31 = v42;
      v32 = v43;
      swift_unknownObjectRelease();
      (*(v41 + 8))(v30, v18);
    }

    else
    {
      v47 = 0;
      sub_1D4FE2BB0();
      v36 = v39;
      OUTLINED_FUNCTION_3_0(&type metadata for MusicPinStatus.NotPinnedCodingKeys, &v47);
      v31 = v42;
      v32 = v43;
      swift_unknownObjectRelease();
      (*(v40 + 8))(v36, v38);
    }

    (*(v32 + 8))(v16, v27);
    *v31 = v46;
    __swift_destroy_boxed_opaque_existential_1(v45);
  }
}

uint64_t MusicPinStatus.description.getter()
{
  if (*v0)
  {
    return 0x64656E6E69702ELL;
  }

  else
  {
    return 0x6E6E6950746F6E2ELL;
  }
}

void sub_1D4FE3168(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_42();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1D4FE31A4()
{
  result = qword_1EC7ED520;
  if (!qword_1EC7ED520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED520);
  }

  return result;
}

_BYTE *sub_1D4FE3208(_BYTE *result, unsigned int a2, unsigned int a3)
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