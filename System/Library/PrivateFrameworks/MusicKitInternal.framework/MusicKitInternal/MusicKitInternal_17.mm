uint64_t sub_1D4FF7748(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v30 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v18, &qword_1EC7EB5A8, &unk_1D5622F00);
  if (__swift_getEnumTagSinglePayload(v18, 1, v12) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    sub_1D56162F8();
    sub_1D4F8B290();
    sub_1D5614CB8();
    (*(v13 + 8))(v15, v12);
  }

  v19 = v33;
  sub_1D4F39AB0(v2 + *(v33 + 20), v11, &qword_1EC7ECA78, &qword_1D5622340);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v7);
  v21 = v34;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v23 = v28;
    v22 = v29;
    (*(v29 + 32))(v28, v11, v7);
    sub_1D56162F8();
    sub_1D4F8940C();
    sub_1D5614CB8();
    (*(v22 + 8))(v23, v7);
  }

  v24 = v32;
  sub_1D4F39AB0(v3 + *(v19 + 24), v32, &qword_1EC7ECD18, &qword_1D5631040);
  if (__swift_getEnumTagSinglePayload(v24, 1, v21) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v26 = v30;
    v25 = v31;
    (*(v31 + 32))(v30, v24, v21);
    sub_1D56162F8();
    sub_1D4F8B41C();
    sub_1D5614CB8();
    (*(v25 + 8))(v26, v21);
  }

  return sub_1D5616328();
}

uint64_t CloudTVEpisode.Metadata.init(snippets:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
  return result;
}

uint64_t CloudTVEpisode.Metadata.snippets.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static CloudTVEpisode.Metadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1D4FF7CF4(uint64_t a1)
{
  v2 = sub_1D5000AE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FF7D30(uint64_t a1)
{
  v2 = sub_1D5000AE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudTVEpisode.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDAF8, &qword_1D5627060);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_227_0(v1);
  sub_1D5000AE0();

  OUTLINED_FUNCTION_63_3();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
  sub_1D4FCEB00();
  OUTLINED_FUNCTION_21_3();
  sub_1D5616068();

  v3 = OUTLINED_FUNCTION_86_0();
  v4(v3);
  OUTLINED_FUNCTION_26();
}

void CloudTVEpisode.Metadata.hash(into:)()
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

uint64_t CloudTVEpisode.Metadata.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D4F068B4(v3);
  }

  return sub_1D5616328();
}

void CloudTVEpisode.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB08, &qword_1D5627068);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_227_0(v12);
  sub_1D5000AE0();
  OUTLINED_FUNCTION_63_3();
  sub_1D5616398();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
    sub_1D4FCEC6C();
    sub_1D5615F78();
    v16 = OUTLINED_FUNCTION_15_2();
    v17(v16);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_26();
}

uint64_t CloudTVEpisode.attributes.getter()
{
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_14_24();
  return sub_1D50002E0(v1 + v2, v0, v3);
}

uint64_t static CloudTVEpisode.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_1EC7ED9A0 = a1;
}

uint64_t (*static CloudTVEpisode.relationshipCodingKeys.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_159();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D4FF8280@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7ED9A0;
}

uint64_t sub_1D4FF82D0(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7ED9A0 = v1;
}

uint64_t CloudTVEpisode.meta.getter()
{
  v2 = *(v1 + *(OUTLINED_FUNCTION_226_0() + 32));
  *v0 = v2;

  return sub_1D4E67688(v2);
}

uint64_t CloudTVEpisode.meta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CloudTVEpisode(0) + 32);
  result = sub_1D4EA7410(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1D4FF8444()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  sub_1D5610088();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C050;
  result = sub_1D5610078();
  qword_1EDD57208 = v0;
  return result;
}

uint64_t static CloudTVEpisode.catalogTypes.getter()
{
  if (qword_1EDD57200 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D4FF8B1C(char a1)
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

uint64_t sub_1D4FF8BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D4FF8C04(uint64_t a1)
{
  v2 = sub_1D5000B90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FF8C40(uint64_t a1)
{
  v2 = sub_1D5000B90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudTVEpisode.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB20, &qword_1D5627090);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_1();
  sub_1D5000B90();
  sub_1D56163D8();
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_32_9();
  sub_1D56160C8();
  if (!v1)
  {
    type metadata accessor for CloudTVEpisode(0);
    OUTLINED_FUNCTION_117_3();
    type metadata accessor for CloudTVEpisode.Attributes(0);
    OUTLINED_FUNCTION_11_31();
    sub_1D4FF11E4(v4);
    OUTLINED_FUNCTION_54_2();
    sub_1D56160C8();
    type metadata accessor for CloudTVEpisode.Relationships(0);
    OUTLINED_FUNCTION_99_5();
    sub_1D4FF11E4(v5);
    OUTLINED_FUNCTION_54_2();
    sub_1D5616068();
    type metadata accessor for CloudTVEpisode.Associations(0);
    OUTLINED_FUNCTION_98_4();
    sub_1D4FF11E4(v6);
    OUTLINED_FUNCTION_54_2();
    sub_1D5616068();
    v10 = *(v0 + *(v2 + 32));
    sub_1D4E67688(v10);
    sub_1D5000BE4();
    OUTLINED_FUNCTION_32_9();
    sub_1D5616068();
    sub_1D4EA7410(v10);
  }

  v7 = OUTLINED_FUNCTION_134_0();
  return v8(v7);
}

void CloudTVEpisode.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  v3 = type metadata accessor for CloudTVEpisode(0);
  CloudTVEpisode.Attributes.hash(into:)();
  sub_1D4F872A4();
  sub_1D4F86E74();
  v4 = *(v1 + *(v3 + 32));
  if (v4 == 1 || (OUTLINED_FUNCTION_27(), !v4))
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    sub_1D4F068B4(a1);
  }
}

uint64_t sub_1D4FF8F8C(uint64_t (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

void CloudTVEpisode.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v28 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD80, &qword_1D5622F70);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v29 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD98, &unk_1D5627070);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_194_1(v9);
  type metadata accessor for CloudTVEpisode.Attributes(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB50, &unk_1D5627098);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_71_1();
  v15 = type metadata accessor for CloudTVEpisode(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v31 = (v19 - v18);
  v32 = *(v17 + 32);
  *(v19 - v18 + v32) = 1;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D5000B90();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1D4EA7410(*(v31 + v32));
  }

  else
  {
    sub_1D4F89C9C();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615FD8();
    *v31 = v33;
    v31[1] = v34;
    OUTLINED_FUNCTION_11_31();
    sub_1D4FF11E4(v20);
    sub_1D5615FD8();
    sub_1D5000B34(v13, v31 + v15[5], type metadata accessor for CloudTVEpisode.Attributes);
    type metadata accessor for CloudTVEpisode.Relationships(0);
    OUTLINED_FUNCTION_99_5();
    sub_1D4FF11E4(v21);
    sub_1D5615F78();
    sub_1D4F39A1C(v30, v31 + v15[6], &qword_1EC7ECD98, &unk_1D5627070);
    type metadata accessor for CloudTVEpisode.Associations(0);
    LOBYTE(v33) = 3;
    OUTLINED_FUNCTION_98_4();
    sub_1D4FF11E4(v22);
    sub_1D5615F78();
    sub_1D4F39A1C(v29, v31 + v15[7], &qword_1EC7ECD80, &qword_1D5622F70);
    sub_1D5000C38();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615F78();
    v23 = OUTLINED_FUNCTION_26_18();
    v24(v23);
    sub_1D4EA7410(*(v31 + v32));
    *(v31 + v32) = v33;
    v25 = OUTLINED_FUNCTION_89_6();
    sub_1D50002E0(v25, v28, v26);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_15_26();
    sub_1D500033C(v31, v27);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4FF9534(uint64_t a1)
{
  v2 = sub_1D4FF11E4(&unk_1EC7EDC88);

  return MEMORY[0x1EEDCE440](a1, v2);
}

uint64_t sub_1D4FF95F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

void CloudTVEpisode.Attributes.offerKinds.getter()
{
  OUTLINED_FUNCTION_47();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - v4;
  v6 = sub_1D560F548();
  OUTLINED_FUNCTION_4();
  v37 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v41 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
  OUTLINED_FUNCTION_4();
  v12 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9();
  v14 = *(v0 + *(type metadata accessor for CloudTVEpisode.Attributes(0) + 84));
  if (v14)
  {
    swift_getKeyPath();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v12 + 16;
      OUTLINED_FUNCTION_43_3();
      v18 = v14 + v17;
      v39 = *(v16 + 56);
      v40 = v19;
      v38 = (v37 + 32);
      v20 = MEMORY[0x1E69E7CC0];
      v35 = v10;
      v36 = v6;
      v34 = v21;
      do
      {
        v40(v1, v18, v10);
        swift_getAtKeyPath();
        v22 = OUTLINED_FUNCTION_15_2();
        v23(v22);
        OUTLINED_FUNCTION_9_25(v5);
        if (v24)
        {
          sub_1D4E50004(v5, &qword_1EC7EAC58, &unk_1D561DA70);
        }

        else
        {
          v25 = v16;
          v26 = *v38;
          (*v38)(v41, v5, v6);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D4F00C24();
            v20 = v32;
          }

          v28 = *(v20 + 16);
          if (v28 >= *(v20 + 24) >> 1)
          {
            sub_1D4F00C24();
            v20 = v33;
          }

          *(v20 + 16) = v28 + 1;
          OUTLINED_FUNCTION_43_3();
          v31 = v20 + v29 + *(v30 + 72) * v28;
          v6 = v36;
          v26(v31, v41, v36);
          v16 = v25;
          v10 = v35;
        }

        v18 += v39;
        --v15;
      }

      while (v15);
    }
  }

  OUTLINED_FUNCTION_46();
}

uint64_t CloudTVEpisode.Attributes.isSubscriptionRequiredForCatalogAsset.getter()
{
  v1 = type metadata accessor for CloudTVEpisode.Attributes(0);
  sub_1D4FF11E4(&unk_1EC7EDB78);
  sub_1D4FF11E4(&unk_1EC7EDB80);
  OUTLINED_FUNCTION_104();
  if ((sub_1D5612A28() & 1) == 0)
  {
    goto LABEL_10;
  }

  v2 = *(v0 + *(v1 + 76));
  if (v2 != 26)
  {
    if (sub_1D4FD39E0(v2) != 0x656C696172747674 || v4 != 0xE900000000000072)
    {
      sub_1D5616168();
      OUTLINED_FUNCTION_70_2();
      v3 = 117;
      return v3 & 1;
    }

LABEL_10:
    v3 = 0;
    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_1D4FF9AA0(uint64_t a1, uint64_t a2)
{
  sub_1D4FF11E4(&unk_1EC7EDB80);

  return sub_1D5612A28();
}

uint64_t TVEpisode.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v595[1] = a5;
  v596 = a4;
  v604 = a3;
  v605 = a2;
  v588 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v546 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD80, &qword_1D5622F70);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_59_0();
  v26 = v24 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = v546 - v29;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_114();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v43);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_22(v46);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v49);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD98, &unk_1D5627070);
  v53 = OUTLINED_FUNCTION_22(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v57);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v60);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v63);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v65);
  v576 = sub_1D56128C8();
  OUTLINED_FUNCTION_4();
  v575 = v66;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v70 = OUTLINED_FUNCTION_22(v69);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C0, &qword_1D5626FB0);
  OUTLINED_FUNCTION_22(v73);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB88, L"P\b\a");
  OUTLINED_FUNCTION_22(v76);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v78);
  v567 = sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v566 = v79;
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v81);
  v565 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v563 = v82;
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v85);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v87);
  *&v613 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB110, &qword_1D561DEB0);
  OUTLINED_FUNCTION_4();
  v547 = v88;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v90);
  *&v615 = sub_1D560FDC8();
  OUTLINED_FUNCTION_4();
  *&v612 = v91;
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v95 = OUTLINED_FUNCTION_22(v94);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v99 = OUTLINED_FUNCTION_22(v98);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_13_2();
  v102 = OUTLINED_FUNCTION_48(v101);
  v103 = type metadata accessor for CloudVideoOffer(v102);
  v104 = OUTLINED_FUNCTION_22(v103);
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB90, &unk_1D565B670);
  OUTLINED_FUNCTION_22(v106);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v109);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v113 = OUTLINED_FUNCTION_22(v112);
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v115);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v117 = OUTLINED_FUNCTION_22(v116);
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_13_2();
  v120 = OUTLINED_FUNCTION_48(v119);
  v614 = type metadata accessor for TVEpisodePropertyProvider(v120);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v122);
  v602 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v601 = v123;
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v125);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v126);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_38_2();
  v606 = type metadata accessor for CloudTVEpisode(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_5();
  v131 = v130 - v129;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA80, &qword_1D561F1F0);
  v607 = v131;
  v598 = v132;
  sub_1D5610648();
  if (qword_1EC7E8B28 != -1)
  {
    swift_once();
  }

  v546[2] = v8;
  v585 = v30;
  v546[3] = v7;
  v586 = v26;
  v546[4] = v6;
  v587 = v16;
  v133 = sub_1D56109D8();
  __swift_project_value_buffer(v133, qword_1EC87BF50);
  sub_1D4FFCB28();
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v134 = sub_1D560D9A8();
  __swift_project_value_buffer(v134, qword_1EDD53C40);
  OUTLINED_FUNCTION_150();
  v599 = v9;
  sub_1D56105B8();
  v135 = sub_1D56140F8();
  v136 = v608;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v135);
  v140 = v614;
  sub_1D560F928();
  v141 = OUTLINED_FUNCTION_20_1(v571);
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
  v145 = sub_1D560C328();
  v146 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v146, v147, v148, v145);
  v149 = sub_1D5610978();
  v150 = OUTLINED_FUNCTION_20_1(v573);
  __swift_storeEnumTagSinglePayload(v150, v151, v152, v149);
  v153 = sub_1D560C0A8();
  v154 = OUTLINED_FUNCTION_20_1(&v575);
  __swift_storeEnumTagSinglePayload(v154, v155, v156, v153);
  sub_1D5613178();
  v157 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v160);
  sub_1D5613198();
  v161 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
  sub_1D56134E8();
  v165 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v169, v170, v171, v145);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v172, v173, v174, v145);
  sub_1D5614A78();
  v175 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v178);
  v179 = OUTLINED_FUNCTION_40_5(v140[29]);
  v609 = v149;
  v180 = v149;
  v181 = a1;
  __swift_storeEnumTagSinglePayload(v179, v182, v183, v180);
  sub_1D56109F8();
  v184 = OUTLINED_FUNCTION_20_1(v577);
  __swift_storeEnumTagSinglePayload(v184, v185, v186, v187);
  v188 = OUTLINED_FUNCTION_40_5(v140[32]);
  v610 = v135;
  __swift_storeEnumTagSinglePayload(v188, v189, v190, v135);
  v191 = OUTLINED_FUNCTION_40_5(v140[34]);
  __swift_storeEnumTagSinglePayload(v191, v192, v193, v145);
  v194 = OUTLINED_FUNCTION_40_5(v140[36]);
  __swift_storeEnumTagSinglePayload(v194, v195, v196, v615);
  v197 = OUTLINED_FUNCTION_40_5(v140[38]);
  __swift_storeEnumTagSinglePayload(v197, v198, v199, v153);
  v200 = OUTLINED_FUNCTION_40_5(v140[44]);
  __swift_storeEnumTagSinglePayload(v200, v201, v202, v153);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v203 = OUTLINED_FUNCTION_20_1(&v588);
  v560 = v204;
  __swift_storeEnumTagSinglePayload(v203, v205, v206, v204);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  v207 = OUTLINED_FUNCTION_20_1(v595);
  v569 = v208;
  __swift_storeEnumTagSinglePayload(v207, v209, v210, v208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  v211 = OUTLINED_FUNCTION_20_1(&v598);
  v572 = v212;
  __swift_storeEnumTagSinglePayload(v211, v213, v214, v212);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v215 = OUTLINED_FUNCTION_20_1(&v604);
  v577[0] = v216;
  __swift_storeEnumTagSinglePayload(v215, v217, v218, v216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  v219 = OUTLINED_FUNCTION_20_1(&v606);
  v578 = v220;
  __swift_storeEnumTagSinglePayload(v219, v221, v222, v220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  v223 = OUTLINED_FUNCTION_20_1(&v610);
  v581 = v224;
  __swift_storeEnumTagSinglePayload(v223, v225, v226, v224);
  (*(v601 + 16))(v136 + v140[53], v6, v602);
  sub_1D5610658();
  v550 = sub_1D5610618();
  v549 = v227;
  v548 = sub_1D56105C8();
  v228 = sub_1D56105F8();
  v229 = sub_1D56105E8();
  v230 = sub_1D56105A8();
  v231 = v136 + v140[5];
  *v231 = 0;
  *(v231 + 8) = 1;
  *(v136 + v140[16]) = 2;
  *(v136 + v140[18]) = 2;
  v551 = v140[23];
  *(v136 + v551) = 26;
  v232 = v136 + v140[30];
  *v232 = xmmword_1D5626F70;
  *(v232 + 24) = 0;
  *(v232 + 32) = 0;
  *(v232 + 16) = 0;
  v233 = (v136 + v140[42]);
  v233[2] = 0u;
  v233[3] = 0u;
  *v233 = 0u;
  v233[1] = 0u;
  v559 = v233;
  if (qword_1EC7E8E28 != -1)
  {
    swift_once();
  }

  v234 = qword_1EC87C178;
  v235 = v606;
  if (qword_1EC87C178 >> 62)
  {
    sub_1D560CDE8();

    v236 = sub_1D5615E18();

    v234 = v236;
  }

  else
  {

    v236 = v234 & 0xFFFFFFFFFFFFFF8;
    sub_1D56161D8();
    sub_1D560CDE8();
  }

  OUTLINED_FUNCTION_170_1();
  *(v136 + v237[52]) = v234;
  v238 = (v136 + v237[55]);
  v239 = v549;
  *v238 = v550;
  v238[1] = v239;
  *(v136 + v237[56]) = v548;
  *(v136 + v237[57]) = v228;
  *(v136 + v237[58]) = v229;
  *(v136 + v237[59]) = v230;
  v240 = (v607 + *(v235 + 20));
  v241 = type metadata accessor for CloudTVEpisode.Attributes(0);
  OUTLINED_FUNCTION_117_0();
  sub_1D4F39AB0(v242, v243, v244, v245);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_1(v236);
  v550 = v246;
  if (v306)
  {
    sub_1D4E50004(v236, &qword_1EC7EB5B8, &unk_1D56206A0);
    v249 = 1;
    v250 = v554;
    v234 = v552;
  }

  else
  {
    OUTLINED_FUNCTION_167_0();
    sub_1D5610758();
    OUTLINED_FUNCTION_15_1();
    v247 = OUTLINED_FUNCTION_159();
    v248(v247);
    v249 = 0;
    v250 = v554;
  }

  __swift_storeEnumTagSinglePayload(v234, v249, 1, v610);
  v251 = OUTLINED_FUNCTION_122_1();
  sub_1D4E68940(v251, v252, v253, v254);
  v255 = *(v240 + v241[6]);
  if (v255 && (v256 = *(v255 + 16)) != 0)
  {
    v257 = 0;
    v258 = (v255 + 32);
    do
    {
      v259 = *v258++;
      v257 |= qword_1D5627DD0[v259];
      --v256;
    }

    while (v256);
  }

  else
  {
    v257 = 0;
  }

  *v231 = v257;
  *(v231 + 8) = v255 == 0;
  OUTLINED_FUNCTION_11_31();
  sub_1D4FF11E4(v260);
  OUTLINED_FUNCTION_150();
  v554 = v261;
  sub_1D5612A68();
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v231, v262, v263, v264);
  v265 = *(v240 + v241[7]);
  if (v265)
  {
    sub_1D511C2A4(v265);
  }

  OUTLINED_FUNCTION_170_1();
  v267 = *(v266 + 28);
  v268 = (v136 + *(v266 + 32));
  *(v136 + v267) = v269;
  v270 = (v240 + v241[8]);
  v271 = v270[1];
  *v268 = *v270;
  v268[1] = v271;
  v272 = *(v240 + v241[9]);

  if (v272)
  {
    sub_1D5259FF8(v272);
  }

  OUTLINED_FUNCTION_119_3();
  *(v136 + *(v273 + 36)) = v274;
  v275 = *(v240 + v241[21]);
  v276 = 0.0;
  if (!v275)
  {
    v277 = 0;
    goto LABEL_28;
  }

  v277 = *(v240 + v241[21]);
  sub_1D4EC9F44(v275);
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
  OUTLINED_FUNCTION_5_1(v250);
  if (v306)
  {
    sub_1D4E50004(v250, &qword_1EC7EDB90, &unk_1D565B670);
LABEL_28:
    v282 = 1;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_167_0();
  sub_1D5610708();
  OUTLINED_FUNCTION_56_0();
  (*(v279 + 8))(v250, v278);
  v280 = *v234;
  v281 = *(v234 + 8);
  sub_1D500033C(v234, type metadata accessor for CloudVideoOffer);
  if (v281)
  {
    goto LABEL_28;
  }

  v282 = 0;
  v276 = v280 / 1000.0;
LABEL_29:
  v283 = *(v614 + 48);
  v284 = v136 + *(v614 + 44);
  *v284 = v276;
  *(v284 + 8) = v282;
  *(v136 + v283) = *(v240 + v241[11]);
  v285 = v555;
  sub_1D4F39AB0(v240 + v241[12], v555, &qword_1EC7EC960, &unk_1D56334C0);
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v285, 1, v286);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v285, &qword_1EC7EC960, &unk_1D56334C0);
    EnumTagSinglePayload = v556;
  }

  else
  {
    OUTLINED_FUNCTION_150();
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0();
    (*(v288 + 8))(v285, v286);
  }

  v289 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v289, v290, v291, v609);
  OUTLINED_FUNCTION_119_3();
  v293 = *(v292 + 56);
  v294 = *(v292 + 60);
  v295 = v608;
  sub_1D4E68940(EnumTagSinglePayload, v608 + v553, &qword_1EC7EAC98, &unk_1D561DA80);
  *(v295 + v293) = *(v240 + v241[13]);
  *(v295 + v294) = *(v240 + v241[17]);
  v296 = v295;
  v297 = *(v240 + v241[19]);
  if (v297 == 26)
  {
    v298 = 26;
  }

  else
  {
    sub_1D4FD3EB8(*(v240 + v241[19]), v621);
    v298 = v621[0];
  }

  *(v296 + v551) = v298;

  OUTLINED_FUNCTION_61_2();
  sub_1D5000C8C(v299, v300, v301, v302);
  OUTLINED_FUNCTION_11_31();
  sub_1D4FF11E4(v303);
  v304 = sub_1D5612A28();
  if (v297 != 26 && (v304 & 1) != 0)
  {
    v306 = sub_1D4FD39E0(v297) == 0x656C696172747674 && v305 == 0xE900000000000072;
    if (!v306)
    {
      sub_1D5616168();
    }
  }

  OUTLINED_FUNCTION_170_1();
  *(v296 + *(v307 + 76)) = v308 & 1;
  OUTLINED_FUNCTION_165_3(v241[14]);
  v309 = v603;
  v310 = v594;
  v311 = v557;
  if (v277)
  {
    sub_1D501B268();
  }

  OUTLINED_FUNCTION_119_3();
  *(v296 + *(v312 + 112)) = v313;
  sub_1D4F39AB0(v240 + v241[22], v310, &qword_1EC7EC960, &unk_1D56334C0);
  v314 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v314, v315, v286);
  if (v306)
  {
    sub_1D4E50004(v310, &qword_1EC7EC960, &unk_1D56334C0);
    v317 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0();
    (*(v316 + 8))(v310, v286);
    v317 = 0;
  }

  __swift_storeEnumTagSinglePayload(v309, v317, 1, v609);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v309, v318, v319, v320);
  OUTLINED_FUNCTION_61_2();
  sub_1D5000C8C(v599, v321, v322, v323);
  sub_1D4F39AB0(v240 + v241[23], v311, &qword_1EC7EB5B8, &unk_1D56206A0);
  v324 = v550;
  OUTLINED_FUNCTION_57(v311, 1, v550);
  if (v306)
  {
    sub_1D4E50004(v311, &qword_1EC7EB5B8, &unk_1D56206A0);
    v326 = 1;
    v309 = v558;
  }

  else
  {
    OUTLINED_FUNCTION_172();
    sub_1D5610758();
    OUTLINED_FUNCTION_24_0();
    (*(v325 + 8))(v311, v324);
    v326 = 0;
  }

  v589 = v181;
  __swift_storeEnumTagSinglePayload(v309, v326, 1, v610);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v309, v327, v328, v329);
  v330 = v241[24];
  v594 = v240;
  v331 = *(v240 + v330);
  v603 = v241;
  if (v331)
  {
    v332 = *(v331 + 16);
    v333 = MEMORY[0x1E69E7CC0];
    if (v332)
    {
      *&v621[0] = MEMORY[0x1E69E7CC0];
      sub_1D4F03AB4(0, v332, 0);
      v333 = *&v621[0];
      v324 = v547 + 16;
      v610 = *(v547 + 16);
      OUTLINED_FUNCTION_43_3();
      v335 = v331 + v334;
      v609 = *(v324 + 56);
      v336 = v546[1];
      do
      {
        v337 = OUTLINED_FUNCTION_169_0(&v622 + 8);
        v610(v337, v335, v613);
        sub_1D5610728();
        v338 = OUTLINED_FUNCTION_222();
        v339(v338);
        *&v621[0] = v333;
        v341 = *(v333 + 16);
        v340 = *(v333 + 24);
        if (v341 >= v340 >> 1)
        {
          sub_1D4F03AB4(v340 > 1, v341 + 1, 1);
          v333 = *&v621[0];
        }

        *(v333 + 16) = v341 + 1;
        OUTLINED_FUNCTION_43_3();
        (*(v343 + 32))(v333 + v342 + *(v343 + 72) * v341, v336, v615);
        v335 += v609;
        --v332;
      }

      while (v332);
      v296 = v608;
    }
  }

  else
  {
    v333 = 0;
  }

  OUTLINED_FUNCTION_170_1();
  v345 = v296 + *(v344 + 140);
  *(v296 + *(v344 + 132)) = v333;
  v346 = v562;
  sub_1D56107A8();
  v347 = v594;
  OUTLINED_FUNCTION_186();
  v349 = v564;
  v350 = v567;
  (*(v348 + 104))(v564);
  v351 = v561;
  sub_1D5610798();
  v353 = *(v324 + 8);
  v352 = v324 + 8;
  v354 = v349;
  v355 = v347;
  v356 = v603;
  v353(v354, v350);
  OUTLINED_FUNCTION_136();
  v357(v346, v565);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v351, v358, v359, v360);
  v361 = v355 + v356[15];
  v362 = *v361;
  LOBYTE(v361) = v361[8];
  *v345 = v362;
  *(v345 + 8) = v361;
  OUTLINED_FUNCTION_117_0();
  sub_1D4F39AB0(v363, v364, v365, v366);
  v367 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v367, v368, v613);
  if (v306)
  {
    sub_1D4E50004(v346, &qword_1EC7ED9C0, &qword_1D5626FB0);
    OUTLINED_FUNCTION_216_0();
    v345 = v568;
  }

  else
  {
    OUTLINED_FUNCTION_150();
    sub_1D5610728();
    OUTLINED_FUNCTION_136();
    v369 = OUTLINED_FUNCTION_159();
    v370(v369);
    OUTLINED_FUNCTION_216_0();
  }

  v371 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v371, v372, v373, v615);
  OUTLINED_FUNCTION_119_3();
  v375 = (v296 + *(v374 + 148));
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v345, v376, v377, v378);
  v379 = v355[1];
  *v375 = *v355;
  v375[1] = v379;

  OUTLINED_FUNCTION_61_2();
  sub_1D5000C8C(v380, v381, v382, v383);
  v384 = v356[10];
  sub_1D4F39AB0(v355 + v384, v346, &qword_1EC7EC978, &unk_1D56222A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_1(v346);
  if (v306)
  {
    sub_1D4E50004(v346, &qword_1EC7EC978, &unk_1D56222A0);
    v388 = 0;
    v390 = 0;
  }

  else
  {
    v385 = v574;
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v386 = OUTLINED_FUNCTION_159();
    v387(v386);
    v388 = sub_1D56128A8();
    v390 = v389;
    v391 = v385;
    v355 = v594;
    (*(v575 + 8))(v391, v576);
  }

  OUTLINED_FUNCTION_119_3();
  v393 = (v296 + *(v392 + 156));
  *v393 = v388;
  v393[1] = v390;
  OUTLINED_FUNCTION_117_0();
  sub_1D4F39AB0(v394, v395, v396, v397);
  OUTLINED_FUNCTION_1(v388);
  v398 = v580;
  if (v306)
  {
    sub_1D4E50004(v388, &qword_1EC7EC978, &unk_1D56222A0);
    v401 = 0;
    v403 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_150();
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v399 = OUTLINED_FUNCTION_159();
    v400(v399);
    v401 = sub_1D56128B8();
    v403 = v402;
    OUTLINED_FUNCTION_136();
    v404(v390, v576);
  }

  OUTLINED_FUNCTION_171_1();
  v405 = v597;
  OUTLINED_FUNCTION_170_1();
  v407 = (v296 + *(v406 + 160));
  *v407 = v401;
  v407[1] = v403;
  OUTLINED_FUNCTION_165_3(v356[16]);
  sub_1D4F39AB0(v355 + v356[28], v352, &qword_1EC7ED9B0, &unk_1D5631050);
  v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  OUTLINED_FUNCTION_1(v352);
  if (v306)
  {
    sub_1D4E50004(v352, &qword_1EC7ED9B0, &unk_1D5631050);
    *&v409 = OUTLINED_FUNCTION_121_4();
    *(v410 - 256) = v409;
    OUTLINED_FUNCTION_210_0();
  }

  else
  {
    sub_1D5138FDC(v621);
    OUTLINED_FUNCTION_15_1();
    (*(v411 + 8))(v352, v408);
    v613 = v621[1];
    v615 = v621[0];
    v611 = v622;
    v612 = v621[2];
    OUTLINED_FUNCTION_210_0();
    v405 = v597;
  }

  v412 = v591;
  OUTLINED_FUNCTION_119_3();
  v414 = (v296 + *(v413 + 172));
  v415 = v559;
  v416 = v559[1];
  v620[0] = *v559;
  v620[1] = v416;
  v417 = v559[3];
  v620[2] = v559[2];
  v620[3] = v417;
  sub_1D4E50004(v620, &qword_1EC7EDBA0, &unk_1D5637EA0);
  v418 = v613;
  *v415 = v615;
  v415[1] = v418;
  v419 = v611;
  v415[2] = v612;
  v415[3] = v419;
  v420 = (v355 + v603[20]);
  v421 = v420[1];
  *v414 = *v420;
  v414[1] = v421;

  OUTLINED_FUNCTION_61_2();
  sub_1D5000C8C(v422, v423, v424, v425);
  v426 = *(v606 + 24);
  v427 = v579;
  sub_1D4F39AB0(v384 + v426, v579, &qword_1EC7ECD98, &unk_1D5627070);
  v428 = type metadata accessor for CloudTVEpisode.Relationships(0);
  OUTLINED_FUNCTION_1(v427);
  if (v306)
  {
    sub_1D4E50004(v427, &qword_1EC7ECD98, &unk_1D5627070);
    v429 = 1;
  }

  else
  {
    sub_1D4F39AB0(v427, v398, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_10_34();
    sub_1D500033C(v427, v430);
    v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_5_1(v398);
    if (v432)
    {
      sub_1D4E50004(v398, &qword_1EC7EA7F0, &unk_1D561E8C0);
      v429 = 1;
    }

    else
    {
      v433 = sub_1D560CD98();
      OUTLINED_FUNCTION_33_22(v433);
      sub_1D5613C48();
      OUTLINED_FUNCTION_96_5();
      sub_1D4FF11E4(v434);
      OUTLINED_FUNCTION_68_7();
      OUTLINED_FUNCTION_36_14();
      sub_1D5612368();
      v412 = v591;
      OUTLINED_FUNCTION_210_0();
      OUTLINED_FUNCTION_126_2(v435, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      (*(v436 + 8))(v398, v431);
      v429 = 0;
    }

    v405 = v597;
  }

  v437 = v570;
  v438 = v590;
  __swift_storeEnumTagSinglePayload(v590, v429, 1, v560);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v438, v439, v440, v441);
  sub_1D4F39AB0(v384 + v426, v412, &qword_1EC7ECD98, &unk_1D5627070);
  OUTLINED_FUNCTION_1(v412);
  v442 = v593;
  if (v306)
  {
    v443 = &qword_1EC7ECD98;
    v444 = &unk_1D5627070;
  }

  else
  {
    sub_1D4F39AB0(v412 + *(v428 + 20), v405, &qword_1EC7ECD90, &unk_1D5622F80);
    OUTLINED_FUNCTION_10_34();
    sub_1D500033C(v412, v445);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    v412 = v405;
    OUTLINED_FUNCTION_5_1(v405);
    if (!v446)
    {
      v447 = sub_1D560CD98();
      v448 = OUTLINED_FUNCTION_33_22(v447);
      v352 = type metadata accessor for TVSeason(v448);
      OUTLINED_FUNCTION_95_4();
      sub_1D4FF11E4(v449);
      OUTLINED_FUNCTION_88_6();
      OUTLINED_FUNCTION_171_1();
      sub_1D4FF11E4(v450);
      OUTLINED_FUNCTION_68_7();
      OUTLINED_FUNCTION_36_14();
      v442 = v593;
      sub_1D5612368();
      OUTLINED_FUNCTION_210_0();
      OUTLINED_FUNCTION_126_2(v451, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      v452 = OUTLINED_FUNCTION_222();
      v453(v452);
      goto LABEL_86;
    }

    v443 = &qword_1EC7ECD90;
    v444 = &unk_1D5622F80;
  }

  sub_1D4E50004(v412, v443, v444);
LABEL_86:
  v454 = v592;
  v455 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v455, v456, v457, v569);
  sub_1D4E68940(v454, v296 + v437, &qword_1EC7ED1F8, &qword_1D5634780);
  v458 = v583;
  sub_1D4F39AB0(v384 + v426, v583, &qword_1EC7ECD98, &unk_1D5627070);
  OUTLINED_FUNCTION_1(v458);
  if (v306)
  {
    sub_1D4E50004(v458, &qword_1EC7ECD98, &unk_1D5627070);
    v459 = v584;
  }

  else
  {
    sub_1D4F39AB0(v458 + *(v428 + 24), v352, &qword_1EC7ECA58, &unk_1D5622310);
    OUTLINED_FUNCTION_10_34();
    sub_1D500033C(v458, v460);
    v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    OUTLINED_FUNCTION_1(v352);
    v459 = v584;
    if (!v461)
    {
      v462 = sub_1D560CD98();
      v463 = OUTLINED_FUNCTION_33_22(v462);
      type metadata accessor for TVShow(v463);
      v412 = v352;
      sub_1D4FF11E4(&qword_1EC7ECBB0);
      OUTLINED_FUNCTION_76_6();
      sub_1D4FF11E4(v464);
      OUTLINED_FUNCTION_68_7();
      OUTLINED_FUNCTION_36_14();
      v465 = v606;
      v466 = v596;
      v384 = v607;
      v467 = sub_1D5612368();
      OUTLINED_FUNCTION_126_2(v467, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v468 = OUTLINED_FUNCTION_159();
      v469(v468);
      OUTLINED_FUNCTION_214_0();
      goto LABEL_93;
    }

    sub_1D4E50004(v352, &qword_1EC7ECA58, &unk_1D5622310);
  }

  OUTLINED_FUNCTION_214_0();
  v466 = v596;
  v465 = v606;
LABEL_93:
  __swift_storeEnumTagSinglePayload(v459, v470, 1, v471);
  sub_1D4E68940(v459, v296 + v428, &qword_1EC7ECBA0, &unk_1D56270F0);
  v472 = *(v465 + 28);
  sub_1D4F39AB0(v384 + v472, v442, &qword_1EC7ECD80, &qword_1D5622F70);
  type metadata accessor for CloudTVEpisode.Associations(0);
  OUTLINED_FUNCTION_1(v442);
  v473 = v585;
  if (v306)
  {
    sub_1D4E50004(v442, &qword_1EC7ECD80, &qword_1D5622F70);
  }

  else
  {
    OUTLINED_FUNCTION_122_0();
    sub_1D4F39AB0(v474, v475, v476, v477);
    OUTLINED_FUNCTION_9_33();
    sub_1D500033C(v442, v478);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    OUTLINED_FUNCTION_5_1(v384);
    if (v479)
    {
      sub_1D4E50004(v384, &qword_1EC7EB5A8, &unk_1D5622F00);
    }

    else
    {
      v480 = sub_1D560CD98();
      OUTLINED_FUNCTION_33_22(v480);
      sub_1D5613EF8();
      OUTLINED_FUNCTION_93_6();
      sub_1D4FF11E4(v481);
      OUTLINED_FUNCTION_68_7();
      OUTLINED_FUNCTION_36_14();
      v412 = v384;
      v482 = sub_1D5612368();
      OUTLINED_FUNCTION_126_2(v482, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      v483 = OUTLINED_FUNCTION_93();
      v484(v483);
    }

    OUTLINED_FUNCTION_171_1();
  }

  v485 = v577[2];
  v486 = OUTLINED_FUNCTION_169_0(&v616);
  __swift_storeEnumTagSinglePayload(v486, v487, 1, v488);
  sub_1D4E68940(v412, v296 + v485, &off_1EC7EB5B0, &unk_1D5632170);
  sub_1D4F39AB0(v384 + v472, v473, &qword_1EC7ECD80, &qword_1D5622F70);
  OUTLINED_FUNCTION_1(v473);
  if (v306)
  {
    v489 = &qword_1EC7ECD80;
    v490 = &qword_1D5622F70;
    v491 = v473;
  }

  else
  {
    OUTLINED_FUNCTION_117_0();
    sub_1D4F39AB0(v492, v493, v494, v495);
    OUTLINED_FUNCTION_9_33();
    sub_1D500033C(v473, v496);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    OUTLINED_FUNCTION_5_1(v412);
    if (!v497)
    {
      sub_1D560CD98();
      v498 = v465;
      v499 = v595[0];
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v500, v501, v502, v503);
      type metadata accessor for TVEpisode(0);
      v384 = type metadata accessor for TVEpisode;
      sub_1D4FF11E4(&qword_1EC7ECBB8);
      OUTLINED_FUNCTION_171_1();
      sub_1D4FF11E4(v504);
      OUTLINED_FUNCTION_68_7();
      v296 = v608;
      sub_1D5612368();
      v505 = v499;
      v465 = v498;
      sub_1D4E50004(v505, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      v506 = OUTLINED_FUNCTION_222();
      v507(v506);
      goto LABEL_107;
    }

    v489 = &qword_1EC7ECA78;
    v490 = &qword_1D5622340;
    v491 = v412;
  }

  sub_1D4E50004(v491, v489, v490);
LABEL_107:
  v508 = v602;
  v509 = v589;
  v510 = OUTLINED_FUNCTION_169_0(v617);
  __swift_storeEnumTagSinglePayload(v510, v511, 1, v578);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v412, v512, v513, v514);
  OUTLINED_FUNCTION_117_0();
  sub_1D4F39AB0(v515, v516, v517, v518);
  OUTLINED_FUNCTION_1(v412);
  if (v306)
  {
    sub_1D4E50004(v412, &qword_1EC7ECD80, &qword_1D5622F70);
    v519 = v587;
    v520 = v614;
  }

  else
  {
    OUTLINED_FUNCTION_122_0();
    sub_1D4F39AB0(v521, v522, v523, v524);
    OUTLINED_FUNCTION_9_33();
    sub_1D500033C(v412, v525);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_1(v384);
    v519 = v587;
    v520 = v614;
    if (v526)
    {
      sub_1D4E50004(v384, &qword_1EC7ECD18, &qword_1D5631040);
    }

    else
    {
      v527 = sub_1D560CD98();
      OUTLINED_FUNCTION_33_22(v527);
      sub_1D5614898();
      OUTLINED_FUNCTION_91_6();
      sub_1D4FF11E4(v528);
      OUTLINED_FUNCTION_68_7();
      OUTLINED_FUNCTION_36_14();
      v529 = sub_1D5612368();
      OUTLINED_FUNCTION_126_2(v529, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v530 = OUTLINED_FUNCTION_86_0();
      v531(v530);
    }

    OUTLINED_FUNCTION_171_1();
  }

  v532 = v582;
  v533 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v533, v534, v535, v536);
  sub_1D4E68940(v519, v296 + v532, &qword_1EC7EB620, &unk_1D561E5B0);
  v537 = *(v465 + 32);
  v538 = *(v384 + v537);
  if (v538 == 1)
  {
    v539 = 0;
  }

  else
  {
    v539 = *(v384 + v537);
  }

  *(v296 + *(v520 + 204)) = v539;
  v618 = v520;
  v619 = sub_1D4FF11E4(&qword_1EC7EDBA8);
  v540 = __swift_allocate_boxed_opaque_existential_0(&v616);
  sub_1D50002E0(v296, v540, type metadata accessor for TVEpisodePropertyProvider);
  sub_1D4E67688(v538);
  TVEpisode.init(propertyProvider:)(&v616, v588);

  OUTLINED_FUNCTION_24_0();
  (*(v541 + 8))(v605, v466);
  OUTLINED_FUNCTION_24_0();
  (*(v542 + 8))(v509);
  OUTLINED_FUNCTION_136();
  v543(v600, v508);
  sub_1D4E50004(v599, &qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_15_26();
  sub_1D500033C(v384, v544);
  return sub_1D500033C(v296, type metadata accessor for TVEpisodePropertyProvider);
}

void sub_1D4FFC7E0()
{
  OUTLINED_FUNCTION_47();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16_0();
  sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v40 = v4;
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v38 = v9;
  v39 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = type metadata accessor for CloudMusicMovie.Attributes(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = type metadata accessor for CloudMusicMovie(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v20 = sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9E8, &unk_1D561F190);
  sub_1D5610648();
  sub_1D50002E0(v0 + *(v19 + 28), v17, type metadata accessor for CloudMusicMovie.Attributes);
  sub_1D500033C(v0, type metadata accessor for CloudMusicMovie);
  v24 = sub_1D4FF11E4(&unk_1EDD5C958);
  v25 = MEMORY[0x1DA6E8800](v13, v24);
  sub_1D500033C(v17, type metadata accessor for CloudMusicMovie.Attributes);
  if (v25)
  {
    sub_1D501F124(v7);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v20);
    OUTLINED_FUNCTION_180_1();
    v29 = OUTLINED_FUNCTION_98();
    sub_1D4E50004(v29, v30, &unk_1D56223C0);
    (*(v40 + 8))(v7, v41);
    sub_1D560D608();
    (*(v38 + 8))(v12, v39);
    v31 = OUTLINED_FUNCTION_159();
    sub_1D4E50004(v31, v32, &unk_1D56223C0);
    v33 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v20);
    v36 = OUTLINED_FUNCTION_63_1();
    sub_1D4F39A1C(v36, v37, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4FFCB28()
{
  OUTLINED_FUNCTION_47();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16_0();
  sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v44 = v4;
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v42 = v9;
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = type metadata accessor for CloudTVEpisode.Attributes(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = type metadata accessor for CloudTVEpisode(0);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v19 = sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA80, &qword_1D561F1F0);
  sub_1D5610648();
  OUTLINED_FUNCTION_14_24();
  sub_1D50002E0(v0 + v23, v17, v24);
  OUTLINED_FUNCTION_15_26();
  sub_1D500033C(v0, v25);
  OUTLINED_FUNCTION_11_31();
  v27 = sub_1D4FF11E4(v26);
  v28 = MEMORY[0x1DA6E8800](v13, v27);
  OUTLINED_FUNCTION_13_29();
  sub_1D500033C(v17, v29);
  if (v28)
  {
    sub_1D501F124(v7);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v19);
    OUTLINED_FUNCTION_180_1();
    v33 = OUTLINED_FUNCTION_98();
    sub_1D4E50004(v33, v34, &unk_1D56223C0);
    (*(v44 + 8))(v7, v45);
    sub_1D560D608();
    (*(v42 + 8))(v12, v43);
    v35 = OUTLINED_FUNCTION_159();
    sub_1D4E50004(v35, v36, &unk_1D56223C0);
    v37 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v19);
    v40 = OUTLINED_FUNCTION_63_1();
    sub_1D4F39A1C(v40, v41, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  OUTLINED_FUNCTION_46();
}

void TVEpisode.convertToCloudResource<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v485 = v25;
  v484 = v26;
  v483 = v27;
  v465 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v31);
  v32 = sub_1D5610088();
  v33 = OUTLINED_FUNCTION_22(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v40);
  v463 = sub_1D5612B78();
  OUTLINED_FUNCTION_4();
  v462 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  v44 = OUTLINED_FUNCTION_48(v43);
  v459 = type metadata accessor for CloudTVEpisode(v44);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v48);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v51);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v54);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v58 = OUTLINED_FUNCTION_22(v57);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  v62 = OUTLINED_FUNCTION_22(v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v419[-v64];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v67 = OUTLINED_FUNCTION_22(v66);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD80, &qword_1D5622F70);
  v71 = OUTLINED_FUNCTION_22(v70);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v74);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v77);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v79);
  v482 = sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v481 = v80;
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v83);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  v87 = OUTLINED_FUNCTION_22(v86);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  v91 = OUTLINED_FUNCTION_22(v90);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v95 = OUTLINED_FUNCTION_22(v94);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD98, &unk_1D5627070);
  v99 = OUTLINED_FUNCTION_22(v98);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v419[-v101];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v103);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v105);
  v501 = sub_1D560FDC8();
  OUTLINED_FUNCTION_4();
  v466 = v106;
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v108);
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB110, &qword_1D561DEB0);
  OUTLINED_FUNCTION_4();
  v499 = v109;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB88, L"P\b\a");
  OUTLINED_FUNCTION_22(v112);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v114);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C0, &qword_1D5626FB0);
  OUTLINED_FUNCTION_22(v115);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v117);
  v456 = sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v453 = v118;
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v121);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v123);
  v451 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v449 = v124;
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v126);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v128 = OUTLINED_FUNCTION_22(v127);
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v130);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v132 = OUTLINED_FUNCTION_22(v131);
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v134);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v136 = OUTLINED_FUNCTION_22(v135);
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v138);
  v494 = sub_1D56128C8();
  OUTLINED_FUNCTION_4();
  v140 = v139;
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_5_0();
  v143 = v142;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v144);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v146);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v148 = OUTLINED_FUNCTION_22(v147);
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_159_1();
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v151 = OUTLINED_FUNCTION_22(v150);
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_13_2();
  v154 = OUTLINED_FUNCTION_48(v153);
  v458 = type metadata accessor for CloudTVEpisode.Attributes(v154);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v156);
  v455 = TVEpisode.showName.getter();
  v454 = v157;
  if (qword_1EC7E9170 != -1)
  {
    swift_once();
  }

  v158 = sub_1D56140F8();
  v159 = sub_1D4FF11E4(&qword_1EDD54508);
  sub_1D4FF11E4(&qword_1EC7EC490);
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_205_0();
  *(v161 - 256) = v160;
  sub_1D560EC28();
  OUTLINED_FUNCTION_1(v21);
  v496 = v158;
  if (v162)
  {
    sub_1D4E50004(v21, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  else
  {
    sub_1D5613F28();
    OUTLINED_FUNCTION_15_1();
    v163 = OUTLINED_FUNCTION_134_0();
    v164(v163);
  }

  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_139_4(v165);
  if (qword_1EC7E9178 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_205_0();
  sub_1D560EC28();
  v166 = *&v508[0];
  if (BYTE8(v508[0]))
  {
    v166 = 0;
  }

  *&v508[0] = v166;
  v448 = sub_1D504A774();
  if (qword_1EC7E9188 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_64_10();
  OUTLINED_FUNCTION_168_2();
  sub_1D560EC28();
  v167 = MEMORY[0x1E69E7CC0];
  if (*&v508[0])
  {
    v168 = *&v508[0];
  }

  else
  {
    v168 = MEMORY[0x1E69E7CC0];
  }

  v447 = sub_1D511C730(v168);

  if (qword_1EC7E9190 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_168_2();
  sub_1D560EC28();
  v445 = *(&v508[0] + 1);
  v446 = *&v508[0];
  if (qword_1EC7E9290 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED208, &unk_1D5623F80);
  OUTLINED_FUNCTION_64_10();
  OUTLINED_FUNCTION_168_2();
  sub_1D560EC28();
  if (*&v508[0])
  {
    v444 = sub_1D525AA6C(*&v508[0]);
  }

  else
  {
    v444 = 0;
  }

  v488 = v102;
  v492 = v65;
  if (qword_1EC7E9258 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_205_0();
  v170 = *(v169 - 256);
  OUTLINED_FUNCTION_138_4(v171, v172, v173);
  if (qword_1EC7E9268 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_138_4(qword_1EC87C480, MEMORY[0x1E69E6158], v159);
  sub_1D56128D8();
  OUTLINED_FUNCTION_172();
  sub_1D5612898();
  (*(v140 + 8))(v143, v494);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  v174 = OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v174, 0, 1, v175);
  if (qword_1EC7E91A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  v176 = OUTLINED_FUNCTION_64_10();
  OUTLINED_FUNCTION_138_4(v176, v177, v159);
  v443 = *&v508[0];
  v178 = v467;
  v179 = v429;
  if (qword_1EC7E91B0 != -1)
  {
    swift_once();
  }

  v180 = qword_1EC87C3C8;
  v181 = sub_1D5610978();
  v182 = v471;
  OUTLINED_FUNCTION_138_4(v180, v181, v159);
  OUTLINED_FUNCTION_43_0(v182);
  v494 = v159;
  if (v162)
  {
    sub_1D4E50004(v182, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    OUTLINED_FUNCTION_172();
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0();
    v183 = OUTLINED_FUNCTION_164_0();
    v184(v183);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v185 = OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_24_8(v185, v186, v187, v188);
  v189 = sub_1D4F84A58();
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  v191 = v494;
  OUTLINED_FUNCTION_78_7(v189, v190);

  v441 = *&v508[0];
  if (qword_1EC7E9210 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7(qword_1EC87C428, MEMORY[0x1E69E6530]);
  v440 = *&v508[0];
  v439 = BYTE8(v508[0]);
  v192 = v442;
  if (qword_1EC7E9250 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7(qword_1EC87C468, MEMORY[0x1E69E6530]);
  v438 = *&v508[0];
  v437 = BYTE8(v508[0]);
  v193 = v475;
  if (qword_1EC7E9270 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7(qword_1EC87C488, MEMORY[0x1E69E6530]);
  v436 = *&v508[0];
  v435 = BYTE8(v508[0]);
  if (qword_1EC7E91B8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  v194 = OUTLINED_FUNCTION_64_10();
  OUTLINED_FUNCTION_78_7(v194, v195);
  v434 = *&v508[0];
  if (qword_1EC7E9298 != -1)
  {
    swift_once();
  }

  sub_1D560C0A8();
  v196 = OUTLINED_FUNCTION_137_3();
  v471 = v197;
  OUTLINED_FUNCTION_78_7(v196, v197);
  if (qword_1EC7E91F0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7(qword_1EC87C408, &type metadata for TVEpisode.Kind);
  if (LOBYTE(v508[0]) == 26)
  {
    v433 = 26;
  }

  else
  {
    LOBYTE(v506[0]) = v508[0];
    v433 = sub_1D4FD3EC0();
  }

  v432 = TVEpisode.title.getter();
  v431 = v198;
  if (qword_1EC7E9218 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBC0, &qword_1D562BF20);
  v199 = OUTLINED_FUNCTION_64_10();
  OUTLINED_FUNCTION_78_7(v199, v200);
  sub_1D501B598();
  v430 = v201;

  if (qword_1EC7E9220 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_78_7(qword_1EC87C438, v181);
  OUTLINED_FUNCTION_43_0(v179);
  if (v162)
  {
    sub_1D4E50004(v179, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0();
    (*(v202 + 8))(v179, v181);
  }

  v203 = v474;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v204 = OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_24_8(v204, v205, v206, v207);
  v208 = v496;
  if (qword_1EC7E9238 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_78_7(v209, v208);
  OUTLINED_FUNCTION_57(v193, 1, v208);
  if (v162)
  {
    sub_1D4E50004(v193, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  else
  {
    sub_1D5613F28();
    OUTLINED_FUNCTION_24_0();
    v210 = OUTLINED_FUNCTION_141();
    v211(v210);
  }

  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_24_8(v203, v213, v214, v212);
  if (qword_1EC7E9240 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDBB0, L"X\b\t");
  v215 = OUTLINED_FUNCTION_64_10();
  OUTLINED_FUNCTION_78_7(v215, v216);
  if (*&v508[0])
  {
    v217 = *&v508[0];
  }

  else
  {
    v217 = v167;
  }

  v218 = *(v217 + 16);
  v468 = v24;
  if (v218)
  {
    *&v508[0] = v167;
    v219 = OUTLINED_FUNCTION_135_5();
    sub_1D4F0409C(v219, v218, 0);
    v220 = *&v508[0];
    v221 = v466 + 16;
    v497 = *(v466 + 16);
    OUTLINED_FUNCTION_43_3();
    v429 = v217;
    v223 = v217 + v222;
    v496 = *(v221 + 56);
    OUTLINED_FUNCTION_119_3();
    do
    {
      v224 = OUTLINED_FUNCTION_169_0(&a11);
      v497(v224, v223, v501);
      sub_1D560FDB8();
      v225 = OUTLINED_FUNCTION_222();
      v226(v225);
      *&v508[0] = v220;
      v228 = *(v220 + 16);
      v227 = *(v220 + 24);
      if (v228 >= v227 >> 1)
      {
        sub_1D4F0409C(v227 > 1, v228 + 1, 1);
        v220 = *&v508[0];
      }

      *(v220 + 16) = v228 + 1;
      OUTLINED_FUNCTION_43_3();
      (*(v230 + 32))(v220 + v229 + *(v230 + 72) * v228, v192, v500);
      v223 += v496;
      --v218;
    }

    while (v218);
    v499 = v220;

    v191 = v494;
    v170 = v495;
    v178 = v467;
  }

  else
  {

    v499 = MEMORY[0x1E69E7CC0];
  }

  sub_1D56107A8();
  v231 = v457;
  if (qword_1EC7E9248 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  v232 = v450;
  sub_1D560EC28();
  OUTLINED_FUNCTION_186();
  v234 = v191;
  v235 = v452;
  v236 = v456;
  (*(v233 + 104))(v452);
  v498 = sub_1D56107B8();
  v497 = v237;
  MEMORY[8](v235, v236);
  sub_1D4E50004(v232, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_136();
  v238(v178, v451);
  if (qword_1EC7E92A0 != -1)
  {
    swift_once();
  }

  v239 = v501;
  sub_1D560EC28();
  OUTLINED_FUNCTION_32_1(v231);
  v240 = v478;
  v241 = v234;
  if (v162)
  {
    sub_1D4E50004(v231, &qword_1EC7EDB88, L"P\b\a");
    v243 = 1;
  }

  else
  {
    sub_1D560FDB8();
    OUTLINED_FUNCTION_136();
    v242(v231, v239);
    v243 = 0;
  }

  v244 = v472;
  v245 = v448;
  __swift_storeEnumTagSinglePayload(v240, v243, 1, v500);
  v246 = MEMORY[0x1E69E7CC0];
  if (qword_1EC7E92A8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_138_4(qword_1EC7F21E0, v471, v241);
  if (qword_1EC7E9278 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_138_4(qword_1EC87C490, &type metadata for VideoSupportedLocales, v241);
  if (*(&v508[0] + 1))
  {
    v502 = v508[0];
    v503 = v508[1];
    v504 = v508[2];
    v505 = v508[3];
    OUTLINED_FUNCTION_172();
    sub_1D51394FC(v247);
    v506[0] = v502;
    v506[1] = v503;
    v506[2] = v504;
    v507 = v505;
    sub_1D5000CD8(v506);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    v248 = OUTLINED_FUNCTION_17_2();
    v250 = 0;
  }

  else
  {
    v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    v248 = v479;
    v250 = 1;
  }

  __swift_storeEnumTagSinglePayload(v248, v250, 1, v249);
  if (qword_1EC7E9288 != -1)
  {
    swift_once();
  }

  v251 = v458;
  v252 = v487;
  OUTLINED_FUNCTION_138_4(qword_1EC87C4A0, v471, v241);
  if (v434)
  {
    v246 = v434;
  }

  v253 = v454;
  *v252 = v455;
  v252[1] = v253;
  sub_1D4F39A1C(v244, v252 + v251[5], &qword_1EC7EB5B8, &unk_1D56206A0);
  *(v252 + v251[6]) = v245;
  OUTLINED_FUNCTION_148_4(v251[7]);
  v254 = (v252 + v251[8]);
  v255 = v445;
  *v254 = v446;
  v254[1] = v255;
  OUTLINED_FUNCTION_148_4(v251[9]);
  sub_1D4F39A1C(v473, v252 + v251[10], &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_148_4(v251[11]);
  v256 = v241;
  OUTLINED_FUNCTION_204_1();
  sub_1D4F39A1C(v257, v258, v259, v260);
  OUTLINED_FUNCTION_148_4(v251[13]);
  v261 = v252 + v251[14];
  *v261 = v440;
  v261[8] = v439;
  v262 = v252 + v251[15];
  *v262 = v438;
  v262[8] = v437;
  v263 = v252 + v251[16];
  *v263 = v436;
  v263[8] = v435;
  *(v252 + v251[17]) = v246;
  v264 = &unk_1D561D1D0;
  sub_1D4F39A1C(v476, v252 + v251[18], &unk_1EC7E9CA8, &unk_1D561D1D0);
  *(v252 + v251[19]) = v433;
  v265 = (v252 + v251[20]);
  v266 = v431;
  *v265 = v432;
  v265[1] = v266;
  OUTLINED_FUNCTION_148_4(v251[21]);
  OUTLINED_FUNCTION_204_1();
  sub_1D4F39A1C(v267, v268, v269, v270);
  sub_1D4F39A1C(v474, v252 + v251[23], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_148_4(v251[24]);
  v271 = (v252 + v251[25]);
  v272 = v497;
  *v271 = v498;
  v271[1] = v272;
  sub_1D4F39A1C(v478, v252 + v251[26], &qword_1EC7ED9C0, &qword_1D5626FB0);
  sub_1D4F39A1C(v477, v252 + v251[27], &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4F39A1C(v479, v252 + v251[28], &qword_1EC7ED9B0, &unk_1D5631050);
  v273 = type metadata accessor for CloudTVEpisode.Relationships(0);
  OUTLINED_FUNCTION_145_0(v508);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v274, v275, v276, v273);
  if (qword_1EC7E92B0 != -1)
  {
    swift_once();
  }

  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_137_3();
  v278 = v468;
  sub_1D560EC28();
  v279 = v256;
  v280 = v170;
  if (qword_1EC7E92B8 != -1)
  {
    swift_once();
  }

  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  OUTLINED_FUNCTION_137_3();
  OUTLINED_FUNCTION_204_1();
  sub_1D560EC28();
  if (qword_1EC7E92C0 != -1)
  {
    swift_once();
  }

  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  OUTLINED_FUNCTION_77_3();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_204_1();
  sub_1D560EC28();
  v283 = OUTLINED_FUNCTION_209_0();
  OUTLINED_FUNCTION_32_1(v283);
  if (!v162 || (OUTLINED_FUNCTION_43_0(v491), !v162) || (OUTLINED_FUNCTION_5_1(v489), !v162))
  {
    v501 = v273;
    OUTLINED_FUNCTION_209_0();
    OUTLINED_FUNCTION_117_0();
    sub_1D4F39AB0(v284, v285, v286, v287);
    OUTLINED_FUNCTION_32_1(v278);
    if (v162)
    {
      sub_1D4E50004(v278, &qword_1EC7EA788, &unk_1D56223A0);
      v295 = v422;
      v264 = v469;
    }

    else
    {
      sub_1D5613C48();
      v500 = v282;
      OUTLINED_FUNCTION_96_5();
      v279 = sub_1D4FF11E4(v288);
      OUTLINED_FUNCTION_35_17();
      OUTLINED_FUNCTION_110_5(v289);
      OUTLINED_FUNCTION_186();
      v290 = OUTLINED_FUNCTION_81_8();
      OUTLINED_FUNCTION_181_1(v290, v291);
      v292 = OUTLINED_FUNCTION_39_11();
      v293(v292);
      OUTLINED_FUNCTION_24_0();
      v282 = v500;
      (*(v294 + 8))(v278, v277);
      v295 = v422;
    }

    v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_24_8(v264, v297, v298, v296);
    v299 = v420;
    sub_1D4F39AB0(v491, v420, &qword_1EC7ED1F8, &qword_1D5634780);
    OUTLINED_FUNCTION_43_0(v299);
    if (v162)
    {
      sub_1D4E50004(v299, &qword_1EC7ED1F8, &qword_1D5634780);
    }

    else
    {
      type metadata accessor for TVSeason(0);
      OUTLINED_FUNCTION_95_4();
      v279 = sub_1D4FF11E4(v300);
      OUTLINED_FUNCTION_88_6();
      sub_1D4FF11E4(v301);
      OUTLINED_FUNCTION_35_17();
      v303 = *(v302 - 256);
      OUTLINED_FUNCTION_110_5(v304);
      v305 = OUTLINED_FUNCTION_81_8();
      OUTLINED_FUNCTION_230_0(v305, v306, v281, v303, v279);
      v307 = OUTLINED_FUNCTION_39_11();
      v308(v307);
      OUTLINED_FUNCTION_24_0();
      (*(v309 + 8))(v299, v281);
    }

    v280 = v423;
    v264 = v421;
    v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    OUTLINED_FUNCTION_139_4(v310);
    sub_1D4F39AB0(v489, v264, &qword_1EC7ECBA0, &unk_1D56270F0);
    OUTLINED_FUNCTION_5_1(v264);
    if (v162)
    {
      sub_1D4E50004(v252, &qword_1EC7ECD98, &unk_1D5627070);
      sub_1D4E50004(v264, &qword_1EC7ECBA0, &unk_1D56270F0);
      v316 = 1;
    }

    else
    {
      type metadata accessor for TVShow(0);
      v311 = sub_1D4FF11E4(&qword_1EC7ECBB0);
      OUTLINED_FUNCTION_76_6();
      sub_1D4FF11E4(v312);
      OUTLINED_FUNCTION_167_0();
      v313 = v484;
      OUTLINED_FUNCTION_110_5(v314);
      OUTLINED_FUNCTION_230_0(v483, v279, v282, v313, v311);
      (*(v481 + 8))(v279, v482);
      sub_1D4E50004(v252, &qword_1EC7ECD98, &unk_1D5627070);
      OUTLINED_FUNCTION_56_0();
      (*(v315 + 8))(v264, v282);
      v316 = 0;
    }

    v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    OUTLINED_FUNCTION_24_8(v280, v318, v319, v317);
    OUTLINED_FUNCTION_117_0();
    sub_1D4F39A1C(v320, v321, v322, v323);
    v324 = v501;
    sub_1D4F39A1C(v295, v316 + *(v501 + 20), &qword_1EC7ECD90, &unk_1D5622F80);
    sub_1D4F39A1C(v280, v316 + *(v324 + 24), &qword_1EC7ECA58, &unk_1D5622310);
    __swift_storeEnumTagSinglePayload(v316, 0, 1, v324);
    v325 = OUTLINED_FUNCTION_159();
    sub_1D4F39A1C(v325, v326, v327, v328);
  }

  v329 = type metadata accessor for CloudTVEpisode.Associations(0);
  OUTLINED_FUNCTION_115_5(&v507 + 8);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v330, v331, v332, v329);
  if (qword_1EC7E92C8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_137_3();
  OUTLINED_FUNCTION_205_0();
  sub_1D560EC28();
  if (qword_1EC7E92D0 != -1)
  {
    swift_once();
  }

  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_137_3();
  sub_1D560EC28();
  if (qword_1EC7E92D8 != -1)
  {
    swift_once();
  }

  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_222();
  sub_1D560EC28();
  OUTLINED_FUNCTION_32_1(v493);
  if (!v162 || (OUTLINED_FUNCTION_43_0(v492), !v162) || (OUTLINED_FUNCTION_5_1(v490), !v162))
  {
    v501 = v329;
    v335 = v424;
    sub_1D4F39AB0(v493, v424, &off_1EC7EB5B0, &unk_1D5632170);
    OUTLINED_FUNCTION_32_1(v335);
    if (v162)
    {
      sub_1D4E50004(v335, &off_1EC7EB5B0, &unk_1D5632170);
      v344 = v427;
      v264 = v470;
    }

    else
    {
      sub_1D5613EF8();
      OUTLINED_FUNCTION_93_6();
      sub_1D4FF11E4(v336);
      OUTLINED_FUNCTION_35_17();
      OUTLINED_FUNCTION_110_5(v337);
      OUTLINED_FUNCTION_186();
      v338 = OUTLINED_FUNCTION_81_8();
      OUTLINED_FUNCTION_181_1(v338, v339);
      v340 = OUTLINED_FUNCTION_39_11();
      v341(v340);
      OUTLINED_FUNCTION_24_0();
      v342 = OUTLINED_FUNCTION_81_0();
      v343(v342);
      v344 = v427;
    }

    v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    OUTLINED_FUNCTION_24_8(v264, v346, v347, v345);
    v348 = v425;
    sub_1D4F39AB0(v492, v425, &qword_1EC7ECBA8, &unk_1D56223B0);
    OUTLINED_FUNCTION_43_0(v348);
    if (v162)
    {
      sub_1D4E50004(v348, &qword_1EC7ECBA8, &unk_1D56223B0);
    }

    else
    {
      type metadata accessor for TVEpisode(0);
      OUTLINED_FUNCTION_92_4();
      v350 = sub_1D4FF11E4(v349);
      OUTLINED_FUNCTION_35_17();
      v352 = *(v351 - 256);
      OUTLINED_FUNCTION_110_5(v353);
      v354 = OUTLINED_FUNCTION_81_8();
      OUTLINED_FUNCTION_230_0(v354, v355, v333, v352, v350);
      v356 = OUTLINED_FUNCTION_39_11();
      v357(v356);
      OUTLINED_FUNCTION_24_0();
      (*(v358 + 8))(v348, v333);
    }

    v359 = v428;
    v360 = v426;
    v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    OUTLINED_FUNCTION_139_4(v361);
    sub_1D4F39AB0(v490, v360, &qword_1EC7EB620, &unk_1D561E5B0);
    OUTLINED_FUNCTION_5_1(v360);
    if (v162)
    {
      v362 = OUTLINED_FUNCTION_115_5(&v507 + 8);
      sub_1D4E50004(v362, v363, v364);
      sub_1D4E50004(v360, &qword_1EC7EB620, &unk_1D561E5B0);
      v377 = 1;
    }

    else
    {
      sub_1D5614898();
      OUTLINED_FUNCTION_91_6();
      v366 = sub_1D4FF11E4(v365);
      OUTLINED_FUNCTION_35_17();
      v368 = *(v367 - 256);
      OUTLINED_FUNCTION_110_5(v369);
      v370 = OUTLINED_FUNCTION_81_8();
      OUTLINED_FUNCTION_230_0(v370, v371, v334, v368, v366);
      OUTLINED_FUNCTION_136();
      v372(v280, v482);
      v373 = OUTLINED_FUNCTION_115_5(&v507 + 8);
      sub_1D4E50004(v373, v374, v375);
      OUTLINED_FUNCTION_56_0();
      (*(v376 + 8))(v360, v334);
      v377 = 0;
    }

    v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_24_8(v359, v379, v380, v378);
    OUTLINED_FUNCTION_117_0();
    sub_1D4F39A1C(v381, v382, v383, v384);
    v385 = v501;
    sub_1D4F39A1C(v344, v377 + *(v501 + 20), &qword_1EC7ECA78, &qword_1D5622340);
    sub_1D4F39A1C(v359, v377 + *(v385 + 24), &qword_1EC7ECD18, &qword_1D5631040);
    __swift_storeEnumTagSinglePayload(v377, 0, 1, v385);
    sub_1D4F39A1C(v377, v280, &qword_1EC7ECD80, &qword_1D5622F70);
  }

  v386 = type metadata accessor for TVEpisode(0);
  OUTLINED_FUNCTION_92_4();
  sub_1D4FF11E4(v387);
  v388 = sub_1D560CBD8();
  if (v388 <= 1)
  {
    v389 = 1;
  }

  else
  {
    v389 = v388;
  }

  v390 = v280;
  v392 = *v278;
  v391 = v278[1];
  v393 = v459;
  OUTLINED_FUNCTION_14_24();
  v394 = v460;
  sub_1D50002E0(v487, v460 + v395, v396);
  sub_1D4F39AB0(v488, v394 + v393[6], &qword_1EC7ECD98, &unk_1D5627070);
  sub_1D4F39AB0(v390, v394 + v393[7], &qword_1EC7ECD80, &qword_1D5622F70);
  *v394 = v392;
  v394[1] = v391;
  *(v394 + v393[8]) = v389;

  OUTLINED_FUNCTION_150();
  sub_1D5611A28();
  sub_1D560D838();
  v397 = OUTLINED_FUNCTION_38_8();
  __swift_storeEnumTagSinglePayload(v397, v398, v399, v400);
  sub_1D5611C98();
  OUTLINED_FUNCTION_169_0(&v487);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v401, v402, v403, v404);
  v405 = v461;
  OUTLINED_FUNCTION_63_1();
  sub_1D5612B38();
  v406 = OUTLINED_FUNCTION_89_6();
  sub_1D50002E0(v406, v480, v407);
  sub_1D5611A98();
  v501 = sub_1D5611A88();
  v500 = v408;
  OUTLINED_FUNCTION_167_0();
  v410 = v463;
  (*(v409 + 16))(v464, v405, v463);
  v411 = OUTLINED_FUNCTION_38_8();
  __swift_storeEnumTagSinglePayload(v411, v412, v413, v410);
  v499 = sub_1D5611A38();
  v498 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D4FF11E4(&qword_1EC7EDBC0);
  sub_1D5610628();
  (*(v386 + 8))(v405, v410);
  OUTLINED_FUNCTION_15_26();
  sub_1D500033C(v394, v414);
  sub_1D4E50004(v486, &qword_1EC7ECD80, &qword_1D5622F70);
  sub_1D4E50004(v488, &qword_1EC7ECD98, &unk_1D5627070);
  OUTLINED_FUNCTION_13_29();
  sub_1D500033C(v487, v415);
  sub_1D4E50004(v493, &off_1EC7EB5B0, &unk_1D5632170);
  v416 = OUTLINED_FUNCTION_209_0();
  sub_1D4E50004(v416, v417, v418);
  sub_1D4E50004(v490, &qword_1EC7EB620, &unk_1D561E5B0);
  sub_1D4E50004(v492, &qword_1EC7ECBA8, &unk_1D56223B0);
  sub_1D4E50004(v489, &qword_1EC7ECBA0, &unk_1D56270F0);
  sub_1D4E50004(v491, &qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FFFD60(uint64_t a1)
{
  sub_1D4FF11E4(&qword_1EC7ECBB8);

  return sub_1D5612668();
}

uint64_t sub_1D4FFFDCC(uint64_t a1)
{
  v2 = sub_1D4FF11E4(&unk_1EC7EDC80);

  return MEMORY[0x1EEDCE440](a1, v2);
}

unint64_t sub_1D4FFFE38()
{
  result = qword_1EC7EDA40;
  if (!qword_1EC7EDA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    sub_1D4FF11E4(&unk_1EC7EDA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA40);
  }

  return result;
}

unint64_t sub_1D4FFFEEC()
{
  result = qword_1EC7EDA58;
  if (!qword_1EC7EDA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED9F0, &unk_1D5626FD0);
    sub_1D4FFFF70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA58);
  }

  return result;
}

unint64_t sub_1D4FFFF70()
{
  result = qword_1EC7EDA60;
  if (!qword_1EC7EDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA60);
  }

  return result;
}

unint64_t sub_1D4FFFFC4()
{
  result = qword_1EC7EDA68;
  if (!qword_1EC7EDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA68);
  }

  return result;
}

unint64_t sub_1D5000018()
{
  result = qword_1EC7EDA70;
  if (!qword_1EC7EDA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EDA10, &qword_1D5626FE0);
    sub_1D500009C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA70);
  }

  return result;
}

unint64_t sub_1D500009C()
{
  result = qword_1EC7EDA78;
  if (!qword_1EC7EDA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB110, &qword_1D561DEB0);
    sub_1D4FF11E4(&unk_1EC7EDA28);
    sub_1D4FF11E4(&unk_1EC7EDA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA78);
  }

  return result;
}

unint64_t sub_1D5000184()
{
  result = qword_1EDD53210;
  if (!qword_1EDD53210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    sub_1D4FF11E4(&unk_1EDD55388);
    sub_1D4FF11E4(&unk_1EDD55390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53210);
  }

  return result;
}

unint64_t sub_1D500028C()
{
  result = qword_1EC7EDA88;
  if (!qword_1EC7EDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA88);
  }

  return result;
}

uint64_t sub_1D50002E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D500033C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D50003B4()
{
  result = qword_1EC7EDAA8;
  if (!qword_1EC7EDAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D4F374E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAA8);
  }

  return result;
}

unint64_t sub_1D5000458()
{
  result = qword_1EC7EDAB0;
  if (!qword_1EC7EDAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB5D8, &unk_1D5627030);
    sub_1D4F37380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAB0);
  }

  return result;
}

unint64_t sub_1D50004DC()
{
  result = qword_1EC7EDAC0;
  if (!qword_1EC7EDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAC0);
  }

  return result;
}

unint64_t sub_1D5000530()
{
  result = qword_1EC7EDAC8;
  if (!qword_1EC7EDAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB5D8, &unk_1D5627030);
    sub_1D50005B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAC8);
  }

  return result;
}

unint64_t sub_1D50005B4()
{
  result = qword_1EC7EDAD0;
  if (!qword_1EC7EDAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB70, &qword_1D561F280);
    sub_1D4FF11E4(&unk_1EDD533E0);
    sub_1D4FF11E4(&unk_1EDD533E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAD0);
  }

  return result;
}

unint64_t sub_1D500069C()
{
  result = qword_1EC7EDAD8;
  if (!qword_1EC7EDAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D5000720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAD8);
  }

  return result;
}

unint64_t sub_1D5000720()
{
  result = qword_1EC7EDAE0;
  if (!qword_1EC7EDAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
    sub_1D4FF11E4(&unk_1EDD53318);
    sub_1D4FF11E4(&unk_1EDD53320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAE0);
  }

  return result;
}

unint64_t sub_1D5000808()
{
  result = qword_1EC7EDAF0;
  if (!qword_1EC7EDAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB5D8, &unk_1D5627030);
    sub_1D500088C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDAF0);
  }

  return result;
}

unint64_t sub_1D500088C()
{
  result = qword_1EDD53290;
  if (!qword_1EDD53290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB70, &qword_1D561F280);
    sub_1D4FF11E4(&unk_1EDD533E0);
    sub_1D4FF11E4(&unk_1EDD533E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53290);
  }

  return result;
}

unint64_t sub_1D5000974()
{
  result = qword_1EDD53098;
  if (!qword_1EDD53098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D50009F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53098);
  }

  return result;
}

unint64_t sub_1D50009F8()
{
  result = qword_1EDD53278;
  if (!qword_1EDD53278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
    sub_1D4FF11E4(&unk_1EDD53318);
    sub_1D4FF11E4(&unk_1EDD53320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53278);
  }

  return result;
}

unint64_t sub_1D5000AE0()
{
  result = qword_1EC7EDB00;
  if (!qword_1EC7EDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDB00);
  }

  return result;
}

uint64_t sub_1D5000B34(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

unint64_t sub_1D5000B90()
{
  result = qword_1EC7EDB28;
  if (!qword_1EC7EDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDB28);
  }

  return result;
}

unint64_t sub_1D5000BE4()
{
  result = qword_1EC7EDB48;
  if (!qword_1EC7EDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDB48);
  }

  return result;
}

unint64_t sub_1D5000C38()
{
  result = qword_1EC7EDB70;
  if (!qword_1EC7EDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDB70);
  }

  return result;
}

uint64_t sub_1D5000C8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v4;
}

unint64_t sub_1D5000D78()
{
  result = qword_1EC7EDBD0;
  if (!qword_1EC7EDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDBD0);
  }

  return result;
}

unint64_t sub_1D5000DD0()
{
  result = qword_1EC7EDBD8;
  if (!qword_1EC7EDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDBD8);
  }

  return result;
}

unint64_t sub_1D5000E28()
{
  result = qword_1EC7EDBE0;
  if (!qword_1EC7EDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDBE0);
  }

  return result;
}

unint64_t sub_1D5000EF8()
{
  result = qword_1EC7EDC00;
  if (!qword_1EC7EDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC00);
  }

  return result;
}

unint64_t sub_1D5000F50()
{
  result = qword_1EC7EDC08;
  if (!qword_1EC7EDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC08);
  }

  return result;
}

unint64_t sub_1D5000FA8()
{
  result = qword_1EC7EDC10;
  if (!qword_1EC7EDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC10);
  }

  return result;
}

unint64_t sub_1D500102C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D50010C8()
{
  result = qword_1EC7EDC30;
  if (!qword_1EC7EDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC30);
  }

  return result;
}

void sub_1D5001394(uint64_t a1)
{
  type metadata accessor for CloudTVEpisode.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_1D50014A0(319, qword_1EDD571B8, type metadata accessor for CloudTVEpisode.Relationships);
    if (v2 <= 0x3F)
    {
      sub_1D50014A0(319, qword_1EDD57268, type metadata accessor for CloudTVEpisode.Associations);
      if (v3 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EDD57150, &type metadata for CloudTVEpisode.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D50014A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1D500151C(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1D4E6D600(319, &qword_1EDD52818, &qword_1EC7ED9F0, &unk_1D5626FD0);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_1D4E6D600(319, &qword_1EDD528D8, &qword_1EC7ED048, &unk_1D56285A0);
      if (v9 > 0x3F)
      {
        return v6;
      }

      sub_1D4E6D600(319, &qword_1EDD531C0, &qword_1EC7EC970, &qword_1D5631060);
      if (v10 > 0x3F)
      {
        return v6;
      }

      sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
      if (v11 > 0x3F)
      {
        return v6;
      }

      sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
      if (v13 > 0x3F)
      {
        return v12;
      }

      sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
      if (v14 > 0x3F)
      {
        return v6;
      }

      sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
      if (v15 > 0x3F)
      {
        return v6;
      }

      sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
      if (v16 > 0x3F)
      {
        return v6;
      }

      sub_1D50014A0(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
      if (v17 > 0x3F)
      {
        return v6;
      }

      sub_1D4E518A0(319, qword_1EDD57158, &_s14descr1F509E369C4KindON);
      if (v18 > 0x3F)
      {
        return v6;
      }

      sub_1D4E6D600(319, &qword_1EDD527C8, &qword_1EC7ECA08, &unk_1D56222F0);
      if (v19 > 0x3F)
      {
        return v6;
      }

      sub_1D4E6D600(319, &qword_1EDD52798, &qword_1EC7EDA10, &qword_1D5626FE0);
      if (v20 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_1D4E6D600(319, &qword_1EDD531E8, &qword_1EC7EB110, &qword_1D561DEB0);
        v2 = v21;
        if (v22 <= 0x3F)
        {
          sub_1D4E6D600(319, &qword_1EDD53208, &qword_1EC7ED9A8, &unk_1D5626F90);
          v2 = v23;
          if (v24 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_1D5001920(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EDD530A8, &qword_1EC7EA810, &unk_1D5622320);
  if (v1 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EC7ED278, &qword_1EC7ECD88, &qword_1D5622F78);
    if (v2 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD530D8, &qword_1EC7ECA50, &unk_1D5626FF0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D5001A3C(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EDD530A0, &qword_1EC7EB5D8, &unk_1D5627030);
  if (v1 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EC7ECC20, &qword_1EC7ECA70, &unk_1D56310E0);
    if (v2 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD53090, &qword_1EC7ECD10, &unk_1D5622F10);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *sub_1D5001B20(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudTVEpisode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudTVEpisode.Metadata.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudTVEpisode.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5001E74()
{
  result = qword_1EC7EDC38;
  if (!qword_1EC7EDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC38);
  }

  return result;
}

unint64_t sub_1D5001ECC()
{
  result = qword_1EC7EDC40;
  if (!qword_1EC7EDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC40);
  }

  return result;
}

unint64_t sub_1D5001F24()
{
  result = qword_1EC7EDC48;
  if (!qword_1EC7EDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC48);
  }

  return result;
}

unint64_t sub_1D5001F7C()
{
  result = qword_1EC7EDC50;
  if (!qword_1EC7EDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC50);
  }

  return result;
}

unint64_t sub_1D5001FD4()
{
  result = qword_1EC7EDC58;
  if (!qword_1EC7EDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC58);
  }

  return result;
}

unint64_t sub_1D500202C()
{
  result = qword_1EC7EDC60;
  if (!qword_1EC7EDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC60);
  }

  return result;
}

unint64_t sub_1D5002084()
{
  result = qword_1EC7EDC68;
  if (!qword_1EC7EDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC68);
  }

  return result;
}

unint64_t sub_1D50020DC()
{
  result = qword_1EC7EDC70;
  if (!qword_1EC7EDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC70);
  }

  return result;
}

unint64_t sub_1D5002134()
{
  result = qword_1EC7EDC78;
  if (!qword_1EC7EDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDC78);
  }

  return result;
}

void OUTLINED_FUNCTION_28_22(int a1@<W8>)
{
  *(v1 - 208) = a1;
  *(v1 - 192) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
}

void OUTLINED_FUNCTION_37_16(int a1@<W8>)
{
  *(v1 - 192) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
  *(v1 - 152) = a1;
}

uint64_t OUTLINED_FUNCTION_42_16()
{
  v7 = *(v5 - 112) + v3;

  return sub_1D4F39AB0(v7, v4 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_78_7(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_80_4(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_110_5@<X0>(uint64_t a1@<X8>)
{

  return sub_1D4F1ABE8(a1);
}

double OUTLINED_FUNCTION_121_4()
{
  result = 0.0;
  *(v0 - 304) = 0u;
  *(v0 - 336) = 0u;
  *(v0 - 352) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_125_4(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_138_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_139_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_140_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D56163D8();
}

uint64_t OUTLINED_FUNCTION_161_3()
{
  *(v4 - 96) = v0;

  return sub_1D4F39AB0(v0, v2, v1, v3);
}

void OUTLINED_FUNCTION_165_3(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v1 = v4;
  *(v1 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_177_1(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_179_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D5616398();
}

uint64_t OUTLINED_FUNCTION_180_1()
{

  return sub_1D56105B8();
}

uint64_t OUTLINED_FUNCTION_181_1(uint64_t a1, uint64_t a2)
{

  return sub_1D560DA98();
}

uint64_t OUTLINED_FUNCTION_184_1()
{

  return sub_1D4F39AB0(v3, v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_185_1(uint64_t a1, uint64_t a2)
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_222_0()
{
  v6 = *(v4 - 88);

  return sub_1D4F39AB0(v6, v1 + v2, v0, v3);
}

uint64_t OUTLINED_FUNCTION_223_0()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_224_0(uint64_t a1)
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_225_0(uint64_t a1)
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_226_0()
{

  return type metadata accessor for CloudTVEpisode(0);
}

uint64_t OUTLINED_FUNCTION_228_0()
{

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_230_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D560DA98();
}

void sub_1D50027D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA968, &unk_1D561D1F0);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_28_3();
  v33 = type metadata accessor for UploadedVideo(v32);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA970, &unk_1D5652B00);
  OUTLINED_FUNCTION_22(v36);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_3();
  v39 = OUTLINED_FUNCTION_48(v38);
  v127 = type metadata accessor for UploadedAudio(v39);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  OUTLINED_FUNCTION_22(v42);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  v45 = OUTLINED_FUNCTION_48(v44);
  v129 = type metadata accessor for TVEpisode(v45);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v48);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v50);
  v131 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v128 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v54);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v56);
  v134 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v130 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  OUTLINED_FUNCTION_22(v60);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_31_6();
  v62 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v133 = v63;
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  OUTLINED_FUNCTION_22(v66);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v67);
  v68 = OUTLINED_FUNCTION_18_3();
  v69 = type metadata accessor for MusicMovie(v68);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5();
  v71 = OUTLINED_FUNCTION_59_8();
  v135 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(v71);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v73);
  sub_1D4E62938(v27, &v141);
  sub_1D4E62938(v27, &v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC8, &qword_1D561DBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65B0, &unk_1D5663EA0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v136, v140);
    __swift_project_boxed_opaque_existential_1(v140, v140[3]);
    sub_1D560D078();
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(&v141);
      sub_1D4E48324(&v136, &v141);
    }

    else
    {
      v138 = 0;
      v136 = 0u;
      v137 = 0u;
      sub_1D4E50004(&v136, &unk_1EC7F65C0, &qword_1D562E6B0);
    }

    __swift_destroy_boxed_opaque_existential_1(v140);
  }

  else
  {
    v138 = 0;
    v136 = 0u;
    v137 = 0u;
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_1D4E50004(&v136, &qword_1EC7EDCB8, &unk_1D5628170);
  }

  v74 = OUTLINED_FUNCTION_72_2();
  sub_1D4E62938(v74, v75);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_105_5(v23, 0, 1, v69);
    sub_1D5003B40(v23, v22, type metadata accessor for MusicMovie);
    OUTLINED_FUNCTION_55_11(v22);
LABEL_11:
    v80 = v135;
    goto LABEL_12;
  }

  __swift_storeEnumTagSinglePayload(v23, 1, 1, v69);
  sub_1D4E50004(v23, &qword_1EC7EA890, &qword_1D5672D40);
  v76 = OUTLINED_FUNCTION_72_2();
  sub_1D4E62938(v76, v77);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_105_5(v20, 0, 1, v62);
    v78 = *(v133 + 32);
    v78(v132, v20, v62);
    v79 = OUTLINED_FUNCTION_84_4();
    v78(v79, v132, v62);
    goto LABEL_11;
  }

  __swift_storeEnumTagSinglePayload(v20, 1, 1, v62);
  sub_1D4E50004(v20, &qword_1EC7EA990, &qword_1D561D220);
  v84 = OUTLINED_FUNCTION_72_2();
  sub_1D4E62938(v84, v85);
  OUTLINED_FUNCTION_62_12(&a16);
  v80 = v135;
  if (swift_dynamicCast())
  {
    v86 = OUTLINED_FUNCTION_63_2();
    OUTLINED_FUNCTION_105_5(v86, v87, v88, v134);
    v89 = *(v130 + 32);
    v90 = OUTLINED_FUNCTION_100_3(&a9);
    v89(v90);
    v91 = OUTLINED_FUNCTION_84_4();
    (v89)(v91, v33, v134);
  }

  else
  {
    v92 = OUTLINED_FUNCTION_64_2();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v134);
    sub_1D4E50004(v22, &unk_1EC7F2BE0, &qword_1D56250F0);
    v95 = OUTLINED_FUNCTION_72_2();
    sub_1D4E62938(v95, v96);
    OUTLINED_FUNCTION_62_12(&a12);
    if (swift_dynamicCast())
    {
      v97 = OUTLINED_FUNCTION_63_2();
      OUTLINED_FUNCTION_105_5(v97, v98, v99, v131);
      v100 = *(v128 + 32);
      v101 = OUTLINED_FUNCTION_100_3(&v143);
      v100(v101);
      v102 = OUTLINED_FUNCTION_84_4();
      (v100)(v102, v33, v131);
    }

    else
    {
      v103 = OUTLINED_FUNCTION_64_2();
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v131);
      sub_1D4E50004(v22, &qword_1EC7EA978, &qword_1D5652B10);
      v106 = OUTLINED_FUNCTION_72_2();
      sub_1D4E62938(v106, v107);
      OUTLINED_FUNCTION_62_12(&v144);
      if (swift_dynamicCast())
      {
        v108 = OUTLINED_FUNCTION_63_2();
        OUTLINED_FUNCTION_105_5(v108, v109, v110, v129);
        sub_1D5003B40(v22, v126, type metadata accessor for TVEpisode);
        OUTLINED_FUNCTION_55_11(v126);
      }

      else
      {
        v111 = OUTLINED_FUNCTION_64_2();
        __swift_storeEnumTagSinglePayload(v111, v112, v113, v129);
        sub_1D4E50004(v22, &qword_1EC7EA880, &unk_1D561CEE0);
        v114 = OUTLINED_FUNCTION_72_2();
        sub_1D4E62938(v114, v115);
        OUTLINED_FUNCTION_62_12(&v142);
        if (swift_dynamicCast())
        {
          v116 = OUTLINED_FUNCTION_63_2();
          OUTLINED_FUNCTION_105_5(v116, v117, v118, v127);
          sub_1D5003B40(v22, v125, type metadata accessor for UploadedAudio);
          OUTLINED_FUNCTION_55_11(v125);
        }

        else
        {
          v119 = OUTLINED_FUNCTION_64_2();
          __swift_storeEnumTagSinglePayload(v119, v120, v121, v127);
          sub_1D4E50004(v22, &qword_1EC7EA970, &unk_1D5652B00);
          v122 = OUTLINED_FUNCTION_72_2();
          sub_1D4E48324(v122, v123);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v83 = 1;
            __swift_storeEnumTagSinglePayload(v21, 1, 1, v33);
            sub_1D4E50004(v21, &qword_1EC7EA968, &unk_1D561D1F0);
            goto LABEL_13;
          }

          __swift_storeEnumTagSinglePayload(v21, 0, 1, v33);
          sub_1D5003B40(v21, v124, type metadata accessor for UploadedVideo);
          OUTLINED_FUNCTION_55_11(v124);
        }
      }
    }
  }

LABEL_12:
  swift_storeEnumTagMultiPayload();
  v81 = OUTLINED_FUNCTION_47_17();
  sub_1D5003B40(v81, v29, v82);
  v83 = 0;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v29, v83, 1, v80);
  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Item.init(propertyProvider:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v70 = v2;
  v65[2] = type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v5 = OUTLINED_FUNCTION_48(v4);
  v65[0] = type metadata accessor for UploadedAudio(v5);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v8 = OUTLINED_FUNCTION_48(v7);
  v65[4] = type metadata accessor for TVEpisode(v8);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v10);
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v65[7] = v12;
  v65[8] = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v65[6] = v13;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v65[10] = v15;
  v65[11] = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v65[9] = v16;
  OUTLINED_FUNCTION_70_0();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v65[13] = v18;
  v65[14] = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v65[12] = v19;
  OUTLINED_FUNCTION_70_0();
  v66 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v68 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  v67 = v22;
  v23 = OUTLINED_FUNCTION_70_0();
  v65[15] = type metadata accessor for MusicMovie(v23);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v65[16] = v25;
  OUTLINED_FUNCTION_70_0();
  v26 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v28 = v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = v65 - v33;
  v69 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v36 = v1;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_99();
  sub_1D5610CF8();
  sub_1D560FE28();
  OUTLINED_FUNCTION_48_9();
  sub_1D4E5E3F8(v37, v38, MEMORY[0x1E6975BE0]);
  LOBYTE(v1) = sub_1D5614D18();
  v39 = *(v28 + 8);
  v39(v32, v26);
  if (v1)
  {
    v39(v34, v26);
    v40 = v36;
    sub_1D4E62938(v36, v71);
    OUTLINED_FUNCTION_81_1();
    v41 = v67;
    OUTLINED_FUNCTION_45_0();
    sub_1D5610CD8();
    sub_1D560D708();
    OUTLINED_FUNCTION_39_12();
    v42(v41, v66);
    OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_40_1();
    __swift_destroy_boxed_opaque_existential_1(v71);
    OUTLINED_FUNCTION_5_30();
    v43 = OUTLINED_FUNCTION_46_1();
    sub_1D5003B40(v43, v44, v45);
    v36 = v40;
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v51 = OUTLINED_FUNCTION_47_17();
    sub_1D5003B40(v51, v70, v52);
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_46();
    return;
  }

  sub_1D560FE38();
  sub_1D5614D18();
  v46 = OUTLINED_FUNCTION_30_13();
  (v39)(v46);
  if (v26)
  {
    v48 = OUTLINED_FUNCTION_141();
    (v39)(v48);
    OUTLINED_FUNCTION_89_7();
    sub_1D560EDD8();
    v49 = OUTLINED_FUNCTION_83_6();
    v50(v49);
    goto LABEL_6;
  }

  sub_1D560FDF8();
  OUTLINED_FUNCTION_28_23();
  v47 = OUTLINED_FUNCTION_30_13();
  (v39)(v47);
  sub_1D560FF08();
  OUTLINED_FUNCTION_28_23();
  v53 = OUTLINED_FUNCTION_30_13();
  (v39)(v53);
  if (v26)
  {
    v54 = OUTLINED_FUNCTION_141();
    (v39)(v54);
    OUTLINED_FUNCTION_89_7();
    sub_1D5614768();
    v55 = OUTLINED_FUNCTION_83_6();
    v56(v55);
    goto LABEL_6;
  }

  sub_1D560FFA8();
  OUTLINED_FUNCTION_28_23();
  v57 = OUTLINED_FUNCTION_30_13();
  (v39)(v57);
  sub_1D560FE48();
  OUTLINED_FUNCTION_28_23();
  v58 = OUTLINED_FUNCTION_30_13();
  (v39)(v58);
  sub_1D5610078();
  OUTLINED_FUNCTION_28_23();
  v59 = OUTLINED_FUNCTION_30_13();
  (v39)(v59);
  sub_1D560FF28();
  OUTLINED_FUNCTION_28_23();
  v60 = OUTLINED_FUNCTION_30_13();
  (v39)(v60);
  sub_1D560FF38();
  OUTLINED_FUNCTION_28_23();
  v61 = OUTLINED_FUNCTION_30_13();
  (v39)(v61);
  v71[0] = 0;
  v71[1] = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000062, 0x80000001D5681220);
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  sub_1D5610CF8();
  OUTLINED_FUNCTION_48_9();
  sub_1D4E5E3F8(v62, v63, MEMORY[0x1E6975BF8]);
  v64 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v64);

  v39(v32, v26);
  MEMORY[0x1DA6EAC70](0xD00000000000005FLL, 0x80000001D5681290);
  sub_1D5615E08();
  __break(1u);
}

uint64_t sub_1D5003B40(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t InternalMusicPlayer.Queue.Entry.Item.id.getter()
{
  InternalMusicPlayer.Queue.Entry.Item.innerItem.getter(v1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_45_0();
  sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v1);
  return OUTLINED_FUNCTION_71();
}

uint64_t InternalMusicPlayer.Queue.Entry.Item.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = OUTLINED_FUNCTION_98();
  sub_1D5003E98(v6, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = sub_1D560EEA8();
      v13 = MEMORY[0x1E69754B0];
      goto LABEL_7;
    case 2u:
      v12 = sub_1D5614828();
      v13 = MEMORY[0x1E69772F8];
      goto LABEL_7;
    case 3u:
      v12 = sub_1D5613838();
      v13 = MEMORY[0x1E6976BB0];
LABEL_7:
      a1[3] = v12;
      a1[4] = v13;
      __swift_allocate_boxed_opaque_existential_0(a1);
      OUTLINED_FUNCTION_24_0();
      return (*(v14 + 32))();
    case 4u:
      a1[3] = type metadata accessor for TVEpisode(0);
      v11 = sub_1D4E5E3F8(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      v9 = OUTLINED_FUNCTION_104_0(v11);
      v10 = type metadata accessor for TVEpisode;
      return sub_1D5003B40(v5, v9, v10);
    case 5u:
      a1[3] = type metadata accessor for UploadedAudio(0);
      v16 = sub_1D4E5E3F8(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
      v9 = OUTLINED_FUNCTION_104_0(v16);
      v10 = type metadata accessor for UploadedAudio;
      return sub_1D5003B40(v5, v9, v10);
    case 6u:
      a1[3] = type metadata accessor for UploadedVideo(0);
      v17 = sub_1D4E5E3F8(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      v9 = OUTLINED_FUNCTION_104_0(v17);
      v10 = type metadata accessor for UploadedVideo;
      return sub_1D5003B40(v5, v9, v10);
    default:
      a1[3] = type metadata accessor for MusicMovie(0);
      v8 = sub_1D4E5E3F8(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      v9 = OUTLINED_FUNCTION_104_0(v8);
      v10 = type metadata accessor for MusicMovie;
      return sub_1D5003B40(v5, v9, v10);
  }
}

uint64_t sub_1D5003E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void InternalMusicPlayer.Queue.Entry.Item.propertyProvider.getter()
{
  OUTLINED_FUNCTION_47();
  v56 = OUTLINED_FUNCTION_103_4(v4);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v57 = v6;
  v7 = OUTLINED_FUNCTION_70_0();
  v54 = type metadata accessor for UploadedAudio(v7);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v10 = OUTLINED_FUNCTION_29_15(v9);
  v52 = type metadata accessor for TVEpisode(v10);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v53 = v12;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v50 = v14;
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_34();
  v15 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v17 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v21 = OUTLINED_FUNCTION_28_3();
  v22 = type metadata accessor for MusicMovie(v21);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v24 = OUTLINED_FUNCTION_18_3();
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(v24);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  sub_1D5003E98(v58, v27 - v26);
  OUTLINED_FUNCTION_66();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v19 + 32))(v0, v28, v17);
      sub_1D560EDC8();
      (*(v19 + 8))(v0, v17);
      goto LABEL_11;
    case 2u:
      OUTLINED_FUNCTION_81();
      v41(v1, v28, v15);
      sub_1D5614758();
      v42 = OUTLINED_FUNCTION_98();
      v43(v42);
      goto LABEL_11;
    case 3u:
      (*(v50 + 32))(v3, v28, v51);
      OUTLINED_FUNCTION_94_5();
      sub_1D56136D8();
      (*(v50 + 8))(v3, v51);
      goto LABEL_11;
    case 4u:
      OUTLINED_FUNCTION_3_34();
      v36 = v53;
      sub_1D5003B40(v28, v53, v37);
      v38 = *(v52 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14();
      (*(v39 + 16))(v59, v53 + v38);
      v40 = type metadata accessor for TVEpisode;
      goto LABEL_9;
    case 5u:
      OUTLINED_FUNCTION_2_29();
      v36 = v55;
      sub_1D5003B40(v28, v55, v44);
      v45 = *(v54 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14();
      (*(v46 + 16))(v59, v55 + v45);
      v40 = type metadata accessor for UploadedAudio;
      goto LABEL_9;
    case 6u:
      OUTLINED_FUNCTION_1_44();
      v36 = v57;
      sub_1D5003B40(v28, v57, v47);
      v48 = *(v56 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14();
      (*(v49 + 16))(v59, v57 + v48);
      v40 = type metadata accessor for UploadedVideo;
LABEL_9:
      v34 = v40;
      v35 = v36;
      break;
    default:
      OUTLINED_FUNCTION_5_30();
      v29 = OUTLINED_FUNCTION_29_12();
      sub_1D5003B40(v29, v30, v31);
      v32 = *(v22 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14();
      (*(v33 + 16))(v59, v2 + v32);
      OUTLINED_FUNCTION_0_46();
      v35 = v2;
      break;
  }

  sub_1D5008A38(v35, v34);
LABEL_11:
  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Item.artwork.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = OUTLINED_FUNCTION_103_4(v2);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v53 = v5;
  v6 = OUTLINED_FUNCTION_70_0();
  v7 = type metadata accessor for UploadedAudio(v6);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v52 = v9;
  v10 = OUTLINED_FUNCTION_70_0();
  v11 = type metadata accessor for TVEpisode(v10);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_29_15(v13);
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_11_0();
  sub_1D5614828();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_8_34();
  v17 = type metadata accessor for MusicMovie(v16);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v22 = OUTLINED_FUNCTION_28_3();
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(v22);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  sub_1D5003E98(v54, v0);
  OUTLINED_FUNCTION_70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_81();
      v38 = OUTLINED_FUNCTION_222();
      v39(v38);
      sub_1D560EE78();
      v40 = OUTLINED_FUNCTION_159();
      v41(v40);
      goto LABEL_20;
    case 2u:
      v32 = OUTLINED_FUNCTION_31_18();
      v33(v32);
      OUTLINED_FUNCTION_94_5();
      sub_1D5614818();
      v34 = OUTLINED_FUNCTION_161();
      goto LABEL_10;
    case 3u:
      v36 = OUTLINED_FUNCTION_45_13();
      v37(v36);
      sub_1D56137F8();
      v34 = OUTLINED_FUNCTION_29_12();
LABEL_10:
      v35(v34);
      goto LABEL_20;
    case 4u:
      OUTLINED_FUNCTION_3_34();
      OUTLINED_FUNCTION_78_8(v28, v29, v30);
      if (qword_1EC7E9170 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_52_10();
      sub_1D4E5E3F8(v31, v0, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_56_10(&qword_1EC7EC490);
      OUTLINED_FUNCTION_18_29();
      sub_1D560EC28();
      OUTLINED_FUNCTION_4_29();
      v27 = v20;
      break;
    case 5u:
      OUTLINED_FUNCTION_2_29();
      v42 = v52;
      sub_1D5003B40(v0, v52, v43);
      if (qword_1EC7E8E40 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_51_12();
      sub_1D4E5E3F8(v44, v0, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      sub_1D4E5E3F8(v45, v0, v46);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      v47 = type metadata accessor for UploadedAudio;
      goto LABEL_18;
    case 6u:
      OUTLINED_FUNCTION_1_44();
      v42 = v53;
      sub_1D5003B40(v0, v53, v48);
      if (qword_1EDD53E58 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_50_10();
      sub_1D4E5E3F8(v49, v0, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      sub_1D4E5E3F8(v50, v0, v51);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      v47 = type metadata accessor for UploadedVideo;
LABEL_18:
      v26 = v47;
      v27 = v42;
      break;
    default:
      OUTLINED_FUNCTION_5_30();
      sub_1D5003B40(v0, v1, v24);
      if (qword_1EDD541B8 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_53_11();
      sub_1D4E5E3F8(v25, v0, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_57_11(&qword_1EDD59300);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      OUTLINED_FUNCTION_0_46();
      v27 = v1;
      break;
  }

  sub_1D5008A38(v27, v26);
LABEL_20:
  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Item.playParameters.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = OUTLINED_FUNCTION_103_4(v2);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v53 = v5;
  v6 = OUTLINED_FUNCTION_70_0();
  v7 = type metadata accessor for UploadedAudio(v6);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v52 = v9;
  v10 = OUTLINED_FUNCTION_70_0();
  v11 = type metadata accessor for TVEpisode(v10);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_29_15(v13);
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_11_0();
  sub_1D5614828();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_8_34();
  v17 = type metadata accessor for MusicMovie(v16);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v22 = OUTLINED_FUNCTION_28_3();
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(v22);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  sub_1D5003E98(v54, v0);
  OUTLINED_FUNCTION_70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_81();
      v38 = OUTLINED_FUNCTION_222();
      v39(v38);
      sub_1D560ED68();
      v40 = OUTLINED_FUNCTION_159();
      v41(v40);
      goto LABEL_20;
    case 2u:
      v32 = OUTLINED_FUNCTION_31_18();
      v33(v32);
      OUTLINED_FUNCTION_94_5();
      sub_1D5614728();
      v34 = OUTLINED_FUNCTION_161();
      goto LABEL_10;
    case 3u:
      v36 = OUTLINED_FUNCTION_45_13();
      v37(v36);
      sub_1D5613688();
      v34 = OUTLINED_FUNCTION_29_12();
LABEL_10:
      v35(v34);
      goto LABEL_20;
    case 4u:
      OUTLINED_FUNCTION_3_34();
      OUTLINED_FUNCTION_78_8(v28, v29, v30);
      if (qword_1EC7E9230 != -1)
      {
        swift_once();
      }

      sub_1D56109F8();
      OUTLINED_FUNCTION_52_10();
      sub_1D4E5E3F8(v31, v0, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_56_10(&qword_1EC7EC490);
      OUTLINED_FUNCTION_18_29();
      sub_1D560EC28();
      OUTLINED_FUNCTION_4_29();
      v27 = v20;
      break;
    case 5u:
      OUTLINED_FUNCTION_2_29();
      v42 = v52;
      sub_1D5003B40(v0, v52, v43);
      if (qword_1EC7E8EB0 != -1)
      {
        swift_once();
      }

      sub_1D56109F8();
      OUTLINED_FUNCTION_51_12();
      sub_1D4E5E3F8(v44, v0, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      sub_1D4E5E3F8(v45, v0, v46);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      v47 = type metadata accessor for UploadedAudio;
      goto LABEL_18;
    case 6u:
      OUTLINED_FUNCTION_1_44();
      v42 = v53;
      sub_1D5003B40(v0, v53, v48);
      if (qword_1EDD53EF8 != -1)
      {
        swift_once();
      }

      sub_1D56109F8();
      OUTLINED_FUNCTION_50_10();
      sub_1D4E5E3F8(v49, v0, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      sub_1D4E5E3F8(v50, v0, v51);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      v47 = type metadata accessor for UploadedVideo;
LABEL_18:
      v26 = v47;
      v27 = v42;
      break;
    default:
      OUTLINED_FUNCTION_5_30();
      sub_1D5003B40(v0, v1, v24);
      if (qword_1EDD542A0 != -1)
      {
        swift_once();
      }

      sub_1D56109F8();
      OUTLINED_FUNCTION_53_11();
      sub_1D4E5E3F8(v25, v0, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_57_11(&qword_1EDD59300);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      OUTLINED_FUNCTION_0_46();
      v27 = v1;
      break;
  }

  sub_1D5008A38(v27, v26);
LABEL_20:
  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Item.subtitle.getter()
{
  OUTLINED_FUNCTION_47();
  v5 = type metadata accessor for UploadedVideo(0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v48 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for UploadedAudio(v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v47 = v11;
  v12 = OUTLINED_FUNCTION_70_0();
  v13 = type metadata accessor for TVEpisode(v12);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_59_8();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v46 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v16 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v45 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_11_0();
  v20 = type metadata accessor for MusicMovie(v19);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8_34();
  v22 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v24 = OUTLINED_FUNCTION_28_3();
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(v24);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  sub_1D5003E98(v0, v27 - v26);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_40_3();
      v38(v0, v28, v22);
      sub_1D560ECC8();
      OUTLINED_FUNCTION_74_7();
      v39 = OUTLINED_FUNCTION_222();
      v40(v39);
      goto LABEL_11;
    case 2u:
      (*(v45 + 32))(v3, v28, v16);
      sub_1D56146F8();
      OUTLINED_FUNCTION_74_7();
      v33 = OUTLINED_FUNCTION_66();
      v34(v33);
      goto LABEL_11;
    case 3u:
      OUTLINED_FUNCTION_81();
      v35(v2, v28, v46);
      sub_1D56135B8();
      OUTLINED_FUNCTION_74_7();
      v36 = OUTLINED_FUNCTION_99();
      v37(v36);
      goto LABEL_11;
    case 4u:
      OUTLINED_FUNCTION_3_34();
      sub_1D5003B40(v28, v1, v32);
      TVEpisode.showName.getter();
      OUTLINED_FUNCTION_74_7();
      OUTLINED_FUNCTION_4_29();
      v31 = v1;
      break;
    case 5u:
      OUTLINED_FUNCTION_2_29();
      v41 = v47;
      sub_1D5003B40(v28, v47, v42);
      UploadedAudio.artistName.getter();
      OUTLINED_FUNCTION_74_7();
      v43 = type metadata accessor for UploadedAudio;
      goto LABEL_9;
    case 6u:
      OUTLINED_FUNCTION_1_44();
      v41 = v48;
      sub_1D5003B40(v28, v48, v44);
      UploadedVideo.artistName.getter();
      OUTLINED_FUNCTION_74_7();
      v43 = type metadata accessor for UploadedVideo;
LABEL_9:
      v30 = v43;
      v31 = v41;
      break;
    default:
      OUTLINED_FUNCTION_5_30();
      sub_1D5003B40(v28, v4, v29);
      MusicMovie.artistName.getter();
      OUTLINED_FUNCTION_74_7();
      OUTLINED_FUNCTION_0_46();
      v31 = v4;
      break;
  }

  sub_1D5008A38(v31, v30);
LABEL_11:
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Item.title.getter()
{
  OUTLINED_FUNCTION_47();
  v5 = type metadata accessor for UploadedVideo(0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v54 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for UploadedAudio(v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v12 = OUTLINED_FUNCTION_29_15(v11);
  v13 = type metadata accessor for TVEpisode(v12);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_59_8();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v51 = v16;
  v52 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v17 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_11_0();
  v20 = type metadata accessor for MusicMovie(v19);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8_34();
  v22 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v24 = OUTLINED_FUNCTION_28_3();
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(v24);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  sub_1D5003E98(v0, v27 - v26);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_40_3();
      v38(v0, v28, v22);
      sub_1D560EE68();
      OUTLINED_FUNCTION_86_2();
      v39 = OUTLINED_FUNCTION_159();
      v40(v39);
      goto LABEL_15;
    case 2u:
      OUTLINED_FUNCTION_52_8();
      v34(v3, v28, v17);
      sub_1D56147F8();
      OUTLINED_FUNCTION_86_2();
      v35 = OUTLINED_FUNCTION_66();
      v36(v35);
      goto LABEL_15;
    case 3u:
      OUTLINED_FUNCTION_81();
      v37(v2, v28, v52);
      sub_1D56137E8();
      OUTLINED_FUNCTION_86_2();
      (*(v51 + 8))(v2, v52);
      goto LABEL_15;
    case 4u:
      OUTLINED_FUNCTION_3_34();
      sub_1D5003B40(v28, v1, v32);
      TVEpisode.title.getter();
      OUTLINED_FUNCTION_86_2();
      v33 = type metadata accessor for TVEpisode;
      goto LABEL_13;
    case 5u:
      OUTLINED_FUNCTION_2_29();
      v1 = v53;
      sub_1D5003B40(v28, v53, v41);
      if (qword_1EC7E8EC8 != -1)
      {
        swift_once();
      }

      sub_1D4E5E3F8(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      v44 = sub_1D4E5E3F8(v42, type metadata accessor for UploadedAudio, v43);
      OUTLINED_FUNCTION_101_1(v44, MEMORY[0x1E69E6158], v45, v44);
      v33 = type metadata accessor for UploadedAudio;
      goto LABEL_13;
    case 6u:
      OUTLINED_FUNCTION_1_44();
      v1 = v54;
      sub_1D5003B40(v28, v54, v46);
      if (qword_1EDD53E78 != -1)
      {
        swift_once();
      }

      sub_1D4E5E3F8(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      v49 = sub_1D4E5E3F8(v47, type metadata accessor for UploadedVideo, v48);
      OUTLINED_FUNCTION_101_1(v49, MEMORY[0x1E69E6158], v50, v49);
      v33 = type metadata accessor for UploadedVideo;
LABEL_13:
      v30 = v33;
      v31 = v1;
      break;
    default:
      OUTLINED_FUNCTION_5_30();
      sub_1D5003B40(v28, v4, v29);
      MusicMovie.title.getter();
      OUTLINED_FUNCTION_86_2();
      OUTLINED_FUNCTION_0_46();
      v31 = v4;
      break;
  }

  sub_1D5008A38(v31, v30);
LABEL_15:
  OUTLINED_FUNCTION_46();
}

void static InternalMusicPlayer.Queue.Entry.Item.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v118 = v0;
  v119 = v1;
  v105 = type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  v111 = v3;
  v4 = OUTLINED_FUNCTION_70_0();
  v104 = type metadata accessor for UploadedAudio(v4);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v110 = v6;
  v7 = OUTLINED_FUNCTION_70_0();
  v103 = type metadata accessor for TVEpisode(v7);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v109 = v9;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v116 = v11;
  v117 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v108 = v12;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v114 = v14;
  v115 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v107 = v15;
  OUTLINED_FUNCTION_70_0();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v112 = v17;
  v113 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v106 = v18;
  v19 = OUTLINED_FUNCTION_70_0();
  v101 = type metadata accessor for MusicMovie(v19);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v102 = v21;
  v22 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(v22);
  OUTLINED_FUNCTION_14();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v101 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v101 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v101 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v101 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v101 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v101 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDC98, &qword_1D5627E10);
  OUTLINED_FUNCTION_22(v44);
  OUTLINED_FUNCTION_11();
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = &v101 - v47;
  v49 = *(v46 + 56);
  sub_1D5003E98(v118, &v101 - v47);
  sub_1D5003E98(v119, &v48[v49]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D5003E98(v48, v41);
      if (OUTLINED_FUNCTION_88_7() == 1)
      {
        v72 = v112;
        v73 = &v48[v49];
        v74 = v106;
        v75 = v113;
        (*(v112 + 32))(v106, v73, v113);
        sub_1D560EE28();
        v76 = *(v72 + 8);
        v76(v74, v75);
        v76(v41, v75);
        goto LABEL_18;
      }

      (*(v112 + 8))(v41, v113);
      goto LABEL_42;
    case 2u:
      v60 = OUTLINED_FUNCTION_71();
      sub_1D5003E98(v60, v61);
      if (OUTLINED_FUNCTION_88_7() == 2)
      {
        v62 = v114;
        v63 = &v48[v49];
        v64 = v107;
        v65 = v115;
        (*(v114 + 32))(v107, v63, v115);
        sub_1D5614778();
        v66 = *(v62 + 8);
        v66(v64, v65);
        v66(v38, v65);
        goto LABEL_18;
      }

      (*(v114 + 8))(v38, v115);
      goto LABEL_42;
    case 3u:
      sub_1D5003E98(v48, v35);
      if (OUTLINED_FUNCTION_88_7() != 3)
      {
        (*(v116 + 8))(v35, v117);
        goto LABEL_42;
      }

      v68 = v116;
      v67 = v117;
      v69 = &v48[v49];
      v70 = v108;
      (*(v116 + 32))(v108, v69, v117);
      sub_1D56137A8();
      v71 = *(v68 + 8);
      v71(v70, v67);
      v71(v35, v67);
LABEL_18:
      OUTLINED_FUNCTION_29_19();
      goto LABEL_55;
    case 4u:
      sub_1D5003E98(v48, v32);
      if (OUTLINED_FUNCTION_88_7() != 4)
      {
        OUTLINED_FUNCTION_4_29();
        v51 = v32;
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_3_34();
      v52 = v109;
      sub_1D5003B40(&v48[v49], v109, v53);
      OUTLINED_FUNCTION_93_2();
      v56 = v56 && v54 == v55;
      if (v56 || (sub_1D5616168() & 1) != 0)
      {
        sub_1D5611A78();
        OUTLINED_FUNCTION_4_29();
        sub_1D5008A38(v52, v57);
      }

      else
      {
        OUTLINED_FUNCTION_4_29();
        sub_1D5008A38(v52, v97);
      }

      OUTLINED_FUNCTION_4_29();
      v59 = v32;
      goto LABEL_54;
    case 5u:
      v77 = OUTLINED_FUNCTION_141();
      sub_1D5003E98(v77, v78);
      if (OUTLINED_FUNCTION_88_7() != 5)
      {
        OUTLINED_FUNCTION_10_35();
        v51 = v29;
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_2_29();
      v79 = v110;
      sub_1D5003B40(&v48[v49], v110, v80);
      OUTLINED_FUNCTION_93_2();
      v83 = v56 && v81 == v82;
      if (v83 || (sub_1D5616168() & 1) != 0)
      {
        sub_1D5611A78();
        OUTLINED_FUNCTION_10_35();
        sub_1D5008A38(v79, v84);
      }

      else
      {
        OUTLINED_FUNCTION_10_35();
        sub_1D5008A38(v79, v98);
      }

      OUTLINED_FUNCTION_10_35();
      v59 = v29;
      goto LABEL_54;
    case 6u:
      sub_1D5003E98(v48, v26);
      if (OUTLINED_FUNCTION_88_7() != 6)
      {
        OUTLINED_FUNCTION_9_34();
        v51 = v26;
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_1_44();
      v85 = v111;
      sub_1D5003B40(&v48[v49], v111, v86);
      OUTLINED_FUNCTION_93_2();
      v89 = v56 && v87 == v88;
      if (v89 || (sub_1D5616168() & 1) != 0)
      {
        sub_1D5611A78();
        OUTLINED_FUNCTION_9_34();
        sub_1D5008A38(v85, v90);
      }

      else
      {
        OUTLINED_FUNCTION_9_34();
        sub_1D5008A38(v85, v99);
      }

      OUTLINED_FUNCTION_9_34();
      v59 = v26;
      goto LABEL_54;
    default:
      sub_1D5003E98(v48, v43);
      if (OUTLINED_FUNCTION_88_7())
      {
        OUTLINED_FUNCTION_0_46();
        v51 = v43;
LABEL_41:
        sub_1D5008A38(v51, v50);
LABEL_42:
        sub_1D4E50004(v48, &qword_1EC7EDC98, &qword_1D5627E10);
      }

      else
      {
        OUTLINED_FUNCTION_5_30();
        v91 = v102;
        sub_1D5003B40(&v48[v49], v102, v92);
        OUTLINED_FUNCTION_93_2();
        v95 = v56 && v93 == v94;
        if (v95 || (sub_1D5616168() & 1) != 0)
        {
          sub_1D5611A78();
          OUTLINED_FUNCTION_0_46();
          sub_1D5008A38(v91, v96);
        }

        else
        {
          OUTLINED_FUNCTION_0_46();
          sub_1D5008A38(v91, v100);
        }

        OUTLINED_FUNCTION_0_46();
        v59 = v43;
LABEL_54:
        sub_1D5008A38(v59, v58);
        OUTLINED_FUNCTION_29_19();
      }

LABEL_55:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void InternalMusicPlayer.Queue.Entry.Item.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v59 = v0;
  type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v58 = v6;
  v7 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for UploadedAudio(v7);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v10 = OUTLINED_FUNCTION_29_15(v9);
  type metadata accessor for TVEpisode(v10);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v56 = v12;
  OUTLINED_FUNCTION_70_0();
  v13 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_34();
  v15 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v55 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_59_8();
  v18 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v54 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  type metadata accessor for MusicMovie(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(v22);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  sub_1D5003E98(v59, v25 - v24);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_52_8();
      v45(v1, v26, v18);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_27_18();
      sub_1D4E5E3F8(v46, v47, MEMORY[0x1E69754F8]);
      sub_1D5614CB8();
      v44 = *(v54 + 8);
      v42 = v1;
      v43 = v18;
      goto LABEL_7;
    case 2u:
      (*(v55 + 32))(v2, v26, v15);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_22_23();
      sub_1D4E5E3F8(v37, v38, MEMORY[0x1E6977320]);
      sub_1D5614CB8();
      (*(v55 + 8))(v2, v15);
      goto LABEL_12;
    case 3u:
      OUTLINED_FUNCTION_52_8();
      v39(v4, v26, v13);
      MEMORY[0x1DA6EC0D0](3);
      OUTLINED_FUNCTION_21_21();
      sub_1D4E5E3F8(v40, v41, MEMORY[0x1E6976BF8]);
      sub_1D5614CB8();
      v42 = OUTLINED_FUNCTION_161();
LABEL_7:
      v44(v42, v43);
      goto LABEL_12;
    case 4u:
      OUTLINED_FUNCTION_3_34();
      v32 = v56;
      sub_1D5003B40(v26, v56, v33);
      OUTLINED_FUNCTION_102_5();
      sub_1D5614E28();
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14_25();
      sub_1D4E5E3F8(v34, v35, MEMORY[0x1E6976328]);
      OUTLINED_FUNCTION_98();
      sub_1D5614CB8();
      v36 = type metadata accessor for TVEpisode;
      goto LABEL_10;
    case 5u:
      OUTLINED_FUNCTION_2_29();
      v32 = v57;
      sub_1D5003B40(v26, v57, v48);
      OUTLINED_FUNCTION_102_5();
      sub_1D5614E28();
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14_25();
      sub_1D4E5E3F8(v49, v50, MEMORY[0x1E6976328]);
      OUTLINED_FUNCTION_98();
      sub_1D5614CB8();
      v36 = type metadata accessor for UploadedAudio;
      goto LABEL_10;
    case 6u:
      OUTLINED_FUNCTION_1_44();
      v32 = v58;
      sub_1D5003B40(v26, v58, v51);
      OUTLINED_FUNCTION_102_5();
      sub_1D5614E28();
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14_25();
      sub_1D4E5E3F8(v52, v53, MEMORY[0x1E6976328]);
      OUTLINED_FUNCTION_98();
      sub_1D5614CB8();
      v36 = type metadata accessor for UploadedVideo;
LABEL_10:
      v30 = v36;
      v31 = v32;
      break;
    default:
      OUTLINED_FUNCTION_5_30();
      sub_1D5003B40(v26, v3, v27);
      OUTLINED_FUNCTION_102_5();
      sub_1D5614E28();
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14_25();
      sub_1D4E5E3F8(v28, v29, MEMORY[0x1E6976328]);
      OUTLINED_FUNCTION_98();
      sub_1D5614CB8();
      OUTLINED_FUNCTION_0_46();
      v31 = v3;
      break;
  }

  sub_1D5008A38(v31, v30);
LABEL_12:
  OUTLINED_FUNCTION_46();
}

uint64_t InternalMusicPlayer.Queue.Entry.Item.hashValue.getter()
{
  sub_1D56162D8();
  InternalMusicPlayer.Queue.Entry.Item.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D5006770(uint64_t a1)
{
  sub_1D56162D8();
  InternalMusicPlayer.Queue.Entry.Item.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D50067AC@<X0>(uint64_t *a1@<X8>)
{
  result = InternalMusicPlayer.Queue.Entry.Item.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D50067D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E5E3F8(&qword_1EC7EDCB0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);

  return MEMORY[0x1EEDD1468](a1, a2, v4);
}

uint64_t sub_1D5006854(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E5E3F8(&qword_1EC7EDCB0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);

  return MEMORY[0x1EEDD1460](a1, a2, v4);
}

uint64_t sub_1D50068D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E5E3F8(&qword_1EC7EDCB0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);

  return MEMORY[0x1EEDD1478](a1, a2, v4);
}

uint64_t sub_1D500694C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E5E3F8(&qword_1EC7EDCB0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);

  return MEMORY[0x1EEDD1430](a1, a2, v4);
}

uint64_t sub_1D50069C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E5E3F8(&qword_1EC7EDCB0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);

  return MEMORY[0x1EEDD1438](a1, a2, v4);
}

uint64_t sub_1D5006A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E5E3F8(&qword_1EC7EDCB0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);

  return MEMORY[0x1EEDD1448](a1, a2, v4);
}

uint64_t sub_1D5006AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E5E3F8(&qword_1EC7EDCB0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);

  return MEMORY[0x1EEDD1480](a1, a2, v4);
}

uint64_t sub_1D5006B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E5E3F8(&qword_1EC7EDCB0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);

  return MEMORY[0x1EEDD1458](a1, a2, v4);
}

uint64_t sub_1D5006BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E5E3F8(&qword_1EC7EDCB0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);

  return MEMORY[0x1EEDD1450](a1, a2, v4);
}

uint64_t sub_1D5006C34(uint64_t a1, uint64_t a2)
{
  sub_1D4E5E3F8(&qword_1EC7EDCB0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);

  return sub_1D5613028();
}

uint64_t sub_1D5006CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E5E3F8(&qword_1EC7EDCB0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);

  return MEMORY[0x1EEDD1428](a1, a2, v4);
}

uint64_t sub_1D5006D34(uint64_t a1, uint64_t a2)
{
  sub_1D4E5E3F8(&qword_1EC7EDCB0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);

  return sub_1D5612FD8();
}

uint64_t sub_1D5006DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E5E3F8(&qword_1EC7EDCB0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);

  return MEMORY[0x1EEDD1470](a1, a2, v4);
}

uint64_t sub_1D5006E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E5E3F8(&qword_1EC7EDCB0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);

  return MEMORY[0x1EEDD1420](a1, a2, v4);
}

void InternalMusicPlayer.Queue.Entry.Item.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_103_4(v4);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v49 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for UploadedAudio(v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v48 = v11;
  v12 = OUTLINED_FUNCTION_70_0();
  v13 = type metadata accessor for TVEpisode(v12);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_90_6();
  OUTLINED_FUNCTION_4();
  v46 = v16;
  v47 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v17 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v45 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = type metadata accessor for MusicMovie(0);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8_34();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v26 = OUTLINED_FUNCTION_28_3();
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(v26);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  sub_1D5003E98(v50, v0);
  OUTLINED_FUNCTION_46_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v37 = OUTLINED_FUNCTION_222();
      v38(v37);
      MusicVideo.siriRepresentation.getter(v51);
      v39 = OUTLINED_FUNCTION_159();
      v40(v39);
      goto LABEL_11;
    case 2u:
      OUTLINED_FUNCTION_52_8();
      v35(v22, v0, v17);
      Playlist.Entry.siriRepresentation.getter();
      (*(v45 + 8))(v22, v17);
      goto LABEL_11;
    case 3u:
      OUTLINED_FUNCTION_81();
      v36(v2, v0, v47);
      Song.siriRepresentation.getter();
      (*(v46 + 8))(v2, v47);
      goto LABEL_11;
    case 4u:
      OUTLINED_FUNCTION_3_34();
      v32 = OUTLINED_FUNCTION_70();
      sub_1D5003B40(v32, v33, v34);
      TVEpisode.siriRepresentation.getter(v51);
      OUTLINED_FUNCTION_4_29();
      v31 = v1;
      break;
    case 5u:
      OUTLINED_FUNCTION_2_29();
      v41 = v48;
      sub_1D5003B40(v0, v48, v42);
      UploadedAudio.siriRepresentation.getter(v51);
      v43 = type metadata accessor for UploadedAudio;
      goto LABEL_9;
    case 6u:
      OUTLINED_FUNCTION_1_44();
      v41 = v49;
      sub_1D5003B40(v0, v49, v44);
      UploadedVideo.siriRepresentation.getter(v51);
      v43 = type metadata accessor for UploadedVideo;
LABEL_9:
      v30 = v43;
      v31 = v41;
      break;
    default:
      OUTLINED_FUNCTION_5_30();
      sub_1D5003B40(v0, v3, v28);
      OUTLINED_FUNCTION_94_5();
      MusicMovie.siriRepresentation.getter(v29);
      OUTLINED_FUNCTION_0_46();
      v31 = v3;
      break;
  }

  sub_1D5008A38(v31, v30);
LABEL_11:
  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Item.description.getter()
{
  OUTLINED_FUNCTION_47();
  v5 = type metadata accessor for UploadedVideo(0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v56 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for UploadedAudio(v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v12 = OUTLINED_FUNCTION_29_15(v11);
  v13 = type metadata accessor for TVEpisode(v12);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v54 = OUTLINED_FUNCTION_90_6();
  OUTLINED_FUNCTION_4();
  v55 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  sub_1D5614828();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_11_0();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_8_34();
  v22 = type metadata accessor for MusicMovie(v21);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v24 = OUTLINED_FUNCTION_31_6();
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(v24);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  sub_1D5003E98(v1, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v45 = OUTLINED_FUNCTION_31_18();
      v46(v45);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_20_31();
      OUTLINED_FUNCTION_27_18();
      sub_1D4E5E3F8(v47, v48, MEMORY[0x1E6975508]);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_95_5();
      v39 = OUTLINED_FUNCTION_161();
      goto LABEL_7;
    case 2u:
      v35 = OUTLINED_FUNCTION_45_13();
      v36(v35);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_20_31();
      OUTLINED_FUNCTION_22_23();
      sub_1D4E5E3F8(v37, v38, MEMORY[0x1E6977338]);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_95_5();
      v39 = OUTLINED_FUNCTION_66();
LABEL_7:
      v40(v39);
      goto LABEL_12;
    case 3u:
      OUTLINED_FUNCTION_40_3();
      v41 = OUTLINED_FUNCTION_99();
      v42(v41);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_20_31();
      OUTLINED_FUNCTION_21_21();
      sub_1D4E5E3F8(v43, v44, MEMORY[0x1E6976C10]);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      (*(v55 + 8))(v4, v54);
      goto LABEL_12;
    case 4u:
      OUTLINED_FUNCTION_3_34();
      v32 = OUTLINED_FUNCTION_70();
      sub_1D5003B40(v32, v33, v34);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_20_31();
      TVEpisode.description.getter();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_4_29();
      v31 = v3;
      break;
    case 5u:
      OUTLINED_FUNCTION_2_29();
      OUTLINED_FUNCTION_78_8(v49, v50, v51);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_20_31();
      UploadedAudio.description.getter();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_25_27();
      goto LABEL_10;
    case 6u:
      OUTLINED_FUNCTION_1_44();
      v19 = v56;
      sub_1D5003B40(v2, v56, v53);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_20_31();
      UploadedVideo.description.getter();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_26_21();
LABEL_10:
      v30 = v52;
      v31 = v19;
      break;
    default:
      OUTLINED_FUNCTION_5_30();
      v26 = OUTLINED_FUNCTION_98();
      sub_1D5003B40(v26, v27, v28);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_20_31();
      v29 = MusicMovie.description.getter();
      MEMORY[0x1DA6EAC70](v29);

      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_0_46();
      v31 = v0;
      break;
  }

  sub_1D5008A38(v31, v30);
LABEL_12:
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46();
}

void InternalMusicPlayer.Queue.Entry.Item.debugDescription.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = type metadata accessor for UploadedVideo(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v121 = v5;
  v6 = OUTLINED_FUNCTION_70_0();
  v7 = type metadata accessor for UploadedAudio(v6);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v120 = v9;
  v10 = OUTLINED_FUNCTION_70_0();
  v11 = type metadata accessor for TVEpisode(v10);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v117 = v13;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v118 = v15;
  v119 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  sub_1D5614828();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_11_0();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_8_34();
  v19 = type metadata accessor for MusicMovie(v18);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v21 = OUTLINED_FUNCTION_31_6();
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(v21);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v23 = OUTLINED_FUNCTION_222();
  sub_1D5003E98(v23, v24);
  OUTLINED_FUNCTION_70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v79 = OUTLINED_FUNCTION_31_18();
      v80(v79);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_82_6();
      MEMORY[0x1DA6EAC70](v81 - 3, v82 | 0x8000000000000000);
      v83 = sub_1D560EDB8();
      v85 = OUTLINED_FUNCTION_7_4(v83, v84);
      OUTLINED_FUNCTION_4_2(v85, v86, v87, v88, v89, v90, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_26_0();
      v91 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v91);

      OUTLINED_FUNCTION_53();
      v92 = OUTLINED_FUNCTION_161();
      v94(v92, v93);
      goto LABEL_12;
    case 2u:
      v55 = OUTLINED_FUNCTION_45_13();
      v56(v55);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_75_5();
      v57 = sub_1D5614748();
      v59 = OUTLINED_FUNCTION_7_4(v57, v58);
      OUTLINED_FUNCTION_4_2(v59, v60, v61, v62, v63, v64, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_26_0();
      v65 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v65);

      OUTLINED_FUNCTION_53();
      v66 = OUTLINED_FUNCTION_29_12();
      v67(v66);
      goto LABEL_12;
    case 3u:
      v68 = OUTLINED_FUNCTION_99();
      v69(v68);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      v70 = sub_1D56136C8();
      v72 = OUTLINED_FUNCTION_7_4(v70, v71);
      OUTLINED_FUNCTION_4_2(v72, v73, v74, v75, v76, v77, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_26_0();
      v78 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v78);

      OUTLINED_FUNCTION_53();
      (*(v118 + 8))(v2, v119);
      goto LABEL_12;
    case 4u:
      OUTLINED_FUNCTION_3_34();
      sub_1D5003B40(v1, v117, v43);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_82_6();
      MEMORY[0x1DA6EAC70](v44 - 4, v45 | 0x8000000000000000);
      v46 = TVEpisode.debugDescription.getter();
      v48 = OUTLINED_FUNCTION_7_4(v46, v47);
      OUTLINED_FUNCTION_4_2(v48, v49, v50, v51, v52, v53, MEMORY[0x1E69E6158]);

      v54 = OUTLINED_FUNCTION_70();
      MEMORY[0x1DA6EAC70](v54);

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_4_29();
      v42 = v117;
      break;
    case 5u:
      OUTLINED_FUNCTION_2_29();
      v95 = v120;
      sub_1D5003B40(v1, v120, v96);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_75_5();
      v97 = UploadedAudio.debugDescription.getter();
      v99 = OUTLINED_FUNCTION_7_4(v97, v98);
      OUTLINED_FUNCTION_4_2(v99, v100, v101, v102, v103, v104, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_26_0();
      v105 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v105);

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_25_27();
      goto LABEL_10;
    case 6u:
      OUTLINED_FUNCTION_1_44();
      v95 = v121;
      sub_1D5003B40(v1, v121, v107);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_75_5();
      v108 = UploadedVideo.debugDescription.getter();
      v110 = OUTLINED_FUNCTION_7_4(v108, v109);
      OUTLINED_FUNCTION_4_2(v110, v111, v112, v113, v114, v115, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_26_0();
      v116 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v116);

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_26_21();
LABEL_10:
      v41 = v106;
      v42 = v95;
      break;
    default:
      OUTLINED_FUNCTION_5_30();
      v25 = OUTLINED_FUNCTION_98();
      sub_1D5003B40(v25, v26, v27);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_82_6();
      MEMORY[0x1DA6EAC70](v28 - 3, v29 | 0x8000000000000000);
      v30 = MusicMovie.debugDescription.getter();
      v32 = OUTLINED_FUNCTION_7_4(v30, v31);
      v38 = OUTLINED_FUNCTION_4_2(v32, v33, v34, v35, v36, v37, MEMORY[0x1E69E6158]);
      v40 = v39;

      MEMORY[0x1DA6EAC70](v38, v40);

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_0_46();
      v42 = v0;
      break;
  }

  sub_1D5008A38(v42, v41);
LABEL_12:
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46();
}

void sub_1D5007EC4()
{
  OUTLINED_FUNCTION_47();
  v5 = type metadata accessor for UploadedVideo(0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v57 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for UploadedAudio(v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v12 = OUTLINED_FUNCTION_29_15(v11);
  v13 = type metadata accessor for TVEpisode(v12);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v55 = OUTLINED_FUNCTION_90_6();
  OUTLINED_FUNCTION_4();
  v56 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  sub_1D5614828();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_11_0();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_8_34();
  v22 = type metadata accessor for MusicMovie(v21);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v24 = OUTLINED_FUNCTION_31_6();
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(v24);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  sub_1D5003E98(v1, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = OUTLINED_FUNCTION_31_18();
      v45(v44);
      strcpy(&v58, ".musicVideo(");
      BYTE13(v58) = 0;
      HIWORD(v58) = -5120;
      OUTLINED_FUNCTION_27_18();
      sub_1D4E5E3F8(v46, v47, MEMORY[0x1E6975508]);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_95_5();
      v39 = OUTLINED_FUNCTION_161();
      goto LABEL_7;
    case 2u:
      v35 = OUTLINED_FUNCTION_45_13();
      v36(v35);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      *&v58 = 0x73696C79616C702ELL;
      *(&v58 + 1) = 0xEF287972746E4574;
      OUTLINED_FUNCTION_22_23();
      sub_1D4E5E3F8(v37, v38, MEMORY[0x1E6977338]);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_95_5();
      v39 = OUTLINED_FUNCTION_29_12();
LABEL_7:
      v40(v39);
      goto LABEL_12;
    case 3u:
      OUTLINED_FUNCTION_40_3();
      v41(v4, v2, v55);
      *&v58 = 0x28676E6F732ELL;
      *(&v58 + 1) = 0xE600000000000000;
      OUTLINED_FUNCTION_21_21();
      sub_1D4E5E3F8(v42, v43, MEMORY[0x1E6976C10]);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      (*(v56 + 8))(v4, v55);
      goto LABEL_12;
    case 4u:
      OUTLINED_FUNCTION_3_34();
      v32 = OUTLINED_FUNCTION_70();
      sub_1D5003B40(v32, v33, v34);
      TVEpisode.description.getter();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_4_29();
      v31 = v3;
      break;
    case 5u:
      OUTLINED_FUNCTION_2_29();
      OUTLINED_FUNCTION_78_8(v48, v49, v50);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_97_6();
      *&v58 = v51;
      *(&v58 + 1) = 0xEF286F6964754164;
      UploadedAudio.description.getter();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_25_27();
      goto LABEL_10;
    case 6u:
      OUTLINED_FUNCTION_1_44();
      v19 = v57;
      sub_1D5003B40(v2, v57, v53);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_97_6();
      *&v58 = v54;
      *(&v58 + 1) = 0xEF286F6564695664;
      UploadedVideo.description.getter();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_26_21();
LABEL_10:
      v30 = v52;
      v31 = v19;
      break;
    default:
      OUTLINED_FUNCTION_5_30();
      v26 = OUTLINED_FUNCTION_98();
      sub_1D5003B40(v26, v27, v28);
      strcpy(&v58, ".musicMovie(");
      BYTE13(v58) = 0;
      HIWORD(v58) = -5120;
      v29 = MusicMovie.description.getter();
      MEMORY[0x1DA6EAC70](v29);

      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_0_46();
      v31 = v0;
      break;
  }

  sub_1D5008A38(v31, v30);
LABEL_12:
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5008488()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FD8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FC8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD0], v0);
  qword_1EDD5E460 = v4;
  return result;
}

uint64_t sub_1D50085EC()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD5E438);
  __swift_project_value_buffer(v0, qword_1EDD5E438);
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(0);
  sub_1D4E5E3F8(&qword_1EDD5E420, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);
  return sub_1D560D978();
}

uint64_t sub_1D50086C4()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD5D7A0);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EDD5E430 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDD5E438);
  OUTLINED_FUNCTION_24_0();
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D50087A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  v0 = sub_1D560D9A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5627E00;
  v5 = v4 + v3;
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDD53D50);
  v7 = *(v1 + 16);
  v7(v5, v6, v0);
  sub_1D560D878();
  sub_1D560D898();
  sub_1D560D8E8();
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EDD53C40);
  v7(v5 + 4 * v2, v8, v0);
  if (qword_1EC7E8F18 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EC7F08A0);
  v7(v5 + 5 * v2, v9, v0);
  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_1EDD53CF0);
  result = (v7)(v5 + 6 * v2, v10, v0);
  qword_1EC7EDC90 = v4;
  return result;
}

uint64_t sub_1D5008A38(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D5008AD8(uint64_t a1)
{
  result = sub_1D4E5E3F8(&qword_1EDD5E420, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item, &protocol conformance descriptor for InternalMusicPlayer.Queue.Entry.Item);
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_23()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_57_11(unint64_t *a1)
{

  return sub_1D4E5E3F8(a1, v1, &protocol conformance descriptor for MusicMovie);
}

void OUTLINED_FUNCTION_75_5()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_78_8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 120);

  return sub_1D5003B40(v3, v6, a3);
}

uint64_t OUTLINED_FUNCTION_89_7()
{

  return sub_1D4E62938(v0, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_103_4@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = a1;

  return type metadata accessor for UploadedVideo(0);
}

uint64_t OUTLINED_FUNCTION_105_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return __swift_destroy_boxed_opaque_existential_1((v4 - 128));
}

uint64_t PlayableMusicItem.playbackSource.getter@<X0>(_BYTE *a3@<X8>)
{
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560EC98();
  v10 = sub_1D560D668();
  result = (*(v6 + 8))(v9, v4);
  *a3 = v10 & 1;
  return result;
}

uint64_t sub_1D5008E58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676F6C61746163 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972617262696CLL && a2 == 0xE700000000000000)
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

uint64_t sub_1D5008F28(char a1)
{
  if (a1)
  {
    return 0x7972617262696CLL;
  }

  else
  {
    return 0x676F6C61746163;
  }
}

uint64_t sub_1D5008F58(uint64_t a1)
{
  v2 = sub_1D5009424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5008F94(uint64_t a1)
{
  v2 = sub_1D5009424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5008FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5008E58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5009000(uint64_t a1)
{
  v2 = sub_1D500937C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D500903C(uint64_t a1)
{
  v2 = sub_1D500937C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5009078(uint64_t a1)
{
  v2 = sub_1D50093D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50090B4(uint64_t a1)
{
  v2 = sub_1D50093D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicPlaybackSource.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDCC0, &qword_1D5628180);
  OUTLINED_FUNCTION_4();
  v25 = v4;
  v26 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDCC8, &qword_1D5628188);
  OUTLINED_FUNCTION_4();
  v22 = v8;
  v23 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDCD0, &qword_1D5628190);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D500937C();
  sub_1D56163D8();
  v19 = (v14 + 8);
  if (v18)
  {
    v28 = 1;
    sub_1D50093D0();
    v20 = v24;
    sub_1D5616018();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_1D5009424();
    sub_1D5616018();
    (*(v22 + 8))(v11, v23);
  }

  return (*v19)(v17, v12);
}

unint64_t sub_1D500937C()
{
  result = qword_1EC7EDCD8;
  if (!qword_1EC7EDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDCD8);
  }

  return result;
}

unint64_t sub_1D50093D0()
{
  result = qword_1EC7EDCE0;
  if (!qword_1EC7EDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDCE0);
  }

  return result;
}

unint64_t sub_1D5009424()
{
  result = qword_1EC7EDCE8;
  if (!qword_1EC7EDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDCE8);
  }

  return result;
}

uint64_t MusicPlaybackSource.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t MusicPlaybackSource.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v41 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDCF0, &qword_1D5628198);
  OUTLINED_FUNCTION_4();
  v40 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDCF8, &qword_1D56281A0);
  OUTLINED_FUNCTION_4();
  v39 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD00, &unk_1D56281A8);
  OUTLINED_FUNCTION_4();
  v42 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D500937C();
  v17 = v44;
  sub_1D5616398();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v7;
  v38 = v11;
  v44 = a1;
  v18 = v43;
  sub_1D5615FE8();
  result = sub_1D4FE35F0();
  if (v21 == v22 >> 1)
  {
    v43 = result;
LABEL_9:
    v32 = sub_1D5615C18();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v34 = &type metadata for MusicPlaybackSource;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v16, v12);
    a1 = v44;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36[1] = 0;
  if (v21 >= (v22 >> 1))
  {
    __break(1u);
  }

  else
  {
    v23 = *(v20 + v21);
    v24 = sub_1D4FE35EC();
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 != v28 >> 1)
    {
      v43 = v24;
      goto LABEL_9;
    }

    v45 = v23;
    if (v23)
    {
      v47 = 1;
      sub_1D50093D0();
      v29 = v6;
      OUTLINED_FUNCTION_3_0(&type metadata for MusicPlaybackSource.LibraryCodingKeys, &v47);
      v30 = v41;
      v31 = v42;
      swift_unknownObjectRelease();
      (*(v40 + 8))(v29, v18);
    }

    else
    {
      v46 = 0;
      sub_1D5009424();
      v35 = v38;
      OUTLINED_FUNCTION_3_0(&type metadata for MusicPlaybackSource.CatalogCodingKeys, &v46);
      v30 = v41;
      v31 = v42;
      swift_unknownObjectRelease();
      (*(v39 + 8))(v35, v37);
    }

    (*(v31 + 8))(v16, v26);
    *v30 = v45;
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  return result;
}

unint64_t sub_1D50099AC()
{
  result = qword_1EC7EDD08;
  if (!qword_1EC7EDD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EDD10, &qword_1D56281B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDD08);
  }

  return result;
}

unint64_t sub_1D5009A14()
{
  result = qword_1EDD5BEA0[0];
  if (!qword_1EDD5BEA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5BEA0);
  }

  return result;
}

_BYTE *sub_1D5009A78(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5009B78()
{
  result = qword_1EC7EDD18;
  if (!qword_1EC7EDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDD18);
  }

  return result;
}

unint64_t sub_1D5009BD0()
{
  result = qword_1EC7EDD20;
  if (!qword_1EC7EDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDD20);
  }

  return result;
}

unint64_t sub_1D5009C28()
{
  result = qword_1EC7EDD28;
  if (!qword_1EC7EDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDD28);
  }

  return result;
}

unint64_t sub_1D5009C80()
{
  result = qword_1EC7EDD30;
  if (!qword_1EC7EDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDD30);
  }

  return result;
}

unint64_t sub_1D5009CD8()
{
  result = qword_1EC7EDD38;
  if (!qword_1EC7EDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDD38);
  }

  return result;
}

unint64_t sub_1D5009D30()
{
  result = qword_1EC7EDD40;
  if (!qword_1EC7EDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDD40);
  }

  return result;
}

unint64_t sub_1D5009D88()
{
  result = qword_1EC7EDD48;
  if (!qword_1EC7EDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDD48);
  }

  return result;
}

uint64_t type metadata accessor for StorePlatformTVEpisode(uint64_t a1)
{
  result = qword_1EDD55738;
  if (!qword_1EDD55738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5009E60(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD528D8, &qword_1EC7ED048, &unk_1D56285A0);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD531C0, &qword_1EC7EC970, &qword_1D5631060);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v9 > 0x3F)
    {
      return v4;
    }

    sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
    if (v11 > 0x3F)
    {
      return v10;
    }

    sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
    if (v12 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EC7EDD50, &qword_1EC7EDD58, qword_1D5636D90);
    if (v13 > 0x3F)
    {
      return v4;
    }

    sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
    if (v15 > 0x3F)
    {
      return v14;
    }

    sub_1D500A1D4(319);
    if (v17 > 0x3F)
    {
      return v16;
    }

    sub_1D4E6D600(319, &qword_1EC7EDD60, &qword_1EC7EDD68, qword_1D56285B0);
    if (v18 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    if (v19 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1D4E6D600(319, &qword_1EDD53208, &qword_1EC7ED9A8, &unk_1D5626F90);
      v2 = v20;
      if (v21 <= 0x3F)
      {
        sub_1D4E518A0(319, qword_1EDD57158, &_s14descr1F509E369C4KindON);
        v2 = v22;
        if (v23 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_1D500A1D4(uint64_t a1)
{
  if (!qword_1EDD5F540)
  {
    sub_1D560C0A8();
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD5F540);
    }
  }
}

uint64_t sub_1D500A274@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v130 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v132 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v127 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v13 = OUTLINED_FUNCTION_22(v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v127 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v127 - v21;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD78, &qword_1D5628700);
  OUTLINED_FUNCTION_4();
  v24 = v23;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v127 - v26;
  v136 = type metadata accessor for StorePlatformTVEpisode(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v138 = (v30 - v29);
  v32 = a1[3];
  v31 = a1[4];
  v135 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D500E508();
  v133 = v27;
  v33 = v137;
  sub_1D5616398();
  if (v33)
  {
    v137 = v33;
    v35 = 0;
    LODWORD(v36) = 0;
    v37 = 0;
    OUTLINED_FUNCTION_23_24();
    LODWORD(v38) = 0;
    LODWORD(v127) = 0;
    LODWORD(v128) = 0;
    LODWORD(v129) = 0;
    LODWORD(v130) = 0;
    LODWORD(v131) = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
  }

  else
  {
    LODWORD(v32) = v22;
    v128 = v16;
    v129 = v18;
    v127 = v11;
    v36 = v132;
    v37 = v133;
    LODWORD(v31) = v24;
    LOBYTE(v139[0]) = 0;
    v24 = v134;
    v34 = sub_1D5615F38();
    v38 = v138;
    *v138 = v34;
    v38[1] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v141 = 1;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_14_26();
    v44 = v136;
    v38[2] = v139[0];
    OUTLINED_FUNCTION_33_7(2);
    v38[3] = sub_1D5615F38();
    v38[4] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    v141 = 3;
    sub_1D4FCE204();
    OUTLINED_FUNCTION_14_26();
    v138[5] = v139[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    LOBYTE(v139[0]) = 4;
    sub_1D4F888C0();
    sub_1D5615F78();
    OUTLINED_FUNCTION_62_13();
    sub_1D4F39A1C(v22, v46, v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v141 = 5;
    sub_1D500E734(&qword_1EDD528F8);
    OUTLINED_FUNCTION_14_26();
    *(v138 + v44[9]) = v139[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v141 = 6;
    sub_1D500E55C(&qword_1EDD52908);
    OUTLINED_FUNCTION_14_26();
    v49 = v138;
    *(v138 + v44[10]) = v139[0];
    OUTLINED_FUNCTION_33_7(7);
    v35 = v31;
    v50 = sub_1D5615F68();
    OUTLINED_FUNCTION_39_1(v50, v51, v49 + v44[11]);
    OUTLINED_FUNCTION_33_7(8);
    v52 = sub_1D5615F68();
    v137 = 0;
    OUTLINED_FUNCTION_39_1(v52, v53, v49 + v44[12]);
    OUTLINED_FUNCTION_33_7(9);
    v54 = v137;
    sub_1D5615F68();
    v137 = v54;
    if (v54)
    {
      v60 = OUTLINED_FUNCTION_32_8();
      v61(v60);
      LODWORD(v38) = 0;
      LODWORD(v127) = 0;
      LODWORD(v128) = 0;
      LODWORD(v129) = 0;
      LODWORD(v130) = 0;
      LODWORD(v131) = 0;
      LODWORD(v132) = 0;
      LODWORD(v133) = 0;
      OUTLINED_FUNCTION_0_47();
    }

    else
    {
      OUTLINED_FUNCTION_72_10();
      OUTLINED_FUNCTION_39_1(v55, v56, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
      v141 = 10;
      sub_1D4F88BF4(&qword_1EDD52778);
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_34_18(v58, v59);
      v137 = 0;
      *(v138 + v136[14]) = v139[0];
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD58, qword_1D5636D90);
      v141 = 11;
      sub_1D500E5CC();
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_34_18(v62, v63);
      v137 = 0;
      *(v138 + v136[15]) = v139[0];
      OUTLINED_FUNCTION_19_4(12);
      v64 = sub_1D5615F48();
      v137 = 0;
      *(v138 + v136[16]) = v64;
      v141 = 13;
      sub_1D4F89C9C();
      OUTLINED_FUNCTION_57_12();
      sub_1D5615FD8();
      v137 = 0;
      v65 = v139[1];
      v66 = (v138 + v136[17]);
      *v66 = v139[0];
      v66[1] = v65;
      sub_1D560C0A8();
      LOBYTE(v139[0]) = 14;
      OUTLINED_FUNCTION_5_31();
      v24 = sub_1D500EAE4(v67);
      OUTLINED_FUNCTION_69_9();
      v68 = v137;
      sub_1D5615F78();
      v137 = v68;
      if (v68)
      {
        v69 = OUTLINED_FUNCTION_32_8();
        v70(v69);
        LODWORD(v129) = 0;
        LODWORD(v130) = 0;
        LODWORD(v131) = 0;
        LODWORD(v132) = 0;
        LODWORD(v133) = 0;
        OUTLINED_FUNCTION_0_47();
        LODWORD(v38) = 1;
        LODWORD(v127) = v71;
        LODWORD(v128) = v71;
      }

      else
      {
        OUTLINED_FUNCTION_62_13();
        sub_1D4F39A1C(v129, v72, v73, v74);
        OUTLINED_FUNCTION_19_4(15);
        v75 = v137;
        v76 = sub_1D5615F48();
        v137 = v75;
        if (v75)
        {
          v77 = OUTLINED_FUNCTION_32_8();
          v78(v77);
          LODWORD(v130) = 0;
          LODWORD(v131) = 0;
          LODWORD(v132) = 0;
          LODWORD(v133) = 0;
          OUTLINED_FUNCTION_0_47();
          LODWORD(v38) = 1;
          LODWORD(v127) = v79;
          LODWORD(v128) = v79;
          LODWORD(v129) = v79;
        }

        else
        {
          *(v138 + v136[19]) = v76;
          OUTLINED_FUNCTION_19_4(16);
          sub_1D5615F38();
          v137 = 0;
          OUTLINED_FUNCTION_72_10();
          *v82 = v80;
          v82[1] = v81;
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD68, qword_1D56285B0);
          v141 = 17;
          sub_1D500E680();
          OUTLINED_FUNCTION_18_30();
          OUTLINED_FUNCTION_34_18(v83, v84);
          v137 = 0;
          *(v138 + v136[21]) = v139[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
          LOBYTE(v139[0]) = 18;
          v35 = sub_1D4F886BC();
          OUTLINED_FUNCTION_65_11();
          v85 = v137;
          sub_1D5615F78();
          v137 = v85;
          if (v85)
          {
            v86 = OUTLINED_FUNCTION_32_8();
            v87(v86);
            LODWORD(v132) = 0;
            LODWORD(v133) = 0;
            OUTLINED_FUNCTION_0_47();
            OUTLINED_FUNCTION_9_35(v88);
            LODWORD(v131) = v89;
          }

          else
          {
            OUTLINED_FUNCTION_62_13();
            sub_1D4F39A1C(v127, v90, v91, v92);
            OUTLINED_FUNCTION_19_4(19);
            v93 = v137;
            sub_1D5615F38();
            v137 = v93;
            if (v93)
            {
              v94 = OUTLINED_FUNCTION_32_8();
              v95(v94);
              LODWORD(v133) = 0;
              OUTLINED_FUNCTION_0_47();
              OUTLINED_FUNCTION_9_35(v96);
              LODWORD(v131) = v97;
              LODWORD(v132) = v97;
            }

            else
            {
              OUTLINED_FUNCTION_72_10();
              *v100 = v98;
              v100[1] = v99;
              LOBYTE(v139[0]) = 20;
              OUTLINED_FUNCTION_65_11();
              sub_1D5615F78();
              v137 = 0;
              OUTLINED_FUNCTION_62_13();
              sub_1D4F39A1C(v36, v101, v102, v103);
              OUTLINED_FUNCTION_19_4(21);
              v104 = v137;
              v105 = sub_1D5615F48();
              v137 = v104;
              if (!v104)
              {
                *(v138 + v136[25]) = v105;
                v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
                LOBYTE(v139[0]) = 22;
                v110 = sub_1D5000184();
                OUTLINED_FUNCTION_34_18(v110, v139);
                v42 = 1;
                v137 = 0;
                OUTLINED_FUNCTION_62_13();
                sub_1D4F39A1C(v130, v111, v112, v113);
                OUTLINED_FUNCTION_19_4(23);
                v114 = v137;
                sub_1D5615F68();
                v137 = v114;
                if (!v114)
                {
                  OUTLINED_FUNCTION_72_10();
                  OUTLINED_FUNCTION_39_1(v115, v116, v117);
                  v141 = 24;
                  sub_1D4FFFFC4();
                  OUTLINED_FUNCTION_57_12();
                  sub_1D5615F78();
                  v137 = 0;
                  *(v138 + v136[28]) = v139[0];
                  LOBYTE(v139[0]) = 25;
                  OUTLINED_FUNCTION_69_9();
                  sub_1D5615F78();
                  v137 = 0;
                  v122 = OUTLINED_FUNCTION_32_8();
                  v123(v122);
                  v124 = v138;
                  sub_1D4F39A1C(v128, v138 + v136[29], &unk_1EC7E9CA8, &unk_1D561D1D0);
                  sub_1D500E90C(v124, v131, type metadata accessor for StorePlatformTVEpisode);
                  __swift_destroy_boxed_opaque_existential_1(v135);
                  v125 = OUTLINED_FUNCTION_71();
                  return sub_1D500E968(v125, v126);
                }

                v118 = OUTLINED_FUNCTION_32_8();
                v119(v118);
                __swift_destroy_boxed_opaque_existential_1(v135);
                OUTLINED_FUNCTION_1_45();
                OUTLINED_FUNCTION_15_27(v120);
                LODWORD(v132) = v121;
                LODWORD(v133) = v121;
                LODWORD(v134) = v121;
                v39 = v136;
                v40 = v138;
LABEL_6:

                if (v36)
                {
                  goto LABEL_7;
                }

                goto LABEL_24;
              }

              v106 = OUTLINED_FUNCTION_32_8();
              v107(v106);
              v35 = 1;
              OUTLINED_FUNCTION_1_45();
              OUTLINED_FUNCTION_15_27(v108);
              LODWORD(v132) = v109;
              LODWORD(v133) = v109;
              LODWORD(v134) = v109;
            }
          }
        }
      }
    }
  }

  v39 = v136;
  v40 = v138;
  result = __swift_destroy_boxed_opaque_existential_1(v135);
  if (v35)
  {
    v42 = 0;
    goto LABEL_6;
  }

  v42 = 0;
  if (v36)
  {
LABEL_7:

    if ((v37 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (!v37)
  {
LABEL_8:
    if (v32)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:

  if (v32)
  {
LABEL_9:

    if ((v31 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v31)
  {
LABEL_10:
    if (v24)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = sub_1D4E50004(v40 + v39[8], &qword_1EC7EC978, &unk_1D56222A0);
  if (v24)
  {
LABEL_11:

    if ((v140 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v140)
  {
LABEL_12:
    if (v38)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:

  if (v38)
  {
LABEL_13:

    if ((v127 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!v127)
  {
LABEL_14:
    if (v128)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:

  if (v128)
  {
LABEL_15:

    if ((v129 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  if (!v129)
  {
LABEL_16:
    if (v130)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = sub_1D4E50004(v40 + v39[18], &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v130)
  {
LABEL_17:

    if ((v131 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (!v131)
  {
LABEL_18:
    if (v132)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:

  if (v132)
  {
LABEL_19:
    result = sub_1D4E50004(v40 + v39[22], &qword_1EC7EB5B8, &unk_1D56206A0);
    if ((v133 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  if (!v133)
  {
LABEL_20:
    if (v134)
    {
      goto LABEL_21;
    }

LABEL_38:
    if (!v42)
    {
      return result;
    }

    return sub_1D4E50004(v40 + v39[26], &qword_1EC7ED9B0, &unk_1D5631050);
  }

LABEL_37:

  if ((v134 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_21:
  result = sub_1D4E50004(v40 + v39[24], &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v42 & 1) == 0)
  {
    return result;
  }

  return sub_1D4E50004(v40 + v39[26], &qword_1EC7ED9B0, &unk_1D5631050);
}

uint64_t sub_1D500B1E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDDA8, &qword_1D5628708);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D500E508();
  sub_1D56163D8();
  LOBYTE(v37[0]) = 0;
  OUTLINED_FUNCTION_29_0();
  sub_1D5616028();
  if (!v2)
  {
    v37[0] = *(v3 + 16);
    v38 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v11 = sub_1D4F7CE0C();
    OUTLINED_FUNCTION_8_2(v11);
    OUTLINED_FUNCTION_7(2);
    sub_1D5616028();
    v37[0] = *(v3 + 40);
    v38 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    v12 = sub_1D4FC7928();
    OUTLINED_FUNCTION_8_2(v12);
    v13 = type metadata accessor for StorePlatformTVEpisode(0);
    v14 = v13[8];
    LOBYTE(v37[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    v15 = sub_1D4F7CF5C();
    OUTLINED_FUNCTION_21_0(v3 + v14, v37, v16, v17, v15);
    OUTLINED_FUNCTION_61_1(v13[9]);
    v38 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v18 = sub_1D500E734(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_8_2(v18);
    OUTLINED_FUNCTION_61_1(v13[10]);
    v38 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v19 = sub_1D500E55C(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_8_2(v19);
    OUTLINED_FUNCTION_154(v13[11]);
    OUTLINED_FUNCTION_7(7);
    sub_1D5616058();
    OUTLINED_FUNCTION_154(v13[12]);
    OUTLINED_FUNCTION_7(8);
    sub_1D5616058();
    OUTLINED_FUNCTION_154(v13[13]);
    OUTLINED_FUNCTION_7(9);
    sub_1D5616058();
    OUTLINED_FUNCTION_61_1(v13[14]);
    v38 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    v20 = sub_1D4F88BF4(&unk_1EC7ECA00);
    OUTLINED_FUNCTION_8_2(v20);
    OUTLINED_FUNCTION_61_1(v13[15]);
    v38 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD58, qword_1D5636D90);
    v21 = sub_1D500E7A4();
    OUTLINED_FUNCTION_8_2(v21);
    LOBYTE(v37[0]) = 12;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    v22 = (v3 + v13[17]);
    v24 = *v22;
    v23 = v22[1];
    v37[0] = v24;
    v37[1] = v23;
    v38 = 13;
    sub_1D4F89BA0();
    OUTLINED_FUNCTION_29_0();
    sub_1D56160C8();
    LOBYTE(v37[0]) = 14;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_5_31();
    sub_1D500EAE4(v25);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    LOBYTE(v37[0]) = 15;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_7(16);
    sub_1D5616028();
    OUTLINED_FUNCTION_61_1(v13[21]);
    v38 = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD68, qword_1D56285B0);
    v26 = sub_1D500E858();
    OUTLINED_FUNCTION_8_2(v26);
    v36 = v13[22];
    LOBYTE(v37[0]) = 18;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7CD24();
    OUTLINED_FUNCTION_35_18(v36);
    v35 = v28;
    v36 = v27;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_7(19);
    sub_1D5616028();
    v29 = v13[24];
    LOBYTE(v37[0]) = 20;
    OUTLINED_FUNCTION_35_18(v29);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    LOBYTE(v37[0]) = 21;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    v36 = v13[26];
    LOBYTE(v37[0]) = 22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    v30 = sub_1D4FF2700();
    OUTLINED_FUNCTION_21_0(v3 + v36, v37, v31, v32, v30);
    OUTLINED_FUNCTION_154(v13[27]);
    OUTLINED_FUNCTION_7(23);
    sub_1D5616058();
    LOBYTE(v37[0]) = *(v3 + v13[28]);
    v38 = 24;
    sub_1D4FF2540();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v33 = v13[29];
    LOBYTE(v37[0]) = 25;
    OUTLINED_FUNCTION_35_18(v33);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
  }

  return (*(v7 + 8))(v10, v5);
}

BOOL sub_1D500B87C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  OUTLINED_FUNCTION_4();
  v254 = v5;
  v255 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v253 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v251 = v10;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B8, &unk_1D5626FA0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v252 = v12;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v249 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v248 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v246 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  v258 = &v243 - v20;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v247 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  v261 = &v243 - v24;
  v265 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v263 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v262 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13();
  v256 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v243 - v33;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13();
  v257 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v243 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4();
  v42 = v41;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v243 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v46);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v243 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC980, &qword_1D5628710);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v243 - v52;
  v54 = a1[1];
  v55 = a2[1];
  if (v54)
  {
    if (!v55)
    {
      return 0;
    }

    v56 = *a1 == *a2 && v54 == v55;
    if (!v56 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v55)
  {
    return 0;
  }

  v244 = a1;
  v57 = a1[2];
  v245 = a2;
  v58 = a2[2];
  if (v57)
  {
    if (!v58)
    {
      return 0;
    }

    sub_1D4F2C07C();
    v60 = v59;

    if ((v60 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v58)
  {
    return 0;
  }

  v61 = v244;
  v62 = v244[4];
  v63 = v245;
  v64 = v245[4];
  if (v62)
  {
    if (!v64)
    {
      return 0;
    }

    v65 = v244[3] == v245[3] && v62 == v64;
    if (!v65 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v64)
  {
    return 0;
  }

  v66 = v61[5];
  v67 = v63[5];
  if (v66)
  {
    if (!v67)
    {
      return 0;
    }

    sub_1D4F2C5FC(v66, v67);
    v69 = v68;

    if ((v69 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v67)
  {
    return 0;
  }

  v243 = type metadata accessor for StorePlatformTVEpisode(0);
  v70 = *(v243 + 32);
  v71 = *(v50 + 48);
  sub_1D4F39AB0(v244 + v70, v53, &qword_1EC7EC978, &unk_1D56222A0);
  sub_1D4F39AB0(v245 + v70, &v53[v71], &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_57(v53, 1, v40);
  if (v56)
  {
    OUTLINED_FUNCTION_57(&v53[v71], 1, v40);
    if (v56)
    {
      sub_1D4E50004(v53, &qword_1EC7EC978, &unk_1D56222A0);
      goto LABEL_42;
    }

LABEL_37:
    v73 = &qword_1EC7EC980;
    v74 = &qword_1D5628710;
    v75 = v53;
    goto LABEL_38;
  }

  sub_1D4F39AB0(v53, v49, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_57(&v53[v71], 1, v40);
  if (v72)
  {
    (*(v42 + 8))(v49, v40);
    goto LABEL_37;
  }

  (*(v42 + 32))(v45, &v53[v71], v40);
  sub_1D4F7C058();
  v71 = sub_1D5614D18();
  v77 = *(v42 + 8);
  v77(v45, v40);
  v77(v49, v40);
  sub_1D4E50004(v53, &qword_1EC7EC978, &unk_1D56222A0);
  if ((v71 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v78 = v243;
  v79 = v244;
  v80 = *(v244 + *(v243 + 36));
  OUTLINED_FUNCTION_68_8();
  if (v80)
  {
    if (!v71)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F28F1C();
    OUTLINED_FUNCTION_70_2();
    if ((v80 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  v81 = *(v79 + v78[10]);
  OUTLINED_FUNCTION_68_8();
  if (v81)
  {
    if (!v71)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F29174();
    OUTLINED_FUNCTION_70_2();
    if ((v81 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  v82 = v78[11];
  v83 = *(v79 + v82 + 8);
  v84 = *(v245 + v82 + 8);
  if (v83)
  {
    if (!v84)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v85)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_67_10();
  if (v87)
  {
    if (!v86)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v88)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_67_10();
  if (v91)
  {
    if (!v89)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v92)
    {
      return 0;
    }
  }

  v93 = v78[14];
  v94 = *(v90 + v93);
  if (*(v79 + v93))
  {
    if (!v94)
    {
      return 0;
    }

    sub_1D4EF81E0();
    if ((v95 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v94)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_44_12();
  v98 = *(v97 + v96);
  OUTLINED_FUNCTION_68_8();
  if (v98)
  {
    if (!v71)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4EF8BA4();
    OUTLINED_FUNCTION_70_2();
    if ((v98 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_20_32();
  if (v56)
  {
    if (v99 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v99 == 2 || ((v99 ^ v100) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_44_12();
  v103 = (v102 + v101);
  v104 = (v245 + v101);
  v105 = *v103 == *v104 && v103[1] == v104[1];
  if (!v105 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_7();
  v106 = *(v264 + 48);
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v107, v108, v109, v110);
  OUTLINED_FUNCTION_59_9();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v111, v112, v113, v114);
  OUTLINED_FUNCTION_25_8(v39);
  if (v56)
  {
    OUTLINED_FUNCTION_25_8(&v106[v39]);
    if (v56)
    {
      sub_1D4E50004(v39, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_95;
    }

LABEL_93:
    v73 = &qword_1EC7E9FB0;
    v74 = &qword_1D562C590;
    v75 = v39;
    goto LABEL_38;
  }

  sub_1D4F39AB0(v39, v34, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_8(&v106[v39]);
  if (v115)
  {
    (*(v263 + 8))(v34, v265);
    goto LABEL_93;
  }

  v116 = v265;
  (*(v263 + 32))(v262, &v106[v39], v265);
  OUTLINED_FUNCTION_5_31();
  v118 = sub_1D500EAE4(v117);
  OUTLINED_FUNCTION_75_3(v118, v119, v120, v118);
  v121 = OUTLINED_FUNCTION_31_7();
  (v106)(v121);
  (v106)(v34, v116);
  sub_1D4E50004(v39, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((&unk_1EC7E9CA8 & 1) == 0)
  {
    return 0;
  }

LABEL_95:
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_20_32();
  if (v56)
  {
    if (v122 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v122 == 2 || ((v122 ^ v123) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_49_9();
  if (v124)
  {
    if (!v125)
    {
      return 0;
    }

    v128 = *v126 == *v127 && v124 == v125;
    if (!v128 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v125)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_44_12();
  v131 = *(v130 + v129);
  OUTLINED_FUNCTION_68_8();
  if (v131)
  {
    if (!&unk_1EC7E9CA8)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4EF905C();
    OUTLINED_FUNCTION_70_2();
    if ((v131 & 1) == 0)
    {
      return 0;
    }
  }

  else if (&unk_1EC7E9CA8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_7();
  v132 = *(v259 + 48);
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v133, v134, v135, v136);
  OUTLINED_FUNCTION_59_9();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v137, v138, v139, v140);
  v141 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v141, v142, v260);
  if (v56)
  {
    OUTLINED_FUNCTION_57(v132 + v261, 1, v260);
    if (v56)
    {
      sub_1D4E50004(v261, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_125;
    }

LABEL_123:
    v73 = &qword_1EC7EC330;
    v74 = &qword_1D56222C0;
    v75 = v261;
    goto LABEL_38;
  }

  v143 = v261;
  sub_1D4F39AB0(v261, v258, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v132 + v143, 1, v260);
  if (v144)
  {
    (*(v249 + 8))(v258, v260);
    goto LABEL_123;
  }

  v145 = v260;
  v146 = v261;
  (*(v249 + 32))(v248, v132 + v261, v260);
  v147 = sub_1D4F39858();
  v148 = v258;
  OUTLINED_FUNCTION_75_3(v147, v149, v150, v147);
  v151 = OUTLINED_FUNCTION_31_7();
  v132(v151);
  (v132)(v148, v145);
  sub_1D4E50004(v146, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v143 & 1) == 0)
  {
    return 0;
  }

LABEL_125:
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_49_9();
  if (v152)
  {
    if (!v153)
    {
      return 0;
    }

    v156 = *v154 == *v155 && v152 == v153;
    if (!v156 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v153)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_7();
  v157 = *(v259 + 48);
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v158, v159, v160, v161);
  OUTLINED_FUNCTION_59_9();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v162, v163, v164, v165);
  v166 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v166, v167, v260);
  if (!v56)
  {
    v168 = v247;
    sub_1D4F39AB0(v247, v246, &qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_57(v168 + v157, 1, v260);
    if (!v169)
    {
      v170 = v248;
      OUTLINED_FUNCTION_81();
      v171 = v247;
      v172 = v247 + v157;
      v173 = v260;
      v174(v170, v172, v260);
      v175 = sub_1D4F39858();
      v176 = v246;
      OUTLINED_FUNCTION_157_0(v175, v177, v178, v175);
      v179 = OUTLINED_FUNCTION_51();
      (unk_1D56206A0)(v179);
      (unk_1D56206A0)(v176, v173);
      sub_1D4E50004(v171, &qword_1EC7EB5B8, &unk_1D56206A0);
      if ((v168 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_144;
    }

    (*(v249 + 8))(v246, v260);
LABEL_142:
    v73 = &qword_1EC7EC330;
    v74 = &qword_1D56222C0;
    v75 = v247;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_57(v247 + v157, 1, v260);
  if (!v56)
  {
    goto LABEL_142;
  }

  sub_1D4E50004(v247, &qword_1EC7EB5B8, &unk_1D56206A0);
LABEL_144:
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_20_32();
  if (v56)
  {
    if (v180 != 2)
    {
      return 0;
    }

LABEL_150:
    OUTLINED_FUNCTION_28_7();
    v182 = *(v250 + 48);
    OUTLINED_FUNCTION_29_20();
    OUTLINED_FUNCTION_8_1();
    sub_1D4F39AB0(v183, v184, v185, v186);
    OUTLINED_FUNCTION_59_9();
    OUTLINED_FUNCTION_8_1();
    sub_1D4F39AB0(v187, v188, v189, v190);
    v191 = OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_57(v191, v192, v255);
    if (v56)
    {
      OUTLINED_FUNCTION_57(v252 + v182, 1, v255);
      if (v56)
      {
        sub_1D4E50004(v252, &qword_1EC7ED9B0, &unk_1D5631050);
LABEL_160:
        OUTLINED_FUNCTION_28_7();
        OUTLINED_FUNCTION_44_12();
        v207 = *(v206 + v205 + 8);
        v208 = *(v245 + v205 + 8);
        if (v207)
        {
          if (!v208)
          {
            return 0;
          }
        }

        else
        {
          OUTLINED_FUNCTION_112_4();
          if (v209)
          {
            return 0;
          }
        }

        OUTLINED_FUNCTION_28_7();
        OUTLINED_FUNCTION_44_12();
        v212 = *(v211 + v210);
        v213 = *(v245 + v210);
        if (v212 == 26)
        {
          if (v213 != 26)
          {
            return 0;
          }
        }

        else
        {
          if (v213 == 26)
          {
            return 0;
          }

          v214 = sub_1D4FD39E0(v212);
          v216 = v215;
          if (v214 == sub_1D4FD39E0(v213) && v216 == v217)
          {
          }

          else
          {
            v219 = sub_1D5616168();

            if ((v219 & 1) == 0)
            {
              return 0;
            }
          }
        }

        OUTLINED_FUNCTION_28_7();
        v220 = *(v264 + 48);
        OUTLINED_FUNCTION_29_20();
        v221 = v257;
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39AB0(v222, v223, v224, v225);
        OUTLINED_FUNCTION_59_9();
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39AB0(v226, v227, v228, v229);
        OUTLINED_FUNCTION_25_8(v221);
        if (v56)
        {
          OUTLINED_FUNCTION_25_8(v257 + v220);
          if (v56)
          {
            sub_1D4E50004(v257, &unk_1EC7E9CA8, &unk_1D561D1D0);
            return 1;
          }
        }

        else
        {
          v230 = v257;
          sub_1D4F39AB0(v257, v256, &unk_1EC7E9CA8, &unk_1D561D1D0);
          OUTLINED_FUNCTION_25_8(v230 + v220);
          if (!v231)
          {
            v232 = v262;
            OUTLINED_FUNCTION_81();
            v233 = v257;
            v234 = v257 + v220;
            v235 = v265;
            v236(v232, v234, v265);
            OUTLINED_FUNCTION_5_31();
            v238 = sub_1D500EAE4(v237);
            v239 = v256;
            OUTLINED_FUNCTION_157_0(v238, v240, v241, v238);
            v242 = OUTLINED_FUNCTION_51();
            (unk_1D561D1D0)(v242);
            (unk_1D561D1D0)(v239, v235);
            sub_1D4E50004(v233, &unk_1EC7E9CA8, &unk_1D561D1D0);
            return (v230 & 1) != 0;
          }

          (*(v263 + 8))(v256, v265);
        }

        v73 = &qword_1EC7E9FB0;
        v74 = &qword_1D562C590;
        v75 = v257;
LABEL_38:
        sub_1D4E50004(v75, v73, v74);
        return 0;
      }
    }

    else
    {
      v193 = v252;
      sub_1D4F39AB0(v252, v251, &qword_1EC7ED9B0, &unk_1D5631050);
      OUTLINED_FUNCTION_57(v193 + v182, 1, v255);
      if (!v194)
      {
        v195 = v253;
        OUTLINED_FUNCTION_81();
        v196 = v252;
        v197 = v252 + v182;
        v198 = v255;
        v199(v195, v197, v255);
        v200 = sub_1D4FF1130();
        v201 = v251;
        OUTLINED_FUNCTION_157_0(v200, v202, v203, v200);
        v204 = OUTLINED_FUNCTION_51();
        (unk_1D5631050)(v204);
        (unk_1D5631050)(v201, v198);
        sub_1D4E50004(v196, &qword_1EC7ED9B0, &unk_1D5631050);
        if ((v193 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_160;
      }

      (*(v254 + 8))(v251, v255);
    }

    v73 = &qword_1EC7ED9B8;
    v74 = &unk_1D5626FA0;
    v75 = v252;
    goto LABEL_38;
  }

  result = 0;
  if (v180 != 2 && ((v180 ^ v181) & 1) == 0)
  {
    goto LABEL_150;
  }

  return result;
}

uint64_t sub_1D500CA38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73746964657263 && a2 == 0xE700000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4E65646F73697065 && a2 == 0xED00007265626D75;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x80000001D5681180 == a2;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001D56811A0 == a2;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x4B34736168 && a2 == 0xE500000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 25705 && a2 == 0xE200000000000000;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                  if (v21 || (sub_1D5616168() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x73726566666FLL && a2 == 0xE600000000000000;
                                    if (v22 || (sub_1D5616168() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x4177656976657270 && a2 == 0xEE006B726F777472;
                                      if (v23 || (sub_1D5616168() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                        if (v24 || (sub_1D5616168() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x68736E6565726373 && a2 == 0xEB0000000073746FLL;
                                          if (v25 || (sub_1D5616168() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000016 && 0x80000001D5681620 == a2;
                                            if (v26 || (sub_1D5616168() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000010 && 0x80000001D56811C0 == a2;
                                              if (v27 || (sub_1D5616168() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x6D754E6B63617274 && a2 == 0xEB00000000726562;
                                                if (v28 || (sub_1D5616168() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x6275536F65646976 && a2 == 0xEC00000065707954;
                                                  if (v29 || (sub_1D5616168() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else if (a1 == 7107189 && a2 == 0xE300000000000000)
                                                  {

                                                    return 25;
                                                  }

                                                  else
                                                  {
                                                    v31 = sub_1D5616168();

                                                    if (v31)
                                                    {
                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      return 26;
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D500D1F8(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
    case 21:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x6867697279706F63;
      break;
    case 3:
      result = 0x73746964657263;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6169726F74696465;
      break;
    case 7:
      result = 0x4E65646F73697065;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6D614E65726E6567;
      break;
    case 11:
      result = 0x7365726E6567;
      break;
    case 12:
      result = 0x4B34736168;
      break;
    case 13:
      result = 25705;
      break;
    case 14:
      result = 0x76697372656D6D69;
      break;
    case 15:
      result = 0x616C696176417369;
      break;
    case 16:
      result = 1701667182;
      break;
    case 17:
      result = 0x73726566666FLL;
      break;
    case 18:
      result = 0x4177656976657270;
      break;
    case 19:
      result = 0x44657361656C6572;
      break;
    case 20:
      result = 0x68736E6565726373;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0x6D754E6B63617274;
      break;
    case 24:
      result = 0x6275536F65646976;
      break;
    case 25:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D500D4CC(uint64_t a1)
{
  v3 = v1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  OUTLINED_FUNCTION_4();
  v79 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v78 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v85 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v83 = v12;
  v84 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v82 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v81 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v77 - v19;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v89 = v21;
  v90 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v88 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v25 = OUTLINED_FUNCTION_22(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13();
  v86 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v77 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4();
  v32 = v31;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v77 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v36);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v77 - v38;
  if (v1[1])
  {
    v2 = *v1;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v1[2])
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v1[4])
  {
    v2 = v1[3];
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v40 = v1[5];
  if (v40)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F35BFC(a1, v40);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v41 = type metadata accessor for StorePlatformTVEpisode(0);
  sub_1D4F39AB0(v1 + v41[8], v39, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_57(v39, 1, v30);
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v32 + 32))(v35, v39, v30);
    OUTLINED_FUNCTION_27();
    sub_1D4F88554();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v32 + 8))(v35, v30);
  }

  if (*(v1 + v41[9]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_140_3();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v41[10]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_140_3();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_157();
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_40_16();
    MEMORY[0x1DA6EC0D0](v2);
  }

  OUTLINED_FUNCTION_157();
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_40_16();
    MEMORY[0x1DA6EC0D0](v2);
  }

  OUTLINED_FUNCTION_157();
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_40_16();
    MEMORY[0x1DA6EC0D0](v2);
  }

  if (*(v1 + v41[14]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_140_3();
    sub_1D4F06928();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v41[15]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_140_3();
    sub_1D4F08318();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v43 = v90;
  if (*(v1 + v41[16]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  sub_1D5614E28();
  sub_1D4F39AB0(v1 + v41[18], v29, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v44 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v44, v45, v43);
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v47 = v88;
    v46 = v89;
    OUTLINED_FUNCTION_81();
    v48(v47, v29, v43);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_5_31();
    sub_1D500EAE4(v49);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v46 + 8))(v47, v43);
  }

  v50 = v84;
  if (*(v1 + v41[19]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v1 + v41[20] + 8))
  {
    OUTLINED_FUNCTION_40_16();
    OUTLINED_FUNCTION_24();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v41[21]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F080F8();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v51 = v80;
  sub_1D4F39AB0(v3 + v41[22], v80, &qword_1EC7EB5B8, &unk_1D56206A0);
  v52 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v52, v53, v50);
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v55 = v82;
    v54 = v83;
    OUTLINED_FUNCTION_81();
    v56(v55, v51, v50);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v54 + 8))(v55, v50);
  }

  if (*(v3 + v41[23] + 8))
  {
    OUTLINED_FUNCTION_40_16();
    OUTLINED_FUNCTION_24();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v57 = v81;
  sub_1D4F39AB0(v3 + v41[24], v81, &qword_1EC7EB5B8, &unk_1D56206A0);
  v58 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v58, v59, v50);
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v61 = v82;
    v60 = v83;
    OUTLINED_FUNCTION_81();
    v62(v61, v57, v50);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v60 + 8))(v61, v50);
  }

  if (*(v3 + v41[25]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v63 = v85;
  sub_1D4F39AB0(v3 + v41[26], v85, &qword_1EC7ED9B0, &unk_1D5631050);
  v64 = OUTLINED_FUNCTION_35_1();
  v65 = v87;
  OUTLINED_FUNCTION_57(v64, v66, v87);
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v68 = v78;
    v67 = v79;
    (*(v79 + 32))(v78, v63, v65);
    OUTLINED_FUNCTION_27();
    sub_1D4FFFE38();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v67 + 8))(v68, v65);
  }

  OUTLINED_FUNCTION_157();
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_40_16();
    MEMORY[0x1DA6EC0D0](v65);
  }

  v69 = *(v3 + v41[28]);
  if (v69 == 26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    sub_1D4FD39E0(v69);
    sub_1D5614E28();
  }

  v70 = v86;
  sub_1D4F39AB0(v3 + v41[29], v86, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v71 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v71, v72, v43);
  if (v42)
  {
    return OUTLINED_FUNCTION_36();
  }

  v74 = v88;
  v73 = v89;
  (*(v89 + 32))(v88, v70, v43);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_5_31();
  sub_1D500EAE4(v75);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  return (*(v73 + 8))(v74, v43);
}

uint64_t sub_1D500DE8C()
{
  sub_1D56162D8();
  sub_1D500D4CC(v1);
  return sub_1D5616328();
}

uint64_t sub_1D500DED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D500CA38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D500DEFC(uint64_t a1)
{
  v2 = sub_1D500E508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D500DF38(uint64_t a1)
{
  v2 = sub_1D500E508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D500DFB0(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D500D4CC(v2);
  return sub_1D5616328();
}

uint64_t sub_1D500DFEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_3();
  v37 = v3;
  v4 = sub_1D560F548();
  OUTLINED_FUNCTION_4();
  v34 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = type metadata accessor for StorePlatformOffer(0);
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = *(v0 + *(type metadata accessor for StorePlatformTVEpisode(0) + 84));
  if (!v17)
  {
    return 0;
  }

  v18 = *(v17 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = *(v10 + 20);
  v20 = v17 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v21 = *(v12 + 72);
  v35 = (v34 + 32);
  v22 = MEMORY[0x1E69E7CC0];
  v36 = v9;
  v33 = v21;
  do
  {
    sub_1D500E90C(v20, v16, type metadata accessor for StorePlatformOffer);
    sub_1D4F39AB0(v16 + v19, v37, &qword_1EC7EAC58, &unk_1D561DA70);
    sub_1D500E968(v16, type metadata accessor for StorePlatformOffer);
    v23 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v23, v24, v4);
    if (v25)
    {
      sub_1D4E50004(v37, &qword_1EC7EAC58, &unk_1D561DA70);
    }

    else
    {
      v26 = v19;
      v27 = *v35;
      (*v35)(v36, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D4F00C24();
        v22 = v30;
      }

      v29 = *(v22 + 16);
      if (v29 >= *(v22 + 24) >> 1)
      {
        sub_1D4F00C24();
        v22 = v31;
      }

      *(v22 + 16) = v29 + 1;
      (v27)(v22 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v29, v36, v4);
      v19 = v26;
      v21 = v33;
    }

    v20 += v21;
    --v18;
  }

  while (v18);
  return v22;
}

uint64_t sub_1D500E2F0()
{
  v1 = *(v0 + *(type metadata accessor for StorePlatformTVEpisode(0) + 76));
  if (v1 != 2)
  {
    return v1 & 1;
  }

  OUTLINED_FUNCTION_11_32();
  sub_1D500EAE4(v2);
  OUTLINED_FUNCTION_13_30(&unk_1EC7EDDD8);
  OUTLINED_FUNCTION_104();

  return sub_1D5612A28();
}

uint64_t sub_1D500E3BC()
{
  v2 = type metadata accessor for StorePlatformTVEpisode(0);
  OUTLINED_FUNCTION_11_32();
  sub_1D500EAE4(v3);
  OUTLINED_FUNCTION_13_30(&unk_1EC7EDDD8);
  OUTLINED_FUNCTION_104();
  if ((sub_1D5612A28() & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = *(v0 + *(v2 + 112));
  if (v4 != 26)
  {
    v6 = OUTLINED_FUNCTION_54_9(v4);
    if (v6 != v0 || v7 != v1)
    {
      OUTLINED_FUNCTION_63_8(v6);
      OUTLINED_FUNCTION_70_2();
      v5 = v0 ^ 1;
      return v5 & 1;
    }

LABEL_10:
    v5 = 0;
    return v5 & 1;
  }

  v5 = 1;
  return v5 & 1;
}