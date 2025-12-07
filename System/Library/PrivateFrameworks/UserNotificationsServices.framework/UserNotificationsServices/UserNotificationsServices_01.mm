uint64_t sub_270B24018(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_270B23E7C(*a1);
  v5 = v4;
  if (v3 == sub_270B23E7C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_270B3184C();
  }

  return v8 & 1;
}

uint64_t sub_270B240A0()
{
  v1 = *v0;
  sub_270B318BC();
  sub_270B23E7C(v1);
  sub_270B3142C();

  return sub_270B318EC();
}

uint64_t sub_270B24104(uint64_t a1)
{
  sub_270B23E7C(*v1);
  sub_270B3142C();
}

uint64_t sub_270B24158(uint64_t a1)
{
  v2 = *v1;
  sub_270B318BC();
  sub_270B23E7C(v2);
  sub_270B3142C();

  return sub_270B318EC();
}

unint64_t sub_270B241B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_270B2FCC8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_270B241E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_270B23E7C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_270B24230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270B2FCC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270B24264(uint64_t a1)
{
  v2 = sub_270B2C4B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B242A0(uint64_t a1)
{
  v2 = sub_270B2C4B8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_270B2435C(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 request];
  v5 = [v4 identifier];

  v6 = sub_270B313BC();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
  v9 = [v3 date];
  v10 = type metadata accessor for UserNotification.Identifier(0);
  sub_270B311DC();

  v11 = [v3 sourceIdentifier];
  v12 = sub_270B313BC();
  v14 = v13;

  v15 = (a1 + *(v10 + 24));
  *v15 = v12;
  v15[1] = v14;
}

uint64_t UserNotification.Identifier.id.getter()
{
  MEMORY[0x2743B0AB0](*v0, v0[1]);
  v1 = type metadata accessor for UserNotification.Identifier(0);
  sub_270B311AC();
  sub_270B3158C();
  MEMORY[0x2743B0AB0](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  return 0;
}

uint64_t static UserNotification.Identifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_270B3184C() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for UserNotification.Identifier(0);
  if ((sub_270B311CC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_270B3184C();
}

unint64_t sub_270B245A0()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_270B24600@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_270B2FD14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_270B24634(uint64_t a1)
{
  v2 = sub_270B2CAF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B24670(uint64_t a1)
{
  v2 = sub_270B2CAF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserNotification.Identifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808447B8, &qword_270B34308);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2CAF4();
  sub_270B3190C();
  v8[15] = 0;
  sub_270B3180C();
  if (!v1)
  {
    type metadata accessor for UserNotification.Identifier(0);
    v8[14] = 1;
    sub_270B311EC();
    sub_270B2C608(&qword_2808447C8, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_270B3182C();
    v8[13] = 2;
    sub_270B3180C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t UserNotification.Identifier.hash(into:)(uint64_t a1)
{
  sub_270B3142C();
  type metadata accessor for UserNotification.Identifier(0);
  sub_270B311EC();
  sub_270B2C608(&qword_2808447D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_270B3137C();

  return sub_270B3142C();
}

uint64_t UserNotification.Identifier.hashValue.getter()
{
  sub_270B318BC();
  sub_270B3142C();
  type metadata accessor for UserNotification.Identifier(0);
  sub_270B311EC();
  sub_270B2C608(&qword_2808447D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_270B3137C();
  sub_270B3142C();
  return sub_270B318EC();
}

uint64_t UserNotification.Identifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_270B311EC();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808447D8, &qword_270B34310);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = v23 - v6;
  v8 = type metadata accessor for UserNotification.Identifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2CAF4();
  sub_270B318FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = v8;
  v25 = a1;
  v12 = v28;
  v11 = v29;
  v33 = 0;
  v13 = v10;
  *v10 = sub_270B3178C();
  v10[1] = v14;
  v23[2] = v14;
  v32 = 1;
  sub_270B2C608(&qword_2808447E0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_270B317AC();
  v15 = v24;
  (*(v27 + 32))(v13 + *(v24 + 20), v5, v11);
  v31 = 2;
  v23[1] = 0;
  v16 = sub_270B3178C();
  v23[0] = v17;
  v18 = v25;
  v19 = v16;
  (*(v12 + 8))(v7, v30);
  v20 = (v13 + *(v15 + 24));
  v21 = v23[0];
  *v20 = v19;
  v20[1] = v21;
  sub_270B2CB48(v13, v26, type metadata accessor for UserNotification.Identifier);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return sub_270B09BA4(v13, type metadata accessor for UserNotification.Identifier);
}

uint64_t sub_270B24E10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x2743B0AB0](*v2, v2[1]);
  sub_270B311AC();
  sub_270B3158C();
  result = MEMORY[0x2743B0AB0](*(v2 + *(a1 + 24)), *(v2 + *(a1 + 24) + 8));
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_270B24E9C(uint64_t a1)
{
  sub_270B318BC();
  sub_270B3142C();
  sub_270B311EC();
  sub_270B2C608(&qword_2808447D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_270B3137C();
  sub_270B3142C();
  return sub_270B318EC();
}

uint64_t sub_270B24F5C(uint64_t a1, uint64_t a2)
{
  sub_270B3142C();
  sub_270B311EC();
  sub_270B2C608(&qword_2808447D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_270B3137C();

  return sub_270B3142C();
}

uint64_t sub_270B25014(uint64_t a1, uint64_t a2)
{
  sub_270B318BC();
  sub_270B3142C();
  sub_270B311EC();
  sub_270B2C608(&qword_2808447D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_270B3137C();
  sub_270B3142C();
  return sub_270B318EC();
}

uint64_t sub_270B25100(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_270B3184C() & 1) == 0 || (sub_270B311CC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_270B3184C();
}

uint64_t static UserNotification.bundleId(for:)(uint64_t a1, unint64_t a2)
{
  v13[0] = 58;
  v13[1] = 0xE100000000000000;
  v12[2] = v13;

  v5 = sub_270B2B148(0x7FFFFFFFFFFFFFFFLL, 1, sub_270B2CBB0, v12, a1, a2, v4);
  if (v5[2])
  {
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[6];
    v9 = v5[7];
    swift_bridgeObjectRetain_n();

    v10 = MEMORY[0x2743B0A40](v6, v7, v8, v9);
    swift_bridgeObjectRelease_n();
  }

  else
  {

    return 0;
  }

  return v10;
}

uint64_t static UserNotification.requestIdentifierFromSpotlightIdentifier(_:)(uint64_t a1, unint64_t a2)
{
  v13[0] = 58;
  v13[1] = 0xE100000000000000;
  v12[2] = v13;

  v5 = sub_270B2B148(1, 0, sub_270B30858, v12, a1, a2, v4);
  if (v5[2] == 2)
  {
    v6 = v5[8];
    v7 = v5[9];
    v8 = v5[10];
    v9 = v5[11];

    v10 = MEMORY[0x2743B0A40](v6, v7, v8, v9);

    return v10;
  }

  else
  {

    return 0;
  }
}

uint64_t static UserNotification.bundleIdentifierFromSpotlightIdentifier(_:)(uint64_t a1, unint64_t a2)
{
  v13[0] = 58;
  v13[1] = 0xE100000000000000;
  v12[2] = v13;

  v5 = sub_270B2B148(1, 0, sub_270B30858, v12, a1, a2, v4);
  if (v5[2] == 2)
  {
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[6];
    v9 = v5[7];

    v10 = MEMORY[0x2743B0A40](v6, v7, v8, v9);

    return v10;
  }

  else
  {

    return 0;
  }
}

void *UserNotification.Behavior.dndBehavior.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *UserNotification.Behavior.shouldDelayDelivery.getter()
{
  result = *(v0 + 8);
  if (result)
  {
    return ([result interruptionSuppression] == 2);
  }

  return result;
}

uint64_t UserNotification.Behavior.init(critical:timeSensitive:ignoreDoNotDisturb:dndBehavior:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  *(a5 + 8) = a4;
  return result;
}

void UserNotification.Behavior.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808447E8, &qword_270B34318);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2CBCC();
  sub_270B318FC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v15[0]) = 0;
    v16 = sub_270B3179C() & 1;
    LOBYTE(v15[0]) = 1;
    v19 = sub_270B3179C() & 1;
    LOBYTE(v15[0]) = 2;
    v18 = sub_270B3179C() & 1;
    v17 = 3;
    sub_270B2C50C();
    sub_270B317AC();
    v9 = v15[0];
    v10 = v15[1];
    sub_270B30764(0, &qword_280844700, 0x277CCAAC8);
    sub_270B30764(0, &qword_2808447F8, 0x277D058E0);
    v14 = sub_270B315DC();
    (*(v6 + 8))(v8, v5);
    sub_270B1FB30(v9, v10);
    v11 = v19;
    v12 = v18;
    *a2 = v16;
    *(a2 + 1) = v11;
    *(a2 + 2) = v12;
    *(a2 + 8) = v14;
    v13 = v14;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t UserNotification.Behavior.encode(to:)(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844800, &unk_270B34320);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - v5;
  v7 = *(v1 + 1);
  v20[0] = *(v1 + 2);
  v20[1] = v7;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2CBCC();
  sub_270B3190C();
  LOBYTE(v23) = 0;
  v9 = v21;
  sub_270B3181C();
  if (!v9)
  {
    LOBYTE(v23) = 1;
    sub_270B3181C();
    LOBYTE(v23) = 2;
    sub_270B3181C();
    v10 = v4;
    if (v8)
    {
      v11 = objc_opt_self();
      v23 = 0;
      v12 = v8;
      v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v23];
      v14 = v23;
      if (v13)
      {
        v15 = sub_270B3119C();
        v17 = v16;

        v23 = v15;
        v24 = v17;
        v22 = 3;
        sub_270B2C7F4();
        sub_270B3182C();

        sub_270B1FB30(v23, v24);
        return (*(v10 + 8))(v6, v3);
      }

      v19 = v14;
      sub_270B3118C();

      swift_willThrow();
    }
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_270B25BE8()
{
  sub_270B318BC();
  sub_270B3142C();

  return sub_270B318EC();
}

uint64_t sub_270B25CC4(uint64_t a1)
{
  sub_270B3142C();
}

uint64_t sub_270B25D8C(uint64_t a1)
{
  sub_270B318BC();
  sub_270B3142C();

  return sub_270B318EC();
}

unint64_t sub_270B25E64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_270B2FE3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_270B25E94(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6C61636974697263;
  v4 = 0x8000000270B36810;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0x7661686542646E64;
    v4 = 0xEB00000000726F69;
  }

  if (*v1)
  {
    v3 = 0x736E6553656D6974;
    v2 = 0xED00006576697469;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_270B25F2C()
{
  v1 = 0x6C61636974697263;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x7661686542646E64;
  }

  if (*v0)
  {
    v1 = 0x736E6553656D6974;
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

unint64_t sub_270B25FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270B2FE3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270B25FE8(uint64_t a1)
{
  v2 = sub_270B2CBCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B26024(uint64_t a1)
{
  v2 = sub_270B2CBCC();

  return MEMORY[0x2821FE720](a1, v2);
}

void UserNotification.Behavior.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_270B318DC();
  sub_270B318DC();
  sub_270B318DC();
  if (v2)
  {
    sub_270B318DC();
    v3 = v2;
    sub_270B3164C();
  }

  else
  {
    sub_270B318DC();
  }
}

uint64_t UserNotification.Behavior.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_270B318BC();
  sub_270B318DC();
  sub_270B318DC();
  sub_270B318DC();
  sub_270B318DC();
  if (v1)
  {
    v2 = v1;
    sub_270B3164C();
  }

  return sub_270B318EC();
}

uint64_t sub_270B261EC()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *(v0 + 1);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_270B318BC();
  UserNotification.Behavior.hash(into:)(v5);
  return sub_270B318EC();
}

uint64_t sub_270B26254(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = *(v1 + 1);
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_270B318BC();
  UserNotification.Behavior.hash(into:)(v6);
  return sub_270B318EC();
}

uint64_t UserNotification.LocalizedContent.localizedTitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserNotification.LocalizedContent.localizedTitle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserNotification.LocalizedContent.localizedSubtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UserNotification.LocalizedContent.localizedSubtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t UserNotification.LocalizedContent.localizedBody.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t UserNotification.LocalizedContent.localizedBody.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t UserNotification.LocalizedContent.isHighlight.setter(char a1)
{
  result = type metadata accessor for UserNotification.LocalizedContent(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t UserNotification.LocalizedContent.init(localizedTitle:localizedSubtitle:localizedBody:summary:isHighlight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char *a9@<X8>)
{
  v28 = a8;
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = type metadata accessor for UserNotification.LocalizedContent(0);
  v17 = *(v16 + 28);
  v18 = sub_270B3116C();
  v19 = *(*(v18 - 8) + 56);
  result = v19(&a9[v17], 1, 1, v18);
  *a9 = a1;
  *(a9 + 1) = a2;
  v21 = v25;
  *(a9 + 2) = v24;
  *(a9 + 3) = v21;
  v22 = v27;
  *(a9 + 4) = v26;
  *(a9 + 5) = v22;
  if (a7)
  {
    sub_270B3117C();
    v19(v15, 0, 1, v18);
    result = sub_270B2D1FC(v15, &a9[v17], &qword_280843D60, &qword_270B328E8);
  }

  a9[*(v16 + 32)] = v28;
  return result;
}

uint64_t UserNotification.LocalizedContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v28 - v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844808, &qword_270B34330);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v6 = &v28 - v5;
  v7 = type metadata accessor for UserNotification.LocalizedContent(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *v10 = 0u;
  v11 = *(v8 + 36);
  v12 = sub_270B3116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v33 = v11;
  v14(&v10[v11], 1, 1, v12);
  v10[*(v8 + 40)] = 2;
  v16 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_270B2CC20();
  v37 = v6;
  v17 = v35;
  sub_270B318FC();
  if (!v17)
  {
    v35 = v15;
    v29 = v14;
    v18 = v30;
    v19 = v31;
    v41 = 0;
    v20 = v32;
    *v10 = sub_270B3178C();
    *(v10 + 1) = v21;
    v40 = 1;
    v22 = v18;
    *(v10 + 2) = sub_270B3178C();
    *(v10 + 3) = v23;
    v24 = v33;
    v39 = 2;
    *(v10 + 4) = sub_270B3178C();
    *(v10 + 5) = v25;
    v38 = 3;
    sub_270B2C608(qword_280843D80, MEMORY[0x277CC8C40], MEMORY[0x277CC8C60]);
    v26 = v37;
    sub_270B317AC();
    (*(v22 + 8))(v26, v20);
    v29(v19, 0, 1, v12);
    sub_270B2D1FC(v19, &v10[v24], &qword_280843D60, &qword_270B328E8);
    sub_270B2CB48(v10, v34, type metadata accessor for UserNotification.LocalizedContent);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return sub_270B09BA4(v10, type metadata accessor for UserNotification.LocalizedContent);
}

uint64_t UserNotification.LocalizedContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_270B3116C();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x28223BE20](v8);
  v20 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844818, &qword_270B34338);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2CC20();
  sub_270B3190C();
  if (!v3[1] || (v23 = 0, sub_270B3180C(), !v2))
  {
    if (!v3[3] || (v24 = 1, sub_270B3180C(), !v2))
    {
      if (!v3[5] || (v25 = 2, sub_270B3180C(), !v2))
      {
        v14 = type metadata accessor for UserNotification.LocalizedContent(0);
        sub_270B2D194(v3 + *(v14 + 28), v7, &qword_280843D60, &qword_270B328E8);
        v16 = v21;
        v15 = v22;
        if ((*(v21 + 48))(v7, 1, v22) == 1)
        {
          (*(v11 + 8))(v13, v10);
          return sub_270B1E6D8(v7, &qword_280843D60, &qword_270B328E8);
        }

        v18 = v20;
        (*(v16 + 32))();
        v26 = 3;
        sub_270B2C608(&qword_280843D78, MEMORY[0x277CC8C40], MEMORY[0x277CC8C48]);
        sub_270B3182C();
        (*(v16 + 8))(v18, v15);
      }
    }
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_270B26F54()
{
  sub_270B318BC();
  sub_270B3142C();

  return sub_270B318EC();
}

uint64_t sub_270B27024(uint64_t a1)
{
  sub_270B3142C();
}

uint64_t sub_270B270E0(uint64_t a1)
{
  sub_270B318BC();
  sub_270B3142C();

  return sub_270B318EC();
}

unint64_t sub_270B271AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_270B2FE88(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_270B271DC(unint64_t *a1@<X8>)
{
  v2 = 0xEE00656C74695464;
  v3 = 0x657A696C61636F6CLL;
  v4 = 0xED000079646F4264;
  v5 = 0x657A696C61636F6CLL;
  if (*v1 != 2)
  {
    v5 = 0x7972616D6D7573;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000270B36840;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_270B27278()
{
  v1 = 0x657A696C61636F6CLL;
  v2 = 0x7972616D6D7573;
  if (*v0 == 2)
  {
    v2 = 0x657A696C61636F6CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

unint64_t sub_270B27300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270B2FE88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270B27328(uint64_t a1)
{
  v2 = sub_270B2CC20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B27364(uint64_t a1)
{
  v2 = sub_270B2CC20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserNotification.LocalizedContent.hash(into:)(uint64_t a1)
{
  v2 = sub_270B3116C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  if (v1[1])
  {
    sub_270B318DC();
    sub_270B3142C();
    if (v1[3])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_270B318DC();
    if (v1[5])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_270B318DC();
  if (!v1[3])
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_270B318DC();
  sub_270B3142C();
  if (v1[5])
  {
LABEL_4:
    sub_270B318DC();
    sub_270B3142C();
    goto LABEL_8;
  }

LABEL_7:
  sub_270B318DC();
LABEL_8:
  v9 = type metadata accessor for UserNotification.LocalizedContent(0);
  sub_270B2D194(v1 + *(v9 + 28), v8, &qword_280843D60, &qword_270B328E8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_270B318DC();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_270B318DC();
    sub_270B2C608(&qword_280844820, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_270B3137C();
    (*(v3 + 8))(v5, v2);
  }

  if (*(v1 + *(v9 + 32)) != 2)
  {
    sub_270B318DC();
  }

  return sub_270B318DC();
}

UserNotificationsServices::UserNotification::IncomingPriority_optional __swiftcall UserNotification.IncomingPriority.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 300)
  {
    switch(rawValue)
    {
      case 100:
        *v1 = 0;
        return rawValue;
      case 200:
        *v1 = 1;
        return rawValue;
      case 300:
        *v1 = 2;
        return rawValue;
    }

LABEL_13:
    *v1 = 7;
    return rawValue;
  }

  if (rawValue > 302)
  {
    if (rawValue == 303)
    {
      *v1 = 5;
      return rawValue;
    }

    if (rawValue == 304)
    {
      *v1 = 6;
      return rawValue;
    }

    goto LABEL_13;
  }

  if (rawValue == 301)
  {
    *v1 = 3;
  }

  else
  {
    *v1 = 4;
  }

  return rawValue;
}

uint64_t sub_270B27934()
{
  v1 = *v0;
  sub_270B318BC();
  MEMORY[0x2743B0EF0](qword_270B35ED8[v1]);
  return sub_270B318EC();
}

uint64_t sub_270B279BC(uint64_t a1)
{
  v2 = *v1;
  sub_270B318BC();
  MEMORY[0x2743B0EF0](qword_270B35ED8[v2]);
  return sub_270B318EC();
}

uint64_t sub_270B27B48@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_270B27B84(uint64_t a1)
{
  v2 = sub_270B2D0A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B27BC0(uint64_t a1)
{
  v2 = sub_270B2D0A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserNotification.SecureAttachments.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844828, &qword_270B34340);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2D0A0();
  sub_270B3190C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_270B27D60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844828, &qword_270B34340);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2D0A0();
  sub_270B3190C();
  return (*(v3 + 8))(v5, v2);
}

UserNotificationsServices::UserNotification::Origin_optional __swiftcall UserNotification.Origin.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void UserNotification.LegacyContent.category.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 42);
  v8 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 42) = v7;
  *(a1 + 40) = v8;
  sub_270B2D0F4(v2, v3, v4, v5, v6);
}

__n128 UserNotification.LegacyContent.category.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 42);
  sub_270B2D144(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  *(v1 + 32) = v3;
  *(v1 + 42) = v5;
  *(v1 + 40) = v4;
  return result;
}

uint64_t UserNotification.LegacyContent.isAllDayEvent.setter(char a1)
{
  result = type metadata accessor for UserNotification.LegacyContent(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t UserNotification.LegacyContent.dismissAfterDuration.setter(char a1)
{
  result = type metadata accessor for UserNotification.LegacyContent(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

UserNotificationsServices::UserNotification::LegacyContent::IdentityImageStyle_optional __swiftcall UserNotification.LegacyContent.IdentityImageStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t UserNotification.LegacyContent.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for UserNotification.LegacyContent(0);
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 27) = 0u;
  v3 = v2[5];
  v4 = sub_270B311EC();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = sub_270B3115C();
  result = (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *(a1 + v2[7]) = 0;
  *(a1 + v2[8]) = 0;
  return result;
}

uint64_t UserNotification.LegacyContent.isEmpty.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844840, &qword_270B34350);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844838, &qword_270B34348);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  if (!*(v0 + 8) && (v7 = type metadata accessor for UserNotification.LegacyContent(0), sub_270B2D194(v0 + v7[5], v6, &qword_280844838, &qword_270B34348), v8 = sub_270B311EC(), v9 = (*(*(v8 - 8) + 48))(v6, 1, v8), sub_270B1E6D8(v6, &qword_280844838, &qword_270B34348), v9 == 1) && (sub_270B2D194(v0 + v7[6], v3, &qword_280844840, &qword_270B34350), v10 = sub_270B3115C(), v11 = (*(*(v10 - 8) + 48))(v3, 1, v10), sub_270B1E6D8(v3, &qword_280844840, &qword_270B34350), v11 == 1) && (*(v0 + v7[7]) & 1) == 0)
  {
    v12 = *(v0 + v7[8]) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_270B28688()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 0x6E6F697461727564;
  v4 = 0x7961446C6C417369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746144746E657665;
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

uint64_t sub_270B28738@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_270B2FED4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_270B2876C(uint64_t a1)
{
  v2 = sub_270B2DCA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B287A8(uint64_t a1)
{
  v2 = sub_270B2DCA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserNotification.LegacyContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844848, &qword_270B34358);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2DCA4();
  sub_270B3190C();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = *(v3 + 42);
  v14 = *(v3 + 40);
  v17 = *v3;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v23 = v13;
  v22 = v14;
  v16[15] = 0;
  sub_270B2D0F4(v17, v9, v10, v11, v12);
  sub_270B2DCF8();
  sub_270B317FC();
  sub_270B2D144(v17, v18, v19, v20, v21);
  if (!v2)
  {
    type metadata accessor for UserNotification.LegacyContent(0);
    LOBYTE(v17) = 1;
    sub_270B311EC();
    sub_270B2C608(&qword_2808447C8, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_270B317FC();
    LOBYTE(v17) = 2;
    sub_270B3115C();
    sub_270B2C608(&qword_280844860, MEMORY[0x277CC8990], MEMORY[0x277CC8998]);
    sub_270B317FC();
    LOBYTE(v17) = 3;
    sub_270B3181C();
    LOBYTE(v17) = 4;
    sub_270B3181C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t UserNotification.LegacyContent.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_270B3115C();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844840, &qword_270B34350);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = &v30 - v7;
  v8 = sub_270B311EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844838, &qword_270B34348);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = *(v1 + 8);
  if (v15)
  {
    v33 = v8;
    v16 = *(v1 + 40);
    v17 = *(v1 + 42);
    v32 = v9;
    v18 = *(v1 + 24);
    v19 = *(v1 + 32);
    v20 = a1;
    v21 = v2[2];
    v31 = v11;
    v22 = v2;
    v23 = *v2;
    *&v38 = v23;
    *(&v38 + 1) = v15;
    *v39 = v21;
    *&v39[8] = v18;
    *&v39[16] = v19;
    v39[26] = v17;
    *&v39[24] = v16;
    sub_270B318DC();
    v40[0] = v23;
    v40[1] = v15;
    v2 = v22;
    v11 = v31;
    v40[2] = v21;
    v40[3] = v18;
    v9 = v32;
    v40[4] = v19;
    v42 = v17;
    v41 = v16;
    v8 = v33;
    sub_270B2DD4C(v40, &v43);
    UserNotification.LegacyCategory.hash(into:)(v20);
    v43 = v38;
    v44[0] = *v39;
    *(v44 + 11) = *&v39[11];
    sub_270B2DD84(&v43);
  }

  else
  {
    sub_270B318DC();
  }

  v24 = type metadata accessor for UserNotification.LegacyContent(0);
  sub_270B2D194(v2 + *(v24 + 20), v14, &qword_280844838, &qword_270B34348);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_270B318DC();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_270B318DC();
    sub_270B2C608(&qword_2808447D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_270B3137C();
    (*(v9 + 8))(v11, v8);
  }

  v26 = v36;
  v25 = v37;
  v27 = v35;
  sub_270B2D194(v2 + *(v24 + 24), v35, &qword_280844840, &qword_270B34350);
  if ((*(v26 + 48))(v27, 1, v25) == 1)
  {
    sub_270B318DC();
  }

  else
  {
    v28 = v34;
    (*(v26 + 32))(v34, v27, v25);
    sub_270B318DC();
    sub_270B2C608(&qword_280844868, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_270B3137C();
    (*(v26 + 8))(v28, v25);
  }

  sub_270B318DC();
  return sub_270B318DC();
}

uint64_t sub_270B28F90(uint64_t (*a1)(void *))
{
  sub_270B318BC();
  a1(v3);
  return sub_270B318EC();
}

uint64_t UserNotification.LegacyContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844840, &qword_270B34350);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844838, &qword_270B34348);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844870, &qword_270B34360);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for UserNotification.LegacyContent(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v13 + 27) = 0u;
  *v13 = 0u;
  v13[1] = 0u;
  v14 = v11[7];
  v15 = sub_270B311EC();
  v16 = *(*(v15 - 8) + 56);
  v46 = v14;
  v16(v13 + v14, 1, 1, v15);
  v17 = v11[8];
  v18 = sub_270B3115C();
  (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
  v19 = v11[9];
  *(v13 + v19) = 0;
  v20 = v11[10];
  v53 = v13;
  *(v13 + v20) = 0;
  v21 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_270B2DCA4();
  v49 = v9;
  v22 = v52;
  sub_270B318FC();
  if (v22)
  {
    v23 = v53;
  }

  else
  {
    v52 = v15;
    v43 = v19;
    v44 = v17;
    v42 = v20;
    v25 = v47;
    v24 = v48;
    v61 = 0;
    sub_270B2DDB4();
    v26 = v49;
    sub_270B3177C();
    v27 = v57;
    v60 = v58;
    v28 = v59;
    v23 = v53;
    v29 = *v53;
    v30 = v53[1];
    v31 = v53[2];
    v32 = v53[3];
    v33 = v53[4];
    v34 = v53 + 5;
    v41 = v55;
    v40 = v56;
    sub_270B2D144(v29, v30, v31, v32, v33);
    v35 = v40;
    *v23 = v41;
    *(v23 + 16) = v35;
    *(v23 + 32) = v27;
    *(v34 + 2) = v28;
    *v34 = v60;
    v36 = v51;
    LOBYTE(v55) = 1;
    sub_270B2C608(&qword_2808447E0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_270B3177C();
    sub_270B2D1FC(v25, v23 + v46, &qword_280844838, &qword_270B34348);
    LOBYTE(v55) = 2;
    sub_270B2C608(&qword_280844880, MEMORY[0x277CC8990], MEMORY[0x277CC89B0]);
    sub_270B3177C();
    sub_270B2D1FC(v24, v23 + v44, &qword_280844840, &qword_270B34350);
    LOBYTE(v55) = 3;
    v38 = sub_270B3179C();
    v39 = v50;
    *(v23 + v43) = v38 & 1;
    LOBYTE(v55) = 4;
    LOBYTE(v27) = sub_270B3179C();
    (*(v39 + 8))(v26, v36);
    *(v23 + v42) = v27 & 1;
    sub_270B2CB48(v23, v45, type metadata accessor for UserNotification.LegacyContent);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  return sub_270B09BA4(v23, type metadata accessor for UserNotification.LegacyContent);
}

uint64_t sub_270B29590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_270B318BC();
  a3(v5);
  return sub_270B318EC();
}

uint64_t sub_270B295F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_270B318BC();
  a4(v6);
  return sub_270B318EC();
}

uint64_t UserNotification.LegacyCategory.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserNotification.LegacyCategory.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserNotification.LegacyCategory.actions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t UserNotification.LegacyCategory.actionsMenuTitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t UserNotification.LegacyCategory.actionsMenuTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall UserNotification.LegacyCategory.init(identifier:)(UserNotificationsServices::UserNotification::LegacyCategory *__return_ptr retstr, Swift::String identifier)
{
  v2 = MEMORY[0x277D84F90];
  retstr->actionsMenuTitle.value._countAndFlagsBits = 0;
  retstr->actionsMenuTitle.value._object = 0;
  retstr->identifier._object = identifier._object;
  retstr->actions._rawValue = v2;
  *(&retstr->actionsMenuTitle.value._object + 7) = 0;
  retstr->identifier._countAndFlagsBits = identifier._countAndFlagsBits;
}

unint64_t sub_270B29880()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD00000000000001DLL;
  if (v1 == 4)
  {
    v3 = 0x657263536B636F6CLL;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x736E6F69746361;
  if (v1 != 1)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_270B2995C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_270B3009C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_270B29984(uint64_t a1)
{
  v2 = sub_270B2DE08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B299C0(uint64_t a1)
{
  v2 = sub_270B2DE08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserNotification.LegacyCategory.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844888, &qword_270B34368);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v8 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = v8;
  v15 = *(v1 + 32);
  LODWORD(v8) = *(v1 + 40);
  v14[2] = *(v1 + 41);
  v14[3] = v8;
  v14[1] = *(v1 + 42);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_270B2DE08();
  sub_270B3190C();
  v24 = 0;
  sub_270B3180C();
  if (!v2)
  {
    v18 = v17;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844898, &qword_270B34370);
    sub_270B2DEB0(&qword_2808448A0, sub_270B2DE5C, MEMORY[0x277D83948]);
    sub_270B3182C();
    v22 = 2;
    sub_270B317EC();
    v21 = 3;
    sub_270B3181C();
    v20 = 4;
    sub_270B3181C();
    v19 = 5;
    sub_270B3181C();
  }

  return (*(v5 + 8))(v7, v12);
}

uint64_t UserNotification.LegacyCategory.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  sub_270B3142C();
  sub_270B2BF4C(a1, v4);
  sub_270B318DC();
  if (v5)
  {
    sub_270B3142C();
  }

  sub_270B318DC();
  sub_270B318DC();
  return sub_270B318DC();
}

uint64_t UserNotification.LegacyCategory.hashValue.getter()
{
  sub_270B318BC();
  UserNotification.LegacyCategory.hash(into:)(v1);
  return sub_270B318EC();
}

uint64_t UserNotification.LegacyCategory.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808448B0, &qword_270B34378);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2DE08();
  sub_270B318FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v27[0]) = 0;
  v9 = sub_270B3178C();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844898, &qword_270B34370);
  LOBYTE(v25) = 1;
  sub_270B2DEB0(&qword_2808448B8, sub_270B2DF28, MEMORY[0x277D83978]);
  sub_270B317AC();
  v24 = v27[0];
  LOBYTE(v27[0]) = 2;
  v22 = sub_270B3176C();
  v23 = v12;
  LOBYTE(v27[0]) = 3;
  v31 = sub_270B3179C();
  LOBYTE(v27[0]) = 4;
  v21 = sub_270B3179C();
  v32 = 5;
  v13 = sub_270B3179C();
  v20 = v31 & 1;
  v31 = v21 & 1;
  (*(v6 + 8))(v8, v5);
  v21 = v13 & 1;
  *&v25 = v9;
  *(&v25 + 1) = v11;
  v15 = v23;
  v14 = v24;
  v16 = v22;
  *v26 = v24;
  *&v26[8] = v22;
  *&v26[16] = v23;
  v17 = v20;
  v26[24] = v20;
  v26[25] = v31;
  v26[26] = v21;
  v18 = *v26;
  *a2 = v25;
  a2[1] = v18;
  *(a2 + 27) = *&v26[11];
  sub_270B2DD4C(&v25, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v27[0] = v9;
  v27[1] = v11;
  v27[2] = v14;
  v27[3] = v16;
  v27[4] = v15;
  v28 = v17;
  v29 = v31;
  v30 = v21;
  return sub_270B2DD84(v27);
}

uint64_t sub_270B2A144()
{
  sub_270B318BC();
  UserNotification.LegacyCategory.hash(into:)(v1);
  return sub_270B318EC();
}

uint64_t sub_270B2A188(uint64_t a1)
{
  sub_270B318BC();
  UserNotification.LegacyCategory.hash(into:)(v2);
  return sub_270B318EC();
}

uint64_t UserNotification.LegacyAction.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserNotification.LegacyAction.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserNotification.LegacyAction.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t UserNotification.LegacyAction.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t UserNotification.LegacyAction.textPlaceholder.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t UserNotification.LegacyAction.textPlaceholder.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

UserNotificationsServices::UserNotification::LegacyAction::Style_optional __swiftcall UserNotification.LegacyAction.Style.init(rawValue:)(Swift::Int rawValue)
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

void *sub_270B2A46C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_270B2A48C()
{
  v1 = *v0;
  sub_270B318BC();
  MEMORY[0x2743B0EF0](v1);
  return sub_270B318EC();
}

uint64_t sub_270B2A4D4(uint64_t a1)
{
  v2 = *v1;
  sub_270B318BC();
  MEMORY[0x2743B0EF0](v2);
  return sub_270B318EC();
}

UserNotificationsServices::UserNotification::LegacyAction::ActionType_optional __swiftcall UserNotification.LegacyAction.ActionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void __swiftcall UserNotification.LegacyAction.init(identifier:)(UserNotificationsServices::UserNotification::LegacyAction *__return_ptr retstr, Swift::String identifier)
{
  *&retstr->style = 0;
  retstr->title = 0u;
  retstr->textPlaceholder = 0u;
  retstr->substituteEmojiInTextInput = 0;
  retstr->identifier = identifier;
}

uint64_t sub_270B2A6B4()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x656C746974;
  v4 = 0x63616C5074786574;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C797473;
  if (v1 != 1)
  {
    v5 = 0x79546E6F69746361;
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

uint64_t sub_270B2A77C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_270B302B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_270B2A7A4(uint64_t a1)
{
  v2 = sub_270B2DF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B2A7E0(uint64_t a1)
{
  v2 = sub_270B2DF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserNotification.LegacyAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808448C8, &qword_270B34380);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *(v1 + 16);
  v18 = *(v1 + 17);
  v19 = v7;
  v8 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = v8;
  v9 = *(v1 + 40);
  v14 = *(v1 + 48);
  v15 = v9;
  v13[3] = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2DF7C();
  sub_270B3190C();
  v28 = 0;
  v10 = v20;
  sub_270B3180C();
  if (!v10)
  {
    v11 = v18;
    v27 = v19;
    v26 = 1;
    sub_270B2DFD0();
    sub_270B3182C();
    v25 = v11;
    v24 = 2;
    sub_270B2E024();
    sub_270B3182C();
    v23 = 3;
    sub_270B317EC();
    v22 = 4;
    sub_270B317EC();
    v21 = 5;
    sub_270B3181C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t UserNotification.LegacyAction.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  sub_270B3142C();
  MEMORY[0x2743B0EF0](v2);
  MEMORY[0x2743B0EF0](v3);
  if (!v4)
  {
    sub_270B318DC();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_270B318DC();
    return sub_270B318DC();
  }

  sub_270B318DC();
  sub_270B3142C();
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_270B318DC();
  sub_270B3142C();
  return sub_270B318DC();
}

uint64_t UserNotification.LegacyAction.hashValue.getter()
{
  sub_270B318BC();
  UserNotification.LegacyAction.hash(into:)(v1);
  return sub_270B318EC();
}

uint64_t UserNotification.LegacyAction.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808448E8, &qword_270B34388);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2DF7C();
  sub_270B318FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v34[0]) = 0;
  v9 = sub_270B3178C();
  v11 = v10;
  v30 = v9;
  LOBYTE(v31) = 1;
  sub_270B2E078();
  sub_270B317AC();
  v12 = LOBYTE(v34[0]);
  LOBYTE(v31) = 2;
  sub_270B2E0CC();
  sub_270B317AC();
  v42 = v12;
  v29 = LOBYTE(v34[0]);
  LOBYTE(v34[0]) = 3;
  v13 = sub_270B3176C();
  v15 = v14;
  v28 = v13;
  LOBYTE(v34[0]) = 4;
  v26 = sub_270B3176C();
  v27 = v16;
  v43 = 5;
  v17 = sub_270B3179C();
  (*(v6 + 8))(v8, v5);
  v25 = v17 & 1;
  v18 = v30;
  *&v31 = v30;
  *(&v31 + 1) = v11;
  LOBYTE(v32) = v42;
  BYTE1(v32) = v29;
  v19 = v27;
  v20 = v28;
  *(&v32 + 1) = v28;
  *v33 = v15;
  v21 = v26;
  *&v33[8] = v26;
  *&v33[16] = v27;
  v33[24] = v25;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  a2[2] = *v33;
  *(a2 + 41) = *&v33[9];
  sub_270B2E120(&v31, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v34[0] = v18;
  v34[1] = v11;
  v35 = v42;
  v36 = v29;
  v37 = v20;
  v38 = v15;
  v39 = v21;
  v40 = v19;
  v41 = v25;
  return sub_270B2E158(v34);
}

uint64_t sub_270B2AF34()
{
  sub_270B318BC();
  UserNotification.LegacyAction.hash(into:)(v1);
  return sub_270B318EC();
}

uint64_t sub_270B2AF78(uint64_t a1)
{
  sub_270B318BC();
  UserNotification.LegacyAction.hash(into:)(v2);
  return sub_270B318EC();
}

unint64_t sub_270B2B148@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_270B314CC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_270B209C4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_270B209C4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_270B314BC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_270B3144C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_270B3144C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_270B314CC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_270B209C4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_270B314CC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_270B209C4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_270B209C4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_270B3144C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_270B2B508(uint64_t a1)
{
  v2 = sub_270B3116C();
  v18 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v17 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for UserNotification.LocalizedContent(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446D0, &qword_270B342E8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - v12;
  sub_270B2D194(v1, &v17 - v12, &qword_2808446D0, &qword_270B342E8);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    return sub_270B318DC();
  }

  sub_270B307AC(v13, v10, type metadata accessor for UserNotification.LocalizedContent);
  sub_270B318DC();
  if (v10[1])
  {
    sub_270B318DC();
    sub_270B3142C();
  }

  else
  {
    sub_270B318DC();
  }

  v15 = v18;
  if (!v10[3])
  {
    sub_270B318DC();
    if (v10[5])
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_270B318DC();
    goto LABEL_11;
  }

  sub_270B318DC();
  sub_270B3142C();
  if (!v10[5])
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_270B318DC();
  sub_270B3142C();
LABEL_11:
  sub_270B2D194(v10 + *(v7 + 28), v6, &qword_280843D60, &qword_270B328E8);
  if ((*(v15 + 48))(v6, 1, v2) == 1)
  {
    sub_270B318DC();
  }

  else
  {
    v16 = v17;
    (*(v15 + 32))(v17, v6, v2);
    sub_270B318DC();
    sub_270B2C608(&qword_280844820, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_270B3137C();
    (*(v15 + 8))(v16, v2);
  }

  if (*(v10 + *(v7 + 32)) != 2)
  {
    sub_270B318DC();
  }

  sub_270B318DC();
  return sub_270B09BA4(v10, type metadata accessor for UserNotification.LocalizedContent);
}

uint64_t sub_270B2B93C(uint64_t a1)
{
  v3 = sub_270B3115C();
  v44 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844840, &qword_270B34350);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v37 - v7;
  v41 = sub_270B311EC();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844838, &qword_270B34348);
  MEMORY[0x28223BE20](v9 - 8);
  v39 = &v37 - v10;
  v11 = type metadata accessor for UserNotification.LegacyContent(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446C8, &qword_270B342E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  sub_270B2D194(v1, &v37 - v16, &qword_2808446C8, &qword_270B342E0);
  v18 = *(v12 + 48);
  v43 = v11;
  if (v18(v17, 1, v11) == 1)
  {
    return sub_270B318DC();
  }

  v37 = v5;
  sub_270B307AC(v17, v14, type metadata accessor for UserNotification.LegacyContent);
  sub_270B318DC();
  v20 = *(v14 + 1);
  if (v20)
  {
    v21 = *(v14 + 20);
    v22 = v14[42];
    v23 = *(v14 + 3);
    v24 = *(v14 + 4);
    v25 = a1;
    v26 = *(v14 + 2);
    v27 = v3;
    *&v45 = *v14;
    v28 = v45;
    *(&v45 + 1) = v20;
    *v46 = v26;
    *&v46[8] = v23;
    *&v46[16] = v24;
    v46[26] = v22;
    *&v46[24] = v21;
    sub_270B318DC();
    v47[0] = v28;
    v47[1] = v20;
    v3 = v27;
    v47[2] = v26;
    v47[3] = v23;
    v47[4] = v24;
    v49 = v22;
    v48 = v21;
    sub_270B2DD4C(v47, &v50);
    UserNotification.LegacyCategory.hash(into:)(v25);
    v50 = v45;
    v51[0] = *v46;
    *(v51 + 11) = *&v46[11];
    sub_270B2DD84(&v50);
  }

  else
  {
    sub_270B318DC();
  }

  v29 = v43;
  v30 = v39;
  sub_270B2D194(&v14[*(v43 + 20)], v39, &qword_280844838, &qword_270B34348);
  v31 = v40;
  v32 = v41;
  if ((*(v40 + 48))(v30, 1, v41) == 1)
  {
    sub_270B318DC();
  }

  else
  {
    v33 = v38;
    (*(v31 + 32))(v38, v30, v32);
    sub_270B318DC();
    sub_270B2C608(&qword_2808447D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_270B3137C();
    (*(v31 + 8))(v33, v32);
  }

  v34 = v37;
  v35 = v42;
  sub_270B2D194(&v14[*(v29 + 24)], v42, &qword_280844840, &qword_270B34350);
  if ((*(v44 + 48))(v35, 1, v3) == 1)
  {
    sub_270B318DC();
  }

  else
  {
    v36 = v44;
    (*(v44 + 32))(v34, v35, v3);
    sub_270B318DC();
    sub_270B2C608(&qword_280844868, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_270B3137C();
    (*(v36 + 8))(v34, v3);
  }

  sub_270B318DC();
  sub_270B318DC();
  return sub_270B09BA4(v14, type metadata accessor for UserNotification.LegacyContent);
}

uint64_t sub_270B2BF4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2743B0EF0](v3);
  if (v3)
  {
    v5 = a2 + 88;
    do
    {
      v6 = *(v5 - 40);
      v7 = *(v5 - 39);
      v8 = *(v5 - 24);
      v9 = *(v5 - 8);

      sub_270B3142C();
      MEMORY[0x2743B0EF0](v6);
      MEMORY[0x2743B0EF0](v7);
      if (v8)
      {
        sub_270B318DC();
        sub_270B3142C();
        if (!v9)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_270B318DC();
        if (!v9)
        {
LABEL_9:
          sub_270B318DC();
          goto LABEL_4;
        }
      }

      sub_270B318DC();
      sub_270B3142C();
LABEL_4:
      v5 += 64;
      sub_270B318DC();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s25UserNotificationsServices0A12NotificationV12LegacyActionV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v5 = a1[3];
  v4 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v13 = *(a2 + 40);
  v12 = *(a2 + 48);
  v23 = *(a2 + 56);
  v24 = *(a1 + 56);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    result = 0;
    if (v2 != v8 || v3 != v9)
    {
      return result;
    }

LABEL_9:
    if (v4)
    {
      if (!v11)
      {
        return 0;
      }

      if (v5 != v10 || v4 != v11)
      {
        v19 = v6;
        v20 = sub_270B3184C();
        v6 = v19;
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v11)
    {
      return 0;
    }

    if (v7)
    {
      if (v12 && (v6 == v13 && v7 == v12 || (sub_270B3184C() & 1) != 0))
      {
        return v24 ^ v23 ^ 1u;
      }
    }

    else if (!v12)
    {
      return v24 ^ v23 ^ 1u;
    }

    return 0;
  }

  v21 = *(a2 + 24);
  v22 = a1[4];
  v15 = *(a2 + 48);
  v16 = a1[6];
  v17 = a1[5];
  v18 = sub_270B3184C();
  result = 0;
  if ((v18 & 1) != 0 && v2 == v8)
  {
    v6 = v17;
    v7 = v16;
    v12 = v15;
    v10 = v21;
    v4 = v22;
    if (v3 == v9)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t _s25UserNotificationsServices0A12NotificationV14LegacyCategoryV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 41);
  v14 = *(a2 + 42);
  v15 = *(a1 + 42);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_270B3184C() & 1) == 0 || (sub_270B20AD4(v2, v8) & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    result = 0;
    if (v9)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!v9)
  {
    return 0;
  }

  if (v3 != v7 || v4 != v9)
  {
    v13 = sub_270B3184C();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_16:
    if ((v5 ^ v10))
    {
      return result;
    }

    goto LABEL_17;
  }

  result = 0;
  if (v5 != v10)
  {
    return result;
  }

LABEL_17:
  if (((v6 ^ v11) & 1) == 0)
  {
    return v15 ^ v14 ^ 1u;
  }

  return result;
}

uint64_t _s25UserNotificationsServices0A12NotificationV8BehaviorV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    v4 = *(a1 + 1);
    v5 = *(a2 + 1);
    if (v4)
    {
      if (v5)
      {
        sub_270B30764(0, &qword_2808447F8, 0x277D058E0);
        v6 = v5;
        v7 = v4;
        v8 = sub_270B3163C();

        if (v8)
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

BOOL _s25UserNotificationsServices0A12NotificationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  sub_270B30764(0, &qword_280844AA8, 0x277D82BB8);
  if ((sub_270B3163C() & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    sub_270B30764(0, &qword_28125CA18, 0x277CE1F98);
    v8 = v5;
    v9 = v4;
    v10 = sub_270B3163C();

    return v10 & 1;
  }

  return result;
}

unint64_t sub_270B2C4B8()
{
  result = qword_2808446F0;
  if (!qword_2808446F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808446F0);
  }

  return result;
}

unint64_t sub_270B2C50C()
{
  result = qword_2808446F8;
  if (!qword_2808446F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808446F8);
  }

  return result;
}

unint64_t sub_270B2C560()
{
  result = qword_280844708;
  if (!qword_280844708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844708);
  }

  return result;
}

unint64_t sub_270B2C5B4()
{
  result = qword_280844710;
  if (!qword_280844710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844710);
  }

  return result;
}

uint64_t sub_270B2C608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_270B2C650()
{
  result = qword_280844730;
  if (!qword_280844730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844730);
  }

  return result;
}

unint64_t sub_270B2C6A4()
{
  result = qword_280844738;
  if (!qword_280844738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844738);
  }

  return result;
}

unint64_t sub_270B2C6F8()
{
  result = qword_280844740;
  if (!qword_280844740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844740);
  }

  return result;
}

unint64_t sub_270B2C74C()
{
  result = qword_280844748;
  if (!qword_280844748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844748);
  }

  return result;
}

unint64_t sub_270B2C7A0()
{
  result = qword_280844750;
  if (!qword_280844750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844750);
  }

  return result;
}

unint64_t sub_270B2C7F4()
{
  result = qword_280844760;
  if (!qword_280844760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844760);
  }

  return result;
}

unint64_t sub_270B2C848()
{
  result = qword_280844768;
  if (!qword_280844768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844768);
  }

  return result;
}

unint64_t sub_270B2C89C()
{
  result = qword_280844770;
  if (!qword_280844770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808446C8, &qword_270B342E0);
    sub_270B2C608(&qword_280844778, type metadata accessor for UserNotification.LegacyContent, &protocol conformance descriptor for UserNotification.LegacyContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844770);
  }

  return result;
}

unint64_t sub_270B2C950()
{
  result = qword_280844780;
  if (!qword_280844780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844780);
  }

  return result;
}

unint64_t sub_270B2C9A4()
{
  result = qword_280844788;
  if (!qword_280844788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844788);
  }

  return result;
}

unint64_t sub_270B2C9F8()
{
  result = qword_280844790;
  if (!qword_280844790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844790);
  }

  return result;
}

unint64_t sub_270B2CA4C()
{
  result = qword_280844798;
  if (!qword_280844798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844798);
  }

  return result;
}

unint64_t sub_270B2CAA0()
{
  result = qword_2808447A8;
  if (!qword_2808447A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808447A8);
  }

  return result;
}

unint64_t sub_270B2CAF4()
{
  result = qword_2808447C0;
  if (!qword_2808447C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808447C0);
  }

  return result;
}

uint64_t sub_270B2CB48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_270B2CBCC()
{
  result = qword_2808447F0;
  if (!qword_2808447F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808447F0);
  }

  return result;
}

unint64_t sub_270B2CC20()
{
  result = qword_280844810;
  if (!qword_280844810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844810);
  }

  return result;
}

BOOL _s25UserNotificationsServices0A12NotificationV16LocalizedContentV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_270B3116C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D68, &qword_270B328F0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_270B3184C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_270B3184C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = a1[5];
  v19 = a2[5];
  if (v18)
  {
    if (!v19 || (a1[4] != a2[4] || v18 != v19) && (sub_270B3184C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v30 = type metadata accessor for UserNotification.LocalizedContent(0);
  v20 = *(v30 + 28);
  v21 = *(v11 + 48);
  sub_270B2D194(a1 + v20, v13, &qword_280843D60, &qword_270B328E8);
  sub_270B2D194(a2 + v20, &v13[v21], &qword_280843D60, &qword_270B328E8);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      sub_270B1E6D8(v13, &qword_280843D60, &qword_270B328E8);
      goto LABEL_30;
    }

LABEL_27:
    sub_270B1E6D8(v13, &qword_280843D68, &qword_270B328F0);
    return 0;
  }

  sub_270B2D194(v13, v10, &qword_280843D60, &qword_270B328E8);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_27;
  }

  (*(v5 + 32))(v7, &v13[v21], v4);
  sub_270B2C608(&qword_280843D70, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
  v24 = sub_270B3139C();
  v25 = *(v5 + 8);
  v25(v7, v4);
  v25(v10, v4);
  sub_270B1E6D8(v13, &qword_280843D60, &qword_270B328E8);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v26 = *(v30 + 32);
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27 != 2)
  {
    return v28 != 2 && ((v28 ^ v27) & 1) == 0;
  }

  return v28 == 2;
}

unint64_t sub_270B2D0A0()
{
  result = qword_280844830;
  if (!qword_280844830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844830);
  }

  return result;
}

void sub_270B2D0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

void sub_270B2D144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_270B2D194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_270B2D1FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s25UserNotificationsServices0A12NotificationV13LegacyContentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v72 = sub_270B3115C();
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v66[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844840, &qword_270B34350);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v66[-v6];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844A80, &qword_270B35EB0);
  MEMORY[0x28223BE20](v71);
  v79 = &v66[-v7];
  v77 = sub_270B311EC();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v69 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844838, &qword_270B34348);
  MEMORY[0x28223BE20](v9 - 8);
  v73 = &v66[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844A88, &unk_270B35EB8);
  v12 = MEMORY[0x28223BE20](v11);
  v75 = &v66[-v13];
  v15 = *a1;
  v14 = *(a1 + 8);
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v18 = *(a1 + 32);
  LODWORD(v13) = *(a1 + 42);
  v81 = a1;
  v19 = *(a1 + 40) | (v13 << 16);
  v20 = *a2;
  v21 = *(a2 + 8);
  v23 = *(a2 + 16);
  v22 = *(a2 + 24);
  v24 = *(a2 + 40) | (*(a2 + 42) << 16);
  v80 = a2;
  v25 = *(a2 + 32);
  v83 = v25;
  v82 = v22;
  if (!v14)
  {
    v27 = v20;
    v70 = v12;
    sub_270B2D0F4(v15, 0, v17, v16, v18);
    if (!v21)
    {
      sub_270B2D0F4(v27, 0, v23, v82, v83);
      sub_270B2D144(v15, 0, v17, v16, v18);
      goto LABEL_10;
    }

    v81 = v23;
    v28 = v23;
    v29 = v82;
    sub_270B2D0F4(v27, v21, v28, v82, v83);
LABEL_8:
    sub_270B2D144(v15, v14, v17, v16, v18);
    sub_270B2D144(v27, v21, v81, v29, v83);
    goto LABEL_24;
  }

  *&v90 = v15;
  *(&v90 + 1) = v14;
  *v91 = v17;
  *&v91[8] = v16;
  *&v91[16] = v18;
  *&v91[24] = v19;
  v91[26] = BYTE2(v19);
  if (!v21)
  {
    v88 = v90;
    *v89 = *v91;
    *&v89[11] = *&v91[11];
    LODWORD(v80) = v24;
    v30 = v25;
    v27 = v20;
    sub_270B2D0F4(v15, v14, v17, v16, v18);
    v81 = v23;
    v31 = v23;
    v29 = v82;
    sub_270B2D0F4(v27, 0, v31, v82, v30);
    sub_270B2D0F4(v15, v14, v17, v16, v18);
    sub_270B2DD84(&v88);
    goto LABEL_8;
  }

  v70 = v12;
  *&v84 = v20;
  *(&v84 + 1) = v21;
  *v85 = v23;
  *&v85[8] = v22;
  *&v85[16] = v25;
  v85[26] = BYTE2(v24);
  *&v85[24] = v24;
  v26 = v20;
  v67 = _s25UserNotificationsServices0A12NotificationV14LegacyCategoryV2eeoiySbAE_AEtFZ_0(&v90, &v84);
  v86 = v84;
  v87[0] = *v85;
  *(v87 + 11) = *&v85[11];
  sub_270B2D0F4(v15, v14, v17, v16, v18);
  sub_270B2D0F4(v26, v21, v23, v82, v83);
  sub_270B2D0F4(v15, v14, v17, v16, v18);
  sub_270B2DD84(&v86);
  v88 = v90;
  *v89 = *v91;
  *&v89[11] = *&v91[11];
  sub_270B2DD84(&v88);
  sub_270B2D144(v15, v14, v17, v16, v18);
  if ((v67 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  v32 = type metadata accessor for UserNotification.LegacyContent(0);
  v33 = v32[5];
  v34 = *(v70 + 48);
  v35 = v81;
  v36 = v75;
  sub_270B2D194(v81 + v33, v75, &qword_280844838, &qword_270B34348);
  v37 = v80;
  sub_270B2D194(v80 + v33, &v36[v34], &qword_280844838, &qword_270B34348);
  v38 = v76;
  v39 = *(v76 + 48);
  v40 = v77;
  if (v39(v36, 1, v77) == 1)
  {
    v41 = v39(&v36[v34], 1, v40);
    v42 = v79;
    v43 = v78;
    if (v41 == 1)
    {
      sub_270B1E6D8(v36, &qword_280844838, &qword_270B34348);
      goto LABEL_17;
    }

LABEL_15:
    v47 = &qword_280844A88;
    v48 = &unk_270B35EB8;
    v49 = v36;
LABEL_23:
    sub_270B1E6D8(v49, v47, v48);
    goto LABEL_24;
  }

  v83 = v32;
  v44 = v73;
  sub_270B2D194(v36, v73, &qword_280844838, &qword_270B34348);
  v45 = v39(&v36[v34], 1, v40);
  v42 = v79;
  v46 = v78;
  if (v45 == 1)
  {
    (*(v38 + 8))(v44, v40);
    goto LABEL_15;
  }

  v50 = &v36[v34];
  v51 = v69;
  (*(v38 + 32))(v69, v50, v40);
  sub_270B2C608(&qword_280844A98, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v52 = sub_270B3139C();
  v53 = *(v38 + 8);
  v53(v51, v40);
  v53(v44, v40);
  sub_270B1E6D8(v36, &qword_280844838, &qword_270B34348);
  v32 = v83;
  v43 = v46;
  v35 = v81;
  if ((v52 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  v54 = v32[6];
  v55 = *(v71 + 48);
  sub_270B2D194(v35 + v54, v42, &qword_280844840, &qword_270B34350);
  sub_270B2D194(v37 + v54, v42 + v55, &qword_280844840, &qword_270B34350);
  v56 = *(v74 + 48);
  v57 = v72;
  if (v56(v42, 1, v72) != 1)
  {
    sub_270B2D194(v42, v43, &qword_280844840, &qword_270B34350);
    if (v56(v42 + v55, 1, v57) != 1)
    {
      v60 = v43;
      v61 = v74;
      v62 = v42 + v55;
      v63 = v68;
      (*(v74 + 32))(v68, v62, v57);
      sub_270B2C608(&qword_280844A90, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
      v64 = sub_270B3139C();
      v65 = *(v61 + 8);
      v65(v63, v57);
      v65(v60, v57);
      sub_270B1E6D8(v42, &qword_280844840, &qword_270B34350);
      if ((v64 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    (*(v74 + 8))(v43, v57);
    goto LABEL_22;
  }

  if (v56(v42 + v55, 1, v57) != 1)
  {
LABEL_22:
    v47 = &qword_280844A80;
    v48 = &qword_270B35EB0;
    v49 = v42;
    goto LABEL_23;
  }

  sub_270B1E6D8(v42, &qword_280844840, &qword_270B34350);
LABEL_27:
  if (*(v35 + v32[7]) == *(v37 + v32[7]))
  {
    v58 = *(v35 + v32[8]) ^ *(v37 + v32[8]) ^ 1;
    return v58 & 1;
  }

LABEL_24:
  v58 = 0;
  return v58 & 1;
}

unint64_t sub_270B2DCA4()
{
  result = qword_280844850;
  if (!qword_280844850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844850);
  }

  return result;
}

unint64_t sub_270B2DCF8()
{
  result = qword_280844858;
  if (!qword_280844858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844858);
  }

  return result;
}

unint64_t sub_270B2DDB4()
{
  result = qword_280844878;
  if (!qword_280844878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844878);
  }

  return result;
}

unint64_t sub_270B2DE08()
{
  result = qword_280844890;
  if (!qword_280844890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844890);
  }

  return result;
}

unint64_t sub_270B2DE5C()
{
  result = qword_2808448A8;
  if (!qword_2808448A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808448A8);
  }

  return result;
}

uint64_t sub_270B2DEB0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280844898, &qword_270B34370);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_270B2DF28()
{
  result = qword_2808448C0;
  if (!qword_2808448C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808448C0);
  }

  return result;
}

unint64_t sub_270B2DF7C()
{
  result = qword_2808448D0;
  if (!qword_2808448D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808448D0);
  }

  return result;
}

unint64_t sub_270B2DFD0()
{
  result = qword_2808448D8;
  if (!qword_2808448D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808448D8);
  }

  return result;
}

unint64_t sub_270B2E024()
{
  result = qword_2808448E0;
  if (!qword_2808448E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808448E0);
  }

  return result;
}

unint64_t sub_270B2E078()
{
  result = qword_2808448F0;
  if (!qword_2808448F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808448F0);
  }

  return result;
}

unint64_t sub_270B2E0CC()
{
  result = qword_2808448F8;
  if (!qword_2808448F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808448F8);
  }

  return result;
}

unint64_t sub_270B2E264()
{
  result = qword_280844918;
  if (!qword_280844918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844918);
  }

  return result;
}

unint64_t sub_270B2E300()
{
  result = qword_280844928;
  if (!qword_280844928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844928);
  }

  return result;
}

unint64_t sub_270B2E354()
{
  result = qword_280844930;
  if (!qword_280844930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844930);
  }

  return result;
}

unint64_t sub_270B2E3AC()
{
  result = qword_280844938;
  if (!qword_280844938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844938);
  }

  return result;
}

unint64_t sub_270B2E404()
{
  result = qword_280844940;
  if (!qword_280844940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844940);
  }

  return result;
}

unint64_t sub_270B2E4A4()
{
  result = qword_280844950;
  if (!qword_280844950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844950);
  }

  return result;
}

unint64_t sub_270B2E4FC()
{
  result = qword_280844958;
  if (!qword_280844958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844958);
  }

  return result;
}

unint64_t sub_270B2E554()
{
  result = qword_280844960;
  if (!qword_280844960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844960);
  }

  return result;
}

unint64_t sub_270B2E5AC()
{
  result = qword_280844968;
  if (!qword_280844968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844968);
  }

  return result;
}

unint64_t sub_270B2E604()
{
  result = qword_280844970;
  if (!qword_280844970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844970);
  }

  return result;
}

unint64_t sub_270B2E65C()
{
  result = qword_280844978;
  if (!qword_280844978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844978);
  }

  return result;
}

void sub_270B2E6D8(uint64_t a1)
{
  sub_270B30764(319, &qword_28125CA30, 0x277CE1F78);
  if (v1 <= 0x3F)
  {
    sub_270B2E9A8(319, &qword_28125CA10, &qword_28125CA18, 0x277CE1F98);
    if (v2 <= 0x3F)
    {
      sub_270B2E954(319, &qword_28125D070, type metadata accessor for UserNotification.LegacyContent);
      if (v3 <= 0x3F)
      {
        sub_270B2E954(319, &qword_28125D000, type metadata accessor for UserNotification.LocalizedContent);
        if (v4 <= 0x3F)
        {
          sub_270B2EE1C(319, &qword_28125CC08, &type metadata for UserNotification.Behavior);
          if (v5 <= 0x3F)
          {
            sub_270B2E9A8(319, &qword_28125CA00, &qword_28125CA08, 0x277CE1FD0);
            if (v6 <= 0x3F)
            {
              sub_270B2E954(319, &qword_28125D0F0, MEMORY[0x277D85578]);
              if (v7 <= 0x3F)
              {
                sub_270B2E9A8(319, &qword_28125C9F0, &qword_28125C9F8, 0x277CE2058);
                if (v8 <= 0x3F)
                {
                  sub_270B2EE1C(319, qword_28125CC10, &type metadata for UserNotification.SecureAttachments);
                  if (v9 <= 0x3F)
                  {
                    sub_270B2EE1C(319, &qword_28125CB90, &type metadata for NotificationPriorityStatus);
                    if (v10 <= 0x3F)
                    {
                      sub_270B2EE1C(319, &qword_28125CB98, &type metadata for NotificationSummaryStatus);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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

void sub_270B2E954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_270B3165C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_270B2E9A8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_270B30764(255, a3, a4);
    v5 = sub_270B3165C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_270B2EA28(uint64_t a1)
{
  result = sub_270B311EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_270B2EAB4(uint64_t a1)
{
  sub_270B2EE1C(319, &qword_28125CA50, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_270B2E954(319, &qword_28125D100, MEMORY[0x277CC8C40]);
    if (v2 <= 0x3F)
    {
      sub_270B2EE1C(319, &qword_28125CA38, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for UserNotification.IncomingPriority(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UserNotification.IncomingPriority(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_270B2ED28(uint64_t a1)
{
  sub_270B2EE1C(319, qword_28125CC50, &type metadata for UserNotification.LegacyCategory);
  if (v1 <= 0x3F)
  {
    sub_270B2E954(319, &qword_28125D0F8, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_270B2E954(319, &qword_28125D108, MEMORY[0x277CC8990]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_270B2EE1C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_270B3165C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_270B2EE8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
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

uint64_t sub_270B2EED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_270B2EF50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_270B2EF98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_270B2F048(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_270B2F0D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_270B2F198(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_270B2F228(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_270B2F318(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_270B2F3A8(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_270B2F48C()
{
  result = qword_280844980;
  if (!qword_280844980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844980);
  }

  return result;
}

unint64_t sub_270B2F4E4()
{
  result = qword_280844988;
  if (!qword_280844988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844988);
  }

  return result;
}

unint64_t sub_270B2F53C()
{
  result = qword_280844990;
  if (!qword_280844990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844990);
  }

  return result;
}

unint64_t sub_270B2F594()
{
  result = qword_280844998;
  if (!qword_280844998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844998);
  }

  return result;
}

unint64_t sub_270B2F5EC()
{
  result = qword_2808449A0;
  if (!qword_2808449A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449A0);
  }

  return result;
}

unint64_t sub_270B2F644()
{
  result = qword_2808449A8;
  if (!qword_2808449A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449A8);
  }

  return result;
}

unint64_t sub_270B2F69C()
{
  result = qword_2808449B0;
  if (!qword_2808449B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449B0);
  }

  return result;
}

unint64_t sub_270B2F6F4()
{
  result = qword_2808449B8;
  if (!qword_2808449B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449B8);
  }

  return result;
}

unint64_t sub_270B2F74C()
{
  result = qword_2808449C0;
  if (!qword_2808449C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449C0);
  }

  return result;
}

unint64_t sub_270B2F7A4()
{
  result = qword_2808449C8;
  if (!qword_2808449C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449C8);
  }

  return result;
}

unint64_t sub_270B2F7FC()
{
  result = qword_2808449D0;
  if (!qword_2808449D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449D0);
  }

  return result;
}

unint64_t sub_270B2F854()
{
  result = qword_2808449D8;
  if (!qword_2808449D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449D8);
  }

  return result;
}

unint64_t sub_270B2F8AC()
{
  result = qword_2808449E0;
  if (!qword_2808449E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449E0);
  }

  return result;
}

unint64_t sub_270B2F904()
{
  result = qword_2808449E8;
  if (!qword_2808449E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449E8);
  }

  return result;
}

unint64_t sub_270B2F95C()
{
  result = qword_2808449F0;
  if (!qword_2808449F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449F0);
  }

  return result;
}

unint64_t sub_270B2F9B4()
{
  result = qword_2808449F8;
  if (!qword_2808449F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449F8);
  }

  return result;
}

unint64_t sub_270B2FA0C()
{
  result = qword_280844A00;
  if (!qword_280844A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A00);
  }

  return result;
}

unint64_t sub_270B2FA64()
{
  result = qword_280844A08;
  if (!qword_280844A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A08);
  }

  return result;
}

unint64_t sub_270B2FABC()
{
  result = qword_280844A10;
  if (!qword_280844A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A10);
  }

  return result;
}

unint64_t sub_270B2FB14()
{
  result = qword_280844A18;
  if (!qword_280844A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A18);
  }

  return result;
}

unint64_t sub_270B2FB6C()
{
  result = qword_280844A20;
  if (!qword_280844A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A20);
  }

  return result;
}

unint64_t sub_270B2FBC4()
{
  result = qword_280844A28;
  if (!qword_280844A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A28);
  }

  return result;
}

unint64_t sub_270B2FC1C()
{
  result = qword_280844A30;
  if (!qword_280844A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A30);
  }

  return result;
}

unint64_t sub_270B2FC74()
{
  result = qword_280844A38;
  if (!qword_280844A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A38);
  }

  return result;
}

unint64_t sub_270B2FCC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_270B3173C();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_270B2FD14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000270B36FF0 == a2;
  if (v3 || (sub_270B3184C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_270B3184C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000270B366D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_270B3184C();

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

unint64_t sub_270B2FE3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_270B3173C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_270B2FE88(uint64_t a1, uint64_t a2)
{
  v2 = sub_270B3173C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_270B2FED4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_270B3184C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000065 || (sub_270B3184C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_270B3184C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7961446C6C417369 && a2 == 0xED0000746E657645 || (sub_270B3184C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000270B37010 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_270B3184C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_270B3009C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_270B3184C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000 || (sub_270B3184C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000270B37030 == a2 || (sub_270B3184C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000270B37050 == a2 || (sub_270B3184C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657263536B636F6CLL && a2 == 0xEE00796C6E4F6E65 || (sub_270B3184C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000270B37070 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_270B3184C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_270B302B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_270B3184C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_270B3184C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570 || (sub_270B3184C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_270B3184C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x63616C5074786574 && a2 == 0xEF7265646C6F6865 || (sub_270B3184C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000270B37090 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_270B3184C();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_270B304C4()
{
  result = qword_280844A40;
  if (!qword_280844A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A40);
  }

  return result;
}

unint64_t sub_270B30518()
{
  result = qword_280844A48;
  if (!qword_280844A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A48);
  }

  return result;
}

unint64_t sub_270B3056C()
{
  result = qword_280844A50;
  if (!qword_280844A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A50);
  }

  return result;
}

unint64_t sub_270B305C0()
{
  result = qword_280844A58;
  if (!qword_280844A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A58);
  }

  return result;
}

unint64_t sub_270B30614()
{
  result = qword_280844A60;
  if (!qword_280844A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A60);
  }

  return result;
}

unint64_t sub_270B30668()
{
  result = qword_280844A68;
  if (!qword_280844A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A68);
  }

  return result;
}

unint64_t sub_270B306BC()
{
  result = qword_280844A70;
  if (!qword_280844A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A70);
  }

  return result;
}

unint64_t sub_270B30710()
{
  result = qword_280844A78;
  if (!qword_280844A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A78);
  }

  return result;
}

uint64_t sub_270B30764(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_270B307AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_270B308F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_270B312BC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_270B312AC();
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

uint64_t UNSNotificationList.list.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}