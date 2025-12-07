void *sub_219892A24(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6310, MEMORY[0x277D35100], 0);
  result = sub_219BE1E34();
  if (v3)
  {
    swift_getObjectType();
    v2 = sub_219BE44F4();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219892AC0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8B88, MEMORY[0x277D300F8], 1);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (v8)
  {
    type metadata accessor for AudioFeedURLHandler();
    v6 = swift_allocObject();
    sub_219897824(MEMORY[0x277D84F90]);
    v7 = sub_219BE2684();

    v6[2] = v7;
    v6[3] = v3;
    sub_2186CB1F0(&v10, (v6 + 4));
    v6[9] = v4;
    v6[10] = v5;
    v6[11] = v8;
    v6[12] = v9;
    return v6;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_219892D04(void *a1)
{
  v2 = sub_219BE26B4();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8B88, MEMORY[0x277D300F8], 1);
  result = sub_219BE1E34();
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE8D30, MEMORY[0x277D2FD00], 1);
    result = sub_219BE1E34();
    if (v4)
    {
      sub_219BE26A4();
      sub_219BDDD24();
      swift_allocObject();
      return sub_219BDDD14();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_219892EB4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for SportsManagementURLHandler();
      v5 = swift_allocObject();
      sub_2186D9594(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
      v6 = *(sub_219BE2644() - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_219C09BA0;
      v9 = (v8 + v7);
      *v9 = 0x4449676174;
      v9[1] = 0xE500000000000000;
      (*(v6 + 104))();
      sub_219897824(MEMORY[0x277D84F90]);
      v10 = sub_219BE2684();

      v5[2] = v10;
      v5[3] = v3;
      v5[4] = v4;
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2198930EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB0440, &protocol descriptor for MagazineActivityNavigatorType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v3 = MEMORY[0x28223BE20](v2);
    v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for MagazineActivityNavigator();
    v17[3] = v8;
    v17[4] = &off_282A634B0;
    v17[0] = v7;
    type metadata accessor for MagazineCategoryURLHandler();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v17, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[6] = v8;
    v9[7] = &off_282A634B0;
    v9[3] = v15;
    sub_219897824(MEMORY[0x277D84F90]);
    v16 = sub_219BE2674();

    v9[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219893380(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB0440, &protocol descriptor for MagazineActivityNavigatorType, 1);
  result = sub_219BE1E34();
  if (v23)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v12 = type metadata accessor for MagazineActivityNavigator();
    v21[3] = v12;
    v21[4] = &off_282A634B0;
    v21[0] = v11;
    a2(0);
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[6] = v12;
    v13[7] = &off_282A634B0;
    v13[3] = v19;
    sub_219897824(MEMORY[0x277D84F90]);
    v20 = sub_219BE2674();

    v13[2] = v20;
    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2198935E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB0440, &protocol descriptor for MagazineActivityNavigatorType, 1);
  result = sub_219BE1E34();
  if (v18)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v3 = MEMORY[0x28223BE20](v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for MagazineActivityNavigator();
    v16[3] = v8;
    v16[4] = &off_282A634B0;
    v16[0] = v7;
    type metadata accessor for IssueURLHandler();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = sub_2198975C8(*v13, v9);
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21989381C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD80, &protocolRef_FCCoreConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB0440, &protocol descriptor for MagazineActivityNavigatorType, 1);
  result = sub_219BE1E34();
  if (!v45)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6398, MEMORY[0x277D35030], 1);
  result = sub_219BE1E34();
  if (!v43)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v38 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480, MEMORY[0x277D34EA8], 0);
  result = sub_219BE1E34();
  v37 = v40;
  if (v40)
  {
    v35 = v41;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    v36 = v34;
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for MagazineActivityNavigator();
    v39[3] = v10;
    v39[4] = &off_282A634B0;
    v39[0] = v9;
    type metadata accessor for BundleSubscriptionURLHandler();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v39, v10);
    v34[1] = v34;
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v11[6] = v10;
    v11[7] = &off_282A634B0;
    v11[3] = v17;
    sub_2186D9594(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
    v18 = sub_219BE2644();
    v19 = *(v18 - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v34[0] = 8 * v20;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_219C870B0;
    v23 = (v22 + v21);
    *v23 = 0x6E676961706D6163;
    *(v23 + 1) = 0xEB0000000064695FLL;
    v24 = *(v19 + 104);
    (v24)(v22 + v21, *MEMORY[0x277D6CC80], v18);
    strcpy(&v23[v20], "campaign_type");
    *&v23[v20 + 14] = -4864;
    v24();
    v25 = &v23[2 * v20];
    *v25 = 0x6576697461657263;
    *(v25 + 1) = 0xEB0000000064695FLL;
    v24();
    v26 = &v23[3 * v20];
    *v26 = 0x6E656B6F7471;
    *(v26 + 1) = 0xE600000000000000;
    v24();
    v27 = &v23[4 * v20];
    *v27 = 0xD000000000000010;
    *(v27 + 1) = 0x8000000219CE9690;
    v24();
    v28 = &v23[5 * v20];
    *v28 = 0x644964656566;
    *(v28 + 1) = 0xE600000000000000;
    v24();
    v29 = &v23[6 * v20];
    *v29 = 0x49656C6369747261;
    *(v29 + 1) = 0xE900000000000064;
    v24();
    v30 = v34[0];
    v31 = &v23[v34[0] - v20];
    *v31 = 0x795468636E75616CLL;
    *(v31 + 1) = 0xEA00000000006570;
    v24();
    strcpy(&v23[v30], "purchaseOrigin");
    v23[v30 + 15] = -18;
    v24();
    sub_219897824(MEMORY[0x277D84F90]);
    v32 = sub_219BE2684();

    v11[2] = v32;
    v11[8] = v38;
    sub_2186CB1F0(&v42, (v11 + 9));
    v33 = v35;
    v11[14] = v37;
    v11[15] = v33;
    __swift_destroy_boxed_opaque_existential_1(v39);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return v11;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_219893E68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE6338, MEMORY[0x277D35098], 1);
    result = sub_219BE1E34();
    if (v5)
    {
      type metadata accessor for AlacarteSubscriptionURLHandler();
      swift_allocObject();
      return sub_218B7F224(v3, &v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219893F80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for MagazineActivityNavigator();
  result = sub_219BE1E24();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &off_282A634B0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219893FF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0, MEMORY[0x277D34178], 1);
  result = sub_219BE1E34();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      type metadata accessor for MagazineActivityNavigator();
      v4 = swift_allocObject();
      sub_2186CB1F0(&v5, v4 + 16);
      *(v4 + 56) = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21989410C()
{
  sub_219897824(MEMORY[0x277D84F90]);
  sub_219BE2674();

  sub_219BE4224();
  swift_allocObject();
  return sub_219BE4214();
}

void *sub_219894184(void *a1)
{
  sub_219897824(MEMORY[0x277D84F90]);
  sub_219BE2674();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6340, MEMORY[0x277D35080], 1);
  result = sub_219BE1E34();
  if (v3)
  {
    sub_219BE3FC4();
    swift_allocObject();
    return sub_219BE3FB4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219894264(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E240, &protocolRef_FCNewsletterManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB8D80, &protocol descriptor for EmailSignupModelFactoryType, 1);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA37A0, &protocol descriptor for FineGrainedNewslettersHandlerType, 1);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    type metadata accessor for EmailSignupURLHandler();
    v6 = swift_allocObject();
    sub_2186D9594(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
    v7 = *(sub_219BE2644() - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C09BA0;
    v10 = (v9 + v8);
    strcpy(v10, "subscriptionId");
    v10[15] = -18;
    (*(v7 + 104))();
    sub_219897824(MEMORY[0x277D84F90]);
    v11 = sub_219BE2684();

    v6[2] = v11;
    v6[3] = v3;
    v6[4] = v4;
    sub_2186CB1F0(&v14, (v6 + 5));
    sub_2186CB1F0(&v12, (v6 + 10));
    v6[15] = v5;
    return v6;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_2198945B8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280E8FEC0, MEMORY[0x277D34388], 0);
    result = sub_219BE1E34();
    if (v6)
    {
      type metadata accessor for FamilySetupURLHandler();
      v4 = swift_allocObject();
      sub_219897824(MEMORY[0x277D84F90]);
      v5 = sub_219BE2684();

      v4[2] = v5;
      v4[3] = v3;
      v4[4] = v6;
      v4[5] = v7;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219894704(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D9594(0, &unk_280EE7420, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC78]);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for ChatterboxURLHandler();
    swift_allocObject();
    v3 = sub_2196EC390(v2);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219894828(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    a2(0);
    v6 = swift_allocObject();
    sub_219897824(MEMORY[0x277D84F90]);
    v7 = sub_219BE2684();

    *(v6 + 16) = v7;
    *(v6 + 24) = v5;
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2198949C4(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2(0);
    swift_allocObject();
    return a3(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219894AEC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBF930, &protocol descriptor for ArticleContextFactoryType, 1);
  result = sub_219BE1E34();
  if (!v58)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E98578, &protocol descriptor for AudioPlaybackOptionsAlertPresenterType, 1);
  result = sub_219BE1E34();
  if (!v56[3])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5390, MEMORY[0x277D6D908], 1);
  result = sub_219BE1E34();
  if (!v55[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  result = sub_219BE1E34();
  if (!v54[3])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, qword_280EAF5E0, &protocolRef_TSPrefetchedArticlesServiceType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedViewContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5700, MEMORY[0x277D6D840], 1);
  result = sub_219BE1E34();
  if (!v53[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9BF00, &protocol descriptor for ArticleLinkBehaviorConfigManagerType, 1);
  result = sub_219BE1E34();
  if (!v52)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FD28, MEMORY[0x277D34640], 1);
  result = sub_219BE1E34();
  if (!v50[3])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v38 = v7;
  v39 = v6;
  v40 = v5;
  v41 = v4;
  v42 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD30, MEMORY[0x277D34638], 1);
  result = sub_219BE1E34();
  if (v49[3])
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    v37[3] = v37;
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    v37[2] = v37;
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v11;
    v19 = *v16;
    v20 = type metadata accessor for ArticleContextFactory();
    v48[3] = v20;
    v48[4] = &off_282A48A48;
    v48[0] = v18;
    v21 = type metadata accessor for ArticleLinkBehaviorConfigManager();
    v46 = v21;
    v47 = &off_282A7E598;
    v45[0] = v19;
    type metadata accessor for ArticleURLHandler();
    v22 = swift_allocObject();
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v48, v20);
    v37[1] = v37;
    v24 = MEMORY[0x28223BE20](v23);
    v26 = (v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26, v24);
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
    v29 = MEMORY[0x28223BE20](v28);
    v31 = (v37 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31, v29);
    v33 = *v26;
    v34 = *v31;
    v44[3] = v20;
    v44[4] = &off_282A48A48;
    v43[4] = &off_282A7E598;
    v44[0] = v33;
    v43[3] = v21;
    v43[0] = v34;
    v22[3] = v42;
    sub_218718690(v44, (v22 + 4));
    sub_218718690(v56, (v22 + 9));
    v22[14] = v41;
    sub_218718690(v55, (v22 + 15));
    sub_218718690(v54, (v22 + 20));
    v35 = v39;
    v22[25] = v40;
    v22[26] = v35;
    v22[32] = v38;
    sub_218718690(v53, (v22 + 33));
    sub_218718690(v43, (v22 + 27));
    sub_218718690(v50, (v22 + 38));
    sub_218718690(v49, (v22 + 43));
    __swift_project_boxed_opaque_existential_1(v22 + 38, v22[41]);
    v36 = sub_219BF4C64();
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v50);
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v56);
    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v22[2] = v36;
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v48);
    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(v57);
    return v22;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_219895340(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE8C20, MEMORY[0x277D30040], 1);
    result = sub_219BE1E34();
    if (v7)
    {
      type metadata accessor for ArticlePreviewURLHandler();
      v4 = swift_allocObject();
      sub_2186D9594(0, &qword_280E8C098, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
      sub_219BE26D4();
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_219C09BA0;
      sub_219BE2664();
      *(v4 + 64) = v5;
      *(v4 + 16) = v3;
      sub_2186CB1F0(&v6, v4 + 24);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_219895568(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E98578, &protocol descriptor for AudioPlaybackOptionsAlertPresenterType, 1);
  result = sub_219BE1E34();
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE5390, MEMORY[0x277D6D908], 1);
    result = sub_219BE1E34();
    if (v6)
    {
      type metadata accessor for AudioOptionsURLHandler();
      v3 = swift_allocObject();
      sub_219897824(MEMORY[0x277D84F90]);
      v4 = sub_219BE2684();

      *(v3 + 16) = v4;
      sub_2186CB1F0(&v7, v3 + 24);
      sub_2186CB1F0(&v5, v3 + 64);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21989569C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedViewContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = result;
  type metadata accessor for TagURLHandler();
  v6 = swift_allocObject();
  if (qword_280E92C18 != -1)
  {
    v8 = v6;
    swift_once();
    v6 = v8;
  }

  v6[2] = qword_280F61958;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v5;
  v7 = v6;

  return v7;
}

void *sub_219895854(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBF930, &protocol descriptor for ArticleContextFactoryType, 1);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v12 = type metadata accessor for ArticleContextFactory();
    v21[3] = v12;
    v21[4] = &off_282A48A48;
    v21[0] = v11;
    type metadata accessor for SpotlightURLHandler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[8] = v12;
    v13[9] = &off_282A48A48;
    v13[5] = v19;
    sub_219897824(MEMORY[0x277D84F90]);
    v20 = sub_219BE2684();

    v13[2] = v20;
    v13[3] = v3;
    v13[4] = v4;
    v13[10] = v5;
    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v13;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219895BB8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for AlternateUniversalLinkURLHandler();
    v3 = swift_allocObject();
    sub_2186D9594(0, &qword_280E8C098, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
    sub_219BE26D4();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_219C09BA0;
    sub_219BE2664();
    *(v3 + 16) = v4;
    *(v3 + 24) = v2;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219895D90(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    a2(0);
    v10 = swift_allocObject();
    sub_2186D9594(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
    v11 = *(sub_219BE2644() - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09BA0;
    v14 = (v13 + v12);
    *v14 = a3;
    v14[1] = a4;
    (*(v11 + 104))();
    sub_219897824(MEMORY[0x277D84F90]);
    v15 = sub_219BE2684();

    *(v10 + 16) = v15;
    *(v10 + 24) = v9;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219895F80(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE65F0, MEMORY[0x277D31718], 1);
  result = sub_219BE1E34();
  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570, MEMORY[0x277D31810], 1);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6560, MEMORY[0x277D31830], 1);
  result = sub_219BE1E34();
  if (v4)
  {
    type metadata accessor for SmarterMessagingURLHandler();
    swift_allocObject();
    return sub_21901BB38(&v7, &v5, &v3);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2198960C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for WebEmbedURLHandler();
    v3 = swift_allocObject();
    sub_2186D9594(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
    v4 = *(sub_219BE2644() - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_219C09BA0;
    v7 = (v6 + v5);
    *v7 = 0x72755F6465626D65;
    v7[1] = 0xE90000000000006CLL;
    (*(v4 + 104))();
    sub_219897824(MEMORY[0x277D84F90]);
    v8 = sub_219BE2674();

    *(v3 + 16) = v8;
    *(v3 + 24) = v2;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219896300()
{
  type metadata accessor for UserSegmentationURLHandler();
  swift_allocObject();
  return sub_21921B8F4();
}

void *sub_2198963B0(void *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void *))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, a2, a3, 1);
  result = sub_219BE1E34();
  if (v11)
  {
    a4(0);
    swift_allocObject();
    return a5(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2198964E8(void *a1, unint64_t *a2, void *a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedViewContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, a2, a3);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    a4(0);
    swift_allocObject();
    return a5(v11, v12, v13);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21989667C(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for FeedViewContextFactory();
    result = sub_219BE1E24();
    if (result)
    {
      v8 = result;
      a2(0);
      swift_allocObject();
      return a3(v7, v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219896790(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D9594(0, &unk_280EE7420, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC78]);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2198979B4();
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      type metadata accessor for UnrecognizedURLRetryHandler();
      v4 = swift_allocObject();
      sub_2186D9594(0, &qword_280E8C098, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
      sub_219BE26D4();
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_219C09BA0;
      sub_219BE2664();
      *(v4 + 16) = v5;
      swift_weakInit();
      swift_weakAssign();

      *(v4 + 32) = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_219896978(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90500, MEMORY[0x277D337B0], 1);
  result = sub_219BE1E34();
  if (!v24)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &unk_280E906C0, sub_2186F1804, &type metadata for PuzzleOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (!v22)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDA0, MEMORY[0x277D34548], 1);
  result = sub_219BE1E34();
  if (!v20)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v4;
  v18 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    type metadata accessor for PuzzleURLHandler();
    v6 = swift_allocObject();
    v7 = MEMORY[0x277D84560];
    sub_2186D9594(0, &unk_280E8B6F0, sub_218A38BBC, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09BA0;
    *(inited + 32) = 0x4449656C7A7A7570;
    *(inited + 40) = 0xE800000000000000;
    sub_2186D9594(0, &unk_280E8C0A0, MEMORY[0x277D6CCB8], v7);
    v9 = sub_219BE26C4();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09EC0;
    v14 = (v13 + v12);
    *v14 = 74;
    v14[1] = 0xE100000000000000;
    v15 = *(v10 + 104);
    result = v15(v14, *MEMORY[0x277D6CCA8], v9);
    if ((*MEMORY[0x277D30A00] & 0x8000000000000000) == 0)
    {
      *(v14 + v11) = *MEMORY[0x277D30A00];
      v15((v14 + v11), *MEMORY[0x277D6CCB0], v9);
      *(inited + 48) = v13;
      sub_2194AE704(inited);
      swift_setDeallocating();
      sub_218F0559C(inited + 32);
      v16 = sub_219BE2674();

      v6[2] = v16;
      v6[3] = v18;
      sub_2186CB1F0(&v23, (v6 + 4));
      v6[9] = v17;
      sub_2186CB1F0(&v21, (v6 + 10));
      sub_2186CB1F0(&v19, (v6 + 15));
      v6[20] = v5;
      return v6;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_219896E10(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for UnsupportedRecordURLHandler();
    v3 = swift_allocObject();
    *(v3 + 24) = v2;
    *(v3 + 16) = sub_2197957D0();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219896EC8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for ManageSubscriptionsURLHandler();
    v3 = swift_allocObject();
    sub_219897824(MEMORY[0x277D84F90]);
    v4 = sub_219BE2674();

    *(v3 + 16) = v4;
    *(v3 + 24) = v2;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219896FEC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for NewsSettingsURLHandler();
    v3 = swift_allocObject();
    sub_219897824(MEMORY[0x277D84F90]);
    v4 = sub_219BE2674();

    *(v3 + 16) = v4;
    *(v3 + 24) = v2;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219897118(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00, MEMORY[0x277D33810], 1);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E900F0, MEMORY[0x277D33F20], 1);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v4 = result;
  type metadata accessor for RecipeURLHandler();
  v5 = swift_allocObject();
  if (qword_280E928B8 != -1)
  {
    v7 = v5;
    swift_once();
    v5 = v7;
  }

  *(v5 + 16) = qword_280F61920;
  *(v5 + 24) = v3;
  v6 = v5;
  sub_2186CB1F0(&v10, v5 + 32);
  sub_2186CB1F0(&v8, v6 + 72);
  *(v6 + 112) = v4;

  return v6;
}

void *sub_21989732C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EF20(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for FeedViewContextFactory();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for FoodHubURLHandler();
      v5 = swift_allocObject();
      sub_219897824(MEMORY[0x277D84F90]);
      v6 = sub_219BE2684();

      v5[2] = v6;
      v5[3] = v3;
      v5[4] = v4;
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2198974B0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  a2(0);
  v3 = swift_allocObject();
  sub_219897824(MEMORY[0x277D84F90]);
  v4 = sub_219BE2684();

  *(v3 + 16) = v4;
  return v3;
}

void *sub_219897528(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5390, MEMORY[0x277D6D908], 1);
  result = sub_219BE1E34();
  if (v4)
  {
    type metadata accessor for EngagementJourneyURLHandlerProcessor();
    v2 = swift_allocObject();
    sub_2186CB1F0(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2198975C8(uint64_t a1, uint64_t a2)
{
  v16 = type metadata accessor for MagazineActivityNavigator();
  v17 = &off_282A634B0;
  *&v15 = a1;
  v4 = MEMORY[0x277D84560];
  sub_2186D9594(0, &unk_280E8B6F0, sub_218A38BBC, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x44496575737369;
  *(inited + 40) = 0xE700000000000000;
  sub_2186D9594(0, &unk_280E8C0A0, MEMORY[0x277D6CCB8], v4);
  v6 = sub_219BE26C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  v11 = (v10 + v9);
  *v11 = 73;
  v11[1] = 0xE100000000000000;
  v12 = *(v7 + 104);
  result = v12(v11, *MEMORY[0x277D6CCA8], v6);
  if ((*MEMORY[0x277D30A00] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v11 + v8) = *MEMORY[0x277D30A00];
    v12((v11 + v8), *MEMORY[0x277D6CCB0], v6);
    *(inited + 48) = v10;
    sub_2194AE704(inited);
    swift_setDeallocating();
    sub_218F0559C(inited + 32);
    v14 = sub_219BE2674();

    *(a2 + 16) = v14;
    sub_2186CB1F0(&v15, a2 + 24);
    return a2;
  }

  return result;
}

unint64_t sub_219897824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21989791C(0);
    v3 = sub_219BF75B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21870F700(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_21989791C(uint64_t a1)
{
  if (!qword_280E8D1C0)
  {
    sub_2186D9594(255, &qword_280E8F5F0, MEMORY[0x277D6CCB8], MEMORY[0x277D83940]);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D1C0);
    }
  }
}

unint64_t sub_2198979B4()
{
  result = qword_280E8DD50;
  if (!qword_280E8DD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DD50);
  }

  return result;
}

uint64_t sub_219897A00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219897A48()
{
  v0 = sub_219BE1544();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE1524();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE9C04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF074();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  sub_219BE9934();
  v17 = (*(v7 + 88))(v9, v6);
  if (v17 == *MEMORY[0x277D6E830])
  {
    v18 = MEMORY[0x277D2D868];
LABEL_9:
    v20 = *v18;
    v21 = *(v11 + 104);
    goto LABEL_10;
  }

  if (v17 == *MEMORY[0x277D6E840] || v17 == *MEMORY[0x277D6E848])
  {
    v18 = MEMORY[0x277D2D850];
    goto LABEL_9;
  }

  v21 = *(v11 + 104);
  if (v17 != *MEMORY[0x277D6E838])
  {
    v21(v16, *MEMORY[0x277D2D850], v10);
    (*(v7 + 8))(v9, v6);
    goto LABEL_11;
  }

  v20 = *MEMORY[0x277D2D810];
LABEL_10:
  v21(v16, v20, v10);
LABEL_11:
  sub_219BE9924();
  (*(v25 + 104))(v2, *MEMORY[0x277D2F3D8], v26);
  (*(v11 + 16))(v13, v16, v10);
  sub_219BE1514();
  sub_2198A3E24(&qword_280EE7FE0, 255, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  v22 = v28;
  sub_219BDD1F4();
  (*(v27 + 8))(v5, v22);
  sub_219BDD134();
  sub_219BE1D04();
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_219897EA8()
{
  v0 = sub_219BDBD34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE04E4();
  sub_219BE8F64();
  sub_2198A3E24(&unk_280EE83C0, 255, MEMORY[0x277D2E590], MEMORY[0x277D2E588]);
  sub_219BDCC64();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_219BE8F54();
  sub_219BDCC74();
  return (v4)(v3, v0);
}

void sub_21989802C(uint64_t a1)
{
  v82 = sub_219BDBD34();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v79 = &v78 - v4;
  v5 = sub_219BF0B74();
  v86 = *(v5 - 8);
  v87 = v5;
  MEMORY[0x28223BE20](v5);
  v85 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198A2250(0, &qword_280E90D80, MEMORY[0x277D32FD0], sub_218CF5E6C, sub_218CF5EA4);
  v97 = *(v7 - 8);
  v98 = v7;
  MEMORY[0x28223BE20](v7);
  v96 = &v78 - v8;
  v9 = sub_219BF04A4();
  v91 = *(v9 - 8);
  v92 = v9;
  MEMORY[0x28223BE20](v9);
  v90 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198A2250(0, &qword_280E90DF0, MEMORY[0x277D32CE0], sub_218CF5FFC, sub_218CF6034);
  v89 = v11;
  v99 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v88 = &v78 - v12;
  sub_2198A2504(0, &unk_27CC203F8, MEMORY[0x277D6DA48]);
  v14 = v13;
  v102 = *(v13 - 8);
  v100 = *(v102 + 64);
  MEMORY[0x28223BE20](v13);
  v101 = &v78 - v15;
  v84 = sub_219BF0F34();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198A2250(0, &qword_280E90D50, MEMORY[0x277D33058], sub_218CF6220, sub_218CF6258);
  v94 = *(v18 - 8);
  v95 = v18;
  MEMORY[0x28223BE20](v18);
  v93 = &v78 - v19;
  v20 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v78 - v24;
  sub_2198A35CC(0, &qword_280EE5D00, type metadata accessor for SearchModel, sub_2198A22F0);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v30 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v78 - v32;
  v104 = v14;
  v105 = a1;
  sub_219BE7564();
  sub_219BE5FC4();
  v34 = *(v28 + 8);
  v34(v33, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v48 = v90;
    v47 = v91;
    v49 = v92;
    v50 = v89;
    if (EnumCaseMultiPayload)
    {
      v69 = v88;
      (*(v99 + 32))(v88, v25, v89);
      sub_219BF07D4();
      v70 = sub_219BF0404();
      (*(v47 + 8))(v48, v49);
      v71 = v103;
      __swift_project_boxed_opaque_existential_1((v103 + 72), *(v103 + 96));
      v72 = [v70 identifier];
      sub_219BF5414();

      sub_219BF4774();

      v74 = v101;
      v73 = v102;
      v75 = v104;
      (*(v102 + 16))(v101, v105, v104);
      v76 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v77 = swift_allocObject();
      *(v77 + 16) = v71;
      *(v77 + 24) = v70;
      (*(v73 + 32))(v77 + v76, v74, v75);

      swift_unknownObjectRetain();
      sub_219BDD154();
      swift_unknownObjectRelease();

      (*(v99 + 8))(v69, v50);
      return;
    }

    sub_2186F8128(0);
    v52 = type metadata accessor for SearchFeedGapLocation;
    v53 = &v25[*(v51 + 48)];
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v94 + 32))(v93, v25, v95);
      sub_219BF07D4();
      v54 = sub_219BF0F14();
      (*(v83 + 8))(v17, v84);
      v55 = v103;
      __swift_project_boxed_opaque_existential_1((v103 + 72), *(v103 + 96));
      v56 = [v54 identifier];
      sub_219BF5414();

      v57 = sub_219BF4774();

      v59 = v101;
      v58 = v102;
      v60 = v104;
      (*(v102 + 16))(v101, v105, v104);
      v61 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v62 = v61 + v100;
      v63 = swift_allocObject();
      *(v63 + 16) = v55;
      *(v63 + 24) = v54;
      (*(v58 + 32))(v63 + v61, v59, v60);
      *(v63 + v62) = v57 & 1;

      swift_unknownObjectRetain();
      sub_219BDD154();
      swift_unknownObjectRelease();

      (*(v94 + 8))(v93, v95);
      return;
    }

    if (EnumCaseMultiPayload == 3)
    {
      (*(v97 + 32))(v96, v25, v98);
      v36 = v85;
      sub_219BF07D4();
      v37 = sub_219BF0B44();
      (*(v86 + 8))(v36, v87);
      v38 = v103;
      __swift_project_boxed_opaque_existential_1((v103 + 72), *(v103 + 96));
      v39 = [v37 identifier];
      sub_219BF5414();

      LOBYTE(v36) = sub_219BF4774();

      v41 = v101;
      v40 = v102;
      v42 = v104;
      (*(v102 + 16))(v101, v105, v104);
      v43 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v44 = v43 + v100;
      v45 = swift_allocObject();
      *(v45 + 16) = v38;
      *(v45 + 24) = v37;
      (*(v40 + 32))(v45 + v43, v41, v42);
      *(v45 + v44) = v36 & 1;

      v46 = v37;
      sub_219BDD154();

      (*(v97 + 8))(v96, v98);
      return;
    }

    sub_2198A3558(v25, type metadata accessor for SearchModel);
    sub_219BE7564();
    sub_219BE5FC4();
    v34(v30, v27);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v64 = sub_219BE5B64();
      swift_getObjectType();
      v106 = v64;
      v65 = v79;
      sub_219BE75A4();
      v66 = v80;
      sub_219BE7574();
      sub_219BEB4C4();

      v67 = *(v81 + 8);
      v68 = v82;
      v67(v66, v82);
      v67(v65, v68);

      return;
    }

    v52 = type metadata accessor for SearchModel;
    v53 = v22;
  }

  sub_2198A3558(v53, v52);
}

uint64_t sub_219898D10(__int128 *a1)
{
  v2 = v1;
  v4 = sub_219BE2864();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v16 = *a1;
  v17[0] = v8;
  *(v17 + 9) = *(a1 + 25);
  v9 = MEMORY[0x277D6CD38];
  sub_2198A24A0(0, &qword_280E8C090, MEMORY[0x277D6CD38], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  sub_219BE2854();
  sub_219BE2844();
  v15[0] = v10;
  sub_2198A3E24(&qword_280EE73C0, 255, MEMORY[0x277D6CD38], MEMORY[0x277D6CD40]);
  sub_2198A24A0(0, &unk_280E8F5C0, v9, MEMORY[0x277D83940]);
  sub_21881CB9C();
  sub_219BF7164();
  v11 = *(v2 + 32);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = v17[0];
  *(v12 + 24) = v16;
  *(v12 + 40) = v13;
  *(v12 + 49) = *(v17 + 9);

  sub_218E0DF9C(&v16, v15);
  sub_219BE1D24();

  return (*(v5 + 8))(v7, v4);
}

double sub_219898F90(uint64_t a1, _OWORD *a2)
{
  v3 = swift_allocObject();
  v4 = a2[1];
  v3[1] = *a2;
  v3[2] = v4;
  *(v3 + 41) = *(a2 + 25);
  sub_218E0DF9C(a2, &v6);
  sub_219BDD154();

  return result;
}

uint64_t sub_21989901C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_219BE0874();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDF034();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[3];
  if (v12 >= 0xA)
  {
    *&v18[0] = a2[3];

    result = sub_219BF7974();
    __break(1u);
  }

  else
  {
    (*(v4 + 104))(v6, **(&unk_278243388 + v12), v3, v9);

    sub_219BDF024();
    sub_2198A24A0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v13 = sub_219BDCD44();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C09BA0;
    (*(v14 + 104))(v16 + v15, *MEMORY[0x277CEAD18], v13);
    sub_2198A3E24(&unk_280EE88E0, 255, MEMORY[0x277D2D7D8], MEMORY[0x277D2D7D0]);
    sub_219BDCCC4();

    (*(v8 + 8))(v11, v7);
    sub_219BDF1B4();
    sub_2198A3E24(&qword_27CC20440, 255, MEMORY[0x277D2D960], MEMORY[0x277D2D958]);
    memset(v18, 0, sizeof(v18));
    sub_219BDCCE4();
    return sub_2198A3558(v18, sub_21880702C);
  }

  return result;
}

uint64_t sub_2198993DC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v22 = a2;
  v24 = a1;
  v7 = sub_219BE0034();
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v10;
  v23 = *(type metadata accessor for SearchResults(0) + 24);
  v11.n128_f64[0] = a3;
  sub_219899788(a2, v10, v11, a4);
  sub_2198A24A0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v12 = sub_219BDCD44();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v21 = xmmword_219C09BA0;
  *(v15 + 16) = xmmword_219C09BA0;
  v16 = *(v13 + 104);
  v16(v15 + v14, *MEMORY[0x277CEAD18], v12);
  sub_219BDF034();
  sub_2198A3E24(&unk_280EE88E0, 255, MEMORY[0x277D2D7D8], MEMORY[0x277D2D7D0]);
  sub_219BDCCC4();

  v17 = swift_allocObject();
  *(v17 + 16) = v21;
  v16(v17 + v14, *MEMORY[0x277CEAD10], v12);
  sub_2198A3E24(&qword_27CC20428, 255, MEMORY[0x277D2E2F0], MEMORY[0x277D2E2E8]);
  v19 = v25;
  v18 = v26;
  sub_219BDCCC4();

  sub_219BE0E54();
  sub_2198A3E24(&unk_27CC20430, 255, MEMORY[0x277D2ED70], MEMORY[0x277D2ED68]);
  memset(v28, 0, sizeof(v28));
  sub_219BDCCE4();
  sub_2198A3558(v28, sub_21880702C);
  return (*(v27 + 8))(v19, v18);
}

void sub_219899788(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, double a4@<D1>)
{
  v5 = a3.n128_f64[0];
  v313 = a2;
  sub_2198A2250(0, &qword_280E90D80, MEMORY[0x277D32FD0], sub_218CF5E6C, sub_218CF5EA4);
  v354 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v348 = &v313 - v9;
  sub_2198A2250(0, &qword_280E90D50, MEMORY[0x277D33058], sub_218CF6220, sub_218CF6258);
  v353 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v347 = &v313 - v12;
  sub_2198A2250(0, &qword_280E90DF0, MEMORY[0x277D32CE0], sub_218CF5FFC, sub_218CF6034);
  v352 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v346 = &v313 - v15;
  v16 = type metadata accessor for SearchModel(0);
  v326 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v315 = (&v313 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v314 = (&v313 - v19);
  MEMORY[0x28223BE20](v20);
  v362 = (&v313 - v21);
  MEMORY[0x28223BE20](v22);
  v361 = &v313 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v313 - v25;
  MEMORY[0x28223BE20](v27);
  v360 = &v313 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v313 - v30;
  MEMORY[0x28223BE20](v32);
  v359 = &v313 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v313 - v35;
  MEMORY[0x28223BE20](v37);
  v358 = &v313 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v313 - v40;
  MEMORY[0x28223BE20](v42);
  v357 = &v313 - v43;
  MEMORY[0x28223BE20](v44);
  v356 = (&v313 - v45);
  MEMORY[0x28223BE20](v46);
  v355 = &v313 - v47;
  MEMORY[0x28223BE20](v48);
  v322 = &v313 - v49;
  MEMORY[0x28223BE20](v50);
  v324 = &v313 - v51;
  sub_2198A24A0(0, &qword_280EE83B8, MEMORY[0x277D2E5A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v52 - 8);
  v316 = &v313 - v53;
  v333 = type metadata accessor for SearchResultsGroup(0);
  MEMORY[0x28223BE20](v333);
  v328 = &v313 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v329 = &v313 - v57;
  v317 = a1;
  v58 = *(a1 + 16);
  v332 = *(v58 + 16);
  if (v332)
  {
    v339 = v41;
    v340 = v36;
    v341 = v31;
    v342 = v26;
    v59 = 0;
    v321 = 0;
    v323 = 0;
    v318 = 0;
    v320 = 0;
    v331 = v58 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v345 = (v8 + 32);
    v351 = (v8 + 8);
    v344 = (v11 + 32);
    v350 = (v11 + 8);
    v343 = (v14 + 32);
    v349 = (v14 + 8);
    v60 = MEMORY[0x277D84F90];
    v61 = MEMORY[0x277D84F90];
    v62 = MEMORY[0x277D84F90];
    v63 = MEMORY[0x277D84F90];
    v325 = MEMORY[0x277D84F90];
    v64 = v56;
    v327 = v56;
    v65 = v328;
    v66 = v329;
    v330 = v58;
    while (v59 < *(v58 + 16))
    {
      v71 = *(v64 + 72);
      v338 = v59;
      sub_2189695F4(v331 + v71 * v59, v66, type metadata accessor for SearchResultsGroup);
      sub_2189695F4(v66, v65, type metadata accessor for SearchResultsGroup);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        v337 = v60;
        if (EnumCaseMultiPayload <= 4)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v73 = *v65;
            v74 = *(v73 + 16);
            if (v74)
            {
              v335 = v63;
              v334 = v62;
              v336 = v61;
              v363 = MEMORY[0x277D84F90];
              sub_21870B65C(0, v74, 0);
              v75 = v363;
              v76 = (*(v326 + 80) + 32) & ~*(v326 + 80);
              v319 = v73;
              v77 = v73 + v76;
              v78 = *(v326 + 72);
              while (1)
              {
                v79 = v355;
                sub_2189695F4(v77, v355, type metadata accessor for SearchModel);
                sub_2189695F4(v79, v356, type metadata accessor for SearchModel);
                v80 = swift_getEnumCaseMultiPayload();
                if (v80 <= 1)
                {
                  if (v80)
                  {
                    v81 = v346;
                    v82 = v352;
                    (*v343)(v346, v356, v352);
                    v83 = sub_219BF07B4();
                    v85 = v91;
                    v86 = v349;
                    goto LABEL_22;
                  }

                  v87 = v356;
                  v83 = *v356;
                  v85 = v356[1];
                  sub_2186F8128(0);
                  sub_2198A3558(v87 + *(v88 + 48), type metadata accessor for SearchFeedGapLocation);
                }

                else
                {
                  if (v80 == 2)
                  {
                    v81 = v347;
                    v82 = v353;
                    (*v344)(v347, v356, v353);
                    v83 = sub_219BF07B4();
                    v85 = v89;
                    v86 = v350;
                    goto LABEL_22;
                  }

                  if (v80 == 3)
                  {
                    v81 = v348;
                    v82 = v354;
                    (*v345)(v348, v356, v354);
                    v83 = sub_219BF07B4();
                    v85 = v84;
                    v86 = v351;
LABEL_22:
                    (*v86)(v81, v82);
                    goto LABEL_23;
                  }

                  v83 = sub_219BE5B24();
                  v85 = v90;
                }

LABEL_23:
                sub_2198A3558(v355, type metadata accessor for SearchModel);
                v363 = v75;
                v93 = *(v75 + 16);
                v92 = *(v75 + 24);
                if (v93 >= v92 >> 1)
                {
                  sub_21870B65C((v92 > 1), v93 + 1, 1);
                  v75 = v363;
                }

                *(v75 + 16) = v93 + 1;
                v94 = v75 + 16 * v93;
                *(v94 + 32) = v83;
                *(v94 + 40) = v85;
                v77 += v78;
                if (!--v74)
                {

                  v61 = v336;
                  v62 = v334;
                  v63 = v335;
                  goto LABEL_143;
                }
              }
            }

            v75 = MEMORY[0x277D84F90];
LABEL_143:
            v237 = *(v75 + 16);
            v238 = *(v61 + 2);
            v239 = v238 + v237;
            v60 = v337;
            if (__OFADD__(v238, v237))
            {
              goto LABEL_250;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v239 > *(v61 + 3) >> 1)
            {
              if (v238 <= v239)
              {
                v241 = v238 + v237;
              }

              else
              {
                v241 = v238;
              }

              v61 = sub_218840D24(isUniquelyReferenced_nonNull_native, v241, 1, v61);
            }

            v64 = v327;
            v65 = v328;
            if (*(v75 + 16))
            {
              if ((*(v61 + 3) >> 1) - *(v61 + 2) < v237)
              {
                goto LABEL_262;
              }

              swift_arrayInitWithCopy();

              v66 = v329;
              if (v237)
              {
                v242 = *(v61 + 2);
                v228 = __OFADD__(v242, v237);
                v243 = v242 + v237;
                if (v228)
                {
                  goto LABEL_272;
                }

                *(v61 + 2) = v243;
              }
            }

            else
            {

              v66 = v329;
              if (v237)
              {
                goto LABEL_259;
              }
            }

            sub_2198A3558(v66, type metadata accessor for SearchResultsGroup);
            v67 = (v65 + 1);
            v68 = &qword_280EC30F0;
            v69 = qword_280EC3100;
            v70 = &protocol descriptor for StreamingArticleResults;
            goto LABEL_5;
          }

          v172 = *v65;
          v173 = *(v172 + 16);
          if (v173)
          {
            v335 = v63;
            v334 = v62;
            v336 = v61;
            v363 = MEMORY[0x277D84F90];
            sub_21870B65C(0, v173, 0);
            v174 = v363;
            v175 = (*(v326 + 80) + 32) & ~*(v326 + 80);
            v319 = v172;
            v176 = v172 + v175;
            v177 = *(v326 + 72);
            while (1)
            {
              v178 = v361;
              sub_2189695F4(v176, v361, type metadata accessor for SearchModel);
              sub_2189695F4(v178, v362, type metadata accessor for SearchModel);
              v179 = swift_getEnumCaseMultiPayload();
              if (v179 <= 1)
              {
                if (v179)
                {
                  v180 = v346;
                  v181 = v352;
                  (*v343)(v346, v362, v352);
                  v182 = sub_219BF07B4();
                  v184 = v190;
                  v185 = v349;
                  goto LABEL_93;
                }

                v186 = v362;
                v182 = *v362;
                v184 = v362[1];
                sub_2186F8128(0);
                sub_2198A3558(v186 + *(v187 + 48), type metadata accessor for SearchFeedGapLocation);
              }

              else
              {
                if (v179 == 2)
                {
                  v180 = v347;
                  v181 = v353;
                  (*v344)(v347, v362, v353);
                  v182 = sub_219BF07B4();
                  v184 = v188;
                  v185 = v350;
                  goto LABEL_93;
                }

                if (v179 == 3)
                {
                  v180 = v348;
                  v181 = v354;
                  (*v345)(v348, v362, v354);
                  v182 = sub_219BF07B4();
                  v184 = v183;
                  v185 = v351;
LABEL_93:
                  (*v185)(v180, v181);
                  goto LABEL_94;
                }

                v182 = sub_219BE5B24();
                v184 = v189;
              }

LABEL_94:
              sub_2198A3558(v361, type metadata accessor for SearchModel);
              v363 = v174;
              v192 = *(v174 + 16);
              v191 = *(v174 + 24);
              if (v192 >= v191 >> 1)
              {
                sub_21870B65C((v191 > 1), v192 + 1, 1);
                v174 = v363;
              }

              *(v174 + 16) = v192 + 1;
              v193 = v174 + 16 * v192;
              *(v193 + 32) = v182;
              *(v193 + 40) = v184;
              v176 += v177;
              if (!--v173)
              {

                v61 = v336;
                v62 = v334;
                v63 = v335;
                goto LABEL_170;
              }
            }
          }

          v174 = MEMORY[0x277D84F90];
LABEL_170:
          v251 = *(v174 + 16);
          v252 = *(v62 + 2);
          v253 = v252 + v251;
          v60 = v337;
          if (__OFADD__(v252, v251))
          {
            goto LABEL_251;
          }

          v254 = swift_isUniquelyReferenced_nonNull_native();
          if (!v254 || v253 > *(v62 + 3) >> 1)
          {
            if (v252 <= v253)
            {
              v255 = v252 + v251;
            }

            else
            {
              v255 = v252;
            }

            v62 = sub_218840D24(v254, v255, 1, v62);
          }

          v64 = v327;
          v65 = v328;
          if (*(v174 + 16))
          {
            if ((*(v62 + 3) >> 1) - *(v62 + 2) < v251)
            {
              goto LABEL_264;
            }

            swift_arrayInitWithCopy();

            v66 = v329;
            if (v251)
            {
              v256 = *(v62 + 2);
              v228 = __OFADD__(v256, v251);
              v257 = v256 + v251;
              if (v228)
              {
                goto LABEL_271;
              }

              *(v62 + 2) = v257;
            }
          }

          else
          {

            v66 = v329;
            if (v251)
            {
              goto LABEL_260;
            }
          }

          goto LABEL_4;
        }

        if (EnumCaseMultiPayload == 5)
        {
          v120 = *v65;
          v121 = *(v120 + 16);
          if (v121)
          {
            v335 = v63;
            v334 = v62;
            v336 = v61;
            v363 = MEMORY[0x277D84F90];
            sub_21870B65C(0, v121, 0);
            v122 = v363;
            v123 = (*(v326 + 80) + 32) & ~*(v326 + 80);
            v319 = v120;
            v124 = v120 + v123;
            v125 = *(v326 + 72);
            while (1)
            {
              v126 = v358;
              sub_2189695F4(v124, v358, type metadata accessor for SearchModel);
              v127 = v340;
              sub_2189695F4(v126, v340, type metadata accessor for SearchModel);
              v128 = swift_getEnumCaseMultiPayload();
              if (v128 <= 1)
              {
                if (v128)
                {
                  v129 = v346;
                  v140 = v127;
                  v131 = v352;
                  (*v343)(v346, v140, v352);
                  v132 = sub_219BF07B4();
                  v134 = v141;
                  v135 = v349;
                  goto LABEL_57;
                }

                v132 = *v127;
                v134 = v127[1];
                sub_2186F8128(0);
                sub_2198A3558(v127 + *(v136 + 48), type metadata accessor for SearchFeedGapLocation);
              }

              else
              {
                if (v128 == 2)
                {
                  v129 = v347;
                  v137 = v127;
                  v131 = v353;
                  (*v344)(v347, v137, v353);
                  v132 = sub_219BF07B4();
                  v134 = v138;
                  v135 = v350;
                  goto LABEL_57;
                }

                if (v128 == 3)
                {
                  v129 = v348;
                  v130 = v127;
                  v131 = v354;
                  (*v345)(v348, v130, v354);
                  v132 = sub_219BF07B4();
                  v134 = v133;
                  v135 = v351;
LABEL_57:
                  (*v135)(v129, v131);
                  goto LABEL_58;
                }

                v132 = sub_219BE5B24();
                v134 = v139;
              }

LABEL_58:
              sub_2198A3558(v358, type metadata accessor for SearchModel);
              v363 = v122;
              v143 = *(v122 + 16);
              v142 = *(v122 + 24);
              if (v143 >= v142 >> 1)
              {
                sub_21870B65C((v142 > 1), v143 + 1, 1);
                v122 = v363;
              }

              *(v122 + 16) = v143 + 1;
              v144 = v122 + 16 * v143;
              *(v144 + 32) = v132;
              *(v144 + 40) = v134;
              v124 += v125;
              if (!--v121)
              {

                v61 = v336;
                v62 = v334;
                v63 = v335;
                goto LABEL_156;
              }
            }
          }

          v122 = MEMORY[0x277D84F90];
LABEL_156:
          v244 = *(v122 + 16);
          v60 = v337;
          v245 = *(v337 + 2);
          v246 = v245 + v244;
          if (__OFADD__(v245, v244))
          {
            goto LABEL_253;
          }

          v247 = swift_isUniquelyReferenced_nonNull_native();
          if (!v247 || v246 > *(v60 + 3) >> 1)
          {
            if (v245 <= v246)
            {
              v248 = v245 + v244;
            }

            else
            {
              v248 = v245;
            }

            v60 = sub_218840D24(v247, v248, 1, v60);
          }

          v64 = v327;
          v65 = v328;
          if (!*(v122 + 16))
          {

            v66 = v329;
            if (v244)
            {
              goto LABEL_255;
            }

            goto LABEL_204;
          }

          if ((*(v60 + 3) >> 1) - *(v60 + 2) < v244)
          {
            goto LABEL_265;
          }

          swift_arrayInitWithCopy();

          v66 = v329;
          if (v244)
          {
            v249 = *(v60 + 2);
            v228 = __OFADD__(v249, v244);
            v250 = v249 + v244;
            if (v228)
            {
              goto LABEL_270;
            }

LABEL_194:
            *(v60 + 2) = v250;
            goto LABEL_204;
          }

          goto LABEL_204;
        }

        v194 = *v65;
        v195 = *(v194 + 16);
        if (!v195)
        {

          v196 = MEMORY[0x277D84F90];
LABEL_183:
          v258 = *(v196 + 16);
          v60 = v337;
          v259 = *(v337 + 2);
          v260 = v259 + v258;
          if (__OFADD__(v259, v258))
          {
            goto LABEL_254;
          }

          v261 = swift_isUniquelyReferenced_nonNull_native();
          if (!v261 || v260 > *(v60 + 3) >> 1)
          {
            if (v259 <= v260)
            {
              v262 = v259 + v258;
            }

            else
            {
              v262 = v259;
            }

            v60 = sub_218840D24(v261, v262, 1, v60);
          }

          v64 = v327;
          v65 = v328;
          if (!*(v196 + 16))
          {

            v66 = v329;
            if (v258)
            {
              goto LABEL_256;
            }

            goto LABEL_204;
          }

          if ((*(v60 + 3) >> 1) - *(v60 + 2) < v258)
          {
            goto LABEL_261;
          }

          swift_arrayInitWithCopy();

          v66 = v329;
          if (v258)
          {
            v263 = *(v60 + 2);
            v228 = __OFADD__(v263, v258);
            v250 = v263 + v258;
            if (v228)
            {
              goto LABEL_268;
            }

            goto LABEL_194;
          }

LABEL_204:
          sub_2198A3558(v66, type metadata accessor for SearchResultsGroup);
          v67 = (v65 + 1);
          v68 = &qword_280EC6990;
          v69 = &qword_280EC69A0;
          v70 = &protocol descriptor for StreamingRecipeResults;
          goto LABEL_5;
        }

        v335 = v63;
        v334 = v62;
        v336 = v61;
        v363 = MEMORY[0x277D84F90];
        sub_21870B65C(0, v195, 0);
        v196 = v363;
        v197 = (*(v326 + 80) + 32) & ~*(v326 + 80);
        v319 = v194;
        v198 = v194 + v197;
        v199 = *(v326 + 72);
        while (1)
        {
          v200 = v359;
          sub_2189695F4(v198, v359, type metadata accessor for SearchModel);
          v201 = v341;
          sub_2189695F4(v200, v341, type metadata accessor for SearchModel);
          v202 = swift_getEnumCaseMultiPayload();
          if (v202 <= 1)
          {
            if (v202)
            {
              v203 = v346;
              v214 = v201;
              v205 = v352;
              (*v343)(v346, v214, v352);
              v206 = sub_219BF07B4();
              v208 = v215;
              v209 = v349;
              goto LABEL_109;
            }

            v206 = *v201;
            v208 = v201[1];
            sub_2186F8128(0);
            sub_2198A3558(v201 + *(v210 + 48), type metadata accessor for SearchFeedGapLocation);
          }

          else
          {
            if (v202 == 2)
            {
              v203 = v347;
              v211 = v201;
              v205 = v353;
              (*v344)(v347, v211, v353);
              v206 = sub_219BF07B4();
              v208 = v212;
              v209 = v350;
              goto LABEL_109;
            }

            if (v202 == 3)
            {
              v203 = v348;
              v204 = v201;
              v205 = v354;
              (*v345)(v348, v204, v354);
              v206 = sub_219BF07B4();
              v208 = v207;
              v209 = v351;
LABEL_109:
              (*v209)(v203, v205);
              goto LABEL_110;
            }

            v206 = sub_219BE5B24();
            v208 = v213;
          }

LABEL_110:
          sub_2198A3558(v359, type metadata accessor for SearchModel);
          v363 = v196;
          v217 = *(v196 + 16);
          v216 = *(v196 + 24);
          if (v217 >= v216 >> 1)
          {
            sub_21870B65C((v216 > 1), v217 + 1, 1);
            v196 = v363;
          }

          *(v196 + 16) = v217 + 1;
          v218 = v196 + 16 * v217;
          *(v218 + 32) = v206;
          *(v218 + 40) = v208;
          v198 += v199;
          if (!--v195)
          {

            v61 = v336;
            v62 = v334;
            v63 = v335;
            goto LABEL_183;
          }
        }
      }

      if (!EnumCaseMultiPayload)
      {
        v145 = v324;
        sub_218969590(v65, v324);
        sub_2189695F4(v145, v322, type metadata accessor for SearchModel);
        v146 = swift_getEnumCaseMultiPayload();
        if (v146 > 1)
        {
          if (v146 != 2)
          {
            if (v146 == 3)
            {

              sub_2198A3558(v324, type metadata accessor for SearchModel);
              sub_2198A3558(v66, type metadata accessor for SearchResultsGroup);
              (*v351)(v322, v354);
            }

            else
            {

              sub_2198A3558(v324, type metadata accessor for SearchModel);
              sub_2198A3558(v66, type metadata accessor for SearchResultsGroup);
              sub_2198A3558(v322, type metadata accessor for SearchModel);
            }

LABEL_225:
            v321 = 0;
            v296 = &v355;
LABEL_226:
            *(v296 - 32) = 0;
            goto LABEL_6;
          }

          sub_2189695F4(v324, v314, type metadata accessor for SearchModel);
          v264 = swift_getEnumCaseMultiPayload();
          if (v264 <= 1)
          {
            if (!v264)
            {

              sub_2198A3558(v324, type metadata accessor for SearchModel);
              sub_2198A3558(v66, type metadata accessor for SearchResultsGroup);
              v276 = v314;
              v277 = v314[1];
              v318 = *v314;
              v320 = v277;
              sub_2186F8128(0);
              sub_2198A3558(v276 + *(v278 + 48), type metadata accessor for SearchFeedGapLocation);
              goto LABEL_224;
            }

            v282 = v346;
            v283 = v352;
            (*v343)(v346, v314, v352);
            v318 = sub_219BF07B4();
            v268 = v293;

            v285 = v349;
          }

          else
          {
            if (v264 != 2)
            {
              if (v264 == 3)
              {
                v265 = v348;
                v266 = v354;
                (*v345)(v348, v314, v354);
                v318 = sub_219BF07B4();
                v268 = v267;

                v269 = v265;
                v65 = v328;
                (*v351)(v269, v266);
                sub_2198A3558(v324, type metadata accessor for SearchModel);
                v66 = v329;
                goto LABEL_223;
              }

              v318 = sub_219BE5B24();
              v287 = v286;

              sub_2198A3558(v324, type metadata accessor for SearchModel);
              v288 = v329;
              sub_2198A3558(v329, type metadata accessor for SearchResultsGroup);
              v320 = v287;
              v66 = v288;
LABEL_224:
              (*v350)(v322, v353);
              goto LABEL_225;
            }

            v282 = v347;
            v283 = v353;
            (*v344)(v347, v314, v353);
            v318 = sub_219BF07B4();
            v268 = v284;

            v285 = v350;
          }

          v294 = v282;
          v65 = v328;
          v295 = v283;
          v66 = v329;
          (*v285)(v294, v295);
          sub_2198A3558(v324, type metadata accessor for SearchModel);
LABEL_223:
          sub_2198A3558(v66, type metadata accessor for SearchResultsGroup);
          v320 = v268;
          goto LABEL_224;
        }

        if (!v146)
        {

          sub_2198A3558(v324, type metadata accessor for SearchModel);
          sub_2198A3558(v66, type metadata accessor for SearchResultsGroup);
          v219 = v322;

          sub_2186F8128(0);
          sub_2198A3558(v219 + *(v220 + 48), type metadata accessor for SearchFeedGapLocation);
          goto LABEL_225;
        }

        sub_2189695F4(v324, v315, type metadata accessor for SearchModel);
        v270 = swift_getEnumCaseMultiPayload();
        if (v270 <= 1)
        {
          if (!v270)
          {

            sub_2198A3558(v324, type metadata accessor for SearchModel);
            sub_2198A3558(v66, type metadata accessor for SearchResultsGroup);
            v279 = v315;
            v280 = v315[1];
            v321 = *v315;
            v323 = v280;
            sub_2186F8128(0);
            sub_2198A3558(v279 + *(v281 + 48), type metadata accessor for SearchFeedGapLocation);
            goto LABEL_231;
          }

          v289 = v346;
          v290 = v352;
          (*v343)(v346, v315, v352);
          v321 = sub_219BF07B4();
          v274 = v300;

          v292 = v349;
        }

        else
        {
          if (v270 != 2)
          {
            if (v270 == 3)
            {
              v271 = v348;
              v272 = v354;
              (*v345)(v348, v315, v354);
              v321 = sub_219BF07B4();
              v274 = v273;

              v275 = v271;
              v65 = v328;
              (*v351)(v275, v272);
              sub_2198A3558(v324, type metadata accessor for SearchModel);
              v66 = v329;
              goto LABEL_230;
            }

            v321 = sub_219BE5B24();
            v298 = v297;

            sub_2198A3558(v324, type metadata accessor for SearchModel);
            v299 = v329;
            sub_2198A3558(v329, type metadata accessor for SearchResultsGroup);
            v323 = v298;
            v66 = v299;
LABEL_231:
            (*v349)(v322, v352);
            v318 = 0;
            v296 = &v352;
            goto LABEL_226;
          }

          v289 = v347;
          v290 = v353;
          (*v344)(v347, v315, v353);
          v321 = sub_219BF07B4();
          v274 = v291;

          v292 = v350;
        }

        v301 = v289;
        v65 = v328;
        v302 = v290;
        v66 = v329;
        (*v292)(v301, v302);
        sub_2198A3558(v324, type metadata accessor for SearchModel);
LABEL_230:
        sub_2198A3558(v66, type metadata accessor for SearchResultsGroup);
        v323 = v274;
        goto LABEL_231;
      }

      v337 = v60;
      if (EnumCaseMultiPayload != 1)
      {
        v147 = *v65;
        v148 = *(v147 + 16);
        if (!v148)
        {

          v149 = MEMORY[0x277D84F90];
LABEL_130:
          v230 = *(v149 + 16);
          v231 = *(v63 + 2);
          v232 = v231 + v230;
          v60 = v337;
          if (__OFADD__(v231, v230))
          {
            goto LABEL_252;
          }

          v233 = swift_isUniquelyReferenced_nonNull_native();
          if (!v233 || v232 > *(v63 + 3) >> 1)
          {
            if (v231 <= v232)
            {
              v234 = v231 + v230;
            }

            else
            {
              v234 = v231;
            }

            v63 = sub_218840D24(v233, v234, 1, v63);
          }

          v64 = v327;
          v65 = v328;
          if (*(v149 + 16))
          {
            if ((*(v63 + 3) >> 1) - *(v63 + 2) < v230)
            {
              goto LABEL_266;
            }

            swift_arrayInitWithCopy();

            v66 = v329;
            if (v230)
            {
              v235 = *(v63 + 2);
              v228 = __OFADD__(v235, v230);
              v236 = v235 + v230;
              if (v228)
              {
                goto LABEL_267;
              }

              *(v63 + 2) = v236;
            }
          }

          else
          {

            v66 = v329;
            if (v230)
            {
              goto LABEL_258;
            }
          }

          goto LABEL_4;
        }

        v335 = v63;
        v334 = v62;
        v336 = v61;
        v363 = MEMORY[0x277D84F90];
        sub_21870B65C(0, v148, 0);
        v149 = v363;
        v150 = (*(v326 + 80) + 32) & ~*(v326 + 80);
        v319 = v147;
        v151 = v147 + v150;
        v152 = *(v326 + 72);
        while (2)
        {
          v153 = v357;
          sub_2189695F4(v151, v357, type metadata accessor for SearchModel);
          v154 = v339;
          sub_2189695F4(v153, v339, type metadata accessor for SearchModel);
          v155 = swift_getEnumCaseMultiPayload();
          if (v155 <= 1)
          {
            if (!v155)
            {
              v159 = *v154;
              v161 = v154[1];
              sub_2186F8128(0);
              sub_2198A3558(v154 + *(v163 + 48), type metadata accessor for SearchFeedGapLocation);
              goto LABEL_78;
            }

            v156 = v346;
            v167 = v154;
            v158 = v352;
            (*v343)(v346, v167, v352);
            v159 = sub_219BF07B4();
            v161 = v168;
            v162 = v349;
          }

          else
          {
            if (v155 != 2)
            {
              if (v155 == 3)
              {
                v156 = v348;
                v157 = v154;
                v158 = v354;
                (*v345)(v348, v157, v354);
                v159 = sub_219BF07B4();
                v161 = v160;
                v162 = v351;
                break;
              }

              v159 = sub_219BE5B24();
              v161 = v166;

LABEL_78:
              sub_2198A3558(v357, type metadata accessor for SearchModel);
              v363 = v149;
              v170 = *(v149 + 16);
              v169 = *(v149 + 24);
              if (v170 >= v169 >> 1)
              {
                sub_21870B65C((v169 > 1), v170 + 1, 1);
                v149 = v363;
              }

              *(v149 + 16) = v170 + 1;
              v171 = v149 + 16 * v170;
              *(v171 + 32) = v159;
              *(v171 + 40) = v161;
              v151 += v152;
              if (!--v148)
              {

                v61 = v336;
                v62 = v334;
                v63 = v335;
                goto LABEL_130;
              }

              continue;
            }

            v156 = v347;
            v164 = v154;
            v158 = v353;
            (*v344)(v347, v164, v353);
            v159 = sub_219BF07B4();
            v161 = v165;
            v162 = v350;
          }

          break;
        }

        (*v162)(v156, v158);
        goto LABEL_78;
      }

      v95 = *v65;
      v96 = *(v95 + 16);
      if (v96)
      {
        v335 = v63;
        v334 = v62;
        v336 = v61;
        v363 = MEMORY[0x277D84F90];
        sub_21870B65C(0, v96, 0);
        v97 = v363;
        v98 = (*(v326 + 80) + 32) & ~*(v326 + 80);
        v319 = v95;
        v99 = v95 + v98;
        v100 = *(v326 + 72);
        while (1)
        {
          v101 = v360;
          sub_2189695F4(v99, v360, type metadata accessor for SearchModel);
          v102 = v342;
          sub_2189695F4(v101, v342, type metadata accessor for SearchModel);
          v103 = swift_getEnumCaseMultiPayload();
          if (v103 <= 1)
          {
            if (v103)
            {
              v104 = v346;
              v115 = v102;
              v106 = v352;
              (*v343)(v346, v115, v352);
              v107 = sub_219BF07B4();
              v109 = v116;
              v110 = v349;
              goto LABEL_40;
            }

            v107 = *v102;
            v109 = v102[1];
            sub_2186F8128(0);
            sub_2198A3558(v102 + *(v111 + 48), type metadata accessor for SearchFeedGapLocation);
          }

          else
          {
            if (v103 == 2)
            {
              v104 = v347;
              v112 = v102;
              v106 = v353;
              (*v344)(v347, v112, v353);
              v107 = sub_219BF07B4();
              v109 = v113;
              v110 = v350;
              goto LABEL_40;
            }

            if (v103 == 3)
            {
              v104 = v348;
              v105 = v102;
              v106 = v354;
              (*v345)(v348, v105, v354);
              v107 = sub_219BF07B4();
              v109 = v108;
              v110 = v351;
LABEL_40:
              (*v110)(v104, v106);
              goto LABEL_41;
            }

            v107 = sub_219BE5B24();
            v109 = v114;
          }

LABEL_41:
          sub_2198A3558(v360, type metadata accessor for SearchModel);
          v363 = v97;
          v118 = *(v97 + 16);
          v117 = *(v97 + 24);
          if (v118 >= v117 >> 1)
          {
            sub_21870B65C((v117 > 1), v118 + 1, 1);
            v97 = v363;
          }

          *(v97 + 16) = v118 + 1;
          v119 = v97 + 16 * v118;
          *(v119 + 32) = v107;
          *(v119 + 40) = v109;
          v99 += v100;
          if (!--v96)
          {

            v61 = v336;
            v62 = v334;
            v63 = v335;
            goto LABEL_117;
          }
        }
      }

      v97 = MEMORY[0x277D84F90];
LABEL_117:
      v221 = *(v97 + 16);
      v222 = v325;
      v223 = *(v325 + 2);
      v224 = v223 + v221;
      if (__OFADD__(v223, v221))
      {
        goto LABEL_249;
      }

      v225 = swift_isUniquelyReferenced_nonNull_native();
      if (!v225 || v224 > *(v222 + 3) >> 1)
      {
        if (v223 <= v224)
        {
          v226 = v223 + v221;
        }

        else
        {
          v226 = v223;
        }

        v325 = sub_218840D24(v225, v226, 1, v222);
      }

      v60 = v337;
      v64 = v327;
      v65 = v328;
      if (*(v97 + 16))
      {
        if ((*(v325 + 3) >> 1) - *(v325 + 2) < v221)
        {
          goto LABEL_263;
        }

        swift_arrayInitWithCopy();

        v66 = v329;
        if (v221)
        {
          v227 = *(v325 + 2);
          v228 = __OFADD__(v227, v221);
          v229 = v227 + v221;
          if (v228)
          {
            goto LABEL_269;
          }

          *(v325 + 2) = v229;
        }
      }

      else
      {

        v66 = v329;
        if (v221)
        {
          goto LABEL_257;
        }
      }

LABEL_4:
      sub_2198A3558(v66, type metadata accessor for SearchResultsGroup);
      v67 = (v65 + 1);
      v68 = &qword_280ED01D0;
      v69 = &qword_280ED01E0;
      v70 = &protocol descriptor for StreamingTagResults;
LABEL_5:
      sub_2187B1C64(v67, v68, v69, v70);
LABEL_6:
      v59 = v338 + 1;
      v58 = v330;
      if (v338 + 1 == v332)
      {
        goto LABEL_233;
      }
    }

    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
    goto LABEL_273;
  }

  v321 = 0;
  v323 = 0;
  v318 = 0;
  v320 = 0;
  v60 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
  v325 = MEMORY[0x277D84F90];
LABEL_233:
  v303 = *(v325 + 2);
  v304 = *(v63 + 2);
  v228 = __OFADD__(v303, v304);
  v305 = v303 + v304;
  if (v228)
  {
LABEL_273:
    __break(1u);
    goto LABEL_274;
  }

  v306 = *(v62 + 2);
  v228 = __OFADD__(v305, v306);
  v307 = v305 + v306;
  if (v228)
  {
LABEL_274:
    __break(1u);
    goto LABEL_275;
  }

  v308 = *(v61 + 2);
  v309 = v307 + v308;
  if (__OFADD__(v307, v308))
  {
LABEL_275:
    __break(1u);
    goto LABEL_276;
  }

  if (v309 < 0xFFFFFFFF80000000)
  {
LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  if (v309 > 0x7FFFFFFF)
  {
LABEL_277:
    __break(1u);
    goto LABEL_278;
  }

  v335 = v63;
  v336 = v61;
  v310 = type metadata accessor for SearchResults(0);
  v311 = sub_219BE04F4();
  (*(*(v311 - 8) + 56))(v316, 1, 1, v311);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_279:
    __break(1u);
    goto LABEL_280;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_280:
    __break(1u);
    goto LABEL_281;
  }

  v337 = v60;
  v363 = v5;

  sub_219BF7894();
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_281:
    __break(1u);
    goto LABEL_282;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_282:
    __break(1u);
    goto LABEL_283;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_283:
    __break(1u);
    goto LABEL_284;
  }

  v363 = a4;
  sub_219BF7894();
  v312 = *(v317 + *(v310 + 36));
  if ((*&v312 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_284:
    __break(1u);
    goto LABEL_285;
  }

  if (v312 <= -9.22337204e18)
  {
LABEL_285:
    __break(1u);
    goto LABEL_286;
  }

  if (v312 < 9.22337204e18)
  {
    v363 = v312;
    sub_219BF7894();
    sub_219BE0024();

    return;
  }

LABEL_286:
  __break(1u);
}

uint64_t sub_21989C160(uint64_t a1, __int128 *a2)
{
  v4 = sub_219BDD0A4();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198A35CC(0, &qword_280EE5D00, type metadata accessor for SearchModel, sub_2198A22F0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v41 - v13;
  v15 = a2[1];
  v46 = *a2;
  v47[0] = v15;
  *(v47 + 9) = *(a2 + 25);
  (*(v11 + 16))(&v41 - v13, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v14, v10);
  v19 = (v18 + v17);
  v20 = v8;
  v21 = v47[0];
  *v19 = v46;
  v19[1] = v21;
  *(v19 + 25) = *(v47 + 9);
  sub_218E0DF9C(&v46, v45);
  sub_219BDD154();

  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v37 = v42;
      v38 = v43;
      *v42 = 6775156;
      v37[1] = 0xE300000000000000;
      v39 = v44;
      (*(v38 + 104))(v37, *MEMORY[0x277CEAE48], v44);
      sub_219BDD204();
      (*(v38 + 8))(v37, v39);
      v26 = &qword_280E90DF0;
      v27 = MEMORY[0x277D32CE0];
      v28 = sub_218CF5FFC;
      v29 = sub_218CF6034;
      goto LABEL_11;
    }

    sub_2186F8128(0);
    v31 = type metadata accessor for SearchFeedGapLocation;
    v32 = &v8[*(v30 + 48)];
    return sub_2198A3558(v32, v31);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v33 = v42;
    v34 = v43;
    *v42 = 0x656E696C64616568;
    v33[1] = 0xE800000000000000;
    v35 = v44;
    (*(v34 + 104))(v33, *MEMORY[0x277CEAE48], v44);
    sub_219BDD204();
    (*(v34 + 8))(v33, v35);
    v26 = &qword_280E90D50;
    v27 = MEMORY[0x277D33058];
    v28 = sub_218CF6220;
    v29 = sub_218CF6258;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v31 = type metadata accessor for SearchModel;
    v32 = v8;
    return sub_2198A3558(v32, v31);
  }

  v23 = v42;
  v24 = v43;
  *v42 = 0x657069636572;
  v23[1] = 0xE600000000000000;
  v25 = v44;
  (*(v24 + 104))(v23, *MEMORY[0x277CEAE48], v44);
  sub_219BDD204();
  (*(v24 + 8))(v23, v25);
  v26 = &qword_280E90D80;
  v27 = MEMORY[0x277D32FD0];
  v28 = sub_218CF5E6C;
  v29 = sub_218CF5EA4;
LABEL_11:
  sub_2198A2250(0, v26, v27, v28, v29);
  return (*(*(v40 - 8) + 8))(v20, v40);
}

uint64_t sub_21989C6C4(uint64_t a1, uint64_t a2, void *a3)
{
  v102 = a3;
  v106 = a1;
  v3 = sub_219BE02F4();
  v112 = *(v3 - 8);
  v113 = v3;
  MEMORY[0x28223BE20](v3);
  v93 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v101 = sub_219BE0874();
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF034();
  v104 = *(v6 - 8);
  v105 = v6;
  MEMORY[0x28223BE20](v6);
  v103 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_219BE0514();
  v110 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_219BF0B74();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198A2250(0, &qword_280E90D80, MEMORY[0x277D32FD0], sub_218CF5E6C, sub_218CF5EA4);
  v90 = v10;
  v88 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v87 = &v85 - v11;
  v97 = sub_219BF04A4();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198A2250(0, &qword_280E90DF0, MEMORY[0x277D32CE0], sub_218CF5FFC, sub_218CF6034);
  v14 = v13;
  v94 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v85 - v15;
  v17 = sub_219BE0304();
  v108 = *(v17 - 8);
  v109 = v17;
  MEMORY[0x28223BE20](v17);
  v107 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BF0F34();
  v85 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198A2250(0, &qword_280E90D50, MEMORY[0x277D33058], sub_218CF6220, sub_218CF6258);
  v86 = v22;
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v85 - v24;
  v26 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x277D83D88];
  sub_2198A24A0(0, &qword_27CC20408, MEMORY[0x277D2E450], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v30 - 8);
  v98 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v114 = &v85 - v33;
  sub_2198A24A0(0, &unk_27CC20410, MEMORY[0x277D2E5B0], v29);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v111 = &v85 - v38;
  sub_2198A35CC(0, &qword_280EE5D00, type metadata accessor for SearchModel, sub_2198A22F0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v45 = v94;
    v46 = v95;
    v47 = v96;
    v48 = v97;
    if (EnumCaseMultiPayload)
    {
      (*(v94 + 32))(v16, v28, v14);
      sub_219BF07D4();
      sub_219BF03E4();
      (*(v47 + 8))(v46, v48);
      (*(v108 + 104))(v107, *MEMORY[0x277D2E458], v109);
      v44 = v111;
      sub_219BE0504();
      (*(v45 + 8))(v16, v14);
      goto LABEL_11;
    }

    sub_2186F8128(0);
    v50 = type metadata accessor for SearchFeedGapLocation;
    v51 = &v28[*(v49 + 48)];
LABEL_9:
    sub_2198A3558(v51, v50);
    v59 = v112;
    v58 = v113;
    v60 = v115;
    v55 = v116;
    v56 = v114;
    v54 = v110;
    v44 = v111;
    v57 = 1;
    (*(v110 + 56))(v111, 1, 1, v116);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v52 = v28;
    v53 = v86;
    (*(v23 + 32))(v25, v52, v86);
    sub_219BF07D4();
    sub_219BF0E44();
    (*(v85 + 8))(v21, v19);
    (*(v108 + 104))(v107, *MEMORY[0x277D2E468], v109);
    v44 = v111;
    sub_219BE0504();
    v54 = v110;
    v55 = v116;
    (*(v110 + 56))(v44, 0, 1, v116);
    v56 = v114;
    sub_219BE02E4();
    (*(v23 + 8))(v25, v53);
    v57 = 0;
    v59 = v112;
    v58 = v113;
    v60 = v115;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v50 = type metadata accessor for SearchModel;
    v51 = v28;
    goto LABEL_9;
  }

  v40 = v88;
  v41 = v87;
  v42 = v90;
  (*(v88 + 32))(v87, v28, v90);
  v43 = v89;
  sub_219BF07D4();
  sub_219BF0AF4();
  (*(v91 + 8))(v43, v92);
  (*(v108 + 104))(v107, *MEMORY[0x277D2E460], v109);
  v44 = v111;
  sub_219BE0504();
  (*(v40 + 8))(v41, v42);
LABEL_11:
  v54 = v110;
  v57 = 1;
  v55 = v116;
  (*(v110 + 56))(v44, 0, 1, v116);
  v59 = v112;
  v58 = v113;
  v56 = v114;
  v60 = v115;
LABEL_12:
  (*(v59 + 56))(v56, v57, 1, v58);
  sub_2198A34D8(v44, v36, &unk_27CC20410, MEMORY[0x277D2E5B0]);
  if ((*(v54 + 48))(v36, 1, v55) == 1)
  {
    sub_2198A3468(v56, &qword_27CC20408, MEMORY[0x277D2E450]);
    v61 = MEMORY[0x277D2E5B0];
    sub_2198A3468(v44, &unk_27CC20410, MEMORY[0x277D2E5B0]);
    v62 = v36;
    v63 = v61;
    return sub_2198A3468(v62, &unk_27CC20410, v63);
  }

  (*(v54 + 32))(v60, v36, v55);
  v64 = v102[3];
  if (v64 < 0xA)
  {
    (*(v99 + 104))(v100, **(&unk_278243388 + v64), v101);

    v65 = v103;
    sub_219BDF024();
    sub_2198A24A0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v67 = v66;
    v68 = sub_219BDCD44();
    v69 = *(v68 - 8);
    v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v107 = *(v69 + 72);
    v108 = v67;
    v71 = swift_allocObject();
    v101 = xmmword_219C09BA0;
    *(v71 + 16) = xmmword_219C09BA0;
    v72 = *MEMORY[0x277CEAD10];
    v73 = *(v69 + 104);
    v109 = v68;
    v102 = v73;
    (v73)(v71 + v70, v72, v68);
    sub_2198A3E24(&unk_280EE88E0, 255, MEMORY[0x277D2D7D8], MEMORY[0x277D2D7D0]);
    v74 = v105;
    sub_219BDCCC4();

    (*(v104 + 8))(v65, v74);
    sub_2198A3E24(&qword_27CC13A50, 255, MEMORY[0x277D2E5B0], MEMORY[0x277D2E5A8]);
    v75 = v115;
    sub_219BDCCC4();
    v76 = v114;
    v77 = v98;
    sub_2198A34D8(v114, v98, &qword_27CC20408, MEMORY[0x277D2E450]);
    v79 = v112;
    v78 = v113;
    if ((*(v112 + 48))(v77, 1, v113) == 1)
    {
      sub_2198A3468(v77, &qword_27CC20408, MEMORY[0x277D2E450]);
      v80 = v75;
    }

    else
    {
      v81 = v93;
      (*(v79 + 32))(v93, v77, v78);
      v82 = swift_allocObject();
      *(v82 + 16) = v101;
      (v102)(v82 + v70, *MEMORY[0x277CEAD18], v109);
      sub_2198A3E24(&qword_27CC20420, 255, MEMORY[0x277D2E450], MEMORY[0x277D2E448]);
      sub_219BDCCC4();

      v83 = v81;
      v76 = v114;
      v80 = v115;
      (*(v79 + 8))(v83, v78);
    }

    sub_219BE0AA4();
    sub_2198A3E24(&qword_27CC13A58, 255, MEMORY[0x277D2EA78], MEMORY[0x277D2EA70]);
    memset(v117, 0, sizeof(v117));
    sub_219BDCCE4();
    sub_2198A3558(v117, sub_21880702C);
    (*(v110 + 8))(v80, v116);
    sub_2198A3468(v76, &qword_27CC20408, MEMORY[0x277D2E450]);
    v63 = MEMORY[0x277D2E5B0];
    v62 = v111;
    return sub_2198A3468(v62, &unk_27CC20410, v63);
  }

  *&v117[0] = v102[3];

  result = sub_219BF7974();
  __break(1u);
  return result;
}

uint64_t sub_21989D8A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v128 = a4;
  v138 = a3;
  v144 = a1;
  v129 = sub_219BDD0A4();
  v147 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v146 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_219BE02F4();
  v161 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v122 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_219BE0874();
  *&v134 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_219BDF034();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_219BF05D4();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_219BE5434();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v127 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_219BF0B74();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_219BF04A4();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_219BE0304();
  v148 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v14 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_219BF0F34();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v16 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF0614();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v160 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v159 = &v112 - v21;
  MEMORY[0x28223BE20](v22);
  v115 = &v112 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v112 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v112 - v28;
  v30 = sub_219BF13A4();
  MEMORY[0x28223BE20](v30 - 8);
  v158 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v112 - v33;
  sub_2198A24A0(0, &qword_27CC20408, MEMORY[0x277D2E450], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v35 - 8);
  v131 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = (&v112 - v38);
  v157 = sub_219BE0514();
  v142 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v41 = &v112 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198A35CC(0, &qword_280EE5B40, MEMORY[0x277D33320], sub_2191FD45C);
  v136 = v42;
  v145 = a2;
  sub_219BE5FC4();
  sub_2198A3714(0);
  v44 = v43;
  v151 = *(v43 + 12);
  v152 = v34;
  v45 = *(v18 + 32);
  v133 = v18 + 32;
  v132 = v45;
  v45(v29, v34, v17);
  v46 = *(v18 + 16);
  v153 = v29;
  v149 = v46;
  v150 = v18 + 16;
  v46(v26, v29, v17);
  v47 = v18 + 88;
  v48 = *(v18 + 88);
  v49 = v48(v26, v17);
  v50 = *MEMORY[0x277D32E10];
  v154 = v18;
  v155 = v17;
  v162 = v39;
  if (v49 == v50)
  {
    LODWORD(v125) = v50;
    v126 = v18 + 88;
    v127 = v44;
    (*(v18 + 96))(v26, v17);
    v51 = v123;
    v52 = v124;
    (*(v123 + 32))(v16, v26, v124);
    sub_219BF0E44();
    (*(v148 + 13))(v14, *MEMORY[0x277D2E468], v130);
    sub_219BE0504();
    sub_219BE02E4();
    (*(v51 + 8))(v16, v52);
    v53 = 0;
    v54 = v39;
    goto LABEL_8;
  }

  v55 = v148;
  if (v49 == *MEMORY[0x277D32DC0])
  {
    LODWORD(v125) = v50;
    v126 = v18 + 88;
    v127 = v44;
    (*(v154 + 96))(v26, v155);
    v56 = v120;
    v57 = v119;
    v58 = v121;
    (*(v120 + 32))(v119, v26, v121);
    sub_219BF03E4();
    (*(v55 + 13))(v14, *MEMORY[0x277D2E458], v130);
    sub_219BE0504();
    (*(v56 + 8))(v57, v58);
LABEL_7:
    v53 = 1;
    v54 = v162;
LABEL_8:
    v148 = v48;
    v156 = v41;
    v65 = v143;
    (*(v161 + 7))(v54, v53, 1, v143);
    v66 = v138[3];
    if (v66 >= 0xA)
    {
      *&v163[0] = v138[3];

      result = sub_219BF7974();
      __break(1u);
      return result;
    }

    (*(v134 + 104))(v135, **(&unk_278243388 + v66), v137);

    v67 = v139;
    sub_219BDF024();
    sub_2198A24A0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v69 = v68;
    v70 = sub_219BDCD44();
    v71 = *(v70 - 8);
    v72 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v137 = *(v71 + 72);
    v138 = v69;
    v73 = swift_allocObject();
    v134 = xmmword_219C09BA0;
    *(v73 + 16) = xmmword_219C09BA0;
    v74 = *MEMORY[0x277CEAD10];
    v135 = *(v71 + 104);
    (v135)(v73 + v72, v74, v70);
    sub_2198A3E24(&unk_280EE88E0, 255, MEMORY[0x277D2D7D8], MEMORY[0x277D2D7D0]);
    v75 = v141;
    sub_219BDCCC4();

    (*(v140 + 8))(v67, v75);
    sub_2198A3E24(&qword_27CC13A50, 255, MEMORY[0x277D2E5B0], MEMORY[0x277D2E5A8]);
    sub_219BDCCC4();
    v76 = v131;
    sub_2198A34D8(v162, v131, &qword_27CC20408, MEMORY[0x277D2E450]);
    v77 = v161;
    if ((*(v161 + 6))(v76, 1, v65) == 1)
    {
      sub_2198A3468(v76, &qword_27CC20408, MEMORY[0x277D2E450]);
    }

    else
    {
      v78 = v122;
      v77[4](v122, v76, v65);
      v79 = swift_allocObject();
      *(v79 + 16) = v134;
      (v135)(v79 + v72, *MEMORY[0x277CEAD18], v70);
      sub_2198A3E24(&qword_27CC20420, 255, MEMORY[0x277D2E450], MEMORY[0x277D2E448]);
      sub_219BDCCC4();

      (v77[1])(v78, v65);
    }

    v80 = v147;
    v81 = v146;
    sub_219BE0AA4();
    sub_2198A3E24(&qword_27CC13A58, 255, MEMORY[0x277D2EA78], MEMORY[0x277D2EA70]);
    memset(v163, 0, sizeof(v163));
    sub_219BDCCE4();
    sub_2198A3558(v163, sub_21880702C);
    v82 = *(v154 + 8);
    v83 = v155;
    v82(v153, v155);
    v84 = sub_219BF2434();
    v161 = *(*(v84 - 8) + 8);
    (v161)(&v152[v151], v84);
    v85 = v158;
    sub_219BE5FC4();
    v86 = v159;
    v132(v159, v85, v83);
    v87 = v160;
    v149(v160, v86, v83);
    v88 = v148(v87, v83);
    if (v88 == v125)
    {
      *v81 = 0x656E696C64616568;
      v89 = 0xE800000000000000;
    }

    else if (v88 == *MEMORY[0x277D32DC0])
    {
      *v81 = 6775156;
      v89 = 0xE300000000000000;
    }

    else
    {
      if (v88 != *MEMORY[0x277D32DF0])
      {
LABEL_19:
        v82(v159, v83);
        sub_2198A3468(v162, &qword_27CC20408, MEMORY[0x277D2E450]);
        (*(v142 + 8))(v156, v157);
        v91 = *(v127 + 12);
        v82(v160, v83);
        return (v161)(&v158[v91], v84);
      }

      *v81 = 0x657069636572;
      v89 = 0xE600000000000000;
    }

    v81[1] = v89;
    v90 = v129;
    (*(v80 + 104))(v81, *MEMORY[0x277CEAE48], v129);
    sub_219BDD204();
    (*(v80 + 8))(v81, v90);
    goto LABEL_19;
  }

  v60 = v154;
  v59 = v155;
  if (v49 == *MEMORY[0x277D32DF0])
  {
    v61 = v14;
    LODWORD(v125) = v50;
    v126 = v47;
    v127 = v44;
    (*(v154 + 96))(v26, v155);
    v62 = v117;
    v63 = v116;
    v64 = v118;
    (*(v117 + 32))(v116, v26, v118);
    sub_219BF0AF4();
    (*(v55 + 13))(v61, *MEMORY[0x277D2E460], v130);
    sub_219BE0504();
    (*(v62 + 8))(v63, v64);
    goto LABEL_7;
  }

  v93 = v127;
  sub_219BE53F4();
  v94 = v115;
  v95 = v153;
  v149(v115, v153, v59);
  v96 = sub_219BE5414();
  v97 = sub_219BF61F4();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v161 = v98;
    v99 = v60;
    v162 = swift_slowAlloc();
    *&v163[0] = v162;
    *v98 = 136315138;
    v100 = v112;
    sub_219BF05E4();
    v101 = sub_219BF05B4();
    v102 = v94;
    v104 = v103;
    (*(v113 + 8))(v100, v114);
    v105 = v97;
    v106 = *(v99 + 8);
    v106(v102, v155);
    v107 = sub_2186D1058(v101, v104, v163);

    v108 = v161;
    *(v161 + 1) = v107;
    v109 = v108;
    _os_log_impl(&dword_2186C1000, v96, v105, "Search tracker does not suppport selection of %s", v108, 0xCu);
    v110 = v162;
    __swift_destroy_boxed_opaque_existential_1(v162);
    v59 = v155;
    MEMORY[0x21CECF960](v110, -1, -1);
    MEMORY[0x21CECF960](v109, -1, -1);

    (*(v125 + 8))(v127, v126);
    v106(v153, v59);
  }

  else
  {

    v106 = *(v60 + 8);
    v106(v94, v59);
    (*(v125 + 8))(v93, v126);
    v106(v95, v59);
  }

  v106(v26, v59);
  v111 = sub_219BF2434();
  return (*(*(v111 - 8) + 8))(&v152[v151], v111);
}

uint64_t sub_21989EE18(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v118 = a4;
  v133 = a3;
  v144 = a1;
  v5 = sub_219BDBD34();
  v122 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v121 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDF8A4();
  v120 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v119 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_2198A24A0(0, &unk_280EE8690, MEMORY[0x277D2DD28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v104 = &v93 - v11;
  v130 = sub_219BDF754();
  v117 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v103 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198A24A0(0, &qword_280EE8330, MEMORY[0x277D2E738], v9);
  MEMORY[0x28223BE20](v13 - 8);
  v114 = &v93 - v14;
  v116 = sub_219BE0724();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_219BE1774();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE09E4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BDF104();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198A35CC(0, &qword_280EE5D00, type metadata accessor for SearchModel, sub_2198A22F0);
  v108 = v22;
  v106 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v129 = &v93 - v23;
  sub_2198A2504(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
  v128 = v24;
  v105 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v127 = &v93 - v25;
  v110 = sub_219BDFCE4();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_219BEFBD4();
  v135 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v124 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_219BDF1A4();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v139 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BDF0E4();
  v123 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  result = [a2 sourceChannel];
  v132 = result;
  if (!result)
  {
    return result;
  }

  v96 = v20;
  v97 = v18;
  v98 = v17;
  v99 = v7;
  v100 = v5;
  v101 = v31;
  v131 = ObjectType;
  v136 = a2;
  sub_219BF67F4();
  sub_2198A24A0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v142 = v34;
  v35 = sub_219BDCD44();
  v143 = v35;
  v36 = *(v35 - 8);
  v141 = *(v36 + 72);
  v37 = *(v36 + 80);
  v38 = (v37 + 32) & ~v37;
  v39 = swift_allocObject();
  v145 = xmmword_219C09BA0;
  *(v39 + 16) = xmmword_219C09BA0;
  v40 = *MEMORY[0x277CEAD18];
  v41 = *(v36 + 104);
  v41(v39 + v38, v40, v35);
  v138 = "_TtC7NewsUI214SearchAssembly";
  sub_2198A3E24(&qword_280EE88B0, 255, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  v42 = v101;
  sub_219BDCCC4();

  (*(v123 + 8))(v42, v29);
  v43 = v135;
  v44 = v124;
  v45 = v140;
  (*(v135 + 104))(v124, *MEMORY[0x277D329E0], v140);
  sub_219BE02C4();
  (*(v43 + 8))(v44, v45);
  v137 = v37;
  v46 = swift_allocObject();
  *(v46 + 16) = v145;
  LODWORD(v135) = v40;
  v140 = v36 + 104;
  v47 = v41;
  v41(v46 + v38, v40, v143);
  sub_2198A3E24(&unk_280EE8850, 255, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v48 = v139;
  v49 = v126;
  sub_219BDCCC4();

  (*(v125 + 8))(v48, v49);
  sub_2198A2504(0, &unk_27CC203F8, MEMORY[0x277D6DA48]);
  v51 = v50;
  v52 = v127;
  sub_219BE7594();
  v53 = v129;
  sub_219BE7564();
  sub_2198A3E24(&qword_27CC11D10, 255, type metadata accessor for SearchModel, &unk_219C18F18);
  v54 = v128;
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v126 = v51;
  v55 = v107;
  sub_219BDFCD4();
  (*(v106 + 8))(v53, v108);
  (*(v105 + 8))(v52, v54);
  v139 = v47;
  v56 = swift_allocObject();
  *(v56 + 16) = v145;
  (v139)(v56 + v38, v135, v143);
  sub_2198A3E24(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v57 = v110;
  sub_219BDCCC4();

  (*(v109 + 8))(v55, v57);
  v134 = *(v134 + 56);
  v58 = v111;
  sub_219BE01F4();
  v59 = swift_allocObject();
  *(v59 + 16) = v145;
  v60 = v143;
  (v139)(v59 + v38, v135, v143);
  sub_2198A3E24(&unk_280EE8890, 255, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  v61 = v113;
  sub_219BDCCC4();

  (*(v112 + 8))(v58, v61);
  v62 = v96;
  sub_219BE01E4();
  v63 = v135;
  v64 = v139;
  v65 = swift_allocObject();
  *(v65 + 16) = v145;
  v134 = v38;
  v64(v65 + v38, v63, v60);
  v66 = v136;
  sub_2198A3E24(&qword_280EE8270, 255, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
  v67 = v98;
  sub_219BDCCC4();

  (*(v97 + 8))(v62, v67);
  v68 = [v66 scoreProfile];
  v69 = v130;
  v70 = v117;
  v71 = v114;
  if (v68)
  {
    v72 = v68;
    if ([v68 hasShadowScores])
    {
      [v72 shadowTabiScore];
      [v72 shadowAgedPersonalizationScore];
      v73 = v93;
      sub_219BE1764();
      v74 = v134;
      v75 = swift_allocObject();
      *(v75 + 16) = v145;
      v64(v75 + v74, v63, v143);
      sub_2198A3E24(&unk_280EE7F40, 255, MEMORY[0x277D2F8F0], MEMORY[0x277D2F8E8]);
      v76 = v95;
      sub_219BDCCC4();

      v77 = v73;
      v69 = v130;
      (*(v94 + 8))(v77, v76);
    }

    else
    {
    }
  }

  sub_219BF6824();
  v78 = v115;
  v79 = v116;
  if ((*(v115 + 48))(v71, 1, v116) == 1)
  {
    sub_2198A3468(v71, &qword_280EE8330, MEMORY[0x277D2E738]);
  }

  else
  {
    v80 = v102;
    (*(v78 + 32))(v102, v71, v79);
    v81 = v134;
    v82 = swift_allocObject();
    *(v82 + 16) = v145;
    v64(v82 + v81, v63, v143);
    sub_2198A3E24(&unk_27CC0DC50, 255, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    sub_219BDCCC4();

    (*(v78 + 8))(v80, v79);
  }

  v83 = v104;
  sub_219BF6804();
  if ((*(v70 + 48))(v83, 1, v69) == 1)
  {
    sub_2198A3468(v83, &unk_280EE8690, MEMORY[0x277D2DD28]);
    v84 = v134;
  }

  else
  {
    v85 = v103;
    (*(v70 + 32))(v103, v83, v69);
    v84 = v134;
    v86 = swift_allocObject();
    *(v86 + 16) = v145;
    (v139)(v86 + v84, v63, v143);
    sub_2198A3E24(&unk_280EE86A0, 255, MEMORY[0x277D2DD28], MEMORY[0x277D2DD20]);
    sub_219BDCCC4();
    v64 = v139;

    (*(v70 + 8))(v85, v69);
  }

  v87 = v119;
  sub_219BDF894();
  v88 = swift_allocObject();
  *(v88 + 16) = v145;
  v64(v88 + v84, v63, v143);
  sub_2198A3E24(&qword_280EE8640, 255, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v89 = v99;
  sub_219BDCCC4();

  (*(v120 + 8))(v87, v89);
  sub_219BE0834();
  v90 = v121;
  sub_219BE75A4();
  sub_2198A3E24(&qword_280EE82C0, 255, MEMORY[0x277D2E858], MEMORY[0x277D2E840]);
  sub_219BDCC64();
  v91 = *(v122 + 8);
  v92 = v100;
  v91(v90, v100);
  sub_219BE7574();
  v146[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v146);
  swift_unknownObjectRetain();
  sub_219BDF4C4();
  sub_219BDCC84();
  swift_unknownObjectRelease();
  v91(v90, v92);
  return sub_2198A3558(v146, sub_21880702C);
}

uint64_t sub_2198A043C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v65 = a4;
  v81 = a3;
  v84 = a1;
  v5 = sub_219BDBD34();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDF8A4();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_219BDEFE4();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_219BDFCE4();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v85 = sub_219BEF9C4();
  v11 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BDFFE4();
  v64 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BE09E4();
  v63 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_219BDF104();
  v62 = *(v77 - 8);
  *&v18 = MEMORY[0x28223BE20](v77).n128_u64[0];
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a2 sourceChannel];
  v75 = v20;
  v22 = a2;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v23 = [a2 sourceChannel];
  v76 = v17;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v24 = v85;
  (*(v11 + 104))(v13, *MEMORY[0x277D32840], v85);
  v78 = v15;
  sub_219BE02B4();
  (*(v11 + 8))(v13, v24);
  sub_2198A2504(0, &unk_27CC203F8, MEMORY[0x277D6DA48]);
  v26 = v25;
  sub_2198A3E24(&qword_27CC11D10, 255, type metadata accessor for SearchModel, &unk_219C18F18);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v28 = v56;
    sub_219BDFCD4();
    sub_2198A24A0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v72 = v29;
    v54 = sub_219BDCD44();
    v30 = *(v54 - 8);
    v55 = v26;
    v31 = v30;
    v73 = *(v30 + 80);
    v32 = (v73 + 32) & ~v73;
    v33 = swift_allocObject();
    v85 = xmmword_219C09BA0;
    *(v33 + 16) = xmmword_219C09BA0;
    v74 = *MEMORY[0x277CEAD18];
    v83 = *(v31 + 104);
    v83(v33 + v32);
    v53 = v31 + 104;
    v82 = "_TtC7NewsUI214SearchAssembly";
    sub_2198A3E24(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
    v34 = v58;
    sub_219BDCCC4();

    (*(v57 + 8))(v28, v34);
    v35 = [v22 identifier];
    sub_219BF5414();

    [v22 isPaid];
    v36 = [v22 totalTime];
    sub_219BF5414();

    v37 = v59;
    sub_219BDEFB4();
    v38 = swift_allocObject();
    *(v38 + 16) = v85;
    v39 = v54;
    (v83)(v38 + v32, v74, v54);
    sub_2198A3E24(&qword_280EE8900, 255, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
    v40 = v61;
    sub_219BDCCC4();

    (*(v60 + 8))(v37, v40);
    v41 = swift_allocObject();
    *(v41 + 16) = v85;
    v42 = v74;
    v43 = v83;
    (v83)(v41 + v32, v74, v39);
    sub_2198A3E24(&unk_280EE84E0, 255, MEMORY[0x277D2E2C0], MEMORY[0x277D2E2B8]);
    sub_219BDCCC4();

    v44 = swift_allocObject();
    *(v44 + 16) = v85;
    v43(v44 + v32, v42, v39);
    sub_2198A3E24(&unk_280EE8890, 255, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    sub_219BDCCC4();

    v45 = swift_allocObject();
    *(v45 + 16) = v85;
    v46 = v83;
    (v83)(v45 + v32, v42, v39);
    sub_2198A3E24(&qword_280EE8270, 255, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    sub_219BDCCC4();

    v47 = v66;
    sub_219BDF894();
    v48 = swift_allocObject();
    *(v48 + 16) = v85;
    v46(v48 + v32, v42, v39);
    sub_2198A3E24(&qword_280EE8640, 255, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
    v49 = v68;
    sub_219BDCCC4();

    (*(v67 + 8))(v47, v49);
    sub_219BE04C4();
    v50 = v69;
    sub_219BE75A4();
    sub_2198A3E24(&unk_280EE83D0, 255, MEMORY[0x277D2E570], MEMORY[0x277D2E568]);
    sub_219BDCC64();
    v51 = v71;
    v52 = *(v70 + 8);
    v52(v50, v71);
    sub_219BE7574();
    sub_219BDCC74();
    v52(v50, v51);
    (*(v64 + 8))(v78, v80);
    (*(v63 + 8))(v76, v79);
    return (*(v62 + 8))(v75, v77);
  }

  __break(1u);
  return result;
}

uint64_t sub_2198A110C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v91 = a5;
  v95 = a4;
  v101 = a3;
  v104 = a1;
  v6 = sub_219BDBD34();
  v86 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDF8A4();
  v93 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v92 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE09E4();
  v89 = *(v11 - 8);
  v90 = v11;
  MEMORY[0x28223BE20](v11);
  v88 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_219BDF104();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_219BEF9C4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDFFE4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v82 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_219BDEFE4();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BDFCE4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D38(0);
  v24 = v23;
  sub_2198A3E24(&qword_280E908F0, 255, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  v87 = v24;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    sub_219BDFCD4();
    sub_2198A24A0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v70 = v15;
    v94 = v26;
    v27 = sub_219BDCD44();
    v71 = v16;
    v97 = v27;
    v28 = *(v27 - 8);
    v75 = v6;
    v98 = *(v28 + 72);
    v72 = v9;
    v102 = *(v28 + 80);
    v29 = v28;
    v30 = (v102 + 32) & ~v102;
    v31 = swift_allocObject();
    v74 = a2;
    v73 = v8;
    v105 = xmmword_219C09BA0;
    *(v31 + 16) = xmmword_219C09BA0;
    v103 = *MEMORY[0x277CEAD18];
    v100 = *(v29 + 104);
    v100(v31 + v30);
    v69 = v29 + 104;
    v99 = "_TtC7NewsUI214SearchAssembly";
    sub_2198A3E24(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
    sub_219BDCCC4();

    (*(v20 + 8))(v22, v19);
    v32 = v101;
    v33 = [v101 identifier];
    sub_219BF5414();

    [v32 isPaid];
    v34 = [v32 totalTime];
    sub_219BF5414();

    v35 = v76;
    sub_219BDEFB4();
    v96 = v30;
    v36 = swift_allocObject();
    *(v36 + 16) = v105;
    v37 = v97;
    (v100)(v36 + v30, v103, v97);
    sub_2198A3E24(&qword_280EE8900, 255, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
    v38 = v78;
    sub_219BDCCC4();

    (*(v77 + 8))(v35, v38);
    v39 = v80;
    v40 = v79;
    v41 = v81;
    (*(v80 + 104))(v79, *MEMORY[0x277D32840], v81);
    v42 = v82;
    v43 = v101;
    sub_219BE02B4();
    (*(v39 + 8))(v40, v41);
    v44 = v96;
    v45 = swift_allocObject();
    *(v45 + 16) = v105;
    v46 = v103;
    v47 = v100;
    (v100)(v45 + v44, v103, v37);
    sub_2198A3E24(&unk_280EE84E0, 255, MEMORY[0x277D2E2C0], MEMORY[0x277D2E2B8]);
    v48 = v70;
    sub_219BDCCC4();

    (*(v71 + 8))(v42, v48);
    v95 = *(v95 + 56);
    v49 = [v43 sourceChannel];
    v50 = v83;
    sub_219BE01F4();
    swift_unknownObjectRelease();
    v51 = v96;
    v52 = swift_allocObject();
    *(v52 + 16) = v105;
    v53 = v46;
    v54 = v97;
    v47(v52 + v51, v53, v97);
    sub_2198A3E24(&unk_280EE8890, 255, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v55 = v85;
    sub_219BDCCC4();

    (*(v84 + 8))(v50, v55);
    v56 = [v101 sourceChannel];
    v57 = v88;
    sub_219BE01E4();
    swift_unknownObjectRelease();
    v58 = v96;
    v59 = swift_allocObject();
    *(v59 + 16) = v105;
    v60 = v54;
    v61 = v100;
    (v100)(v59 + v58, v103, v60);
    sub_2198A3E24(&qword_280EE8270, 255, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v62 = v90;
    sub_219BDCCC4();

    (*(v89 + 8))(v57, v62);
    v63 = v92;
    sub_219BDF894();
    v64 = swift_allocObject();
    *(v64 + 16) = v105;
    (v61)(v64 + v58, v103, v97);
    sub_2198A3E24(&qword_280EE8640, 255, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
    v65 = v72;
    sub_219BDCCC4();

    (*(v93 + 8))(v63, v65);
    sub_219BE04C4();
    v66 = v73;
    sub_219BE75A4();
    sub_2198A3E24(&unk_280EE83D0, 255, MEMORY[0x277D2E570], MEMORY[0x277D2E568]);
    sub_219BDCC64();
    v67 = *(v86 + 8);
    v68 = v75;
    v67(v66, v75);
    sub_219BE7574();
    sub_219BDCC74();
    return (v67)(v66, v68);
  }

  __break(1u);
  return result;
}

uint64_t sub_2198A1E64()
{
  sub_218774F78(v0 + 16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return v0;
}

uint64_t sub_2198A1EBC()
{
  sub_2198A1E64();

  return swift_deallocClassInstance();
}

unint64_t sub_2198A1F28()
{
  result = qword_280EDD9D8;
  if (!qword_280EDD9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDD9D8);
  }

  return result;
}

uint64_t sub_2198A1F7C(uint64_t a1)
{
  v15[0] = a1;
  sub_2198A2504(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - v5;
  sub_2198A24A0(0, &qword_280EE5888, sub_218953A84, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v15 - v8;
  v15[1] = *(v1 + 40);
  sub_2198A2504(0, &qword_280EE5500, MEMORY[0x277D6D8B8]);
  sub_21926755C();
  sub_219BE7B94();
  sub_219BF4B14();
  sub_219BEB244();

  (*(v4 + 8))(v6, v3);
  sub_218953A84(0);
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  result = sub_2198A3468(v9, &qword_280EE5888, sub_218953A84);
  if (v11 != 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = result;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_2198A25CC(v13, v15[0], Strong);
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2198A21F8(uint64_t a1, uint64_t a2)
{
  result = sub_2198A3E24(&qword_280EDD9D0, a2, type metadata accessor for SearchTracker, &unk_219CAF720);
  *(a1 + 8) = result;
  return result;
}

void sub_2198A2250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    a5();
    v8 = sub_219BF0854();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2198A2340(uint64_t a1)
{
  sub_2198A2504(0, &unk_27CC203F8, MEMORY[0x277D6DA48]);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));

  return sub_2198A2864(a1, v4, v5);
}

uint64_t sub_2198A23E8(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t, void))
{
  sub_2198A2504(0, &unk_27CC203F8, MEMORY[0x277D6DA48]);
  v6 = v2 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  return a2(a1, *(v2 + 24), v6, *(v6 + *(*(v5 - 8) + 64)));
}

void sub_2198A24A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2198A2504(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchSectionDescriptor(255);
    v8[1] = type metadata accessor for SearchModel(255);
    v8[2] = sub_2198A3E24(qword_280EC3630, 255, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
    v8[3] = sub_2198A22F0();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

double sub_2198A25CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2198A35CC(0, &qword_280EE5B40, MEMORY[0x277D33320], sub_2191FD45C);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v26[-v10];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong resignFirstResponder];
  }

  sub_219BE86D4();
  if (*(a3 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch) == 1)
  {
    *(a3 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch) = 0;
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14 && (v15 = v14, v16 = [v14 text], v15, v16))
    {
      v17 = sub_219BF5414();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    sub_219532060(a2, v17, v19);
  }

  sub_218DA3954(&v27);
  v20 = *(a1 + 88);
  (*(v8 + 16))(v11, a2, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  (*(v8 + 32))(v22 + v21, v11, v7);
  v23 = (v22 + ((v21 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v28[0];
  *v23 = v27;
  v23[1] = v24;
  *(v23 + 25) = *(v28 + 9);
  *(v22 + ((v21 + v9 + 55) & 0xFFFFFFFFFFFFFFF8)) = v20;
  sub_218E0DF9C(&v27, v26);
  swift_unknownObjectRetain();
  sub_219BDD154();
  sub_218E0E194(&v27);

  return result;
}

uint64_t sub_2198A2864(uint64_t a1, void *a2, uint64_t a3)
{
  v80 = a2;
  v87 = a1;
  v4 = sub_219BDBD34();
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x28223BE20](v4);
  v77 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF1E4();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v74 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDFCE4();
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x28223BE20](v8);
  v71 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE1444();
  v83 = *(v10 - 8);
  v84 = v10;
  MEMORY[0x28223BE20](v10);
  v81 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198A35CC(0, &qword_280EE5D00, type metadata accessor for SearchModel, sub_2198A22F0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v61 - v15;
  sub_2198A2504(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
  v18 = v17;
  v88 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v61 - v19;
  sub_2198A24A0(0, &qword_280EE5888, sub_218953A84, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v61 - v22;
  sub_218953A84(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v89 = v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198A2504(0, &unk_27CC203F8, MEMORY[0x277D6DA48]);
  v29 = v28;
  sub_219BE7594();
  v85 = v29;
  v86 = a3;
  sub_219BE7564();
  sub_219BE5F84();
  v30 = *(v14 + 8);
  v82 = v16;
  v69 = v30;
  v70 = v13;
  v31 = v18;
  v32 = v88;
  v30(v16, v13);
  sub_219BEB244();
  v33 = v26;

  v34 = *(v32 + 8);
  v34(v20, v31);
  if ((*(v33 + 48))(v23, 1, v25) == 1)
  {
    return sub_2198A3468(v23, &qword_280EE5888, sub_218953A84);
  }

  v62 = v34;
  v64 = v33;
  v36 = *(v33 + 32);
  v88 = v25;
  v36(v89, v23, v25);
  v37 = [v80 identifier];
  sub_219BF5414();

  v38 = v81;
  sub_219BE1424();
  sub_2198A24A0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v40 = v39;
  v41 = sub_219BDCD44();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = v43 + *(v42 + 72);
  v80 = *(v42 + 80);
  v61[2] = v40;
  v68 = v44;
  v45 = swift_allocObject();
  v65 = xmmword_219C09BA0;
  *(v45 + 16) = xmmword_219C09BA0;
  v47 = *(v42 + 104);
  v46 = v42 + 104;
  v67 = *MEMORY[0x277CEAD18];
  v63 = v41;
  v66 = v47;
  v47(v45 + v43);
  sub_2198A3E24(&unk_280EE8030, 255, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v61[1] = "_TtC7NewsUI214SearchAssembly";
  v48 = v84;
  sub_219BDCCC4();

  (*(v83 + 8))(v38, v48);
  sub_219BE7594();
  v49 = v82;
  sub_219BE7564();
  sub_2198A3E24(&qword_27CC11D10, 255, type metadata accessor for SearchModel, &unk_219C18F18);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v50 = v49;
  v51 = v71;
  sub_219BDFCD4();
  v69(v50, v70);
  v62(v20, v31);
  v52 = swift_allocObject();
  *(v52 + 16) = v65;
  v53 = v63;
  v66(v52 + v43, v67, v63);
  sub_2198A3E24(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v84 = v46;
  v54 = v73;
  sub_219BDCCC4();

  (*(v72 + 8))(v51, v54);
  sub_219BE6944();
  v55 = v74;
  sub_219BDF1C4();
  v56 = swift_allocObject();
  *(v56 + 16) = v65;
  v66(v56 + v43, v67, v53);
  sub_2198A3E24(&unk_280EE8840, 255, MEMORY[0x277D2D970], MEMORY[0x277D2D968]);
  v57 = v76;
  sub_219BDCCC4();

  (*(v75 + 8))(v55, v57);
  sub_219BDFEC4();
  v58 = v77;
  sub_219BE75A4();
  sub_2198A3E24(&unk_280EE8520, 255, MEMORY[0x277D2E1D0], MEMORY[0x277D2E1C8]);
  sub_219BDCC64();
  v59 = v79;
  v60 = *(v78 + 8);
  v60(v58, v79);
  sub_219BE7574();
  sub_219BDCC74();
  v60(v58, v59);
  return (*(v64 + 8))(v89, v88);
}

uint64_t sub_2198A339C(uint64_t a1)
{
  sub_2198A35CC(0, &qword_280EE5D00, type metadata accessor for SearchModel, sub_2198A22F0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21989C6C4(a1, v1 + v5, v6);
}

uint64_t sub_2198A3468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2198A24A0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2198A34D8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2198A24A0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2198A3558(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2198A35CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_219BE5FE4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2198A363C(uint64_t a1)
{
  sub_2198A35CC(0, &qword_280EE5B40, MEMORY[0x277D33320], sub_2191FD45C);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + ((v6 + 55) & 0xFFFFFFFFFFFFFFF8));

  return sub_21989D8A0(a1, v1 + v5, (v1 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8)), v7);
}

void sub_2198A3714(uint64_t a1)
{
  if (!qword_27CC20448)
  {
    sub_219BF0614();
    sub_219BF2434();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20448);
    }
  }
}

uint64_t sub_2198A3788(uint64_t a1)
{
  sub_218B58D38(0);
  v3 = v2;
  v33 = *(v2 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_219BF0B74();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_219BF0614();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2198A35CC(0, &qword_280EE5B40, MEMORY[0x277D33320], sub_2191FD45C);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v28[-v14];
  sub_219BE7564();
  sub_219BE5FD4();
  (*(v13 + 8))(v15, v12);
  result = (*(v8 + 88))(v10, v7);
  if (result == *MEMORY[0x277D32DB8] || result == *MEMORY[0x277D32D10] || result == *MEMORY[0x277D32E00] || result == *MEMORY[0x277D32E10] || result == *MEMORY[0x277D32E18] || result == *MEMORY[0x277D32DD8] || result == *MEMORY[0x277D32CF8] || result == *MEMORY[0x277D32DC0] || result == *MEMORY[0x277D32CF0] || result == *MEMORY[0x277D32E08] || result == *MEMORY[0x277D32DB0] || result == *MEMORY[0x277D32DE0])
  {
    return (*(v8 + 8))(v10, v7);
  }

  if (result == *MEMORY[0x277D32DF0])
  {
    (*(v8 + 96))(v10, v7);
    (*(v36 + 32))(v35, v10, v37);
    v17 = sub_219BF0B44();
    v31 = v17;
    v18 = v34;
    __swift_project_boxed_opaque_existential_1((v34 + 72), *(v34 + 96));
    v19 = [v17 identifier];
    sub_219BF5414();

    v29 = sub_219BF4774();

    v30 = *(v18 + 32);
    v20 = v32;
    v21 = v33;
    (*(v33 + 16))(v32, a1, v3);
    v22 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v23 = (v4 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    (*(v21 + 32))(v24 + v22, v20, v3);
    v25 = v31;
    *(v24 + v23) = v31;
    v26 = v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v26 = v18;
    *(v26 + 8) = v29 & 1;
    v27 = v25;

    sub_219BDD154();

    return (*(v36 + 8))(v35, v37);
  }

  else if (result == *MEMORY[0x277D32D38] || result == *MEMORY[0x277D32DE8] || result == *MEMORY[0x277D32D18] || result == *MEMORY[0x277D32DA8] || result == *MEMORY[0x277D32DF8] || result != *MEMORY[0x277D32DD0])
  {
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_2198A3D74(uint64_t a1)
{
  sub_218B58D38(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_2198A110C(a1, v1 + v5, v7, v9, v10);
}

uint64_t sub_2198A3E24(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EA2640;
  if (!qword_280EA2640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2198A3EE0(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    sub_2186F9548();
    if (v2 <= 0x3F)
    {
      sub_219723040(319, &qword_280E91680, sub_219721E88);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2198A3F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a2;
  sub_219723040(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  sub_2189AD5C8(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v11);
  v17 = *(v14 + 48);
  if (v17(v11, 1, v13) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    v22 = a5;
    sub_21877CE10(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    a5 = v22;
    sub_219BEE974();
    if (v17(v11, 1, v13) != 1)
    {
      sub_2189ADEC8(v11);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v11, v13);
  }

  (*(v14 + 32))(a5, v16, v13);
  v18 = v23;
  if (!v23)
  {
    v24 = 2;
    sub_2186F9548();
    swift_allocObject();
    v18 = sub_219BEF534();
  }

  v19 = type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs(0);
  *(a5 + v19[5]) = v18;
  if (!a3)
  {
    v24 = 6;
    sub_2186F9548();
    swift_allocObject();
    a3 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a5 + v19[6]) = a3;
  *(a5 + v19[7]) = a4;
  return result;
}

uint64_t sub_2198A42BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  sub_2189AD5C8(0);
  v44 = v3;
  v47 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219723040(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v38 - v11;
  sub_2198A4E04(0, &qword_280E8C990, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198A4D4C();
  v17 = v50;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = 0;
  v42 = v7;
  v43 = v14;
  LOBYTE(v54) = 0;
  sub_21877CE10(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
  v19 = v48;
  v20 = v44;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v53) = 1;
  sub_21877CE10(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
  sub_219BF7674();
  v38 = v54;
  LOBYTE(v52) = 2;
  sub_219BF7674();
  v50 = v53;
  sub_219721E88(0);
  LOBYTE(v51) = 3;
  sub_21877CE10(&qword_280E91690, sub_219721E88, MEMORY[0x277D32518]);
  v40 = v16;
  sub_219BF7674();
  v39 = v52;
  v21 = v49;
  sub_2189ADE64(v19, v49);
  v22 = *(v47 + 48);
  v23 = v13;
  if (v22(v21, 1, v20) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877CE10(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v24 = v45;
    sub_219BEE974();
    v25 = v22(v49, 1, v20);
    v26 = v24;
    v27 = a1;
    v28 = v43;
    v29 = v47;
    if (v25 != 1)
    {
      sub_2189ADEC8(v49);
    }
  }

  else
  {
    v29 = v47;
    v26 = v45;
    (*(v47 + 32))(v45, v49, v20);
    v27 = a1;
    v28 = v43;
  }

  v30 = v42;
  (*(v29 + 32))(v42, v26, v20);
  v31 = v48;
  v32 = v38;
  if (!v38)
  {
    v51 = 2;
    swift_allocObject();
    v32 = sub_219BEF534();
    v28 = v43;
  }

  v33 = v46;
  v34 = v40;
  *(v30 + v5[5]) = v32;
  if (v50)
  {
    sub_2189ADEC8(v31);
    (*(v28 + 8))(v34, v23);
    v35 = v50;
  }

  else
  {
    v51 = 6;
    swift_allocObject();
    v36 = v34;
    v37 = v28;
    v35 = sub_219BEF534();
    sub_2189ADEC8(v31);
    (*(v37 + 8))(v36, v23);
  }

  *(v30 + v5[6]) = v35;
  *(v30 + v5[7]) = v39;
  sub_2198A4DA0(v30, v33);
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_2198A4918(void *a1, __n128 a2)
{
  v4 = v2;
  sub_2198A4E04(0, &qword_27CC20450, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198A4D4C();
  sub_219BF7B44();
  LOBYTE(v15) = 0;
  sub_2189AD5C8(0);
  sub_21877CE10(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v3)
  {
    v11 = type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs(0);
    v15 = *(v4 + v11[5]);
    v14 = 1;
    sub_2186F9548();
    sub_21877CE10(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
    v15 = *(v4 + v11[6]);
    v14 = 2;
    sub_219BF7834();
    v15 = *(v4 + v11[7]);
    v14 = 3;
    sub_219721E88(0);
    sub_21877CE10(&qword_27CC1E578, sub_219721E88, MEMORY[0x277D32508]);
    sub_219BF77E4();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_2198A4BF8()
{
  v1 = 0x73656C7572;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x676E69726564726FLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_2198A4C78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2198A50EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2198A4CA0(uint64_t a1)
{
  v2 = sub_2198A4D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2198A4CDC(uint64_t a1)
{
  v2 = sub_2198A4D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2198A4D4C()
{
  result = qword_280EA2668;
  if (!qword_280EA2668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA2668);
  }

  return result;
}

uint64_t sub_2198A4DA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2198A4E04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2198A4D4C();
    v7 = a3(a1, &type metadata for PuzzleScoreboardTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2198A4E68(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TagFeedServiceConfig(0);
  sub_21877CE10(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  if (sub_219BEE9F4())
  {
    sub_2186F9548();
    v4 = type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs(0);
    if (sub_219BEF504() & 1) != 0 && (sub_219BEF504())
    {
      v5 = *(v4 + 28);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);
      if (v6)
      {
        if (v7)
        {
          sub_219721E88(0);
          sub_21877CE10(&qword_27CC1E580, sub_219721E88, MEMORY[0x277D32510]);

          v8 = sub_219BF53A4();

          if (v8)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_2198A4FE8()
{
  result = qword_27CC20458;
  if (!qword_27CC20458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20458);
  }

  return result;
}

unint64_t sub_2198A5040()
{
  result = qword_280EA2658;
  if (!qword_280EA2658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA2658);
  }

  return result;
}

unint64_t sub_2198A5098()
{
  result = qword_280EA2660;
  if (!qword_280EA2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA2660);
  }

  return result;
}

uint64_t sub_2198A50EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69726564726FLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

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

void sub_2198A525C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v26[1] = a2;
  v27 = sub_219BDF934();
  v26[0] = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198A55D8(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDCC14();
  v16 = MEMORY[0x28223BE20](v15);
  (*(v18 + 16))(v26 - v17, a1, v15, v16);
  if (swift_dynamicCast())
  {
    (*(v12 + 8))(v14, v11);
    v19 = sub_219BDCC04();
    v20 = sub_219BDD084();
    v22 = v21;

    if (!v5)
    {
      sub_2198A566C(&unk_27CC20460, MEMORY[0x277D2DE80], MEMORY[0x277D2DE88]);
      v23 = v27;
      sub_219BE1974();
      sub_2186C6190(v20, v22);
      (*(v26[0] + 32))(a5, v9, v23);
      v24 = type metadata accessor for EngagementEvent(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v24 - 8) + 56))(a5, 0, 1, v24);
    }
  }

  else
  {
    v25 = type metadata accessor for EngagementEvent(0);
    (*(*(v25 - 8) + 56))(a5, 1, 1, v25);
  }
}

void sub_2198A55D8(uint64_t a1)
{
  if (!qword_280EE8FD0)
  {
    sub_219BDF944();
    sub_2198A566C(&qword_280EE8628, MEMORY[0x277D2DE90], MEMORY[0x277D2DE78]);
    v1 = sub_219BDCC14();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE8FD0);
    }
  }
}

uint64_t sub_2198A566C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2198A56B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21883F194(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198A6C24(a1, v9, sub_21883F194);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218A6E554(0);
      v12 = *(v11 + 64);
      v13 = sub_219BDD9E4();
      (*(*(v13 - 8) + 8))(&v9[v12], v13);
      sub_218736468(v9, type metadata accessor for AudioFeedTrack);
    }

    else
    {
      v28 = (a2 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_schedulerState);
      if (!*(a2 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_schedulerState + 64))
      {
        v30 = v28[6];
        v29 = v28[7];
        v32 = v28[4];
        v31 = v28[5];
        v34 = v28[2];
        v33 = v28[3];
        v35 = v28[1];
        *&v123 = *v28;
        v36 = v123;
        *(&v123 + 1) = v35;
        *&v124 = v34;
        *(&v124 + 1) = v33;
        *&v125 = v32;
        *(&v125 + 1) = v31;
        *&v126 = v30;
        *(&v126 + 1) = v29;
        v127 = 0;
        sub_2198A6C24(&v123, &v118, sub_2198A6A48);
        sub_2198A62E8(v36, v35, v34, v33, v32, v31, v30, v29);
      }
    }

    return;
  }

  sub_218A6E5D0(0);
  v15 = *&v9[*(v14 + 48)];
  v16 = *(v14 + 64);
  sub_218C162E4(v9, v6);
  v17 = (a2 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_schedulerState);
  v18 = *(a2 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_schedulerState + 16);
  v123 = *(a2 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_schedulerState);
  v124 = v18;
  v19 = *(a2 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_schedulerState + 48);
  v125 = *(a2 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_schedulerState + 32);
  v126 = v19;
  v127 = *(a2 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_schedulerState + 64);
  v20 = v123;
  if (v127)
  {
    if (v127 == 1)
    {
      v116 = v6;
      v21 = *v6;

      v22 = [v21 articleID];
      v23 = sub_219BF5414();
      v25 = v24;

      if (v20 == v23 && *(&v20 + 1) == v25)
      {
        sub_2198A6B3C(&v123);

        v6 = v116;
LABEL_57:
        if (qword_280E8D870 != -1)
        {
          swift_once();
        }

        v70 = qword_280F61750;
        v71 = sub_219BF6214();
        sub_219BE5314("DB notification has been sent", 29, 2, &dword_2186C1000, v70, v71, MEMORY[0x277D84F90]);
LABEL_60:
        v72 = v6;
        goto LABEL_61;
      }

      v27 = sub_219BF78F4();
      sub_2198A6B3C(&v123);

      v6 = v116;
      if (v27)
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
    v115 = v16;
    v114 = v124;
    v37 = *(&v125 + 1);
    v113 = v125;
    v38 = *(&v126 + 1);
    v112 = v126;
    v39 = *(v4 + 32);
    v40 = v39 + *(type metadata accessor for AudioFeedTrack.Configurables(0) + 32);
    v116 = v6;
    if (*(v6 + v40 + 8) != 1)
    {
      v74 = v17[3];
      v120 = v17[2];
      v121 = v74;
      v122 = *(v17 + 64);
      v75 = v17[1];
      v118 = *v17;
      v119 = v75;
      sub_2198A6C24(&v118, v117, sub_2198A6A48);

      if (qword_280E8D870 != -1)
      {
        swift_once();
      }

      v76 = qword_280F61750;
      v77 = sub_219BF6214();
      sub_219BE5314("DB notification still waiting to stop", 37, 2, &dword_2186C1000, v76, v77, MEMORY[0x277D84F90]);
      v69 = v116;
      goto LABEL_66;
    }

    v41 = v17[3];
    v120 = v17[2];
    v121 = v41;
    v122 = *(v17 + 64);
    v42 = v17[1];
    v118 = *v17;
    v119 = v42;
    sub_2198A6C24(&v118, v117, sub_2198A6A48);
    sub_2198A62E8(v20, *(&v20 + 1), v114, *(&v114 + 1), v113, v37, v112, v38);

    v16 = v115;
    v6 = v116;
  }

  v43 = *(v4 + 32);
  v44 = v6 + v43 + *(type metadata accessor for AudioFeedTrack.Configurables(0) + 32);
  v45 = *(v44 + 1);
  if (v45 == 1)
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v46 = qword_280F61750;
    v47 = sub_219BF6214();
    sub_219BE5314("DB notification config is disabled", 34, 2, &dword_2186C1000, v46, v47, MEMORY[0x277D84F90]);
    goto LABEL_60;
  }

  v115 = v16;
  v48 = *(v44 + 6);
  v49 = v44[56];
  v50 = *(v44 + 8);
  v51 = v44[72];
  v52 = *(v44 + 4);
  v53 = *(v44 + 5);
  v54 = *(v44 + 2);
  v55 = *(v44 + 3);
  v56 = *v44;
  if (v45)
  {
    v57 = v56;
  }

  else
  {
    v57 = 0;
  }

  if (v45)
  {
    v58 = v45;
  }

  else
  {
    v58 = 0xE000000000000000;
  }

  if (v55)
  {
    v59 = v54;
  }

  else
  {
    v59 = 0;
  }

  if (v55)
  {
    v60 = v55;
  }

  else
  {
    v60 = 0xE000000000000000;
  }

  if (v53)
  {
    v61 = v52;
  }

  else
  {
    v61 = 0;
  }

  if (v53)
  {
    v62 = v53;
  }

  else
  {
    v62 = 0xE000000000000000;
  }

  v63 = HIBYTE(v58) & 0xF;
  if ((v58 & 0x2000000000000000) == 0)
  {
    v63 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (!v63)
  {
    v64 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v64 = v59 & 0xFFFFFFFFFFFFLL;
    }

    if (!v64)
    {
      v65 = HIBYTE(v62) & 0xF;
      if ((v62 & 0x2000000000000000) == 0)
      {
        v65 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (!v65)
      {

        if (qword_280E8D870 != -1)
        {
          swift_once();
        }

        v108 = qword_280F61750;
        v109 = sub_219BF61F4();
        sub_219BE5314("DB notification config is empty", 31, 2, &dword_2186C1000, v108, v109, MEMORY[0x277D84F90]);
        goto LABEL_55;
      }
    }
  }

  *(&v114 + 1) = v62;
  if (v49)
  {
    v66 = v50;
  }

  else
  {
    v66 = v48;
  }

  if (v49 & 1) != 0 && (v51)
  {

    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v67 = qword_280F61750;
    v68 = sub_219BF61F4();
    sub_219BE5314("DB notification has neither trigger time configured", 51, 2, &dword_2186C1000, v67, v68, MEMORY[0x277D84F90]);
LABEL_55:
    v69 = v6;
LABEL_66:
    sub_218736468(v69, type metadata accessor for AudioFeedTrack);
    v78 = sub_219BDD9E4();
    (*(*(v78 - 8) + 8))(&v9[v115], v78);
    return;
  }

  *&v114 = v60;
  v111 = v61;
  v112 = v59;
  v113 = v57;
  v79 = v6;
  v80 = *(a2 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_readingHistory);
  v116 = v79;
  v81 = *v79;

  v110 = v81;
  v82 = [v81 articleID];
  if (!v82)
  {
    sub_219BF5414();
    v82 = sub_219BF53D4();
  }

  v83 = [v80 hasArticleBeenRead_];

  v84 = v114;
  if ((v83 & 1) == 0)
  {
    v89 = v116;
    v90 = sub_219BDD6D4();
    v16 = v115;
    if (v91)
    {
      [*(v89 + 8) duration];
    }

    else
    {
      v92 = *&v90;
    }

    if (v92 - v15 >= v66)
    {
      sub_218736468(v89, type metadata accessor for AudioFeedTrack);

      goto LABEL_62;
    }

    if (v49)
    {
      if (qword_280E8D870 != -1)
      {
        swift_once();
      }

      v93 = qword_280F61750;
      v94 = sub_219BF6214();
      v95 = sub_219BE5314("DB notification waiting to stop", 31, 2, &dword_2186C1000, v93, v94, MEMORY[0x277D84F90]);
      v96 = [v110 articleID];
      v97 = sub_219BF5414();
      v99 = v98;

      sub_218736468(v89, type metadata accessor for AudioFeedTrack);
      v100 = v17[3];
      v120 = v17[2];
      v121 = v100;
      v122 = *(v17 + 64);
      v101 = v17[1];
      v118 = *v17;
      v119 = v101;
      *v17 = v113;
      *(v17 + 1) = v58;
      *(v17 + 2) = v112;
      *(v17 + 3) = v84;
      v102 = *(&v114 + 1);
      *(v17 + 4) = v111;
      *(v17 + 5) = v102;
      *(v17 + 6) = v97;
      *(v17 + 7) = v99;
      *(v17 + 64) = 0;
      sub_2198A6B3C(&v118);
      goto LABEL_62;
    }

    v103 = [v110 articleID];
    v104 = sub_219BF5414();
    v105 = v89;
    v107 = v106;

    sub_2198A62E8(v113, v58, v112, v84, v111, *(&v114 + 1), v104, v107);

    v72 = v105;
LABEL_61:
    sub_218736468(v72, type metadata accessor for AudioFeedTrack);
LABEL_62:
    v73 = sub_219BDD9E4();
    (*(*(v73 - 8) + 8))(&v9[v16], v73);
    return;
  }

  v85 = v115;
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v86 = qword_280F61750;
  v87 = sub_219BF6214();
  sub_219BE5314("DB notification has been read", 29, 2, &dword_2186C1000, v86, v87, MEMORY[0x277D84F90]);
  sub_218736468(v116, type metadata accessor for AudioFeedTrack);
  v88 = sub_219BDD9E4();
  (*(*(v88 - 8) + 8))(&v9[v85], v88);
}

double sub_2198A62E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a5;
  v54 = a6;
  v51 = a3;
  v52 = a4;
  v49 = a1;
  v50 = a2;
  v10 = type metadata accessor for UserNotification.DeliveryStatus(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = 0x8000000219D3A860;
  *v15 = a7;
  v15[1] = a8;
  swift_storeEnumTagMultiPayload();
  v48 = 0x8000000219D3A890;
  sub_2198A6B6C(0, &qword_280E8B5C8, &unk_280E8D750, MEMORY[0x277D84030], MEMORY[0x277D84F70] + 8);
  inited = swift_initStackObject();
  v57 = xmmword_219C09BA0;
  *(inited + 16) = xmmword_219C09BA0;
  *&v59[0] = 1937204590;
  *(&v59[0] + 1) = 0xE400000000000000;

  v17 = MEMORY[0x277D837D0];
  sub_219BF72A4();
  sub_2198A6B6C(0, &qword_280E8B700, &qword_280E8F760, v17, v17);
  v18 = swift_initStackObject();
  *(v18 + 16) = v57;
  *(v18 + 32) = 6580577;
  *(v18 + 40) = 0xE300000000000000;
  *(v18 + 48) = a7;
  *&v57 = a7;
  *(v18 + 56) = a8;
  v55 = a8;

  v19 = sub_2194B0E30(v18);
  swift_setDeallocating();
  sub_2198A6BC8(v18 + 32, &qword_280E8F760, v17, v17);
  sub_2194B6618();
  *(inited + 96) = v20;
  *(inited + 72) = v19;
  v21 = sub_2194B141C(inited);
  swift_setDeallocating();
  sub_2198A6BC8(inited + 32, &unk_280E8D750, MEMORY[0x277D84030], MEMORY[0x277D84F70] + 8);
  sub_218C1A090();
  (*(*(v22 - 8) + 56))(v12, 1, 2, v22);
  v23 = type metadata accessor for UserNotification(0);
  v24 = objc_allocWithZone(v23);
  v25 = &v24[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
  v26 = v47;
  *v25 = 0xD000000000000024;
  *(v25 + 1) = v26;
  sub_2198A6C24(v15, &v24[OBJC_IVAR____TtC7NewsUI216UserNotification_kind], type metadata accessor for UserNotification.Kind);
  v27 = &v24[OBJC_IVAR____TtC7NewsUI216UserNotification_title];
  v28 = v50;
  *v27 = v49;
  v27[1] = v28;
  v29 = &v24[OBJC_IVAR____TtC7NewsUI216UserNotification_subtitle];
  v30 = v52;
  *v29 = v51;
  v29[1] = v30;
  v31 = &v24[OBJC_IVAR____TtC7NewsUI216UserNotification_message];
  v32 = v54;
  *v31 = v53;
  v31[1] = v32;
  v33 = &v24[OBJC_IVAR____TtC7NewsUI216UserNotification_threadIdentifier];
  v34 = v48;
  *v33 = 0xD00000000000003ALL;
  *(v33 + 1) = v34;
  *&v24[OBJC_IVAR____TtC7NewsUI216UserNotification_payload] = v21;
  sub_2198A6C24(v12, &v24[OBJC_IVAR____TtC7NewsUI216UserNotification_deliveryStatus], type metadata accessor for UserNotification.DeliveryStatus);
  v58[0] = v24;
  v58[1] = v23;

  v35 = objc_msgSendSuper2(v58, sel_init);
  sub_218736468(v12, type metadata accessor for UserNotification.DeliveryStatus);
  sub_218736468(v15, type metadata accessor for UserNotification.Kind);
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v36 = qword_280F61750;
  v37 = sub_219BF6214();
  sub_219BE5314("DB notification is being scheduled", 34, 2, &dword_2186C1000, v36, v37, MEMORY[0x277D84F90]);
  v38 = v56;
  v39 = *(v56 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_notificationService + 24);
  v40 = *(v56 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_notificationService + 32);
  __swift_project_boxed_opaque_existential_1((v56 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_notificationService), v39);
  (*(v40 + 56))(v35, v39, v40, 0.0);

  v41 = v38 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_schedulerState;
  v42 = *(v38 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_schedulerState + 48);
  v59[2] = *(v38 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_schedulerState + 32);
  v59[3] = v42;
  v60 = *(v38 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_schedulerState + 64);
  v43 = *(v38 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_schedulerState + 16);
  v59[0] = *(v38 + OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_schedulerState);
  v59[1] = v43;
  v44 = v55;
  *v41 = v57;
  *(v41 + 8) = v44;
  v45 = *&v58[25];
  *(v41 + 16) = *&v58[23];
  *(v41 + 32) = v45;
  *(v41 + 48) = *&v58[27];
  *(v41 + 64) = 1;
  sub_2198A6B3C(v59);

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI231EndOfTrackNotificationSchedulerC0G5StateO(uint64_t a1)
{
  if ((*(a1 + 64) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

uint64_t sub_2198A6964(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2198A69AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_2198A6A04(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

void sub_2198A6A48(uint64_t a1)
{
  if (!qword_27CC204A0)
  {
    MEMORY[0x28223BE20](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27CC204A0);
    }
  }
}

void sub_2198A6B6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_218831BDC(255, a3, a4, a5);
    v6 = sub_219BF78A4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2198A6BC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_218831BDC(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2198A6C24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2198A6C8C(void *a1)
{
  if ([a1 endOfAudioTrackNotificationsEnabled])
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
    v3 = OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_currentlyPlayingObservableToken;
    v4 = *&v1[OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_currentlyPlayingObservableToken];
    *&v1[OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_currentlyPlayingObservableToken] = v2;

    *(swift_allocObject() + 16) = v1;
    v5 = v1;
    sub_219BE20F4();

    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v6 = *&v1[v3];
    if (v6)
    {
      v7 = v6;
      sub_219BE1A04();

      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = *&v1[OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_currentlyPlayingObservableToken];
    *&v1[OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_currentlyPlayingObservableToken] = 0;
  }
}

double sub_2198A6DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9 != 1)
  {
    if (a9)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_2198A6E5C(uint64_t a1)
{
  sub_2189AD5C8(0);
  v1 = sub_219BEE964();
  sub_2186E83F8(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  sub_218C6FAA0(0);
  swift_allocObject();
  *(v6 + v5) = sub_219BEFB94();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D32308], v3);
  sub_2191EDA0C(v6);
  return v1;
}

uint64_t sub_2198A700C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2198A7404();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v5 = qword_280F61708;
  sub_2186E83F8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D839F8];
  *(v6 + 16) = xmmword_219C09BA0;
  v8 = MEMORY[0x277D83A80];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v4;
  sub_219BF6214();
  sub_219BE5314("Promoted article list emitter fetching promoted articles with expireAfter=%f", v27);

  sub_219BEF0B4();
  v9 = *(v29 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v10 = [v9 backingTag];

  v11 = [v10 identifier];
  swift_unknownObjectRelease();
  v12 = sub_219BF5414();
  v14 = v13;

  v15 = *MEMORY[0x277D30BC0];
  v16 = v5;
  v17 = v15;
  sub_219BEF0B4();
  v18 = *(v28 + 64);
  swift_unknownObjectRetain();

  v30[0] = v12;
  v30[1] = v14;
  v30[2] = v16;
  v30[3] = v17;
  *&v30[4] = v4;
  v30[5] = v18;
  v30[6] = MEMORY[0x277D84FA0];
  v30[7] = MEMORY[0x277D84FA0];
  MEMORY[0x28223BE20](v19);
  sub_2186E83F8(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  sub_219BE3204();
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  *(v20 + 24) = a1;

  v21 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  *(v22 + 24) = a1;

  v23 = sub_219BE2E54();
  sub_218A59C84(0);
  sub_219BE2F64();

  v24 = sub_219BE2E54();
  v25 = sub_219BE3064();

  sub_218D06F24(v30);
  return v25;
}

double sub_2198A7404()
{
  v1 = sub_219BF0BD4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_27CC080C0 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  if (LOBYTE(v10))
  {
    return 1.79769313e308;
  }

  v6 = v0 + OBJC_IVAR____TtC7NewsUI238PromotedArticleListTagFeedGroupEmitter_knobs;
  if (*(v6 + *(type metadata accessor for PromotedArticleListTagFeedGroupKnobs(0) + 24)))
  {
    sub_219BEF134();
    sub_219BEF524();
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  else
  {
    sub_219BEF0B4();
    v7 = *(*&v10 + 64);
    swift_unknownObjectRetain();

    v8 = [v7 expirePinnedArticlesAfter];
    swift_unknownObjectRelease();
    return v8;
  }
}

void *sub_2198A75C8(unint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_2198A7630(a3, *a1);
  if (!v3)
  {
    v4 = sub_2198A7AC4(v4, v5);
  }

  return v4;
}

uint64_t sub_2198A7630(uint64_t a1, unint64_t a2)
{
  v3 = sub_219BF0BD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PromotedArticleListTagFeedGroupKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  (*(v4 + 8))(v6, v3);
  v7 = v30;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v8 = qword_280F61708;
  sub_2186E83F8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09EC0;
  v10 = a2 >> 62;
  if (a2 >> 62)
  {
    v11 = sub_219BF7214();
  }

  else
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D83B88];
  v13 = MEMORY[0x277D83C10];
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 64) = v13;
  *(v9 + 32) = v11;
  *(v9 + 96) = v12;
  *(v9 + 104) = v13;
  *(v9 + 72) = v7;
  sub_219BF6214();
  sub_219BE5314("Promoted article list will clamp %ld headlines with max=%ld", v29, v30);

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v10)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = sub_219BF7214();
    if (sub_219BF7214() < 0)
    {
      goto LABEL_50;
    }

    if (v9 >= v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = v9;
    }

    if (v9 < 0)
    {
      v16 = v7;
    }

    if (v7)
    {
      v9 = v16;
    }

    else
    {
      v9 = 0;
    }

    v14 = sub_219BF7214();
  }

  else
  {
    v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 >= v7)
    {
      v15 = v7;
    }

    else
    {
      v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v9 = v15;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v14 < v9)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if ((a2 & 0xC000000000000001) != 0 && v9)
  {
    sub_218731D50();

    v17 = 0;
    do
    {
      v18 = v17 + 1;
      sub_219BF7334();
      v17 = v18;
    }

    while (v9 != v18);
    if (!v10)
    {
      goto LABEL_32;
    }
  }

  else
  {

    if (!v10)
    {
LABEL_32:
      v19 = 0;
      v8 = a2 & 0xFFFFFFFFFFFFFF8;
      v20 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
      v21 = (2 * v9) | 1;
      goto LABEL_35;
    }
  }

  v8 = sub_219BF7564();
LABEL_35:
  v22 = v21 >> 1;
  if (v19 != v21 >> 1)
  {
    if ((v21 & 1) == 0)
    {
LABEL_38:
      sub_218B667DC(v8, v20, v19, v21);
      v23 = v25;
      goto LABEL_45;
    }

    v10 = v21;
    v9 = v20;
    v7 = v19;
    sub_219BF7934();
    swift_unknownObjectRetain_n();
    v26 = swift_dynamicCastClass();
    if (!v26)
    {
      swift_unknownObjectRelease();
      v26 = MEMORY[0x277D84F90];
    }

    v27 = *(v26 + 16);

    if (!__OFSUB__(v22, v7))
    {
      if (v27 == v22 - v7)
      {
        v23 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v23)
        {
          return v23;
        }

        v23 = MEMORY[0x277D84F90];
LABEL_45:
        swift_unknownObjectRelease();
        return v23;
      }

      goto LABEL_52;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    swift_unknownObjectRelease();
    v19 = v7;
    v20 = v9;
    v21 = v10;
    goto LABEL_38;
  }

  v23 = sub_219BEEDD4();
  sub_2198A92D4(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
  swift_allocError();
  *v24 = xmmword_219C14CF0;
  (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D32400], v23);
  swift_willThrow();
  swift_unknownObjectRelease();
  return v23;
}

void *sub_2198A7AC4(uint64_t a1, unint64_t a2)
{
  v104 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2186E83F8(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v78 - v5;
  sub_2186E83F8(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v89 = &v78 - v8;
  sub_2186E83F8(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v78 - v10;
  v11 = sub_219BF2AB4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v95 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A89A94(0);
  MEMORY[0x28223BE20](v14 - 8);
  v86 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BDBD64();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PromotedArticleListTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v17 - 8);
  v85 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BF1934();
  v93 = *(v19 - 8);
  v94 = v19;
  MEMORY[0x28223BE20](v19);
  v92 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720(0);
  MEMORY[0x28223BE20](v21 - 8);
  v99 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF2034();
  v90 = *(v23 - 8);
  v91 = v23;
  MEMORY[0x28223BE20](v23);
  v103 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BF3C84();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = (&v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v31 = (&v78 - v30);
  v32 = sub_219BF3E84();
  v101 = *(v32 - 8);
  v102 = v32;
  MEMORY[0x28223BE20](v32);
  v100 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a2;
  v96 = v12;
  if (a2 >> 62)
  {
    v34 = sub_219BF7214();
  }

  else
  {
    v34 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = v6;
  v97 = v11;
  if (v34)
  {
    v110 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v34 & ~(v34 >> 63), 0);
    if (v34 < 0)
    {
      __break(1u);
      return result;
    }

    v36 = v110;
    if ((v108 & 0xC000000000000001) != 0)
    {
      v37 = 0;
      LODWORD(v107) = *MEMORY[0x277D34128];
      v106 = (v26 + 32);
      do
      {
        *v31 = MEMORY[0x21CECE0F0](v37);
        (*(v26 + 104))(v31, v107, v25);
        v110 = v36;
        v39 = *(v36 + 16);
        v38 = *(v36 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_218C34A88((v38 > 1), v39 + 1, 1);
          v36 = v110;
        }

        ++v37;
        *(v36 + 16) = v39 + 1;
        (*(v26 + 32))(v36 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v39, v31, v25);
      }

      while (v34 != v37);
    }

    else
    {
      v40 = (v108 + 32);
      LODWORD(v108) = *MEMORY[0x277D34128];
      v106 = *(v26 + 104);
      v107 = v26 + 104;
      v105 = (v26 + 32);
      do
      {
        *v28 = *v40;
        v106(v28, v108, v25);
        v110 = v36;
        v41 = *(v36 + 16);
        v42 = *(v36 + 24);
        swift_unknownObjectRetain();
        if (v41 >= v42 >> 1)
        {
          sub_218C34A88((v42 > 1), v41 + 1, 1);
          v36 = v110;
        }

        *(v36 + 16) = v41 + 1;
        (*(v26 + 32))(v36 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v41, v28, v25);
        ++v40;
        --v34;
      }

      while (v34);
    }
  }

  v43 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v43);
  sub_218F0BB90(v43);
  v44 = v100;
  sub_219BF3E74();
  sub_219BEF0B4();
  v45 = *(v110 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v46 = [v45 backingChannel];

  if (!v46)
  {
    sub_219BEF0B4();
    v47 = *(v110 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v46 = [v47 backingTag];
  }

  sub_2189D2C8C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v48 = swift_allocObject();
  v107 = v48;
  *(v48 + 16) = xmmword_219C146A0;
  *(v48 + 32) = v46;
  sub_2186E83F8(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v49 = v101;
  v50 = *(v101 + 80);
  v108 = v46;
  v51 = (v50 + 32) & ~v50;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_219C09BA0;
  (*(v49 + 16))(v52 + v51, v44, v102);
  v80 = sub_219BEC004();
  v53 = *(v80 - 8);
  v79 = *(v53 + 56);
  v81 = v53 + 56;
  v79(v99, 1, 1, v80);
  swift_unknownObjectRetain();
  sub_219A95188(v43);
  sub_219A95188(v43);
  sub_219A951A0(v43);
  sub_219A951B8(v43);
  sub_219A952CC(v43);
  sub_219A952E4(v43);
  sub_219A953F8(v43);
  sub_219BF2024();
  v54 = v87;
  v55 = *(v87 + OBJC_IVAR____TtC7NewsUI238PromotedArticleListTagFeedGroupEmitter_formatService + 24);
  v106 = *(v87 + OBJC_IVAR____TtC7NewsUI238PromotedArticleListTagFeedGroupEmitter_formatService + 32);
  v107 = v55;
  v105 = __swift_project_boxed_opaque_existential_1((v87 + OBJC_IVAR____TtC7NewsUI238PromotedArticleListTagFeedGroupEmitter_formatService), v55);
  sub_2197B8A8C(0);
  v56 = v85;
  sub_219BEDD14();
  v57 = v82;
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v83 + 8))(v57, v84);
  v58 = [v108 identifier];
  sub_219BF5414();

  v59 = v99;
  v79(v99, 1, 1, v80);
  sub_218A42400(0);
  v61 = v86;
  (*(*(v60 - 8) + 56))(v86, 1, 1, v60);
  v62 = v92;
  sub_219BF1764();

  sub_2198A98EC(v61, sub_218A89A94);
  sub_2198A98EC(v59, sub_2186FE720);
  v63 = v94;
  v99 = *(v93 + 8);
  (v99)(v56, v94);
  v64 = OBJC_IVAR____TtC7NewsUI238PromotedArticleListTagFeedGroupEmitter_knobs;
  sub_2189AD5C8(0);
  v66 = v65;
  v67 = *(v65 - 8);
  v68 = v88;
  (*(v67 + 16))(v88, v54 + v64, v65);
  (*(v67 + 56))(v68, 0, 1, v66);
  sub_219BEF0B4();
  v69 = *(v110 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v70 = sub_219BF35D4();
  (*(*(v70 - 8) + 56))(v89, 1, 1, v70);
  LOBYTE(v109) = 2;
  sub_218C6F8FC(0);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v71 = *(v109 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v72 = sub_219BF2774();
  (*(*(v72 - 8) + 56))(v98, 1, 1, v72);
  v73 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v73 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v74 = v95;
  sub_219BF2A84();
  v75 = v103;
  v76 = sub_219BF2194();
  v77 = v97;
  swift_unknownObjectRelease();
  (*(v96 + 8))(v74, v77);
  (v99)(v62, v63);
  (*(v90 + 8))(v75, v91);
  (*(v101 + 8))(v100, v102);
  return v76;
}

uint64_t sub_2198A8A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218A59C84(0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TagFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198A8BDC(a3, a1, v10);
  sub_2198A994C(v10, v7, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_2186E83F8(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v11 = sub_219BE3014();
  sub_2198A98EC(v10, type metadata accessor for TagFeedGroup);
  return v11;
}

uint64_t sub_2198A8BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v25 = a3;
  sub_2186E83F8(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  v7 = sub_219BEF554();
  MEMORY[0x28223BE20](v7 - 8);
  v22[0] = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v10 = sub_219BF1904();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BED8D4();
  v14 = *(v23 - 8);
  v15 = MEMORY[0x28223BE20](v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a2, v10, v15);
  sub_2197B8A8C(0);
  v18 = sub_219BEDCB4();
  v22[1] = v19;
  v22[2] = v18;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AD5C8(0);
  sub_219BEE9B4();
  sub_219BEE984();
  v20 = sub_219BEE5D4();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  sub_219BED854();
  (*(v14 + 32))(v25, v17, v23);
  type metadata accessor for TagFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

double sub_2198A8F6C(uint64_t a1, uint64_t *a2)
{
  sub_2198A92D4(&unk_27CC20510, type metadata accessor for PromotedArticleListTagFeedGroupEmitter, &unk_219CAFB00);
  sub_219BED704();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup(0);
  sub_2198A92D4(&qword_280EDE9C0, type metadata accessor for TagFeedGroup, &unk_219C8E808);
  sub_219BEF194();

  return result;
}

uint64_t sub_2198A90C8()
{
  v1 = OBJC_IVAR____TtC7NewsUI238PromotedArticleListTagFeedGroupEmitter_config;
  sub_2197B8A8C(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2198A98EC(v0 + OBJC_IVAR____TtC7NewsUI238PromotedArticleListTagFeedGroupEmitter_knobs, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI238PromotedArticleListTagFeedGroupEmitter_formatService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI238PromotedArticleListTagFeedGroupEmitter_promotedHeadlineService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PromotedArticleListTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_27CC204D8;
  if (!qword_27CC204D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2198A91FC(uint64_t a1)
{
  sub_2197B8A8C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PromotedArticleListTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2198A92D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2198A9340@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_2197B8A8C(0);
  v5 = v4;
  v6 = swift_allocBox();
  result = (*(*(v5 - 8) + 16))(v7, v3 + OBJC_IVAR____TtC7NewsUI238PromotedArticleListTagFeedGroupEmitter_config, v5);
  *a1 = v6 | 2;
  return result;
}

uint64_t sub_2198A93C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI238PromotedArticleListTagFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for PromotedArticleListTagFeedGroupKnobs(0);
  a1[4] = sub_2198A92D4(&unk_280E9AD40, type metadata accessor for PromotedArticleListTagFeedGroupKnobs, &unk_219C3EB20);
  a1[5] = sub_2198A92D4(&qword_27CC1FA08, type metadata accessor for PromotedArticleListTagFeedGroupKnobs, &unk_219C3EAF8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2198A994C(v3 + v4, boxed_opaque_existential_1, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
}

uint64_t sub_2198A94EC@<X0>(uint64_t *a2@<X8>)
{
  sub_2186E83F8(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2197B8A8C(0);
  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2198A98EC(inited + 32, sub_2188317B0);
  sub_2198A99B4(0);
  a2[3] = v6;
  a2[4] = sub_2198A92D4(&qword_27CC20528, sub_2198A99B4, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2198A9674(uint64_t a1)
{
  sub_2198A92D4(&unk_27CC20500, type metadata accessor for PromotedArticleListTagFeedGroupEmitter, &unk_219CAFAA8);

  return sub_219BE2324();
}

uint64_t sub_2198A9848()
{
  v1 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + OBJC_IVAR____TtC7NewsUI238PromotedArticleListTagFeedGroupEmitter_promotedHeadlineService), *(*(v0 + 16) + OBJC_IVAR____TtC7NewsUI238PromotedArticleListTagFeedGroupEmitter_promotedHeadlineService + 24));
  return sub_218C61998(v1);
}

uint64_t sub_2198A98EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2198A994C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2198A99E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_219BE4574();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D351D0])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277D35188] || v9 == *MEMORY[0x277D35190])
  {
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277D35168])
  {
    goto LABEL_10;
  }

  if (v9 == *MEMORY[0x277D351A0] || v9 == *MEMORY[0x277D35170] || v9 == *MEMORY[0x277D351E0] || v9 == *MEMORY[0x277D351B8] || v9 == *MEMORY[0x277D351B0] || v9 == *MEMORY[0x277D35178])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277D35180])
  {
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277D351A8])
  {
LABEL_2:
    v10 = MEMORY[0x277D2D940];
LABEL_6:
    v11 = *v10;
    v12 = sub_219BDF194();
    v13 = *(*(v12 - 8) + 104);
    v14 = a1;
    v15 = v11;
    return v13(v14, v15, v12);
  }

  if (v9 == *MEMORY[0x277D351F0])
  {
LABEL_5:
    v10 = MEMORY[0x277D2D938];
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x277D351E8] || v9 == *MEMORY[0x277D351C0])
  {
LABEL_10:
    v10 = MEMORY[0x277D2D930];
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x277D35198] || v9 == *MEMORY[0x277D351D8])
  {
    goto LABEL_5;
  }

  v22 = *MEMORY[0x277D351C8];
  v23 = v9;
  v12 = sub_219BDF194();
  v13 = *(*(v12 - 8) + 104);
  if (v23 != v22)
  {
    v13(a1, *MEMORY[0x277D2D940], v12);
    return (*(v5 + 8))(v8, v4);
  }

  v15 = *MEMORY[0x277D2D930];
  v14 = a1;
  return v13(v14, v15, v12);
}

uint64_t sub_2198A9D00()
{

  return swift_deallocClassInstance();
}

double sub_2198A9D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2198A9DB4(a1, a2);
  }

  return result;
}

uint64_t sub_2198A9DB4(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  sub_21883F194(0);
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v92 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = &v86 - v7;
  v8 = sub_219BDBD64();
  v96 = *(v8 - 8);
  v97 = v8;
  MEMORY[0x28223BE20](v8);
  v95 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for AudioFeedTrack(0);
  v10 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v91 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v88 = &v86 - v13;
  MEMORY[0x28223BE20](v14);
  v89 = (&v86 - v15);
  sub_218EE3174(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729EFC(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8);
  v99 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v94 = &v86 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = (&v86 - v25);
  MEMORY[0x28223BE20](v27);
  v29 = &v86 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v86 - v31;
  v93 = a1;
  sub_219BDDB74();
  v101 = v4;
  sub_219BDDB74();
  v33 = *(v17 + 56);
  sub_21872D5E0(v32, v19, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  v34 = v103;
  sub_21872D5E0(v29, &v19[v33], &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  v35 = *(v10 + 48);
  v36 = v35(v19, 1, v34);
  v98 = v10 + 48;
  if (v36 == 1)
  {
    sub_2198B9AD4(v29, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    sub_2198B9AD4(v32, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    v37 = v35(&v19[v33], 1, v34);
    v38 = v100;
    if (v37 == 1)
    {
      sub_2198B9AD4(v19, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      v39 = v102;
      v40 = v99;
      goto LABEL_26;
    }
  }

  else
  {
    sub_21872D5E0(v19, v26, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    if (v35(&v19[v33], 1, v34) != 1)
    {
      v87 = v35;
      v43 = v89;
      sub_21872D24C(&v19[v33], v89, type metadata accessor for AudioFeedTrack);
      v86 = v26;
      v44 = [*v26 identifier];
      v45 = sub_219BF5414();
      v47 = v46;

      v48 = [*v43 identifier];
      v49 = sub_219BF5414();
      v51 = v50;

      if (v45 == v49 && v47 == v51)
      {

        v38 = v100;
      }

      else
      {
        v61 = sub_219BF78F4();

        v38 = v100;
        if ((v61 & 1) == 0)
        {
          sub_2198B9AD4(v29, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          sub_2198B9AD4(v32, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          sub_218745DCC(v89, type metadata accessor for AudioFeedTrack);
          sub_218745DCC(v86, type metadata accessor for AudioFeedTrack);
          sub_2198B9AD4(v19, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          v39 = v102;
          v40 = v99;
          v35 = v87;
          goto LABEL_7;
        }
      }

      v62 = *(v34 + 32);
      v63 = v86;
      v64 = v89;
      v65 = sub_2198DB278((v86 + v62), (v89 + v62));
      sub_2198B9AD4(v29, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      sub_2198B9AD4(v32, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      sub_218745DCC(v64, type metadata accessor for AudioFeedTrack);
      sub_218745DCC(v63, type metadata accessor for AudioFeedTrack);
      sub_2198B9AD4(v19, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      v39 = v102;
      v40 = v99;
      v35 = v87;
      if (v65)
      {
        goto LABEL_26;
      }

      goto LABEL_7;
    }

    sub_2198B9AD4(v29, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    sub_2198B9AD4(v32, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    sub_218745DCC(v26, type metadata accessor for AudioFeedTrack);
    v38 = v100;
  }

  sub_218745DCC(v19, sub_218EE3174);
  v39 = v102;
  v40 = v99;
LABEL_7:
  if ((sub_219BDDB94() & 1) == 0)
  {

    sub_219BDD124();
  }

  v41 = v35;
  if (v38[5])
  {
    v42 = v38[5];
  }

  else
  {
    v42 = v38[4];
  }

  type metadata accessor for AudioSessionManager.Session();
  v52 = swift_allocObject();

  v53 = v95;
  sub_219BDBD54();
  v54 = sub_219BDBD44();
  v56 = v55;
  (*(v96 + 8))(v53, v97);
  *(v52 + 16) = v54;
  *(v52 + 24) = v56;
  *(v52 + 48) = 1;
  *(v52 + 56) = 0;
  *(v52 + 64) = 0;
  *(v52 + 72) = 0;
  *(v52 + 32) = v42;
  *(v52 + 40) = 0;
  v38[14] = v52;

  if ((sub_219BDDB94() & 1) == 0)
  {

    sub_219BDD114();
  }

  v38[5] = 0;

  v57 = v94;
  sub_219BDDB74();
  v35 = v41;
  if (v41(v57, 1, v103) == 1)
  {
    sub_2198B9AD4(v57, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  }

  else
  {
    v58 = v88;
    sub_21872D24C(v57, v88, type metadata accessor for AudioFeedTrack);
    swift_beginAccess();
    v59 = v38[15];
    if (v59)
    {
      v60 = v38[16];
      swift_endAccess();

      v59(v58);
      sub_2187FABEC(v59, v60);
      sub_218745DCC(v58, type metadata accessor for AudioFeedTrack);
    }

    else
    {
      sub_218745DCC(v58, type metadata accessor for AudioFeedTrack);
      swift_endAccess();
    }

    v66 = v38[15];
    v67 = v38[16];
    v38[15] = 0;
    v38[16] = 0;
    sub_2187FABEC(v66, v67);
  }

LABEL_26:
  if (*(v38[14] + 48) == 1)
  {
    v68 = v90;
    sub_2187361B0(v39, v90, sub_21883F194);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_218745DCC(v68, sub_21883F194);
    }

    else
    {
      sub_218A6E5D0(0);
      v70 = v35;
      v71 = v68;
      v72 = *(v68 + v69[12]);
      v73 = v69[16];
      v74 = *(v71 + v69[20]);
      v75 = sub_219BDD9E4();
      (*(*(v75 - 8) + 8))(v71 + v73, v75);
      v76 = v71;
      v35 = v70;
      sub_218745DCC(v76, type metadata accessor for AudioFeedTrack);
      if ((v74 & 1) == 0)
      {
        v77 = v38[14];
        *(v77 + 40) = v72;
        *(v77 + 48) = 0;
      }
    }
  }

  sub_219BDDB74();
  if (v35(v40, 1, v103) == 1)
  {
    return sub_2198B9AD4(v40, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  }

  v79 = v91;
  sub_21872D24C(v40, v91, type metadata accessor for AudioFeedTrack);
  v80 = v92;
  sub_2187361B0(v39, v92, sub_21883F194);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_218A6E5D0(0);
    goto LABEL_37;
  }

  v82 = 0.0;
  if (EnumCaseMultiPayload == 1)
  {
    sub_218A6E554(0);
LABEL_37:
    v82 = *(v80 + *(v83 + 48));
    v84 = *(v83 + 64);
    v85 = sub_219BDD9E4();
    (*(*(v85 - 8) + 8))(v80 + v84, v85);
    sub_218745DCC(v80, type metadata accessor for AudioFeedTrack);
  }

  sub_2198B2E44(v79, v82);
  return sub_218745DCC(v79, type metadata accessor for AudioFeedTrack);
}

uint64_t sub_2198AA9A0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  sub_2187FABEC(*(v0 + 120), *(v0 + 128));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  return v0;
}

uint64_t sub_2198AAA10()
{
  sub_2198AA9A0();

  return swift_deallocClassInstance();
}

void sub_2198AAA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v193 = a3;
  v197 = a2;
  v191 = a1;
  v200 = sub_219BDF874();
  v194 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v189 = v4;
  v199 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_219BE0774();
  v192 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v190 = v5;
  v201 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_219BDF884();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v167 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v6;
  MEMORY[0x28223BE20](v7);
  v168 = &v148 - v8;
  v203 = sub_219BDF864();
  v196 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v195 = v9;
  v202 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  v165 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v176 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = v12;
  MEMORY[0x28223BE20](v13);
  v177 = &v148 - v14;
  sub_218729EFC(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v10);
  MEMORY[0x28223BE20](v15 - 8);
  v172 = &v148 - v16;
  v178 = type metadata accessor for AudioFeedTrack(0);
  v179 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v173 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v17;
  MEMORY[0x28223BE20](v18);
  v180 = &v148 - v19;
  sub_21883F194(0);
  v187 = v20;
  v162 = *(v20 - 1);
  MEMORY[0x28223BE20](v20);
  v174 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v175 = &v148 - v23;
  MEMORY[0x28223BE20](v24);
  v161 = &v148 - v25;
  MEMORY[0x28223BE20](v26);
  v160 = &v148 - v27;
  MEMORY[0x28223BE20](v28);
  v171 = (&v148 - v29);
  MEMORY[0x28223BE20](v30);
  v188 = (&v148 - v31);
  MEMORY[0x28223BE20](v32);
  v186 = (&v148 - v33);
  v163 = v34;
  MEMORY[0x28223BE20](v35);
  v185 = (&v148 - v36);
  v184 = sub_219BDBD34();
  v183 = *(v184 - 1);
  MEMORY[0x28223BE20](v184);
  v38 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_219BDBD64();
  v39 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v41 = &v148 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_219BDD0D4();
  v43 = *(v42 - 8);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v148 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = v3[2];
  (*(v43 + 104))(v46, *MEMORY[0x277CEAE68], v42, v44);
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v39 + 8))(v41, v182);
  sub_219BDBD24();
  sub_219BDCDA4();

  (*(v183 + 1))(v38, v184);
  (*(v43 + 8))(v46, v42);
  v47 = v3[14];
  v48 = v3;

  v49 = v185;
  sub_219BE20E4();
  v50 = v186;
  sub_21872D24C(v49, v186, sub_21883F194);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v52 = 0.0;
    v53 = v188;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_6;
    }

    sub_218A6E554(0);
  }

  else
  {
    sub_218A6E5D0(0);
    v53 = v188;
  }

  v52 = *(v50 + *(v54 + 48));
  v55 = *(v54 + 64);
  v56 = sub_219BDD9E4();
  (*(*(v56 - 8) + 8))(v50 + v55, v56);
  sub_218745DCC(v50, type metadata accessor for AudioFeedTrack);
LABEL_6:
  if ((*(v47 + 48) & 1) == 0)
  {
    v57 = v52 - *(v47 + 40);
    if (v57 <= 0.0)
    {
      v57 = 0.0;
    }

    *(v47 + 56) = *(v47 + 56) + v57;
    *(v47 + 64) = v57;
    *(v47 + 40) = 0;
    *(v47 + 48) = 1;
  }

  sub_219BE20E4();
  if (swift_getEnumCaseMultiPayload())
  {
    v58 = sub_21883F194;
    v59 = v53;
LABEL_24:
    sub_218745DCC(v59, v58);
    goto LABEL_25;
  }

  sub_218A6E5D0(0);
  v61 = v60;
  v62 = *(v60 + 64);
  v63 = sub_219BDD9E4();
  v64 = *(*(v63 - 8) + 8);
  v64(v53 + v62, v63);
  sub_218745DCC(v53, type metadata accessor for AudioFeedTrack);
  v65 = v171;
  sub_219BE20E4();
  v66 = v172;
  sub_219BDDB74();
  sub_218745DCC(v65, sub_21883F194);
  if ((*(v179 + 48))(v66, 1, v178) != 1)
  {
    sub_21872D24C(v66, v180, type metadata accessor for AudioFeedTrack);
    __swift_project_boxed_opaque_existential_1(v48 + 9, v48[12]);
    v67 = v160;
    sub_219BE20E4();
    v68 = v161;
    sub_21872D24C(v67, v161, sub_21883F194);
    v69 = swift_getEnumCaseMultiPayload();
    if (v69)
    {
      if (v69 != 1)
      {
LABEL_18:
        v71 = v180;
        sub_219BDD6D4();
        if (v72)
        {
          [*(v71 + 8) duration];
        }

        if (sub_219BDEAA4())
        {
          v73 = v194;
          v74 = v177;
          v75 = v200;
          (*(v194 + 16))(v177, v193, v200);
          (*(v73 + 56))(v74, 0, 1, v75);
          v76 = v175;
          sub_219BE20E4();
          v185 = *v71;
          v77 = v48;
          v186 = v48[14];
          v188 = *(v186 + 4);
          v184 = type metadata accessor for AudioFeedTrack;
          sub_2187361B0(v71, v173, type metadata accessor for AudioFeedTrack);
          v183 = sub_21883F194;
          sub_2187361B0(v76, v174, sub_21883F194);
          v187 = MEMORY[0x277D2DDE0];
          sub_21872D5E0(v74, v176, &qword_280EE8648, MEMORY[0x277D2DDE0]);
          v78 = v196;
          (*(v196 + 16))(v202, v197, v203);
          v79 = (*(v179 + 80) + 16) & ~*(v179 + 80);
          v80 = (v164 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
          v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
          v82 = (*(v162 + 80) + v81 + 8) & ~*(v162 + 80);
          v83 = (v163 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
          v84 = (v165[80] + v83 + 8) & ~v165[80];
          v85 = (v166 + *(v78 + 80) + v84) & ~*(v78 + 80);
          v86 = swift_allocObject();
          sub_21872D24C(v173, v86 + v79, v184);
          *(v86 + v80) = v185;
          *(v86 + v81) = v77;
          sub_21872D24C(v174, v86 + v82, v183);
          *(v86 + v83) = v186;
          sub_2198B8DA0(v176, v86 + v84);
          (*(v78 + 32))(v86 + v85, v202, v203);
          swift_retain_n();
          swift_unknownObjectRetain();
          v48 = v77;

          sub_219BDD154();

          sub_218745DCC(v175, sub_21883F194);
          sub_2198B9AD4(v177, &qword_280EE8648, v187);
        }

        else
        {
          v87 = v169;
          v88 = v168;
          v89 = v170;
          (*(v169 + 104))(v168, *MEMORY[0x277D2DDF8], v170);
          v90 = v194;
          v91 = v177;
          v92 = v200;
          (*(v194 + 16))(v177, v193, v200);
          (*(v90 + 56))(v91, 0, 1, v92);
          v93 = v175;
          sub_219BE20E4();
          v184 = *v71;
          v158 = v48;
          v160 = v48[14];
          v172 = *(v160 + 4);
          v187 = type metadata accessor for AudioFeedTrack;
          v94 = v173;
          sub_2187361B0(v71, v173, type metadata accessor for AudioFeedTrack);
          v186 = sub_21883F194;
          sub_2187361B0(v93, v174, sub_21883F194);
          v95 = v192;
          v96 = *(v192 + 16);
          v182 = v192 + 16;
          v183 = v96;
          (v96)(v201, v191, v198);
          v97 = v87;
          v98 = *(v87 + 16);
          v178 = v87 + 16;
          v181 = v98;
          v98(v167, v88, v89);
          v188 = MEMORY[0x277D2DDE0];
          sub_21872D5E0(v91, v176, &qword_280EE8648, MEMORY[0x277D2DDE0]);
          v99 = v196;
          v100 = *(v196 + 16);
          v161 = v196 + 16;
          v171 = v100;
          v100(v202, v197, v203);
          v101 = *(v179 + 80);
          v102 = (v101 + 16) & ~v101;
          v179 = v102;
          v103 = (v164 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
          v164 = v103;
          v104 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
          v105 = *(v162 + 80);
          v157 = v104;
          v106 = (v105 + v104 + 8) & ~v105;
          v107 = *(v95 + 80);
          v162 = v106;
          v108 = (v163 + v107 + v106) & ~v107;
          v156 = v108;
          v109 = *(v97 + 80);
          v110 = (v190 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
          v163 = v110;
          v111 = (v109 + v110 + 8) & ~v109;
          v155 = v111;
          v185 = ((v159 + v111 + 3) & 0xFFFFFFFFFFFFFFFCLL);
          v112 = v165[80];
          v113 = *(v99 + 80);
          v114 = (v185 + v112 + 5) & ~v112;
          v154 = v114;
          v149 = (v166 + v113 + v114) & ~v113;
          v166 = v101 | v105 | v107 | v109 | v112 | v113;
          v115 = swift_allocObject();
          sub_21872D24C(v94, v115 + v102, v187);
          *(v115 + v103) = v184;
          *(v115 + v104) = v158;
          sub_21872D24C(v174, v115 + v106, v186);
          v116 = *(v192 + 32);
          v159 = v192 + 32;
          v165 = v116;
          (v116)(v115 + v108, v201, v198);
          *(v115 + v110) = v160;
          v117 = *(v169 + 32);
          v152 = v169 + 32;
          v153 = v117;
          v118 = v115 + v111;
          v119 = v167;
          v117(v118, v167, v170);
          v120 = v185 + v115;
          *v120 = 0;
          v120[4] = 1;
          v121 = v176;
          sub_2198B8DA0(v176, v115 + v114);
          v122 = *(v196 + 32);
          v150 = v196 + 32;
          v151 = v122;
          v123 = v149;
          v124 = v203;
          v122(v115 + v149, v202, v203);
          swift_retain_n();

          swift_unknownObjectRetain();
          sub_219BDD154();

          v160 = v158[14];
          v172 = *(v160 + 4);
          v125 = v187;
          sub_2187361B0(v180, v94, v187);
          v126 = v174;
          v127 = v186;
          sub_2187361B0(v175, v174, v186);
          v128 = v201;
          v129 = v198;
          (v183)(v201, v191, v198);
          v130 = v119;
          v131 = v170;
          v181(v130, v168, v170);
          sub_21872D5E0(v177, v121, &qword_280EE8648, v188);
          v132 = v202;
          v171(v202, v197, v124);
          v133 = swift_allocObject();
          sub_21872D24C(v173, v133 + v179, v125);
          *(v133 + v164) = v184;
          *(v133 + v157) = v158;
          sub_21872D24C(v126, v133 + v162, v127);
          (v165)(v133 + v156, v128, v129);
          *(v133 + v163) = v160;
          v153(v133 + v155, v167, v131);
          v134 = v158;
          v135 = v185 + v133;
          *v135 = 0;
          v135[4] = 1;
          sub_2198B8DA0(v176, v133 + v154);
          v151(v133 + v123, v132, v203);
          swift_retain_n();
          v48 = v134;

          swift_unknownObjectRetain();
          sub_219BDD154();

          sub_218745DCC(v175, sub_21883F194);
          sub_2198B9AD4(v177, &qword_280EE8648, v188);
          (*(v169 + 8))(v168, v131);
        }

        v58 = type metadata accessor for AudioFeedTrack;
        v59 = v180;
        goto LABEL_24;
      }

      sub_218A6E554(0);
      v61 = v70;
    }

    v64((v68 + *(v61 + 64)), v63);
    sub_218745DCC(v68, type metadata accessor for AudioFeedTrack);
    goto LABEL_18;
  }

  sub_2198B9AD4(v66, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
LABEL_25:
  v136 = swift_allocObject();
  v137 = v48;
  swift_weakInit();
  v138 = v192;
  v139 = v198;
  (*(v192 + 16))(v201, v191, v198);
  v140 = v196;
  (*(v196 + 16))(v202, v197, v203);
  v141 = v194;
  (*(v194 + 16))(v199, v193, v200);
  v142 = (*(v138 + 80) + 24) & ~*(v138 + 80);
  v143 = (v190 + *(v140 + 80) + v142) & ~*(v140 + 80);
  v144 = (v195 + *(v141 + 80) + v143) & ~*(v141 + 80);
  v145 = swift_allocObject();
  *(v145 + 16) = v136;
  (*(v138 + 32))(v145 + v142, v201, v139);
  (*(v140 + 32))(v145 + v143, v202, v203);
  (*(v141 + 32))(v145 + v144, v199, v200);
  swift_beginAccess();
  v146 = v137[15];
  v147 = v137[16];
  v137[15] = sub_2198B9B48;
  v137[16] = v145;

  sub_2187FABEC(v146, v147);
}

double sub_2198AC2B8(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v105 = a5;
  v113 = a4;
  v111 = a3;
  v128 = a1;
  v5 = sub_219BDF864();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v112 = v7;
  v127 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_219BE0774();
  v126 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v109 = v8;
  v121 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudioFeedTrack(0);
  v107 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v108 = v10;
  v119 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  v106 = *(v11 - 8);
  v12 = *(v106 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v118 = v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v122 = v84 - v14;
  v15 = sub_219BDF884();
  v124 = *(v15 - 8);
  v125 = v15;
  v16 = *(v124 + 64);
  MEMORY[0x28223BE20](v15);
  v116 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v120 = v84 - v18;
  sub_21883F194(0);
  v104 = *(v19 - 8);
  v20 = *(v104 + 64);
  MEMORY[0x28223BE20](v19);
  v115 = v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v117 = v84 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = v84 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v84 - v27;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v114 = v6;
    v110 = v5;
    v103 = *v128;
    v32 = [v103 identifier];
    v33 = sub_219BF5414();
    v35 = v34;

    sub_219BE20E4();
    LOBYTE(v32) = sub_219BDDB84();
    sub_218745DCC(v28, sub_21883F194);
    if (v32)
    {
      v36 = 1;
    }

    else
    {
      v36 = 2;
    }

    sub_2196CF0C8(v33, v35, v36);

    sub_219BE20E4();
    if (swift_getEnumCaseMultiPayload())
    {

      sub_218745DCC(v25, sub_21883F194);
    }

    else
    {
      sub_218A6E5D0(0);
      v38 = *(v37 + 64);
      v39 = sub_219BDD9E4();
      (*(*(v39 - 8) + 8))(&v25[v38], v39);
      sub_218745DCC(v25, type metadata accessor for AudioFeedTrack);
      v40 = v120;
      (*(v124 + 104))(v120, *MEMORY[0x277D2DDF0], v125);
      v41 = sub_219BDF874();
      v42 = *(v41 - 8);
      v43 = v122;
      (*(v42 + 16))(v122, v105, v41);
      (*(v42 + 56))(v43, 0, 1, v41);
      v44 = v117;
      sub_219BE20E4();
      v93 = *(v31 + 112);
      v96 = *(v93 + 32);
      v102 = type metadata accessor for AudioFeedTrack;
      sub_2187361B0(v128, v119, type metadata accessor for AudioFeedTrack);
      v101 = sub_21883F194;
      sub_2187361B0(v44, v115, sub_21883F194);
      v45 = v126;
      v46 = *(v126 + 16);
      v99 = v126 + 16;
      v100 = v46;
      v46(v121, v111, v123);
      v47 = v124;
      v48 = *(v124 + 16);
      v97 = v124 + 16;
      v98 = v48;
      v48(v116, v40, v125);
      v105 = MEMORY[0x277D2DDE0];
      sub_21872D5E0(v43, v118, &qword_280EE8648, MEMORY[0x277D2DDE0]);
      v49 = v114;
      v50 = *(v114 + 16);
      v94 = v114 + 16;
      v95 = v50;
      v50(v127, v113, v110);
      v51 = *(v107 + 80);
      v52 = (v51 + 16) & ~v51;
      v92 = v52;
      v107 = (v108 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
      v54 = *(v104 + 80);
      v91 = v53;
      v55 = *(v45 + 80);
      v56 = v20 + v55 + ((v54 + v53 + 8) & ~v54);
      v57 = (v54 + v53 + 8) & ~v54;
      v90 = v57;
      v58 = v56 & ~v55;
      v87 = v58;
      v104 = (v109 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = *(v47 + 80);
      v108 = (v59 + v104 + 8) & ~v59;
      v109 = (v16 + v108 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v60 = *(v106 + 80);
      v61 = *(v49 + 80);
      v62 = v12 + v61 + ((v60 + v109 + 5) & ~v60);
      v63 = (v60 + v109 + 5) & ~v60;
      v86 = v63;
      v106 = v62 & ~v61;
      v89 = v51 | v54 | v55 | v59 | v60 | v61;
      v64 = swift_allocObject();
      v65 = v64 + v52;
      v66 = v119;
      sub_21872D24C(v119, v65, v102);
      *(v64 + v107) = v103;
      *(v64 + v53) = v31;
      sub_21872D24C(v115, v64 + v57, v101);
      v67 = *(v126 + 32);
      v126 += 32;
      v88 = v67;
      v68 = v123;
      v67(v64 + v58, v121, v123);
      *(v64 + v104) = v93;
      v69 = *(v124 + 32);
      v84[1] = v124 + 32;
      v85 = v69;
      v69(v64 + v108, v116, v125);
      v70 = v64 + v109;
      *v70 = 0;
      *(v70 + 4) = 1;
      v71 = v64 + v63;
      v72 = v118;
      sub_2198B8DA0(v118, v71);
      v73 = *(v114 + 32);
      v114 += 32;
      v84[0] = v73;
      v73(v64 + v106, v127, v110);
      swift_retain_n();
      swift_unknownObjectRetain();

      sub_219BDD154();

      v93 = *(v31 + 112);
      v96 = *(v93 + 32);
      v74 = v102;
      sub_2187361B0(v128, v66, v102);
      v75 = v115;
      v76 = v101;
      sub_2187361B0(v117, v115, v101);
      v77 = v121;
      v100(v121, v111, v68);
      v78 = v116;
      v79 = v125;
      v98(v116, v120, v125);
      sub_21872D5E0(v122, v72, &qword_280EE8648, v105);
      v80 = v110;
      v95(v127, v113, v110);
      v81 = v106;
      v82 = swift_allocObject();
      sub_21872D24C(v119, v82 + v92, v74);
      *(v82 + v107) = v103;
      *(v82 + v91) = v31;
      sub_21872D24C(v75, v82 + v90, v76);
      v88(v82 + v87, v77, v123);
      *(v82 + v104) = v93;
      v85(v82 + v108, v78, v79);
      v83 = v82 + v109;
      *v83 = 0;
      *(v83 + 4) = 1;
      sub_2198B8DA0(v118, v82 + v86);
      (v84[0])(v82 + v81, v127, v80);
      swift_retain_n();
      swift_unknownObjectRetain();

      sub_219BDD154();

      sub_218745DCC(v117, sub_21883F194);
      sub_2198B9AD4(v122, &qword_280EE8648, v105);
      (*(v124 + 8))(v120, v79);
    }
  }

  return result;
}

uint64_t sub_2198ACFC0(uint64_t a1, uint64_t a2)
{
  v125 = a2;
  v123 = a1;
  v3 = sub_219BDF864();
  v139 = *(v3 - 8);
  v140 = v3;
  MEMORY[0x28223BE20](v3);
  v124 = v4;
  v138 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BE0774();
  v137 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v121 = v5;
  v132 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  v119 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v136 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v8;
  MEMORY[0x28223BE20](v9);
  v134 = &v94 - v10;
  v135 = sub_219BDF884();
  v126 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v130 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v11;
  MEMORY[0x28223BE20](v12);
  v131 = &v94 - v13;
  sub_218729EFC(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v6);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v94 - v15;
  sub_21883F194(0);
  v18 = v17;
  v117 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v128 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v129 = &v94 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v94 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v94 - v26;
  v114 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v94 - v30;
  v32 = type metadata accessor for AudioFeedTrack(0);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v127 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v34;
  MEMORY[0x28223BE20](v35);
  v37 = (&v94 - v36);
  v122 = v2;
  sub_219BE20E4();
  v113 = v18;
  sub_219BDDB74();
  sub_218745DCC(v31, sub_21883F194);
  v115 = v33;
  if ((*(v33 + 48))(v16, 1, v32) == 1)
  {
    return sub_2198B9AD4(v16, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  }

  sub_21872D24C(v16, v37, type metadata accessor for AudioFeedTrack);
  v39 = v122;
  v40 = *(v122 + 112);

  sub_219BE20E4();
  sub_21872D24C(v27, v24, sub_21883F194);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v42 = v37;
  if (!EnumCaseMultiPayload)
  {
    sub_218A6E5D0(0);
    goto LABEL_7;
  }

  v43 = 0.0;
  if (EnumCaseMultiPayload == 1)
  {
    sub_218A6E554(0);
LABEL_7:
    v43 = *&v24[*(v44 + 48)];
    v45 = *(v44 + 64);
    v46 = sub_219BDD9E4();
    (*(*(v46 - 8) + 8))(&v24[v45], v46);
    sub_218745DCC(v24, type metadata accessor for AudioFeedTrack);
  }

  if ((*(v40 + 48) & 1) == 0)
  {
    v47 = v43 - *(v40 + 40);
    if (v47 <= 0.0)
    {
      v47 = 0.0;
    }

    *(v40 + 56) = *(v40 + 56) + v47;
    *(v40 + 64) = v47;
    *(v40 + 40) = 0;
    *(v40 + 48) = 1;
  }

  v48 = v126;
  v49 = v131;
  v50 = v135;
  (*(v126 + 104))(v131, *MEMORY[0x277D2DDF8], v135);
  v51 = sub_219BDF874();
  v52 = v134;
  (*(*(v51 - 8) + 56))(v134, 1, 1, v51);
  v53 = v129;
  sub_219BE20E4();
  v109 = *v42;
  v101 = *(v39 + 112);
  v104 = *(v101 + 32);
  v111 = type metadata accessor for AudioFeedTrack;
  sub_2187361B0(v42, v127, type metadata accessor for AudioFeedTrack);
  v110 = sub_21883F194;
  sub_2187361B0(v53, v128, sub_21883F194);
  v112 = v42;
  v54 = v137;
  v55 = *(v137 + 16);
  v107 = v137 + 16;
  v108 = v55;
  v55(v132, v123, v133);
  v56 = *(v48 + 16);
  v105 = v48 + 16;
  v106 = v56;
  v56(v130, v49, v50);
  v113 = MEMORY[0x277D2DDE0];
  sub_21872D5E0(v52, v136, &qword_280EE8648, MEMORY[0x277D2DDE0]);
  v57 = v139;
  v58 = *(v139 + 16);
  v102 = v139 + 16;
  v103 = v58;
  v58(v138, v125, v140);
  v59 = *(v115 + 80);
  v60 = (v59 + 16) & ~v59;
  v115 = v60;
  v61 = (v116 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v116 = v61;
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = *(v117 + 80);
  v100 = v62;
  v64 = (v63 + v62 + 8) & ~v63;
  v65 = *(v54 + 80);
  v99 = v64;
  v66 = (v114 + v65 + v64) & ~v65;
  v98 = v66;
  v67 = (v121 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = *(v48 + 80);
  v114 = v67;
  v117 = (v68 + v67 + 8) & ~v68;
  v121 = (v118 + v117 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v69 = *(v119 + 80);
  v119 = (v69 + v121 + 5) & ~v69;
  v70 = *(v57 + 80);
  v71 = (v120 + v70 + v119) & ~v70;
  v120 = v59 | v63 | v65 | v68 | v69 | v70;
  v94 = v71;
  v72 = v39;
  v73 = swift_allocObject();
  sub_21872D24C(v127, v73 + v60, v111);
  *(v73 + v61) = v109;
  *(v73 + v62) = v72;
  sub_21872D24C(v128, v73 + v64, v110);
  v74 = *(v137 + 32);
  v137 += 32;
  v118 = v74;
  v74(v73 + v66, v132, v133);
  *(v73 + v67) = v101;
  v75 = *(v48 + 32);
  v96 = v48 + 32;
  v97 = v75;
  v75(v73 + v117, v130, v135);
  v76 = v73 + v121;
  *v76 = 0;
  *(v76 + 4) = 1;
  sub_2198B8DA0(v136, v73 + v119);
  v77 = *(v139 + 32);
  v139 += 32;
  v95 = v77;
  v77(v73 + v71, v138, v140);
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_219BDD154();

  v101 = *(v72 + 112);
  v104 = *(v101 + 32);
  v78 = v127;
  v79 = v111;
  sub_2187361B0(v112, v127, v111);
  v80 = v128;
  v81 = v110;
  sub_2187361B0(v129, v128, v110);
  v83 = v132;
  v82 = v133;
  v108(v132, v123, v133);
  v84 = v130;
  v85 = v135;
  v106(v130, v131, v135);
  sub_21872D5E0(v134, v136, &qword_280EE8648, v113);
  v103(v138, v125, v140);
  v86 = v94;
  v87 = swift_allocObject();
  sub_21872D24C(v78, v87 + v115, v79);
  v88 = v109;
  *(v87 + v116) = v109;
  *(v87 + v100) = v122;
  sub_21872D24C(v80, v87 + v99, v81);
  v118(v87 + v98, v83, v82);
  *(v87 + v114) = v101;
  v97(v87 + v117, v84, v85);
  v89 = v87 + v121;
  *v89 = 0;
  *(v89 + 4) = 1;
  sub_2198B8DA0(v136, v87 + v119);
  v95(v87 + v86, v138, v140);
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_219BDD154();

  sub_218745DCC(v129, sub_21883F194);
  sub_2198B9AD4(v134, &qword_280EE8648, v113);
  (*(v126 + 8))(v131, v85);

  v90 = [v88 identifier];
  v91 = sub_219BF5414();
  v93 = v92;

  sub_2196CF0C8(v91, v93, 2);

  return sub_218745DCC(v112, type metadata accessor for AudioFeedTrack);
}

void sub_2198ADE10(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v118 = a3;
  v131 = a2;
  v126 = a1;
  v4 = sub_219BDF864();
  v133 = *(v4 - 8);
  v134 = v4;
  MEMORY[0x28223BE20](v4);
  v119 = v5;
  v132 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_219BE0774();
  v136 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v116 = v6;
  v125 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  v114 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v123 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v9;
  MEMORY[0x28223BE20](v10);
  v129 = &v90 - v11;
  v130 = sub_219BDF884();
  v127 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v122 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v12;
  MEMORY[0x28223BE20](v13);
  v124 = &v90 - v14;
  v110 = sub_219BDBD34();
  v109 = *(v110 - 1);
  MEMORY[0x28223BE20](v110);
  v108 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BDBD64();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_219BDD0D4();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729EFC(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v7);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v90 - v19;
  sub_21883F194(0);
  v111 = *(v21 - 8);
  v22 = *(v111 + 64);
  MEMORY[0x28223BE20](v21);
  v135 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v121 = &v90 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v90 - v26;
  v28 = type metadata accessor for AudioFeedTrack(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v120 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = (&v90 - v32);
  v99 = *(v3 + 48);
  sub_219BE20E4();
  sub_219BDDB74();
  sub_218745DCC(v27, sub_21883F194);
  v107 = v29;
  if ((*(v29 + 48))(v20, 1, v28) == 1)
  {
    sub_2198B9AD4(v20, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    sub_2198AAA44(v126, v131, v118);
  }

  else
  {
    v117 = type metadata accessor for AudioFeedTrack;
    sub_21872D24C(v20, v33, type metadata accessor for AudioFeedTrack);
    v100 = v3;
    v34 = v105;
    v35 = v102;
    v36 = v106;
    v105[13](v102, *MEMORY[0x277CEAE68], v106);
    v37 = v101;
    sub_219BDBD54();
    sub_219BDBD44();
    (*(v103 + 8))(v37, v104);
    v38 = v108;
    sub_219BDBD24();
    sub_219BDCDA4();

    (v109)[1](v38, v110);
    (v34[1])(v35, v36);
    v39 = v127;
    v40 = v124;
    v41 = v130;
    (*(v127 + 104))(v124, *MEMORY[0x277D2DE08]);
    v42 = sub_219BDF874();
    v43 = *(v42 - 8);
    v44 = v129;
    (*(v43 + 16))(v129, v118, v42);
    (*(v43 + 56))(v44, 0, 1, v42);
    v45 = v121;
    sub_219BE20E4();
    v112 = v33;
    v109 = *v33;
    v99 = *(v100 + 112);
    v103 = *(v99 + 32);
    sub_2187361B0(v33, v120, v117);
    v110 = sub_21883F194;
    sub_2187361B0(v45, v135, sub_21883F194);
    v46 = v136;
    v47 = *(v136 + 16);
    v106 = v136 + 16;
    v108 = v47;
    (v47)(v125, v126, v128);
    v48 = *(v39 + 16);
    v104 = v39 + 16;
    v105 = v48;
    (v48)(v122, v40, v41);
    v118 = MEMORY[0x277D2DDE0];
    sub_21872D5E0(v44, v123, &qword_280EE8648, MEMORY[0x277D2DDE0]);
    v49 = v133;
    v50 = *(v133 + 16);
    v101 = (v133 + 16);
    v102 = v50;
    (v50)(v132, v131, v134);
    v51 = *(v107 + 80);
    v52 = v30 + ((v51 + 16) & ~v51);
    v53 = (v51 + 16) & ~v51;
    v98 = v53;
    v54 = (v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v107 = v54;
    v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
    v56 = *(v111 + 80);
    v97 = v55;
    v57 = *(v46 + 80);
    v58 = (v56 + v55 + 8) & ~v56;
    v111 = v58;
    v59 = (v22 + v57 + v58) & ~v57;
    v95 = v59;
    v60 = *(v39 + 80);
    v61 = (v116 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v96 = v61;
    v116 = (v60 + v61 + 8) & ~v60;
    v113 = (v113 + v116 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v62 = v114[80];
    v63 = (v62 + v113 + 5) & ~v62;
    v64 = *(v49 + 80);
    v94 = v63;
    v90 = (v115 + v64 + v63) & ~v64;
    v115 = v51 | v56 | v57 | v60 | v62 | v64;
    v65 = swift_allocObject();
    sub_21872D24C(v120, v65 + v53, v117);
    *(v65 + v54) = v109;
    v66 = v100;
    *(v65 + v55) = v100;
    sub_21872D24C(v135, v65 + v58, v110);
    v67 = *(v136 + 32);
    v136 += 32;
    v114 = v67;
    v68 = v65 + v59;
    v69 = v128;
    (v67)(v68, v125, v128);
    *(v65 + v61) = v99;
    v70 = *(v127 + 32);
    v92 = v127 + 32;
    v93 = v70;
    v71 = v122;
    v70(v65 + v116, v122, v130);
    v72 = v65 + v113;
    *v72 = 0;
    *(v72 + 4) = 1;
    v73 = v123;
    sub_2198B8DA0(v123, v65 + v63);
    v74 = *(v49 + 32);
    v133 = v49 + 32;
    v91 = v74;
    v75 = v90;
    v74(v65 + v90, v132, v134);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_219BDD154();

    v99 = *(v66 + 112);
    v103 = *(v99 + 32);
    v76 = v120;
    v77 = v117;
    sub_2187361B0(v112, v120, v117);
    v78 = v110;
    sub_2187361B0(v121, v135, v110);
    v79 = v125;
    (v108)(v125, v126, v69);
    v80 = v130;
    (v105)(v71, v124, v130);
    sub_21872D5E0(v129, v73, &qword_280EE8648, v118);
    v81 = v132;
    v82 = v134;
    (v102)(v132, v131, v134);
    v83 = swift_allocObject();
    sub_21872D24C(v76, v83 + v98, v77);
    v84 = v109;
    *(v83 + v107) = v109;
    *(v83 + v97) = v66;
    sub_21872D24C(v135, v83 + v111, v78);
    (v114)(v83 + v95, v79, v128);
    *(v83 + v96) = v99;
    v93(v83 + v116, v122, v80);
    v85 = v83 + v113;
    *v85 = 0;
    *(v85 + 4) = 1;
    sub_2198B8DA0(v123, v83 + v94);
    v91(v83 + v75, v81, v82);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_219BDD154();

    sub_218745DCC(v121, sub_21883F194);
    sub_2198B9AD4(v129, &qword_280EE8648, v118);
    (*(v127 + 8))(v124, v80);

    v86 = [v84 identifier];
    v87 = sub_219BF5414();
    v89 = v88;

    sub_2196CF0C8(v87, v89, 1);

    sub_218745DCC(v112, type metadata accessor for AudioFeedTrack);
  }
}

uint64_t sub_2198AEDAC(uint64_t (*a1)(uint64_t), unint64_t a2)
{
  v61 = a2;
  v59 = a1;
  v76 = sub_219BDF864();
  v64 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v62 = v3;
  v75 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_219BE0774();
  v63 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v60 = v4;
  v71 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  v57 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v70 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v7;
  MEMORY[0x28223BE20](v8);
  v74 = &v48 - v9;
  v73 = sub_219BDF884();
  v78 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v10;
  MEMORY[0x28223BE20](v11);
  v68 = &v48 - v12;
  sub_218729EFC(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v5);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - v14;
  sub_21883F194(0);
  v55 = *(v16 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v16);
  v66 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v67 = &v48 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  v23 = type metadata accessor for AudioFeedTrack(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v65 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = (&v48 - v27);
  v77 = v2;
  sub_219BE20E4();
  sub_219BDDB74();
  sub_218745DCC(v22, sub_21883F194);
  if ((*(v24 + 48))(v15, 1, v23) == 1)
  {
    return sub_2198B9AD4(v15, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  }

  v50 = type metadata accessor for AudioFeedTrack;
  sub_21872D24C(v15, v28, type metadata accessor for AudioFeedTrack);
  v30 = v68;
  v31 = v73;
  (*(v78 + 13))(v68, *MEMORY[0x277D2DDE8], v73);
  v32 = *(*(sub_219BDF874() - 8) + 56);
  v48 = v24;
  v33 = v74;
  v32();
  v34 = v67;
  sub_219BE20E4();
  v54 = v28;
  v51 = *v28;
  v52 = *(v77 + 112);
  v53 = *(v52 + 32);
  sub_2187361B0(v28, v65, type metadata accessor for AudioFeedTrack);
  v49 = sub_21883F194;
  sub_2187361B0(v34, v66, sub_21883F194);
  v35 = v63;
  (*(v63 + 16))(v71, v59, v72);
  v36 = v78;
  (*(v78 + 2))(v69, v30, v31);
  v59 = MEMORY[0x277D2DDE0];
  sub_21872D5E0(v33, v70, &qword_280EE8648, MEMORY[0x277D2DDE0]);
  v37 = v64;
  (*(v64 + 16))(v75, v61, v76);
  v38 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v39 = (v25 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v55 + 80) + v40 + 8) & ~*(v55 + 80);
  v42 = (v17 + *(v35 + 80) + v41) & ~*(v35 + 80);
  v55 = (v60 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v36[80] + v55 + 8) & ~v36[80];
  v60 = (v56 + v43 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v61 = (*(v57 + 80) + v60 + 5) & ~*(v57 + 80);
  v58 = (v58 + *(v37 + 80) + v61) & ~*(v37 + 80);
  v44 = swift_allocObject();
  sub_21872D24C(v65, v44 + v38, v50);
  *(v44 + v39) = v51;
  *(v44 + v40) = v77;
  sub_21872D24C(v66, v44 + v41, v49);
  (*(v35 + 32))(v44 + v42, v71, v72);
  *(v44 + v55) = v52;
  v45 = v78;
  v46 = v73;
  (*(v78 + 4))(v44 + v43, v69, v73);
  v47 = v44 + v60;
  *v47 = 0;
  *(v47 + 4) = 1;
  sub_2198B8DA0(v70, v44 + v61);
  (*(v37 + 32))(v44 + v58, v75, v76);
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_219BDD154();

  sub_218745DCC(v67, sub_21883F194);
  sub_2198B9AD4(v74, &qword_280EE8648, v59);
  (v45[1])(v68, v46);

  return sub_218745DCC(v54, type metadata accessor for AudioFeedTrack);
}

uint64_t sub_2198AF6F8(uint64_t a1, uint64_t a2)
{
  v167 = a2;
  v156 = a1;
  v3 = sub_219BDBD34();
  v159 = *(v3 - 8);
  v160 = v3;
  MEMORY[0x28223BE20](v3);
  v158 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_219BE0774();
  v168 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v147 = v5;
  v162 = (&v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = sub_219BDF884();
  v157 = *(v166 - 1);
  MEMORY[0x28223BE20](v166);
  v161 = (&v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = v6;
  MEMORY[0x28223BE20](v7);
  v165 = &v127 - v8;
  v169 = sub_219BDF864();
  v175 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v164 = v9;
  v174 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  v154 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v172 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = v12;
  MEMORY[0x28223BE20](v13);
  v176 = &v127 - v14;
  sub_218729EFC(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v10);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v127 - v16;
  sub_21883F194(0);
  v153 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v171 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v173 = &v127 - v21;
  MEMORY[0x28223BE20](v22);
  v150 = (&v127 - v23);
  MEMORY[0x28223BE20](v24);
  v148 = (&v127 - v25);
  MEMORY[0x28223BE20](v26);
  v28 = &v127 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v127 - v30;
  v149 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v127 - v34;
  v36 = type metadata accessor for AudioFeedTrack(0);
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v170 = &v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v127 - v40;
  v177 = v2;
  sub_219BE20E4();
  sub_219BDDB74();
  sub_218745DCC(v35, sub_21883F194);
  v151 = v37;
  if ((*(v37 + 48))(v17, 1, v36) == 1)
  {
    return sub_2198B9AD4(v17, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  }

  sub_21872D24C(v17, v41, type metadata accessor for AudioFeedTrack);
  v43 = v177;
  v44 = v177[14];

  sub_219BE20E4();
  sub_21872D24C(v31, v28, sub_21883F194);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v46 = v43;
  v47 = v41;
  v48 = v28;
  if (EnumCaseMultiPayload)
  {
    v49 = 0.0;
    v50 = v150;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_8;
    }

    sub_218A6E554(0);
  }

  else
  {
    sub_218A6E5D0(0);
    v50 = v150;
  }

  v49 = *(v48 + *(v51 + 48));
  v52 = *(v51 + 64);
  v53 = sub_219BDD9E4();
  (*(*(v53 - 8) + 8))(v48 + v52, v53);
  sub_218745DCC(v48, type metadata accessor for AudioFeedTrack);
LABEL_8:
  if ((*(v44 + 48) & 1) == 0)
  {
    v54 = v49 - *(v44 + 40);
    if (v54 <= 0.0)
    {
      v54 = 0.0;
    }

    *(v44 + 56) = *(v44 + 56) + v54;
    *(v44 + 64) = v54;
    *(v44 + 40) = 0;
    *(v44 + 48) = 1;
  }

  __swift_project_boxed_opaque_existential_1(v46 + 9, v46[12]);
  v55 = v148;
  sub_219BE20E4();
  sub_21872D24C(v55, v50, sub_21883F194);
  v56 = swift_getEnumCaseMultiPayload();
  if (!v56)
  {
    sub_218A6E5D0(0);
    goto LABEL_16;
  }

  if (v56 == 1)
  {
    sub_218A6E554(0);
LABEL_16:
    v58 = *(v57 + 64);
    v59 = sub_219BDD9E4();
    (*(*(v59 - 8) + 8))(v50 + v58, v59);
    sub_218745DCC(v50, type metadata accessor for AudioFeedTrack);
  }

  sub_219BDD6D4();
  if (v60)
  {
    [*(v41 + 1) duration];
  }

  v61 = sub_219BDEAA4();
  v145 = v41;
  if (v61)
  {
    v62 = sub_219BDF874();
    v63 = v176;
    (*(*(v62 - 8) + 56))(v176, 1, 1, v62);
    v64 = v173;
    sub_219BE20E4();
    v165 = *v41;
    v163 = v46[14];
    v168 = *(v163 + 32);
    v162 = type metadata accessor for AudioFeedTrack;
    sub_2187361B0(v41, v170, type metadata accessor for AudioFeedTrack);
    v161 = sub_21883F194;
    sub_2187361B0(v64, v171, sub_21883F194);
    v166 = MEMORY[0x277D2DDE0];
    sub_21872D5E0(v63, v172, &qword_280EE8648, MEMORY[0x277D2DDE0]);
    v65 = v175;
    v66 = v169;
    (*(v175 + 16))(v174, v167, v169);
    v67 = (*(v151 + 80) + 16) & ~*(v151 + 80);
    v68 = (v152 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
    v70 = (*(v153 + 80) + v69 + 8) & ~*(v153 + 80);
    v71 = (v149 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = (*(v154 + 80) + v71 + 8) & ~*(v154 + 80);
    v73 = (v155 + *(v65 + 80) + v72) & ~*(v65 + 80);
    v74 = swift_allocObject();
    sub_21872D24C(v170, v74 + v67, v162);
    *(v74 + v68) = v165;
    *(v74 + v69) = v177;
    v75 = v163;
    sub_21872D24C(v171, v74 + v70, v161);
    *(v74 + v71) = v75;
    sub_2198B8DA0(v172, v74 + v72);
    (*(v65 + 32))(v74 + v73, v174, v66);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_219BDD154();

    sub_218745DCC(v173, sub_21883F194);
    sub_2198B9AD4(v176, &qword_280EE8648, v166);
  }

  else
  {
    v76 = v157;
    v77 = v165;
    v78 = v166;
    (*(v157 + 104))(v165, *MEMORY[0x277D2DDF8], v166);
    v79 = sub_219BDF874();
    v80 = v176;
    (*(*(v79 - 8) + 56))(v176, 1, 1, v79);
    v81 = v173;
    sub_219BE20E4();
    v128 = *v47;
    v136 = v46[14];
    v139 = *(v136 + 32);
    v144 = type metadata accessor for AudioFeedTrack;
    sub_2187361B0(v47, v170, type metadata accessor for AudioFeedTrack);
    v148 = sub_21883F194;
    sub_2187361B0(v81, v171, sub_21883F194);
    v82 = v168;
    v83 = *(v168 + 16);
    v142 = v168 + 16;
    v143 = v83;
    v83(v162, v156, v163);
    v84 = *(v76 + 16);
    v140 = v76 + 16;
    v141 = v84;
    v84(v161, v77, v78);
    v150 = MEMORY[0x277D2DDE0];
    sub_21872D5E0(v80, v172, &qword_280EE8648, MEMORY[0x277D2DDE0]);
    v85 = v175;
    v86 = *(v175 + 16);
    v137 = v175 + 16;
    v138 = v86;
    v86(v174, v167, v169);
    v87 = *(v151 + 80);
    v88 = (v87 + 16) & ~v87;
    v151 = v88;
    v89 = (v152 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
    v135 = v89;
    v90 = *(v153 + 80);
    v91 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
    v134 = v91;
    v92 = (v90 + v91 + 8) & ~v90;
    v93 = *(v82 + 80);
    v152 = v92;
    v94 = (v149 + v93 + v92) & ~v93;
    v133 = v94;
    v95 = (v147 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v96 = v76;
    v97 = *(v76 + 80);
    v132 = v95;
    v153 = (v97 + v95 + 8) & ~v97;
    v98 = (v146 + v153 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v99 = *(v154 + 80);
    v131 = v98;
    v154 = (v99 + v98 + 5) & ~v99;
    v100 = *(v85 + 80);
    v155 = (v155 + v100 + v154) & ~v100;
    v149 = v87 | v90 | v93 | v97 | v99 | v100;
    v101 = swift_allocObject();
    v102 = v101 + v88;
    v103 = v170;
    sub_21872D24C(v170, v102, v144);
    v104 = v128;
    *(v101 + v89) = v128;
    *(v101 + v91) = v177;
    v105 = v171;
    sub_21872D24C(v171, v101 + v92, v148);
    v106 = *(v168 + 32);
    v168 += 32;
    v147 = v106;
    v107 = v162;
    v106(v101 + v94, v162, v163);
    *(v101 + v95) = v136;
    v108 = *(v96 + 32);
    v130 = v96 + 32;
    v146 = v108;
    v109 = v161;
    v108(v101 + v153, v161, v166);
    v110 = v101 + v98;
    *v110 = 0;
    *(v110 + 4) = 1;
    v111 = v172;
    sub_2198B8DA0(v172, v101 + v154);
    v112 = *(v175 + 32);
    v175 += 32;
    v129 = v112;
    v112(v101 + v155, v174, v169);
    swift_retain_n();

    v113 = v104;
    swift_unknownObjectRetain();
    sub_219BDD154();

    v114 = v177[14];
    v139 = *(v114 + 32);
    v115 = v103;
    v116 = v144;
    sub_2187361B0(v145, v115, v144);
    v117 = v105;
    v118 = v148;
    sub_2187361B0(v173, v117, v148);
    v119 = v163;
    v143(v107, v156, v163);
    v120 = v166;
    v141(v109, v165, v166);
    sub_21872D5E0(v176, v111, &qword_280EE8648, v150);
    v121 = v174;
    v122 = v169;
    v138(v174, v167, v169);
    v123 = v155;
    v124 = swift_allocObject();
    sub_21872D24C(v170, v124 + v151, v116);
    *(v124 + v135) = v113;
    *(v124 + v134) = v177;
    sub_21872D24C(v171, v124 + v152, v118);
    v147(v124 + v133, v162, v119);
    *(v124 + v132) = v114;
    v146(v124 + v153, v161, v120);
    v125 = v124 + v131;
    *v125 = 0;
    *(v125 + 4) = 1;
    sub_2198B8DA0(v172, v124 + v154);
    v129(v124 + v123, v121, v122);
    swift_retain_n();

    swift_unknownObjectRetain();
    sub_219BDD154();

    sub_218745DCC(v173, sub_21883F194);
    sub_2198B9AD4(v176, &qword_280EE8648, v150);
    (*(v157 + 8))(v165, v120);
  }

  v126 = v158;
  sub_219BDBD24();
  sub_219BDCD94();
  (*(v159 + 8))(v126, v160);
  sub_2196CF0C8(0, 0, 0);
  return sub_218745DCC(v145, type metadata accessor for AudioFeedTrack);
}

uint64_t sub_2198B0A0C(unint64_t a1, unint64_t a2, double a3)
{
  v92 = a2;
  v90 = a1;
  v105 = sub_219BDF864();
  v95 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v93 = v5;
  v104 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_219BE0774();
  v94 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v91 = v6;
  v102 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  v88 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v101 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v9;
  MEMORY[0x28223BE20](v10);
  v110 = &v77 - v11;
  v111 = sub_219BDF884();
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v100 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v12;
  MEMORY[0x28223BE20](v13);
  v108 = &v77 - v14;
  sub_218729EFC(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v7);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v77 - v16;
  sub_21883F194(0);
  v86 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v99 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v97 = &v77 - v21;
  MEMORY[0x28223BE20](v22);
  v96 = (&v77 - v23);
  MEMORY[0x28223BE20](v24);
  v107 = &v77 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v77 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;
  v83 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v77 - v34;
  v36 = type metadata accessor for AudioFeedTrack(0);
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v98 = &v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v77 - v40;
  v106 = v3;
  sub_219BE20E4();
  sub_219BDDB74();
  sub_218745DCC(v35, sub_21883F194);
  v84 = v37;
  if ((*(v37 + 48))(v17, 1, v36) == 1)
  {
    return sub_2198B9AD4(v17, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  }

  sub_21872D24C(v17, v41, type metadata accessor for AudioFeedTrack);
  v43 = v106;
  v44 = *(v106 + 112);

  sub_219BE20E4();
  sub_21872D24C(v31, v28, sub_21883F194);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v46 = v41;
  if (EnumCaseMultiPayload)
  {
    v47 = 0.0;
    v48 = v97;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_8;
    }

    sub_218A6E554(0);
  }

  else
  {
    sub_218A6E5D0(0);
    v48 = v97;
  }

  v47 = *&v28[*(v49 + 48)];
  v50 = *(v49 + 64);
  v51 = sub_219BDD9E4();
  (*(*(v51 - 8) + 8))(&v28[v50], v51);
  sub_218745DCC(v28, type metadata accessor for AudioFeedTrack);
LABEL_8:
  if ((*(v44 + 48) & 1) == 0)
  {
    v52 = v47 - *(v44 + 40);
    if (v52 <= 0.0)
    {
      v52 = 0.0;
    }

    *(v44 + 56) = *(v44 + 56) + v52;
    *(v44 + 64) = v52;
    *(v44 + 40) = 0;
    *(v44 + 48) = 1;
  }

  v53 = *(v43 + 112);
  *(v53 + 40) = 0;
  *(v53 + 48) = 1;
  (*(v109 + 13))(v108, *MEMORY[0x277D2DE18], v111);
  v54 = sub_219BDF874();
  (*(*(v54 - 8) + 56))(v110, 1, 1, v54);
  sub_219BE20E4();
  v55 = v96;
  sub_219BE20E4();
  sub_21872D24C(v55, v48, sub_21883F194);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    v56 = 0.0;
    if (result != 1)
    {
      goto LABEL_17;
    }

    sub_218A6E554(0);
  }

  else
  {
    sub_218A6E5D0(0);
  }

  v56 = *(v48 + *(v57 + 48));
  v58 = *(v57 + 64);
  v59 = sub_219BDD9E4();
  (*(*(v59 - 8) + 8))(v48 + v58, v59);
  result = sub_218745DCC(v48, type metadata accessor for AudioFeedTrack);
LABEL_17:
  v60 = v56 - a3;
  v61 = COERCE__INT64(fabs(v56 - a3)) > 0x7FEFFFFFFFFFFFFFLL;
  if (v56 - a3 > 0.0)
  {
    if (v61)
    {
      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
    v60 = 0.0;
  }

  if (v60 <= -2147483650.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v60 < 2147483650.0)
  {
    v82 = v60;
    v80 = *v46;
    v81 = *(v43 + 112);
    v97 = *(v81 + 32);
    v79 = type metadata accessor for AudioFeedTrack;
    sub_2187361B0(v46, v98, type metadata accessor for AudioFeedTrack);
    v78 = sub_21883F194;
    sub_2187361B0(v107, v99, sub_21883F194);
    v62 = v94;
    (*(v94 + 16))(v102, v90, v103);
    v63 = v109;
    (*(v109 + 2))(v100, v108, v111);
    v96 = MEMORY[0x277D2DDE0];
    sub_21872D5E0(v110, v101, &qword_280EE8648, MEMORY[0x277D2DDE0]);
    v64 = v95;
    (*(v95 + 16))(v104, v92, v105);
    v65 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    v66 = (v85 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
    v68 = (*(v86 + 80) + v67 + 8) & ~*(v86 + 80);
    v69 = (v83 + *(v62 + 80) + v68) & ~*(v62 + 80);
    v70 = (v91 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v63[80] + v70 + 8) & ~v63[80];
    v91 = (v87 + v71 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v92 = (*(v88 + 80) + v91 + 5) & ~*(v88 + 80);
    v90 = (v89 + *(v64 + 80) + v92) & ~*(v64 + 80);
    v72 = swift_allocObject();
    v93 = v46;
    v73 = v72;
    sub_21872D24C(v98, v72 + v65, v79);
    *(v73 + v66) = v80;
    *(v73 + v67) = v106;
    sub_21872D24C(v99, v73 + v68, v78);
    (*(v62 + 32))(v73 + v69, v102, v103);
    *(v73 + v70) = v81;
    v74 = v109;
    v75 = v111;
    (*(v109 + 4))(v73 + v71, v100, v111);
    v76 = v73 + v91;
    *v76 = v82;
    *(v76 + 4) = 0;
    sub_2198B8DA0(v101, v73 + v92);
    (*(v64 + 32))(v73 + v90, v104, v105);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_219BDD154();

    sub_218745DCC(v107, sub_21883F194);
    sub_2198B9AD4(v110, &qword_280EE8648, v96);
    (v74[1])(v108, v75);

    return sub_218745DCC(v93, type metadata accessor for AudioFeedTrack);
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_2198B1658(uint64_t a1, uint64_t a2, double a3)
{
  v160 = a2;
  v158 = a1;
  v174 = sub_219BDF864();
  v171 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v139 = v5;
  v173 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_219BE0774();
  v170 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v154 = v6;
  v159 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  v138 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v172 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v9;
  MEMORY[0x28223BE20](v10);
  v169 = &v122 - v11;
  v12 = sub_219BDF884();
  v13 = *(v12 - 8);
  v161 = v12;
  v162 = v13;
  MEMORY[0x28223BE20](v12);
  v165 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v14;
  MEMORY[0x28223BE20](v15);
  v168 = &v122 - v16;
  sub_218729EFC(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v7);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v122 - v18;
  sub_21883F194(0);
  v21 = v20;
  v152 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v164 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v167 = &v122 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v122 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v122 - v29;
  v147 = v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v122 - v33;
  v35 = type metadata accessor for AudioFeedTrack(0);
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v163 = &v122 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v122 - v39;
  v157 = v3;
  v41 = *(v3 + 48);
  sub_219BE20E4();
  v155 = v21;
  sub_219BDDB74();
  sub_218745DCC(v34, sub_21883F194);
  v146 = v36;
  if ((*(v36 + 48))(v19, 1, v35) == 1)
  {
    return sub_2198B9AD4(v19, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  }

  v156 = v40;
  sub_21872D24C(v19, v40, type metadata accessor for AudioFeedTrack);
  v43 = v157;
  v44 = *(v157 + 112);

  sub_219BE20E4();
  sub_21872D24C(v30, v27, sub_21883F194);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v46 = 0.0;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_8;
    }

    sub_218A6E554(0);
  }

  else
  {
    sub_218A6E5D0(0);
  }

  v46 = *&v27[*(v47 + 48)];
  v48 = *(v47 + 64);
  v49 = sub_219BDD9E4();
  (*(*(v49 - 8) + 8))(&v27[v48], v49);
  sub_218745DCC(v27, type metadata accessor for AudioFeedTrack);
LABEL_8:
  if ((*(v44 + 48) & 1) == 0)
  {
    v50 = v46 - *(v44 + 40);
    if (v50 <= 0.0)
    {
      v50 = 0.0;
    }

    *(v44 + 56) = *(v44 + 56) + v50;
    *(v44 + 64) = v50;
    *(v44 + 40) = 0;
    *(v44 + 48) = 1;
  }

  v51 = *(v43 + 112);
  *(v51 + 40) = 0;
  *(v51 + 48) = 1;
  v52 = *MEMORY[0x277D2DDF8];
  v53 = v162;
  v54 = *(v162 + 104);
  v129 = v162 + 104;
  v130 = v54;
  v55 = v168;
  v56 = v161;
  v54(v168, v52, v161);
  v127 = sub_219BDF874();
  v57 = *(v127 - 1);
  v126 = *(v57 + 56);
  v128 = (v57 + 56);
  v58 = v169;
  v126(v169, 1, 1, v127);
  v59 = v167;
  sub_219BE20E4();
  v125 = v41;
  v155 = *v156;
  v123 = *(v43 + 112);
  v124 = *(v123 + 32);
  v132 = type metadata accessor for AudioFeedTrack;
  sub_2187361B0(v156, v163, type metadata accessor for AudioFeedTrack);
  v131 = sub_21883F194;
  sub_2187361B0(v59, v164, sub_21883F194);
  v60 = v170;
  v61 = *(v170 + 16);
  v151 = v170 + 16;
  v150 = v61;
  v61(v159, v158, v166);
  v62 = *(v53 + 16);
  v134 = v53 + 16;
  v149 = v62;
  v62(v165, v55, v56);
  v133 = MEMORY[0x277D2DDE0];
  sub_21872D5E0(v58, v172, &qword_280EE8648, MEMORY[0x277D2DDE0]);
  v63 = v171;
  v64 = *(v171 + 16);
  v141 = v171 + 16;
  v140 = v64;
  v64(v173, v160, v174);
  v65 = *(v146 + 80);
  v66 = (v65 + 16) & ~v65;
  v144 = v66;
  v67 = (v148 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v148 = v67;
  v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
  v69 = *(v152 + 80);
  v146 = v68;
  v70 = *(v60 + 80);
  v71 = (v69 + v68 + 8) & ~v69;
  v142 = v71;
  v72 = (v147 + v70 + v71) & ~v70;
  v143 = v72;
  v73 = *(v53 + 80);
  v74 = v53;
  v75 = (v154 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v147 = v75;
  v152 = (v73 + v75 + 8) & ~v73;
  v76 = (v145 + v152 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v77 = *(v138 + 80);
  v145 = v76;
  v154 = (v77 + v76 + 5) & ~v77;
  v78 = *(v63 + 80);
  v153 = (v153 + v78 + v154) & ~v78;
  v139 += v153;
  v138 = v65 | v69 | v70 | v73 | v77 | v78;
  v79 = v43;
  v80 = swift_allocObject();
  sub_21872D24C(v163, v80 + v66, v132);
  *(v80 + v67) = v155;
  *(v80 + v68) = v79;
  sub_21872D24C(v164, v80 + v71, v131);
  v81 = *(v170 + 32);
  v170 += 32;
  v137 = v81;
  v82 = v159;
  v81(v80 + v72, v159, v166);
  *(v80 + v75) = v123;
  v136 = *(v74 + 32);
  v83 = v161;
  v136(v80 + v152, v165, v161);
  v84 = v80 + v76;
  *v84 = 0;
  *(v84 + 4) = 1;
  sub_2198B8DA0(v172, v80 + v154);
  v85 = *(v171 + 32);
  v171 += 32;
  v135 = v85;
  v85(v80 + v153, v173, v174);
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_219BDD154();

  v123 = *(v79 + 112);
  v124 = *(v123 + 32);
  v86 = v163;
  v87 = v132;
  sub_2187361B0(v156, v163, v132);
  v88 = v164;
  v89 = v131;
  sub_2187361B0(v167, v164, v131);
  v90 = v166;
  v150(v82, v158, v166);
  v91 = v165;
  v149(v165, v168, v83);
  sub_21872D5E0(v169, v172, &qword_280EE8648, v133);
  v140(v173, v160, v174);
  v92 = swift_allocObject();
  sub_21872D24C(v86, v92 + v144, v87);
  *(v92 + v148) = v155;
  v93 = v157;
  *(v92 + v146) = v157;
  sub_21872D24C(v88, v92 + v142, v89);
  v137(v92 + v143, v82, v90);
  *(v92 + v147) = v123;
  v132 = (v74 + 32);
  v136(v92 + v152, v91, v83);
  v94 = v92 + v145;
  *v94 = 0;
  *(v94 + 4) = 1;
  sub_2198B8DA0(v172, v92 + v154);
  v135(v92 + v153, v173, v174);
  swift_retain_n();
  swift_unknownObjectRetain();
  v95 = v93;

  sub_219BDD154();

  sub_218745DCC(v167, sub_21883F194);
  v96 = v169;
  sub_2198B9AD4(v169, &qword_280EE8648, v133);
  v97 = *(v162 + 8);
  v98 = v168;
  v162 += 8;
  v124 = v97;
  v97(v168, v83);

  v130(v98, *MEMORY[0x277D2DE08], v83);
  v126(v96, 1, 1, v127);
  result = sub_219BE20E4();
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a3 <= -2147483650.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 < 2147483650.0)
  {
    LODWORD(v131) = a3;
    v129 = *(v93 + 112);
    v130 = *(v129 + 32);
    v99 = v163;
    v128 = type metadata accessor for AudioFeedTrack;
    sub_2187361B0(v156, v163, type metadata accessor for AudioFeedTrack);
    v100 = v164;
    v127 = sub_21883F194;
    sub_2187361B0(v167, v164, sub_21883F194);
    v101 = v159;
    v102 = v166;
    v150(v159, v158, v166);
    v103 = v165;
    v104 = v161;
    v149(v165, v168, v161);
    v133 = MEMORY[0x277D2DDE0];
    sub_21872D5E0(v169, v172, &qword_280EE8648, MEMORY[0x277D2DDE0]);
    v140(v173, v160, v174);
    v105 = swift_allocObject();
    sub_21872D24C(v99, v105 + v144, type metadata accessor for AudioFeedTrack);
    *(v105 + v148) = v155;
    *(v105 + v146) = v95;
    sub_21872D24C(v100, v105 + v142, sub_21883F194);
    v106 = v101;
    v107 = v102;
    v137(v105 + v143, v106, v102);
    *(v105 + v147) = v129;
    v136(v105 + v152, v103, v104);
    v108 = v105 + v145;
    *v108 = v131;
    *(v108 + 4) = 0;
    sub_2198B8DA0(v172, v105 + v154);
    v110 = v173;
    v109 = v174;
    v135(v105 + v153, v173, v174);
    swift_retain_n();
    swift_unknownObjectRetain();
    v111 = v157;

    sub_219BDD154();

    v129 = *(v111 + 112);
    v130 = *(v129 + 32);
    v112 = v163;
    v113 = v128;
    sub_2187361B0(v156, v163, v128);
    v114 = v164;
    v115 = v127;
    sub_2187361B0(v167, v164, v127);
    v116 = v159;
    v150(v159, v158, v107);
    v117 = v165;
    v118 = v161;
    v149(v165, v168, v161);
    v119 = v172;
    sub_21872D5E0(v169, v172, &qword_280EE8648, v133);
    v140(v110, v160, v109);
    v120 = swift_allocObject();
    sub_21872D24C(v112, v120 + v144, v113);
    *(v120 + v148) = v155;
    *(v120 + v146) = v157;
    sub_21872D24C(v114, v120 + v142, v115);
    v137(v120 + v143, v116, v166);
    *(v120 + v147) = v129;
    v136(v120 + v152, v117, v118);
    v121 = v120 + v145;
    *v121 = v131;
    *(v121 + 4) = 0;
    sub_2198B8DA0(v119, v120 + v154);
    v135(v120 + v153, v173, v174);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_219BDD154();

    sub_218745DCC(v167, sub_21883F194);
    sub_2198B9AD4(v169, &qword_280EE8648, v133);
    v124(v168, v118);

    return sub_218745DCC(v156, type metadata accessor for AudioFeedTrack);
  }

LABEL_18:
  __break(1u);
  return result;
}