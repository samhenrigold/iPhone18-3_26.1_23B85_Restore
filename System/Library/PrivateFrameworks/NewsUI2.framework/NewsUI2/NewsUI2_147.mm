void sub_219733A10(uint64_t a1, void *a2)
{
  sub_219738480(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_21973856C(0);
  swift_allocObject();
  sub_2197386EC(&qword_27CC1E8B0, sub_219738480, MEMORY[0x277D6E730]);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2197378EC(0);
  if (sub_219BE1E24())
  {
    swift_allocObject();
    sub_2197386EC(&qword_27CC1E8B8, sub_2197378EC, MEMORY[0x277D6EAC8]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219733B8C(void *a1)
{
  sub_21973842C(0, &qword_280EE3A90, MEMORY[0x277D6EB30]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchMoreBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737A28(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737AE0(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2197378EC(0);
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_219733D0C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_219BE9534();
  v4 = sub_219BE1DE4();
  if (v4)
  {
    v9 = v3;
    v10 = MEMORY[0x277D6E678];
    *&v8 = v4;
    sub_219BEA494();
    __swift_destroy_boxed_opaque_existential_1(&v8);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v5 = sub_219BF0214();
    sub_218718690(a2, &v8);
    v6 = swift_allocObject();
    sub_2186CB1F0(&v8, v6 + 16);
    v7 = sub_219BE1E04();

    if (v7)
    {
      v9 = v5;
      v10 = sub_2197386EC(&unk_280E90FE0, MEMORY[0x277D32C00], MEMORY[0x277D32BF8]);
      *&v8 = v7;
      sub_219BEA494();
      __swift_destroy_boxed_opaque_existential_1(&v8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_219733EA0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197375C8(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (v3)
  {
    sub_219737AE0(0);
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219734040(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973727C(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_219737140(0);
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219734198(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_2197341DC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BF44C4();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for SearchMoreBlueprintLayoutBuilder();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2197342C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973727C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737E30(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2197386EC(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_219737B74(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_2197345CC(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_2197386EC(&qword_280E8FF80, MEMORY[0x277D34268], MEMORY[0x277D34260]);
  }

  sub_219BE8704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219737CB0(0);
  if (sub_219BE1E24())
  {
    sub_2197386EC(&qword_27CC1E890, sub_219737CB0, MEMORY[0x277D6E070]);
  }

  sub_219BE86F4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219737AE0(0);
  v3 = sub_219BE1E24();
  if (v3)
  {
    sub_2197386EC(&qword_27CC1E888, sub_219737AE0, MEMORY[0x277D6E7D0]);
  }

  sub_219BE8724();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E8FF70, MEMORY[0x277D34270], 0);
  sub_219BE1E34();
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2197375C8(0);
    if (sub_219BE1E24())
    {
      swift_getObjectType();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_219BF35C4();
      swift_allocObject();
      sub_2197386EC(&qword_27CC1E748, sub_2197375C8, MEMORY[0x277D6DF38]);

      sub_219BF35A4();
      sub_219BF3EC4();
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_219734914(uint64_t a1, uint64_t a2)
{
  sub_21973842C(0, &qword_27CC1E898, sub_218F936D8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  sub_218F936D8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_219BE86A4();

    v18 = v17[1];
    sub_2189877E8(0);
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    v12 = sub_218F93D18();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v12 = 0xF000000000000007;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_219BE86A4();

    v17[0] = v18;
    sub_2189877E8(0);
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    (*(v7 + 56))(v4, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v4, 1, 1, v6);
  }

  sub_219BE6684();
  type metadata accessor for SearchMoreSectionDescriptor(0);
  type metadata accessor for SearchMoreModel(0);
  sub_2197386EC(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor, &unk_219C702A4);
  sub_2197386EC(&qword_27CC0B890, type metadata accessor for SearchMoreModel, &unk_219CB2414);
  sub_219BF44D4();
  sub_2197383B4(v4);
  type metadata accessor for SearchMoreFeedServiceConfig(0);
  sub_2197386EC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig, &unk_219C731D0);
  v15 = sub_219BE6624();

  sub_21885AB78(v12);
  return v15;
}

id sub_219734CEC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  result = sub_219BE1DE4();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219734DCC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197373F8(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737680(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737800(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_21973727C(0);
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219734F38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973727C(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219734FF0()
{
  v0 = sub_219BE80A4();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v1);
  return sub_219BE9574();
}

uint64_t sub_2197350C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219735188(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8(0);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197375C8(0);
  if (!sub_219BE1E24())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchMoreBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchMoreBlueprintViewSupplementaryViewProvider();
  if (sub_219BE1E24())
  {
    *&v8[0] = v3;
    sub_2197373F8(0);
    v7 = objc_allocWithZone(v6);
    sub_219BE9B64();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_219735324(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790, 0x277D759D8);
    sub_219BE1BB4();
  }

  else
  {
    __break(1u);
  }
}

void *sub_219735434(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  result = sub_219BE1DF4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_219BEA274();
    sub_219BE9B74();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219735508(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197375C8(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737E30(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2197386EC(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_219737680(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE9754();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2197356F4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219737EC4(0);
  if (sub_219BE1E24())
  {
    sub_2197386EC(&qword_27CC1E880, sub_219737EC4, MEMORY[0x277D6E7F8]);
  }

  sub_219BE9774();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE9564();
  sub_219BE1DE4();
  sub_219BE9784();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219737B74(0);
  sub_219BE1E24();
  return sub_219BE9714();
}

uint64_t sub_219735870(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2197375C8(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_219737800(0);
      v4 = objc_allocWithZone(v3);
      return sub_219BE9F24();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_219735930(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E91810, MEMORY[0x277D32340], 0);
    result = sub_219BE1E34();
    v3 = v21;
    if (v21)
    {
      v4 = v22;
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for BaseStyler(0);
      v20[3] = v11;
      v12 = sub_2197386EC(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
      v20[4] = v12;
      v20[0] = v10;
      type metadata accessor for SearchMoreBlueprintViewCellProvider();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v11);
      v15 = MEMORY[0x28223BE20](v14);
      v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17, v15);
      v19 = *v17;
      v13[7] = v11;
      v13[8] = v12;
      v13[3] = 0;
      v13[4] = v19;
      swift_unknownObjectWeakInit();
      v13[9] = v3;
      v13[10] = v4;
      __swift_destroy_boxed_opaque_existential_1(v20);
      __swift_destroy_boxed_opaque_existential_1(v23);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219735BE8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchMoreViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A58B78;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void sub_219735C7C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0, MEMORY[0x277D32C08], 1);
  sub_218718690(a1, v4);
  v2 = swift_allocObject();
  sub_2186CB1F0(v4, v2 + 16);
  sub_219BE1E14();

  if (v6)
  {
    type metadata accessor for SearchMoreBlueprintViewSupplementaryViewProvider();
    v3 = swift_allocObject();
    sub_2186CB1F0(&v5, v3 + 16);
  }

  else
  {
    __break(1u);
  }
}

void sub_219735D80(void *a1, void *a2)
{
  sub_218C3070C(0, &qword_280E8B8A8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219737D44(0);
  v6 = v5;
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    *(v4 + 56) = v6;
    *(v4 + 64) = sub_2197386EC(&qword_27CC1E878, sub_219737D44, MEMORY[0x277D32298]);
    *(v4 + 32) = v8;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218C3070C(0, &qword_280E8EF20, MEMORY[0x277D83940]);
    sub_219BE1BA4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219735ED4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973727C(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219737CB0(0);
    swift_allocObject();
    return sub_219BE8914();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219735F4C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219737D44(0);
    swift_allocObject();
    return sub_219BEEB34();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219735FE4(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2197382F4(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_219737E30(0);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219736244(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2197375C8(0);
  if (sub_219BE1E24())
  {
    sub_2197386EC(&qword_27CC1E848, sub_2197375C8, MEMORY[0x277D6DF30]);
    sub_219BE8E94();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &qword_280E90FB0, MEMORY[0x277D32C40], 1);
    sub_219BE1E34();
    sub_2197380EC(0);
    swift_allocObject();
    sub_219BEFCE4();
    sub_2197386EC(&qword_27CC1E858, sub_2197380EC, MEMORY[0x277D32A40]);
    sub_219BE8EA4();

    sub_2197381C4(0);
    swift_allocObject();
    sub_219BF0074();
    sub_2197386EC(&qword_27CC1E868, sub_2197381C4, MEMORY[0x277D32B90]);
    sub_219BE8EA4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21973646C(void *a1)
{
  sub_2187F2110(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737EC4(0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_2197386EC(&qword_27CC1E840, sub_219737EC4, MEMORY[0x277D6E800]);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2197365A8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973727C(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2197386EC(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_219737EC4(0);
    swift_allocObject();
    return sub_219BE9AB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219736788(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973727C(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219736844(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219737B74(0);
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    v10 = sub_2197386EC(a3, sub_219737B74, a4);
    v8 = v9;
  }

  else
  {
    v10 = 0;
  }

  return a5(v8, v10);
}

uint64_t sub_2197368F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737B74(0);
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_2197386EC(&qword_27CC1E828, sub_219737B74, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197369A0(void *a1)
{
  sub_21973842C(0, &unk_280EE3E00, MEMORY[0x277D6E8E0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_219BE9524();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_219BE9564();
  result = sub_219BE1DE4();
  if (result)
  {
    v12[4] = v9;
    v12[5] = MEMORY[0x277D6E680];
    v12[1] = result;
    *v8 = 2;
    (*(v6 + 104))(v8, *MEMORY[0x277D6E670], v5);
    v11 = sub_219BE9D64();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    sub_219BE9534();
    swift_allocObject();
    return sub_219BE9514();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219736BA8()
{
  sub_21973842C(0, &unk_280EE3E00, MEMORY[0x277D6E8E0]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_219BE8944();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE8544();
  MEMORY[0x28223BE20](v7 - 8);
  sub_219BE9564();
  if (qword_27CC08540 != -1)
  {
    swift_once();
  }

  v8 = qword_27CCD8A08;
  (*(v4 + 104))(v6, *MEMORY[0x277D6E080], v3);
  v9 = sub_219BE9D64();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = v8;
  sub_219BE8534();
  return sub_219BE9554();
}

uint64_t sub_219736DC8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197375C8(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C6148(0, &qword_280E8E350, 0x277D31340);
    result = sub_219BE1E24();
    if (result)
    {
      sub_219737FB0(0, &qword_27CC1E7F8, &qword_27CC1E800, &unk_219C6E4B0, MEMORY[0x277D30270]);
      swift_allocObject();
      return sub_219BDEB44();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_219736EEC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197375C8(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E350, 0x277D31340);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8AB0, MEMORY[0x277D30250], 1);
  result = sub_219BE1E34();
  if (v3)
  {
    sub_219737FB0(0, &qword_27CC1E818, &qword_27CC1E820, &unk_219C6E488, MEMORY[0x277D2FF78]);
    swift_allocObject();
    return sub_219BDE2E4();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_219737054(uint64_t a1)
{
  if (!qword_27CC1E720)
  {
    sub_2189877E8(255);
    sub_219737140(255);
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8, MEMORY[0x277D6D8C8]);
    sub_2197386EC(&qword_27CC1E798, sub_219737140, MEMORY[0x277D6D960]);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E720);
    }
  }
}

void sub_219737140(uint64_t a1)
{
  if (!qword_27CC1E728)
  {
    type metadata accessor for SearchMoreSectionDescriptor(255);
    type metadata accessor for SearchMoreModel(255);
    sub_21973727C(255);
    sub_2197386EC(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor, &unk_219C702A4);
    sub_2197386EC(&qword_27CC0B890, type metadata accessor for SearchMoreModel, &unk_219CB2414);
    sub_2197386EC(&qword_27CC1E790, sub_21973727C, MEMORY[0x277D6DC88]);
    v1 = sub_219BE72E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E728);
    }
  }
}

void sub_21973727C(uint64_t a1)
{
  if (!qword_27CC1E730)
  {
    sub_2186C6148(255, &qword_280E8E4C0, 0x277D752A0);
    sub_2197373F8(255);
    sub_219737680(255);
    sub_219737800(255);
    type metadata accessor for SearchMoreViewController();
    sub_2197386EC(&qword_27CC1E778, sub_2197373F8, MEMORY[0x277D6E820]);
    sub_2197386EC(&qword_27CC1E780, sub_219737680, MEMORY[0x277D6E738]);
    sub_2197386EC(&qword_27CC1E788, sub_219737800, MEMORY[0x277D6E918]);
    v1 = sub_219BE7BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E730);
    }
  }
}

void sub_2197373F8(uint64_t a1)
{
  if (!qword_27CC1E738)
  {
    sub_2189877E8(255);
    sub_2197375C8(255);
    type metadata accessor for SearchMoreBlueprintViewCellProvider();
    type metadata accessor for SearchMoreBlueprintViewSupplementaryViewProvider();
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8, MEMORY[0x277D6D8C8]);
    sub_2197386EC(&qword_27CC1E748, sub_2197375C8, MEMORY[0x277D6DF38]);
    sub_2197386EC(&qword_27CC1E750, type metadata accessor for SearchMoreBlueprintViewCellProvider, &unk_219C40234);
    sub_2197386EC(&qword_27CC1E758, type metadata accessor for SearchMoreBlueprintViewSupplementaryViewProvider, &unk_219C65014);
    sub_2197386EC(&qword_27CC14770, type metadata accessor for SearchMoreLayoutModel, &unk_219C6E3B0);
    v1 = sub_219BE9B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E738);
    }
  }
}

void sub_2197375C8(uint64_t a1)
{
  if (!qword_27CC1E740)
  {
    type metadata accessor for SearchMoreLayoutModel(255);
    sub_218C3ED14();
    sub_2197386EC(&qword_27CC0F490, type metadata accessor for SearchMoreLayoutModel, &unk_219C6E378);
    v1 = sub_219BE8564();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E740);
    }
  }
}

void sub_219737680(uint64_t a1)
{
  if (!qword_27CC1E760)
  {
    sub_2189877E8(255);
    sub_2197375C8(255);
    type metadata accessor for SearchMoreViewController();
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8, MEMORY[0x277D6D8C8]);
    sub_2197386EC(&qword_27CC1E748, sub_2197375C8, MEMORY[0x277D6DF38]);
    sub_2197386EC(&qword_27CC1E768, type metadata accessor for SearchMoreViewController, &unk_219C534DC);
    sub_2197386EC(&qword_27CC14770, type metadata accessor for SearchMoreLayoutModel, &unk_219C6E3B0);
    v1 = sub_219BE9794();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E760);
    }
  }
}

void sub_219737800(uint64_t a1)
{
  if (!qword_27CC1E770)
  {
    sub_2189877E8(255);
    sub_2197375C8(255);
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8, MEMORY[0x277D6D8C8]);
    sub_2197386EC(&qword_27CC1E748, sub_2197375C8, MEMORY[0x277D6DF38]);
    v1 = sub_219BE9F34();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E770);
    }
  }
}

void sub_2197378EC(uint64_t a1)
{
  if (!qword_27CC1E7A0)
  {
    sub_2197375C8(255);
    type metadata accessor for SearchMoreBlueprintLayoutBuilder();
    sub_219737A28(255);
    sub_2197386EC(&qword_27CC1E748, sub_2197375C8, MEMORY[0x277D6DF38]);
    sub_2197386EC(&qword_27CC1E7B0, type metadata accessor for SearchMoreBlueprintLayoutBuilder, &unk_219C508B0);
    sub_2197386EC(&qword_27CC1E7B8, sub_219737A28, MEMORY[0x277D6E7B8]);
    v1 = sub_219BEA4A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E7A0);
    }
  }
}

void sub_219737A28(uint64_t a1)
{
  if (!qword_27CC1E7A8)
  {
    type metadata accessor for SearchMoreLayoutModel(255);
    sub_218FD8D9C();
    sub_2197386EC(&qword_27CC14770, type metadata accessor for SearchMoreLayoutModel, &unk_219C6E3B0);
    v1 = sub_219BE9974();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E7A8);
    }
  }
}

void sub_219737AE0(uint64_t a1)
{
  if (!qword_27CC1E7C0)
  {
    sub_2197375C8(255);
    sub_2197386EC(&qword_27CC1E748, sub_2197375C8, MEMORY[0x277D6DF38]);
    v1 = sub_219BE99B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E7C0);
    }
  }
}

void sub_219737B74(uint64_t a1)
{
  if (!qword_27CC1E7C8)
  {
    sub_2189877E8(255);
    sub_21973727C(255);
    type metadata accessor for SearchMoreViewController();
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8, MEMORY[0x277D6D8C8]);
    sub_2197386EC(&qword_27CC1E790, sub_21973727C, MEMORY[0x277D6DC88]);
    sub_2197386EC(&qword_27CC1E768, type metadata accessor for SearchMoreViewController, &unk_219C534DC);
    v1 = sub_219BE8774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E7C8);
    }
  }
}

void sub_219737CB0(uint64_t a1)
{
  if (!qword_27CC1E7D0)
  {
    sub_21973727C(255);
    sub_2197386EC(&qword_27CC1E790, sub_21973727C, MEMORY[0x277D6DC88]);
    v1 = sub_219BE8934();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E7D0);
    }
  }
}

void sub_219737D44(uint64_t a1)
{
  if (!qword_27CC1E7D8)
  {
    type metadata accessor for SearchMoreFeedServiceConfig(255);
    sub_2189877E8(255);
    sub_2197386EC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig, &unk_219C731D0);
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8, MEMORY[0x277D6D8C8]);
    v1 = sub_219BEEB44();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E7D8);
    }
  }
}

void sub_219737E30(uint64_t a1)
{
  if (!qword_27CC1E7E0)
  {
    sub_2189877E8(255);
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8, MEMORY[0x277D6D8C8]);
    v1 = sub_219BE8ED4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E7E0);
    }
  }
}

void sub_219737EC4(uint64_t a1)
{
  if (!qword_27CC1E7E8)
  {
    sub_21973727C(255);
    sub_2189877E8(255);
    sub_2197386EC(&qword_27CC1E790, sub_21973727C, MEMORY[0x277D6DC88]);
    sub_2197386EC(&qword_27CC1E7F0, sub_2189877E8, MEMORY[0x277D6D8C0]);
    v1 = sub_219BE9AD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E7E8);
    }
  }
}

void sub_219737FB0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_2197375C8(255);
    v13[0] = v10;
    v13[1] = sub_2197386EC(&qword_27CC1E748, sub_2197375C8, MEMORY[0x277D6DF38]);
    v13[2] = sub_2197386EC(a3, type metadata accessor for SearchMoreLayoutModel, a4);
    v13[3] = sub_2197386EC(&qword_27CC1E808, type metadata accessor for SearchMoreLayoutModel, &unk_219C6E530);
    v13[4] = sub_2197386EC(&qword_27CC1E810, type metadata accessor for SearchMoreLayoutModel, &unk_219C6E508);
    v11 = a5(a1, v13);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_2197380EC(uint64_t a1)
{
  if (!qword_27CC1E850)
  {
    sub_2189877E8(255);
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8, MEMORY[0x277D6D8C8]);
    sub_2197386EC(&qword_27CC14760, type metadata accessor for SearchMoreModel, &unk_219CB25D4);
    v1 = sub_219BEFCF4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E850);
    }
  }
}

void sub_2197381C4(uint64_t a1)
{
  if (!qword_27CC1E860)
  {
    sub_2189877E8(255);
    type metadata accessor for SearchMoreFeedServiceConfig(255);
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8, MEMORY[0x277D6D8C8]);
    sub_2197386EC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig, &unk_219C731D0);
    sub_2197386EC(&qword_27CC14760, type metadata accessor for SearchMoreModel, &unk_219CB25D4);
    v1 = sub_219BF0084();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E860);
    }
  }
}

void sub_2197382F4(uint64_t a1)
{
  if (!qword_27CC1E870)
  {
    sub_2189877E8(255);
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8, MEMORY[0x277D6D8C8]);
    v1 = sub_219BE8EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E870);
    }
  }
}

uint64_t sub_2197383B4(uint64_t a1)
{
  sub_21973842C(0, &qword_27CC1E898, sub_218F936D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21973842C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_219738480(uint64_t a1)
{
  if (!qword_27CC1E8A0)
  {
    type metadata accessor for SearchMoreSectionDescriptor(255);
    type metadata accessor for SearchMoreModel(255);
    sub_2197386EC(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor, &unk_219C702A4);
    sub_2197386EC(&qword_27CC0B890, type metadata accessor for SearchMoreModel, &unk_219CB2414);
    v1 = sub_219BE96F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E8A0);
    }
  }
}

void sub_21973856C(uint64_t a1)
{
  if (!qword_27CC1E8A8)
  {
    type metadata accessor for SearchMoreSectionDescriptor(255);
    type metadata accessor for SearchMoreModel(255);
    sub_2197386EC(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor, &unk_219C702A4);
    sub_2197386EC(&qword_27CC0B890, type metadata accessor for SearchMoreModel, &unk_219CB2414);
    v1 = sub_219BE8FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E8A8);
    }
  }
}

void sub_219738658(uint64_t a1)
{
  if (!qword_27CC1E8C0)
  {
    v2 = type metadata accessor for SearchMoreBlueprintModifierFactory();
    v3 = sub_2197386EC(&qword_27CC1E8C8, type metadata accessor for SearchMoreBlueprintModifierFactory, &unk_219C4C234);
    v5 = type metadata accessor for SearchMoreInteractor(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27CC1E8C0);
    }
  }
}

uint64_t sub_2197386EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_219738734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = type metadata accessor for SearchMoreRouter();
  v37[3] = v13;
  v37[4] = &off_282A43390;
  v37[0] = a5;
  v35 = v12;
  v36 = &off_282A52210;
  v34[0] = a6;
  type metadata accessor for SearchMoreEventHandler();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v37, v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (&v32[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v32[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v18;
  v26 = *v23;
  v33[3] = v13;
  v33[4] = &off_282A43390;
  v33[0] = v25;
  v32[3] = v12;
  v32[4] = &off_282A52210;
  v32[0] = v26;
  v14[3] = 0;
  swift_unknownObjectWeakInit();
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  sub_218718690(v33, (v14 + 8));
  sub_218718690(v32, (v14 + 13));
  ObjectType = swift_getObjectType();
  v28 = *(a2 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v28(v29, &off_282A57A60, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v14;
}

uint64_t sub_2197389F4(uint64_t a1)
{
  sub_2186C6148(0, &qword_280E8DDC0, 0x277D311C0);
  sub_219BE3204();

  v1 = sub_219BE2E54();
  sub_219BE2874();
  v2 = sub_219BE2F64();

  return v2;
}

uint64_t sub_219738AC0(void **a1, uint64_t a2)
{
  v43 = a1;
  v46 = a2;
  v2 = sub_219BE2874();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_219739FE0(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  sub_219739FE0(0, &qword_27CC214D0, type metadata accessor for AppRefreshRequestWindow, v6);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  refreshed = type metadata accessor for AppRefreshRequestWindow(0);
  v14 = *(refreshed - 8);
  MEMORY[0x28223BE20](refreshed);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219739070(*v43, v12);
  v17 = *(v14 + 48);
  v43 = refreshed;
  if (v17(v12, 1, refreshed) == 1)
  {
    sub_219739F14(v12, &qword_27CC214D0, type metadata accessor for AppRefreshRequestWindow);
  }

  else
  {
    v40 = v3;
    v41 = v2;
    v42 = v5;
    sub_219739EB0(v12, v16);
    v18 = v16;
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v39 = qword_280F61750;
    sub_219739FE0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_219C09BA0;
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_219BF7314();

    v44 = 0x203A7265746661;
    v45 = 0xE700000000000000;
    sub_219BDBDF4();
    v20 = sub_219BDBE34();
    v21 = *(*(v20 - 8) + 56);
    v21(v9, 0, 1, v20);
    v22 = sub_219BDBB94();
    v24 = v23;
    v38 = v18;
    v25 = MEMORY[0x277CC9788];
    sub_219739F14(v9, &qword_280EE9C10, MEMORY[0x277CC9788]);
    MEMORY[0x21CECC330](v22, v24);

    MEMORY[0x21CECC330](0x3A65726F66656220, 0xE900000000000020);
    sub_219BDBDF4();
    v21(v9, 0, 1, v20);
    v26 = v38;
    v27 = sub_219BDBB94();
    v29 = v28;
    sub_219739F14(v9, &qword_280EE9C10, v25);
    MEMORY[0x21CECC330](v27, v29);

    MEMORY[0x21CECC330](46, 0xE100000000000000);
    v30 = v44;
    v31 = v45;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_2186FC3BC();
    *(v19 + 32) = v30;
    *(v19 + 40) = v31;
    v32 = sub_219BF6214();
    sub_219BE5314("Requesting background app refresh %{public}@", 44, 2, &dword_2186C1000, v39, v32, v19);

    v33 = *(v46 + 16);
    v34 = sub_219BDBC04();
    v35 = sub_219BDBC04();
    [v33 requestBackgroundAppRefreshStartingAfter:v34 before:v35];

    sub_219739F84(v26);
    v2 = v41;
    v5 = v42;
    v3 = v40;
  }

  (*(v3 + 104))(v5, *MEMORY[0x277D6CD50], v2);
  sub_219739FE0(0, &qword_280EE6BB0, MEMORY[0x277D6CD60], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

id sub_219739070@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_219739FE0(0, &qword_280EE9BD0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v122 = &v87 - v5;
  sub_219739FE0(0, &unk_280EE9C00, MEMORY[0x277CC99E8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v121 = &v87 - v7;
  v8 = sub_219BDC084();
  v112 = *(v8 - 8);
  v113 = v8;
  MEMORY[0x28223BE20](v8);
  v111 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB534();
  v116 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v115 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v123 = &v87 - v13;
  v119 = sub_219BDBF74();
  v14 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v118 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDBF94();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v124 = &v87 - v21;
  sub_219739FE0(0, &qword_280EE9C40, MEMORY[0x277CC9578], v3);
  MEMORY[0x28223BE20](v22 - 8);
  v94 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v114 = &v87 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v87 - v27;
  v125 = sub_219BDBD34();
  v29 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v88 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v93 = &v87 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v87 - v34;
  *&v37 = MEMORY[0x28223BE20](v36).n128_u64[0];
  v39 = &v87 - v38;
  result = [a1 newIssuesCheckLocalTime];
  v41 = result;
  if (result <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v41 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v110 = v10;
  v42 = v124;
  sub_219BDBF34();
  v43 = *MEMORY[0x277CC9968];
  v44 = v14;
  v45 = v14 + 104;
  v46 = *(v14 + 104);
  v120 = v16;
  v48 = v118;
  v47 = v119;
  v91 = v45;
  v90 = v46;
  v46(v118, v43, v119);
  sub_219BDBD24();
  sub_219BDBF04();
  v49 = v29[1];
  v50 = v35;
  v51 = v125;
  v109 = v29 + 1;
  v108 = v49;
  v49(v50, v125);
  v52 = *(v44 + 8);
  v53 = v48;
  v54 = v120;
  v92 = v44 + 8;
  v89 = v52;
  v52(v53, v47);
  v55 = v42;
  v126 = *(v17 + 8);
  v127 = v17 + 8;
  v126(v42, v54);
  v56 = v29[6];
  v107 = v29 + 6;
  v106 = v56;
  result = v56(v28, 1, v51);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v57 = (v41 % 216000) / 16;
  v104 = (v57 - 24 * ((((43 * v57) & 0x8000) != 0) + (((43 * v57) >> 8) >> 2)));
  v103 = ((((34953 * (v41 % 3600)) >> 16) >> 5) + (((v41 % 3600 + ((-30583 * (v41 % 3600)) >> 16)) & 0x8000) >> 15));
  v102 = v41 % 60;
  v58 = v29[4];
  v95 = v29 + 4;
  v96 = v58;
  v58(v39, v28, v51);
  sub_219BDBF34();
  sub_219BDBF34();
  v59 = v111;
  sub_219BDBF54();
  v60 = v126;
  v126(v19, v54);
  v105 = v39;
  sub_219BDBE84();
  v61 = v112;
  v62 = v59;
  v63 = v113;
  (*(v112 + 8))(v62, v113);
  v60(v55, v54);
  (*(v17 + 56))(v121, 1, 1, v54);
  (*(v61 + 56))(v122, 1, 1, v63);
  v113 = sub_219BDB494();
  LODWORD(v111) = v64;
  v112 = sub_219BDB4B4();
  v101 = v65;
  v100 = sub_219BDB434();
  v97 = v66;
  v99 = sub_219BDB504();
  v98 = sub_219BDB3F4();
  sub_219BDB4F4();
  sub_219BDB3E4();
  sub_219BDB3D4();
  sub_219BDB404();
  v67 = v120;
  v68 = v124;
  v69 = v125;
  v70 = v115;
  sub_219BDB514();
  sub_219BDBF34();
  v71 = v114;
  sub_219BDBEF4();
  v126(v68, v67);
  v72 = v106;
  if (v106(v71, 1, v69) == 1)
  {
    v73 = v117;
    v74 = v110;
    v75 = v108;
LABEL_8:
    sub_219739F14(v71, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v80 = sub_219BF61F4();
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v81 = sub_219BF6F44();
    sub_219BE5314("Failed to create next window for background task scheduling", 59, 2, &dword_2186C1000, v81, v80, MEMORY[0x277D84F90]);

    v82 = *(v116 + 8);
    v82(v70, v74);
    v82(v123, v74);
    v75(v105, v69);
    refreshed = type metadata accessor for AppRefreshRequestWindow(0);
    return (*(*(refreshed - 8) + 56))(v73, 1, 1, refreshed);
  }

  v76 = v93;
  v96(v93, v71, v69);
  sub_219BDBF34();
  v78 = v118;
  v77 = v119;
  v90(v118, *MEMORY[0x277CC9980], v119);
  v71 = v94;
  sub_219BDBF04();
  v89(v78, v77);
  v126(v68, v67);
  v79 = v72(v71, 1, v69);
  v73 = v117;
  v74 = v110;
  v75 = v108;
  if (v79 == 1)
  {
    v108(v76, v69);
    goto LABEL_8;
  }

  v84 = v88;
  v96(v88, v71, v69);
  sub_219BDBA64();
  v85 = type metadata accessor for AppRefreshRequestWindow(0);
  sub_219BDBA64();
  v75(v84, v69);
  v75(v76, v69);
  v86 = *(v116 + 8);
  v86(v70, v74);
  v86(v123, v74);
  v75(v105, v69);
  return (*(*(v85 - 8) + 56))(v117, 0, 1, v85);
}

uint64_t sub_219739DC0()
{
  sub_2186C6148(0, &qword_280E8DDC0, 0x277D311C0);
  sub_219BE3204();

  v0 = sub_219BE2E54();
  sub_219BE2874();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_219739EB0(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for AppRefreshRequestWindow(0);
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_219739F14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219739FE0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219739F84(uint64_t a1)
{
  refreshed = type metadata accessor for AppRefreshRequestWindow(0);
  (*(*(refreshed - 8) + 8))(a1, refreshed);
  return a1;
}

void sub_219739FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21973A0C0(void *a1)
{
  v2 = *(sub_219BF11F4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_218C811E8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21973BB90(v5);
  *a1 = v3;
}

void sub_21973A168(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_218C81314(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_21973BCBC(v4);
  *a1 = v2;
}

double sub_21973A1D4()
{
  v1 = sub_219BED174();
  v18 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BED1D4();
  v16 = *(v4 - 8);
  v17 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  (*(v8 + 104))(v10, *MEMORY[0x277D851D0], v7);
  v11 = sub_219BF66E4();
  (*(v8 + 8))(v10, v7);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_21973BB14;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_161;
  v13 = _Block_copy(aBlock);
  sub_219BED1A4();
  v19 = MEMORY[0x277D84F90];
  sub_21874E2E8(&qword_280E927E0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v14 = MEMORY[0x277D85198];
  sub_21874E910(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21973BB1C(&qword_280E8EFA0, &qword_280E8EFB0, v14);
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v6, v3, v13);
  _Block_release(v13);

  swift_unownedRelease();
  (*(v18 + 8))(v3, v1);
  (*(v16 + 8))(v6, v17);

  return result;
}

uint64_t sub_21973A5A8(uint64_t a1)
{
  v2 = swift_unownedRetainStrong();
  sub_218718690(v2 + 32, v5);

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_219BEFFE4();
  *(swift_allocObject() + 16) = a1;
  swift_unownedRetain();
  v3 = sub_219BE2E54();
  sub_219BE3024();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_21973A684()
{
  v0 = sub_219BED174();
  v13 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BED1D4();
  v3 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  v6 = sub_21973A99C();

  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v7 = sub_219BF66A4();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  aBlock[4] = sub_21973BB88;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_10_5;
  v9 = _Block_copy(aBlock);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E2E8(&qword_280E927E0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v10 = MEMORY[0x277D85198];
  sub_21874E910(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21973BB1C(&qword_280E8EFA0, &qword_280E8EFB0, v10);
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v5, v2, v9);
  _Block_release(v9);

  (*(v13 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v12);
}

uint64_t sub_21973A99C()
{
  v88 = sub_219BF11F4();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88 - 8);
  *&v84 = &v78 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v85 = &v78 - v3;
  MEMORY[0x28223BE20](v4);
  inited = &v78 - v5;
  v80 = sub_21973B6DC(v0, v7);
  v9 = v8;
  v87 = v0;
  sub_219ADE0A8();
  v11 = v10;
  v12 = *(v10 + 16);
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = sub_21947D1C0(*(v10 + 16), 0);
  v14 = sub_2194ABD64(&v94, v13 + 4, v12, v11);
  sub_21892DE98(v94);
  if (v14 != v12)
  {
    __break(1u);
LABEL_4:
  }

  v15 = v87[7];
  __swift_project_boxed_opaque_existential_1(v87 + 4, v15);
  v16 = sub_219BEFFF4();

  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  v79 = v9;
  v83 = v17;
  if (v17)
  {
    v19 = 0;
    v82 = (v86 + 16);
    v78 = (v86 + 8);
    v20 = (v86 + 32);
    v21 = v88;
    v81 = v16;
    while (1)
    {
      if (v19 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_97;
      }

      v22 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v15 = *(v86 + 72);
      (*(v86 + 16))(inited, v16 + v22 + v15 * v19, v21);
      v23 = sub_219BF11E4();
      if (!v9)
      {
        break;
      }

      if (v23 == v80 && v9 == v24)
      {
      }

      else
      {
        v25 = sub_219BF78F4();
        v16 = v81;

        if ((v25 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      (*v78)(inited, v21);
LABEL_9:
      if (v83 == ++v19)
      {
        goto LABEL_22;
      }
    }

LABEL_17:
    v26 = *v20;
    (*v20)(v85, inited, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_218C37FF0(0, *(v18 + 16) + 1, 1);
      v18 = v94;
    }

    v29 = *(v18 + 16);
    v28 = *(v18 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_218C37FF0((v28 > 1), v29 + 1, 1);
      v18 = v94;
    }

    *(v18 + 16) = v29 + 1;
    v30 = v18 + v22 + v29 * v15;
    v21 = v88;
    v26(v30, v85, v88);
    v9 = v79;
    v16 = v81;
    goto LABEL_9;
  }

LABEL_22:

  v94 = v18;

  sub_21973A0C0(&v94);
  v82 = 0;

  v31 = v94;
  v32 = *(v94 + 16);
  if (v32)
  {
    v94 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v32, 0);
    inited = v94;
    v33 = v86 + 16;
    v86 = *(v86 + 16);
    v34 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v83 = v31;
    v35 = v31 + v34;
    v85 = *(v33 + 56);
    v36 = (v33 - 8);
    do
    {
      v37 = v84;
      v38 = v88;
      (v86)(v84, v35, v88);
      v39 = sub_219BF11E4();
      v41 = v40;
      (*v36)(v37, v38);
      v94 = inited;
      v43 = *(inited + 2);
      v42 = *(inited + 3);
      if (v43 >= v42 >> 1)
      {
        sub_21870B65C((v42 > 1), v43 + 1, 1);
        inited = v94;
      }

      *(inited + 2) = v43 + 1;
      v44 = &inited[16 * v43];
      *(v44 + 4) = v39;
      *(v44 + 5) = v41;
      v35 += v85;
      --v32;
    }

    while (v32);

    v45 = v80;
    v9 = v79;
  }

  else
  {

    inited = MEMORY[0x277D84F90];
    v45 = v80;
  }

  v15 = &v91;
  v92 = v45;
  v93 = v9;
  v46 = MEMORY[0x277D84F90];
  if (v9)
  {

    v47 = MEMORY[0x277D84F90];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_31;
    }

    goto LABEL_107;
  }

  v47 = MEMORY[0x277D84F90];
  while (2)
  {
    sub_2189D2CDC(v15 + 32);
    v94 = v47;
    sub_2191ED3E8(inited);
    v85 = v87[9];
    sub_218E96058(v94);
    v15 = v52;

    v94 = v46;
    if (v15 >> 62)
    {
      goto LABEL_101;
    }

    v88 = v15 & 0xFFFFFFFFFFFFFF8;
    v45 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_37:
    v53 = MEMORY[0x277D84F90];
    if (!v45)
    {
      goto LABEL_64;
    }

    v54 = 0;
    v86 = v15 & 0xC000000000000001;
    v84 = xmmword_219C09BA0;
    do
    {
      v83 = v53;
      v55 = v54;
      while (1)
      {
        if (v86)
        {
          v56 = MEMORY[0x21CECE0F0](v55, v15);
          v54 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v55 >= *(v88 + 16))
          {
            goto LABEL_98;
          }

          v56 = *(v15 + 8 * v55 + 32);

          v54 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
            goto LABEL_99;
          }
        }

        v57 = [*(v56 + 16) asSection];
        if (!v57)
        {
          goto LABEL_59;
        }

        v47 = v57;
        sub_2186DF260(0, &qword_280E8B750, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 1) = v84;
        v58 = [v47 parentID];
        if (v58)
        {
          v59 = v58;
          v60 = sub_219BF5414();
          v62 = v61;
        }

        else
        {
          v60 = 0;
          v62 = 0xE000000000000000;
        }

        *(inited + 4) = v60;
        *(inited + 5) = v62;
        sub_218E96058(inited);
        v64 = v63;
        swift_setDeallocating();
        sub_2189AD3D8((inited + 32));
        if (v64 >> 62)
        {
          break;
        }

        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

LABEL_49:

        swift_unknownObjectRelease();

        ++v55;
        if (v54 == v45)
        {
          v53 = v83;
          goto LABEL_64;
        }
      }

      if (!sub_219BF7214())
      {
        goto LABEL_49;
      }

LABEL_55:
      if ((v64 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](0, v64);
      }

      else
      {
        if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_109;
        }
      }

      swift_unknownObjectRelease();

LABEL_59:
      MEMORY[0x21CECC690]();
      if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v53 = v94;
    }

    while (v54 != v45);
LABEL_64:

    v94 = v53;
    sub_21874E910(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    sub_21973BB1C(&qword_280E8EFC0, &qword_280E8EFD0, type metadata accessor for TagModel);
    sub_21874E2E8(qword_280E92B40, 255, type metadata accessor for TagModel, &protocol conformance descriptor for TagModel);
    v47 = sub_219BF56B4();

    v15 = v47 >> 62;
    if (v47 >> 62)
    {
      if (v47 < 0)
      {
        v46 = v47;
      }

      else
      {
        v46 = v47 & 0xFFFFFFFFFFFFFF8;
      }

      v64 = sub_219BF7214();
      if (sub_219BF7214() < 0)
      {
        __break(1u);
LABEL_107:
        v47 = sub_218840D24(0, *(v47 + 16) + 1, 1, v47);
LABEL_31:
        v49 = *(v47 + 16);
        v48 = *(v47 + 24);
        if (v49 >= v48 >> 1)
        {
          v47 = sub_218840D24((v48 > 1), v49 + 1, 1, v47);
        }

        *(v47 + 16) = v49 + 1;
        v50 = v47 + 16 * v49;
        v51 = v79;
        *(v50 + 32) = v45;
        *(v50 + 40) = v51;
        continue;
      }

      while (1)
      {
        if (v64 >= 3)
        {
          v77 = 3;
        }

        else
        {
          v77 = v64;
        }

        if ((v64 & 0x8000000000000000) == 0)
        {
          v66 = v77;
        }

        else
        {
          v66 = 3;
        }

        result = sub_219BF7214();
        if (result < v66)
        {
          goto LABEL_118;
        }

LABEL_69:
        if ((v47 & 0xC000000000000001) != 0 && v66)
        {
          type metadata accessor for TagModel();

          sub_219BF7334();
          if (v66 != 1)
          {
            sub_219BF7334();
            if (v66 != 2)
            {
              sub_219BF7334();
            }
          }
        }

        else
        {
        }

        if (v15)
        {
          inited = sub_219BF7564();
          v68 = v69;
          v67 = v70;
          v64 = v71;
        }

        else
        {
          v67 = 0;
          inited = (v47 & 0xFFFFFFFFFFFFFF8);
          v68 = (v47 & 0xFFFFFFFFFFFFFF8) + 32;
          v64 = (2 * v66) | 1;
        }

        swift_unknownObjectRetain();
        sub_21973D980(v68, v67, v64);
        v94 = v72;
        v62 = v82;
        sub_21973A168(&v94);
        if (v62)
        {
          goto LABEL_110;
        }

        swift_unknownObjectRelease();
        v73 = *(v94 + 16);
        if (v73)
        {
          v94 = MEMORY[0x277D84F90];
          sub_219BF73F4();
          v15 = 40;
          do
          {

            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
            v15 += 16;
            --v73;
          }

          while (v73);

          v74 = v94;
          if (v94 >> 62)
          {
LABEL_94:
            v47 = sub_219BF7214();
            if (!v47)
            {
LABEL_95:
              swift_unknownObjectRelease();

              return MEMORY[0x277D84F90];
            }

            goto LABEL_84;
          }
        }

        else
        {

          v74 = MEMORY[0x277D84F90];
          if (MEMORY[0x277D84F90] >> 62)
          {
            goto LABEL_94;
          }
        }

        v47 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v47)
        {
          goto LABEL_95;
        }

LABEL_84:
        v94 = MEMORY[0x277D84F90];
        v64 = &v94;
        sub_219BF73F4();
        if ((v47 & 0x8000000000000000) == 0)
        {
          v88 = inited;
          for (i = 0; ; ++i)
          {
            v15 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if ((v74 & 0xC000000000000001) != 0)
            {
              v76 = MEMORY[0x21CECE0F0](i, v74);
            }

            else
            {
              if (i >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_100;
              }

              v76 = *(v74 + 8 * i + 32);
            }

            v89 = v76;
            sub_21973B7DC(&v89, &v90);

            sub_219BF73D4();
            inited = *(v94 + 16);
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
            if (v15 == v47)
            {
              swift_unknownObjectRelease();

              return v94;
            }
          }

LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          v88 = v15 & 0xFFFFFFFFFFFFFF8;
          v45 = sub_219BF7214();
          goto LABEL_37;
        }

        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:

        __break(1u);
      }
    }

    break;
  }

  result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v66 = 3;
  }

  else
  {
    v66 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result >= v66)
  {
    goto LABEL_69;
  }

LABEL_118:
  __break(1u);
  return result;
}

void sub_21973B63C(uint64_t a1)
{
  v1 = [objc_opt_self() sharedApplication];
  sub_2186C6148(0, &unk_280E8DD90, 0x277D75198);
  v2 = sub_219BF5904();
  [v1 setShortcutItems_];
}

uint64_t sub_21973B6DC(uint64_t *a1, uint64_t a2)
{
  if (qword_280EE9638 != -1)
  {
    swift_once();
  }

  sub_21874E2E8(qword_280ED03B8, a2, type metadata accessor for ShortcutItemUpdater, &unk_219CA063C);
  sub_219BDC7D4();
  result = v4;
  v3 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v3 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    return 0;
  }

  return result;
}

void sub_21973B7DC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*(*a1 + 16) displayName];
  if (!v4)
  {
    sub_219BF5414();
    v4 = sub_219BF53D4();
  }

  v5 = sub_21973DB54(*(v3 + 16));
  sub_21874E910(0, &qword_280E8B6B0, sub_21973DC6C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 32) = 0x656E696C64616568;
  *(inited + 16) = xmmword_219C0D560;
  *(inited + 40) = 0xEA00000000004449;
  v7 = [*(v3 + 16) identifier];
  if (!v7)
  {
    sub_219BF5414();
    v8 = sub_219BF53D4();

    v7 = v8;
  }

  *(inited + 48) = v7;
  *(inited + 56) = 0x726F7053794D7369;
  *(inited + 64) = 0xEA00000000007374;
  [*(v3 + 16) isMySports];
  *(inited + 72) = sub_219BF5B34();
  *(inited + 80) = 0x656C7A7A75507369;
  *(inited + 88) = 0xEB00000000627548;
  [*(v3 + 16) isPuzzleHub];
  *(inited + 96) = sub_219BF5B34();
  *(inited + 104) = 0x7548646F6F467369;
  *(inited + 112) = 0xE900000000000062;
  [*(v3 + 16) isFoodHub];
  *(inited + 120) = sub_219BF5B34();
  *(inited + 128) = 0x6570696365527369;
  *(inited + 136) = 0xEF676F6C61746143;
  [*(v3 + 16) isRecipeCatalog];
  *(inited + 144) = sub_219BF5B34();
  sub_2194B1AF0(inited);
  swift_setDeallocating();
  sub_21973DC6C(0);
  swift_arrayDestroy();
  v9 = objc_allocWithZone(MEMORY[0x277D75198]);
  v10 = sub_219BF53D4();
  sub_218D17A08();
  v11 = sub_219BF5204();

  v12 = [v9 initWithType:v10 localizedTitle:v4 localizedSubtitle:0 icon:v5 userInfo:v11];

  *a2 = v12;
}

uint64_t sub_21973BAC8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21973BB1C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_21874E910(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21973BB90(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_219BF7884();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_219BF11F4();
        v6 = sub_219BF5A34();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_219BF11F4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21973C138(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21973BDB8(0, v2, 1, a1);
  }
}

void sub_21973BCBC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_219BF7884();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_218C3F8C8(0);
        v5 = sub_219BF5A34();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21973CB48(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21973C058(0, v2, 1, a1);
  }
}

void sub_21973BDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_219BF11F4();
  MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v35 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v46 = *(v13 + 16);
    v47 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v43 = (v13 + 32);
    v44 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v42 = -v17;
    v20 = a1 - a3;
    v36 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v40 = v19;
    v41 = a3;
    v38 = v21;
    v39 = v20;
    v22 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v48;
      v25 = v46;
      (v46)(v48, v21, v8, v14);
      v26 = v49;
      v25(v49, v23, v8);
      sub_219BF11D4();
      v28 = v27;
      sub_219BF11D4();
      v30 = v29;
      v31 = *v18;
      (*v18)(v26, v8);
      v31(v24, v8);
      if (v30 >= v28)
      {
LABEL_4:
        a3 = v41 + 1;
        v19 = &v40[v36];
        v20 = v39 - 1;
        v21 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v32(v23, v33, v8);
      v23 += v42;
      v21 += v42;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

char *sub_21973C058(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 16 * a3 - 16);
    v7 = &result[-a3];
LABEL_5:
    v8 = (v5 + 16 * v4);
    v10 = *v8;
    v9 = v8[1];
    v11 = v7;
    v15 = v6;
    while (1)
    {
      v12 = *v6;
      result = [*(v9 + 16) isMySports];
      if ((result & 1) == 0 && v10 >= v12)
      {
LABEL_4:
        ++v4;
        v6 = v15 + 2;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v10 = v6[2];
      v9 = v6[3];
      *(v6 + 1) = *v6;
      *v6 = v10;
      v6[1] = v9;
      v6 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_21973C138(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v125 = a1;
  v9 = sub_219BF11F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v127 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v138 = &v122 - v13;
  MEMORY[0x28223BE20](v14);
  v144 = &v122 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v143 = &v122 - v18;
  v135 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_134;
    }

    a3 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v117 = a3;
    }

    else
    {
LABEL_128:
      v117 = sub_218C81048(a3);
    }

    v145 = v117;
    a3 = *(v117 + 2);
    if (a3 >= 2)
    {
      while (*v135)
      {
        v118 = *&v117[16 * a3];
        v119 = v117;
        v120 = *&v117[16 * a3 + 24];
        sub_21973D17C(&(*v135)[v10[9] * v118], &(*v135)[v10[9] * *&v117[16 * a3 + 16]], &(*v135)[v10[9] * v120], v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v120 < v118)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_218C81048(v119);
        }

        if (a3 - 2 >= *(v119 + 2))
        {
          goto LABEL_122;
        }

        v121 = &v119[16 * a3];
        *v121 = v118;
        *(v121 + 1) = v120;
        v145 = v119;
        sub_218C80FBC(a3 - 1);
        v117 = v145;
        a3 = *(v145 + 2);
        if (a3 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v20 = 0;
  v141 = (v10 + 1);
  v142 = v10 + 2;
  v140 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v134 = v10;
  v124 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v38 = v20 + 1;
    }

    else
    {
      v136 = v19;
      v129 = v6;
      v24 = v10[9];
      v5 = &(*v135)[v24 * v23];
      v132 = *v135;
      v25 = v132;
      v26 = v10[2];
      v27 = v143;
      v26(v143, &v132[v24 * v23], v9, v17);
      v28 = &v25[v24 * v22];
      v29 = v144;
      v137 = v26;
      (v26)(v144, v28, v9);
      sub_219BF11D4();
      v31 = v30;
      sub_219BF11D4();
      v33 = v32;
      v34 = v22;
      v35 = v10[1];
      a3 = v141;
      v35(v29, v9);
      v133 = v35;
      v35(v27, v9);
      v123 = v34;
      v36 = v34 + 2;
      v139 = v24;
      v37 = &v132[v24 * (v34 + 2)];
      while (1)
      {
        v38 = v136;
        if (v136 == v36)
        {
          break;
        }

        a3 = v143;
        v39 = v137;
        v137(v143, v37, v9);
        v40 = v144;
        v39(v144, v5, v9);
        sub_219BF11D4();
        v42 = v41;
        sub_219BF11D4();
        v44 = v43;
        v45 = v133;
        (v133)(v40, v9);
        v45(a3, v9);
        v10 = v134;
        ++v36;
        v37 += v139;
        v5 += v139;
        if (v33 < v31 == v44 >= v42)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v46 = v128;
      v6 = v129;
      a4 = v124;
      v22 = v123;
      if (v33 < v31)
      {
        if (v38 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v38)
        {
          v47 = v38;
          a3 = v139 * (v38 - 1);
          v5 = v38 * v139;
          v136 = v38;
          v48 = v123 * v139;
          do
          {
            if (v22 != --v47)
            {
              v129 = v6;
              v49 = *v135;
              if (!*v135)
              {
                goto LABEL_131;
              }

              v50 = *v140;
              (*v140)(v127, &v49[v48], v9, v46);
              if (v48 < a3 || &v49[v48] >= &v49[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v50(&v49[a3], v127, v9);
              v46 = v128;
              v6 = v129;
            }

            ++v22;
            a3 -= v139;
            v5 -= v139;
            v48 += v139;
          }

          while (v22 < v47);
          v10 = v134;
          a4 = v124;
          v22 = v123;
          v38 = v136;
        }
      }
    }

    v51 = v135[1];
    if (v38 < v51)
    {
      if (__OFSUB__(v38, v22))
      {
        goto LABEL_124;
      }

      if (v38 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = v135[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v38 != v5)
        {
          break;
        }
      }
    }

    v5 = v38;
    if (v38 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v128;
    }

    else
    {
      v21 = sub_2191F6B60(0, *(v128 + 2) + 1, 1, v128);
    }

    a3 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a3 + 1;
    if (a3 >= v52 >> 1)
    {
      v21 = sub_2191F6B60((v52 > 1), a3 + 1, 1, v21);
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a3];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v125;
    if (!*v125)
    {
      goto LABEL_133;
    }

    v130 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v53)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v135)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a3 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_21973D17C(&(*v135)[v10[9] * v94], &(*v135)[v10[9] * *&v21[16 * v5 + 32]], &(*v135)[v10[9] * v95], v55);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_218C81048(v93);
        }

        if (a3 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a3];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v145 = v93;
        sub_218C80FBC(v5);
        v21 = v145;
        v53 = *(v145 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v135[1];
    v20 = v130;
    a4 = v124;
    if (v130 >= v19)
    {
      goto LABEL_95;
    }
  }

  v129 = v6;
  v97 = *v135;
  v98 = v10[9];
  v139 = v10[2];
  v99 = &v97[v98 * (v38 - 1)];
  v100 = v22;
  v101 = -v98;
  v123 = v100;
  v102 = (v100 - v38);
  v137 = v97;
  v126 = v98;
  v103 = &v97[v38 * v98];
  v130 = v5;
LABEL_85:
  v136 = v38;
  v131 = v103;
  v132 = v102;
  v104 = v103;
  v133 = v99;
  while (1)
  {
    v105 = v143;
    v106 = v139;
    (v139)(v143, v104, v9, v17);
    v107 = v144;
    v106(v144, v99, v9);
    sub_219BF11D4();
    v109 = v108;
    sub_219BF11D4();
    v111 = v110;
    v112 = *v141;
    (*v141)(v107, v9);
    v113 = v105;
    a3 = v9;
    v112(v113, v9);
    if (v111 >= v109)
    {
LABEL_84:
      v38 = v136 + 1;
      v99 = &v133[v126];
      v102 = v132 - 1;
      v5 = v130;
      v103 = &v131[v126];
      if (v136 + 1 != v130)
      {
        goto LABEL_85;
      }

      v6 = v129;
      v10 = v134;
      v22 = v123;
      if (v130 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v114 = *v140;
    v115 = v138;
    (*v140)(v138, v104, v9);
    swift_arrayInitWithTakeFrontToBack();
    v114(v99, v115, v9);
    v99 += v101;
    v104 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_21973CB48(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_97:
    v8 = *v7;
    if (!*v7)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_99:
      v91 = *(v10 + 2);
      if (v91 >= 2)
      {
        while (*v6)
        {
          v92 = *&v10[16 * v91];
          v93 = *&v10[16 * v91 + 24];
          sub_21973D71C((*v6 + 16 * v92), (*v6 + 16 * *&v10[16 * v91 + 16]), (*v6 + 16 * v93), v8);
          if (v5)
          {
            goto LABEL_107;
          }

          if (v93 < v92)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_218C81048(v10);
          }

          if (v91 - 2 >= *(v10 + 2))
          {
            goto LABEL_123;
          }

          v94 = &v10[16 * v91];
          *v94 = v92;
          *(v94 + 1) = v93;
          sub_218C80FBC(v91 - 1);
          v91 = *(v10 + 2);
          if (v91 <= 1)
          {
            goto LABEL_107;
          }
        }

        goto LABEL_133;
      }

LABEL_107:

      return;
    }

LABEL_129:
    v10 = sub_218C81048(v10);
    goto LABEL_99;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (2)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      goto LABEL_23;
    }

    v13 = *v6;
    v14 = (v13 + 16 * v12);
    v15 = *v14;
    v16 = 16 * v9;
    v17 = *(v13 + 16 * v9);
    v18 = [*(v14[1] + 16) isMySports];
    v19 = v11;
    if (v15 < v17)
    {
      v20 = 1;
    }

    else
    {
      v20 = v18;
    }

    v21 = v19 + 2;
    v98 = v19;
    if (v19 + 2 >= v8)
    {
      v25 = v12;
      v12 = v21;
      goto LABEL_18;
    }

    v22 = v13 + 16 * v19 + 40;
    while (1)
    {
      v12 = v21;
      v23 = *(v22 - 8);
      v24 = *(v22 - 24);
      if ([*(*v22 + 16) isMySports])
      {
        if ((v20 & 1) == 0)
        {
          v6 = a3;
          v11 = v98;
          v7 = a1;
          goto LABEL_23;
        }

        goto LABEL_11;
      }

      if (v20 == v23 >= v24)
      {
        break;
      }

LABEL_11:
      v21 = v12 + 1;
      v22 += 16;
      if (v8 == v12 + 1)
      {
        v25 = v12;
        v12 = v8;
        goto LABEL_18;
      }
    }

    v25 = v12 - 1;
LABEL_18:
    v6 = a3;
    if (!v20)
    {
      v7 = a1;
      v11 = v98;
      goto LABEL_23;
    }

    v11 = v98;
    if (v12 < v98)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v98 <= v25)
    {
      v83 = 0;
      v84 = 16 * v12;
      v85 = v98;
      do
      {
        if (v85 != v12 + v83 - 1)
        {
          v86 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v87 = (v86 + v16);
          v88 = v86 + v84;
          v89 = *v87;
          v90 = v87[1];
          *v87 = *(v88 - 16);
          *(v88 - 16) = v89;
          *(v88 - 8) = v90;
        }

        ++v85;
        --v83;
        v84 -= 16;
        v16 += 16;
      }

      while (v85 < v12 + v83);
    }

    v7 = a1;
LABEL_23:
    v26 = v6[1];
    if (v12 >= v26)
    {
      goto LABEL_41;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_125;
    }

    if (v12 - v11 >= a4)
    {
LABEL_41:
      if (v12 < v11)
      {
        goto LABEL_124;
      }

      v9 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_2191F6B60(0, *(v10 + 2) + 1, 1, v10);
      }

      v38 = *(v10 + 2);
      v37 = *(v10 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v10 = sub_2191F6B60((v37 > 1), v38 + 1, 1, v10);
      }

      *(v10 + 2) = v39;
      v40 = &v10[16 * v38];
      *(v40 + 4) = v11;
      *(v40 + 5) = v9;
      v41 = *v7;
      if (!*v7)
      {
        goto LABEL_134;
      }

      if (!v38)
      {
LABEL_3:
        v8 = v6[1];
        v7 = a1;
        if (v9 >= v8)
        {
          goto LABEL_97;
        }

        continue;
      }

      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v10 + 4);
          v44 = *(v10 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_61:
          if (v46)
          {
            goto LABEL_113;
          }

          v59 = &v10[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_116;
          }

          v65 = &v10[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_120;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v69 = &v10[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_75:
        if (v64)
        {
          goto LABEL_115;
        }

        v72 = &v10[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_118;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_82:
        v8 = v42 - 1;
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v6)
        {
          goto LABEL_131;
        }

        v80 = *&v10[16 * v8 + 32];
        v81 = *&v10[16 * v42 + 40];
        sub_21973D71C((*v6 + 16 * v80), (*v6 + 16 * *&v10[16 * v42 + 32]), (*v6 + 16 * v81), v41);
        if (v5)
        {
          goto LABEL_107;
        }

        if (v81 < v80)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_218C81048(v10);
        }

        if (v8 >= *(v10 + 2))
        {
          goto LABEL_110;
        }

        v82 = &v10[16 * v8];
        *(v82 + 4) = v80;
        *(v82 + 5) = v81;
        sub_218C80FBC(v42);
        v39 = *(v10 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v10[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_111;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_112;
      }

      v54 = &v10[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_114;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_117;
      }

      if (v58 >= v50)
      {
        v76 = &v10[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_121;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    break;
  }

  v27 = v11 + a4;
  if (__OFADD__(v11, a4))
  {
    goto LABEL_126;
  }

  if (v27 >= v26)
  {
    v27 = v6[1];
  }

  if (v27 < v11)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v12 == v27)
  {
    goto LABEL_41;
  }

  v95 = v5;
  v28 = *v6;
  v8 = *v6 + 16 * v12 - 16;
  v99 = v11;
  v29 = v11 - v12;
  v101 = v27;
LABEL_33:
  v102 = v12;
  v30 = (v28 + 16 * v12);
  v32 = *v30;
  v31 = v30[1];
  v33 = v29;
  v34 = v8;
  while (1)
  {
    v35 = *v34;
    if (([*(v31 + 16) isMySports] & 1) == 0 && v32 >= v35)
    {
LABEL_32:
      v12 = v102 + 1;
      v8 += 16;
      --v29;
      if (v102 + 1 == v101)
      {
        v12 = v101;
        v5 = v95;
        v6 = a3;
        v11 = v99;
        v7 = a1;
        goto LABEL_41;
      }

      goto LABEL_33;
    }

    if (!v28)
    {
      break;
    }

    v32 = v34[2];
    v31 = v34[3];
    *(v34 + 1) = *v34;
    *v34 = v32;
    v34[1] = v31;
    v34 -= 2;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

void sub_21973D17C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = sub_219BF11F4();
  v8 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v52 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v67 = a1;
  v66 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v17;
    if (v17 >= 1)
    {
      v34 = -v13;
      v56 = a4;
      v57 = (v8 + 16);
      v54 = (v8 + 8);
      v55 = a1;
      v35 = v33;
      v58 = -v13;
      do
      {
        v53 = v33;
        v36 = a2;
        v37 = a2 + v34;
        v60 = v36;
        v61 = v37;
        while (1)
        {
          if (v36 <= a1)
          {
            v67 = v36;
            v65 = v53;
            goto LABEL_58;
          }

          v39 = a3;
          v59 = v33;
          v40 = a3 + v34;
          v41 = v35 + v34;
          v42 = *v57;
          v43 = v62;
          v44 = v64;
          (*v57)(v62, v41, v64);
          v45 = v37;
          v46 = v63;
          (v42)(v63, v45, v44);
          sub_219BF11D4();
          v48 = v47;
          sub_219BF11D4();
          v50 = v49;
          v51 = *v54;
          (*v54)(v46, v44);
          v51(v43, v44);
          if (v50 < v48)
          {
            break;
          }

          v33 = v41;
          a3 = v40;
          if (v39 < v35 || v40 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v61;
            a1 = v55;
          }

          else
          {
            v37 = v61;
            a1 = v55;
            if (v39 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v35 = v41;
          v38 = v41 > v56;
          v34 = v58;
          v36 = v60;
          if (!v38)
          {
            a2 = v60;
            goto LABEL_57;
          }
        }

        a3 = v40;
        if (v39 < v60 || v40 >= v60)
        {
          a2 = v61;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v55;
          v34 = v58;
          v33 = v59;
        }

        else
        {
          a2 = v61;
          a1 = v55;
          v34 = v58;
          v33 = v59;
          if (v39 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v35 > v56);
    }

LABEL_57:
    v67 = a2;
    v65 = v33;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v61 = a4 + v16;
    v65 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v59 = a3;
      v60 = v8 + 16;
      v57 = (v8 + 8);
      v58 = v19;
      v20 = v63;
      do
      {
        v21 = a1;
        v22 = v62;
        v23 = a2;
        v24 = v64;
        v25 = a2;
        v26 = v58;
        (v58)(v62, v23, v64);
        v26(v20, a4, v24);
        sub_219BF11D4();
        v28 = v27;
        sub_219BF11D4();
        v30 = v29;
        v31 = *v57;
        (*v57)(v20, v24);
        v31(v22, v24);
        if (v30 >= v28)
        {
          v32 = v21;
          if (v21 < a4 || v21 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (v21 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = a4 + v13;
          a4 += v13;
        }

        else
        {
          a2 = v25 + v13;
          v32 = v21;
          if (v21 < v25 || v21 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v21 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v32 + v13;
        v67 = a1;
      }

      while (a4 < v61 && a2 < v59);
    }
  }

LABEL_58:
  sub_2189F193C(&v67, &v66, &v65);
}

uint64_t sub_21973D71C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __src || &__src[16 * v13] <= a4)
    {
      memmove(a4, __src, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      v28 = v4;
LABEL_27:
      v19 = v6 - 16;
      v5 -= 16;
      v20 = v14;
      do
      {
        v21 = v5 + 16;
        v23 = *(v20 - 2);
        v22 = *(v20 - 1);
        v20 -= 16;
        v24 = v19;
        v25 = *v19;
        if (([*(v22 + 16) isMySports] & 1) != 0 || v23 < v25)
        {
          v26 = v24;
          if (v21 != v6)
          {
            *v5 = *v24;
          }

          v4 = v28;
          if (v14 <= v28 || (v6 = v26, v26 <= v7))
          {
            v6 = v26;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v21 != v14)
        {
          *v5 = *v20;
        }

        v5 -= 16;
        v14 = v20;
        v19 = v24;
      }

      while (v20 > v28);
      v14 = v20;
      v4 = v28;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        v16 = *v4;
        if (([*(*(v6 + 1) + 16) isMySports] & 1) != 0 || v15 < v16)
        {
          break;
        }

        v17 = v4;
        v18 = v7 == v4;
        v4 += 16;
        if (!v18)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      v17 = v6;
      v18 = v7 == v6;
      v6 += 16;
      if (v18)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v7 = *v17;
      goto LABEL_18;
    }

LABEL_20:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void sub_21973D980(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = MEMORY[0x277D84F90];
  v5 = (a3 >> 1) - a2;
  if (a3 >> 1 != a2)
  {
    v7 = 0;
    v6 = 0;
    if (a2 > v3)
    {
      v3 = a2;
    }

    v8 = v3 - a2;
    v9 = a1 + 8 * a2;
    v10 = (MEMORY[0x277D84F90] + 32);
    while (v8 != v7)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_31;
      }

      v11 = *(v9 + 8 * v7);
      if (v6)
      {

        v12 = __OFSUB__(v6--, 1);
        if (v12)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v13 = *(v4 + 3);
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        sub_21874E910(0, &unk_280E8B670, sub_218C3F8C8, MEMORY[0x277D84560]);
        v16 = swift_allocObject();
        v17 = _swift_stdlib_malloc_size_0(v16);
        v18 = v17 - 32;
        if (v17 < 32)
        {
          v18 = v17 - 17;
        }

        v19 = v18 >> 4;
        *(v16 + 2) = v15;
        *(v16 + 3) = 2 * (v18 >> 4);
        v20 = v16 + 32;
        v21 = *(v4 + 3) >> 1;
        v10 = &v16[16 * v21 + 32];
        v22 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;
        if (*(v4 + 2))
        {
          v23 = v4 + 32;
          if (v16 != v4 || v20 >= &v23[16 * v21])
          {
            memmove(v20, v23, 16 * v21);
          }

          *(v4 + 2) = 0;
        }

        else
        {
        }

        v4 = v16;
        v12 = __OFSUB__(v22, 1);
        v6 = v22 - 1;
        if (v12)
        {
          goto LABEL_32;
        }
      }

      *v10 = v7;
      *(v10 + 1) = v11;
      v10 += 16;
      if (v5 == ++v7)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v6 = 0;
LABEL_26:
  v24 = *(v4 + 3);
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v12 = __OFSUB__(v25, v6);
    v26 = v25 - v6;
    if (!v12)
    {
      *(v4 + 2) = v26;
      return;
    }

LABEL_34:
    __break(1u);
  }
}

id sub_21973DB54(void *a1)
{
  if (![a1 isMySports] && !objc_msgSend(a1, sel_isPuzzleHub) && !objc_msgSend(a1, sel_isFoodHub))
  {
    [a1 isRecipeCatalog];
  }

  v2 = sub_219BF53D4();
  v3 = [objc_opt_self() iconWithSystemImageName_];

  return v3;
}

void sub_21973DC6C(uint64_t a1)
{
  if (!qword_280E8F6F8)
  {
    sub_218D17A08();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F6F8);
    }
  }
}

uint64_t SportsManagementStartupTask.run()()
{
  if (qword_280EE98D8 != -1)
  {
    swift_once();
  }

  sub_21879FFB0(&qword_280EB6C68, &protocol conformance descriptor for SportsManagementStartupTask);
  sub_219BDCA54();
  sub_21879D924();
  swift_allocObject();
  return sub_219BE3014();
}

unint64_t sub_21973DE00()
{
  result = qword_27CC1E8D0;
  if (!qword_27CC1E8D0)
  {
    sub_21973DE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E8D0);
  }

  return result;
}

void sub_21973DE58()
{
  if (!qword_27CC1E8D8)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E8D8);
    }
  }
}

uint64_t sub_21973DEA8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21973DF24(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_21973DF8C(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_21973E004(char *a2@<X8>)
{
  v3 = sub_219BF7614();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21973E064(uint64_t *a1@<X8>)
{
  v2 = 1819047270;
  if (!*v1)
  {
    v2 = 0x6C616974726170;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21973E09C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1819047270;
  }

  else
  {
    v3 = 0x6C616974726170;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1819047270;
  }

  else
  {
    v5 = 0x6C616974726170;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

unint64_t sub_21973E200()
{
  result = qword_27CC1E8E0;
  if (!qword_27CC1E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E8E0);
  }

  return result;
}

unint64_t sub_21973E254()
{
  result = qword_27CC1E8E8;
  if (!qword_27CC1E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E8E8);
  }

  return result;
}

uint64_t sub_21973E2A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_21973E304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21973E368()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21973E428(uint64_t a1, uint64_t a2)
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_21973E494(uint64_t a1, uint64_t a2)
{
  v4 = sub_21973E654();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_21973E4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

unint64_t sub_21973E54C()
{
  result = qword_27CC1E8F0;
  if (!qword_27CC1E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E8F0);
  }

  return result;
}

unint64_t sub_21973E5A4()
{
  result = qword_27CC1E8F8;
  if (!qword_27CC1E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E8F8);
  }

  return result;
}

unint64_t sub_21973E5FC()
{
  result = qword_27CC1E900;
  if (!qword_27CC1E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E900);
  }

  return result;
}

unint64_t sub_21973E654()
{
  result = qword_27CC1E908;
  if (!qword_27CC1E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E908);
  }

  return result;
}

unint64_t sub_21973E6AC()
{
  result = qword_27CC1E910;
  if (!qword_27CC1E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E910);
  }

  return result;
}

void sub_21973E700(uint64_t a1)
{
  sub_219BED0C4();
  v1 = objc_opt_self();
  v2 = sub_219BF53D4();
  sub_218A293AC();
  v3 = sub_219BF6BB4();
  v4 = [objc_opt_self() configurationWithFont_];

  v5 = [v1 ts:v2 internalSystemImageNamed:v4 withConfiguration:?];
  if (v5)
  {
    [v5 imageWithRenderingMode_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for WeatherTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EBFB18;
  if (!qword_280EBFB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21973E880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2189ADE64(a1, v6);
  v12 = *(v9 + 48);
  if (v12(v6, 1, v8) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877C5E8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    sub_219BEE974();
    sub_2189ADEC8(a1);
    if (v12(v6, 1, v8) != 1)
    {
      sub_2189ADEC8(v6);
    }
  }

  else
  {
    sub_2189ADEC8(a1);
    (*(v9 + 32))(v11, v6, v8);
  }

  return (*(v9 + 32))(a2, v11, v8);
}

uint64_t sub_21973EAD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21973EF30(0, &qword_27CC1E918, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973EEDC();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AD5C8(0);
    sub_21877C5E8(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
    sub_219BF7674();
    sub_21973E880(v6, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21973ECC4(uint64_t a1)
{
  v2 = sub_21973EEDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21973ED00(uint64_t a1)
{
  v2 = sub_21973EEDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21973ED54(void *a1)
{
  sub_21973EF30(0, &qword_27CC1E928, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973EEDC();
  sub_219BF7B44();
  sub_2189AD5C8(0);
  sub_21877C5E8(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21973EEDC()
{
  result = qword_27CC1E920;
  if (!qword_27CC1E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E920);
  }

  return result;
}

void sub_21973EF30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21973EEDC();
    v7 = a3(a1, &type metadata for WeatherTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21973EFA8()
{
  result = qword_27CC1E930;
  if (!qword_27CC1E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E930);
  }

  return result;
}

unint64_t sub_21973F000()
{
  result = qword_27CC1E938;
  if (!qword_27CC1E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E938);
  }

  return result;
}

unint64_t sub_21973F058()
{
  result = qword_27CC1E940;
  if (!qword_27CC1E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E940);
  }

  return result;
}

void sub_21973F0AC(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v34 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v35 = a1;

  v7 = 0;
  while (v5)
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v7 << 6);
    v11 = (*(v35 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_2186D1230(*(v35 + 56) + 32 * v10, v33);
    *&v32 = v13;
    *(&v32 + 1) = v12;
    v29 = v32;
    v30 = v33[0];
    v31 = v33[1];
    sub_2186D1230(&v30, v28);
    v26 = v29;
    v27[0] = v30;
    v27[1] = v31;
    sub_218751558(v28, v25);
    v14 = *(v1 + 16);
    if (*(v1 + 24) <= v14)
    {

      sub_2194815B8(v14 + 1, 1);
      v1 = v34;
    }

    else
    {
    }

    v15 = v26;
    sub_219BF7AA4();
    sub_219BF5524();
    v16 = sub_219BF7AE4();
    v17 = v1 + 64;
    v18 = -1 << *(v1 + 32);
    v19 = v16 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v17 + 8 * v20);
        if (v24 != -1)
        {
          v8 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_6;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_6:
    v5 &= v5 - 1;
    *(v17 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    *(*(v1 + 48) + 16 * v8) = v15;
    sub_218751558(v25, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void *sub_21973F32C()
{
  v1 = OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase____lazy_storage___dataStore;
  if (*(v0 + OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase____lazy_storage___dataStore))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase____lazy_storage___dataStore);
  }

  else
  {
    v3 = [*(v0 + OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_aggregateStoreProvider) aggregateStore];
    _s9DataStoreCMa();
    swift_allocObject();
    v2 = sub_2189D8288(v3);

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_21973F404(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v4 = sub_219BE4E74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v42 = qword_280F61728;
  v41 = sub_219BF6214();
  sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  v45 = 0;
  v46 = 0xE000000000000000;

  v12 = sub_219BF53D4();

  v13 = [a1 objectForKey_];

  if (v13)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(v43, v44);
    swift_dynamicCast();
    v14 = sub_219BE49B4();
    v16 = v15;
    v17 = *(v5 + 8);
    v17(v10, v4);
    MEMORY[0x21CECC330](v14, v16);

    v18 = v45;
    v19 = v46;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_2186FC3BC();
    *(v11 + 32) = v18;
    *(v11 + 40) = v19;
    sub_219BE5314("Running PersonalizationScript Test %{public}@", 45, 2, &dword_2186C1000, v42, v41, v11);

    v20 = sub_219BF53D4();

    v21 = [a1 objectForKey_];

    if (v21)
    {
      v22 = swift_allocObject();
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v43, v44);
      swift_dynamicCast();
      v23 = sub_219BE4D14();
      v17(v7, v4);
      v24 = *(v23 + 16);
      v25 = *(sub_219BE4D24() - 8);
      v26 = v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v22[2] = v23;
      v22[3] = v26;
      v22[4] = 0;
      v22[5] = (2 * v24) | 1;
      v27 = v38;
      sub_21973F958(v22, v38, a1);
      *(swift_allocObject() + 16) = a1;
      v28 = a1;
      v29 = sub_219BE2E54();
      sub_219BE2F64();

      v30 = swift_allocObject();
      *(v30 + 16) = v27;
      *(v30 + 24) = v28;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_2197410DC;
      *(v31 + 24) = v30;
      v32 = v28;
      v33 = v27;
      v34 = sub_219BE2E54();
      sub_219BE2F74();

      v35 = swift_allocObject();
      *(v35 + 16) = v39;
      *(v35 + 24) = v40;

      v36 = sub_219BE2E54();
      sub_219BE2FD4();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_21973F958(uint64_t a1, char *a2, void *a3)
{
  v96 = a3;
  v5 = sub_219BE49C4();
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BE4E74();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E82C8(0, &unk_27CC1E998, MEMORY[0x277D34A50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v74 - v11;
  v13 = sub_219BE4D24();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v93 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v74 - v17;
  swift_beginAccess();
  sub_218FDC6C8(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_219744368(v12, &unk_27CC1E998, MEMORY[0x277D34A50]);
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v19 = qword_280F61728;
    v20 = sub_219BF6214();
    sub_219BE5314("Finished with steps", 19, 2, &dword_2186C1000, v19, v20, MEMORY[0x277D84F90]);
    sub_2197445A0(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
    return;
  }

  v80 = v15;
  v83 = a1;
  v87 = v14;
  v21 = *(v14 + 32);
  v88 = v13;
  v95 = v14 + 32;
  v86 = v21;
  v21(v18, v12, v13);
  v22 = *&a2[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_tagService + 8];
  v79 = *&a2[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_tagService];
  v78 = v22;
  v82 = sub_21973F32C();
  v23 = *&a2[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_commandCenter + 8];
  v81 = *&a2[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_commandCenter];
  v85 = v23;
  v84 = a2;
  v24 = *&a2[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_tracker];

  v25 = sub_219BF53D4();

  v26 = [v96 objectForKey_];

  if (!v26)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_218751558(v98, v99);
  sub_2186CF94C(0);
  swift_dynamicCast();
  v27 = v97;

  v28 = sub_219BF53D4();

  v29 = [v96 objectForKey_];

  if (!v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_218751558(v98, v99);
  sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
  swift_dynamicCast();
  v77 = v97;

  v30 = sub_219BF53D4();

  v31 = [v96 objectForKey_];

  if (!v31)
  {
LABEL_16:
    __break(1u);
    return;
  }

  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_218751558(v98, v99);
  v32 = v90;
  swift_dynamicCast();
  v33 = sub_219BE49A4();
  if (!v33 || (v34 = *(v33 + 16), , v35 = 30.0, !v34))
  {
    v35 = 0.0;
  }

  v36 = v18;
  v76 = v24;
  v94 = v27;
  v89[1](v9, v32);
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v37 = qword_280F61728;
  v38 = sub_219BF6214();
  sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_219C09BA0;
  *&v99[0] = 0;
  *(&v99[0] + 1) = 0xE000000000000000;
  v75 = v36;
  sub_219BE4D04();
  v40 = v92;
  sub_219BF7484();
  v41 = *(v91 + 8);
  v41(v7, v40);
  v42 = v99[0];
  *(v39 + 56) = MEMORY[0x277D837D0];
  *(v39 + 64) = sub_2186FC3BC();
  *(v39 + 32) = v42;
  sub_219BE5314("Fetching activity for destination %{public}@", 44, 2, &dword_2186C1000, v37, v38, v39);

  sub_219BE4D04();
  v79 = sub_21923FB98(v79, v78);
  v41(v7, v40);
  v43 = sub_219BE1C44();
  v44 = v87;
  v45 = *(v87 + 16);
  v91 = v87 + 16;
  v92 = v45;
  v46 = v93;
  v47 = v88;
  v45(v93, v36, v88);
  v48 = *(v44 + 80);
  v90 = (v48 + 16) & ~v48;
  v49 = (v80 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = v49;
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = v86;
  v86(v51 + ((v48 + 16) & ~v48), v46, v47);
  *(v51 + v49) = v94;
  v53 = v77;
  *(v51 + v50) = v77;

  v89 = v53;
  sub_219BE2F64();

  v79 = sub_219BE1C44();
  v92(v46, v36, v47);
  v54 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v52(v56 + v90, v46, v47);
  v57 = v80;
  *(v56 + v80) = v82;
  *(v56 + v50) = v94;
  v58 = (v56 + v54);
  v59 = v81;
  v60 = v85;
  *v58 = v81;
  v58[1] = v60;
  *(v56 + v55) = v76;
  *(v56 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;

  swift_unknownObjectRetain();

  v61 = v79;
  sub_219BE2F64();

  v62 = sub_219BE1C44();
  v63 = v75;
  v64 = v88;
  v92(v46, v75, v88);
  v65 = swift_allocObject();
  v86(v65 + v90, v46, v64);
  v66 = (v65 + v57);
  v67 = v85;
  *v66 = v59;
  v66[1] = v67;
  swift_unknownObjectRetain();
  sub_219BE2F64();

  v68 = swift_allocObject();
  v69 = v84;
  v68[2] = v83;
  v68[3] = v69;
  v70 = v96;
  v68[4] = v96;

  v71 = v69;
  v72 = v70;
  v73 = sub_219BE2E54();
  sub_219BE2F64();

  (*(v87 + 8))(v63, v64);
}

void sub_21974050C(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v7 = qword_280F61728;
  v8 = sub_219BF6214();
  sub_219BE5314("Finished step, seeing if there are more", 39, 2, &dword_2186C1000, v7, v8, MEMORY[0x277D84F90]);
  sub_21973F958(a2, a3, a4);
}

void sub_2197405C4(uint64_t a1, void *a2)
{
  v22 = sub_219BED214();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = sub_219BE4E74();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_219BF53D4();

  v14 = [a2 objectForKey_];

  if (v14)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v23, &v24);
    swift_dynamicCast();
    if (sub_219BE49A4())
    {
    }

    (*(v10 + 8))(v12, v9);
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v15 = qword_280F61728;
    v16 = sub_219BF6214();
    sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C09BA0;
    *&v24 = 0;
    *(&v24 + 1) = 0xE000000000000000;
    sub_219BF5CB4();
    v18 = v24;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_2186FC3BC();
    *(v17 + 32) = v18;
    sub_219BE5314("Delaying %{public}@ seconds for all events to be processed", 58, 2, &dword_2186C1000, v15, v16, v17);

    sub_219BED1F4();
    sub_219BED244();
    v19 = *(v3 + 8);
    v20 = v5;
    v21 = v22;
    v19(v20, v22);
    sub_219BE2E14();
    v19(v8, v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_219740954(uint64_t a1, void *a2)
{
  v4 = sub_219BE4E74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_219BF53D4();

  v9 = [a2 objectForKey_];

  if (v9)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v24, &aBlock);
    swift_dynamicCast();
    v10 = sub_219BE49A4();
    (*(v5 + 8))(v7, v4);
    v11 = sub_21973F32C();
    v12 = sub_219743BD0(v10, v11);

    if (!v2)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
      v14 = [a2 testName];
      if (!v14)
      {
        sub_219BF5414();
        v14 = sub_219BF53D4();
      }

      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_2197440EC;
      *(v16 + 24) = v15;
      v22 = sub_2197440F4;
      v23 = v16;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v20 = sub_219740ED4;
      v21 = &block_descriptor_162;
      v17 = _Block_copy(&aBlock);
      v18 = v12;

      [v13 ts:v14 performScrollTest:0 iterations:0 delta:v17 extraResultsBlock:?];
      _Block_release(v17);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219740C4C(void *a1)
{
  sub_2186E82C8(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0B8C0;
  *(inited + 32) = 0x6572756C696166;
  *(inited + 40) = 0xE700000000000000;
  v3 = MEMORY[0x277D83D88];
  sub_2197445A0(0, &qword_280E8E900, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
  *(inited + 48) = a1 != 0;
  *(inited + 56) = a1 == 0;
  *(inited + 72) = v4;
  strcpy((inited + 80), "failureMessage");
  *(inited + 95) = -18;
  sub_2197445A0(0, &qword_280E8F860, MEMORY[0x277D837D0], v3);
  *(inited + 120) = v5;
  if (a1)
  {
    v6 = a1;
    v7 = [v6 message];
    a1 = sub_219BF5414();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  *(inited + 96) = a1;
  *(inited + 104) = v9;
  *(inited + 128) = 0x747069726373;
  *(inited + 136) = 0xE600000000000000;
  sub_2186E82C8(0, &qword_27CC1E990, MEMORY[0x277D34AD0], MEMORY[0x277D83D88]);
  *(inited + 168) = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 144));
  sub_219691AA0(boxed_opaque_existential_1);
  v12 = sub_219BE4E74();
  (*(*(v12 - 8) + 56))(boxed_opaque_existential_1, 0, 1, v12);
  v13 = sub_218831A70(inited);
  swift_setDeallocating();
  sub_2188317B0();
  swift_arrayDestroy();
  sub_21973F0AC(v13);
  v15 = v14;

  return v15;
}

id sub_219740ED4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4 = sub_219BF5204();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_219741114(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v4 = qword_280F61728;
  v5 = sub_219BF6214();
  sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  sub_219BF7484();
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  sub_219BE5314("Navigting to activity %{public}@", 32, 2, &dword_2186C1000, v4, v5, v6);

  MEMORY[0x28223BE20](v7);
  sub_2197445A0(0, &unk_27CC1E9B0, &_s11DestinationON, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

double sub_2197412FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v13 = sub_219BE9414();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a6;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a7;
  v18[7] = sub_218846958;
  v18[8] = v16;

  sub_2189EB264(a6);

  v19 = a7;
  sub_219BE6454();

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v20 = qword_280F61728;
  v21 = sub_219BF6214();
  sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C09BA0;
  v31 = 0;
  v32 = 0xE000000000000000;
  v30 = a6;
  sub_219BF7484();
  v23 = v31;
  v24 = v32;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_2186FC3BC();
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  sub_219BE5314("Attempting to navigate to activity %{public}@", 45, 2, &dword_2186C1000, v20, v21, v22);

  v31 = a6;
  v26 = v28;
  v25 = v29;
  (*(v28 + 104))(v15, *MEMORY[0x277D6E598], v29);
  sub_219BE6474();
  (*(v26 + 8))(v15, v25);

  return result;
}

void sub_219741638(uint64_t *a1, uint64_t a2, unint64_t a3, void (*a4)(void *), uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v47 = a7;
  v48 = a6;
  v53 = a4;
  v54 = a5;
  v11 = sub_219BED174();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v52 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BED1D4();
  v51 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_219BED214();
  v50 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  v22 = *a1;
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    v44 = v14;
    v45 = v12;
    v46 = v11;
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v23 = qword_280F61728;
    v24 = sub_219BF6214();
    sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_219C09BA0;
    aBlock = 0;
    v57 = 0xE000000000000000;
    v62 = a3;
    sub_219BF7484();
    v26 = aBlock;
    v27 = v57;
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = sub_2186FC3BC();
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    sub_219BE5314("Successfully navigated to activity %{public}@", 45, 2, &dword_2186C1000, v23, v24, v25);

    aBlock = v22;
    v28 = NewsActivity2.identifier.getter();
    v30 = v29;
    v62 = a3;
    if (v28 == NewsActivity2.identifier.getter() && v30 == v31)
    {

LABEL_8:
      sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
      v33 = sub_219BF66A4();
      sub_219BED1F4();
      sub_219BED244();
      v50 = *(v50 + 8);
      (v50)(v18, v55);
      v34 = swift_allocObject();
      v36 = v48;
      v35 = v49;
      v34[2] = a3;
      v34[3] = v36;
      v37 = v54;
      v34[4] = v53;
      v34[5] = v37;
      v34[6] = v47;
      v34[7] = v35;
      v60 = sub_219744650;
      v61 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v57 = 1107296256;
      v58 = sub_218793E0C;
      v59 = &block_descriptor_105_0;
      v38 = _Block_copy(&aBlock);
      sub_2189EB264(a3);
      v39 = v36;

      sub_219BED1A4();
      aBlock = MEMORY[0x277D84F90];
      sub_21874E330(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_2186E82C8(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_21874EB68();
      v40 = v52;
      v41 = v46;
      sub_219BF7164();
      MEMORY[0x21CECD420](v21, v16, v40, v38);
      _Block_release(v38);

      (*(v45 + 8))(v40, v41);
      (*(v51 + 8))(v16, v44);
      (v50)(v21, v55);
      return;
    }

    v32 = sub_219BF78F4();

    if (v32)
    {
      goto LABEL_8;
    }

    type metadata accessor for PersonalizationScriptTestCase.Errors(0);
    sub_21874E330(&qword_27CC16BE0, type metadata accessor for PersonalizationScriptTestCase.Errors, &unk_219CA0C70);
    v42 = swift_allocError();
    *v43 = a3;
    swift_storeEnumTagMultiPayload();
    sub_2189EB264(a3);
    v53(v42);
  }
}

void sub_219741CE0(unint64_t a1, double a2, uint64_t a3, void (*a4)(void *), uint64_t a5, void (*a6)(unint64_t))
{
  v8 = (a1 >> 58) & 0x3C | (a1 >> 1) & 3;
  if (v8 == 10)
  {
    type metadata accessor for TagFeedViewController();
    sub_219BF6584();
    if (v15)
    {
      v9 = v15;
      v10 = v15;
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (v8 == 17)
  {
    type metadata accessor for TodayViewController();
    sub_219BF6584();
    if (v15)
    {
      v9 = v15;
      v10 = v15 | 0x8000000000000000;
LABEL_7:
      a6(v10);

      return;
    }

LABEL_11:
    type metadata accessor for PersonalizationScriptTestCase.Errors(0);
    sub_21874E330(&qword_27CC16BE0, type metadata accessor for PersonalizationScriptTestCase.Errors, &unk_219CA0C70);
    v14 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    a4(v14);

    return;
  }

  type metadata accessor for PersonalizationScriptTestCase.Errors(0);
  sub_21874E330(&qword_27CC16BE0, type metadata accessor for PersonalizationScriptTestCase.Errors, &unk_219CA0C70);
  v12 = swift_allocError();
  *v13 = a1;
  swift_storeEnumTagMultiPayload();
  sub_2189EB264(a1);
  a4(v12);
}

uint64_t sub_219741EE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, void), double a8)
{
  v92 = a3;
  v90 = a5;
  v91 = a7;
  v88 = a6;
  v89 = a4;
  v10 = sub_219BE49D4();
  v82 = *(v10 - 8);
  v83 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_219BE4D74();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E82C8(0, &qword_27CC1E9A8, MEMORY[0x277D34A58], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v85 = &v73 - v14;
  v15 = sub_219BE4D54();
  v94 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v81 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v16;
  MEMORY[0x28223BE20](v17);
  v93 = &v73 - v18;
  v19 = *a1;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v20 = qword_280F61728;
  LODWORD(v84) = sub_219BF6214();
  sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v75 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C0B8C0;
  sub_219BE4D14();
  v23 = MEMORY[0x21CECC6D0]();
  v95 = v15;
  v25 = v24;

  v26 = MEMORY[0x277D837D0];
  *(v22 + 56) = MEMORY[0x277D837D0];
  v27 = sub_2186FC3BC();
  *(v22 + 64) = v27;
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  v98 = 0;
  v99 = 0xE000000000000000;
  sub_219BE4D24();
  sub_219BF7484();
  v28 = v98;
  v29 = v99;
  *(v22 + 96) = v26;
  *(v22 + 104) = v27;
  *(v22 + 72) = v28;
  *(v22 + 80) = v29;
  v98 = 0;
  v99 = 0xE000000000000000;
  v87 = v19;
  v96 = v19;
  v30 = v95;
  sub_219BF7484();
  v31 = v98;
  v32 = v99;
  *(v22 + 136) = v26;
  *(v22 + 144) = v27;
  *(v22 + 112) = v31;
  *(v22 + 120) = v32;
  v86 = v20;
  sub_219BE5314("Attempting to complete tasks %{public}@ for step %{public}@ on destination %{public}@", 85, 2, &dword_2186C1000, v20, v84, v22);

  v33 = swift_allocObject();
  v34 = sub_219BE4D14();
  v35 = *(v34 + 16);
  v36 = v94;
  v37 = *(v94 + 80);
  v33[2] = v34;
  v33[3] = v34 + ((v37 + 32) & ~v37);
  v33[4] = 0;
  v33[5] = (2 * v35) | 1;
  _s9InventoryCMa();
  v38 = swift_allocObject();
  *(v38 + 16) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v39 = v85;
  sub_218FDC6E0(v85);
  if ((*(v36 + 48))(v39, 1, v30) == 1)
  {
    sub_219744368(v39, &qword_27CC1E9A8, MEMORY[0x277D34A58]);
    v40 = sub_219BF6214();
    sub_219BE5314("Finished running tasks", 22, 2, &dword_2186C1000, v86, v40, MEMORY[0x277D84F90]);
    sub_2189D69A0();
    sub_2197445A0(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v41 = sub_219BE3014();
  }

  else
  {
    v74 = ~v37;
    v84 = *(v36 + 32);
    v85 = (v36 + 32);
    v84(v93, v39, v30);
    v42 = sub_219BF6214();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_219C09BA0;
    v96 = 0;
    v97 = 0xE000000000000000;
    sub_219BF7484();
    v44 = v96;
    v45 = v97;
    *(v43 + 56) = MEMORY[0x277D837D0];
    *(v43 + 64) = v27;
    *(v43 + 32) = v44;
    *(v43 + 40) = v45;
    sub_219BE5314("Found next task %{public}@", 26, 2, &dword_2186C1000, v86, v42, v43);

    v46 = v77;
    v47 = v76;
    v48 = v78;
    (*(v77 + 104))(v76, *MEMORY[0x277D34A68], v78);
    v49 = sub_219BE4D34();
    v51 = v92;
    if (v50)
    {
      sub_2189D66A4(v49, v50, v92, v47);
    }

    (*(v46 + 8))(v47, v48);
    v52 = v79;
    v53 = v93;
    sub_219BE4D44();
    v73 = v38;
    sub_21993873C(v87, v38, v89, v90, v88, v91);
    (*(v82 + 8))(v52, v83);
    v54 = swift_allocObject();
    *(v54 + 16) = a8;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_2197443D8;
    *(v55 + 24) = v54;
    v56 = sub_219BE2E54();
    sub_219BE2F64();

    v57 = v81;
    v58 = v53;
    v59 = v95;
    (*(v94 + 16))(v81, v58, v95);
    v60 = (v37 + 24) & v74;
    v61 = swift_allocObject();
    *(v61 + 16) = v51;
    v84((v61 + v60), v57, v59);
    v62 = swift_allocObject();
    *(v62 + 16) = sub_2197443E0;
    *(v62 + 24) = v61;

    v63 = sub_219BE2E54();
    v86 = sub_219BE2F74();

    v85 = sub_219BE1C44();
    v64 = swift_allocObject();
    *(v64 + 16) = v33;
    *(v64 + 24) = v51;
    v65 = v87;
    v66 = v73;
    *(v64 + 32) = v87;
    *(v64 + 40) = v66;
    v67 = v90;
    *(v64 + 48) = v89;
    *(v64 + 56) = v67;
    v68 = v91;
    *(v64 + 64) = v88;
    *(v64 + 72) = v68;
    *(v64 + 80) = a8;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_2197443E4;
    *(v69 + 24) = v64;
    v70 = (v65 & 0x7FFFFFFFFFFFFFFFLL);

    swift_unknownObjectRetain();

    v71 = v85;
    v41 = sub_219BE2F64();

    (*(v94 + 8))(v93, v95);
  }

  return v41;
}

uint64_t sub_2197428AC(double a1)
{
  v1 = sub_219BED214();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v8 = qword_280F61728;
  v9 = sub_219BF6214();
  sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_219BF5CB4();
  v11 = v16;
  v12 = v17;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_2186FC3BC();
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_219BE5314("Waiting %{public}@ for task interaction to be processed", 55, 2, &dword_2186C1000, v8, v9, v10);

  sub_219BED1F4();
  sub_219BED244();
  v13 = *(v2 + 8);
  v13(v4, v1);
  v14 = sub_219BE2E14();
  v13(v7, v1);
  return v14;
}

uint64_t sub_219742AEC(uint64_t a1)
{
  v2 = sub_219BE4D74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277D34A60], v2, v4);
  v7 = sub_219BE4D34();
  if (v8)
  {
    sub_2189D66A4(v7, v8, a1, v6);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_219742BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, void (*a8)(void, void, void), double a9)
{
  v73 = a6;
  v74 = a8;
  v69 = a7;
  v70 = a3;
  v71 = a4;
  v72 = a5;
  v12 = sub_219BE49D4();
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE4D74();
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E82C8(0, &qword_27CC1E9A8, MEMORY[0x277D34A58], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v60 - v19;
  v21 = sub_219BE4D54();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v66 = v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v60 - v25;
  swift_beginAccess();
  sub_218FDC6E0(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_219744368(v20, &qword_27CC1E9A8, MEMORY[0x277D34A58]);
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v27 = qword_280F61728;
    v28 = sub_219BF6214();
    sub_219BE5314("Finished running tasks", 22, 2, &dword_2186C1000, v27, v28, MEMORY[0x277D84F90]);
    sub_2189D69A0();
    sub_2197445A0(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    v62 = a1;
    v63 = a2;
    v61 = v22;
    v30 = *(v22 + 32);
    v60[1] = v22 + 32;
    v60[0] = v30;
    v30(v26, v20, v21);
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v31 = qword_280F61728;
    v32 = sub_219BF6214();
    sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C09BA0;
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_219BF7484();
    v34 = v75;
    v35 = v76;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = sub_2186FC3BC();
    *(v33 + 32) = v34;
    *(v33 + 40) = v35;
    sub_219BE5314("Found next task %{public}@", 26, 2, &dword_2186C1000, v31, v32, v33);

    v37 = v64;
    v36 = v65;
    (*(v64 + 104))(v17, *MEMORY[0x277D34A68], v65);
    v38 = sub_219BE4D34();
    v40 = v63;
    if (v39)
    {
      sub_2189D66A4(v38, v39, v63, v17);
    }

    (*(v37 + 8))(v17, v36);
    sub_219BE4D44();
    sub_21993873C(v70, v71, v72, v73, v69, v74);
    (*(v67 + 8))(v14, v68);
    v41 = swift_allocObject();
    *(v41 + 16) = a9;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_2197446E0;
    *(v42 + 24) = v41;
    v43 = sub_219BE2E54();
    sub_219BE2F64();

    v44 = v61;
    v45 = v66;
    (*(v61 + 16))(v66, v26, v21);
    v46 = (*(v44 + 80) + 24) & ~*(v44 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v40;
    (v60[0])(v47 + v46, v45, v21);
    v48 = swift_allocObject();
    *(v48 + 16) = sub_2197446D4;
    *(v48 + 24) = v47;

    v49 = sub_219BE2E54();
    v68 = sub_219BE2F74();

    v66 = sub_219BE1C44();
    v50 = swift_allocObject();
    *(v50 + 16) = v62;
    *(v50 + 24) = v40;
    v51 = v70;
    v52 = v71;
    *(v50 + 32) = v70;
    *(v50 + 40) = v52;
    v67 = v21;
    v53 = v73;
    *(v50 + 48) = v72;
    *(v50 + 56) = v53;
    v54 = v69;
    v69 = v26;
    v55 = v74;
    *(v50 + 64) = v54;
    *(v50 + 72) = v55;
    *(v50 + 80) = a9;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_2197446D8;
    *(v56 + 24) = v50;
    v57 = (v51 & 0x7FFFFFFFFFFFFFFFLL);

    swift_unknownObjectRetain();

    v58 = v66;
    v59 = sub_219BE2F64();

    (*(v44 + 8))(v69, v67);
    return v59;
  }
}

uint64_t sub_219743400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_219BE49C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE4D04();
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277D34888])
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v10 = qword_280F61728;
    v11 = sub_219BF6214();
    sub_219BE5314("Executing back command ", 23, 2, &dword_2186C1000, v10, v11, MEMORY[0x277D84F90]);
    swift_getObjectType();
    sub_2197445A0(0, &qword_280EE3930, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBE8]);
    sub_219BEA9A4();
    sub_219BE70A4();
    if (v4)
    {
    }

    sub_2197445A0(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v12 = sub_219BE30B4();
LABEL_11:
    v15 = v12;
    (*(v6 + 8))(v8, v5);
    return v15;
  }

  if (v9 == *MEMORY[0x277D34890])
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v13 = qword_280F61728;
    v14 = sub_219BF6214();
    sub_219BE5314("On the today feed, no need to go back ", 38, 2, &dword_2186C1000, v13, v14, MEMORY[0x277D84F90]);
    sub_2197445A0(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v12 = sub_219BE3014();
    goto LABEL_11;
  }

  result = sub_219BF78E4();
  __break(1u);
  return result;
}

uint64_t sub_219743734(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED174();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED1D4();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BED214();
  v23 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);

  v18 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v19 = *(v11 + 8);
  v19(v13, v10);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2187A913C;
  *(v20 + 24) = v17;
  aBlock[4] = sub_219744360;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_44_1;
  v21 = _Block_copy(aBlock);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E330(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2186E82C8(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD420](v16, v9, v6, v21);
  _Block_release(v21);

  (*(v26 + 8))(v6, v4);
  (*(v24 + 8))(v9, v25);
  return (v19)(v16, v23);
}

uint64_t sub_219743B34(uint64_t (*a1)(double))
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v2 = qword_280F61728;
  v3 = sub_219BF6214();
  v4 = sub_219BE5314("Completing Step", 15, 2, &dword_2186C1000, v2, v3, MEMORY[0x277D84F90]);
  return a1(v4);
}

id sub_219743BD0(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v4 = sub_219BE4E64();
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v24 = qword_280F61728;
    v25 = sub_219BF6214();
    sub_219BE5314("No assertions to validate", 25, 2, &dword_2186C1000, v24, v25, MEMORY[0x277D84F90]);
    return 0;
  }

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v7 = qword_280F61728;
  LODWORD(v37) = sub_219BF6214();
  sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v40 = v8;
  v9 = swift_allocObject();
  v38 = xmmword_219C09BA0;
  *(v9 + 16) = xmmword_219C09BA0;
  v42 = *(a1 + 16);
  v10 = v42;
  v11 = sub_219BF7894();
  v13 = v12;
  *(v9 + 56) = MEMORY[0x277D837D0];
  v39 = sub_2186FC3BC();
  *(v9 + 64) = v39;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  sub_219BE5314("Found %{public}@ assertions to validate", 39, 2, &dword_2186C1000, v7, v37, v9);

  if (!v10)
  {
    return 0;
  }

  v36 = *(v44 + 16);
  v37 = (v44 + 8);
  v14 = a1 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
  v44 += 16;
  v35 = *(v44 + 56);
  while (1)
  {
    v36(v6, v14, v4);
    v15 = sub_219BF6214();
    v16 = swift_allocObject();
    *(v16 + 16) = v38;
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_219BF7484();
    v17 = v42;
    v18 = v43;
    v19 = v39;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = v19;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    sub_219BE5314("Validating assertion %{public}@", 31, 2, &dword_2186C1000, v7, v15, v16);

    v20 = sub_21923F204(v41);
    if (v2)
    {
      return (*v37)(v6, v4);
    }

    v21 = v20;
    v22 = sub_219BF6214();
    if ((v21 & 1) == 0)
    {
      break;
    }

    v23 = sub_219BE5314("Assertion Passed", 16, 2, &dword_2186C1000, v7, v22, MEMORY[0x277D84F90]);
    (*v37)(v6, v4, v23);
    v14 += v35;
    if (!--v10)
    {
      return 0;
    }
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v38;
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_219BF7484();
  v28 = v42;
  v29 = v43;
  v30 = v39;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = v30;
  *(v27 + 32) = v28;
  *(v27 + 40) = v29;
  sub_219BE5314("Assertion failed validation %{public}@", 38, 2, &dword_2186C1000, v7, v22, v27);

  v42 = 0;
  v43 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000011, 0x8000000219D33230);
  sub_219BF7484();
  v31 = objc_allocWithZone(MEMORY[0x277D6D138]);
  v32 = sub_219BF53D4();

  v33 = [v31 initWithMessage_];

  (*v37)(v6, v4);
  return v33;
}

uint64_t sub_2197440F4()
{
  (*(v0 + 16))();
  v1 = sub_218E9B5CC();

  return v1;
}

uint64_t sub_219744134(uint64_t *a1)
{
  v3 = *(sub_219BE4D24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_219741114(a1, v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2197441D8(uint64_t *a1)
{
  v3 = *(sub_219BE4D24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_219741EE4(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2197442A4(uint64_t a1)
{
  v3 = *(sub_219BE4D24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_219743400(a1, v1 + v4, *v5, v5[1]);
}

uint64_t sub_219744368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186E82C8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_55Tm()
{
  v1 = sub_219BE4D54();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2197444AC()
{
  sub_219BE4D54();
  v1 = *(v0 + 16);

  return sub_219742AEC(v1);
}

uint64_t objectdestroy_61Tm_0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_2197445A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for PersonalizationScriptTestCase.Errors(uint64_t a1)
{
  result = qword_27CC1E9C0;
  if (!qword_27CC1E9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219744660(uint64_t a1)
{
  result = sub_219BE4CC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_219744700(uint64_t a1)
{
  v23 = *(a1 + 16);
  if (!v23)
  {
    return;
  }

  v1 = 0;
  v22 = a1 + 32;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    v3 = *(v22 + 8 * v1);
    v4 = v3 >> 62;
    if (v3 >> 62)
    {
      v5 = sub_219BF7214();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v2 >> 62;
    if (v2 >> 62)
    {
      v21 = sub_219BF7214();
      v8 = v21 + v5;
      if (__OFADD__(v21, v5))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v7 + v5;
      if (__OFADD__(v7, v5))
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v6)
      {
        v9 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v8 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_219BF7214();
      goto LABEL_15;
    }

    if (v6)
    {
      goto LABEL_14;
    }

LABEL_15:
    v2 = sub_219BF7364();
    v9 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v4)
    {
      break;
    }

    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v11 >> 1) - v10) < v5)
    {
      goto LABEL_35;
    }

    v26 = v2;
    v13 = v9 + 8 * v10 + 32;
    v24 = v5;
    if (v4)
    {
      if (v12 < 1)
      {
        goto LABEL_37;
      }

      sub_2187E7248(0);
      sub_21962C1F4();
      for (i = 0; i != v12; ++i)
      {
        v15 = sub_218A352D0(v25, i, v3);
        v17 = *v16;
        swift_unknownObjectRetain();
        (v15)(v25, 0);
        *(v13 + 8 * i) = v17;
      }
    }

    else
    {
      sub_218731D50();
      swift_arrayInitWithCopy();
    }

    v2 = v26;
    if (v24 >= 1)
    {
      v18 = *(v9 + 16);
      v19 = __OFADD__(v18, v24);
      v20 = v18 + v24;
      if (v19)
      {
        goto LABEL_36;
      }

      *(v9 + 16) = v20;
    }

LABEL_4:
    if (++v1 == v23)
    {
      return;
    }
  }

  v12 = sub_219BF7214();
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v5 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_219744990(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
  sub_21870F424(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  v4 = [a2 articleListID];
  v5 = sub_219BF5414();
  v7 = v6;

  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v8 = sub_219BF27C4();

  return v8;
}

void sub_219744A88(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (!v1)
  {
    v2 = MEMORY[0x277D84F90];
LABEL_5:
    sub_219744700(v2);

    sub_21870F424(0, &qword_280EE6F90, &_s4FeedVN_0, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
    return;
  }

  v2 = sub_21947D59C(*(*a1 + 16), 0);
  v3 = sub_2194B7E44();

  sub_21892DE98(v4);
  if (v3 == v1)
  {
    goto LABEL_5;
  }

  __break(1u);
}

double sub_219744BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 16);
  v14 = objc_allocWithZone(MEMORY[0x277D30F58]);

  v15 = v13;

  v16 = sub_219BF53D4();

  v17 = [v14 initWithContext:v15 issueListID:v16];

  [v17 setPurpose_];
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = sub_2189EB59C;
  v18[5] = v12;
  v21[4] = sub_219744E50;
  v21[5] = v18;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_218FF8F6C;
  v21[3] = &block_descriptor_163;
  v19 = _Block_copy(v21);

  [v17 setFetchCompletionHandler_];
  _Block_release(v19);
  sub_219BE1F84();
  sub_219BE1F54();
  sub_219BE1F64();

  return result;
}

void sub_219744DA8(uint64_t a1, id a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v6 = a2;
    v7 = a2;
    v8 = v6;
  }

  else
  {
    if (a1)
    {
      a5();
      return;
    }

    sub_2189EEC00();
    v8 = swift_allocError();
    v6 = v8;
    *v9 = 2;
  }

  a3(v8);
}

id sub_219744E90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = [*a1 locationServicesAvailable];
  v5 = result ^ 1;
  if (v3 == 2)
  {
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

void sub_219744EE8(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  if (!a2)
  {
    if (a1 && ([a1 respondsToSelector_] & 1) != 0)
    {
      v16 = [a1 locationSharingUpsellConfig];
      v17 = [v16 landingPageArticleID];
      if (v17)
      {
        v18 = v17;
        sub_219BF5414();

        if (qword_27CC08638 != -1)
        {
          swift_once();
        }

        v19 = sub_219BE5434();
        __swift_project_value_buffer(v19, qword_27CCD8BB8);
        v20 = sub_219BE5414();
        v21 = sub_219BF6214();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_2186C1000, v20, v21, "Routing to location sharing landing page...", v22, 2u);
          MEMORY[0x21CECF960](v22, -1, -1);
        }

        __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
        sub_219BE43C4();

LABEL_22:
        sub_219BE1D04();

        return;
      }
    }

    else
    {
      v16 = 0;
    }

    if (qword_27CC08638 != -1)
    {
      swift_once();
    }

    v23 = sub_219BE5434();
    __swift_project_value_buffer(v23, qword_27CCD8BB8);
    v24 = sub_219BE5414();
    v25 = sub_219BF6214();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2186C1000, v24, v25, "LocationSharingDetectionManager: undefined landingPageArticleID. Skipping routing to landing page.", v26, 2u);
      MEMORY[0x21CECF960](v26, -1, -1);
    }

    goto LABEL_22;
  }

  v7 = a2;
  if (qword_27CC08638 != -1)
  {
    swift_once();
  }

  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_27CCD8BB8);
  v9 = a2;
  v10 = sub_219BE5414();
  v11 = sub_219BF61F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = a2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2186C1000, v10, v11, "showLocationSharingScreen: failed to fetch configuration with error: %@", v12, 0xCu);
    sub_218962D30(v13);
    MEMORY[0x21CECF960](v13, -1, -1);
    MEMORY[0x21CECF960](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2197452C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219745318()
{
  sub_218755F2C(0);
  sub_219BE3204();
  v0 = sub_219BE2E54();
  v1 = sub_219BE2F74();

  return v1;
}

void (*sub_2197453A8())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_weakInit();
  return sub_2197457B8;
}

void sub_219745404(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE2864();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_218CF7A74(0, &qword_280E8C090, MEMORY[0x277D84560]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09EC0;
    sub_219BE2834();
    sub_219BE2854();
    aBlock[0] = v11;
    sub_21878FA74(&qword_280EE73C0, 255, MEMORY[0x277D6CD38], MEMORY[0x277D6CD40]);
    sub_218CF7A74(0, &unk_280E8F5C0, MEMORY[0x277D83940]);
    sub_21881CB9C();
    sub_219BF7164();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;

    sub_219BE1D24();

    (*(v6 + 8))(v8, v5);
    v13 = *(v10 + 56);
    v14 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2197457F0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218C1CBB4;
    aBlock[3] = &block_descriptor_164;
    v15 = _Block_copy(aBlock);

    [v13 fetchConfigurationIfNeededWithCompletion_];
    _Block_release(v15);
  }

  else
  {
    v16 = sub_219BE8B44();
    sub_21878FA74(&qword_27CC127C0, 255, MEMORY[0x277D6E190], MEMORY[0x277D6E198]);
    v17 = swift_allocError();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D6E188], v16);
    a1(v17, 1);
  }
}

uint64_t sub_2197457F8(uint64_t a1)
{
  if (qword_280EE5FC8 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  __swift_project_value_buffer(v1, qword_280F62670);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "RevokeNotificationHandler received notification in foreground", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  MEMORY[0x28223BE20](v5);
  sub_219BE2C84();
  sub_219BE3204();
  v6 = sub_219BE2E54();
  type metadata accessor for UNNotificationPresentationOptions(0);
  v7 = sub_219BE2F64();

  return v7;
}

uint64_t sub_219745984(int a1, id a2)
{
  v2 = [a2 request];
  v3 = [v2 content];

  v4 = [v3 userInfo];
  v5 = sub_219BF5214();

  v6 = sub_219745A54(v5);

  return v6;
}

uint64_t sub_219745A54(uint64_t a1)
{
  v42 = *v1;
  v3 = sub_219BE2C84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280EE5FC8 != -1)
  {
    swift_once();
  }

  v10 = sub_219BE5434();
  __swift_project_value_buffer(v10, qword_280F62670);
  v11 = sub_219BE5414();
  v12 = sub_219BF6214();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v41 = v7;
    v14 = v4;
    v15 = v3;
    v16 = v13;
    *v13 = 0;
    _os_log_impl(&dword_2186C1000, v11, v12, "RevokeNotificationHandler received notification", v13, 2u);
    v17 = v16;
    v3 = v15;
    v4 = v14;
    MEMORY[0x21CECF960](v17, -1, -1);
  }

  sub_219656878(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v41 = v6;
    v19 = *v9;
    v18 = v9[1];
    v21 = v9[2];
    v20 = v9[3];

    v22 = sub_219BE5414();
    v23 = sub_219BF6214();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v40 = v3;
      v25 = v24;
      v26 = swift_slowAlloc();
      v39 = v19;
      v27 = v26;
      v43 = v26;
      *v25 = 136315138;

      v28 = sub_2186D1058(v21, v20, &v43);

      *(v25 + 4) = v28;
      _os_log_impl(&dword_2186C1000, v22, v23, "RevokeNotificationHandler targeting removal of notification with backendID: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v29 = v27;
      v19 = v39;
      MEMORY[0x21CECF960](v29, -1, -1);
      v30 = v25;
      v3 = v40;
      MEMORY[0x21CECF960](v30, -1, -1);
    }

    sub_2197469A4(0, &qword_280E8F2E0, type metadata accessor for UserNotification, MEMORY[0x277D83940]);
    sub_219BE3204();
    v31 = swift_allocObject();
    v31[2] = v19;
    v31[3] = v18;
    v31[4] = v21;
    v31[5] = v20;
    v32 = sub_219BE2E54();
    sub_219BE2F94();

    v6 = v41;
  }

  else
  {
    sub_219746A90(v9, type metadata accessor for UserNotification.Kind);
    v32 = sub_219BE5414();
    v33 = sub_219BF61F4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v6;
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2186C1000, v32, v33, "RevokeNotificationHandler cannot handle this type of notification.", v35, 2u);
      v36 = v35;
      v6 = v34;
      MEMORY[0x21CECF960](v36, -1, -1);
    }
  }

  (*(v4 + 104))(v6, *MEMORY[0x277D6CE80], v3);
  sub_2197469A4(0, &unk_280EE6BA0, MEMORY[0x277D6CE90], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219745F60()
{
  sub_2197469A4(0, &qword_27CC10F60, type metadata accessor for UNNotificationPresentationOptions, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_219745FE0(unint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = a5;
  v9 = type metadata accessor for UserNotification.ArticleData(0);
  MEMORY[0x28223BE20](v9 - 8);
  v79 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  v87 = type metadata accessor for UserNotification.Kind(0);
  v14 = MEMORY[0x28223BE20](v87);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v89 = MEMORY[0x277D84FA0];
  if (v17 >> 62)
  {
    v18 = sub_219BF7214();
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_45:
    v71 = MEMORY[0x277D84FA0];
LABEL_46:
    v72 = a2[5];
    v73 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v72);
    v74 = *(v71 + 16);
    if (v74)
    {
      v75 = sub_21947D1C0(*(v71 + 16), 0);
      v76 = sub_2194ABD64(&v88, v75 + 4, v74, v71);
      sub_21892DE98(v88);
      if (v76 == v74)
      {
LABEL_50:
        (*(v73 + 80))(v75, v72, v73);

        return;
      }

      __break(1u);
    }

    v75 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_45;
  }

LABEL_3:
  if (v18 >= 1)
  {
    v77 = a2;
    v19 = 0;
    v86 = v17 & 0xC000000000000001;
    v14.n128_u64[0] = 136315138;
    v80 = v14;
    v78 = a6;
    v82 = v16;
    v83 = v13;
    v81 = v17;
    v84 = v18;
    while (1)
    {
      if (v86)
      {
        v22 = MEMORY[0x21CECE0F0](v19, v17);
      }

      else
      {
        v22 = *(v17 + 8 * v19 + 32);
      }

      v23 = v22;
      sub_219746A28(v22 + OBJC_IVAR____TtC7NewsUI216UserNotification_kind, v16, type metadata accessor for UserNotification.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_2187ACC2C(0);
          v26 = &v16[*(v25 + 48)];
          v28 = *v26;
          v27 = v26[1];
          if (qword_280EE5FC8 != -1)
          {
            swift_once();
          }

          v29 = sub_219BE5434();
          __swift_project_value_buffer(v29, qword_280F62670);

          v30 = sub_219BE5414();
          v31 = sub_219BF6214();

          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v88 = v33;
            *v32 = v80.n128_u32[0];
            *(v32 + 4) = sub_2186D1058(v28, v27, &v88);
            _os_log_impl(&dword_2186C1000, v30, v31, "RevokeNotificationHandler found delivered url notification with id: %s", v32, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v33);
            v34 = v33;
            a6 = v78;
            MEMORY[0x21CECF960](v34, -1, -1);
            v35 = v32;
            v13 = v83;
            MEMORY[0x21CECF960](v35, -1, -1);
          }

          if (v28 == v85 && v27 == a6)
          {

            v16 = v82;
            goto LABEL_26;
          }

          v46 = sub_219BF78F4();

          v16 = v82;
          if (v46)
          {
LABEL_26:
            v47 = v23;
            v48 = sub_219BE5414();
            v49 = sub_219BF6214();

            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v88 = v51;
              *v50 = v80.n128_u32[0];
              v52 = *&v47[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
              v53 = *&v47[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier + 8];

              v54 = sub_2186D1058(v52, v53, &v88);
              v13 = v83;

              *(v50 + 4) = v54;
              v16 = v82;
              _os_log_impl(&dword_2186C1000, v48, v49, "RevokeNotificationHandler found a matching url notification. Will remove: %s", v50, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v51);
              MEMORY[0x21CECF960](v51, -1, -1);
              MEMORY[0x21CECF960](v50, -1, -1);
            }

            v18 = v84;
            v56 = *&v47[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
            v55 = *&v47[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier + 8];

            sub_219497B60(&v88, v56, v55);
          }

          else
          {

            v18 = v84;
          }

          v57 = sub_219BDB954();
          (*(*(v57 - 8) + 8))(v16, v57);
LABEL_41:
          v17 = v81;
          goto LABEL_7;
        }

        v20 = type metadata accessor for UserNotification.Kind;
        v21 = v16;
      }

      else
      {
        sub_218A7A74C(v16, v13);
        if (qword_280EE5FC8 != -1)
        {
          swift_once();
        }

        v36 = sub_219BE5434();
        __swift_project_value_buffer(v36, qword_280F62670);
        v37 = v13;
        v38 = v79;
        sub_219746A28(v37, v79, type metadata accessor for UserNotification.ArticleData);
        v39 = sub_219BE5414();
        v40 = sub_219BF6214();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v88 = v42;
          *v41 = v80.n128_u32[0];
          v43 = v38;
          if (*(v38 + 24))
          {
            v44 = *(v38 + 16);
            v45 = *(v38 + 24);
          }

          else
          {
            v45 = 0xE300000000000000;
            v44 = 7104878;
          }

          sub_219746A90(v43, type metadata accessor for UserNotification.ArticleData);
          v58 = sub_2186D1058(v44, v45, &v88);

          *(v41 + 4) = v58;
          _os_log_impl(&dword_2186C1000, v39, v40, "RevokeNotificationHandler found delivered article notification with backendID: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          MEMORY[0x21CECF960](v42, -1, -1);
          MEMORY[0x21CECF960](v41, -1, -1);

          a6 = v78;
          v17 = v81;
          v16 = v82;
        }

        else
        {

          sub_219746A90(v38, type metadata accessor for UserNotification.ArticleData);
        }

        v13 = v83;
        v18 = v84;
        v59 = *(v83 + 3);
        if (v59 && (*(v83 + 2) == v85 && v59 == a6 || (sub_219BF78F4() & 1) != 0))
        {
          v60 = v23;
          v61 = sub_219BE5414();
          v62 = sub_219BF6214();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v88 = v64;
            *v63 = v80.n128_u32[0];
            v65 = *&v60[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
            v66 = *&v60[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier + 8];

            v67 = sub_2186D1058(v65, v66, &v88);
            v13 = v83;

            *(v63 + 4) = v67;
            v16 = v82;
            _os_log_impl(&dword_2186C1000, v61, v62, "RevokeNotificationHandler found a matching article notification. Will remove: %s", v63, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v64);
            v68 = v64;
            v18 = v84;
            MEMORY[0x21CECF960](v68, -1, -1);
            MEMORY[0x21CECF960](v63, -1, -1);
          }

          v70 = *&v60[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
          v69 = *&v60[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier + 8];

          sub_219497B60(&v88, v70, v69);

          sub_219746A90(v13, type metadata accessor for UserNotification.ArticleData);
          goto LABEL_41;
        }

        v20 = type metadata accessor for UserNotification.ArticleData;
        v21 = v13;
      }

      sub_219746A90(v21, v20);
LABEL_7:
      if (v18 == ++v19)
      {
        v71 = v89;
        a2 = v77;
        goto LABEL_46;
      }
    }
  }

  __break(1u);
}

uint64_t sub_219746948()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 64))(v1, v2);
}

void sub_2197469A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219746A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219746A90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_219746AF0(void *a1, void *a2, uint64_t a3)
{
  v58 = a3;
  v64 = a1;
  sub_2197481B8(0, &qword_280E8FE00, MEMORY[0x277D34450]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v56 - v6;
  v8 = sub_219BF4574();
  v59 = *(v8 - 1);
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  v57 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197481B8(0, &unk_280EE4470, MEMORY[0x277D6E658]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v56 - v11);
  v13 = sub_219BE92E4();
  v61 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v19 = sub_219BE9EC4();
  v62 = *(v19 - 8);
  v63 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  v65 = result;
  if (result)
  {
    v23 = sub_219747B14(a2);
    if (v23)
    {
      v24 = v23;
      v25 = [v65 presentedViewController];
      if (v25)
      {
        v26 = v25;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          return 0;
        }
      }

      v66[0] = v24;
      v67 = 2;
      v30 = v24;
      v31 = sub_218CF86B0(v64, v66);
      sub_2189A4E34(v66);
      v64 = v31;
      if (v31)
      {
        LODWORD(v57) = *MEMORY[0x277D6E528];
        v32 = v57;
        v33 = sub_219BE92D4();
        v60 = v30;
        v34 = v33;
        v35 = *(v33 - 8);
        v36 = *(v35 + 104);
        v58 = v35 + 104;
        v36(v18, v32, v33);
        v37 = *MEMORY[0x277D6E518];
        v59 = v12;
        v38 = *(v61 + 104);
        v38(v18, v37, v13);
        v36(v15, v57, v34);
        v38(v15, v37, v13);
        sub_219BE9EB4();
        v39 = sub_219BE94F4();
        v40 = v59;
        (*(*(v39 - 8) + 56))(v59, 1, 1, v39);
        v41 = v64;
        sub_21909BA64(v64, v21, v40);

        sub_21974828C(v40, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v62 + 8))(v21, v63);
      }

      else
      {
      }

      return 0;
    }

    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_219748154();
    sub_219748564(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
    sub_219BEA794();
    sub_219BE1E14();

    if (!v69)
    {

      sub_21974828C(&v68, &qword_27CC1E9D0, sub_219748154);
      return 0;
    }

    sub_2186CB1F0(&v68, v66);
    sub_21974820C(v58, v7);
    v28 = v59;
    v27 = v60;
    if (v59[6](v7, 1, v60) == 1)
    {
      sub_21974828C(v7, &qword_280E8FE00, MEMORY[0x277D34450]);
      v29 = 1;
    }

    else
    {
      v42 = v57;
      v28[4](v57, v7, v27);
      v43 = sub_219BF4554();
      v29 = [objc_opt_self() effectWithStyle_];
      (v28[1])(v42, v27);
    }

    __swift_project_boxed_opaque_existential_1(v66, v66[3]);
    if (v29 == 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = v29;
    }

    *&v68 = v44;
    sub_2190AB1E0(v29);
    sub_219B7EBC0(a2, &v68);
    v46 = v45;

    v47 = v65;
    v48 = [v65 traitCollection];
    v49 = [v48 verticalSizeClass];

    v50 = [v47 traitCollection];
    v51 = [v50 horizontalSizeClass];

    if (v49 == 1)
    {
      if ((v51 - 1) <= 1)
      {
LABEL_22:
        v52 = [objc_opt_self() currentDevice];
        v53 = [v52 userInterfaceIdiom];

        if (v53 == 1)
        {
          v54 = 2;
        }

        else
        {
          v54 = 5;
        }

        goto LABEL_27;
      }
    }

    else if (v49 == 2 && v51 == 1)
    {
      goto LABEL_22;
    }

    v54 = 2;
LABEL_27:
    v55 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    [v55 setModalInPresentation_];
    [v55 setModalPresentationStyle_];

    sub_2190AAF44(v29);
    __swift_destroy_boxed_opaque_existential_1(v66);
    return v55;
  }

  return result;
}

void sub_2197472E8(void *a1, uint64_t *a2)
{
  v71 = a1;
  v4 = sub_219BE9CF4();
  v70 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE9D24();
  v69 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2197481B8(0, &unk_280EE4470, MEMORY[0x277D6E658]);
  MEMORY[0x28223BE20](v10 - 8);
  v68 = &v62 - v11;
  v12 = sub_219BE92E4();
  v64 = *(v12 - 8);
  v65 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = sub_219BE9EC4();
  v66 = *(v18 - 8);
  v67 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219747B14(a2);
  if (v21)
  {
    v22 = v21;
    v23 = v2[7];
    Strong = swift_unknownObjectWeakLoadStrong();
    v25 = v71;
    if (Strong)
    {
      v26 = Strong;
      v27 = [Strong presentedViewController];

      if (v27)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          return;
        }
      }
    }

    v72[0] = v22;
    v73 = 2;
    v49 = v22;
    v50 = sub_218CF86B0(v25, v72);
    sub_2189A4E34(v72);
    if (v50)
    {
      v51 = *MEMORY[0x277D6E528];
      v52 = sub_219BE92D4();
      v71 = v49;
      v53 = v52;
      v54 = *(*(v52 - 8) + 104);
      v70 = v23;
      v54(v17, v51, v52);
      v55 = *MEMORY[0x277D6E518];
      v63 = v20;
      v56 = v65;
      v69 = v50;
      v57 = *(v64 + 104);
      v57(v17, v55, v65);
      v54(v14, v51, v53);
      v57(v14, v55, v56);
      v58 = v63;
      sub_219BE9EB4();
      v59 = sub_219BE94F4();
      v60 = v68;
      (*(*(v59 - 8) + 56))(v68, 1, 1, v59);
      v61 = v69;
      sub_21909BA64(v69, v58, v60);

      sub_21974828C(v60, &unk_280EE4470, MEMORY[0x277D6E658]);
      v66[1](v58, v67);
    }

    else
    {
    }
  }

  else
  {
    v66 = v9;
    v67 = v6;
    v28 = v7;
    v68 = v4;
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    sub_219748154();
    sub_219748564(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
    sub_219BEA794();
    sub_219BE1E14();

    if (v75)
    {
      sub_2186CB1F0(&v74, v72);
      __swift_project_boxed_opaque_existential_1(v72, v72[3]);
      *&v74 = 0;
      sub_219B7EBC0(a2, &v74);
      v30 = v29;

      v31 = sub_219BED0C4();
      [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
      v32 = *a2;
      v33 = a2[1];
      v34 = v28;
      if (v31)
      {
        if (a2[2])
        {
          v35 = [swift_unknownObjectRetain() identifier];
          sub_219BF5414();

          sub_218B083E8(v32, v33, 1);
        }

        else
        {
        }

        v37 = v69;
        v38 = v70;
        v40 = v66;
        v39 = v67;
        sub_219BE9D54();
        v41 = sub_219BE9CE4();
        (v37[13])(v40, *MEMORY[0x277D6E8D0], v34);
        sub_219BE9D14();
        (*(v38 + 104))(v39, *MEMORY[0x277D6E8C8], v68);
        sub_219BE9D04();
        v42 = v41;
        [v42 setModalPresentationStyle_];
      }

      else
      {
        if (a2[2])
        {
          v36 = [swift_unknownObjectRetain() identifier];
          sub_219BF5414();

          sub_218B083E8(v32, v33, 1);
        }

        else
        {
        }

        v44 = v66;
        v43 = v67;
        v45 = v69;
        sub_219BE9D54();
        v46 = sub_219BE9CE4();
        sub_219BE9D34();
        (v45[13])(v44, *MEMORY[0x277D6E8D0], v28);
        sub_219BE9D14();
        (*(v70 + 104))(v43, *MEMORY[0x277D6E8C8], v68);
        sub_219BE9D04();
        v47 = v46;
        [v47 setModalPresentationStyle_];
        v48 = sub_219BEA784();
        v48(v47);
      }

      __swift_destroy_boxed_opaque_existential_1(v72);
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_219747B14(void *a1)
{
  v2 = v1;
  v4 = sub_219BF2624();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1D74();
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF1584();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219748564(0, &unk_27CC0C6E0, sub_2186F1804, &type metadata for PuzzleOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - v15;
  if (*(a1 + 16) == 1)
  {
    v35 = v11;
    v36 = v13;
    v17 = *a1;
    v37 = a1[1];
    v18 = objc_opt_self();
    LODWORD(v18) = [v18 isTagAllowedInContentStoreFront_];
    swift_unknownObjectRelease();
    if (!v18)
    {
      __swift_project_boxed_opaque_existential_1((v2 + 128), *(v2 + 152));
      if (qword_27CC08A08 != -1)
      {
        swift_once();
      }

      v19 = qword_27CCD9048;
      goto LABEL_10;
    }

    if ([v17 isDeprecated])
    {
      __swift_project_boxed_opaque_existential_1((v2 + 128), *(v2 + 152));
      if (qword_27CC08A10 != -1)
      {
        swift_once();
      }

      v19 = qword_27CCD9060;
LABEL_10:
      __swift_project_value_buffer(v10, v19);
      v20 = sub_219BF4994();
      sub_218B083E8(v17, v37, 1);
      return v20;
    }

    sub_218B083E8(v17, v37, 1);
    v11 = v35;
    v13 = v36;
  }

  sub_219BF1B74();
  if ((v11[6])(v16, 1, v10) == 1)
  {
    return 0;
  }

  (v11[4])(v13, v16, v10);
  if ([*(v2 + 168) useOfflineMode])
  {
    if (sub_2197482E8(a1, v2))
    {
      (v11[1])(v13, v10);
      return 0;
    }

    v28 = *(v2 + 152);
    v27 = *(v2 + 160);
    v36 = v13;
    v37 = v27;
    v35 = __swift_project_boxed_opaque_existential_1((v2 + 128), v28);
    v29 = v38;
    (*(v38 + 104))(v9, *MEMORY[0x277D335F0], v7);
    v31 = v39;
    v30 = v40;
    (*(v39 + 104))(v6, *MEMORY[0x277D33990], v40);
    v32 = sub_219BF4984();
    (*(v31 + 8))(v6, v30);
    (*(v29 + 8))(v9, v7);
    (v11[1])(v36, v10);
    return v32;
  }

  v22 = v13;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2197485CC();
  result = sub_219BE1E24();
  if (result)
  {
    v23 = result;
    v25 = *a1;
    v24 = a1[1];
    if (a1[2])
    {
      v26 = [swift_unknownObjectRetain() identifier];
      sub_219BF5414();

      sub_218B083E8(v25, v24, 1);
    }

    else
    {
    }

    v33 = sub_219BF53D4();

    v34 = [v23 isPuzzleDownloadedEnoughToUse_];

    if (v34)
    {
      (v11[1])(v22, v10);
      swift_unknownObjectRelease();
      return 0;
    }

    __swift_project_boxed_opaque_existential_1((v2 + 128), *(v2 + 152));
    v32 = sub_219BF4994();
    swift_unknownObjectRelease();
    (v11[1])(v22, v10);
    return v32;
  }

  __break(1u);
  return result;
}

unint64_t sub_219748154()
{
  result = qword_280ED81C8[0];
  if (!qword_280ED81C8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280ED81C8);
  }

  return result;
}

void sub_2197481B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21974820C(uint64_t a1, uint64_t a2)
{
  sub_2197481B8(0, &qword_280E8FE00, MEMORY[0x277D34450]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21974828C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2197481B8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2197482E8(uint64_t a1, void *a2)
{
  v4 = sub_219BF2CB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_219BF2634();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = a2[64];
  v18 = a2[65];
  __swift_project_boxed_opaque_existential_1(a2 + 61, v14);
  *v7 = v12;
  if (v13)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D33BA8], v4);
    sub_218CC4CD0(v12, v11, 1);
    swift_unknownObjectRetain();
    sub_219BF4794();
    (*(v5 + 8))(v7, v4);
    v15 = sub_219BF2614();
    v16.n128_f64[0] = sub_218B083E8(v12, v11, 1);
  }

  else
  {
    v7[1] = v11;
    (*(v5 + 104))(v7, *MEMORY[0x277D33B80], v4);

    sub_219BF4794();
    (*(v5 + 8))(v7, v4);
    v15 = sub_219BF2614();
  }

  (*(v8 + 8))(v10, v19, v16);
  return v15 & 1;
}

void sub_219748564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2197485CC()
{
  result = qword_280E8DD18;
  if (!qword_280E8DD18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8DD18);
  }

  return result;
}

uint64_t ShareLinkContextProvider.__allocating_init(context:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t sub_219748700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[2] = a2;
  sub_2197489C0(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219748A1C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v18[1] = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + 32;
    v12 = MEMORY[0x277D84F90];
    do
    {
      sub_21896FC94(v11, v20);
      sub_21896FC94(v20, &v19);
      sub_218DB6840();
      sub_219BE5FB4();
      sub_218C113E0(v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2191FB130(0, v12[2] + 1, 1, v12);
      }

      v14 = v12[2];
      v13 = v12[3];
      if (v14 >= v13 >> 1)
      {
        v12 = sub_2191FB130((v13 > 1), v14 + 1, 1, v12);
      }

      v12[2] = v14 + 1;
      (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7, v4);
      v11 += 176;
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = sub_219748ACC(&qword_27CC1E9E0, MEMORY[0x277D6D408]);
  v16 = sub_219748ACC(&qword_27CC1E9E8, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v12, v4, v15, v16);
  sub_218DB6788();
  sub_218DB6840();
  return sub_219BE6924();
}

void sub_2197489C0(uint64_t a1)
{
  if (!qword_27CC162E8)
  {
    sub_218DB6840();
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC162E8);
    }
  }
}

void sub_219748A1C(uint64_t a1)
{
  if (!qword_27CC1E9D8)
  {
    sub_2197489C0(255);
    sub_219748ACC(&qword_27CC1E9E0, MEMORY[0x277D6D408]);
    sub_219748ACC(&qword_27CC1E9E8, MEMORY[0x277D6D3F8]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E9D8);
    }
  }
}

uint64_t sub_219748ACC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2197489C0(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219748B40(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BDEE04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF3B14();
  (*(v5 + 16))(v7, a1, v4);
  v8 = sub_2192057B8(v7);
  if (v8)
  {
    MEMORY[0x28223BE20](v8);
    v18[-4] = v2;
    v18[-3] = v9;
    v18[-2] = a1;
    sub_21974A2EC(0, &qword_280EE6918, sub_2189EB4C0);
    swift_allocObject();
    v10 = sub_219BE30B4();

    return v10;
  }

  else
  {
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    v12 = qword_280F617A8;
    v13 = sub_219BF61F4();
    sub_2186F20D4(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    v15 = sub_219BDEDA4();
    v17 = v16;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2186FC3BC();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_219BE5314("Failed to compose a thumbnail image request for Article ID : %{public}@", 71, 2, &dword_2186C1000, v12, v13, v14);

    v18[1] = 0;
    sub_21974A2EC(0, &qword_280EE6918, sub_2189EB4C0);
    swift_allocObject();
    return sub_219BE3014();
  }
}

id sub_219748DC4(void **a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  LODWORD(v124) = a5;
  v120 = a4;
  v123 = sub_219BDBD64();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDEE04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContinueReadingEligibility(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_2189EAD9C();
    v53 = swift_allocError();
    *v54 = 0;
    *v15 = v53;
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_21974A2EC(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility);
    swift_allocObject();
    return sub_219BE3014();
  }

  v18 = Strong;
  v117 = v13;
  v118 = v15;
  v109 = v5;
  v19 = v12;
  v20 = v10;
  v21 = *(v10 + 16);
  v115 = v19;
  v116 = a3;
  v108 = v10 + 16;
  v107 = v21;
  v21(v19, a3, v9);
  v22 = *(v18 + 344);
  v119 = v18;
  __swift_project_boxed_opaque_existential_1((v18 + 320), v22);
  v23 = v16;
  v24 = sub_219B7D048();
  v25 = sub_219BDEDF4();
  v26 = [v25 articleID];
  v114 = sub_219BF5414();
  v113 = v27;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  v30 = sub_219BDB5E4();
  v112 = v16;
  v31 = v120;
  v111 = v30;
  v110 = v32;

  v33 = sub_2189DC6FC(v25, 0);
  v35 = v34;
  v36 = v121;
  sub_219BDBD54();
  v37 = sub_219BDBD44();
  v39 = v38;
  (*(v122 + 8))(v36, v123);
  v40 = *(v20 + 8);
  v123 = v9;
  v40(v115, v9);
  LOBYTE(v20) = v124 & 1;
  LOBYTE(v125) = v124 & 1;
  *&v130 = v114;
  *(&v130 + 1) = v113;
  *&v131 = v25;
  BYTE8(v131) = 0;
  *(&v131 + 9) = v128;
  HIDWORD(v131) = *(&v128 + 3);
  *&v132 = v111;
  *(&v132 + 1) = v110;
  *&v133 = v33;
  *(&v133 + 1) = v35;
  *&v134 = v31;
  BYTE8(v134) = v124 & 1;
  *(&v134 + 9) = v126;
  HIDWORD(v134) = *(&v126 + 3);
  *&v135 = v37;
  *(&v135 + 1) = v39;
  *&v136 = v112;
  *(&v136 + 1) = v24;
  v137 = 0;
  sub_219BDC8D4();
  sub_2189EB258(v31, v20);
  sub_219BDC8B4();
  if (qword_280EE93F0 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  if (v128)
  {
    v41 = MEMORY[0x277D837D0];
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    v42 = qword_280F617A8;
    sub_2186F20D4(0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_219C09BA0;
    v44 = sub_219BDEDA4();
    v46 = v45;
    *(v43 + 56) = v41;
    *(v43 + 64) = sub_2186FC3BC();
    *(v43 + 32) = v44;
    *(v43 + 40) = v46;
    v47 = sub_219BF6214();
    sub_219BE5314("Forcing eligibility for Article ID : %{public}@", 47, 2, &dword_2186C1000, v42, v47, v43);

    v48 = v135;
    v49 = v118;
    *(v118 + 4) = v134;
    *(v49 + 5) = v48;
    *(v49 + 6) = v136;
    *(v49 + 112) = v137;
    v50 = v131;
    *v49 = v130;
    *(v49 + 1) = v50;
    v51 = v133;
    *(v49 + 2) = v132;
    *(v49 + 3) = v51;
    swift_storeEnumTagMultiPayload();
    sub_21974A2EC(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility);
    swift_allocObject();
    v52 = sub_219BE3014();
    goto LABEL_18;
  }

  v56 = v119;
  v57 = *(v119 + 112);
  sub_2189D2C8C(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_219C09BA0;
  v59 = v57;
  v60 = v116;
  *(v58 + 32) = sub_219BDEDA4();
  *(v58 + 40) = v61;
  v62 = sub_219BF5904();

  v63 = [v59 historyItemsForArticleIDs_];

  sub_219525A88();
  v64 = sub_219BF5924();

  if (v64 >> 62)
  {
    result = sub_219BF7214();
  }

  else
  {
    result = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = v118;
  v66 = v123;
  if (!result)
  {

    v107(v65, v60, v66);
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_21974A2EC(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility);
    swift_allocObject();
    v52 = sub_219BE3014();
    sub_2189EB304(&v130);
LABEL_18:

    return v52;
  }

  if ((v64 & 0xC000000000000001) != 0)
  {
    v67 = MEMORY[0x21CECE0F0](0, v64);
  }

  else
  {
    if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v67 = *(v64 + 32);
    swift_unknownObjectRetain();
  }

  if ([v67 hasArticleCompletedReading] || objc_msgSend(v67, sel_hasArticleBeenMarkedOffensive) || objc_msgSend(v67, sel_articleLikingStatus) == 2)
  {
    v107(v65, v60, v66);
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_21974A2EC(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility);
    swift_allocObject();
    v52 = sub_219BE3014();
    sub_2189EB304(&v130);

LABEL_22:
    swift_unknownObjectRelease();
    return v52;
  }

  v68 = sub_219BDEDF4();
  v69 = *(v56 + 128);
  swift_unknownObjectRetain();
  v70 = [v68 isPaid];
  if ([v68 respondsToSelector_])
  {
    v71 = [v68 isBundlePaid];
  }

  else
  {
    v71 = 0;
  }

  v72 = [v68 sourceChannel];
  if (v72)
  {
    v73 = [v72 identifier];
    swift_unknownObjectRelease();
    v122 = sub_219BF5414();
    v75 = v74;
  }

  else
  {
    v122 = 0;
    v75 = 0;
  }

  if (v70)
  {
    v76 = [v69 purchaseProvider];
    if (v75)
    {
      v77 = [v76 purchasedTagIDs];
      v78 = sub_219BF5D44();

      LOBYTE(v77) = sub_2188537B8(v122, v75, v78);

      swift_unknownObjectRelease();
      if (v77)
      {

        swift_unknownObjectRelease();
        goto LABEL_62;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    if (!v71)
    {
      swift_unknownObjectRelease();

LABEL_66:
      v107(v118, v116, v123);
      type metadata accessor for ContinueReadingIneligibilityReason(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_21974A2EC(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility);
      swift_allocObject();
      v52 = sub_219BE3014();
      sub_2189EB304(&v130);

      swift_unknownObjectRelease();
      goto LABEL_22;
    }
  }

  else if ((v71 & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_62;
  }

  if (!v75)
  {
    swift_unknownObjectRelease();
    goto LABEL_66;
  }

  v79 = [objc_msgSend(v69 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v79, v79 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v127 = 0u;
    v126 = 0u;
  }

  v129 = v127;
  v128 = v126;
  v124 = v68;
  if (!*(&v127 + 1))
  {
    sub_218806FD0(&v128);
    goto LABEL_49;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_49:
    v80 = 0;
    v82 = 0;
    goto LABEL_50;
  }

  v80 = v125;
  v81 = [v125 integerValue];
  if (v81 == -1)
  {

    goto LABEL_61;
  }

  v82 = v81;
LABEL_50:
  if (objc_getAssociatedObject(v79, ~v82))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v127 = 0u;
    v126 = 0u;
  }

  v129 = v127;
  v128 = v126;
  if (!*(&v127 + 1))
  {
    sub_218806FD0(&v128);
LABEL_58:

    if (v82)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_58;
  }

  v83 = v125;
  v84 = [v83 integerValue];

  if (((v84 ^ v82) & 1) == 0)
  {
LABEL_59:

    swift_unknownObjectRelease();
    goto LABEL_66;
  }

LABEL_61:
  v85 = [objc_msgSend(v69 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v86 = [v85 bundleChannelIDs];

  v87 = sub_219BF53D4();
  v88 = [v86 containsObject_];

  swift_unknownObjectRelease();
  v68 = v124;
  if ((v88 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_62:
  v124 = v68;
  v89 = [v68 sourceChannel];
  v90 = v119;
  v91 = v116;
  v92 = v123;
  if (!v89)
  {
    goto LABEL_71;
  }

  v93 = [v89 identifier];
  swift_unknownObjectRelease();
  v94 = sub_219BF5414();
  v96 = v95;

  result = [*(v90 + 120) mutedTagIDs];
  if (!result)
  {
    goto LABEL_76;
  }

  v97 = result;
  v98 = sub_219BF5D44();

  LOBYTE(v97) = sub_2188537B8(v94, v96, v98);

  if (v97)
  {

    v107(v118, v91, v92);
    type metadata accessor for ContinueReadingIneligibilityReason(0);
LABEL_70:
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_21974A2EC(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility);
    swift_allocObject();
    v52 = sub_219BE3014();
    sub_2189EB304(&v130);
LABEL_72:

    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  result = [*(v90 + 120) ignoredTagIDs];
  if (result)
  {
    v99 = result;
    v100 = sub_219BF5D44();

    v101 = sub_2188537B8(v94, v96, v100);

    if (v101)
    {
      v107(v118, v91, v92);
      type metadata accessor for ContinueReadingIneligibilityReason(0);
      goto LABEL_70;
    }

LABEL_71:
    v102 = v135;
    v103 = v118;
    *(v118 + 4) = v134;
    *(v103 + 5) = v102;
    *(v103 + 6) = v136;
    *(v103 + 112) = v137;
    v104 = v131;
    *v103 = v130;
    *(v103 + 1) = v104;
    v105 = v133;
    *(v103 + 2) = v132;
    *(v103 + 3) = v105;
    swift_storeEnumTagMultiPayload();
    sub_21974A2EC(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility);
    swift_allocObject();
    v52 = sub_219BE3014();
    goto LABEL_72;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_21974A068(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  v22 = a4;
  v21 = a3;
  v5 = sub_219BDEE04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  swift_unknownObjectRetain();
  sub_219BDEDE4();
  v23 = a2;
  v24 = v11;
  sub_2189EB4C0(0);
  sub_219BE3204();
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v8, v11, v5);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v6 + 32))(v14 + v13, v8, v5);
  v15 = v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 = v21;
  *v15 = v21;
  v17 = v22 & 1;
  *(v15 + 8) = v22 & 1;
  sub_2189EB258(v16, v17);
  v18 = sub_219BE2E54();
  type metadata accessor for ContinueReadingEligibility(0);
  v19 = sub_219BE2F64();

  (*(v6 + 8))(v11, v5);
  return v19;
}

void sub_21974A2EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BE3114();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21974A340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_219BDEE04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = a5[20];
  v21[2] = a5[21];
  v21[1] = __swift_project_boxed_opaque_existential_1(a5 + 17, v16);
  v22[3] = sub_219BF3B14();
  v22[4] = sub_21974A888();
  v22[0] = a6;
  (*(v13 + 16))(v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v19 = (v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_218846958;
  v19[1] = v15;

  sub_219BE6254();

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

void sub_21974A528(void *a1, id a2, uint64_t a3, void (*a4)(void *))
{
  if (a1)
  {
    v6 = qword_280E8D8F0;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = qword_280F617A8;
    sub_2186F20D4(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C09BA0;
    v10 = sub_219BDEDA4();
    v12 = v11;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_2186FC3BC();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v13 = sub_219BF6214();
    sub_219BE5314("Successfully retrieved thumbnail image for Article ID : %{public}@", 66, 2, &dword_2186C1000, v8, v13, v9);

    v30 = v7;
    a4(a1);
  }

  else
  {
    if (a2)
    {
      v15 = a2;
      if (qword_280E8D8F0 != -1)
      {
        swift_once();
      }

      v16 = qword_280F617A8;
      v17 = sub_219BF61F4();
      sub_2186F20D4(0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_219C09EC0;
      v19 = sub_219BDEDA4();
      v21 = v20;
      v22 = MEMORY[0x277D837D0];
      *(v18 + 56) = MEMORY[0x277D837D0];
      v23 = sub_2186FC3BC();
      *(v18 + 64) = v23;
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
      sub_219BF7484();
      *(v18 + 96) = v22;
      *(v18 + 104) = v23;
      *(v18 + 72) = 0;
      *(v18 + 80) = 0xE000000000000000;
      sub_219BE5314("Error retrieving the thumbnail image for Article ID (%{public}@) : %{public}@", 77, 2, &dword_2186C1000, v16, v17, v18);
    }

    else
    {
      if (qword_280E8D8F0 != -1)
      {
        swift_once();
      }

      v24 = qword_280F617A8;
      sub_2186F20D4(0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_219C09BA0;
      v26 = sub_219BDEDA4();
      v28 = v27;
      *(v25 + 56) = MEMORY[0x277D837D0];
      *(v25 + 64) = sub_2186FC3BC();
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      v29 = sub_219BF6214();
      sub_219BE5314("Failed to retrieve a thumbnail image for Article ID : %{public}@", 64, 2, &dword_2186C1000, v24, v29, v25);
    }

    a4(0);
  }
}

unint64_t sub_21974A888()
{
  result = qword_280E90020;
  if (!qword_280E90020)
  {
    sub_219BF3B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90020);
  }

  return result;
}

void sub_21974A8E0(void *a1, void *a2)
{
  v5 = *(sub_219BDEE04() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_21974A528(a1, a2, v2 + v6, v7);
}

uint64_t sub_21974AB14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SportsDetailModel(319);
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_21974AC0C()
{
  v1 = v0;
  v2 = type metadata accessor for SportsDetailModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_218A3A494(v0 + *(*v0 + 136), v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2191BBAA0(v4);
  if (EnumCaseMultiPayload == 1)
  {
    v7 = (v1 + *(*v1 + 128));
    v8 = v7[3];
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v9 + 40))(v8, v9);
  }

  type metadata accessor for SportsManagementDetailPrewarmResult(0);
  sub_219BE3204();
  sub_2187D9028();
  v10 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  v11 = sub_219BE2E54();
  sub_218AB5E74();
  sub_219BE2F94();

  v12 = sub_219BF66A4();
  sub_219BE2FE4();
}

uint64_t sub_21974AED8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = type metadata accessor for SportsDetailModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (*(*(v3 + 88) + 40))(a1, *(v3 + 80), v7);
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_218A3A494(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      sub_218FA8DDC(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
      swift_unknownObjectRetain();
      sub_219BE3494();

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v15[1] = v8;
  sub_218CE6068(0);
  sub_21974BA20(&unk_27CC1EAD0, sub_218CE6068, MEMORY[0x277D6D890]);
  v13 = sub_219BE6E84();

  return v13;
}

uint64_t sub_21974B100@<X0>(BOOL *a2@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v4 = result;
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
  }

  *a2 = v4 == 0;
  return result;
}

uint64_t sub_21974B1BC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_21974B274(uint64_t a1)
{
  v2 = *v1;
  sub_219BE6EC4();
  v3 = sub_218982970();

  if ((v3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = *(v2 + 80);
  *(v6 + 24) = *(v2 + 88);
  *(v6 + 32) = v5;
  *(v6 + 40) = HIBYTE(v3) & 1;

  sub_219BE6F24();

  return result;
}

double sub_21974B40C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((a3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(swift_allocObject() + 16) = Strong;
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21974B4F4(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_219729700(a1, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21974B590()
{
  sub_219BE3204();
  v0 = sub_219BE1C44();
  v1 = sub_219BE3034();

  return v1;
}

uint64_t sub_21974B648(uint64_t a1)
{
  v2 = type metadata accessor for SportsDetailModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A3A494(a1 + *(*a1 + 136), v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_2191BBAA0(v4);
  if (EnumCaseMultiPayload == 1)
  {
    v7 = (a1 + *(*a1 + 128));
    v8 = v7[3];
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    return (*(v9 + 48))(v8, v9);
  }

  return result;
}

uint64_t *sub_21974B744()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 128)));
  sub_2191BBAA0(v0 + *(*v0 + 136));
  return v0;
}

uint64_t sub_21974B820()
{
  sub_21974B744();

  return swift_deallocClassInstance();
}

uint64_t sub_21974B8A0()
{
  v1 = (*(v0 + *(*v0 + 120)) + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_sportsOnboardingManager);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 32))(v2, v3);
}

void sub_21974B9BC()
{
  type metadata accessor for SportsDetailModel(0);

  sub_2191BB250();
}

uint64_t sub_21974BA20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21974BA70()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_21974BAE0(void *a1)
{
  sub_2186C66AC();
  v2 = sub_219BF6F74();
  v3 = sub_219BF6214();
  sub_219BE5314("AudioSuggestionsService: will fetch candidates", 46, 2, &dword_2186C1000, v2, v3, MEMORY[0x277D84F90]);

  sub_2186E832C(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
  sub_21870F2E8(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8);
  swift_allocObject();
  sub_219BE30B4();
  __swift_project_boxed_opaque_existential_1(a1 + 11, a1[14]);
  sub_219BEFFE4();
  v4 = sub_219BE2E54();
  v5 = sub_219BE2E44();

  return v5;
}

uint64_t sub_21974BC7C(unint64_t a1, void *a2, void *a3)
{
  v6 = sub_219BEFBD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21974BF90(a1);
  v11 = v10;
  v12 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v13 = sub_21974D0A0(v11, *v12, a2);
  sub_2186C66AC();
  v27 = sub_219BF6F74();
  HIDWORD(v26) = sub_219BF6214();
  sub_2186E832C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C0B8C0;
  if (a1 >> 62)
  {
    v15 = sub_219BF7214();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277D83C10];
  *(v14 + 56) = MEMORY[0x277D83B88];
  *(v14 + 64) = v17;
  *(v14 + 32) = v15;
  if (v11 >> 62)
  {
    v18 = sub_219BF7214();
  }

  else
  {
    v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v14 + 96) = v16;
  *(v14 + 104) = v17;
  *(v14 + 72) = v18;
  if (v13 >> 62)
  {
    v19 = sub_219BF7214();
  }

  else
  {
    v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v14 + 136) = v16;
  *(v14 + 144) = v17;
  *(v14 + 112) = v19;
  v20 = v27;
  sub_219BE5314("AudioSuggestionsService: found %lu candidates, filtered to %lu, removed ignored to %lu", v26, v27, v28);

  v21 = *(v7 + 104);
  v21(v9, *MEMORY[0x277D32920], v6);
  v22 = sub_21974C380(v13, v9);
  v23 = *(v7 + 8);
  v23(v9, v6);
  v21(v9, *MEMORY[0x277D328F8], v6);
  v24 = sub_21974C380(v13, v9);

  v23(v9, v6);
  v28 = v22;
  v29 = v24;
  sub_21870F2E8(0, &qword_280EE6EE0, &type metadata for AudioSuggestions);
  swift_allocObject();
  return sub_219BE3014();
}