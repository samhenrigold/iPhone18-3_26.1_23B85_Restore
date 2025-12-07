unint64_t sub_225B71294()
{
  result = qword_27D73E4F8;
  if (!qword_27D73E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E4F8);
  }

  return result;
}

unint64_t sub_225B712E8()
{
  result = qword_27D73E510;
  if (!qword_27D73E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E510);
  }

  return result;
}

uint64_t IdentityProofingUnorderedUI.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E518, &qword_225CF0DF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B71294();
  sub_225CCFCA4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E500, &qword_225CF0DE8);
    sub_225B714F4(&qword_27D73E520, sub_225B71578, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_225CCF674();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225B714F4(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73E500, &qword_225CF0DE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225B71578()
{
  result = qword_27D73E528;
  if (!qword_27D73E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E528);
  }

  return result;
}

uint64_t IdentityProofingUnorderedUIElementOption.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_title);

  return v1;
}

uint64_t IdentityProofingUnorderedUIElementOption.subTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_subTitle);

  return v1;
}

uint64_t sub_225B716D8(uint64_t a1)
{
  sub_225CCE5B4();
}

unint64_t sub_225B717DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_225B73DC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_225B7180C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0xEB0000000073746ELL;
  v6 = 0x656D737365737361;
  v7 = 0xED00007974696C69;
  v8 = 0x6269737365636361;
  if (v2 != 4)
  {
    v8 = 0x6E6F6974706163;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656C746954627573;
  if (v2 != 1)
  {
    v10 = 0x7374656C6C7562;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_225B718D8()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x656D737365737361;
  v4 = 0x6269737365636361;
  if (v1 != 4)
  {
    v4 = 0x6E6F6974706163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746954627573;
  if (v1 != 1)
  {
    v5 = 0x7374656C6C7562;
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

unint64_t sub_225B719A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225B73DC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225B719C8(uint64_t a1)
{
  v2 = sub_225B74220();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B71A04(uint64_t a1)
{
  v2 = sub_225B74220();

  return MEMORY[0x2821FE720](a1, v2);
}

id IdentityProofingUnorderedUIElementOption.__allocating_init(title:subtitle:bullets:assessments:accessibility:caption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_title];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_subTitle];
  *v19 = a3;
  *(v19 + 1) = a4;
  *&v17[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_bullets] = a5;
  *&v17[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_assessments] = a6;
  *&v17[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_accessibility] = a7;
  *&v17[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_caption] = a8;
  v21.receiver = v17;
  v21.super_class = v8;
  return objc_msgSendSuper2(&v21, sel_init);
}

id IdentityProofingUnorderedUIElementOption.init(title:subtitle:bullets:assessments:accessibility:caption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v18 = &v8[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_title];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v8[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_subTitle];
  *v19 = a3;
  *(v19 + 1) = a4;
  *&v8[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_bullets] = a5;
  *&v8[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_assessments] = a6;
  *&v8[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_accessibility] = a7;
  *&v8[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_caption] = a8;
  v21.receiver = v8;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

Swift::Void __swiftcall IdentityProofingUnorderedUIElementOption.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_title + 8))
  {
    v3 = sub_225CCE444();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_subTitle + 8))
  {
    v5 = sub_225CCE444();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_bullets))
  {
    v7 = sub_225CCE7F4();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_assessments))
  {
    v9 = sub_225CCE2B4();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_accessibility))
  {
    v11 = sub_225CCE2B4();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_caption))
  {
    v13 = sub_225CCE2B4();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();
}

id IdentityProofingUnorderedUIElementOption.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B73E0C();

  return v4;
}

id IdentityProofingUnorderedUIElementOption.init(coder:)(void *a1)
{
  v2 = sub_225B73E0C();

  return v2;
}

id IdentityProofingUnorderedUIElementOption.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityProofingUnorderedUIElementOption.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IdentityProofingUnorderedUIElementOption.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E560, &qword_225CF0DF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B74220();
  sub_225CCFCE4();
  LOBYTE(v11) = 0;
  sub_225CCF734();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_225CCF734();
    v11 = *(v3 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_bullets);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    sub_225A325B0(&qword_281059B28, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_225CCF774();
    v11 = *(v3 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_assessments);
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570, &qword_225CE53B8);
    sub_225AE120C(&qword_27D73D280, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_225CCF774();
    v11 = *(v3 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_accessibility);
    HIBYTE(v10) = 4;
    sub_225CCF774();
    v11 = *(v3 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_caption);
    HIBYTE(v10) = 5;
    sub_225CCF774();
  }

  return (*(v6 + 8))(v8, v5);
}

char *IdentityProofingUnorderedUIElementOption.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E580, &qword_225CF0E00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B74220();
  sub_225CCFCA4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v20) = 0;
    v9 = sub_225CCF624();
    v11 = (v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_title);
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v20) = 1;
    v13 = sub_225CCF624();
    v14 = (v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_subTitle);
    *v14 = v13;
    v14[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    v19 = 2;
    sub_225A325B0(&qword_281059B18, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_225CCF674();
    *(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_bullets) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570, &qword_225CE53B8);
    v19 = 3;
    v16[1] = sub_225AE120C(&qword_281059B60, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_225CCF674();
    *(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_assessments) = v20;
    v19 = 4;
    sub_225CCF674();
    *(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_accessibility) = v20;
    v19 = 5;
    sub_225CCF674();
    *(v1 + OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_caption) = v20;
    v18.receiver = v1;
    v18.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v18, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

char *sub_225B72978@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = IdentityProofingUnorderedUIElementOption.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t IdentityProofingUnorderedUIElement.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdentityProofingUnorderedUIElement.learnMoreURL.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t IdentityProofingUnorderedUIElement.privacyLinkIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t IdentityProofingUnorderedUIElement.privacyLinkTitle.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

__n128 IdentityProofingUnorderedUIElement.init(title:messages:actions:imageAssets:options:learnMoreURL:privacyLinkIdentifier:privacyLinkTitle:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, __n128 a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a7;
  a9[3].n128_u64[0] = a8;
  a9[3].n128_u64[1] = a6;
  a9[4] = a10;
  a9[5] = a11;
  return result;
}

unint64_t sub_225B72AF0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000015;
    if (v1 != 6)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0x726F4D6E7261656CLL;
    if (v1 != 4)
    {
      v6 = 0x736E6F6974706FLL;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656C746974;
    v3 = 0x736E6F69746361;
    if (v1 != 2)
    {
      v3 = 0x7373416567616D69;
    }

    if (*v0)
    {
      v2 = 0x736567617373656DLL;
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
}

uint64_t sub_225B72C04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225B74AB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225B72C38(uint64_t a1)
{
  v2 = sub_225B74274();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B72C74(uint64_t a1)
{
  v2 = sub_225B74274();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityProofingUnorderedUIElement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E588, &unk_225CF0E08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - v5;
  v7 = v1[2];
  v22 = v1[3];
  v23 = v7;
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[7];
  v20 = v1[6];
  v21 = v8;
  v18 = v10;
  v19 = v9;
  v11 = v1[9];
  v17[2] = v1[8];
  v17[3] = v11;
  v12 = v1[11];
  v17[0] = v1[10];
  v17[1] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B74274();
  sub_225CCFCE4();
  LOBYTE(v26) = 0;
  v13 = v24;
  sub_225CCF734();
  if (!v13)
  {
    v14 = v21;
    v15 = v22;
    v26 = v23;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    sub_225A325B0(&qword_281059B28, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_225CCF774();
    v26 = v15;
    v25 = 2;
    sub_225CCF774();
    v26 = v14;
    v25 = 3;
    sub_225CCF774();
    LOBYTE(v26) = 4;
    sub_225CCF734();
    v26 = v18;
    v25 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E4E0, &qword_225CF0DD0);
    sub_225B742EC(&qword_27D73E590, &qword_27D73E598, &protocol conformance descriptor for IdentityProofingUnorderedUIElementOption, MEMORY[0x277D83948]);
    sub_225CCF774();
    LOBYTE(v26) = 6;
    sub_225CCF734();
    LOBYTE(v26) = 7;
    sub_225CCF734();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IdentityProofingUnorderedUIElement.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E5A0, &qword_225CF0E18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B74274();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v45[0]) = 0;
  *&v38 = sub_225CCF624();
  v37 = a2;
  *(&v38 + 1) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  LOBYTE(v39) = 1;
  sub_225A325B0(&qword_281059B18, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_225CCF674();
  v36 = v45[0];
  LOBYTE(v39) = 2;
  sub_225CCF674();
  v35 = v45[0];
  LOBYTE(v39) = 3;
  sub_225CCF674();
  v10 = v45[0];
  LOBYTE(v45[0]) = 4;
  v11 = sub_225CCF624();
  v13 = v12;
  v33 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E4E0, &qword_225CF0DD0);
  LOBYTE(v39) = 5;
  sub_225B742EC(&qword_281059B38, &qword_281059BB0, &protocol conformance descriptor for IdentityProofingUnorderedUIElementOption, MEMORY[0x277D83978]);
  sub_225CCF674();
  v32 = v45[0];
  LOBYTE(v45[0]) = 6;
  v14 = sub_225CCF624();
  v34 = v15;
  v31 = 0;
  v30 = v14;
  v46 = 7;
  v16 = sub_225CCF624();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  v39 = v38;
  v19 = v13;
  v29 = v13;
  v20 = *(&v38 + 1);
  v21 = v36;
  *&v40 = v36;
  v22 = v35;
  *(&v40 + 1) = v35;
  *&v41 = v10;
  *(&v41 + 1) = v33;
  *&v42 = v19;
  v23 = v30;
  *(&v42 + 1) = v32;
  *&v43 = v30;
  *(&v43 + 1) = v34;
  *&v44 = v16;
  *(&v44 + 1) = v18;
  v24 = v42;
  v25 = v37;
  v37[2] = v41;
  v25[3] = v24;
  v26 = v44;
  v25[4] = v43;
  v25[5] = v26;
  v27 = v40;
  *v25 = v39;
  v25[1] = v27;
  sub_225B743B4(&v39, v45);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v45[0] = v38;
  v45[1] = v20;
  v45[2] = v21;
  v45[3] = v22;
  v45[4] = v10;
  v45[5] = v33;
  v45[6] = v29;
  v45[7] = v32;
  v45[8] = v23;
  v45[9] = v34;
  v45[10] = v16;
  v45[11] = v18;
  return sub_225B743EC(v45);
}

CoreIDVShared::IdentityProofingAttributeConfiguration __swiftcall IdentityProofingAttributeConfiguration.init(attributeMessages:messageReplacements:unorderedUI:)(Swift::OpaquePointer attributeMessages, Swift::OpaquePointer messageReplacements, Swift::OpaquePointer unorderedUI)
{
  v3->_rawValue = attributeMessages._rawValue;
  v3[1]._rawValue = messageReplacements._rawValue;
  v3[2]._rawValue = unorderedUI._rawValue;
  result.unorderedUI = unorderedUI;
  result.messageReplacements = messageReplacements;
  result.attributeMessages = attributeMessages;
  return result;
}

unint64_t sub_225B73700()
{
  v1 = 0x65726564726F6E75;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_225B73768@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225B74D5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225B73790(uint64_t a1)
{
  v2 = sub_225B7441C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B737CC(uint64_t a1)
{
  v2 = sub_225B7441C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityProofingAttributeConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E5A8, &qword_225CF0E20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B7441C();

  sub_225CCFCE4();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570, &qword_225CE53B8);
  sub_225AE120C(&qword_27D73D280, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_225CCF7E4();

  if (!v2)
  {
    v10 = v13;
    v16 = v14;
    v15 = 1;
    sub_225CCF7E4();
    v16 = v10;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E500, &qword_225CF0DE8);
    sub_225B714F4(&qword_27D73E508, sub_225B712E8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_225CCF7E4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t IdentityProofingAttributeConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E5B8, &qword_225CF0E28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B7441C();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570, &qword_225CE53B8);
  v13 = 0;
  sub_225AE120C(&qword_281059B60, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_225CCF6E4();
  v12 = v14;
  v13 = 1;
  sub_225CCF6E4();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E500, &qword_225CF0DE8);
  v13 = 2;
  sub_225B714F4(&qword_27D73E520, sub_225B71578, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_225CCF6E4();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v12;
  a2[1] = v9;
  a2[2] = v10;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_225B73DC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCF5D4();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

id sub_225B73E0C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
  v3 = sub_225CCEF14();
  if (v3)
  {
    v4 = v3;
    v5 = sub_225CCE474();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = &v0[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_title];
  *v8 = v5;
  v8[1] = v7;
  v9 = sub_225CCEF14();
  if (v9)
  {
    v10 = v9;
    v11 = sub_225CCE474();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = &v0[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_subTitle];
  *v14 = v11;
  v14[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80, &unk_225CEF7D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_225CD4890;
  *(v15 + 32) = sub_2259D8718(0, &qword_281059AA0, 0x277CBEA60);
  *(v15 + 40) = v2;
  sub_225CCEF24();

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    v16 = swift_dynamicCast();
    v17 = v29;
    if (!v16)
    {
      v17 = 0;
    }
  }

  else
  {
    sub_225B5445C(v31);
    v17 = 0;
  }

  *&v0[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_bullets] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_225CD4890;
  v19 = sub_2259D8718(0, &unk_27D73E350, 0x277CBEAC0);
  *(v18 + 32) = v19;
  *(v18 + 40) = v2;
  sub_225CCEF24();

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570, &qword_225CE53B8);
    v20 = swift_dynamicCast();
    v21 = v29;
    if (!v20)
    {
      v21 = 0;
    }
  }

  else
  {
    sub_225B5445C(v31);
    v21 = 0;
  }

  *&v0[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_assessments] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_225CD4890;
  *(v22 + 32) = v19;
  *(v22 + 40) = v2;
  sub_225CCEF24();

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570, &qword_225CE53B8);
    v23 = swift_dynamicCast();
    v24 = v29;
    if (!v23)
    {
      v24 = 0;
    }
  }

  else
  {
    sub_225B5445C(v31);
    v24 = 0;
  }

  *&v0[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_accessibility] = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_225CD4890;
  *(v25 + 32) = v19;
  *(v25 + 40) = v2;
  sub_225CCEF24();

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570, &qword_225CE53B8);
    v26 = swift_dynamicCast();
    v27 = v29;
    if (!v26)
    {
      v27 = 0;
    }
  }

  else
  {
    sub_225B5445C(v31);
    v27 = 0;
  }

  *&v0[OBJC_IVAR____TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption_caption] = v27;
  v30.receiver = v0;
  v30.super_class = ObjectType;
  return objc_msgSendSuper2(&v30, sel_init, 2, 4);
}

unint64_t sub_225B74220()
{
  result = qword_281059BC8[0];
  if (!qword_281059BC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281059BC8);
  }

  return result;
}

unint64_t sub_225B74274()
{
  result = qword_281059E80;
  if (!qword_281059E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059E80);
  }

  return result;
}

uint64_t sub_225B742EC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73E4E0, &qword_225CF0DD0);
    sub_225B74374(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_225B74374(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IdentityProofingUnorderedUIElementOption();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225B7441C()
{
  result = qword_27D73E5B0;
  if (!qword_27D73E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5B0);
  }

  return result;
}

uint64_t sub_225B744E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_225B74544(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_225B745C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_225B74608(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_225B7469C()
{
  result = qword_27D73E5C8;
  if (!qword_27D73E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5C8);
  }

  return result;
}

unint64_t sub_225B746F4()
{
  result = qword_27D73E5D0;
  if (!qword_27D73E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5D0);
  }

  return result;
}

unint64_t sub_225B7474C()
{
  result = qword_27D73E5D8;
  if (!qword_27D73E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5D8);
  }

  return result;
}

unint64_t sub_225B747A4()
{
  result = qword_27D73E5E0;
  if (!qword_27D73E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5E0);
  }

  return result;
}

unint64_t sub_225B747FC()
{
  result = qword_27D73E5E8;
  if (!qword_27D73E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5E8);
  }

  return result;
}

unint64_t sub_225B74854()
{
  result = qword_27D73E5F0;
  if (!qword_27D73E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5F0);
  }

  return result;
}

unint64_t sub_225B748AC()
{
  result = qword_281059E68;
  if (!qword_281059E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059E68);
  }

  return result;
}

unint64_t sub_225B74904()
{
  result = qword_281059E70;
  if (!qword_281059E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059E70);
  }

  return result;
}

unint64_t sub_225B7495C()
{
  result = qword_281059BB8;
  if (!qword_281059BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059BB8);
  }

  return result;
}

unint64_t sub_225B749B4()
{
  result = qword_281059BC0;
  if (!qword_281059BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059BC0);
  }

  return result;
}

unint64_t sub_225B74A0C()
{
  result = qword_27D73E5F8;
  if (!qword_27D73E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E5F8);
  }

  return result;
}

unint64_t sub_225B74A64()
{
  result = qword_27D73E600;
  if (!qword_27D73E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E600);
  }

  return result;
}

uint64_t sub_225B74AB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7373416567616D69 && a2 == 0xEB00000000737465 || (sub_225CCF934() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEC0000004C525565 || (sub_225CCF934() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000225D207E0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000225D209D0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_225CCF934();

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

uint64_t sub_225B74D5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000225D1EC10 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000225D1EC30 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726564726F6E75 && a2 == 0xEB00000000495564)
  {

    return 2;
  }

  else
  {
    v5 = sub_225CCF934();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id RegionMinimumAge.__allocating_init(countryCode:age:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_countryCode];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_age] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id RegionMinimumAge.init(countryCode:age:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_countryCode];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_age] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

Swift::Void __swiftcall RegionMinimumAge.encode(with:)(NSCoder with)
{
  v3 = sub_225CCE444();
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_age);
  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];
}

id RegionMinimumAge.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225B752D0(a1);

  return v4;
}

id RegionMinimumAge.init(coder:)(void *a1)
{
  v2 = sub_225B752D0(a1);

  return v2;
}

id RegionMinimumAge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RegionMinimumAge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_225B752D0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_225B75438();
  v5 = sub_225CCEF14();
  if (v5)
  {
    v6 = v5;
    sub_225CCE464();
  }

  v7 = &v2[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_countryCode];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  v8 = sub_225CCE444();
  v9 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_age] = v9;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_225B75438()
{
  result = qword_281059A60;
  if (!qword_281059A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281059A60);
  }

  return result;
}

unint64_t DigitalPresentmentRemoteAlertDefs.BSActionID.description.getter()
{
  sub_225CCF204();

  v0 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v0);

  return 0xD000000000000010;
}

CoreIDVShared::DigitalPresentmentRemoteAlertDefs::BSSettingIndex_optional __swiftcall DigitalPresentmentRemoteAlertDefs.BSSettingIndex.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DigitalPresentmentRemoteAlertDefs.DigitalPresentmentSheetEvent.description.getter()
{
  v1 = v0[1];
  if (v1 >> 60 == 15)
  {
    return 0x656C6C65636E6163;
  }

  v3 = *v0;
  sub_225CCF204();

  v4 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v4 != 2 || !__OFSUB__(*(v3 + 24), *(v3 + 16)))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_11;
  }

  if (!__OFSUB__(HIDWORD(v3), v3))
  {
LABEL_11:
    v5 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v5);

    MEMORY[0x22AA6CE70](41, 0xE100000000000000);
    return 0xD00000000000001BLL;
  }

  __break(1u);
  return result;
}

uint64_t DigitalPresentmentRemoteAlertDefs.DigitalPresentmentSheetEvent.encode()()
{
  v0 = sub_225CCD954();
  MEMORY[0x28223BE20](v0);
  sub_225CCC9E4();
  swift_allocObject();
  sub_225CCC9D4();
  sub_225B7599C();
  v1 = sub_225CCC9C4();

  return v1;
}

unint64_t sub_225B7599C()
{
  result = qword_27D73E620;
  if (!qword_27D73E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E620);
  }

  return result;
}

uint64_t static DigitalPresentmentRemoteAlertDefs.DigitalPresentmentSheetEvent.decode(data:)@<X0>(_OWORD *a3@<X8>)
{
  v4 = sub_225CCD954();
  MEMORY[0x28223BE20](v4);
  sub_225CCC994();
  swift_allocObject();
  sub_225CCC984();
  sub_225B76904();
  sub_225CCC974();

  *a3 = v6;
  return result;
}

uint64_t sub_225B75CF4(uint64_t a1)
{
  v2 = sub_225B76A00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B75D30(uint64_t a1)
{
  v2 = sub_225B76A00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B75D6C(uint64_t a1)
{
  v2 = sub_225B769AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B75DA8(uint64_t a1)
{
  v2 = sub_225B769AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B75DE4()
{
  if (*v0)
  {
    return 0x656C6C65636E6163;
  }

  else
  {
    return 0x69746E6568747561;
  }
}

uint64_t sub_225B75E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69746E6568747561 && a2 == 0xED00006465746163;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225B75F1C(uint64_t a1)
{
  v2 = sub_225B76958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B75F58(uint64_t a1)
{
  v2 = sub_225B76958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DigitalPresentmentRemoteAlertDefs.DigitalPresentmentSheetEvent.encode(to:)(void *a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E630, &qword_225CF15D0);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v15 = &v14 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E638, &qword_225CF15D8);
  v16 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E640, &qword_225CF15E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  v10 = v1[1];
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B76958();
  sub_225CCFCE4();
  if (v10 >> 60 == 15)
  {
    LOBYTE(v20) = 1;
    sub_225B769AC();
    v11 = v15;
    sub_225CCF724();
    (*(v17 + 8))(v11, v19);
  }

  else
  {
    LOBYTE(v20) = 0;
    sub_225B76A00();
    sub_225CCF724();
    v20 = v14;
    v21 = v10;
    sub_2259D9454();
    v13 = v18;
    sub_225CCF7E4();
    (*(v16 + 8))(v5, v13);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t DigitalPresentmentRemoteAlertDefs.DigitalPresentmentSheetEvent.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v27 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E660, &qword_225CF15E8);
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E668, &qword_225CF15F0);
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E670, &qword_225CF15F8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_225B76958();
  v13 = v28;
  sub_225CCFCA4();
  if (!v13)
  {
    v28 = v5;
    v14 = v27;
    v15 = sub_225CCF6F4();
    if (*(v15 + 16) == 1)
    {
      if (*(v15 + 32))
      {
        LOBYTE(v29) = 1;
        sub_225B769AC();
        sub_225CCF604();
        (*(v26 + 8))(v4, v24);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        *v14 = xmmword_225CD3100;
      }

      else
      {
        LOBYTE(v29) = 0;
        sub_225B76A00();
        v20 = v7;
        v21 = v11;
        sub_225CCF604();
        sub_2259D94A8();
        v22 = v28;
        sub_225CCF6E4();
        (*(v25 + 8))(v20, v22);
        (*(v9 + 8))(v21, v8);
        swift_unknownObjectRelease();
        *v14 = v29;
      }
    }

    else
    {
      v16 = sub_225CCF2D4();
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D741FA0, &qword_225CF1600);
      *v18 = &type metadata for DigitalPresentmentRemoteAlertDefs.DigitalPresentmentSheetEvent;
      sub_225CCF614();
      sub_225CCF294();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
      swift_willThrow();
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v30);
}

uint64_t sub_225B76738()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 60;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_225B7676C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 36;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_225B767A0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 13;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_225B767D4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_225B76808()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_225B7683C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_225B76870()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_225B768A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

unint64_t sub_225B76904()
{
  result = qword_27D73E628;
  if (!qword_27D73E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E628);
  }

  return result;
}

unint64_t sub_225B76958()
{
  result = qword_27D73E648;
  if (!qword_27D73E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E648);
  }

  return result;
}

unint64_t sub_225B769AC()
{
  result = qword_27D73E650;
  if (!qword_27D73E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E650);
  }

  return result;
}

unint64_t sub_225B76A00()
{
  result = qword_27D73E658;
  if (!qword_27D73E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E658);
  }

  return result;
}

unint64_t sub_225B76A58()
{
  result = qword_27D73E678;
  if (!qword_27D73E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E678);
  }

  return result;
}

unint64_t sub_225B76AB0()
{
  result = qword_27D73E680;
  if (!qword_27D73E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E680);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared33DigitalPresentmentRemoteAlertDefsV0cD10SheetEventO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225B76B6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225B76BC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_225B76C10(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

unint64_t sub_225B76C84()
{
  result = qword_27D73E688;
  if (!qword_27D73E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E688);
  }

  return result;
}

unint64_t sub_225B76CDC()
{
  result = qword_27D73E690;
  if (!qword_27D73E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E690);
  }

  return result;
}

unint64_t sub_225B76D34()
{
  result = qword_27D73E698;
  if (!qword_27D73E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E698);
  }

  return result;
}

unint64_t sub_225B76D8C()
{
  result = qword_27D73E6A0;
  if (!qword_27D73E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6A0);
  }

  return result;
}

unint64_t sub_225B76DE4()
{
  result = qword_27D73E6A8;
  if (!qword_27D73E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6A8);
  }

  return result;
}

unint64_t sub_225B76E3C()
{
  result = qword_27D73E6B0;
  if (!qword_27D73E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6B0);
  }

  return result;
}

unint64_t sub_225B76E94()
{
  result = qword_27D73E6B8;
  if (!qword_27D73E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6B8);
  }

  return result;
}

unint64_t sub_225B76EEC()
{
  result = qword_27D73E6C0;
  if (!qword_27D73E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6C0);
  }

  return result;
}

void sub_225B76F6C(unint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = sub_225CCD954();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v167 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v167 - v20;
  if (a1 >> 62)
  {
    if (sub_225CCF144())
    {
      v22 = sub_225CCF144();
      goto LABEL_3;
    }

LABEL_62:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v160 = off_28105B918;
    v161 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v162 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v162));
    (*(v13 + 16))(v16, &v160[v161], v12);
    os_unfair_lock_unlock(&v160[v162]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v163 = sub_225CCD934();
      v164 = sub_225CCED04();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v174 = v166;
        *v165 = 136315138;
        *(v165 + 4) = sub_2259BE198(0xD000000000000035, 0x8000000225D20BD0, &v174);
        _os_log_impl(&dword_2259A7000, v163, v164, "%s", v165, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v166);
        MEMORY[0x22AA6F950](v166, -1, -1);
        MEMORY[0x22AA6F950](v165, -1, -1);
      }
    }

    (*(v13 + 8))(v16, v12);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    return;
  }

  v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_62;
  }

LABEL_3:
  *&v170 = v13;
  v172 = a2;
  *&v171 = v12;
  *&v169 = v18;
  if (v22 == 4)
  {
    v168 = v21;
    v23 = MEMORY[0x277D84F90];
    v176[0] = MEMORY[0x277D84F90];
    sub_2259D5550(0, 4, 0);
    v24 = v176[0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      v25 = (MEMORY[0x22AA6DA80](0, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v26 = *v25;
      swift_unknownObjectRelease();
      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2259D5550((v27 > 1), v28 + 1, 1);
        v24 = v176[0];
      }

      *(v24 + 16) = v28 + 1;
      *(v24 + 4 * v28 + 32) = v26;
      v29 = (MEMORY[0x22AA6DA80](1, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v30 = *v29;
      swift_unknownObjectRelease();
      v176[0] = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_2259D5550((v31 > 1), v32 + 1, 1);
        v24 = v176[0];
      }

      *(v24 + 16) = v32 + 1;
      *(v24 + 4 * v32 + 32) = v30;
      v33 = (MEMORY[0x22AA6DA80](2, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v34 = *v33;
      swift_unknownObjectRelease();
      v176[0] = v24;
      v36 = *(v24 + 16);
      v35 = *(v24 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2259D5550((v35 > 1), v36 + 1, 1);
        v24 = v176[0];
      }

      *(v24 + 16) = v36 + 1;
      *(v24 + 4 * v36 + 32) = v34;
      v37 = (MEMORY[0x22AA6DA80](3, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v38 = *v37;
      swift_unknownObjectRelease();
      v176[0] = v24;
      v40 = *(v24 + 16);
      v39 = *(v24 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_2259D5550((v39 > 1), v40 + 1, 1);
        v24 = v176[0];
      }

      *(v24 + 16) = v40 + 1;
      *(v24 + 4 * v40 + 32) = v38;
      v176[0] = v23;
      sub_2259D5550(0, 4, 0);
      v41 = v176[0];
      v42 = (MEMORY[0x22AA6DA80](0, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v43 = *v42;
      swift_unknownObjectRelease();
      v45 = *(v41 + 16);
      v44 = *(v41 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_2259D5550((v44 > 1), v45 + 1, 1);
        v41 = v176[0];
      }

      *(v41 + 16) = v45 + 1;
      *(v41 + 4 * v45 + 32) = v43;
      v46 = (MEMORY[0x22AA6DA80](1, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v47 = *v46;
      swift_unknownObjectRelease();
      v176[0] = v41;
      v49 = *(v41 + 16);
      v48 = *(v41 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_2259D5550((v48 > 1), v49 + 1, 1);
        v41 = v176[0];
      }

      *(v41 + 16) = v49 + 1;
      *(v41 + 4 * v49 + 32) = v47;
      v50 = (MEMORY[0x22AA6DA80](2, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v51 = *v50;
      swift_unknownObjectRelease();
      v176[0] = v41;
      v53 = *(v41 + 16);
      v52 = *(v41 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_2259D5550((v52 > 1), v53 + 1, 1);
        v41 = v176[0];
      }

      *(v41 + 16) = v53 + 1;
      *(v41 + 4 * v53 + 32) = v51;
      v54 = (MEMORY[0x22AA6DA80](3, a1) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v55 = *v54;
      swift_unknownObjectRelease();
    }

    else
    {
      v83 = (*(a1 + 32) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v84 = *v83;
      v86 = *(v24 + 16);
      v85 = *(v24 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_2259D5550((v85 > 1), v86 + 1, 1);
        v24 = v176[0];
      }

      *(v24 + 16) = v86 + 1;
      *(v24 + 4 * v86 + 32) = v84;
      v87 = (*(a1 + 40) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v88 = *v87;
      v176[0] = v24;
      v90 = *(v24 + 16);
      v89 = *(v24 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_2259D5550((v89 > 1), v90 + 1, 1);
        v24 = v176[0];
      }

      *(v24 + 16) = v90 + 1;
      *(v24 + 4 * v90 + 32) = v88;
      v91 = (*(a1 + 48) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v92 = *v91;
      v176[0] = v24;
      v94 = *(v24 + 16);
      v93 = *(v24 + 24);
      if (v94 >= v93 >> 1)
      {
        sub_2259D5550((v93 > 1), v94 + 1, 1);
        v24 = v176[0];
      }

      *(v24 + 16) = v94 + 1;
      *(v24 + 4 * v94 + 32) = v92;
      v95 = (*(a1 + 56) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
      swift_beginAccess();
      v96 = *v95;
      v176[0] = v24;
      v98 = *(v24 + 16);
      v97 = *(v24 + 24);
      if (v98 >= v97 >> 1)
      {
        sub_2259D5550((v97 > 1), v98 + 1, 1);
        v24 = v176[0];
      }

      *(v24 + 16) = v98 + 1;
      *(v24 + 4 * v98 + 32) = v96;
      v176[0] = v23;
      sub_2259D5550(0, 4, 0);
      v41 = v176[0];
      v99 = (*(a1 + 32) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v100 = *v99;
      v102 = *(v41 + 16);
      v101 = *(v41 + 24);
      if (v102 >= v101 >> 1)
      {
        sub_2259D5550((v101 > 1), v102 + 1, 1);
        v41 = v176[0];
      }

      *(v41 + 16) = v102 + 1;
      *(v41 + 4 * v102 + 32) = v100;
      v103 = (*(a1 + 40) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v104 = *v103;
      v176[0] = v41;
      v106 = *(v41 + 16);
      v105 = *(v41 + 24);
      if (v106 >= v105 >> 1)
      {
        sub_2259D5550((v105 > 1), v106 + 1, 1);
        v41 = v176[0];
      }

      *(v41 + 16) = v106 + 1;
      *(v41 + 4 * v106 + 32) = v104;
      v107 = (*(a1 + 48) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v108 = *v107;
      v176[0] = v41;
      v110 = *(v41 + 16);
      v109 = *(v41 + 24);
      if (v110 >= v109 >> 1)
      {
        sub_2259D5550((v109 > 1), v110 + 1, 1);
        v41 = v176[0];
      }

      *(v41 + 16) = v110 + 1;
      *(v41 + 4 * v110 + 32) = v108;
      v111 = (*(a1 + 56) + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
      swift_beginAccess();
      v55 = *v111;
    }

    v176[0] = v41;
    v113 = *(v41 + 16);
    v112 = *(v41 + 24);
    if (v113 >= v112 >> 1)
    {
      sub_2259D5550((v112 > 1), v113 + 1, 1);
      v41 = v176[0];
    }

    *(v41 + 16) = v113 + 1;
    *(v41 + 4 * v113 + 32) = v55;
    v114 = sub_225B781C4(v24);
    if ((v114 & 0x100000000) != 0)
    {
    }

    else
    {
      v115 = v114;
      v116 = sub_225B782D0(v24);

      if ((v116 & 0x100000000) == 0)
      {
        v117 = sub_225B781C4(v41);
        if ((v117 & 0x100000000) == 0)
        {
          v118 = v117;
          v119 = sub_225B782D0(v41);

          if ((v119 & 0x100000000) == 0)
          {
            v177.origin.x = a3;
            v177.origin.y = a4;
            v177.size.width = a5;
            v177.size.height = a6;
            *&v120 = CGRectGetMinX(v177);
            v170 = v120;
            *&v120 = a3;
            v121 = a4;
            v122 = a5;
            v123 = a6;
            *&v124 = CGRectGetMaxX(*&v120);
            v171 = v124;
            *&v124 = a3;
            v125 = a4;
            v126 = a5;
            v127 = a6;
            *&v128 = CGRectGetMinY(*&v124);
            v169 = v128;
            *&v128 = a3;
            v129 = a4;
            v130 = a5;
            v131 = a6;
            MaxY = CGRectGetMaxY(*&v128);
            *&v133.f64[0] = v170;
            *&v133.f64[1] = v169;
            *&v133.f64[0] = vsub_f32(vcvt_f32_f64(v133), __PAIR64__(v118, v115));
            *&v134.f64[0] = v171;
            v134.f64[1] = MaxY;
            v135.i64[0] = LODWORD(v133.f64[0]);
            v135.i64[1] = HIDWORD(v133.f64[0]);
            *a2 = vorrq_s8(vshll_n_s32(vsub_f32(__PAIR64__(v119, v116), vcvt_f32_f64(v134)), 0x20uLL), v135);
            *(a2 + 16) = 0;
            return;
          }

          goto LABEL_52;
        }
      }
    }

LABEL_52:
    v136 = MEMORY[0x277D84F90];
    v137 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v138 = swift_allocError();
    v140 = v139;
    v141 = sub_225CCE954();
    v142 = *(v141 - 8);
    v143 = v168;
    (*(v142 + 56))(v168, 1, 1, v141);
    LODWORD(v141) = (*(v142 + 48))(v143, 1, v141);
    sub_2259DB318(v143);
    if (v141)
    {
      v144 = 361;
    }

    else
    {
      v144 = 23;
    }

    v145 = sub_225B2C374(v136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v176[0] = v145;
    sub_225B2C4A0(v137, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v176);

    v147 = v176[0];
    v148 = sub_225B29AA0(0, 1, 1, v136);
    v150 = *(v148 + 2);
    v149 = *(v148 + 3);
    if (v150 >= v149 >> 1)
    {
      v148 = sub_225B29AA0((v149 > 1), v150 + 1, 1, v148);
    }

    *(v148 + 2) = v150 + 1;
    v151 = &v148[56 * v150];
    *(v151 + 4) = 0xD000000000000036;
    *(v151 + 5) = 0x8000000225D20B90;
    *(v151 + 6) = 0xD00000000000002ELL;
    *(v151 + 7) = 0x8000000225D20B20;
    *(v151 + 8) = 0xD000000000000032;
    *(v151 + 9) = 0x8000000225D20B50;
    *(v151 + 10) = 77;
    *v140 = v144;
    *(v140 + 8) = v148;
    *(v140 + 16) = 0xD000000000000036;
    *(v140 + 24) = 0x8000000225D20B90;
    *(v140 + 32) = v147;
    *(v140 + 40) = 0;
    v152 = v172;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v153 = off_28105B918;
    v154 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v155 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v155));
    v156 = v170;
    v157 = &v153[v154];
    v158 = v169;
    v159 = v171;
    (*(v170 + 16))(v169, v157, v171);
    os_unfair_lock_unlock(&v153[v155]);
    DIPLogError(_:message:log:)(v138, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v138);
    (*(v156 + 8))(v158, v159);

    *v152 = 0;
    v152[1] = 0;
    *(v152 + 16) = 1;
    return;
  }

  v174 = 0;
  v175 = 0xE000000000000000;
  sub_225CCF204();

  v174 = 0xD00000000000002BLL;
  v175 = 0x8000000225D20AF0;
  v173 = v22;
  v56 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v56);

  v57 = v174;
  v58 = v175;
  v168 = 0x8000000225D20B20;
  v59 = MEMORY[0x277D84F90];
  v60 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v61 = swift_allocError();
  v63 = v62;
  v64 = sub_225CCE954();
  v65 = *(v64 - 8);
  (*(v65 + 56))(v21, 1, 1, v64);
  LODWORD(v64) = (*(v65 + 48))(v21, 1, v64);
  sub_2259DB318(v21);
  if (v64)
  {
    v66 = 361;
  }

  else
  {
    v66 = 23;
  }

  v67 = sub_225B2C374(v59);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v174 = v67;
  sub_225B2C4A0(v60, sub_225B2AC40, 0, v68, &v174);

  v69 = v174;
  v70 = sub_225B29AA0(0, 1, 1, v59);
  v72 = *(v70 + 2);
  v71 = *(v70 + 3);
  if (v72 >= v71 >> 1)
  {
    v70 = sub_225B29AA0((v71 > 1), v72 + 1, 1, v70);
  }

  *(v70 + 2) = v72 + 1;
  v73 = &v70[56 * v72];
  *(v73 + 4) = v57;
  *(v73 + 5) = v58;
  v74 = v168;
  *(v73 + 6) = 0xD00000000000002ELL;
  *(v73 + 7) = v74;
  *(v73 + 8) = 0xD000000000000032;
  *(v73 + 9) = 0x8000000225D20B50;
  *(v73 + 10) = 68;
  *v63 = v66;
  *(v63 + 8) = v70;
  *(v63 + 16) = v57;
  *(v63 + 24) = v58;
  *(v63 + 32) = v69;
  *(v63 + 40) = 0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v75 = off_28105B918;
  v76 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v77 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v77));
  v78 = v170;
  v79 = &v75[v76];
  v80 = v169;
  v81 = v171;
  (*(v170 + 16))(v169, v79, v171);
  os_unfair_lock_unlock(&v75[v77]);
  DIPLogError(_:message:log:)(v61, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v61);
  (*(v78 + 8))(v80, v81);

  v82 = v172;
  *v172 = 0;
  v82[1] = 0;
  *(v82 + 16) = 1;
}

float sub_225B78114@<S0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
  swift_beginAccess();
  result = *v3;
  *a2 = *v3;
  return result;
}

float sub_225B7816C@<S0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
  swift_beginAccess();
  result = *v3;
  *a2 = *v3;
  return result;
}

unint64_t sub_225B781C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v5 < v2)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

int64_t sub_225B7821C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v6[-1], v5);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), *v6, v8);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v8, v5), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v10, v9.i64[0]), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 < v2)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

unint64_t sub_225B782D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

int64_t sub_225B78328(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

void sub_225B78454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
  swift_beginAccess();
  v7 = *v6;
  v8 = (a1 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
  swift_beginAccess();
  v9 = *v8;
  v10 = (v7 - *v8);
  v11 = (a2 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
  swift_beginAccess();
  v12 = *v11;
  v13 = (a1 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
  swift_beginAccess();
  v14 = *v13;
  atan2(v10, (v12 - *v13));
  v15 = (a3 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
  swift_beginAccess();
  v16 = (*v15 - v9);
  v17 = (a3 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
  swift_beginAccess();
  atan2(v16, (*v17 - v14));
}

uint64_t sub_225B785F8(unint64_t a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v65 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  result = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v65 - v11;
  if (!(a1 >> 62))
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      if (v13 == 4)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }

LABEL_27:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v58 = off_28105B918;
    v59 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v60 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v60));
    (*(v3 + 16))(v6, &v58[v59], v2);
    os_unfair_lock_unlock(&v58[v60]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v61 = sub_225CCD934();
      v62 = sub_225CCED04();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v70 = v64;
        *v63 = 136315138;
        *(v63 + 4) = sub_2259BE198(0xD000000000000034, 0x8000000225D20CE0, &v70);
        _os_log_impl(&dword_2259A7000, v61, v62, "%s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x22AA6F950](v64, -1, -1);
        MEMORY[0x22AA6F950](v63, -1, -1);
      }
    }

    (*(v3 + 8))(v6, v2);
    goto LABEL_34;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_27;
  }

  result = sub_225CCF144();
  v13 = result;
  if (result != 4)
  {
LABEL_19:
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_225CCF204();

    v70 = 0xD00000000000002BLL;
    v71 = 0x8000000225D20AF0;
    v69 = v13;
    v37 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v37);

    v38 = v71;
    v67 = 0x8000000225D20B20;
    v68 = v70;
    v66 = 0x8000000225D20CB0;
    v39 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v40 = swift_allocError();
    v42 = v41;
    v43 = sub_225CCE954();
    v44 = *(v43 - 8);
    (*(v44 + 56))(v12, 1, 1, v43);
    LODWORD(v43) = (*(v44 + 48))(v12, 1, v43);
    sub_2259DB318(v12);
    if (v43)
    {
      v45 = 361;
    }

    else
    {
      v45 = 23;
    }

    v46 = MEMORY[0x277D84F90];
    v47 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v47;
    sub_225B2C4A0(v39, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v70);

    v49 = v70;
    v50 = sub_225B29AA0(0, 1, 1, v46);
    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    if (v52 >= v51 >> 1)
    {
      v50 = sub_225B29AA0((v51 > 1), v52 + 1, 1, v50);
    }

    *(v50 + 2) = v52 + 1;
    v53 = &v50[56 * v52];
    v54 = v68;
    *(v53 + 4) = v68;
    *(v53 + 5) = v38;
    *(v53 + 6) = 0xD00000000000002ELL;
    *(v53 + 7) = v67;
    *(v53 + 8) = 0xD000000000000020;
    *(v53 + 9) = v66;
    *(v53 + 10) = 101;
    *v42 = v45;
    *(v42 + 8) = v50;
    *(v42 + 16) = v54;
    *(v42 + 24) = v38;
    *(v42 + 32) = v49;
    *(v42 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v55 = off_28105B918;
    v56 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v57 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v57));
    (*(v3 + 16))(v8, &v55[v56], v2);
    os_unfair_lock_unlock(&v55[v57]);
    DIPLogError(_:message:log:)(v40, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v40);
    (*(v3 + 8))(v8, v2);

LABEL_34:
    v36 = 0;
    v31 = 1;
LABEL_35:
    LOBYTE(v70) = v31;
    return v36 | (v31 << 32);
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x22AA6DA80](0, a1);
    v19 = MEMORY[0x22AA6DA80](1, a1);
    v20 = MEMORY[0x22AA6DA80](2, a1);
    v21 = MEMORY[0x22AA6DA80](3, a1);
    goto LABEL_10;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v14 == 1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v14 < 3)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v14 != 3)
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v18 = *(a1 + 32);
    v19 = v15;
    v20 = v16;
    v21 = v17;
LABEL_10:
    v22 = v21;
    sub_225B78454(v18, v21, v19);
    v24 = v23;
    sub_225B78454(v19, v18, v20);
    v26 = v25;
    sub_225B78454(v20, v19, v22);
    v28 = v27;
    sub_225B78454(v22, v20, v18);
    v30 = v29;

    v31 = 0;
    v32 = fmaxf(fabsf(v24 + -90.0), -1.0);
    v33 = fabsf(v26 + -90.0);
    if (v32 <= v33)
    {
      v32 = v33;
    }

    v34 = fabsf(v28 + -90.0);
    if (v32 <= v34)
    {
      v32 = v34;
    }

    v35 = fabsf(v30 + -90.0);
    if (v32 > v35)
    {
      v35 = v32;
    }

    v36 = LODWORD(v35);
    goto LABEL_35;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_225B78DC8(unint64_t a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v81 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  result = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v81 - v11;
  if (!(a1 >> 62))
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      if (v13 == 4)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v74 = off_28105B918;
    v75 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v76 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v76));
    (*(v3 + 16))(v6, &v74[v75], v2);
    os_unfair_lock_unlock(&v74[v76]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v77 = sub_225CCD934();
      v78 = sub_225CCED04();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v87 = v80;
        *v79 = 136315138;
        *(v79 + 4) = sub_2259BE198(0xD000000000000038, 0x8000000225D20C70, &v87);
        _os_log_impl(&dword_2259A7000, v77, v78, "%s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x22AA6F950](v80, -1, -1);
        MEMORY[0x22AA6F950](v79, -1, -1);
      }
    }

    (*(v3 + 8))(v6, v2);
    goto LABEL_38;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_31;
  }

  result = sub_225CCF144();
  v13 = result;
  if (result != 4)
  {
LABEL_23:
    v87 = 0;
    v88 = 0xE000000000000000;
    sub_225CCF204();

    v87 = 0xD00000000000002BLL;
    v88 = 0x8000000225D20AF0;
    v86[0] = v13;
    v53 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v53);

    v54 = v88;
    v83 = 0x8000000225D20B20;
    v84 = v87;
    v82 = 0x8000000225D20C40;
    v55 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v85 = swift_allocError();
    v57 = v56;
    v58 = sub_225CCE954();
    v59 = *(v58 - 8);
    (*(v59 + 56))(v12, 1, 1, v58);
    LODWORD(v58) = (*(v59 + 48))(v12, 1, v58);
    sub_2259DB318(v12);
    if (v58)
    {
      v60 = 361;
    }

    else
    {
      v60 = 23;
    }

    v61 = MEMORY[0x277D84F90];
    v62 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v62;
    sub_225B2C4A0(v55, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v87);

    v64 = v87;
    v65 = sub_225B29AA0(0, 1, 1, v61);
    v67 = *(v65 + 2);
    v66 = *(v65 + 3);
    if (v67 >= v66 >> 1)
    {
      v65 = sub_225B29AA0((v66 > 1), v67 + 1, 1, v65);
    }

    *(v65 + 2) = v67 + 1;
    v68 = &v65[56 * v67];
    v69 = v84;
    *(v68 + 4) = v84;
    *(v68 + 5) = v54;
    *(v68 + 6) = 0xD00000000000002ELL;
    *(v68 + 7) = v83;
    *(v68 + 8) = 0xD000000000000024;
    *(v68 + 9) = v82;
    *(v68 + 10) = 137;
    *v57 = v60;
    *(v57 + 8) = v65;
    *(v57 + 16) = v69;
    *(v57 + 24) = v54;
    *(v57 + 32) = v64;
    *(v57 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v70 = off_28105B918;
    v71 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v72 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v72));
    (*(v3 + 16))(v8, &v70[v71], v2);
    os_unfair_lock_unlock(&v70[v72]);
    v73 = v85;
    DIPLogError(_:message:log:)(v85, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v73);
    (*(v3 + 8))(v8, v2);

LABEL_38:
    v52 = 0;
    v50 = 1;
LABEL_39:
    v89 = v50;
    return v52 | (v50 << 32);
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x22AA6DA80](0, a1);
    v19 = MEMORY[0x22AA6DA80](1, a1);
    v20 = MEMORY[0x22AA6DA80](2, a1);
    v21 = MEMORY[0x22AA6DA80](3, a1);
    goto LABEL_10;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v14 == 1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v14 < 3)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v14 != 3)
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v18 = *(a1 + 32);
    v19 = v15;
    v20 = v16;
    v21 = v17;
LABEL_10:
    v22 = v21;
    v23 = &v19[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
    swift_beginAccess();
    v24 = *v23;
    v25 = &v18[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
    swift_beginAccess();
    LODWORD(v84) = *v25;
    v26 = (v24 - *&v84);
    v27 = &v19[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
    swift_beginAccess();
    v28 = *v27;
    v29 = &v18[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
    swift_beginAccess();
    v30 = *v29;
    v31 = atan2(v26, (v28 - *v29)) * 180.0 / 3.14159265;
    *&v85 = v31;
    v32 = &v20[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
    swift_beginAccess();
    v33 = *v32;
    v34 = (*v32 - v24);
    v35 = &v20[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
    swift_beginAccess();
    v36 = *v35;
    v37 = atan2(v34, (*v35 - v28)) * 180.0 / 3.14159265;
    v38 = &v22[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
    swift_beginAccess();
    v39 = *v38;
    v40 = (*v38 - v33);
    v41 = &v22[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
    swift_beginAccess();
    v42 = *v41;
    v43 = atan2(v40, (*v41 - v36)) * 180.0 / 3.14159265;
    if (v43 >= 0.0)
    {
      v44 = v43;
    }

    else
    {
      v44 = v43 + 360.0;
    }

    v45 = atan2((*&v84 - v39), (v30 - v42)) * 180.0 / 3.14159265;
    v46 = v44 + -180.0;
    v47 = v45 + 90.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACE8, &unk_225CF1C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD73A0;
    v49 = *&v85;
    *(inited + 32) = v85;
    *(inited + 36) = v37 + -90.0;
    *(inited + 40) = v46;
    *(inited + 44) = v47;

    v50 = 0;
    if (fabsf(v49) >= fabsf(v37 + -90.0))
    {
      v51 = v37 + -90.0;
    }

    else
    {
      v51 = v49;
    }

    if (fabsf(v51) >= fabsf(v46))
    {
      v51 = v46;
    }

    if (fabsf(v51) >= fabsf(v47))
    {
      v51 = v47;
    }

    v52 = LODWORD(v51);
    goto LABEL_39;
  }

LABEL_44:
  __break(1u);
  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_225B798A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

CoreIDVShared::IQImageType_optional __swiftcall IQImageType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t IQImageType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x665F64695F776172;
  v3 = 0x5F65766973736170;
  if (v1 != 6)
  {
    v3 = 0x746E656D75636F64;
  }

  v4 = 0x6569666C6573;
  if (v1 != 4)
  {
    v4 = 0x7373656E6576696CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (v1 == 2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0x625F64695F776172;
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

void sub_225B79ABC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E6F72;
  v4 = 0x665F64695F776172;
  v5 = 0xED00006F65646976;
  v6 = 0x5F65766973736170;
  if (v2 != 6)
  {
    v6 = 0x746E656D75636F64;
    v5 = 0xEC0000007A726D5FLL;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6569666C6573;
  if (v2 != 4)
  {
    v8 = 0x7373656E6576696CLL;
    v7 = 0xEE006F656469765FLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x8000000225D0C610;
  if (v2 == 2)
  {
    v10 = 0xD000000000000012;
  }

  else
  {
    v10 = 0xD000000000000011;
  }

  if (v2 != 2)
  {
    v9 = 0x8000000225D0C630;
  }

  if (*v1)
  {
    v4 = 0x625F64695F776172;
    v3 = 0xEB000000006B6361;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t PDF417Data.parsedData.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x360uLL);
  memcpy(a1, v1, 0x360uLL);
  return sub_225A0DE54(__dst, v4, &qword_27D73DD98, &qword_225CEFB70);
}

uint64_t PDF417Data.rawData.getter()
{
  v1 = *(v0 + 864);

  return v1;
}

uint64_t sub_225B79C88()
{
  if (*v0)
  {
    return 0x61746144776172;
  }

  else
  {
    return 0x6144646573726170;
  }
}

uint64_t sub_225B79CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6144646573726170 && a2 == 0xEA00000000006174;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61746144776172 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225B79DAC(uint64_t a1)
{
  v2 = sub_225B7A030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B79DE8(uint64_t a1)
{
  v2 = sub_225B7A030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PDF417Data.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E6C8, &qword_225CF1D38);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  memcpy(v13, v1, 0x360uLL);
  v8 = v1[108];
  v10[1] = v1[109];
  v10[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A0DE54(v13, v12, &qword_27D73DD98, &qword_225CEFB70);
  sub_225B7A030();
  sub_225CCFCE4();
  memcpy(v12, v13, sizeof(v12));
  v13[887] = 0;
  sub_225B7A084();
  sub_225CCF774();
  memcpy(v11, v12, sizeof(v11));
  sub_2259CB640(v11, &qword_27D73DD98, &qword_225CEFB70);
  if (!v2)
  {
    v13[886] = 1;
    sub_225CCF784();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_225B7A030()
{
  result = qword_27D73E6D0;
  if (!qword_27D73E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6D0);
  }

  return result;
}

unint64_t sub_225B7A084()
{
  result = qword_27D73E6D8;
  if (!qword_27D73E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6D8);
  }

  return result;
}

uint64_t PDF417Data.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E6E0, &unk_225CF1D40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225B7A030();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  v9 = v14;
  v20[887] = 0;
  sub_225B7A354();
  sub_225CCF674();
  memcpy(v20, v19, 0x360uLL);
  v20[886] = 1;
  v10 = sub_225CCF684();
  v12 = v11;
  (*(v8 + 8))(v7, v4);
  memcpy(v15, v20, 0x360uLL);
  v15[108] = v10;
  v15[109] = v12;
  memcpy(v9, v15, 0x370uLL);
  sub_225B7A3A8(v15, v16);
  __swift_destroy_boxed_opaque_existential_0(a1);
  memcpy(v16, v20, sizeof(v16));
  v17 = v10;
  v18 = v12;
  return sub_225B7A3E0(v16);
}

unint64_t sub_225B7A354()
{
  result = qword_27D73E6E8;
  if (!qword_27D73E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E6E8);
  }

  return result;
}

uint64_t DocScanData.vertices.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DocScanData.targetVertices.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t DocScanData.captureTime.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t DocScanData.capturePath.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DocScanData.capturePath.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DocScanData.rescanCount.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t DocScanData.init(vertices:targetVertices:captureTime:capturePath:rescanCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 20) = BYTE4(a3) & 1;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7 & 1;
  return result;
}

__n128 SelfieScanData.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 SelfieScanData.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

uint64_t SelfieScanData.faceBounds.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t SelfieScanData.captureTime.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t SelfieScanData.rescanCount.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t SelfieScanData.chute.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t SelfieScanData.chute.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

__n128 SelfieScanData.init(regionOfInterest:faceBounds:captureTime:rescanCount:chute:isFlashEnabled:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  result = *a1;
  v10 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v10;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 52) = BYTE4(a3) & 1;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5 & 1;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  return result;
}

uint64_t IQParameters.minFaceConfidence.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t IQParameters.maxFaceConfidence.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t IQParameters.keywordData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t IQParameters.keywordCriteria.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t IQParameters.glareEpsilon.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t IQParameters.glareMinPoints.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t IQParameters.glareMinIntensity.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t IQParameters.glareClusterSize.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t IQParameters.glareDownscaleFactor.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

__n128 IQParameters.ocrRegionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  result = *(v1 + 112);
  v4 = *(v1 + 128);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 IQParameters.ocrRegionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v3;
  *(v1 + 144) = *(a1 + 32);
  return result;
}

__n128 IQParameters.init(minFaceConfidence:maxFaceConfidence:keywordData:keywordCriteria:accurateOCRMode:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrRegionOfInterest:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16)
{
  *a9 = a1;
  *(a9 + 4) = BYTE4(a1) & 1;
  *(a9 + 8) = a2;
  *(a9 + 12) = BYTE4(a2) & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 36) = a6;
  *(a9 + 40) = BYTE4(a6) & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15 & 1;
  result = *a16;
  v17 = *(a16 + 16);
  *(a9 + 144) = *(a16 + 32);
  *(a9 + 112) = result;
  *(a9 + 128) = v17;
  return result;
}

void __swiftcall IQTextObservation.Bounds.init(topLeft:topRight:bottomLeft:bottomRight:)(CoreIDVShared::IQTextObservation::Bounds *__return_ptr retstr, CGPoint topLeft, CGPoint topRight, CGPoint bottomLeft, CGPoint bottomRight)
{
  retstr->topLeft.x = topLeft.x;
  retstr->topLeft.y = topLeft.y;
  retstr->topRight.x = topRight.x;
  retstr->topRight.y = topRight.y;
  retstr->bottomLeft.x = bottomLeft.x;
  retstr->bottomLeft.y = bottomLeft.y;
  retstr->bottomRight.x = bottomRight.x;
  retstr->bottomRight.y = bottomRight.y;
}

uint64_t IQTextObservation.text.getter()
{
  v1 = *v0;

  return v1;
}

__n128 IQTextObservation.bounds.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

BOOL static IQTextObservation.== infix(_:_:)(float64x2_t *a1, uint64_t a2)
{
  v3 = a1[3].f64[0];
  v2 = a1[3].f64[1];
  v5 = a1[4].f64[0];
  v4 = a1[4].f64[1];
  v6 = a1[1];
  v7 = a1[2];
  v9 = *(a2 + 16);
  v8 = *(a2 + 32);
  v11 = *(a2 + 48);
  v10 = *(a2 + 56);
  v13 = *(a2 + 64);
  v12 = *(a2 + 72);
  if (*&a1->f64[0] == *a2 && *&a1->f64[1] == *(a2 + 8) || (v20 = a1[1], v21 = a1[2], v18 = *(a2 + 16), v19 = *(a2 + 32), v14 = sub_225CCF934(), v9 = v18, v8 = v19, v6 = v20, v7 = v21, v15 = v14, result = 0, (v15 & 1) != 0))
  {
    result = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, v9), vceqq_f64(v7, v8)))) & 1) != 0 && v3 == v11 && v2 == v10)
    {
      return v4 == v12 && v5 == v13;
    }
  }

  return result;
}

BOOL sub_225B7AD24(float64x2_t *a1, uint64_t a2)
{
  v4 = *&a1->f64[0] == *a2 && *&a1->f64[1] == *(a2 + 8);
  if (v4 || (v5 = sub_225CCF934(), v6 = 0, (v5 & 1) != 0))
  {
    v7 = a1[2];
    v13[0] = a1[1];
    v13[1] = v7;
    v8 = a1[4];
    v13[2] = a1[3];
    v13[3] = v8;
    v9 = *(a2 + 32);
    v12[0] = *(a2 + 16);
    v12[1] = v9;
    v10 = *(a2 + 64);
    v12[2] = *(a2 + 48);
    v12[3] = v10;
    return _s13CoreIDVShared17IQTextObservationV6BoundsV2eeoiySbAE_AEtFZ_0(v13, v12);
  }

  return v6;
}

uint64_t ImageQualityProperties.pdf417Data.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x370uLL);
  memcpy(a1, (v1 + 8), 0x370uLL);
  return sub_225A0DE54(__dst, v4, &qword_27D73DDA0, &qword_225CEFB78);
}

void *ImageQualityProperties.pdf417Data.setter(const void *a1)
{
  memcpy(__dst, (v1 + 8), 0x370uLL);
  sub_2259CB640(__dst, &qword_27D73DDA0, &qword_225CEFB78);
  return memcpy((v1 + 8), a1, 0x370uLL);
}

uint64_t ImageQualityProperties.mrzCandidates.setter(uint64_t a1)
{

  *(v1 + 888) = a1;
  return result;
}

uint64_t ImageQualityProperties.debugDescription.getter()
{
  v1 = 7104878;
  v2 = *v0;
  memcpy(__dst, (v0 + 8), sizeof(__dst));
  v3 = *(v0 + 888);
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_225CCF204();

  v15 = 0x7363697274654D2DLL;
  v16 = 0xEA00000000000A2DLL;
  v4 = [v2 debugDescription];
  v5 = sub_225CCE474();
  v7 = v6;

  MEMORY[0x22AA6CE70](v5, v7);

  MEMORY[0x22AA6CE70](0x3731344644502D0ALL, 0xEE000A2D61746144);
  memcpy(__src, __dst, sizeof(__src));
  if (sub_225B57BE4(__src) == 1)
  {
    v8 = 0xE300000000000000;
    v9 = 7104878;
  }

  else
  {
    memcpy(v14, __src, sizeof(v14));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD98, &qword_225CEFB70);
    v9 = sub_225CCEFB4();
    v8 = v10;
  }

  MEMORY[0x22AA6CE70](v9, v8);

  MEMORY[0x22AA6CE70](0xD000000000000012, 0x8000000225D20D20);
  if (v3)
  {
    v1 = MEMORY[0x22AA6D090](v3, &type metadata for IQTextObservation);
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  MEMORY[0x22AA6CE70](v1, v12);

  return v15;
}

BOOL sub_225B7B458(void *a1, uint64_t *a2)
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

void *sub_225B7B488@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_225B7B4B4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

CoreIDVShared::ImageQualityCollector::ISOLanguageCode_optional __swiftcall ImageQualityCollector.ISOLanguageCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_225B7B604(char a1)
{
  result = 0x656E697272756C62;
  switch(a1)
  {
    case 1:
      result = 0x426563616C70616CLL;
      break;
    case 2:
      result = 0x657275736F707865;
      break;
    case 3:
      result = 0x7473694464726163;
      break;
    case 4:
    case 18:
    case 20:
      result = 0xD000000000000010;
      break;
    case 5:
    case 11:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6374695064616568;
      break;
    case 7:
      result = 0x6C6C6F5264616568;
      break;
    case 8:
      result = 0x77615964616568;
      break;
    case 9:
      result = 0x666E6F4365636166;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 12:
    case 15:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x5465727574706163;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x6556746567726174;
      break;
    case 21:
      result = 0x746E656D75636F64;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_225B7B868()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B7B8C4(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225B7B904()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B7B984(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_225B7B604(*a1);
  v5 = v4;
  if (v3 == sub_225B7B604(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225B7BA0C()
{
  v1 = *v0;
  sub_225CCFBD4();
  sub_225B7B604(v1);
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B7BA70(uint64_t a1)
{
  sub_225B7B604(*v1);
  sub_225CCE5B4();
}

uint64_t sub_225B7BAC4()
{
  v1 = *v0;
  sub_225CCFBD4();
  sub_225B7B604(v1);
  sub_225CCE5B4();

  return sub_225CCFC24();
}

unint64_t sub_225B7BB24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_225B93B48(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_225B7BB54@<X0>(unint64_t *a1@<X8>)
{
  result = sub_225B7B604(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t ImageQualityCollector.init(language:monitor:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *a3 = xmmword_225CF1CA0;
  *(a3 + 16) = 0xD000000000000028;
  *(a3 + 24) = 0x8000000225D20D40;
  *(a3 + 32) = xmmword_225CD9290;
  *(a3 + 48) = xmmword_225CF1CB0;
  *(a3 + 64) = xmmword_225CF1CC0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 1;
  *(a3 + 96) = xmmword_225CF1CD0;
  *(a3 + 112) = xmmword_225CF1CE0;
  result = sub_225B2E4D0(&unk_2838FF618);
  *(a3 + 128) = v5;
  *(a3 + 136) = a2;
  *(a3 + 144) = result;
  return result;
}

void *ImageQualityCollector.collectProperties(image:flags:docInfo:selfieInfo:docScanConfig:params:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v442 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v2;
  v456 = v13;
  v532 = *MEMORY[0x277D85DE8];
  v454 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v454);
  v453 = &v434 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v15 - 8);
  v455 = &v434 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_225CCF8F4();
  v448 = *(v17 - 8);
  v449 = v17;
  MEMORY[0x28223BE20](v17);
  v447 = &v434 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_225CCD954();
  v20 = *(v19 - 8);
  v482 = v19;
  v483 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v443 = &v434 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v475 = &v434 - v23;
  v24 = *v11;
  v25 = v9[1];
  v484 = *v9;
  v485 = v24;
  v457 = v25;
  v26 = v9[2];
  v27 = v9[3];
  v445 = v9[4];
  v446 = v26;
  v28 = *v7;
  v29 = *(v7 + 8);
  v30 = *(v7 + 16);
  v31 = *(v7 + 24);
  v451 = *(v7 + 32);
  v32 = *(v7 + 40);
  v33 = *(v7 + 48);
  v438 = *(v7 + 52);
  v34 = *(v7 + 80);
  v440 = *(v7 + 72);
  v441 = v27;
  v439 = v34;
  v444 = *(v7 + 88);
  v458 = *v4;
  v466 = *(v4 + 2);
  v467 = *(v4 + 12);
  v35 = *(v4 + 29);
  v529 = *(v4 + 13);
  *v530 = v35;
  *&v530[15] = *(v4 + 11);
  v470 = v4[6];
  LODWORD(v26) = *(v4 + 56);
  v502[0] = *(v4 + 57);
  *(v502 + 3) = *(v4 + 15);
  v36 = v4[8];
  v462 = *(v4 + 72);
  v463 = v26;
  *(v501 + 3) = *(v4 + 19);
  v501[0] = *(v4 + 73);
  v464 = v4[10];
  v465 = v36;
  v461 = *(v4 + 88);
  *(v500 + 3) = *(v4 + 23);
  v500[0] = *(v4 + 89);
  v460 = v4[12];
  v459 = *(v4 + 104);
  v528 = *(v4 + 137);
  v37 = *(v4 + 105);
  v527 = *(v4 + 121);
  v526 = v37;
  v38 = v1[1];
  v490 = *v1;
  v491 = v38;
  v39 = v1[2];
  v40 = v1[3];
  v41 = v1[5];
  v494 = v1[4];
  v495 = v41;
  v492 = v39;
  v493 = v40;
  v42 = v1[6];
  v43 = v1[7];
  v44 = v1[8];
  v499 = *(v1 + 18);
  v497 = v43;
  v498 = v44;
  v496 = v42;
  v45 = &selRef_setSceneIdentifiers_;
  v46 = [objc_allocWithZone(type metadata accessor for ImageQualityMetrics()) init];
  sub_225B92B84(v531);
  v47 = MEMORY[0x277D84F90];
  sub_225B2E800(MEMORY[0x277D84F90]);
  v48 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_225B93C44(&qword_27D73A9E8, type metadata accessor for VNImageOption, &unk_225CD3A1C);
  v49 = sub_225CCE2B4();

  v450 = v12;
  v472 = [v48 initWithCIImage:v12 options:v49];

  v489 = v47;
  v50 = [objc_allocWithZone(MEMORY[0x277CE2D38]) init];
  v473 = [objc_allocWithZone(MEMORY[0x277CE2D48]) init];
  v474 = [objc_allocWithZone(MEMORY[0x277CE2C70]) init];
  v480 = [objc_allocWithZone(MEMORY[0x277CE2C80]) init];
  v476 = [objc_allocWithZone(MEMORY[0x277CE2C88]) init];
  v51 = [objc_allocWithZone(MEMORY[0x277CE2C08]) init];
  v478 = [objc_allocWithZone(MEMORY[0x277CE2C58]) init];
  v477 = [objc_allocWithZone(MEMORY[0x277CE2CB0]) init];
  v469 = [objc_allocWithZone(MEMORY[0x277CE2C68]) init];
  v479 = [objc_allocWithZone(MEMORY[0x277CE2DB8]) init];
  v468 = [objc_allocWithZone(MEMORY[0x277CE2CA8]) init];
  v52 = v46;
  v486 = v46;
  v471 = v51;
  v481 = v32;
  v452 = v50;
  if (v32 >= 2)
  {
    v53 = *(v32 + 16);
    if (v53)
    {
      *&v519[0] = v47;
      sub_225CCF394();
      v54 = objc_opt_self();
      v55 = (v32 + 56);
      do
      {
        v56 = [v54 observationWithBoundingBox_];
        sub_225CCF364();
        v50 = *(*&v519[0] + 16);
        sub_225CCF3A4();
        sub_225CCF3B4();
        sub_225CCF374();
        v55 += 4;
        --v53;
      }

      while (v53);
      sub_2259D8718(0, &qword_27D73E700, 0x277CE2CD0);
      v57 = sub_225CCE7F4();
      [v474 setInputFaceObservations_];

      v58 = sub_225CCE7F4();

      [v480 setInputFaceObservations_];

      if (!*(v481 + 16))
      {
        __break(1u);
        goto LABEL_308;
      }

      v546.origin.x = 0.0;
      v546.origin.y = 0.0;
      v546.size.width = 1.0;
      v546.size.height = 1.0;
      v533 = CGRectIntersection(*(v481 + 32), v546);
      x = v533.origin.x;
      v437 = v28;
      v60 = v33;
      v61 = v31;
      y = v533.origin.y;
      width = v533.size.width;
      height = v533.size.height;
      v50 = v452;
      [v452 setRegionOfInterest_];
      v65 = y;
      v31 = v61;
      v33 = v60;
      v28 = v437;
      [v473 setRegionOfInterest_];
      v52 = v486;
    }
  }

  v66 = v485;
  if ((v485 & 0x8000000000) != 0)
  {
    if (v481 == 1)
    {
      v68 = 0;
      v69 = 0;
    }

    else
    {
      v69 = v439;

      v68 = v440;
    }

    v70 = &v52[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_livenessChute];
    swift_beginAccess();
    *v70 = v68;
    *(v70 + 1) = v69;

    v67 = v52;
    if ((v66 & 0x10000000) == 0)
    {
LABEL_9:
      if ((v66 & 0x8000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_25:
      if (v484 == 1 || !v445)
      {
        v74 = v50;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v75 = off_28105B918;
        v76 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v77 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v77));
        v78 = v483;
        v79 = &v75[v76];
        v80 = v475;
        v81 = v482;
        (*(*&v483 + 16))(v475, v79, v482);
        os_unfair_lock_unlock(&v75[v77]);
        sub_225B3FCC8();
        (*(*&v78 + 8))(v80, v81);
        v50 = v74;
        if ((v66 & 8) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (__PAIR128__(v445, v441) == v491)
        {
          v73 = 1;
        }

        else
        {
          v73 = sub_225CCF934();
        }

        v82 = v73 & 1;
        v83 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_isAutoCaptured;
        swift_beginAccess();
        v67[v83] = v82;
        if ((v66 & 8) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_11:
      if ((v66 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_39:
      if (v484 >= 2 && (v92 = *(v484 + 16), v92 == v490))
      {
        v93 = MEMORY[0x277D84F90];
        if (v92)
        {
          *&v519[0] = MEMORY[0x277D84F90];
          sub_225CCF394();
          v94 = type metadata accessor for IQPoint();
          v95 = (v484 + 40);
          do
          {
            v96 = *(v95 - 1);
            v97 = *v95;
            v98 = objc_allocWithZone(v94);
            v99 = v96;
            *&v98[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v99;
            v100 = v97;
            *&v98[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v100;
            v487.receiver = v98;
            v487.super_class = v94;
            objc_msgSendSuper2(&v487, sel_init);
            sub_225CCF364();
            sub_225CCF3A4();
            sub_225CCF3B4();
            sub_225CCF374();
            v95 += 2;
            --v92;
          }

          while (v92);
          v93 = *&v519[0];
          v66 = v485;
          v67 = v486;
          v50 = v452;
        }

        v519[6] = v496;
        v519[7] = v497;
        v519[8] = v498;
        *&v519[9] = v499;
        v519[2] = v492;
        v519[3] = v493;
        v519[4] = v494;
        v519[5] = v495;
        v519[0] = v490;
        v519[1] = v491;
        v101 = sub_225B80AD4(v93, 0x12);

        v102 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_originalVertices;
        swift_beginAccess();
        *&v67[v102] = v101;

        if ((v66 & 0x100000000) != 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v103 = v50;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v104 = off_28105B918;
        v105 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v106 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v106));
        v107 = v483;
        v108 = &v104[v105];
        v109 = v475;
        v110 = v482;
        (*(*&v483 + 16))(v475, v108, v482);
        os_unfair_lock_unlock(&v104[v106]);
        sub_225B3FF68();
        (*(*&v107 + 8))(v109, v110);
        v50 = v103;
        if ((v66 & 0x100000000) != 0)
        {
          goto LABEL_50;
        }
      }

LABEL_13:
      v45 = v470;
      if ((v66 & 0x10000) == 0)
      {
        goto LABEL_14;
      }

LABEL_62:
      if (v484 == 1 || (v446 & 0x100000000) != 0)
      {
        if (v481 == 1 || (v438 & 1) != 0)
        {
          v160 = v50;
          if (qword_28105B910 != -1)
          {
            swift_once();
          }

          v161 = off_28105B918;
          v162 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
          v163 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
          os_unfair_lock_lock((off_28105B918 + v163));
          v164 = v483;
          v165 = &v161[v162];
          v166 = v475;
          v167 = v482;
          (*(*&v483 + 16))(v475, v165, v482);
          os_unfair_lock_unlock(&v161[v163]);
          sub_225B40208();
          (*(*&v164 + 8))(v166, v167);
          v50 = v160;
          if (v66)
          {
            goto LABEL_66;
          }

LABEL_15:
          if ((v66 & 4) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_69;
        }
      }

      else
      {
        v33 = *&v446;
      }

      v519[6] = v496;
      v519[7] = v497;
      v519[8] = v498;
      *&v519[9] = v499;
      v519[2] = v492;
      v519[3] = v493;
      v519[4] = v494;
      v519[5] = v495;
      v519[0] = v490;
      v519[1] = v491;
      v130 = v447;
      v129 = v448;
      v131 = v449;
      (*(v448 + 104))(v447, *MEMORY[0x277D84688], v449);
      v132 = sub_225B804A4(16, v130, v33);
      (*(v129 + 8))(v130, v131);
      v133 = &v67[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_captureTime];
      swift_beginAccess();
      *v133 = v132;
      v133[4] = BYTE4(v132) & 1;
      if (v66)
      {
        goto LABEL_66;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v67 = v52;
    if ((v485 & 0x10000000) == 0)
    {
      goto LABEL_9;
    }
  }

  if (v481 == 1)
  {
    v71 = 2;
  }

  else
  {
    v71 = v444;
  }

  v72 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_isFlashEnabled;
  swift_beginAccess();
  v67[v72] = v71;
  if ((v66 & 0x8000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  if ((v66 & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_35:
  if (v484 >= 2 && (v168 = *(v484 + 16), v168 == v490) && v457 && *(v457 + 16) == v168)
  {
    v519[6] = v496;
    v519[7] = v497;
    v519[8] = v498;
    *&v519[9] = v499;
    v519[2] = v492;
    v519[3] = v493;
    v519[4] = v494;
    v519[5] = v495;
    v519[0] = v490;
    v519[1] = v491;
    sub_225B80118(v484, v457);
    v170 = v169;
    v519[6] = v496;
    v519[7] = v497;
    v519[8] = v498;
    *&v519[9] = v499;
    v519[2] = v492;
    v519[3] = v493;
    v519[4] = v494;
    v519[5] = v495;
    v519[0] = v490;
    v519[1] = v491;
    v172 = v447;
    v171 = v448;
    v173 = v449;
    (*(v448 + 104))(v447, *MEMORY[0x277D84688], v449);
    v174 = sub_225B804A4(3, v172, v170);
    (*(v171 + 8))(v172, v173);
    v175 = &v67[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_cardDistortion];
    swift_beginAccess();
    *v175 = v174;
    v175[4] = BYTE4(v174) & 1;
    if ((v66 & 0x80000000) != 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v84 = v50;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v85 = off_28105B918;
    v86 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v87 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v87));
    v88 = v483;
    v89 = &v85[v86];
    v90 = v475;
    v91 = v482;
    (*(*&v483 + 16))(v475, v89, v482);
    os_unfair_lock_unlock(&v85[v87]);
    sub_225B3FE18();
    (*(*&v88 + 8))(v90, v91);
    v50 = v84;
    if ((v66 & 0x80000000) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_12:
  if ((v66 & 0x100000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_50:
  if (v484 != 1 && v457 && (v111 = *(v457 + 16), v111 == v490))
  {
    v112 = MEMORY[0x277D84F90];
    if (v111)
    {
      *&v519[0] = MEMORY[0x277D84F90];
      sub_225CCF394();
      v113 = type metadata accessor for IQPoint();
      v114 = (v457 + 40);
      do
      {
        v115 = *(v114 - 1);
        v116 = *v114;
        v117 = objc_allocWithZone(v113);
        v118 = v115;
        *&v117[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v118;
        v119 = v116;
        *&v117[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v119;
        v488.receiver = v117;
        v488.super_class = v113;
        objc_msgSendSuper2(&v488, sel_init);
        sub_225CCF364();
        sub_225CCF3A4();
        sub_225CCF3B4();
        sub_225CCF374();
        v114 += 2;
        --v111;
      }

      while (v111);
      v112 = *&v519[0];
      v66 = v485;
      v67 = v486;
      v50 = v452;
    }

    v519[6] = v496;
    v519[7] = v497;
    v519[8] = v498;
    *&v519[9] = v499;
    v519[2] = v492;
    v519[3] = v493;
    v519[4] = v494;
    v519[5] = v495;
    v519[0] = v490;
    v519[1] = v491;
    v120 = sub_225B80AD4(v112, 0x13);

    v121 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_targetVertices;
    swift_beginAccess();
    *&v67[v121] = v120;

    v45 = v470;
    if ((v66 & 0x10000) != 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v122 = off_28105B918;
    v123 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v124 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v124));
    v125 = v483;
    v126 = &v122[v123];
    v127 = v475;
    v128 = v482;
    (*(*&v483 + 16))(v475, v126, v482);
    os_unfair_lock_unlock(&v122[v124]);
    sub_225B400B8();
    (*(*&v125 + 8))(v127, v128);
    v45 = v470;
    if ((v66 & 0x10000) != 0)
    {
      goto LABEL_62;
    }
  }

LABEL_14:
  if ((v66 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_66:
  v134 = v50;
  MEMORY[0x22AA6D020]();
  if (*((v489 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v489 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_225CCE844();
  }

  sub_225CCE884();
  if ((v66 & 4) != 0)
  {
LABEL_69:
    v135 = v473;
    MEMORY[0x22AA6D020]();
    if (*((v489 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v489 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    sub_225CCE884();
  }

LABEL_72:
  if ((v66 & 0x20000) == 0)
  {
    if ((v66 & 0x1C0) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_78;
  }

  MEMORY[0x22AA6D020]([v474 setRevision_]);
  if (*((v489 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v489 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_225CCE844();
  }

  sub_225CCE884();
  if ((v66 & 0x1C0) != 0)
  {
LABEL_78:
    v136 = v480;
    MEMORY[0x22AA6D020]();
    if (*((v489 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v489 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    sub_225CCE884();
  }

LABEL_81:
  sub_225B798A4(&unk_2838FF750, v519);
  if ((*&v519[0] & v66) != 0 || (v66 & 0x200000) != 0 && v481 != 1 && (v451 & 1) == 0)
  {
    MEMORY[0x22AA6D020]([v476 setRevision_]);
    if (*((v489 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v489 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    sub_225CCE884();
  }

  sub_225B798A4(&unk_2838FF780, v519);
  if ((*&v519[0] & v66) == 0)
  {
    v484 = 0;
    v139 = v466;
    goto LABEL_112;
  }

  *&v519[0] = 0;
  v137 = [v471 setRevision:3737841666 error:v519];
  v32 = *&v483;
  if (!v137)
  {
    v140 = *&v519[0];
    v56 = sub_225CCCCC4();

    swift_willThrow();
    if (qword_28105B910 == -1)
    {
LABEL_94:
      v141 = off_28105B918;
      v142 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v143 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v143));
      v144 = &v141[v142];
      v145 = v443;
      v146 = v482;
      (*(v32 + 16))(v443, v144, v482);
      v147 = &v141[v143];
      v148 = v145;
      os_unfair_lock_unlock(v147);
      v149 = v56;
      v150 = sub_225CCD934();
      v151 = v32;
      v152 = sub_225CCED14();

      if (os_log_type_enabled(v150, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        *&v519[0] = v154;
        *v153 = 136315138;
        swift_getErrorValue();
        v155 = sub_225CCFB24();
        v157 = v50;
        v158 = sub_2259BE198(v155, v156, v519);

        *(v153 + 4) = v158;
        v50 = v157;
        _os_log_impl(&dword_2259A7000, v150, v152, "Failed to set private faceAttributes revision: %s, using default revision", v153, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v154);
        MEMORY[0x22AA6F950](v154, -1, -1);
        v159 = v153;
        v45 = v470;
        MEMORY[0x22AA6F950](v159, -1, -1);

        v138 = (*(*&v483 + 8))(v443, v482);
      }

      else
      {

        v138 = (*(v151 + 8))(v148, v146);
      }

      v484 = 0;
      v139 = v466;
      v66 = v485;
      goto LABEL_109;
    }

LABEL_308:
    swift_once();
    goto LABEL_94;
  }

  v138 = *&v519[0];
  v484 = 0;
  v139 = v466;
LABEL_109:
  MEMORY[0x22AA6D020](v138);
  if (*((v489 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v489 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_225CCE844();
  }

  sub_225CCE884();
LABEL_112:
  sub_225B798A4(&unk_2838FF7E0, v519);
  if ((*&v519[0] & v66) != 0)
  {
    v176 = v478;
    [v176 setRevision_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E6F0, &unk_225CF1D50);
    v177 = swift_allocObject();
    *(v177 + 16) = xmmword_225CD30F0;
    v178 = *MEMORY[0x277CE2EA0];
    *(v177 + 32) = *MEMORY[0x277CE2EA0];
    type metadata accessor for VNBarcodeSymbology(0);
    v179 = v178;
    v180 = sub_225CCE7F4();

    [v176 setSymbologies_];

    MEMORY[0x22AA6D020]();
    if (*((v489 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v489 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    sub_225CCE884();
  }

  sub_225B798A4(&unk_2838FF828, v519);
  if (*&v519[0] & v66) != 0 || (v66 & 0x200000) != 0 && (v481 == 1 || (v451))
  {
    LODWORD(v181) = v494;
    v182 = v477;
    [v477 setQuadratureTolerance_];
    LODWORD(v183) = HIDWORD(v494);
    [v182 setMinimumSize_];
    LODWORD(v184) = DWORD1(v494);
    [v182 setMinimumAspectRatio_];
    LODWORD(v185) = DWORD2(v494);
    [v182 setMaximumAspectRatio_];
    LODWORD(v186) = v495;
    [v182 setMinimumConfidence_];
    [v182 setMaximumObservations_];
    v187 = v182;
    MEMORY[0x22AA6D020]();
    if (*((v489 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v489 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    sub_225CCE884();
  }

  if ((v66 & 0x400000000) != 0)
  {
    v188 = v469;
    MEMORY[0x22AA6D020]();
    if (*((v489 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v489 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    sub_225CCE884();
  }

  if ((v66 & 0x4000) != 0)
  {
    v189 = v468;
    MEMORY[0x22AA6D020]();
    if (*((v489 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v489 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }

    sub_225CCE884();
  }

  if ((v66 & 0x20000000000) != 0)
  {
    v191 = v479;
    [v479 setRecognitionLevel_];
    [v191 setUsesLanguageCorrection_];
    v192 = v191;
    [v192 setRevision_];
    *(v519 + 13) = v529;
    *(&v519[1] + 13) = *v530;
    *(&v519[7] + 9) = v527;
    *&v519[0] = v458;
    BYTE12(v519[0]) = v467;
    DWORD2(v519[0]) = v139;
    HIDWORD(v519[2]) = *&v530[15];
    *&v519[3] = v45;
    BYTE8(v519[3]) = v463;
    *(&v519[3] + 9) = v502[0];
    HIDWORD(v519[3]) = *(v502 + 3);
    *&v519[4] = v465;
    BYTE8(v519[4]) = v462;
    HIDWORD(v519[4]) = *(v501 + 3);
    *(&v519[4] + 9) = v501[0];
    *&v519[5] = v464;
    BYTE8(v519[5]) = v461;
    HIDWORD(v519[5]) = *(v500 + 3);
    *(&v519[5] + 9) = v500[0];
    *&v519[6] = v460;
    BYTE8(v519[6]) = v459;
    *(&v519[8] + 9) = v528;
    *(&v519[6] + 9) = v526;
    v193 = sub_225B92B8C(v519);
    if (v193 != 1 && (v519[9] & 1) == 0)
    {
      v193 = [v192 setRegionOfInterest_];
    }

    MEMORY[0x22AA6D020](v193);
    if (*((v489 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v489 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }
  }

  else
  {
    sub_225B798A4(&unk_2838FF868, v519);
    if ((*&v519[0] & v66) == 0)
    {
      goto LABEL_148;
    }

    *(v519 + 13) = v529;
    *(&v519[1] + 13) = *v530;
    *(&v519[6] + 9) = v526;
    *&v519[0] = v458;
    BYTE12(v519[0]) = v467;
    DWORD2(v519[0]) = v139;
    HIDWORD(v519[2]) = *&v530[15];
    *&v519[3] = v45;
    BYTE8(v519[3]) = v463;
    *(&v519[3] + 9) = v502[0];
    HIDWORD(v519[3]) = *(v502 + 3);
    *&v519[4] = v465;
    BYTE8(v519[4]) = v462;
    HIDWORD(v519[4]) = *(v501 + 3);
    *(&v519[4] + 9) = v501[0];
    *&v519[5] = v464;
    BYTE8(v519[5]) = v461;
    HIDWORD(v519[5]) = *(v500 + 3);
    *(&v519[5] + 9) = v500[0];
    *&v519[6] = v460;
    BYTE8(v519[6]) = v459;
    *(&v519[7] + 9) = v527;
    *(&v519[8] + 9) = v528;
    v190 = sub_225B92B8C(v519) == 1 || LOBYTE(v519[2]) == 2 || (v519[2] & 1) == 0;
    v194 = v479;
    [v479 setRecognitionLevel_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08, &unk_225CE40A0);
    v195 = swift_allocObject();
    *(v195 + 16) = xmmword_225CD30F0;
    *(v195 + 32) = qword_225CF29C8[v498];
    *(v195 + 40) = 0xE300000000000000;
    v196 = sub_225CCE7F4();

    [v194 setRecognitionLanguages_];

    v194;
    MEMORY[0x22AA6D020]();
    if (*((v489 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v489 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_225CCE844();
    }
  }

  sub_225CCE884();
LABEL_148:
  if (qword_27D73A2D8 != -1)
  {
    swift_once();
  }

  v197 = __swift_project_value_buffer(v454, qword_27D740B28);
  v198 = v453;
  sub_2259CB588(v197, v453);
  v199 = v455;
  DIPSignpost.init(_:)(v198, v455);
  sub_2259D8718(0, &qword_27D73E6F8, 0x277CE2DF0);
  v200 = sub_225CCE7F4();
  *&v519[0] = 0;
  v201 = [v472 performRequests:v200 error:v519];

  if (v201)
  {
    v202 = *&v519[0];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v199);
    if (v66)
    {
      v519[6] = v496;
      v519[7] = v497;
      v519[8] = v498;
      *&v519[9] = v499;
      v519[2] = v492;
      v519[3] = v493;
      v519[4] = v494;
      v519[5] = v495;
      v519[0] = v490;
      v519[1] = v491;
      v251 = sub_225B810CC(v50);
      v252 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_blurriness];
      swift_beginAccess();
      *v252 = v251;
      v252[4] = BYTE4(v251) & 1;
      if ((v66 & 2) == 0)
      {
LABEL_153:
        if ((v66 & 4) == 0)
        {
          goto LABEL_154;
        }

        goto LABEL_194;
      }
    }

    else if ((v66 & 2) == 0)
    {
      goto LABEL_153;
    }

    v519[6] = v496;
    v519[7] = v497;
    v519[8] = v498;
    *&v519[9] = v499;
    v519[2] = v492;
    v519[3] = v493;
    v519[4] = v494;
    v519[5] = v495;
    v519[0] = v490;
    v519[1] = v491;
    sub_225B819D4(v450);
    v254 = v253;
    v255 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_laplaceBlur];
    swift_beginAccess();
    *v255 = v254;
    v255[4] = BYTE4(v254) & 1;
    if ((v66 & 4) == 0)
    {
LABEL_154:
      if ((v66 & 0x20000) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_155;
    }

LABEL_194:
    v519[6] = v496;
    v519[7] = v497;
    v519[8] = v498;
    *&v519[9] = v499;
    v519[2] = v492;
    v519[3] = v493;
    v519[4] = v494;
    v519[5] = v495;
    v519[0] = v490;
    v519[1] = v491;
    v256 = sub_225B81D90(v473);
    v257 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_exposure];
    swift_beginAccess();
    *v257 = v256;
    v257[4] = BYTE4(v256) & 1;
    if ((v66 & 0x20000) == 0)
    {
LABEL_156:
      sub_225B798A4(&unk_2838FF898, v519);
      if ((*&v519[0] & v66) != 0)
      {
        v519[6] = v496;
        v519[7] = v497;
        v519[8] = v498;
        *&v519[9] = v499;
        v519[2] = v492;
        v519[3] = v493;
        v519[4] = v494;
        v519[5] = v495;
        v519[0] = v490;
        v519[1] = v491;
        v205 = sub_225B82E3C(v480);
        v208 = v205;
        v210 = v209;
        v211 = HIDWORD(v205) & 1;
        v212 = HIDWORD(v209) & 1;
        if ((v66 & 0x40) != 0)
        {
          v213 = v206;
        }

        else
        {
          v213 = 0;
        }

        if ((v66 & 0x40) != 0)
        {
          v214 = v207 & 1;
        }

        else
        {
          v214 = 1;
        }

        v215 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_headPitch];
        swift_beginAccess();
        *v215 = v213;
        v215[4] = v214;
        if ((v485 & 0x80) != 0)
        {
          v216 = v210;
        }

        else
        {
          v216 = 0;
        }

        if ((v485 & 0x80) != 0)
        {
          v217 = v212;
        }

        else
        {
          v217 = 1;
        }

        v218 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_headRoll];
        swift_beginAccess();
        *v218 = v216;
        v218[4] = v217;
        v66 = v485;
        if ((v485 & 0x100) != 0)
        {
          v219 = v208;
        }

        else
        {
          v219 = 0;
        }

        if ((v485 & 0x100) != 0)
        {
          v220 = v211;
        }

        else
        {
          v220 = 1;
        }

        v221 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_headYaw];
        swift_beginAccess();
        *v221 = v219;
        v221[4] = v220;
      }

      v223 = v470;
      v222 = v471;
      v224 = v481;
      if ((v66 & 0x400000) != 0)
      {
        if (v481 >= 2 && (v258 = *(v481 + 16)) != 0)
        {
          v259 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_numFaces];
          swift_beginAccess();
          *v259 = v258;
          v259[8] = 0;
        }

        else
        {
          v519[6] = v496;
          v519[7] = v497;
          v519[8] = v498;
          v519[2] = v492;
          v519[3] = v493;
          v519[4] = v494;
          v519[5] = v495;
          v519[0] = v490;
          v519[1] = v491;
          *(v518 + 13) = v529;
          *(&v518[1] + 13) = *v530;
          *(&v518[7] + 9) = v527;
          *&v519[9] = v499;
          *&v518[0] = v458;
          BYTE12(v518[0]) = v467;
          v280 = v467;
          v281 = v466;
          DWORD2(v518[0]) = v466;
          HIDWORD(v518[2]) = *&v530[15];
          *&v518[3] = v470;
          BYTE8(v518[3]) = v463;
          *(&v518[3] + 9) = v502[0];
          HIDWORD(v518[3]) = *(v502 + 3);
          *&v518[4] = v465;
          BYTE8(v518[4]) = v462;
          HIDWORD(v518[4]) = *(v501 + 3);
          *(&v518[4] + 9) = v501[0];
          *&v518[5] = v464;
          BYTE8(v518[5]) = v461;
          HIDWORD(v518[5]) = *(v500 + 3);
          *(&v518[5] + 9) = v500[0];
          *&v518[6] = v460;
          BYTE8(v518[6]) = v459;
          *(&v518[8] + 9) = v528;
          *(&v518[6] + 9) = v526;
          if (sub_225B92B8C(v518) == 1)
          {
            v282 = 0;
            v283 = 0;
            v284 = 1;
            v285 = 1;
          }

          else
          {
            v283 = LODWORD(v518[0]);
            v285 = BYTE4(v518[0]);
            v282 = v281;
            v284 = v280;
          }

          LOBYTE(v507[0]) = v284 & 1;
          v286 = sub_225B83A98(v476, v283 | (v285 << 32), v282 | ((v284 & 1) << 32));
          v288 = v287;
          v289 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_numFaces];
          swift_beginAccess();
          *v289 = v286;
          v289[8] = v288 & 1;
        }

        v66 = v485;
        if ((v485 & 0x8000) == 0)
        {
LABEL_178:
          if ((v66 & 0x10) == 0)
          {
            goto LABEL_179;
          }

          goto LABEL_213;
        }
      }

      else if ((v66 & 0x8000) == 0)
      {
        goto LABEL_178;
      }

      v519[6] = v496;
      v519[7] = v497;
      v519[8] = v498;
      *&v519[9] = v499;
      v519[2] = v492;
      v519[3] = v493;
      v519[4] = v494;
      v519[5] = v495;
      v519[0] = v490;
      v519[1] = v491;
      v290 = sub_225B844C0(v476);
      v291 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_faceConfidences;
      v292 = v486;
      swift_beginAccess();
      *&v292[v291] = v290;

      if ((v66 & 0x10) == 0)
      {
LABEL_179:
        if ((v66 & 0x20) == 0)
        {
          goto LABEL_180;
        }

        goto LABEL_300;
      }

LABEL_213:
      if (v224 >= 2)
      {
        if (*(v224 + 2))
        {
          if (v451)
          {
            v293 = 1;
          }

          else
          {
            v403 = v224[4];
            v404 = v224[5];
            v405 = v31;
            v406 = v224[6];
            v407 = v224[7];
            v547.origin.x = 0.0;
            v547.origin.y = 0.0;
            v547.size.width = 0.0;
            v547.size.height = 0.0;
            v541.origin.x = v28;
            v541.origin.y = v29;
            v541.size.width = v30;
            v541.size.height = v405;
            if (!CGRectEqualToRect(v541, v547))
            {
              v542.origin.x = v403;
              v542.origin.y = v404;
              v542.size.width = v406;
              v542.size.height = v407;
              v421 = CGRectGetWidth(v542);
              v437 = v28;
              v422 = v421;
              v543.origin.x = v403;
              v543.origin.y = v404;
              v543.size.width = v406;
              v543.size.height = v407;
              v423 = v422 * CGRectGetHeight(v543);
              v424 = v437;
              v544.origin.x = v437;
              v544.origin.y = v29;
              v544.size.width = v30;
              v544.size.height = v405;
              v425 = CGRectGetWidth(v544);
              v545.origin.x = v424;
              v545.origin.y = v29;
              v545.size.width = v30;
              v545.size.height = v405;
              v31 = v405;
              v426 = v425 * CGRectGetHeight(v545);
              v519[6] = v496;
              v519[7] = v497;
              v427 = v423 / v426;
              v519[8] = v498;
              *&v519[9] = v499;
              v519[2] = v492;
              v519[3] = v493;
              v519[4] = v494;
              v519[5] = v495;
              v519[0] = v490;
              v519[1] = v491;
              v428 = v223;
              v430 = v447;
              v429 = v448;
              v431 = v449;
              (*(v448 + 104))(v447, *MEMORY[0x277D84688], v449);
              v408 = sub_225B804A4(4, v430, v427);
              v432 = v429;
              v223 = v428;
              v222 = v471;
              v433 = v430;
              v224 = v481;
              (*(v432 + 8))(v433, v431);
              v409 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_faceToImageRatio;
              v410 = v486;
              swift_beginAccess();
              *&v410[v409] = v408;
              v28 = v437;
LABEL_299:
              v410[v409 + 4] = BYTE4(v408) & 1;
              if ((v66 & 0x20) == 0)
              {
LABEL_180:
                if ((v66 & 0x200) == 0)
                {
                  goto LABEL_182;
                }

                goto LABEL_181;
              }

LABEL_300:
              v519[6] = v496;
              v519[7] = v497;
              v519[8] = v498;
              *&v519[9] = v499;
              v519[2] = v492;
              v519[3] = v493;
              v519[4] = v494;
              v519[5] = v495;
              v519[0] = v490;
              v519[1] = v491;
              if (v224 == 1)
              {
                v411 = 1;
                v412 = 0.0;
                v413 = 0.0;
                v414 = 0.0;
                v415 = 0.0;
              }

              else
              {
                v412 = v28;
                v413 = v29;
                v414 = v30;
                v415 = v31;
                v411 = v451;
              }

              *v522 = v412;
              *&v522[1] = v413;
              *&v522[2] = v414;
              *&v522[3] = v415;
              v523 = v411 & 1;
              v416 = sub_225B856CC(v222, v522);
              v417 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_faceCenteredRatio];
              swift_beginAccess();
              *v417 = v416;
              v417[4] = BYTE4(v416) & 1;
              if ((v66 & 0x200) == 0)
              {
LABEL_182:
                sub_225B798A4(&unk_2838FF8D0, v519);
                if ((*&v519[0] & v66) != 0)
                {
                  v519[6] = v496;
                  v519[7] = v497;
                  v519[8] = v498;
                  *&v519[9] = v499;
                  v519[2] = v492;
                  v519[3] = v493;
                  v519[4] = v494;
                  v519[5] = v495;
                  v519[0] = v490;
                  v519[1] = v491;
                  v227 = sub_225B869D0(v222);
                  v229 = v228;
                  v230 = v486;
                  v231 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_sunglassesConfidence];
                  swift_beginAccess();
                  *v231 = v227;
                  v231[4] = BYTE4(v227) & 1;
                  v66 = v485;
                  v232 = &v230[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_glassesConfidence];
                  swift_beginAccess();
                  *v232 = v229;
                  v232[4] = BYTE4(v229) & 1;
                }

                if ((v66 & 0x1000) != 0)
                {
                  v519[6] = v496;
                  v519[7] = v497;
                  v519[8] = v498;
                  *&v519[9] = v499;
                  v519[2] = v492;
                  v519[3] = v493;
                  v519[4] = v494;
                  v519[5] = v495;
                  v519[0] = v490;
                  v519[1] = v491;
                  v260 = sub_225B873AC(v222);
                  v261 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_facemaskConfidence];
                  swift_beginAccess();
                  *v261 = v260;
                  v261[4] = BYTE4(v260) & 1;
                  if ((v66 & 0x2000) == 0)
                  {
LABEL_186:
                    if ((v66 & 0x1000000) == 0)
                    {
                      goto LABEL_187;
                    }

                    goto LABEL_201;
                  }
                }

                else if ((v66 & 0x2000) == 0)
                {
                  goto LABEL_186;
                }

                v519[6] = v496;
                v519[7] = v497;
                v519[8] = v498;
                *&v519[9] = v499;
                v519[2] = v492;
                v519[3] = v493;
                v519[4] = v494;
                v519[5] = v495;
                v519[0] = v490;
                v519[1] = v491;
                v262 = sub_225B87C30(v222);
                v263 = v224;
                v264 = v223;
                v265 = v486;
                v266 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_headgearConfidence];
                swift_beginAccess();
                *v266 = v262;
                v266[4] = BYTE4(v262) & 1;
                v519[6] = v496;
                v519[7] = v497;
                v519[8] = v498;
                *&v519[9] = v499;
                v519[2] = v492;
                v519[3] = v493;
                v519[4] = v494;
                v519[5] = v495;
                v519[0] = v490;
                v519[1] = v491;
                v267 = sub_225B884B8(v222);
                v268 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_headgearConfidences;
                swift_beginAccess();
                *&v265[v268] = v267;
                v223 = v264;
                v224 = v263;

                if ((v66 & 0x1000000) == 0)
                {
LABEL_187:
                  if ((v66 & 0x200000) == 0)
                  {
                    goto LABEL_222;
                  }

                  goto LABEL_202;
                }

LABEL_201:
                v519[6] = v496;
                v519[7] = v497;
                v519[8] = v498;
                *&v519[9] = v499;
                v519[2] = v492;
                v519[3] = v493;
                v519[4] = v494;
                v519[5] = v495;
                v519[0] = v490;
                v519[1] = v491;
                v269 = sub_225B88E94(v222);
                v271 = v270;
                v272 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_skinTone];
                swift_beginAccess();
                *v272 = v269;
                v272[8] = v271 & 1;
                v66 = v485;
                if ((v485 & 0x200000) == 0)
                {
                  goto LABEL_222;
                }

LABEL_202:
                if (v224 != 1 && (v451 & 1) == 0)
                {
                  if (v224 && *(v224 + 2))
                  {
                    v273 = v31;
                    v274 = v29;
                    v275 = v28;
                    v276 = v224 + 4;
                    v277 = v224[5];
                    v278 = v224[6];
                    v279 = v224[7];
                  }

                  else
                  {
                    v519[6] = v496;
                    v519[7] = v497;
                    v519[8] = v498;
                    *&v519[9] = v499;
                    v519[2] = v492;
                    v519[3] = v493;
                    v519[4] = v494;
                    v519[5] = v495;
                    v519[0] = v490;
                    v519[1] = v491;
                    v276 = v520;
                    sub_225B89B28(v222, v520);
                    if (v521)
                    {
                      goto LABEL_222;
                    }

                    v273 = v31;
                    v274 = v29;
                    v275 = v28;
                    v277 = *&v520[1];
                    v278 = *&v520[2];
                    v279 = *&v520[3];
                  }

                  v298 = *v276;
                  v299 = v275;
                  v436 = v274;
                  v437 = v275;
                  v300 = v30;
                  v435 = v273;
                  MinX = CGRectGetMinX(*(&v274 - 1));
                  v534.origin.x = v298;
                  v302 = v298;
                  v534.origin.y = v277;
                  v534.size.width = v278;
                  v534.size.height = v279;
                  *&MinX = MinX - CGRectGetMinX(v534);
                  v303 = v486;
                  v304 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_leftDrift];
                  swift_beginAccess();
                  *v304 = LODWORD(MinX);
                  v304[4] = 0;
                  v535.origin.x = v298;
                  v483 = v298;
                  v535.origin.y = v277;
                  v535.size.width = v278;
                  v535.size.height = v279;
                  MaxX = CGRectGetMaxX(v535);
                  v536.origin.x = v275;
                  v307 = v435;
                  v306 = v436;
                  v536.origin.y = v436;
                  v536.size.width = v30;
                  v536.size.height = v435;
                  *&MaxX = MaxX - CGRectGetMaxX(v536);
                  v308 = &v303[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_rightDrift];
                  swift_beginAccess();
                  *v308 = LODWORD(MaxX);
                  v308[4] = 0;
                  v537.origin.x = v302;
                  v537.origin.y = v277;
                  v537.size.width = v278;
                  v537.size.height = v279;
                  MaxY = CGRectGetMaxY(v537);
                  v310 = v437;
                  v538.origin.x = v437;
                  v538.origin.y = v306;
                  v538.size.width = v30;
                  v538.size.height = v307;
                  *&MaxY = MaxY - CGRectGetMaxY(v538);
                  v311 = &v303[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_upDrift];
                  swift_beginAccess();
                  *v311 = LODWORD(MaxY);
                  v311[4] = 0;
                  v539.origin.x = v310;
                  v539.origin.y = v306;
                  v539.size.width = v30;
                  v539.size.height = v307;
                  MinY = CGRectGetMinY(v539);
                  v540.origin.x = v483;
                  v540.origin.y = v277;
                  v540.size.width = v278;
                  v540.size.height = v279;
                  *&MinY = MinY - CGRectGetMinY(v540);
                  v313 = &v303[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_downDrift];
                  swift_beginAccess();
                  *v313 = LODWORD(MinY);
                  v313[4] = 0;
                }

LABEL_222:
                v314 = v486;
                if ((v66 & 0x2000000) != 0)
                {
                  v519[6] = v496;
                  v519[7] = v497;
                  v519[8] = v498;
                  *&v519[9] = v499;
                  v519[2] = v492;
                  v519[3] = v493;
                  v519[4] = v494;
                  v519[5] = v495;
                  v519[0] = v490;
                  v519[1] = v491;
                  v315 = sub_225B8A19C(v478);
                  v316 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_pdf417Detected;
                  swift_beginAccess();
                  v314[v316] = v315;
                }

                sub_225B798A4(&unk_2838FF900, v519);
                if ((*&v519[0] & v66) == 0)
                {
                  memcpy(v519, v531, 0x370uLL);
LABEL_246:
                  sub_225B798A4(&unk_2838FF940, v518);
                  if (*&v518[0] & v66) != 0 || (v66 & 0x200000) != 0 && (v224 == 1 || (v451))
                  {
                    v518[6] = v496;
                    v518[7] = v497;
                    v518[8] = v498;
                    *&v518[9] = v499;
                    v518[2] = v492;
                    v518[3] = v493;
                    v518[4] = v494;
                    v518[5] = v495;
                    v518[0] = v490;
                    v518[1] = v491;
                    v328 = sub_225B8B1B8(v477);
                    type metadata accessor for DocumentScanGuidanceHelper();
                    swift_allocObject();
                    v518[6] = v496;
                    v518[7] = v497;
                    v518[8] = v498;
                    *&v518[9] = v499;
                    v518[2] = v492;
                    v518[3] = v493;
                    v518[4] = v494;
                    v518[5] = v495;
                    v518[0] = v490;
                    v518[1] = v491;
                    sub_225B8B9B4(v328);
                    v329 = v66;
                    v331 = v330;

                    v518[6] = v496;
                    v518[7] = v497;
                    v518[8] = v498;
                    *&v518[9] = v499;
                    v518[2] = v492;
                    v518[3] = v493;
                    v518[4] = v494;
                    v518[5] = v495;
                    v518[0] = v490;
                    v518[1] = v491;
                    [v450 extent];
                    v334 = sub_225B8C4EC(v331, v332, v333);
                    if ((v329 & 0x200000000) != 0)
                    {
                      v335 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_rectangleCorners;
                      v336 = v222;
                      v337 = v223;
                      v338 = v486;
                      swift_beginAccess();
                      *&v338[v335] = v331;
                      v223 = v337;
                      v222 = v336;
                    }

                    if ((v485 & 0x40000) != 0)
                    {
                      v518[6] = v496;
                      v518[7] = v497;
                      v518[8] = v498;
                      *&v518[9] = v499;
                      v518[2] = v492;
                      v518[3] = v493;
                      v518[4] = v494;
                      v518[5] = v495;
                      v518[0] = v490;
                      v518[1] = v491;
                      sub_225B8CAE4(v331);
                      v340 = v339;
                      v341 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_documentSize];
                      swift_beginAccess();
                      *v341 = v340;
                      v341[4] = BYTE4(v340) & 1;
                      v223 = v470;
                    }

                    if ((v485 & 0x100000) != 0)
                    {
                      v342 = sub_225B785F8(v334);
                      if ((v342 & 0x100000000) == 0)
                      {
                        v343 = *&v342;
                        v518[6] = v496;
                        v518[7] = v497;
                        v518[8] = v498;
                        *&v518[9] = v499;
                        v518[2] = v492;
                        v518[3] = v493;
                        v518[4] = v494;
                        v518[5] = v495;
                        v518[0] = v490;
                        v518[1] = v491;
                        v345 = v447;
                        v344 = v448;
                        v346 = v449;
                        (*(v448 + 104))(v447, *MEMORY[0x277D84660], v449);
                        v347 = sub_225B804A4(21, v345, v343);
                        (*(v344 + 8))(v345, v346);
                        v348 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_documentSkew];
                        swift_beginAccess();
                        *v348 = v347;
                        v348[4] = BYTE4(v347) & 1;
                        v223 = v470;
                      }
                    }

                    if ((v485 & 0x80000) != 0)
                    {
                      v349 = sub_225B78DC8(v334);

                      if ((v349 & 0x100000000) == 0)
                      {
                        v518[6] = v496;
                        v518[7] = v497;
                        v518[8] = v498;
                        *&v518[9] = v499;
                        v518[2] = v492;
                        v518[3] = v493;
                        v518[4] = v494;
                        v518[5] = v495;
                        v518[0] = v490;
                        v518[1] = v491;
                        v351 = v448;
                        v350 = v449;
                        v352 = v222;
                        v353 = v223;
                        v354 = v447;
                        (*(v448 + 104))(v447, *MEMORY[0x277D84660], v449);
                        v355 = sub_225B804A4(20, v354, *&v349);
                        v356 = v354;
                        v223 = v353;
                        v222 = v352;
                        (*(v351 + 8))(v356, v350);
                        v357 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_documentRotation];
                        swift_beginAccess();
                        *v357 = v355;
                        v357[4] = BYTE4(v355) & 1;
                      }
                    }

                    else
                    {
                    }

                    v314 = v486;
                    if ((v485 & 0x200000) != 0)
                    {
                      sub_225B76F6C(v331, v518, *&v496, *(&v496 + 1), *&v497, *(&v497 + 1));

                      if ((v518[1] & 1) == 0)
                      {
                        v358 = DWORD2(v518[0]);
                        v359 = v518[0];
                        v360 = HIDWORD(*&v518[0]);
                        v361 = HIDWORD(*(&v518[0] + 1));
                        v362 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_leftDrift];
                        swift_beginAccess();
                        *v362 = v359;
                        v222 = v471;
                        v314 = v486;
                        v362[4] = 0;
                        v363 = &v314[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_rightDrift];
                        swift_beginAccess();
                        *v363 = v360;
                        v363[4] = 0;
                        v364 = &v314[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_upDrift];
                        swift_beginAccess();
                        *v364 = v358;
                        v364[4] = 0;
                        v365 = &v314[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_downDrift];
                        swift_beginAccess();
                        *v365 = v361;
                        v365[4] = 0;
                      }
                    }

                    else
                    {

                      swift_setDeallocating();
                      swift_deallocClassInstance();
                    }

                    v66 = v485;
                  }

                  if ((v66 & 0x400000000) != 0)
                  {
                    v518[6] = v496;
                    v518[7] = v497;
                    v518[8] = v498;
                    *&v518[9] = v499;
                    v518[2] = v492;
                    v518[3] = v493;
                    v518[4] = v494;
                    v518[5] = v495;
                    v518[0] = v490;
                    v518[1] = v491;
                    v366 = sub_225B8D758(v469);
                    v367 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_documentCorners;
                    swift_beginAccess();
                    *&v314[v367] = v366;
                  }

                  if ((v66 & 0x20000000000) != 0)
                  {

                    v518[6] = v496;
                    v518[7] = v497;
                    v518[8] = v498;
                    *&v518[9] = v499;
                    v518[2] = v492;
                    v518[3] = v493;
                    v518[4] = v494;
                    v518[5] = v495;
                    v518[0] = v490;
                    v518[1] = v491;
                    v376 = sub_225B8DF54(v479);
                    if ((v66 & 0x4000) != 0)
                    {
LABEL_283:
                      v518[6] = v496;
                      v518[7] = v497;
                      v518[8] = v498;
                      *&v518[9] = v499;
                      v518[2] = v492;
                      v518[3] = v493;
                      v518[4] = v494;
                      v518[5] = v495;
                      v518[0] = v490;
                      v518[1] = v491;
                      v377 = sub_225B8F68C(v468);
                      v378 = &v314[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_lensSmudgeConfidence];
                      swift_beginAccess();
                      *v378 = v377;
                      v378[4] = BYTE4(v377) & 1;
                    }
                  }

                  else
                  {
                    sub_225B798A4(&unk_2838FF980, v518);
                    if ((*&v518[0] & v66) != 0)
                    {
                      v518[6] = v496;
                      v518[7] = v497;
                      v518[8] = v498;
                      *&v518[9] = v499;
                      v518[2] = v492;
                      v518[3] = v493;
                      v518[4] = v494;
                      v518[5] = v495;
                      v518[0] = v490;
                      v518[1] = v491;
                      v368 = sub_225B8E74C(v479);
                      if ((v66 & 0x1000000000) != 0)
                      {
                        *(&v507[1] + 5) = v529;
                        *(&v507[3] + 5) = *v530;
                        *(&v507[13] + 1) = v526;
                        v507[0] = v458;
                        LODWORD(v507[1]) = v466;
                        BYTE4(v507[1]) = v467;
                        HIDWORD(v507[5]) = *&v530[15];
                        v507[6] = v223;
                        LOBYTE(v507[7]) = v463;
                        *(&v507[7] + 1) = v502[0];
                        HIDWORD(v507[7]) = *(v502 + 3);
                        v507[8] = v465;
                        LOBYTE(v507[9]) = v462;
                        HIDWORD(v507[9]) = *(v501 + 3);
                        *(&v507[9] + 1) = v501[0];
                        v507[10] = v464;
                        LOBYTE(v507[11]) = v461;
                        HIDWORD(v507[11]) = *(v500 + 3);
                        *(&v507[11] + 1) = v500[0];
                        v507[12] = v460;
                        LOBYTE(v507[13]) = v459;
                        *(&v507[15] + 1) = v527;
                        *(&v507[17] + 1) = v528;
                        if (sub_225B92B8C(v507) != 1)
                        {
                          v369 = v507[2];
                          if (v507[2])
                          {
                            sub_225B92D48(&v490, v518);

                            v370 = v484;
                            v371 = sub_225B92BB0(MEMORY[0x277D84F98], v369, &v490, v368);
                            v484 = v370;

                            sub_225B92D80(&v490);
                            v372 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_ocrMatchData;
                            swift_beginAccess();
                            *&v314[v372] = v371;
                          }
                        }
                      }

                      if ((v66 & 0x2000000000) != 0 && (*(&v507[1] + 5) = v529, *(&v507[3] + 5) = *v530, *(&v507[13] + 1) = v526, v507[0] = v458, LODWORD(v507[1]) = v466, BYTE4(v507[1]) = v467, HIDWORD(v507[5]) = *&v530[15], v507[6] = v223, LOBYTE(v507[7]) = v463, *(&v507[7] + 1) = v502[0], HIDWORD(v507[7]) = *(v502 + 3), v507[8] = v465, LOBYTE(v507[9]) = v462, HIDWORD(v507[9]) = *(v501 + 3), *(&v507[9] + 1) = v501[0], v507[10] = v464, LOBYTE(v507[11]) = v461, HIDWORD(v507[11]) = *(v500 + 3), *(&v507[11] + 1) = v500[0], v507[12] = v460, LOBYTE(v507[13]) = v459, *(&v507[15] + 1) = v527, *(&v507[17] + 1) = v528, sub_225B92B8C(v507) != 1) && (v373 = v507[3]) != 0)
                      {
                        sub_225B92D48(&v490, v518);

                        v374 = sub_225B92BB0(MEMORY[0x277D84F98], v373, &v490, v368);

                        sub_225B92D80(&v490);

                        v375 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_ocrMatchCriteria;
                        swift_beginAccess();
                        *&v314[v375] = v374;
                      }

                      else
                      {
                      }
                    }

                    v376 = 0;
                    if ((v66 & 0x4000) != 0)
                    {
                      goto LABEL_283;
                    }
                  }

                  if ((v66 & 0x800000) != 0)
                  {
                    v518[6] = v496;
                    v518[7] = v497;
                    v518[8] = v498;
                    *&v518[9] = v499;
                    v518[2] = v492;
                    v518[3] = v493;
                    v518[4] = v494;
                    v518[5] = v495;
                    v518[0] = v490;
                    v518[1] = v491;
                    v380 = sub_225B8FE7C();
                    v382 = v381;
                    v383 = &v314[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_luxLevel];
                    swift_beginAccess();
                    *v383 = v380;
                    v383[8] = v382 & 1;
                    v379 = v467;
                    if ((v66 & 0x10000000000) == 0)
                    {
                      goto LABEL_286;
                    }
                  }

                  else
                  {
                    v379 = v467;
                    if ((v66 & 0x10000000000) == 0)
                    {
LABEL_286:

LABEL_292:
                      v402 = v456;
                      *v456 = v314;
                      result = memcpy(v402 + 1, v519, 0x370uLL);
                      v402[111] = v376;
                      return result;
                    }
                  }

                  v518[6] = v496;
                  v518[7] = v497;
                  v518[8] = v498;
                  v518[2] = v492;
                  v518[3] = v493;
                  v518[4] = v494;
                  v518[5] = v495;
                  v518[0] = v490;
                  v518[1] = v491;
                  *(&v507[1] + 5) = v529;
                  *(&v507[3] + 5) = *v530;
                  *(&v507[15] + 1) = v527;
                  *&v518[9] = v499;
                  v507[0] = v458;
                  LODWORD(v507[1]) = v466;
                  BYTE4(v507[1]) = v379;
                  HIDWORD(v507[5]) = *&v530[15];
                  v507[6] = v223;
                  LOBYTE(v507[7]) = v463;
                  *(&v507[7] + 1) = v502[0];
                  HIDWORD(v507[7]) = *(v502 + 3);
                  v507[8] = v465;
                  LOBYTE(v507[9]) = v462;
                  HIDWORD(v507[9]) = *(v501 + 3);
                  *(&v507[9] + 1) = v501[0];
                  v507[10] = v464;
                  LOBYTE(v507[11]) = v461;
                  HIDWORD(v507[11]) = *(v500 + 3);
                  *(&v507[11] + 1) = v500[0];
                  v507[12] = v460;
                  LOBYTE(v507[13]) = v459;
                  *(&v507[17] + 1) = v528;
                  *(&v507[13] + 1) = v526;
                  if (sub_225B92B8C(v507) == 1)
                  {
                    v384 = 0;
                    v385 = 0;
                    v386 = 0;
                    v223 = 0;
                    v387 = 0;
                    v388 = 1;
                    v389 = 1;
                    v390 = 1;
                    v391 = 1;
                    v392 = 1;
                    v393 = v452;
                  }

                  else
                  {
                    v387 = HIDWORD(v507[4]);
                    v392 = v507[5];
                    v393 = v452;
                    v385 = v464;
                    v386 = v465;
                    v390 = v462;
                    v391 = v463;
                    v389 = v461;
                    v384 = v460;
                    v388 = v459;
                  }

                  v506[0] = v392;
                  v394 = sub_225B90284(v450, v387 | (v392 << 32), v223, v391 & 1, v386, v390 & 1, v385, v389 & 1, v384, v388 & 1);
                  v396 = v395;
                  v398 = v397;

                  v399 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_glareClusterSize;
                  v314 = v486;
                  swift_beginAccess();
                  *&v314[v399] = v394;

                  LOBYTE(v399) = v396 & 1;
                  v400 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_glareDetected;
                  swift_beginAccess();
                  v314[v400] = v399;

                  v401 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_glareAvgIntensity;
                  swift_beginAccess();
                  *&v314[v401] = v398;

                  goto LABEL_292;
                }

                v514 = v496;
                v515 = v497;
                v516 = v498;
                v517 = v499;
                v510 = v492;
                v511 = v493;
                v512 = v494;
                v513 = v495;
                v508 = v490;
                v509 = v491;
                if (v442)
                {
                  v317 = *(v442 + OBJC_IVAR____TtC13CoreIDVShared21IdentityDocScanConfig_pdf417ParsingConfigs);
                }

                else
                {
                  v317 = 0;
                }

                v318 = sub_225B8A61C(v518, v478, v317);

                memcpy(v507, v518, sizeof(v507));
                if ((v66 & 0x4000000) == 0)
                {
                  v318 = 2;
                }

                v319 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_isAAMVACompliant;
                swift_beginAccess();
                v314[v319] = v318;
                if ((v66 & 0x4000000000) != 0)
                {
                  v320 = v507;
                  sub_225A0DE54(v507, v519, &qword_27D73DDA0, &qword_225CEFB78);
                }

                else
                {
                  v320 = v531;
                }

                memcpy(v506, v320, sizeof(v506));
                if ((v66 & 0x20000000) == 0 || (memcpy(v519, v507, 0x370uLL), sub_225B57BE4(v519) == 1) || (memcpy(v505, v519, 0x360uLL), sub_2259D061C(v505) == 1) || !v505[3])
                {
                  v321 = 0;
                  v323 = 0;
                }

                else
                {
                  v503 = v505[2];
                  v504 = v505[3];
                  sub_2259D8654();
                  v321 = sub_225CCF044();
                  v323 = v322;
                }

                v324 = &v314[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_issuerNumber];
                swift_beginAccess();
                *v324 = v321;
                v324[1] = v323;

                if ((v485 & 0x40000000) != 0)
                {
                  memcpy(v519, v507, 0x370uLL);
                  if (sub_225B57BE4(v519) != 1)
                  {
                    sub_225A0DE54(v519, &v503, &qword_27D73DD98, &qword_225CEFB70);
                    sub_2259CB640(v507, &qword_27D73DDA0, &qword_225CEFB78);
                    memcpy(v505, v519, 0x360uLL);
                    if (sub_2259D061C(v505) != 1)
                    {
                      v418 = v505[0];
                      v419 = v505[1];

                      sub_2259CB640(v519, &qword_27D73DD98, &qword_225CEFB70);
                      v503 = v418;
                      v504 = v419;
                      sub_2259D8654();
                      v325 = sub_225CCF044();
                      v326 = v420;

                      goto LABEL_245;
                    }
                  }
                }

                else
                {
                  sub_2259CB640(v507, &qword_27D73DDA0, &qword_225CEFB78);
                }

                v325 = 0;
                v326 = 0;
LABEL_245:
                v327 = &v314[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_documentType];
                swift_beginAccess();
                *v327 = v325;
                v327[1] = v326;

                memcpy(v519, v506, 0x370uLL);
                v66 = v485;
                goto LABEL_246;
              }

LABEL_181:
              v519[6] = v496;
              v519[7] = v497;
              v519[8] = v498;
              *&v519[9] = v499;
              v519[2] = v492;
              v519[3] = v493;
              v519[4] = v494;
              v519[5] = v495;
              v519[0] = v490;
              v519[1] = v491;
              v225 = sub_225B8614C(v222);
              v226 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_blinkingConfidence];
              swift_beginAccess();
              *v226 = v225;
              v226[4] = BYTE4(v225) & 1;
              goto LABEL_182;
            }

            v293 = 0;
            v31 = v405;
          }
        }

        else
        {
          v293 = v451;
        }

        v519[6] = v496;
        v519[7] = v497;
        v519[8] = v498;
        *&v519[9] = v499;
        v519[2] = v492;
        v519[3] = v493;
        v519[4] = v494;
        v519[5] = v495;
        v519[0] = v490;
        v519[1] = v491;
      }

      else
      {
        v519[6] = v496;
        v519[7] = v497;
        v519[8] = v498;
        *&v519[9] = v499;
        v519[2] = v492;
        v519[3] = v493;
        v519[4] = v494;
        v519[5] = v495;
        v293 = v451;
        v519[0] = v490;
        v519[1] = v491;
        if (v224 == 1)
        {
          v293 = 1;
          v294 = 0.0;
          v295 = 0.0;
          v296 = 0.0;
          v297 = 0.0;
LABEL_298:
          *v524 = v294;
          *&v524[1] = v295;
          *&v524[2] = v296;
          *&v524[3] = v297;
          v525 = v293 & 1;
          v408 = sub_225B84BAC(v222, v524);
          v409 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_faceToImageRatio;
          v410 = v486;
          swift_beginAccess();
          *&v410[v409] = v408;
          goto LABEL_299;
        }
      }

      v294 = v28;
      v295 = v29;
      v296 = v30;
      v297 = v31;
      goto LABEL_298;
    }

LABEL_155:
    v519[6] = v496;
    v519[7] = v497;
    v519[8] = v498;
    *&v519[9] = v499;
    v519[2] = v492;
    v519[3] = v493;
    v519[4] = v494;
    v519[5] = v495;
    v519[0] = v490;
    v519[1] = v491;
    v203 = sub_225B8269C(v474);
    v204 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_faceCaptureQuality];
    swift_beginAccess();
    *v204 = v203;
    v204[4] = BYTE4(v203) & 1;
    goto LABEL_156;
  }

  v233 = *&v519[0];

  v234 = sub_225CCCCC4();

  swift_willThrow();
  sub_2259CB6A0(v199);
  *&v519[0] = 0;
  *(&v519[0] + 1) = 0xE000000000000000;
  sub_225CCF204();

  *&v519[0] = 0xD000000000000023;
  *(&v519[0] + 1) = 0x8000000225D20D70;
  swift_getErrorValue();
  v235 = sub_225CCFB24();
  MEMORY[0x22AA6CE70](v235);

  v236 = v519[0];
  LOWORD(v519[0]) = 349;
  v237 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v238 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)(v236, *(&v236 + 1), 0, v519, 0, v237, 0xD000000000000029, 0x8000000225D20DA0, v239, 0xD000000000000047, 0x8000000225D20DD0, 541);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v240 = off_28105B918;
  v241 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v242 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v242));
  v243 = v483;
  v244 = &v240[v241];
  v245 = v475;
  v246 = v482;
  (*(*&v483 + 16))(v475, v244, v482);
  os_unfair_lock_unlock(&v240[v242]);
  DIPLogError(_:message:log:)(v238, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v238);

  (*(*&v243 + 8))(v245, v246);
  v247 = v486;
  v248 = &v486[OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_errorCode];
  swift_beginAccess();
  *v248 = -9000;
  v248[8] = 0;
  v249 = v456;
  *v456 = v247;
  result = memcpy(v249 + 1, v531, 0x370uLL);
  v249[111] = 0;
  return result;
}

uint64_t sub_225B80118(uint64_t a1, uint64_t a2)
{
  v5 = sub_225CCD954();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(a1 + 16) == *v2 && *(a2 + 16) == v10)
  {
    if (!v10)
    {
      __break(1u);
      return result;
    }

    if (v10 < 4)
    {
      v11 = 0;
      v12 = 0.0;
LABEL_17:
      v27 = 16 * v11 + 32;
      v28 = (a1 + v27);
      v29 = (a2 + v27);
      v30 = v10 - v11;
      do
      {
        v31 = *v28++;
        v32 = v31;
        v33 = *v29++;
        *&v32.f64[0] = vcvt_f32_f64(vsubq_f64(v32, v33));
        v12 = v12 + sqrtf(vaddv_f32(vmul_f32(*&v32.f64[0], *&v32.f64[0])));
        --v30;
      }

      while (v30);
      return result;
    }

    v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = (a1 + 64);
    v21 = (a2 + 64);
    v12 = 0.0;
    v22 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v23 = v20 - 4;
      v36 = vld2q_f64(v23);
      v37 = vld2q_f64(v20);
      v24 = v21 - 4;
      v38 = vld2q_f64(v24);
      v39 = vld2q_f64(v21);
      v25 = vcvt_f32_f64(vsubq_f64(v36.val[0], v38.val[0]));
      v26 = vcvt_f32_f64(vsubq_f64(v37.val[0], v39.val[0]));
      *&v36.val[0].f64[0] = vcvt_f32_f64(vsubq_f64(v36.val[1], v38.val[1]));
      *&v36.val[1].f64[0] = vcvt_f32_f64(vsubq_f64(v37.val[1], v39.val[1]));
      *&v36.val[0].f64[0] = vsqrt_f32(vadd_f32(vmul_f32(v25, v25), vmul_f32(*&v36.val[0].f64[0], *&v36.val[0].f64[0])));
      *&v36.val[1].f64[0] = vsqrt_f32(vadd_f32(vmul_f32(v26, v26), vmul_f32(*&v36.val[1].f64[0], *&v36.val[1].f64[0])));
      v12 = (((v12 + *v36.val[0].f64) + *(v36.val[0].f64 + 1)) + *v36.val[1].f64) + *(v36.val[1].f64 + 1);
      v20 += 8;
      v21 += 8;
      v22 -= 4;
    }

    while (v22);
    if (v10 != v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v13 = off_28105B918;
    v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v15));
    (*(v6 + 16))(v9, &v13[v14], v5);
    os_unfair_lock_unlock(&v13[v15]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v16 = sub_225CCD934();
      v17 = sub_225CCED04();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v35 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_2259BE198(0xD00000000000003CLL, 0x8000000225D20F40, &v35);
        _os_log_impl(&dword_2259A7000, v16, v17, "%s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x22AA6F950](v19, -1, -1);
        MEMORY[0x22AA6F950](v18, -1, -1);
      }
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

unint64_t sub_225B804A4(uint64_t a1, uint64_t a2, float a3)
{
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - v12;
  v14 = sub_225CCF8F4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 144);
  if (*(v18 + 16) && (v19 = sub_2259F1E8C(a1), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 4 * v19);
    v22 = a3 / v21;
    *&v59 = v22;
    (*(v15 + 16))(v17, a2, v14);
    v23 = (*(v15 + 88))(v17, v14);
    if (v23 == *MEMORY[0x277D84678])
    {
      v24 = roundf(v22);
    }

    else if (v23 == *MEMORY[0x277D84670])
    {
      v24 = rintf(v22);
    }

    else if (v23 == *MEMORY[0x277D84680])
    {
      v24 = ceilf(v22);
    }

    else if (v23 == *MEMORY[0x277D84688])
    {
      v24 = floorf(v22);
    }

    else if (v23 == *MEMORY[0x277D84660])
    {
      v24 = truncf(v22);
    }

    else if (v23 == *MEMORY[0x277D84668])
    {
      v24 = ceilf(v22);
      v52 = floorf(v22);
      if (v22 < 0.0)
      {
        v24 = v52;
      }
    }

    else
    {
      sub_225CCEBB4();
      (*(v15 + 8))(v17, v14);
      v24 = *&v59;
    }

    v51 = 0;
    v50 = COERCE_UNSIGNED_INT(v21 * v24);
  }

  else
  {
    v56 = v8;
    v57 = v7;
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000002BLL, 0x8000000225D20F80);
    v58 = a1;
    sub_225CCF434();
    v25 = v59;
    v26 = v60;
    v54 = 0x8000000225D218B0;
    v55 = 0x8000000225D20DA0;
    v27 = MEMORY[0x277D84F90];
    v28 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v29 = swift_allocError();
    v31 = v30;
    v32 = sub_225CCE954();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v13, 1, 1, v32);
    LODWORD(v32) = (*(v33 + 48))(v13, 1, v32);
    sub_2259CB640(v13, &unk_27D73B050, &unk_225CD3AD0);
    if (v32)
    {
      v34 = 108;
    }

    else
    {
      v34 = 23;
    }

    v35 = sub_225B2C374(v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v35;
    sub_225B2C4A0(v28, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v59);

    v37 = v59;
    v38 = sub_225B29AA0(0, 1, 1, v27);
    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_225B29AA0((v39 > 1), v40 + 1, 1, v38);
    }

    *(v38 + 2) = v40 + 1;
    v41 = &v38[56 * v40];
    *(v41 + 4) = v25;
    *(v41 + 5) = v26;
    v42 = v55;
    *(v41 + 6) = 0xD000000000000029;
    *(v41 + 7) = v42;
    v43 = v54;
    *(v41 + 8) = 0xD00000000000001ELL;
    *(v41 + 9) = v43;
    *(v41 + 10) = 1500;
    *v31 = v34;
    *(v31 + 8) = v38;
    *(v31 + 16) = v25;
    *(v31 + 24) = v26;
    *(v31 + 32) = v37;
    *(v31 + 40) = 0;
    v44 = v56;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v45 = off_28105B918;
    v46 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v47 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v47));
    v48 = &v45[v46];
    v49 = v57;
    (*(v44 + 16))(v10, v48, v57);
    os_unfair_lock_unlock(&v45[v47]);
    DIPLogError(_:message:log:)(v29, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v29);
    (*(v44 + 8))(v10, v49);

    v50 = 0;
    v51 = 1;
  }

  return v50 | (v51 << 32);
}

uint64_t sub_225B80AD4(unint64_t a1, id a2)
{
  v5 = sub_225CCD954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v12 = *(v2 + 144);
  if (!*(v12 + 16) || (v13 = sub_2259F1E8C(a2), (v14 & 1) == 0))
  {
    v50 = v6;
    v51 = v5;
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000002BLL, 0x8000000225D20F80);
    v53 = a2;
    sub_225CCF434();
    v16 = v54;
    a2 = v55;
    v48 = 0x8000000225D20FB0;
    v49 = 0x8000000225D20DA0;
    v32 = MEMORY[0x277D84F90];
    v33 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v6 = v34;
    v35 = sub_225CCE954();
    v36 = *(v35 - 8);
    (*(v36 + 56))(v11, 1, 1, v35);
    LODWORD(v35) = (*(v36 + 48))(v11, 1, v35);
    sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
    if (v35)
    {
      LOWORD(v20) = 108;
    }

    else
    {
      LOWORD(v20) = 23;
    }

    v37 = sub_225B2C374(v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v37;
    sub_225B2C4A0(v33, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v54);

    v22 = v54;
    v19 = sub_225B29AA0(0, 1, 1, v32);
    v23 = *(v19 + 2);
    v21 = *(v19 + 3);
    a1 = v23 + 1;
    if (v23 >= v21 >> 1)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v15 = *(*(v12 + 56) + 4 * v13);
  if (a1 >> 62)
  {
    v16 = sub_225CCF144();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v56[0] = MEMORY[0x277D84F90];
    v18 = v56;
    result = sub_225CCF394();
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    v20 = a1 & 0xC000000000000001;
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v51 = a1 & 0xFFFFFFFFFFFFFF8;
    v22 = &OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x;
    v23 = &selRef_setSceneIdentifiers_;
    while (1)
    {
      if (v20)
      {
        v24 = MEMORY[0x22AA6DA80](v8, a1);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          v19 = sub_225B29AA0((v21 > 1), a1, 1, v19);
LABEL_18:
          *(v19 + 2) = a1;
          v39 = &v19[56 * v23];
          *(v39 + 4) = v16;
          *(v39 + 5) = a2;
          v40 = v49;
          *(v39 + 6) = 0xD000000000000029;
          *(v39 + 7) = v40;
          v41 = v48;
          *(v39 + 8) = 0xD000000000000017;
          *(v39 + 9) = v41;
          *(v39 + 10) = 1512;
          *v6 = v20;
          *(v6 + 8) = v19;
          *(v6 + 16) = v16;
          *(v6 + 24) = a2;
          *(v6 + 32) = v22;
          *(v6 + 40) = 0;
          if (qword_28105B910 != -1)
          {
            swift_once();
          }

          v42 = off_28105B918;
          v43 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
          v44 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
          os_unfair_lock_lock((off_28105B918 + v44));
          v45 = v50;
          v46 = &v42[v43];
          v47 = v51;
          (*(v50 + 16))(v8, v46, v51);
          os_unfair_lock_unlock(&v42[v44]);
          DIPLogError(_:message:log:)(v18, 0, 0xE000000000000000);
          _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v18);
          (*(v45 + 8))(v8, v47);

          return 0;
        }

        v21 = *(v51 + 16);
        if (v8 >= v21)
        {
          goto LABEL_24;
        }

        v24 = *(a1 + 8 * v8 + 32);
      }

      v25 = v24;
      ++v8;
      v26 = &v24[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
      swift_beginAccess();
      v27 = v15 * floorf(*v26 / v15);
      v28 = &v25[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
      swift_beginAccess();
      v29 = v15 * floorf(*v28 / v15);
      v30 = type metadata accessor for IQPoint();
      v31 = objc_allocWithZone(v30);
      *&v31[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v27;
      *&v31[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v29;
      v52.receiver = v31;
      v52.super_class = v30;
      a2 = objc_msgSendSuper2(&v52, sel_init);

      v18 = v56;
      sub_225CCF364();
      v6 = *(v56[0] + 16);
      sub_225CCF3A4();
      sub_225CCF3B4();
      sub_225CCF374();
      if (v16 == v8)
      {
        return v56[0];
      }
    }
  }

  return result;
}

unint64_t sub_225B810CC(void *a1)
{
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v69 - v8;
  v10 = sub_225CCF8F4();
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[7];
  v81 = v1[6];
  v82 = v14;
  v83 = v1[8];
  v84 = *(v1 + 18);
  v15 = v1[3];
  v77 = v1[2];
  v78 = v15;
  v16 = v1[5];
  v79 = v1[4];
  v80 = v16;
  v17 = v1[1];
  v75 = *v1;
  v76 = v17;
  v18 = [a1 results];
  if (!v18)
  {
    v71 = v4;
    v72 = v3;
    v69 = 0x8000000225D21000;
    v70 = 0x8000000225D20DA0;
    v32 = MEMORY[0x277D84F90];
    v33 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v10 = swift_allocError();
    v35 = v34;
    v36 = sub_225CCE954();
    v37 = *(v36 - 8);
    (*(v37 + 56))(v9, 1, 1, v36);
    LODWORD(v36) = (*(v37 + 48))(v9, 1, v36);
    sub_2259CB640(v9, &unk_27D73B050, &unk_225CD3AD0);
    if (v36)
    {
      v38 = 350;
    }

    else
    {
      v38 = 23;
    }

    v39 = sub_225B2C374(v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v73[0] = v39;
    sub_225B2C4A0(v33, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v73);

    v41 = *&v73[0];
    v42 = sub_225B29AA0(0, 1, 1, v32);
    v44 = *(v42 + 2);
    v43 = *(v42 + 3);
    if (v44 >= v43 >> 1)
    {
      v42 = sub_225B29AA0((v43 > 1), v44 + 1, 1, v42);
    }

    *(v42 + 2) = v44 + 1;
    v45 = &v42[56 * v44];
    *(v45 + 4) = 0xD000000000000029;
    *(v45 + 5) = 0x8000000225D20FD0;
    v46 = v70;
    *(v45 + 6) = 0xD000000000000029;
    *(v45 + 7) = v46;
    v47 = v69;
    *(v45 + 8) = 0xD000000000000015;
    *(v45 + 9) = v47;
    *(v45 + 10) = 830;
    *v35 = v38;
    *(v35 + 8) = v42;
    *(v35 + 16) = 0xD000000000000029;
    *(v35 + 24) = 0x8000000225D20FD0;
    *(v35 + 32) = v41;
    *(v35 + 40) = 0;
    v49 = v71;
    v48 = v72;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v50 = off_28105B918;
    v51 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v52 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v52));
    (*(v49 + 16))(v6, &v50[v51], v48);
    os_unfair_lock_unlock(&v50[v52]);
    DIPLogError(_:message:log:)(v10, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v10);
    (*(v49 + 8))(v6, v48);
    goto LABEL_27;
  }

  v19 = v18;
  sub_2259D8718(0, &qword_27D73E778, 0x277CE2D58);
  v20 = sub_225CCE814();

  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_19:
    v71 = v4;
    v72 = v3;

LABEL_20:
    v3 = 0x8000000225D21020;
    v69 = 0x8000000225D21000;
    v70 = 0x8000000225D20DA0;
    v53 = MEMORY[0x277D84F90];
    v54 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v10 = swift_allocError();
    v13 = v55;
    v56 = sub_225CCE954();
    v57 = *(v56 - 8);
    (*(v57 + 56))(v9, 1, 1, v56);
    LODWORD(v56) = (*(v57 + 48))(v9, 1, v56);
    sub_2259CB640(v9, &unk_27D73B050, &unk_225CD3AD0);
    if (v56)
    {
      LOWORD(v11) = 351;
    }

    else
    {
      LOWORD(v11) = 23;
    }

    v58 = sub_225B2C374(v53);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *&v73[0] = v58;
    sub_225B2C4A0(v54, sub_225B2AC40, 0, v59, v73);

    v9 = *&v73[0];
    v21 = sub_225B29AA0(0, 1, 1, v53);
    v19 = *(v21 + 2);
    v22 = *(v21 + 3);
    v20 = v19 + 1;
    if (v19 < v22 >> 1)
    {
LABEL_24:
      v60 = v72;
      *(v21 + 2) = v20;
      v61 = &v21[56 * v19];
      *(v61 + 4) = 0xD00000000000001BLL;
      *(v61 + 5) = v3;
      v62 = v70;
      *(v61 + 6) = 0xD000000000000029;
      *(v61 + 7) = v62;
      v63 = v69;
      *(v61 + 8) = 0xD000000000000015;
      *(v61 + 9) = v63;
      *(v61 + 10) = 834;
      *v13 = v11;
      *(v13 + 1) = v21;
      *(v13 + 2) = 0xD00000000000001BLL;
      *(v13 + 3) = v3;
      *(v13 + 4) = v9;
      *(v13 + 5) = 0;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v64 = off_28105B918;
      v65 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v66 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v66));
      v67 = v71;
      (*(v71 + 16))(v6, &v64[v65], v60);
      os_unfair_lock_unlock(&v64[v66]);
      DIPLogError(_:message:log:)(v10, 0, 0xE000000000000000);
      _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v10);
      (*(v67 + 8))(v6, v60);
LABEL_27:

      v31 = 0;
      LOBYTE(v30) = 1;
      goto LABEL_28;
    }

LABEL_31:
    v21 = sub_225B29AA0((v22 > 1), v20, 1, v21);
    goto LABEL_24;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_19;
  }

LABEL_4:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x22AA6DA80](0, v20);
  }

  else
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      __break(1u);
      goto LABEL_31;
    }

    v23 = *(v20 + 32);
  }

  v24 = v23;

  v25 = [v24 blurScore];
  if (!v25)
  {
    v71 = v4;
    v72 = v3;

    goto LABEL_20;
  }

  v73[6] = v81;
  v73[7] = v82;
  v73[8] = v83;
  v74 = v84;
  v73[2] = v77;
  v73[3] = v78;
  v73[4] = v79;
  v73[5] = v80;
  v73[0] = v75;
  v73[1] = v76;
  v26 = v25;
  [v25 floatValue];
  v28 = v27;
  (*(v11 + 104))(v13, *MEMORY[0x277D84688], v10);
  v29 = sub_225B804A4(0, v13, v28);

  v30 = HIDWORD(v29) & 1;
  (*(v11 + 8))(v13, v10);
  v31 = v29;
LABEL_28:
  LOBYTE(v75) = v30;
  return v31 | (v30 << 32);
}

void sub_225B819D4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E780, &qword_225CF2998);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  v3 = *MEMORY[0x277CBF948];
  *(inited + 32) = *MEMORY[0x277CBF948];
  v4 = objc_allocWithZone(MEMORY[0x277CBEB68]);
  v5 = v3;
  v6 = [v4 init];
  *(inited + 64) = sub_2259D8718(0, &qword_27D73E788, 0x277CBEB68);
  *(inited + 40) = v6;
  sub_225B2E5BC(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73D8E0, &qword_225CF29A0);
  v7 = objc_allocWithZone(MEMORY[0x277CBF740]);
  type metadata accessor for CIContextOption(0);
  sub_225B93C44(&qword_27D73AAB8, type metadata accessor for CIContextOption, &unk_225CD3F50);
  v8 = sub_225CCE2B4();

  v9 = [v7 initWithOptions_];

  [a1 extent];
  Width = CGRectGetWidth(v18);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [a1 extent];
  Height = CGRectGetHeight(v19);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = Width;
  v13 = Height;
  v14 = sub_225B92318(a1);
  v15 = Width * v13;
  if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v15 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = v14;
  if (v15)
  {
    v17 = sub_225CCE874();
    *(v17 + 16) = v15;
    bzero((v17 + 32), 4 * v15);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if ((v12 - 0x2000000000000000) >> 62 == 3)
  {
    [v16 extent];
    [v9 render:v16 toBitmap:v17 + 32 rowBytes:4 * v12 bounds:*MEMORY[0x277CBF9F0] format:0 colorSpace:?];
    sub_225B926EC(v17);

    return;
  }

LABEL_22:
  __break(1u);
}

unint64_t sub_225B81D90(void *a1)
{
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v65 - v8;
  v10 = sub_225CCF8F4();
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[7];
  v77 = v1[6];
  v78 = v14;
  v79 = v1[8];
  v80 = *(v1 + 18);
  v15 = v1[3];
  v73 = v1[2];
  v74 = v15;
  v16 = v1[5];
  v75 = v1[4];
  v76 = v16;
  v17 = v1[1];
  v71 = *v1;
  v72 = v17;
  v18 = [a1 results];
  if (!v18)
  {
    v67 = v4;
    v68 = v3;
    v65 = 0x8000000225D21090;
    v66 = 0x8000000225D20DA0;
    v32 = MEMORY[0x277D84F90];
    v33 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v10 = swift_allocError();
    v35 = v34;
    v36 = sub_225CCE954();
    v37 = *(v36 - 8);
    (*(v37 + 56))(v9, 1, 1, v36);
    LODWORD(v36) = (*(v37 + 48))(v9, 1, v36);
    sub_2259CB640(v9, &unk_27D73B050, &unk_225CD3AD0);
    if (v36)
    {
      v38 = 350;
    }

    else
    {
      v38 = 23;
    }

    v39 = sub_225B2C374(v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v69[0] = v39;
    sub_225B2C4A0(v33, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v69);

    v41 = *&v69[0];
    v42 = sub_225B29AA0(0, 1, 1, v32);
    v44 = *(v42 + 2);
    v43 = *(v42 + 3);
    if (v44 >= v43 >> 1)
    {
      v42 = sub_225B29AA0((v43 > 1), v44 + 1, 1, v42);
    }

    *(v42 + 2) = v44 + 1;
    v45 = &v42[56 * v44];
    *(v45 + 4) = 0xD00000000000002DLL;
    *(v45 + 5) = 0x8000000225D21060;
    *(v45 + 6) = 0xD000000000000029;
    *(v45 + 7) = v66;
    *(v45 + 8) = 0xD000000000000013;
    *(v45 + 9) = v65;
    *(v45 + 10) = 845;
    *v35 = v38;
    *(v35 + 8) = v42;
    *(v35 + 16) = 0xD00000000000002DLL;
    *(v35 + 24) = 0x8000000225D21060;
    *(v35 + 32) = v41;
    *(v35 + 40) = 0;
    v47 = v67;
    v46 = v68;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v48 = off_28105B918;
    v49 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v50 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v50));
    (*(v47 + 16))(v6, &v48[v49], v46);
    os_unfair_lock_unlock(&v48[v50]);
    DIPLogError(_:message:log:)(v10, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v10);
    (*(v47 + 8))(v6, v46);
    goto LABEL_27;
  }

  v19 = v18;
  sub_2259D8718(0, &qword_27D73E778, 0x277CE2D58);
  v20 = sub_225CCE814();

  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_19:
    v67 = v4;
    v68 = v3;

LABEL_20:
    v3 = 0x8000000225D210B0;
    v65 = 0x8000000225D21090;
    v66 = 0x8000000225D20DA0;
    v51 = MEMORY[0x277D84F90];
    v52 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v10 = swift_allocError();
    v13 = v53;
    v54 = sub_225CCE954();
    v55 = *(v54 - 8);
    (*(v55 + 56))(v9, 1, 1, v54);
    LODWORD(v54) = (*(v55 + 48))(v9, 1, v54);
    sub_2259CB640(v9, &unk_27D73B050, &unk_225CD3AD0);
    if (v54)
    {
      LOWORD(v11) = 351;
    }

    else
    {
      LOWORD(v11) = 23;
    }

    v56 = sub_225B2C374(v51);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    *&v69[0] = v56;
    sub_225B2C4A0(v52, sub_225B2AC40, 0, v57, v69);

    v9 = *&v69[0];
    v21 = sub_225B29AA0(0, 1, 1, v51);
    v19 = *(v21 + 2);
    v22 = *(v21 + 3);
    v20 = v19 + 1;
    if (v19 < v22 >> 1)
    {
LABEL_24:
      v58 = v68;
      *(v21 + 2) = v20;
      v59 = &v21[56 * v19];
      *(v59 + 4) = 0xD00000000000001FLL;
      *(v59 + 5) = v3;
      *(v59 + 6) = 0xD000000000000029;
      *(v59 + 7) = v66;
      *(v59 + 8) = 0xD000000000000013;
      *(v59 + 9) = v65;
      *(v59 + 10) = 849;
      *v13 = v11;
      *(v13 + 1) = v21;
      *(v13 + 2) = 0xD00000000000001FLL;
      *(v13 + 3) = v3;
      *(v13 + 4) = v9;
      *(v13 + 5) = 0;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v60 = off_28105B918;
      v61 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v62 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v62));
      v63 = v67;
      (*(v67 + 16))(v6, &v60[v61], v58);
      os_unfair_lock_unlock(&v60[v62]);
      DIPLogError(_:message:log:)(v10, 0, 0xE000000000000000);
      _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v10);
      (*(v63 + 8))(v6, v58);
LABEL_27:

      v31 = 0;
      LOBYTE(v30) = 1;
      goto LABEL_28;
    }

LABEL_31:
    v21 = sub_225B29AA0((v22 > 1), v20, 1, v21);
    goto LABEL_24;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_19;
  }

LABEL_4:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x22AA6DA80](0, v20);
  }

  else
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      __break(1u);
      goto LABEL_31;
    }

    v23 = *(v20 + 32);
  }

  v24 = v23;

  v25 = [v24 exposureScore];
  if (!v25)
  {
    v67 = v4;
    v68 = v3;

    goto LABEL_20;
  }

  v69[6] = v77;
  v69[7] = v78;
  v69[8] = v79;
  v70 = v80;
  v69[2] = v73;
  v69[3] = v74;
  v69[4] = v75;
  v69[5] = v76;
  v69[0] = v71;
  v69[1] = v72;
  v26 = v25;
  [v25 floatValue];
  v28 = v27;
  (*(v11 + 104))(v13, *MEMORY[0x277D84688], v10);
  v29 = sub_225B804A4(2, v13, v28);

  v30 = HIDWORD(v29) & 1;
  (*(v11 + 8))(v13, v10);
  v31 = v29;
LABEL_28:
  LOBYTE(v71) = v30;
  return v31 | (v30 << 32);
}

unint64_t sub_225B8269C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v57 - v4;
  v60 = sub_225CCD954();
  v6 = *(v60 - 8);
  v7 = MEMORY[0x28223BE20](v60);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v57 - v10;
  v12 = sub_225CCF8F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[7];
  v69 = v1[6];
  v70 = v16;
  v71 = v1[8];
  v72 = *(v1 + 18);
  v17 = v1[3];
  v65 = v1[2];
  v66 = v17;
  v18 = v1[5];
  v67 = v1[4];
  v68 = v18;
  v19 = v1[1];
  v63 = *v1;
  v64 = v19;
  v20 = [a1 results];
  if (!v20)
  {
    v58 = 0x8000000225D21110;
    v59 = 0x8000000225D20DA0;
    v27 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v24 = swift_allocError();
    v29 = v28;
    v30 = sub_225CCE954();
    v31 = *(v30 - 8);
    (*(v31 + 56))(v5, 1, 1, v30);
    LODWORD(v30) = (*(v31 + 48))(v5, 1, v30);
    sub_2259CB640(v5, &unk_27D73B050, &unk_225CD3AD0);
    if (v30)
    {
      v32 = 350;
    }

    else
    {
      v32 = 23;
    }

    v33 = MEMORY[0x277D84F90];
    v34 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v61[0] = v34;
    sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v61);

    v36 = *&v61[0];
    v37 = sub_225B29AA0(0, 1, 1, v33);
    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_225B29AA0((v38 > 1), v39 + 1, 1, v37);
    }

    *(v37 + 2) = v39 + 1;
    v40 = &v37[56 * v39];
    *(v40 + 4) = 0xD000000000000037;
    *(v40 + 5) = 0x8000000225D210D0;
    v41 = v59;
    *(v40 + 6) = 0xD000000000000029;
    *(v40 + 7) = v41;
    v42 = v58;
    *(v40 + 8) = 0xD00000000000001DLL;
    *(v40 + 9) = v42;
    *(v40 + 10) = 859;
    *v29 = v32;
    *(v29 + 8) = v37;
    *(v29 + 16) = 0xD000000000000037;
    *(v29 + 24) = 0x8000000225D210D0;
    *(v29 + 32) = v36;
    *(v29 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v43 = off_28105B918;
    v44 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v45 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v45));
    v46 = &v43[v44];
    v47 = v60;
    (*(v6 + 16))(v9, v46, v60);
    os_unfair_lock_unlock(&v43[v45]);
    DIPLogError(_:message:log:)(v24, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v24);
    (*(v6 + 8))(v9, v47);

    LODWORD(v24) = 0;
    goto LABEL_21;
  }

  v21 = v20;
  sub_2259D8718(0, &qword_27D73E700, 0x277CE2CD0);
  v22 = sub_225CCE814();

  v23 = sub_225B9193C(v22);

  if (!v23)
  {
    LODWORD(v24) = 0;
LABEL_14:
    v48 = v60;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v49 = off_28105B918;
    v50 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v51 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v51));
    (*(v6 + 16))(v11, &v49[v50], v48);
    os_unfair_lock_unlock(&v49[v51]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v52 = sub_225CCD934();
      v53 = sub_225CCED04();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v61[0] = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_2259BE198(0xD00000000000003ALL, 0x8000000225D21130, v61);
        _os_log_impl(&dword_2259A7000, v52, v53, "%s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x22AA6F950](v55, -1, -1);
        MEMORY[0x22AA6F950](v54, -1, -1);

        (*(v6 + 8))(v11, v60);
LABEL_21:
        LOBYTE(v26) = 1;
        return v24 | (v26 << 32);
      }
    }

    (*(v6 + 8))(v11, v48);
    goto LABEL_21;
  }

  v24 = sub_225CCEDF4();

  if ((v24 & 0x100000000) != 0)
  {
    goto LABEL_14;
  }

  v61[6] = v69;
  v61[7] = v70;
  v61[8] = v71;
  v62 = v72;
  v61[2] = v65;
  v61[3] = v66;
  v61[4] = v67;
  v61[5] = v68;
  v61[0] = v63;
  v61[1] = v64;
  (*(v13 + 104))(v15, *MEMORY[0x277D84688], v12);
  v25 = sub_225B804A4(17, v15, *&v24);
  LODWORD(v24) = v25;
  v26 = HIDWORD(v25) & 1;
  (*(v13 + 8))(v15, v12);
  return v24 | (v26 << 32);
}

unint64_t sub_225B82E3C(void *a1)
{
  v117 = *MEMORY[0x277D85DE8];
  v3 = sub_225CCD954();
  v94 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v93 = &v88 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v88 - v9;
  v11 = sub_225CCF8F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[6];
  v16 = v1[8];
  v104 = v1[7];
  v105 = v16;
  v106 = *(v1 + 18);
  v17 = v1[3];
  v99 = v1[2];
  v100 = v17;
  v18 = v1[5];
  v101 = v1[4];
  v102 = v18;
  v103 = v15;
  v19 = v1[1];
  v97 = *v1;
  v98 = v19;
  v20 = [a1 results];
  if (!v20)
  {
    v92 = v3;
    v90 = 0x8000000225D21DD0;
    v91 = 0x8000000225D20DA0;
    v34 = MEMORY[0x277D84F90];
    v35 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v36 = swift_allocError();
    v38 = v37;
    v39 = sub_225CCE954();
    v40 = *(v39 - 8);
    (*(v40 + 56))(v10, 1, 1, v39);
    LODWORD(v39) = (*(v40 + 48))(v10, 1, v39);
    sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
    if (v39)
    {
      v41 = 350;
    }

    else
    {
      v41 = 23;
    }

    v42 = sub_225B2C374(v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v107 = v42;
    sub_225B2C4A0(v35, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v107);

    v44 = v107;
    v45 = sub_225B29AA0(0, 1, 1, v34);
    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_225B29AA0((v46 > 1), v47 + 1, 1, v45);
    }

    *(v45 + 2) = v47 + 1;
    v48 = &v45[56 * v47];
    *(v48 + 4) = 0xD000000000000031;
    *(v48 + 5) = 0x8000000225D21D90;
    *(v48 + 6) = 0xD000000000000029;
    *(v48 + 7) = v91;
    *(v48 + 8) = 0xD000000000000017;
    *(v48 + 9) = v90;
    *(v48 + 10) = 914;
    *v38 = v41;
    *(v38 + 8) = v45;
    *(v38 + 16) = 0xD000000000000031;
    *(v38 + 24) = 0x8000000225D21D90;
    *(v38 + 32) = v44;
    *(v38 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v49 = off_28105B918;
    v50 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v51 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v51));
    v53 = v93;
    v52 = v94;
    v54 = &v49[v50];
    v55 = v92;
    (*(v94 + 16))(v93, v54, v92);
    os_unfair_lock_unlock(&v49[v51]);
    DIPLogError(_:message:log:)(v36, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v36);
    (*(v52 + 8))(v53, v55);
    v56 = v36;
    goto LABEL_26;
  }

  v21 = v20;
  v92 = v12;
  sub_2259D8718(0, &qword_27D73E700, 0x277CE2CD0);
  v22 = sub_225CCE814();

  v23 = sub_225B9193C(v22);

  if (!v23)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v57 = off_28105B918;
    v58 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v59 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v59));
    v60 = v94;
    (*(v94 + 16))(v6, &v57[v58], v3);
    os_unfair_lock_unlock(&v57[v59]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v61 = sub_225CCD934();
      v62 = sub_225CCED04();
      if (os_log_type_enabled(v61, v62))
      {
        v92 = v3;
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *&v107 = v64;
        *v63 = 136315138;
        *(v63 + 4) = sub_2259BE198(0xD000000000000034, 0x8000000225D21DF0, &v107);
        _os_log_impl(&dword_2259A7000, v61, v62, "%s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x22AA6F950](v64, -1, -1);
        MEMORY[0x22AA6F950](v63, -1, -1);

        (*(v60 + 8))(v6, v92);
LABEL_29:
        v33 = 0;
        LOBYTE(v29) = 1;
        return v33 | (v29 << 32);
      }
    }

    (*(v60 + 8))(v6, v3);
    goto LABEL_29;
  }

  v96[0] = 0;
  v95 = 0.0;
  v24 = objc_opt_self();
  [v23 pose];
  v25 = [v24 computeYawPitchRollFromPoseMatrix:v96 + 4 outputYaw:v96 outputPitch:&v95 outputRoll:?];
  v91 = v23;
  if (!v25)
  {
    v92 = v3;
    v89 = 0x8000000225D21DD0;
    v90 = 0x8000000225D20DA0;
    v65 = MEMORY[0x277D84F90];
    v66 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v67 = swift_allocError();
    v69 = v68;
    v70 = sub_225CCE954();
    v71 = *(v70 - 8);
    (*(v71 + 56))(v10, 1, 1, v70);
    LODWORD(v70) = (*(v71 + 48))(v10, 1, v70);
    sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
    if (v70)
    {
      v72 = 352;
    }

    else
    {
      v72 = 23;
    }

    v73 = sub_225B2C374(v65);
    v74 = swift_isUniquelyReferenced_nonNull_native();
    *&v107 = v73;
    sub_225B2C4A0(v66, sub_225B2AC40, 0, v74, &v107);

    v75 = v107;
    v76 = sub_225B29AA0(0, 1, 1, v65);
    v78 = *(v76 + 2);
    v77 = *(v76 + 3);
    if (v78 >= v77 >> 1)
    {
      v76 = sub_225B29AA0((v77 > 1), v78 + 1, 1, v76);
    }

    v79 = v94;
    *(v76 + 2) = v78 + 1;
    v80 = &v76[56 * v78];
    *(v80 + 4) = 0xD000000000000019;
    *(v80 + 5) = 0x8000000225D21E30;
    *(v80 + 6) = 0xD000000000000029;
    *(v80 + 7) = v90;
    *(v80 + 8) = 0xD000000000000017;
    *(v80 + 9) = v89;
    *(v80 + 10) = 927;
    *v69 = v72;
    *(v69 + 8) = v76;
    *(v69 + 16) = 0xD000000000000019;
    *(v69 + 24) = 0x8000000225D21E30;
    *(v69 + 32) = v75;
    *(v69 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v81 = off_28105B918;
    v82 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v83 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v83));
    v84 = &v81[v82];
    v85 = v92;
    v86 = v93;
    (*(v79 + 16))(v93, v84, v92);
    os_unfair_lock_unlock(&v81[v83]);
    DIPLogError(_:message:log:)(v67, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v67);

    (*(v79 + 8))(v86, v85);
    v56 = v67;
LABEL_26:

    v33 = 0;
    LOBYTE(v29) = 1;
    return v33 | (v29 << 32);
  }

  v113 = v103;
  v114 = v104;
  v115 = v105;
  v116 = v106;
  v109 = v99;
  v110 = v100;
  v111 = v101;
  v112 = v102;
  v107 = v97;
  v108 = v98;
  v26 = *(v96 + 1);
  v27 = *MEMORY[0x277D84688];
  v28 = v92;
  v94 = *(v92 + 104);
  LODWORD(v90) = v27;
  (v94)(v14, v27, v11);
  v93 = sub_225B804A4(8, v14, v26);
  v29 = HIDWORD(v93) & 1;
  v30 = *(v28 + 8);
  v30(v14, v11);
  v113 = v103;
  v114 = v104;
  v115 = v105;
  v116 = v106;
  v109 = v99;
  v110 = v100;
  v111 = v101;
  v112 = v102;
  v107 = v97;
  v108 = v98;
  v31 = *v96;
  (v94)(v14, v27, v11);
  v92 = sub_225B804A4(6, v14, v31);
  v30(v14, v11);
  v113 = v103;
  v114 = v104;
  v115 = v105;
  v116 = v106;
  v109 = v99;
  v110 = v100;
  v111 = v101;
  v112 = v102;
  v107 = v97;
  v108 = v98;
  v32 = v95;
  (v94)(v14, v90, v11);
  sub_225B804A4(7, v14, v32);

  v30(v14, v11);
  v33 = v93;
  return v33 | (v29 << 32);
}

uint64_t sub_225B83A98(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v73 - v7;
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v73 - v15;
  MEMORY[0x28223BE20](v14);
  v76 = &v73 - v17;
  v18 = [a1 results];
  if (!v18)
  {
    v74 = v10;
    v75 = v9;
    v76 = 0x8000000225D20DA0;
    v73 = 0x8000000225D211A0;
    v35 = MEMORY[0x277D84F90];
    v36 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v37 = swift_allocError();
    v39 = v38;
    v40 = sub_225CCE954();
    v41 = *(v40 - 8);
    (*(v41 + 56))(v8, 1, 1, v40);
    LODWORD(v40) = (*(v41 + 48))(v8, 1, v40);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v40)
    {
      v42 = 350;
    }

    else
    {
      v42 = 23;
    }

    v43 = sub_225B2C374(v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v43;
    sub_225B2C4A0(v36, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v77);

    v45 = v77;
    v46 = sub_225B29AA0(0, 1, 1, v35);
    v48 = *(v46 + 2);
    v47 = *(v46 + 3);
    if (v48 >= v47 >> 1)
    {
      v46 = sub_225B29AA0((v47 > 1), v48 + 1, 1, v46);
    }

    *(v46 + 2) = v48 + 1;
    v49 = &v46[56 * v48];
    *(v49 + 4) = 0xD00000000000002DLL;
    *(v49 + 5) = 0x8000000225D21170;
    *(v49 + 6) = 0xD000000000000029;
    *(v49 + 7) = v76;
    *(v49 + 8) = 0xD00000000000002FLL;
    *(v49 + 9) = v73;
    *(v49 + 10) = 940;
    *v39 = v42;
    *(v39 + 8) = v46;
    *(v39 + 16) = 0xD00000000000002DLL;
    *(v39 + 24) = 0x8000000225D21170;
    *(v39 + 32) = v45;
    *(v39 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v50 = off_28105B918;
    v51 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v52 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v52));
    v53 = v74;
    v54 = &v50[v51];
    v55 = v75;
    (v74[2])(v13, v54, v75);
    os_unfair_lock_unlock(&v50[v52]);
    DIPLogError(_:message:log:)(v37, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v37);
    (v53[1])(v13, v55);

    return 0;
  }

  sub_2259D8718(0, &qword_27D73E700, 0x277CE2CD0);
  v19 = sub_225CCE814();

  if ((a2 & 0x100000000) != 0 || (a3 & 0x100000000) != 0)
  {
LABEL_19:
    v22 = v10;
    if (qword_28105B910 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_20;
  }

  v77 = MEMORY[0x277D84F90];
  if (v19 >> 62)
  {
    v16 = sub_225CCF144();
    v75 = v9;
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_41:
    v57 = MEMORY[0x277D84F90];
LABEL_42:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v58 = off_28105B918;
    v59 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v60 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v60));
    v61 = &v58[v59];
    v62 = v75;
    v63 = v76;
    (v10[2])(v76, v61, v75);
    os_unfair_lock_unlock(&v58[v60]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v64 = sub_225B91B14(v19, v57);
      v66 = v65;

      v67 = sub_225CCD934();
      v68 = sub_225CCED04();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v77 = v70;
        *v69 = 136315138;
        v71 = sub_2259BE198(v64, v66, &v77);

        *(v69 + 4) = v71;
        _os_log_impl(&dword_2259A7000, v67, v68, "%s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x22AA6F950](v70, -1, -1);
        MEMORY[0x22AA6F950](v69, -1, -1);
      }

      else
      {
      }

      (v10[1])(v63, v75);
    }

    else
    {
      (v10[1])(v63, v62);
    }

    if ((v57 & 0x8000000000000000) != 0 || (v57 & 0x4000000000000000) != 0)
    {
      v56 = sub_225CCF144();
    }

    else
    {
      v56 = *(v57 + 16);
    }

    return v56;
  }

  v16 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v75 = v9;
  if (!v16)
  {
    goto LABEL_41;
  }

LABEL_6:
  v73 = v18;
  v74 = v10;
  v20 = 0;
  v21 = *&a3;
  v22 = v19 & 0xFFFFFFFFFFFFFF8;
  v10 = &off_278575000;
  while ((v19 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x22AA6DA80](v20, v19);
    v9 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_13:
    v24 = v23;
    [v24 confidence];
    if (v25 < *&a2)
    {
    }

    else
    {
      [v24 confidence];
      v27 = v26;

      if (v27 <= v21)
      {
        sub_225CCF364();
        sub_225CCF3A4();
        sub_225CCF3B4();
        sub_225CCF374();
        goto LABEL_9;
      }
    }

LABEL_9:
    ++v20;
    if (v9 == v16)
    {
      v57 = v77;
      v10 = v74;
      goto LABEL_42;
    }
  }

  if (v20 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v19 + 8 * v20 + 32);
    v9 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_38:
  swift_once();
LABEL_20:
  v28 = off_28105B918;
  v29 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v30 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v30));
  (*(v22 + 16))(v16, &v28[v29], v9);
  os_unfair_lock_unlock(&v28[v30]);
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    v31 = sub_225CCD934();
    v32 = sub_225CCED04();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v77 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_2259BE198(0xD000000000000048, 0x8000000225D211D0, &v77);
      _os_log_impl(&dword_2259A7000, v31, v32, "%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AA6F950](v34, -1, -1);
      MEMORY[0x22AA6F950](v33, -1, -1);
    }

    (*(v22 + 8))(v16, v9);
  }

  else
  {
    (*(v22 + 8))(v16, v9);
  }

  if (v19 >> 62)
  {
    v56 = sub_225CCF144();
  }

  else
  {
    v56 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v56;
}

char *sub_225B844C0(void *a1)
{
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v51 - v8;
  v58 = sub_225CCF8F4();
  v10 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[7];
  v67 = v1[6];
  v68 = v13;
  v69 = v1[8];
  v70 = *(v1 + 18);
  v14 = v1[3];
  v63 = v1[2];
  v64 = v14;
  v15 = v1[5];
  v65 = v1[4];
  v66 = v15;
  v16 = v1[1];
  v61 = *v1;
  v62 = v16;
  v17 = [a1 results];
  if (v17)
  {
    v18 = v17;
    sub_2259D8718(0, &qword_27D73E700, 0x277CE2CD0);
    v19 = sub_225CCE814();

    if (v19 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_225CCF144())
    {
      v21 = 0;
      v56 = v19 & 0xFFFFFFFFFFFFFF8;
      v57 = v19 & 0xC000000000000001;
      v55 = *MEMORY[0x277D84688];
      v53 = (v10 + 8);
      v54 = (v10 + 104);
      v10 = MEMORY[0x277D84F90];
      v52 = v19;
      while (1)
      {
        if (v57)
        {
          v22 = MEMORY[0x22AA6DA80](v21, v19);
        }

        else
        {
          if (v21 >= *(v56 + 16))
          {
            goto LABEL_28;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v59[6] = v67;
        v59[7] = v68;
        v59[8] = v69;
        v60 = v70;
        v59[2] = v63;
        v59[3] = v64;
        v59[4] = v65;
        v59[5] = v66;
        v59[0] = v61;
        v59[1] = v62;
        [v22 confidence];
        v26 = v25;
        v27 = v58;
        (*v54)(v12, v55, v58);
        v28 = sub_225B804A4(9, v12, v26);
        (*v53)(v12, v27);
        if ((v28 & 0x100000000) != 0)
        {

          return 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_225B2A818(0, *(v10 + 2) + 1, 1, v10);
        }

        v30 = *(v10 + 2);
        v29 = *(v10 + 3);
        if (v30 >= v29 >> 1)
        {
          v10 = sub_225B2A818((v29 > 1), v30 + 1, 1, v10);
        }

        *(v10 + 2) = v30 + 1;
        *&v10[4 * v30 + 32] = v28;
        ++v21;
        v19 = v52;
        if (v24 == i)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_31:
  }

  else
  {
    v57 = 0x8000000225D20DA0;
    v58 = 0x8000000225D21220;
    v56 = 0x8000000225D21260;
    v31 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v32 = swift_allocError();
    v34 = v33;
    v35 = sub_225CCE954();
    v36 = *(v35 - 8);
    (*(v36 + 56))(v9, 1, 1, v35);
    LODWORD(v35) = (*(v36 + 48))(v9, 1, v35);
    sub_2259CB640(v9, &unk_27D73B050, &unk_225CD3AD0);
    if (v35)
    {
      v37 = 350;
    }

    else
    {
      v37 = 23;
    }

    v38 = MEMORY[0x277D84F90];
    v39 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v59[0] = v39;
    sub_225B2C4A0(v31, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v59);

    v41 = *&v59[0];
    v42 = sub_225B29AA0(0, 1, 1, v38);
    v44 = *(v42 + 2);
    v43 = *(v42 + 3);
    if (v44 >= v43 >> 1)
    {
      v42 = sub_225B29AA0((v43 > 1), v44 + 1, 1, v42);
    }

    *(v42 + 2) = v44 + 1;
    v45 = &v42[56 * v44];
    v46 = v58;
    *(v45 + 4) = 0xD000000000000033;
    *(v45 + 5) = v46;
    *(v45 + 6) = 0xD000000000000029;
    *(v45 + 7) = v57;
    *(v45 + 8) = 0xD00000000000001ALL;
    *(v45 + 9) = v56;
    *(v45 + 10) = 957;
    *v34 = v37;
    *(v34 + 8) = v42;
    *(v34 + 16) = 0xD000000000000033;
    *(v34 + 24) = v46;
    *(v34 + 32) = v41;
    *(v34 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v47 = off_28105B918;
    v48 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v49 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v49));
    (*(v4 + 16))(v6, &v47[v48], v3);
    os_unfair_lock_unlock(&v47[v49]);
    DIPLogError(_:message:log:)(v32, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v32);
    (*(v4 + 8))(v6, v3);

    return 0;
  }

  return v10;
}

unint64_t sub_225B84BAC(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v89 - v6;
  v92 = COERCE_DOUBLE(sub_225CCD954());
  v8 = *(*&v92 - 8);
  v9 = MEMORY[0x28223BE20](*&v92);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v89 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v89 - v15;
  v17 = sub_225CCF8F4();
  v90 = *(v17 - 8);
  v91 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2[7];
  v109 = v2[6];
  v110 = v20;
  v111 = v2[8];
  v112 = *(v2 + 18);
  v21 = v2[3];
  v105 = v2[2];
  v106 = v21;
  v22 = v2[5];
  v107 = v2[4];
  v108 = v22;
  v23 = v2[1];
  v103 = *v2;
  v104 = v23;
  v24 = [a1 results];
  if (!v24)
  {
    v90 = 0x8000000225D20DA0;
    v91 = 0x8000000225D21280;
    v89 = 0x8000000225D212B0;
    v40 = MEMORY[0x277D84F90];
    v41 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v42 = swift_allocError();
    v44 = v43;
    v45 = sub_225CCE954();
    v46 = *(v45 - 8);
    (*(v46 + 56))(v7, 1, 1, v45);
    LODWORD(v45) = (*(v46 + 48))(v7, 1, v45);
    sub_2259CB640(v7, &unk_27D73B050, &unk_225CD3AD0);
    if (v45)
    {
      v47 = 350;
    }

    else
    {
      v47 = 23;
    }

    v48 = sub_225B2C374(v40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v93 = v48;
    sub_225B2C4A0(v41, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v93);

    v50 = v93;
    v51 = sub_225B29AA0(0, 1, 1, v40);
    v53 = *(v51 + 2);
    v52 = *(v51 + 3);
    if (v53 >= v52 >> 1)
    {
      v51 = sub_225B29AA0((v52 > 1), v53 + 1, 1, v51);
    }

    *(v51 + 2) = v53 + 1;
    v54 = &v51[56 * v53];
    v55 = v91;
    *(v54 + 4) = 0xD00000000000002ELL;
    *(v54 + 5) = v55;
    *(v54 + 6) = 0xD000000000000029;
    *(v54 + 7) = v90;
    *(v54 + 8) = 0xD000000000000018;
    *(v54 + 9) = v89;
    *(v54 + 10) = 875;
    *v44 = v47;
    *(v44 + 8) = v51;
    *(v44 + 16) = 0xD00000000000002ELL;
    *(v44 + 24) = v55;
    *(v44 + 32) = v50;
    *(v44 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v56 = off_28105B918;
    v57 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v58 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v58));
    v59 = &v56[v57];
    v60 = v92;
    (*(v8 + 16))(v11, v59, COERCE_DOUBLE(*&v92));
    os_unfair_lock_unlock(&v56[v58]);
    DIPLogError(_:message:log:)(v42, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v42);
    (*(v8 + 8))(v11, COERCE_DOUBLE(*&v60));

    goto LABEL_25;
  }

  v25 = v24;
  sub_2259D8718(0, &qword_27D73E700, 0x277CE2CD0);
  v26 = sub_225CCE814();

  v27 = sub_225B9193C(v26);

  if (!v27)
  {
    v61 = v8;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v62 = off_28105B918;
    v63 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v64 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v64));
    v65 = v92;
    (*(v8 + 16))(v14, &v62[v63], COERCE_DOUBLE(*&v92));
    os_unfair_lock_unlock(&v62[v64]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v66 = sub_225CCD934();
      v67 = sub_225CCED04();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *&v93 = v69;
        *v68 = 136315138;
        *(v68 + 4) = sub_2259BE198(0xD000000000000038, 0x8000000225D212D0, &v93);
        _os_log_impl(&dword_2259A7000, v66, v67, "%s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x22AA6F950](v69, -1, -1);
        MEMORY[0x22AA6F950](v68, -1, -1);
      }
    }

    (*(v61 + 8))(v14, COERCE_DOUBLE(*&v65));
LABEL_25:
    LODWORD(v70) = 0;
    LOBYTE(v71) = 1;
    return v70 | (v71 << 32);
  }

  if ((*(a2 + 32) & 1) != 0 || (v29 = *(a2 + 16), v28 = *(a2 + 24), v31 = *a2, v30 = *(a2 + 8), v120.origin.x = 0.0, v120.origin.y = 0.0, v120.size.width = 0.0, v120.size.height = 0.0, v113.origin.x = *a2, v113.origin.y = v30, v113.size.width = v29, v113.size.height = v28, CGRectEqualToRect(v113, v120)))
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v32 = off_28105B918;
    v33 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v34 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v34));
    v35 = v92;
    (*(v8 + 16))(v16, &v32[v33], COERCE_DOUBLE(*&v92));
    os_unfair_lock_unlock(&v32[v34]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v36 = sub_225CCD934();
      v37 = sub_225CCED04();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&v93 = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_2259BE198(0xD000000000000028, 0x8000000225D21310, &v93);
        _os_log_impl(&dword_2259A7000, v36, v37, "%s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x22AA6F950](v39, -1, -1);
        MEMORY[0x22AA6F950](v38, -1, -1);

        (*(v8 + 8))(v16, COERCE_DOUBLE(*&v92));
LABEL_29:
        v99 = v109;
        v100 = v110;
        v101 = v111;
        v102 = v112;
        v95 = v105;
        v96 = v106;
        v97 = v107;
        v98 = v108;
        v93 = v103;
        v94 = v104;
        [v27 boundingBox];
        x = v118.origin.x;
        y = v118.origin.y;
        width = v118.size.width;
        height = v118.size.height;
        v85 = CGRectGetWidth(v118);
        v119.origin.x = x;
        v119.origin.y = y;
        v119.size.width = width;
        v119.size.height = height;
        *&x = v85 * CGRectGetHeight(v119);
        v87 = v90;
        v86 = v91;
        (*(v90 + 104))(v19, *MEMORY[0x277D84688], v91);
        v70 = sub_225B804A4(4, v19, *&x);

        v71 = HIDWORD(v70) & 1;
        (*(v87 + 8))(v19, v86);
        return v70 | (v71 << 32);
      }
    }

    (*(v8 + 8))(v16, COERCE_DOUBLE(*&v35));
    goto LABEL_29;
  }

  [v27 boundingBox];
  v72 = v114.origin.x;
  v73 = v114.origin.y;
  v74 = v114.size.width;
  v75 = v114.size.height;
  v92 = CGRectGetWidth(v114);
  v115.origin.x = v72;
  v115.origin.y = v73;
  v115.size.width = v74;
  v115.size.height = v75;
  *&v73 = v92 * CGRectGetHeight(v115);
  v116.origin.x = v31;
  v116.origin.y = v30;
  v116.size.width = v29;
  v116.size.height = v28;
  v76 = CGRectGetWidth(v116);
  v117.origin.x = v31;
  v117.origin.y = v30;
  v117.size.width = v29;
  v117.size.height = v28;
  v77 = v76 * CGRectGetHeight(v117);
  v99 = v109;
  v100 = v110;
  v78 = *&v73 / v77;
  v101 = v111;
  v102 = v112;
  v95 = v105;
  v96 = v106;
  v97 = v107;
  v98 = v108;
  v93 = v103;
  v94 = v104;
  v80 = v90;
  v79 = v91;
  (*(v90 + 104))(v19, *MEMORY[0x277D84688], v91);
  v70 = sub_225B804A4(4, v19, v78);

  v71 = HIDWORD(v70) & 1;
  (*(v80 + 8))(v19, v79);
  return v70 | (v71 << 32);
}

unint64_t sub_225B856CC(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v89 - v6;
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  v91 = v8;
  x = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v89 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v89 - v16;
  v18 = sub_225CCF8F4();
  v90 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2[7];
  v101 = v2[6];
  v102 = v21;
  v103 = v2[8];
  v104 = *(v2 + 18);
  v22 = v2[3];
  v97 = v2[2];
  v98 = v22;
  v23 = v2[5];
  v99 = v2[4];
  v100 = v23;
  v24 = v2[1];
  v95 = *v2;
  v96 = v24;
  v25 = [a1 results];
  if (!v25)
  {
    v89 = 0x8000000225D21380;
    v90 = 0x8000000225D20DA0;
    v38 = MEMORY[0x277D84F90];
    v39 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v40 = swift_allocError();
    v42 = v41;
    v43 = sub_225CCE954();
    v44 = *(v43 - 8);
    (*(v44 + 56))(v7, 1, 1, v43);
    LODWORD(v43) = (*(v44 + 48))(v7, 1, v43);
    sub_2259CB640(v7, &unk_27D73B050, &unk_225CD3AD0);
    if (v43)
    {
      v45 = 350;
    }

    else
    {
      v45 = 23;
    }

    v46 = sub_225B2C374(v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v93[0] = v46;
    sub_225B2C4A0(v39, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v93);

    v48 = *&v93[0];
    v49 = sub_225B29AA0(0, 1, 1, v38);
    v51 = *(v49 + 2);
    v50 = *(v49 + 3);
    if (v51 >= v50 >> 1)
    {
      v49 = sub_225B29AA0((v50 > 1), v51 + 1, 1, v49);
    }

    *(v49 + 2) = v51 + 1;
    v52 = &v49[56 * v51];
    *(v52 + 4) = 0xD000000000000036;
    *(v52 + 5) = 0x8000000225D21340;
    *(v52 + 6) = 0xD000000000000029;
    *(v52 + 7) = v90;
    *(v52 + 8) = 0xD00000000000001CLL;
    *(v52 + 9) = v89;
    *(v52 + 10) = 894;
    *v42 = v45;
    *(v42 + 8) = v49;
    *(v42 + 16) = 0xD000000000000036;
    *(v42 + 24) = 0x8000000225D21340;
    *(v42 + 32) = v48;
    *(v42 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v53 = off_28105B918;
    v54 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v55 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v55));
    v56 = x;
    v57 = &v53[v54];
    v58 = v91;
    (*(*&x + 16))(v12, v57, v91);
    os_unfair_lock_unlock(&v53[v55]);
    DIPLogError(_:message:log:)(v40, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v40);
    (*(*&v56 + 8))(v12, v58);

    goto LABEL_28;
  }

  v26 = v25;
  sub_2259D8718(0, &qword_27D73E700, 0x277CE2CD0);
  v27 = sub_225CCE814();

  v28 = sub_225B9193C(v27);

  if (!v28)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v59 = off_28105B918;
    v60 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v61 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v61));
    v63 = v91;
    v62 = x;
    (*(*&x + 16))(v15, &v59[v60], v91);
    os_unfair_lock_unlock(&v59[v61]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v64 = sub_225CCD934();
      v65 = sub_225CCED04();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = v62;
        v68 = swift_slowAlloc();
        *&v93[0] = v68;
        *v66 = 136315138;
        *(v66 + 4) = sub_2259BE198(0xD00000000000003DLL, 0x8000000225D213A0, v93);
        _os_log_impl(&dword_2259A7000, v64, v65, "%s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x22AA6F950](v68, -1, -1);
        MEMORY[0x22AA6F950](v66, -1, -1);

        (*(*&v67 + 8))(v15, v63);
LABEL_28:
        v87 = 0;
        LOBYTE(v86) = 1;
        return v87 | (v86 << 32);
      }
    }

    (*(*&v62 + 8))(v15, v63);
    goto LABEL_28;
  }

  if (*(a2 + 32))
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v29 = off_28105B918;
    v30 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v31 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v31));
    v33 = v91;
    v32 = x;
    (*(*&x + 16))(v17, &v29[v30], v91);
    os_unfair_lock_unlock(&v29[v31]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v34 = sub_225CCD934();
      v35 = sub_225CCED04();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v93[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_2259BE198(0xD000000000000039, 0x8000000225D213E0, v93);
        _os_log_impl(&dword_2259A7000, v34, v35, "%s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x22AA6F950](v37, -1, -1);
        MEMORY[0x22AA6F950](v36, -1, -1);
      }

      else
      {
      }

      (*(*&x + 8))(v17, v33);
    }

    else
    {
      (*(*&v32 + 8))(v17, v33);
    }

    goto LABEL_28;
  }

  v70 = *(a2 + 16);
  v69 = *(a2 + 24);
  v72 = *a2;
  v71 = *(a2 + 8);
  [v28 boundingBox];
  x = v105.origin.x;
  y = v105.origin.y;
  width = v105.size.width;
  height = v105.size.height;
  v110.origin.x = v72;
  v110.origin.y = v71;
  v110.size.width = v70;
  v110.size.height = v69;
  v106 = CGRectIntersection(v105, v110);
  v76 = v106.origin.x;
  v77 = v106.origin.y;
  v78 = v106.size.width;
  v79 = v106.size.height;
  v80 = CGRectGetWidth(v106);
  v107.origin.x = v76;
  v107.origin.y = v77;
  v107.size.width = v78;
  v107.size.height = v79;
  *&v77 = v80 * CGRectGetHeight(v107);
  v81 = x;
  v108.origin.x = x;
  v108.origin.y = y;
  v108.size.width = width;
  v108.size.height = height;
  v82 = CGRectGetWidth(v108);
  v109.origin.x = v81;
  v109.origin.y = y;
  v109.size.width = width;
  v109.size.height = height;
  v83 = v82 * CGRectGetHeight(v109);
  v93[6] = v101;
  v93[7] = v102;
  *&v82 = *&v77 / v83;
  v93[8] = v103;
  v94 = v104;
  v93[2] = v97;
  v93[3] = v98;
  v93[4] = v99;
  v93[5] = v100;
  v93[0] = v95;
  v93[1] = v96;
  v84 = v90;
  (*(v90 + 104))(v20, *MEMORY[0x277D84688], v18);
  v85 = sub_225B804A4(5, v20, *&v82);

  v86 = HIDWORD(v85) & 1;
  (*(v84 + 8))(v20, v18);
  v87 = v85;
  return v87 | (v86 << 32);
}

unint64_t sub_225B8614C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v70 - v4;
  v73 = sub_225CCD954();
  v6 = *(v73 - 8);
  v7 = MEMORY[0x28223BE20](v73);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v70 - v10;
  v12 = sub_225CCF8F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[7];
  v82 = v1[6];
  v83 = v16;
  v84 = v1[8];
  v85 = *(v1 + 18);
  v17 = v1[3];
  v78 = v1[2];
  v79 = v17;
  v18 = v1[5];
  v80 = v1[4];
  v81 = v18;
  v19 = v1[1];
  v76 = *v1;
  v77 = v19;
  v20 = [a1 results];
  if (v20)
  {
    v21 = v20;
    sub_2259D8718(0, &qword_27D73E700, 0x277CE2CD0);
    v22 = sub_225CCE814();

    v23 = sub_225B9193C(v22);

    if (v23)
    {
      v24 = [v23 faceAttributes];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 eyesCategory];
        v27 = [v26 label];

        v28 = [v27 identifier];
        v29 = sub_225CCE474();
        v31 = v30;

        if (v29 == sub_225CCE474() && v31 == v32)
        {
        }

        else
        {
          v65 = sub_225CCF934();

          v66 = 0.0;
          if ((v65 & 1) == 0)
          {
LABEL_26:
            v74[6] = v82;
            v74[7] = v83;
            v74[8] = v84;
            v75 = v85;
            v74[2] = v78;
            v74[3] = v79;
            v74[4] = v80;
            v74[5] = v81;
            v74[0] = v76;
            v74[1] = v77;
            (*(v13 + 104))(v15, *MEMORY[0x277D84688], v12);
            v68 = sub_225B804A4(10, v15, v66);

            v64 = HIDWORD(v68) & 1;
            (*(v13 + 8))(v15, v12);
            v63 = v68;
            return v63 | (v64 << 32);
          }
        }

        [v27 confidence];
        v66 = v67;
        goto LABEL_26;
      }
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v55 = off_28105B918;
    v56 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v57 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v57));
    v58 = v73;
    (*(v6 + 16))(v11, &v55[v56], v73);
    os_unfair_lock_unlock(&v55[v57]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v59 = sub_225CCD934();
      v60 = sub_225CCED04();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *&v74[0] = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_2259BE198(0xD00000000000003ALL, 0x8000000225D21480, v74);
        _os_log_impl(&dword_2259A7000, v59, v60, "%s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x22AA6F950](v62, -1, -1);
        MEMORY[0x22AA6F950](v61, -1, -1);
      }
    }

    (*(v6 + 8))(v11, v58);
  }

  else
  {
    v71 = 0x8000000225D21460;
    v72 = 0x8000000225D20DA0;
    v33 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v34 = swift_allocError();
    v36 = v35;
    v37 = sub_225CCE954();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v5, 1, 1, v37);
    LODWORD(v37) = (*(v38 + 48))(v5, 1, v37);
    sub_2259CB640(v5, &unk_27D73B050, &unk_225CD3AD0);
    if (v37)
    {
      v39 = 350;
    }

    else
    {
      v39 = 23;
    }

    v40 = MEMORY[0x277D84F90];
    v41 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v74[0] = v41;
    sub_225B2C4A0(v33, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v74);

    v43 = *&v74[0];
    v44 = sub_225B29AA0(0, 1, 1, v40);
    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    if (v46 >= v45 >> 1)
    {
      v44 = sub_225B29AA0((v45 > 1), v46 + 1, 1, v44);
    }

    *(v44 + 2) = v46 + 1;
    v47 = &v44[56 * v46];
    *(v47 + 4) = 0xD000000000000037;
    *(v47 + 5) = 0x8000000225D21420;
    v48 = v72;
    *(v47 + 6) = 0xD000000000000029;
    *(v47 + 7) = v48;
    v49 = v71;
    *(v47 + 8) = 0xD00000000000001DLL;
    *(v47 + 9) = v49;
    *(v47 + 10) = 976;
    *v36 = v39;
    *(v36 + 8) = v44;
    *(v36 + 16) = 0xD000000000000037;
    *(v36 + 24) = 0x8000000225D21420;
    *(v36 + 32) = v43;
    *(v36 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v50 = off_28105B918;
    v51 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v52 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v52));
    v53 = &v50[v51];
    v54 = v73;
    (*(v6 + 16))(v9, v53, v73);
    os_unfair_lock_unlock(&v50[v52]);
    DIPLogError(_:message:log:)(v34, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v34);
    (*(v6 + 8))(v9, v54);
  }

  v63 = 0;
  LOBYTE(v64) = 1;
  return v63 | (v64 << 32);
}

unint64_t sub_225B869D0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v76 - v4;
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v76 - v11;
  v81 = sub_225CCF8F4();
  v13 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[7];
  v98 = v1[6];
  v99 = v16;
  v100 = v1[8];
  v101 = *(v1 + 18);
  v17 = v1[3];
  v94 = v1[2];
  v95 = v17;
  v18 = v1[5];
  v96 = v1[4];
  v97 = v18;
  v19 = v1[1];
  v92 = *v1;
  v93 = v19;
  v20 = [a1 results];
  if (v20)
  {
    v21 = v20;
    sub_2259D8718(0, &qword_27D73E700, 0x277CE2CD0);
    v22 = sub_225CCE814();

    v23 = sub_225B9193C(v22);

    if (v23)
    {
      v24 = [v23 faceAttributes];
      if (v24)
      {
        v79 = v24;
        v80 = v23;
        v25 = [v24 glassesCategory];
        v26 = [v25 label];

        v27 = [v26 identifier];
        v28 = sub_225CCE474();
        v30 = v29;

        if (v28 == sub_225CCE474() && v30 == v31)
        {
        }

        else
        {
          v60 = sub_225CCF934();

          v61 = 0.0;
          if ((v60 & 1) == 0)
          {
LABEL_26:
            v63 = [v26 identifier];
            v64 = sub_225CCE474();
            v66 = v65;

            if (v64 == sub_225CCE474() && v66 == v67)
            {
            }

            else
            {
              v68 = sub_225CCF934();

              v69 = 0.0;
              if ((v68 & 1) == 0)
              {
LABEL_31:
                v88 = v98;
                v89 = v99;
                v90 = v100;
                v91 = v101;
                v84 = v94;
                v85 = v95;
                v86 = v96;
                v87 = v97;
                v82 = v92;
                v83 = v93;
                v71 = *MEMORY[0x277D84688];
                v78 = v26;
                v72 = *(v13 + 104);
                v73 = v81;
                v72(v15, v71, v81);
                v77 = sub_225B804A4(12, v15, v61);
                v59 = HIDWORD(v77) & 1;
                v74 = *(v13 + 8);
                v74(v15, v73);
                v88 = v98;
                v89 = v99;
                v90 = v100;
                v91 = v101;
                v84 = v94;
                v85 = v95;
                v86 = v96;
                v87 = v97;
                v82 = v92;
                v83 = v93;
                v72(v15, v71, v73);
                sub_225B804A4(11, v15, v69);

                v74(v15, v73);
                v58 = v77;
                return v58 | (v59 << 32);
              }
            }

            [v26 confidence];
            v69 = v70;
            goto LABEL_31;
          }
        }

        [v26 confidence];
        v61 = v62;
        goto LABEL_26;
      }
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v51 = off_28105B918;
    v52 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v53 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v53));
    (*(v7 + 16))(v12, &v51[v52], v6);
    os_unfair_lock_unlock(&v51[v53]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v54 = sub_225CCD934();
      v55 = sub_225CCED04();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v82 = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_2259BE198(0xD000000000000039, 0x8000000225D21D50, &v82);
        _os_log_impl(&dword_2259A7000, v54, v55, "%s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x22AA6F950](v57, -1, -1);
        MEMORY[0x22AA6F950](v56, -1, -1);
      }
    }

    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v80 = 0x8000000225D20DA0;
    v81 = 0x8000000225D21CF0;
    v79 = 0x8000000225D21D30;
    v32 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v33 = swift_allocError();
    v35 = v34;
    v36 = sub_225CCE954();
    v37 = *(v36 - 8);
    (*(v37 + 56))(v5, 1, 1, v36);
    LODWORD(v36) = (*(v37 + 48))(v5, 1, v36);
    sub_2259CB640(v5, &unk_27D73B050, &unk_225CD3AD0);
    if (v36)
    {
      v38 = 350;
    }

    else
    {
      v38 = 23;
    }

    v39 = MEMORY[0x277D84F90];
    v40 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v82 = v40;
    sub_225B2C4A0(v32, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v82);

    v42 = v82;
    v43 = sub_225B29AA0(0, 1, 1, v39);
    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_225B29AA0((v44 > 1), v45 + 1, 1, v43);
    }

    *(v43 + 2) = v45 + 1;
    v46 = &v43[56 * v45];
    v47 = v81;
    *(v46 + 4) = 0xD000000000000036;
    *(v46 + 5) = v47;
    *(v46 + 6) = 0xD000000000000029;
    *(v46 + 7) = v80;
    *(v46 + 8) = 0xD00000000000001CLL;
    *(v46 + 9) = v79;
    *(v46 + 10) = 991;
    *v35 = v38;
    *(v35 + 8) = v43;
    *(v35 + 16) = 0xD000000000000036;
    *(v35 + 24) = v47;
    *(v35 + 32) = v42;
    *(v35 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v48 = off_28105B918;
    v49 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v50 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v50));
    (*(v7 + 16))(v10, &v48[v49], v6);
    os_unfair_lock_unlock(&v48[v50]);
    DIPLogError(_:message:log:)(v33, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v33);
    (*(v7 + 8))(v10, v6);
  }

  v58 = 0;
  LOBYTE(v59) = 1;
  return v58 | (v59 << 32);
}