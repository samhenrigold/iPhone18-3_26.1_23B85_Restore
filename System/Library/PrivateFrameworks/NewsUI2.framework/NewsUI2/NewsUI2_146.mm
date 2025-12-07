uint64_t sub_219714BAC(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v3 = sub_219BE8C14();
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF4B24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDE294();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, qword_280ED9010, type metadata accessor for TodayRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v35 - v14);
  v40 = type metadata accessor for TodayRouteModel(0);
  v16 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a2;
  sub_219BF4B34();
  v18 = (*(v6 + 88))(v8, v5);
  v19 = *MEMORY[0x277D345E0];
  v37 = v3;
  if (v18 == v19)
  {
    (*(v6 + 96))(v8, v5);
    (*(v39 + 8))(v8, v3);
    goto LABEL_3;
  }

  if (v18 == *MEMORY[0x277D345D0])
  {
    v20 = MEMORY[0x277D2FEF8];
    goto LABEL_6;
  }

  if (v18 == *MEMORY[0x277D345D8])
  {
LABEL_3:
    v20 = MEMORY[0x277D2FF08];
LABEL_6:
    (*(v10 + 104))(v12, *v20, v9);
    goto LABEL_7;
  }

  (*(v10 + 104))(v12, *MEMORY[0x277D2FF08], v9);
  (*(v6 + 8))(v8, v5);
LABEL_7:
  v21 = sub_219BF4B14();
  sub_21970444C(v42, v12, v21, v22, v15);

  (*(v10 + 8))(v12, v9);
  if ((*(v16 + 48))(v15, 1, v40) == 1)
  {
    return sub_218817724(v15, qword_280ED9010, type metadata accessor for TodayRouteModel);
  }

  v24 = v38;
  sub_21880BBE4(v15, v38, type metadata accessor for TodayRouteModel);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_21880BA68(v24, type metadata accessor for TodayRouteModel);
  }

  v26 = Strong;
  v27 = v36;
  sub_219BF4B44();
  v28 = sub_219BF4B14();
  v30 = v29;
  sub_219717384(0, &qword_280EE5B40, MEMORY[0x277D33320], sub_2191FD45C, MEMORY[0x277D6D3F0]);
  v31 = sub_219BE5F84();
  v33 = v32;
  __swift_project_boxed_opaque_existential_1((v26 + 48), *(v26 + 72));
  v43 = v28;
  v44 = v30;
  v45 = v31;
  v46 = v33;
  v47 = 2;
  v34 = sub_218F19BE4(v24, v27, &v43);
  (*(v39 + 8))(v27, v37, v34);
  sub_21880BA68(v24, type metadata accessor for TodayRouteModel);
  sub_218DFAEC4(v43, v44, v45, v46, v47);
  return swift_unknownObjectRelease();
}

uint64_t sub_219715170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_219BDE294();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, qword_280ED9010, type metadata accessor for TodayRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v20 - v10);
  v12 = type metadata accessor for TodayRouteModel(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277D2FF08], v5, v14);
  sub_21970444C(a1, v8, a2, v21, v11);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_218817724(v11, qword_280ED9010, type metadata accessor for TodayRouteModel);
  }

  else
  {
    sub_21880BBE4(v11, v16, type metadata accessor for TodayRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      v18 = sub_218F1DEA0(v16);
      sub_21880BA68(v16, type metadata accessor for TodayRouteModel);
      swift_unknownObjectRelease();
      return v18;
    }

    sub_21880BA68(v16, type metadata accessor for TodayRouteModel);
  }

  return 0;
}

uint64_t sub_219715480()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_218807610();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_21971550C(uint64_t a1, uint64_t a2)
{
  (*(*((*MEMORY[0x277D85000] & *v2) + 0x58) + 48))(a1, a2, *((*MEMORY[0x277D85000] & *v2) + 0x50));
  v3 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v3, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

void sub_219715648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  sub_219BE3204();
  *(swift_allocObject() + 16) = a1;

  v5 = sub_219BE2E54();
  sub_219BE2F94();
}

uint64_t sub_21971571C()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  *v7 = sub_219BF1554();
  v7[1] = v8;
  v9 = sub_219BE5AA4();
  v10 = MEMORY[0x277D6D2E8];
  v7[5] = v9;
  v7[6] = v10;
  __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  sub_219BE5A94();
  v7[7] = sub_219BF1534();
  v7[8] = v11;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219715940(uint64_t a1, int a2)
{
  v37 = a2;
  v34 = a1;
  v2 = sub_219BEFAD4();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v30 - v5;
  v6 = type metadata accessor for TodayExpandContext(0);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE93C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  sub_219BE8674();
  v15 = *(v9 + 104);
  v15(v11, *MEMORY[0x277D6E578], v8);
  v16 = sub_219BE93B4();
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v14, v8);
  if (v16 & 1) != 0 || (sub_219BE8674(), v15(v11, *MEMORY[0x277D6E570], v8), v18 = sub_219BE93B4(), v17(v11, v8), v17(v14, v8), (v18))
  {
    sub_219BE8664();
    v19 = sub_219BE7BC4();

    v20 = sub_219BF60A4();

    if (v37)
    {
      if (v20)
      {
        v21 = sub_219BE6DF4();
        v22 = v31;
        (*(*(v21 - 8) + 56))(v31, 1, 1, v21);
        v23 = v32;
        sub_218809CC0(v22, v32);
        sub_218817724(v22, &unk_280EE56F0, MEMORY[0x277D6D878]);
        v25 = v35;
        v24 = v36;
        v26 = v33;
        (*(v35 + 104))(v33, *MEMORY[0x277D328C8], v36);
        v27 = *(v34 + 40);
        ObjectType = swift_getObjectType();
        (*(v27 + 88))(v23, v26, ObjectType, v27);
        (*(v25 + 8))(v26, v24);
        return sub_21880BA68(v23, type metadata accessor for TodayExpandContext);
      }

      goto LABEL_7;
    }

LABEL_8:
    v39 = 3;
    return sub_219BE1E74();
  }

  if ((v37 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  v38 = 2;
  return sub_219BE1E74();
}

void sub_219715DE0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(type metadata accessor for TodayExpandContext(0) - 8);
  v6 = v1[4];
  v7 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  sub_219703CC0(a1, v6, v7, v3, v4);
}

uint64_t sub_219715F24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_21970983C(a1, v4, v5, v6);
}

void sub_21971614C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
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

unint64_t sub_2197161EC()
{
  result = qword_280EC6358;
  if (!qword_280EC6358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6358);
  }

  return result;
}

uint64_t sub_219716240(uint64_t a1, uint64_t a2)
{
  sub_2187DD4F0(0, &qword_280ED2200, type metadata accessor for TodayPrewarmResult, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_77Tm_0()
{
  v1 = sub_219BEE644();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_219716558(uint64_t a1, void *a2)
{
  v5 = *(sub_219BEE644() - 8);
  v6 = *(v2 + 32);
  v7 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_2196FAE8C(a1, a2, v7, v6);
}

id sub_2197165DC(uint64_t a1)
{
  v2 = *(v1 + 16);
  swift_willThrow();
  return v2;
}

uint64_t objectdestroy_71Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_219716814(uint64_t *a1, uint64_t a2)
{
  sub_218CD34B0(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for TodayExpandContext(0) - 8);
  return sub_21939FC50(a1, a2, v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
}

uint64_t sub_219716950(uint64_t a1, void *a2)
{
  sub_218853400(0);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for TodayGapLocation(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for TodayExpandContext(0) - 8);
  return sub_2196F88B4(a1, a2, v2 + v6, v2 + v9, v2 + v10, v2 + ((v10 + *(v11 + 80) + 40) & ~*(v11 + 80)));
}

double sub_219716A9C(uint64_t a1, void *a2)
{
  sub_218853400(0);
  v6 = (*(*(v5 - 8) + 80) + 72) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for TodayGapLocation(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2196F9398(a1, a2, (v2 + 32), v2 + v6, v9);
}

uint64_t sub_219716B84()
{
  sub_219BE5384();

  return sub_2196F9624();
}

void sub_219716C10(uint64_t a1)
{
  if (!qword_280E91608)
  {
    sub_219717384(255, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
    sub_219BF0644();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E91608);
    }
  }
}

uint64_t objectdestroy_65Tm_0()
{
  v1 = (type metadata accessor for TodayExpandContext(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80));
  swift_unknownObjectRelease();
  v3 = v1[10];
  v4 = sub_219BE6DF4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_219716E84(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TodayExpandContext(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_219716FC8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_219BE9F74() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v1 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = *(v1 + v8);
  v16 = *(v1 + v9);
  v17 = *(v1 + v9 + 8);
  v18 = v1 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v19 = *v18;
  v20 = *(v18 + 8);

  sub_2196F789C(a1, v1 + v6, v16, v17, v19, v20, v3, v4, v11, v12, v13, v14, v15);
}

uint64_t sub_219717104()
{
  swift_getObjectType();
  v1 = sub_219BE3514();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D85000];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_219A1A5DC(0, MEMORY[0x277D84F90], Strong);
    swift_unknownObjectRelease();
  }

  sub_218718690(v0 + *((*v5 & *v0) + 0x110), v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  (*(v2 + 104))(v4, *MEMORY[0x277D314F8], v1);
  sub_219BE3A64();
  (*(v2 + 8))(v4, v1);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_2197172E4(uint64_t a1)
{
  sub_219717384(0, &qword_280E8D4A0, sub_21880B928, sub_2193A56A0, MEMORY[0x277D84310]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219717384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_219717404()
{
  result = qword_280EC6370;
  if (!qword_280EC6370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6370);
  }

  return result;
}

uint64_t sub_219717458(uint64_t a1, uint64_t a2)
{
  sub_2187B1B90(0, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2197174E8(char a1, char a2, id a3)
{
  if ((a1 & 1) == 0)
  {
    goto LABEL_5;
  }

  v3 = [a3 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (v5)
    {

LABEL_5:
      sub_219BE1E74();
      return;
    }

    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v6 = qword_280F616D8;
    v7 = sub_219BF6214();
    v8 = MEMORY[0x277D84F90];

    sub_219BE5314("Today feed auto refresh trigger blocked because the view does not have a window", 79, 2, &dword_2186C1000, v6, v7, v8);
  }

  else
  {
    __break(1u);
  }
}

double sub_219717640(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BE61B4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277D6D518], v2, v4);
  v7 = sub_219BE61A4();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    sub_2196F6054();
    sub_219BEE434();
  }

  return result;
}

uint64_t sub_219717780(uint64_t a1)
{
  v3 = *(type metadata accessor for EngagementPresentationFailure(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2192BA1E0(a1, v4);
}

uint64_t sub_219717850(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_21971789C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI229SportsFavoritesSyncRouteModelO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_219717938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21896FA3C(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v49 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v49 - v14;
  *&result = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = v49 - v18;
  if (a2)
  {
    if (a2 == 1)
    {
      v20 = *(a3 + 72);
      v21 = sub_219BDFA44();
      (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v56 = v20;
      sub_2187B14CC(&v57, &v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (*(&v52 + 1))
      {
        sub_21875F93C(&v51, &v53);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v23 = qword_280ED32D8;
        v22 = qword_280ED32E0;
        v24 = qword_280ED32E8;

        sub_2188202A8(v22);
        __swift_destroy_boxed_opaque_existential_1(&v53);
      }

      else
      {
        sub_2187448D0(&v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v23 = qword_280ED32D8;
        v22 = qword_280ED32E0;
        v24 = qword_280ED32E8;

        sub_2188202A8(v22);
      }

      v50 = 0xF000000000000050;
      v52 = 0u;
      v51 = 0u;
      sub_2189B4E2C(v19, v15);
      sub_2187B14CC(&v60, &v53, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v33 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v34 = (v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v34 + 47) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      sub_2189B4EAC(v15, v36 + v33);
      v37 = v36 + v34;
      v38 = v54;
      *v37 = v53;
      *(v37 + 16) = v38;
      *(v37 + 32) = v55;
      v39 = (v36 + v35);
      v40 = (v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v39 = 0;
      v39[1] = 0;
      *v40 = v23;
      v40[1] = v22;
      v40[2] = v24;

      sub_2188202A8(v22);
      sub_2186CF94C(0);
      sub_2189B4DD4();
      sub_219BEB464();

      sub_2187FABEC(v22, v24);
      sub_2187448D0(&v57, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_2187448D0(&v60, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_218A42D80(v19);
      sub_2187448D0(&v51, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
    }

    else
    {
      v25 = *(a3 + 72);
      v26 = swift_allocObject();
      *(v26 + 16) = a1;
      *(v26 + 24) = a2;
      v49[1] = v26;
      v27 = v26 | 0x9000000000000006;
      v28 = sub_219BDFA44();
      (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v56 = v25;
      sub_2187B14CC(&v57, &v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (*(&v52 + 1))
      {
        sub_21875F93C(&v51, &v53);
        v29 = qword_280ED32D0;

        if (v29 != -1)
        {
          swift_once();
        }

        v31 = qword_280ED32D8;
        v30 = qword_280ED32E0;
        v32 = qword_280ED32E8;

        sub_2188202A8(v30);
        __swift_destroy_boxed_opaque_existential_1(&v53);
      }

      else
      {

        sub_2187448D0(&v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v31 = qword_280ED32D8;
        v30 = qword_280ED32E0;
        v32 = qword_280ED32E8;

        sub_2188202A8(v30);
      }

      v50 = v27;
      v52 = 0u;
      v51 = 0u;
      sub_2189B4E2C(v12, v9);
      sub_2187B14CC(&v60, &v53, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v41 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v42 = (v8 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
      v43 = (v42 + 47) & 0xFFFFFFFFFFFFFFF8;
      v44 = swift_allocObject();
      *(v44 + 16) = 0;
      sub_2189B4EAC(v9, v44 + v41);
      v45 = v44 + v42;
      v46 = v54;
      *v45 = v53;
      *(v45 + 16) = v46;
      *(v45 + 32) = v55;
      v47 = (v44 + v43);
      v48 = (v44 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v47 = 0;
      v47[1] = 0;
      *v48 = v31;
      v48[1] = v30;
      v48[2] = v32;

      sub_2188202A8(v30);
      sub_2186CF94C(0);
      sub_2189B4DD4();
      sub_219BEB464();

      sub_2187FABEC(v30, v32);
      sub_2187448D0(&v57, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_2187448D0(&v60, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_218A42D80(v12);
      sub_2187448D0(&v51, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
    }
  }

  return result;
}

uint64_t sub_2197183DC(uint64_t a1)
{
  sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09BA0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  *(v1 + 32) = v4;
  *(v1 + 40) = v6;
  return v1;
}

uint64_t sub_219718928()
{
  v0 = sub_219BDD804();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BDE5F4();
  if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D2FAF8])
  {
    (*(v1 + 96))(v3, v0);
    v4 = *v3;
    sub_2191B3054(0);
    v6 = *(v5 + 48);
    v7 = sub_219BDDBF4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
    v8 = [v4 title];
    v9 = sub_219BF5414();
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_219BDB5E4();
  }

  return v9;
}

uint64_t sub_219718B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D83D88];
  sub_218834EB8(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = &v61 - v8;
  MEMORY[0x28223BE20](v9);
  v64 = &v61 - v10;
  v11 = sub_219BDB954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v67 = &v61 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  sub_218834EB8(0, &unk_280EE8C10, MEMORY[0x277D30048], v4);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v61 - v21;
  v23 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BDD944();
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v61 - v30;
  v66 = a1;
  sub_219719558(a1, v25, type metadata accessor for NewsActivity2.Article);
  sub_2187B2DA0(0);

  sub_218AAFD90(v25, v31, MEMORY[0x277D2FB40]);
  sub_219BDD934();
  sub_218790094(v31, MEMORY[0x277D2FB40]);
  v32 = sub_219BDE544();
  if ((*(*(v32 - 8) + 48))(v22, 1, v32) == 1)
  {
    return (*(v12 + 56))(a2, 1, 1, v11);
  }

  v68 = v11;
  v62 = a2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v35 = *(v12 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v64 = v14;
    v36 = v67;
    v35(v67, v22, v68);
    v37 = objc_opt_self();
    v38 = sub_219BDB854();
    v61 = v37;
    v39 = [v37 nss:v38 NewsURLForWebLinkURL:?];

    if (v39)
    {
      v40 = v64;
      sub_219BDB8B4();

      v41 = v68;
      (*(v12 + 8))(v36, v68);
      v42 = v65;
      v35(v65, v40, v41);
      v43 = *(v12 + 56);
      v43(v42, 0, 1, v41);
      v44 = v62;
      v35(v62, v42, v41);
      return (v43)(v44, 0, 1, v41);
    }

    else
    {
      v52 = *(v12 + 56);
      v53 = 1;
      v54 = v65;
      v55 = v68;
      v52(v65, 1, 1, v68);
      sub_219719558(v66, v25, type metadata accessor for NewsActivity2.Article);

      sub_218AAFD90(v25, v28, MEMORY[0x277D2FB40]);
      sub_219BDD8A4();
      sub_218790094(v28, MEMORY[0x277D2FB40]);
      v56 = sub_219BF53D4();

      v57 = [v61 nss:v56 NewsURLForArticleID:?];

      if (v57)
      {
        v58 = v63;
        sub_219BDB8B4();

        v53 = 0;
        v59 = v62;
      }

      else
      {
        v59 = v62;
        v58 = v63;
      }

      (*(v12 + 8))(v67, v55);
      v52(v58, v53, 1, v55);
      sub_218AB007C(v58, v59);
      result = (*(v12 + 48))(v54, 1, v55);
      if (result != 1)
      {
        return sub_218838478(v54);
      }
    }
  }

  else
  {
    v35(v19, v22, v68);
    v45 = objc_opt_self();
    sub_219719558(v66, v25, type metadata accessor for NewsActivity2.Article);

    sub_218AAFD90(v25, v28, MEMORY[0x277D2FB40]);
    sub_219BDD8C4();
    sub_218790094(v28, MEMORY[0x277D2FB40]);
    v46 = sub_219BF53D4();

    v47 = sub_219BDB854();
    v48 = [v45 nss:v46 NewsURLForArticleID:v47 routeURL:?];

    if (v48)
    {
      v49 = v64;
      sub_219BDB8B4();

      v50 = 0;
      v51 = v62;
    }

    else
    {
      v50 = 1;
      v51 = v62;
      v49 = v64;
    }

    v60 = v68;
    (*(v12 + 8))(v19, v68);
    (*(v12 + 56))(v49, v50, 1, v60);
    return sub_218AB007C(v49, v51);
  }

  return result;
}

uint64_t sub_219719338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for NewsActivitySerializer();

  return MEMORY[0x2821D46B0](a1, v5, a3);
}

uint64_t sub_21971938C()
{
  if ([v0 tagType] != 1)
  {
    return 0;
  }

  v1 = [v0 identifier];
  sub_219BF5414();

  LOBYTE(v1) = sub_219BF5624();

  return v1 & 1;
}

unint64_t sub_219719420(unint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  sub_218834EB8(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 1635017060;
  *(inited + 40) = 0xE400000000000000;
  v9 = v4;
  v6 = sub_218834F1C(&v9, a2);
  if (v2)
  {

    swift_setDeallocating();
    sub_2188317B0();
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 48) = v6;
    *(inited + 56) = v7;
    a2 = sub_218831A70(inited);
    swift_setDeallocating();
    sub_218790094(inited + 32, sub_2188317B0);
  }

  return a2;
}

uint64_t sub_219719558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2197195C0(uint64_t a1)
{
  if (!qword_27CC1E4D8)
  {
    sub_21971963C(255);
    sub_219BDDBF4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC1E4D8);
    }
  }
}

void sub_21971963C(uint64_t a1)
{
  if (!qword_27CC1E4E0)
  {
    sub_2186C6148(255, &qword_280E8DA30, 0x277D312A8);
    sub_2186CFDE4(255, &qword_280E8B580, MEMORY[0x277D84948]);
    v1 = sub_219BF5C24();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E4E0);
    }
  }
}

uint64_t sub_2197196CC(void *a1)
{
  sub_21971A0F0(0, &qword_27CC1E510, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219719FDC();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    type metadata accessor for ForYouTagFeedGroup(0);
    v9[14] = 1;
    sub_219BED8D4();
    sub_21971A154(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_219719894(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_219BED8D4();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21971A0F0(0, &qword_27CC1E500, MEMORY[0x277D844C8]);
  v20 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ForYouTagFeedGroup(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219719FDC();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = v9;
    v13 = v18;
    v12 = v19;
    v22 = 0;
    *v11 = sub_219BF76F4();
    v11[1] = v14;
    v21 = 1;
    sub_21971A154(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v8, v20);
    (*(v16 + 32))(v11 + *(v15 + 20), v5, v12);
    sub_21971A030(v11, v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_21971A094(v11);
  }
}

void sub_219719BC8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

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
}

uint64_t sub_219719CB0(uint64_t a1)
{
  v2 = sub_219719FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219719CEC(uint64_t a1)
{
  v2 = sub_219719FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219719E58(uint64_t a1)
{
  result = sub_21971A154(&unk_27CC1C610, type metadata accessor for ForYouTagFeedGroup, &unk_219C9F038);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219719EB0(void *a1)
{
  a1[1] = sub_21971A154(&qword_27CC1E4F8, type metadata accessor for ForYouTagFeedGroup, &unk_219C9EF64);
  a1[2] = sub_21971A154(&qword_27CC1C738, type metadata accessor for ForYouTagFeedGroup, &unk_219C9F010);
  result = sub_21971A154(&qword_27CC1C848, type metadata accessor for ForYouTagFeedGroup, &unk_219C9EFE8);
  a1[3] = result;
  return result;
}

uint64_t sub_219719F5C(uint64_t a1)
{
  v2 = sub_21971A154(&qword_27CC1E4F8, type metadata accessor for ForYouTagFeedGroup, &unk_219C9EF64);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_219719FDC()
{
  result = qword_27CC1E508;
  if (!qword_27CC1E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E508);
  }

  return result;
}

uint64_t sub_21971A030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouTagFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21971A094(uint64_t a1)
{
  v2 = type metadata accessor for ForYouTagFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21971A0F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219719FDC();
    v7 = a3(a1, &type metadata for ForYouTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21971A154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21971A1B0()
{
  result = qword_27CC1E518;
  if (!qword_27CC1E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E518);
  }

  return result;
}

unint64_t sub_21971A208()
{
  result = qword_27CC1E520;
  if (!qword_27CC1E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E520);
  }

  return result;
}

unint64_t sub_21971A260()
{
  result = qword_27CC1E528;
  if (!qword_27CC1E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E528);
  }

  return result;
}

uint64_t sub_21971A2B4()
{
  sub_21896FA3C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = sub_219BDFA44();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v28 = v9;
  sub_2187B14CC(v29, &v24, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v25)
  {
    sub_21875F93C(&v24, v26);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v11 = qword_280ED32E0;
    v13 = qword_280ED32E8;

    sub_2188202A8(v11);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_2187448D0(&v24, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v11 = qword_280ED32E0;
    v13 = qword_280ED32E8;

    sub_2188202A8(v11);
  }

  v23[2] = 0xF000000000000058;
  v25 = sub_219BDD274();
  *&v24 = v8;
  sub_2189B4E2C(v7, v4);
  sub_2187B14CC(v31, v26, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v14 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v15 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v23[0] = v7;
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  sub_2189B4EAC(v4, v17 + v14);
  v18 = v17 + v15;
  v19 = v26[1];
  *v18 = v26[0];
  *(v18 + 16) = v19;
  *(v18 + 32) = v27;
  v20 = (v17 + v16);
  v21 = (v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v20 = 0;
  v20[1] = 0;
  *v21 = v12;
  v21[1] = v11;
  v21[2] = v13;
  swift_retain_n();

  sub_2188202A8(v11);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v11, v13);
  sub_2187448D0(v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v23[0]);
  return sub_2187448D0(&v24, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t sub_21971A87C()
{
  v7 = type metadata accessor for TopicsSearchFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v7);
  v2 = sub_219BEF874();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2187089D4(0);
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = sub_219BEF554();
  MEMORY[0x28223BE20](v5 - 8);
  sub_218713528(0);
  sub_219BEDD44();
  sub_219BEDCA4();

  sub_219BEDCC4();
  sub_219BEDC94();
  sub_219BEDC84();
  sub_219BEDCF4();
  sub_219BEDD04();
  sub_219BEDCD4();
  sub_219BEDCE4();
  sub_219BEDD74();
  sub_219BEDD14();
  sub_21971B0F8(&qword_280EA75F8, type metadata accessor for TopicsSearchFeedGroupConfigData, &unk_219C9F268);
  sub_21971B0F8(&qword_280EA7600, type metadata accessor for TopicsSearchFeedGroupConfigData, &unk_219C9F240);
  return sub_219BEDD34();
}

uint64_t sub_21971AB40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21971B094(0, &qword_280E8CA78, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21971B040();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_21971B0F8(&qword_280E90808, MEMORY[0x277D33478], MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *(v11 + *(type metadata accessor for TopicsSearchFeedGroupConfigData(0) + 20)) = 2;
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21971ADB8(void *a1)
{
  v3 = v1;
  sub_21971B094(0, &qword_27CC1E530, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21971B040();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF1934();
  sub_21971B0F8(&qword_280E90810, MEMORY[0x277D33478], MEMORY[0x277D33480]);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for TopicsSearchFeedGroupConfigData(0) + 20));
    v11[13] = 1;
    sub_218C94574();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21971AF98(uint64_t a1)
{
  v2 = sub_21971B040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21971AFD4(uint64_t a1)
{
  v2 = sub_21971B040();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21971B040()
{
  result = qword_280EA7618[0];
  if (!qword_280EA7618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA7618);
  }

  return result;
}

void sub_21971B094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21971B040();
    v7 = a3(a1, &type metadata for TopicsSearchFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21971B0F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21971B154()
{
  result = qword_27CC1E538;
  if (!qword_27CC1E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E538);
  }

  return result;
}

unint64_t sub_21971B1AC()
{
  result = qword_280EA7608;
  if (!qword_280EA7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA7608);
  }

  return result;
}

unint64_t sub_21971B204()
{
  result = qword_280EA7610;
  if (!qword_280EA7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA7610);
  }

  return result;
}

void *sub_21971B258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218B803C4(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v7 = *(sub_219BE2644() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  v10 = (v9 + v8);
  *v10 = 12908;
  v10[1] = 0xE200000000000000;
  (*(v7 + 104))();
  sub_219897824(MEMORY[0x277D84F90]);
  v11 = sub_219BE2674();

  v3[2] = v11;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return v3;
}

uint64_t sub_21971B3D8(uint64_t a1)
{
  v2 = v1;
  sub_218B803C4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v49 = *(v4 - 8);
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  v9 = sub_219BE22B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE22F4();
  v14 = *(v13 - 8);
  *&v15 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v2 + 40) puzzlesEnabled])
  {
    v51 = sub_218FA86C8(a1);
    sub_218B803C4(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
    sub_219BE2594();
    sub_219BE22D4();
    (*(v14 + 8))(v17, v13);
    v18 = sub_219BE22C4();
    v20 = v19;
    (*(v10 + 8))(v12, v9);
    if (v20)
    {
      if (v18 == 1702195828 && v20 == 0xE400000000000000 || (sub_219BF78F4() & 1) != 0)
      {
        v21 = 1;
      }

      else
      {
        if (v18 != 0x65736C6166 || v20 != 0xE500000000000000)
        {
          sub_219BF78F4();
        }

        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v26 = v8;
    v27 = *(v2 + 24);
    v28 = swift_allocObject();
    *(v28 + 24) = 0;
    *(v28 + 32) = 0;
    v29 = v51;
    *(v28 + 16) = v51;
    *(v28 + 40) = v21;
    v30 = v28 | 0xE000000000000002;
    v31 = sub_219BDFA44();
    (*(*(v31 - 8) + 56))(v26, 1, 1, v31);
    v61 = 0;
    memset(v60, 0, sizeof(v60));
    v59 = 0;
    memset(v58, 0, sizeof(v58));
    v57 = v27;
    sub_2187B16A8(v58, &v53, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (*(&v54 + 1))
    {
      sub_21875F93C(&v53, v55);
      v32 = qword_280ED32D0;
      v33 = v29;
      if (v32 != -1)
      {
        swift_once();
      }

      v35 = qword_280ED32D8;
      v34 = qword_280ED32E0;
      v36 = qword_280ED32E8;

      sub_2188202A8(v34);
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    else
    {
      v37 = v29;
      sub_218744C30(&v53, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v35 = qword_280ED32D8;
      v34 = qword_280ED32E0;
      v36 = qword_280ED32E8;

      sub_2188202A8(v34);
    }

    v52 = v30;
    v54 = 0u;
    v53 = 0u;
    v38 = v50;
    sub_2187B16A8(v26, v50, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218B803C4);
    sub_2187B16A8(v60, v55, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v39 = (*(v49 + 80) + 24) & ~*(v49 + 80);
    v40 = (v5 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v40 + 47) & 0xFFFFFFFFFFFFFFF8;
    v49 = v26;
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    sub_2189B4EAC(v38, v42 + v39);
    v43 = v42 + v40;
    v44 = v55[1];
    *v43 = v55[0];
    *(v43 + 16) = v44;
    *(v43 + 32) = v56;
    v45 = (v42 + v41);
    v46 = (v42 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v45 = 0;
    v45[1] = 0;
    *v46 = v35;
    v46[1] = v34;
    v46[2] = v36;

    sub_2188202A8(v34);
    sub_2186CF94C(0);
    sub_21971BEAC(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB464();

    sub_2187FABEC(v34, v36);

    sub_218744C30(v58, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218744C30(v60, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218744C30(v49, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218B803C4);
    sub_218744C30(&v53, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  else
  {
    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v22 = sub_219BE5434();
    __swift_project_value_buffer(v22, qword_27CCD8BA0);
    v23 = sub_219BE5414();
    v24 = sub_219BF61F4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2186C1000, v23, v24, "Error while trying to navigate to PuzzleHub: Puzzles are not enabled.", v25, 2u);
      MEMORY[0x21CECF960](v25, -1, -1);
    }
  }

  return 1;
}

uint64_t sub_21971BEAC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_21971BEF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = sub_219BF5474();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197210B0(0, qword_280E93FD0, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v69 - v10;
  v12 = type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides(0);
  v80 = *(v12 - 8);
  v81 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TodayFeedGroupClusteringKnobOverrides(0);
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 possiblyUnfetchedAppConfiguration];
  v20 = &unk_280F61000;
  if ([v19 respondsToSelector_])
  {
    v76 = v8;
    v21 = [v19 todayFeedGroupClusteringKnobOverrides];
    swift_unknownObjectRelease();
    if (v21)
    {
      v72 = v14;
      v73 = v11;
      v75 = v18;
      v78 = a3;
      v79 = a2;
      sub_219BF5214();

      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v22 = qword_280F616D8;
      sub_2186F20D4(0);
      v24 = v23;
      v25 = swift_allocObject();
      v71 = xmmword_219C09BA0;
      *(v25 + 16) = xmmword_219C09BA0;
      v26 = sub_219BF5224();
      v28 = v27;
      *(v25 + 56) = MEMORY[0x277D837D0];
      v77 = sub_2186FC3BC();
      *(v25 + 64) = v77;
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      v29 = v22;
      v30 = sub_219BF6214();
      sub_219BE5314("Trying to decode overrides %{public}@", 37, 2, &dword_2186C1000, v22, v30, v25);

      v31 = objc_opt_self();
      v32 = sub_219BF5204();
      v83 = 0;
      v33 = [v31 dataWithJSONObject:v32 options:0 error:&v83];

      v34 = v83;
      if (v33)
      {
        v74 = v24;
        v35 = v77;

        v36 = sub_219BDBA04();
        v38 = v37;

        sub_219BDAFF4();
        swift_allocObject();
        sub_219BDAFE4();
        sub_21972141C(&qword_280E98800, type metadata accessor for TodayFeedGroupClusteringKnobOverrides, &unk_219C94638);
        v39 = v75;
        sub_219BDAFC4();
        a3 = v78;
        v69 = v36;
        v70 = v38;
        v76 = v29;

        v54 = v39;
        v55 = v73;
        sub_219721298(v39, v73, qword_280E93FD0, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
        v56 = (*(v80 + 48))(v55, 1, v81);
        a2 = v79;
        v20 = &unk_280F61000;
        if (v56 != 1)
        {
          v61 = v72;
          sub_2197211C8(v55, v72, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_219C09EC0;
          v83 = 0;
          v84 = 0xE000000000000000;
          sub_219BF7484();
          v63 = v83;
          v64 = v84;
          v65 = MEMORY[0x277D837D0];
          *(v62 + 56) = MEMORY[0x277D837D0];
          *(v62 + 64) = v35;
          *(v62 + 32) = v63;
          *(v62 + 40) = v64;
          v83 = 0;
          v84 = 0xE000000000000000;
          type metadata accessor for ChannelTodayFeedGroupKnobs(0);
          sub_219BF7484();
          v66 = v83;
          v67 = v84;
          *(v62 + 96) = v65;
          *(v62 + 104) = v35;
          *(v62 + 72) = v66;
          *(v62 + 80) = v67;
          v68 = sub_219BF6214();
          sub_219BE5314("Applying overrides %{public}@ to channel clustering knobs %{public}@", 68, 2, &dword_2186C1000, v76, v68, v62);

          sub_218CC5018(v61, a3);
          sub_2186C6190(v69, v70);
          sub_2197214EC(v61, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
          return sub_2197214EC(v54, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
        }

        sub_219721318(v55, qword_280E93FD0, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
        v57 = swift_allocObject();
        *(v57 + 16) = v71;
        v83 = 0;
        v84 = 0xE000000000000000;
        sub_219BF7484();
        v58 = v83;
        v59 = v84;
        *(v57 + 56) = MEMORY[0x277D837D0];
        *(v57 + 64) = v35;
        *(v57 + 32) = v58;
        *(v57 + 40) = v59;
        v60 = sub_219BF6214();
        sub_219BE5314("Overrides didn't specify any channel specific overrides %{public}@", 66, 2, &dword_2186C1000, v76, v60, v57);
        sub_2186C6190(v69, v70);

        sub_2197214EC(v54, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
      }

      else
      {
        v43 = v34;
        v44 = sub_219BDB724();

        swift_willThrow();
        v45 = sub_219BF61F4();
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_219C09EC0;
        v47 = sub_219BF5224();
        v49 = v48;

        v50 = MEMORY[0x277D837D0];
        v51 = v77;
        *(v46 + 56) = MEMORY[0x277D837D0];
        *(v46 + 64) = v51;
        *(v46 + 32) = v47;
        *(v46 + 40) = v49;
        v83 = 0;
        v84 = 0xE000000000000000;
        v82 = v44;
        sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
        sub_219BF7484();
        v52 = v83;
        v53 = v84;
        *(v46 + 96) = v50;
        *(v46 + 104) = v51;
        *(v46 + 72) = v52;
        *(v46 + 80) = v53;
        sub_219BE5314("Failed to serialize channel today feed group clustering overrides into JSON %{public}@. Error: %{public}@", 105, 2, &dword_2186C1000, v29, v45, v46);

        a3 = v78;
        a2 = v79;
        v20 = &unk_280F61000;
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v40 = v20[219];
  v41 = sub_219BF6214();
  sub_219BE5314("No channel group clustering knobs overrides specified", 53, 2, &dword_2186C1000, v40, v41, MEMORY[0x277D84F90]);
  return sub_219721230(a2, a3, type metadata accessor for ChannelTodayFeedGroupKnobs);
}

uint64_t sub_21971C8C0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  type metadata accessor for TodayFeedGroup(0);
  v3[6] = swift_task_alloc();
  sub_2197210B0(0, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor, MEMORY[0x277D83D88]);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v4 = sub_219BEFCC4();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for ChannelTodayFeedGroupEmitterCursor(0);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21971CA8C, 0, 0);
}

uint64_t sub_21971CA8C(uint64_t a1)
{
  sub_219BEF164();
  v2 = v1[1].i64[0];
  v1[8].i64[1] = v2;
  v3 = swift_task_alloc();
  v1[9].i64[0] = v3;
  v3[1] = vextq_s8(v1[2], v1[2], 8uLL);
  v3[2].i64[0] = v2;
  v4 = swift_task_alloc();
  v1[9].i64[1] = v4;
  *v4 = v1;
  v4[1] = sub_21971CC20;
  v5 = v1[8].i64[0];
  v6 = v1[6].i64[1];

  return MEMORY[0x282190858](v5, v6, &unk_219C9F628, v3, v6);
}

uint64_t sub_21971CC20()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_21971D3CC;
  }

  else
  {

    v2 = sub_21971CD3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21971CD3C(double a1)
{
  v2 = v1[20];
  v3 = v1[17];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[12];
  v8 = v1[8];
  v7 = v1[9];
  v9 = v1[4];
  sub_219721230(v1[16], v8, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  (*(v5 + 56))(v8, 0, 1, v4);
  sub_21971DCC4(v6, v7, v8, v3, v9);
  if (v2)
  {
    v10 = v1[16];
    v11 = v1[8];

    sub_219721318(v11, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    sub_2197214EC(v10, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);

    v12 = v1[1];

    return v12();
  }

  else
  {
    sub_219721318(v1[8], &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    v14 = swift_task_alloc();
    v1[21] = v14;
    *v14 = v1;
    v14[1] = sub_21971CF5C;
    v15 = v1[12];
    v16 = v1[4];

    return sub_21971E9F0(v16, v15);
  }
}

uint64_t sub_21971CF5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_21971D494;
  }

  else
  {
    v4 = sub_21971D070;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21971D070()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[7];
  sub_21972011C(v0[22], v0[6]);
  sub_219721298(v3, v4, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  v5 = (*(v2 + 48))(v4, 1, v1);
  v26 = v0[16];
  if (v5 == 1)
  {
    v6 = v0[11];
    v7 = v0[12];
    v9 = v0[9];
    v8 = v0[10];
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[3];

    sub_219721318(v9, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    (*(v6 + 8))(v7, v8);
    sub_2197214EC(v26, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    sub_219721318(v10, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    sub_2197211C8(v11, v12, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    v13 = v0[15];
    v14 = v0[13];
    v15 = v0[11];
    v24 = v0[10];
    v25 = v0[12];
    v23 = v0[9];
    v16 = v0[6];
    v17 = v0[3];
    sub_2197211C8(v0[7], v13, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    sub_218B8B468(0);
    v19 = (v17 + *(v18 + 48));
    sub_219721230(v16, v17, type metadata accessor for TodayFeedGroup);
    v19[3] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    sub_2197211C8(v13, boxed_opaque_existential_1, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);

    sub_2197214EC(v16, type metadata accessor for TodayFeedGroup);
    sub_219721318(v23, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    (*(v15 + 8))(v25, v24);
    sub_2197214EC(v26, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  }

  sub_21903485C(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  v21 = v0[1];

  return v21();
}

uint64_t sub_21971D3CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21971D494()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];

  sub_219721318(v5, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  (*(v3 + 8))(v2, v4);
  sub_2197214EC(v1, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21971D5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2187608D4;

  return sub_21971D66C(a1, a3, a4);
}

uint64_t sub_21971D66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v4 = sub_219BF0334();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21971D72C, 0, 0);
}

uint64_t sub_21971D72C(uint64_t a1)
{
  sub_219BE2CF4();
  v1[10] = v1[3];
  v2 = swift_task_alloc();
  v1[11] = v2;
  *v2 = v1;
  v2[1] = sub_21971D7E8;

  return MEMORY[0x2821D23D8](v1 + 2);
}

uint64_t sub_21971D7E8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_21902F254;
  }

  else
  {

    v2 = sub_21971D904;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21971D904()
{
  v0[13] = v0[2];

  sub_219BE2CF4();

  v1 = sub_219BE2E54();
  v0[14] = sub_219BE2F74();

  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_21971DA1C;
  v3 = v0[9];

  return MEMORY[0x2821D23D8](v3);
}

uint64_t sub_21971DA1C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_21902F2C0;
  }

  else
  {

    v2 = sub_21971DB38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21971DB38()
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v12 = v0[7];
  v4 = v0[5];
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  v6 = MEMORY[0x277D83B88];
  v7 = *(*(v1 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_scoredItems) + 16);
  v8 = MEMORY[0x277D83C10];
  *(v5 + 56) = MEMORY[0x277D83B88];
  *(v5 + 64) = v8;
  *(v5 + 32) = v7;
  v9 = *(sub_219BF0324() + 16);

  *(v5 + 96) = v6;
  *(v5 + 104) = v8;
  *(v5 + 72) = v9;
  sub_219BF6214();
  sub_219BE5314("Got channel group pool with %ld headlines and %ld groups", v12, v14);

  (*(v3 + 32))(v4, v2, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21971DCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v101 = a5;
  v98 = a4;
  v112 = a3;
  v97 = a2;
  v96 = a1;
  v5 = sub_219BEE6E4();
  v108 = *(v5 - 8);
  v109 = v5;
  MEMORY[0x28223BE20](v5);
  v111 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v113 = &v92 - v8;
  v9 = sub_219BEFCC4();
  v102 = *(v9 - 8);
  v103 = v9;
  MEMORY[0x28223BE20](v9);
  v100 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2197210B0(0, &unk_280E91200, MEMORY[0x277D32A38], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v92 - v16;
  sub_2197210B0(0, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor, v11);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v92 - v22;
  v24 = type metadata accessor for ChannelTodayFeedGroupEmitterCursor(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219721298(v112, v23, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_219721318(v23, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    v28 = sub_219BEEDD4();
    sub_21972141C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D323C8], v28);
    return swift_willThrow();
  }

  sub_2197211C8(v23, v27, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  sub_219BEF0A4();
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  v31 = sub_219BEDC44();

  sub_2198E40C8(v17, v20, v31);

  sub_219721298(v17, v14, &unk_280E91200, MEMORY[0x277D32A38]);
  v33 = v102;
  v32 = v103;
  if ((*(v102 + 48))(v14, 1, v103) == 1)
  {
    v34 = MEMORY[0x277D32A38];
    sub_219721318(v14, &unk_280E91200, MEMORY[0x277D32A38]);
    v35 = sub_219BEEDD4();
    sub_21972141C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D32390], v35);
    swift_willThrow();
    sub_219721318(v20, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    sub_219721318(v17, &unk_280E91200, v34);
    return sub_2197214EC(v27, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  }

  v37 = v32;
  v93 = v20;
  v94 = v27;
  v95 = v17;
  v38 = v100;
  (*(v33 + 32))(v100, v14, v37);
  v39 = sub_219BEFC74();
  v107 = *(v39 + 16);
  if (v107)
  {
    v40 = 0;
    v105 = v98 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
    v104 = v108 + 16;
    v99 = (v108 + 8);
    v110 = (v108 + 32);
    v41 = MEMORY[0x277D84F90];
    v42 = v109;
    v106 = v39;
    while (v40 < *(v39 + 16))
    {
      v112 = v41;
      v43 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v44 = *(v108 + 72);
      v38 = v113;
      v45 = (*(v108 + 16))(v113, v39 + v43 + v44 * v40, v42);
      v46 = *(v105 + 16);
      v47 = MEMORY[0x21CEC5420](v45);
      v49 = v48;
      if (*(v46 + 16) && (v50 = v47, sub_219BF7AA4(), sub_219BF5524(), v51 = sub_219BF7AE4(), v38 = (v46 + 56), v52 = -1 << *(v46 + 32), v53 = v51 & ~v52, ((*(v46 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) != 0))
      {
        v54 = ~v52;
        while (1)
        {
          v55 = (*(v46 + 48) + 16 * v53);
          v56 = *v55 == v50 && v55[1] == v49;
          if (v56 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v53 = (v53 + 1) & v54;
          if (((*(v38 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        v42 = v109;
        (*v99)(v113, v109);
        v41 = v112;
      }

      else
      {
LABEL_19:

        v57 = *v110;
        v42 = v109;
        (*v110)(v111, v113, v109);
        v41 = v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v114 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = &v114;
          sub_218C34B28(0, *(v41 + 16) + 1, 1);
          v41 = v114;
        }

        v60 = *(v41 + 16);
        v59 = *(v41 + 24);
        if (v60 >= v59 >> 1)
        {
          v38 = &v114;
          sub_218C34B28((v59 > 1), v60 + 1, 1);
          v41 = v114;
        }

        *(v41 + 16) = v60 + 1;
        v57((v41 + v43 + v60 * v44), v111, v42);
      }

      ++v40;
      v39 = v106;
      if (v40 == v107)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_39:
    v62 = sub_219BF7214();
    goto LABEL_27;
  }

  v41 = MEMORY[0x277D84F90];
LABEL_25:

  v38 = v100;
  v61 = sub_219BEFCA4();
  if (v61 >> 62)
  {
    goto LABEL_39;
  }

  v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_27:

  v63 = *(v41 + 16);
  v64 = MEMORY[0x277D83B88];
  if (v62 != v63)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v65 = qword_280F616D8;
    sub_2186F20D4(0);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_219C0B8C0;
    v67 = [sub_219BEFC94() identifier];
    swift_unknownObjectRelease();
    v68 = sub_219BF5414();
    v70 = v69;

    *(v66 + 56) = MEMORY[0x277D837D0];
    *(v66 + 64) = sub_2186FC3BC();
    *(v66 + 32) = v68;
    *(v66 + 40) = v70;
    v71 = sub_219BEFCA4();
    if (v71 >> 62)
    {
      v72 = sub_219BF7214();
    }

    else
    {
      v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = MEMORY[0x277D83B88];

    *(v66 + 96) = v64;
    v73 = MEMORY[0x277D83C10];
    *(v66 + 104) = MEMORY[0x277D83C10];
    *(v66 + 112) = v63;
    *(v66 + 72) = v72;
    *(v66 + 136) = v64;
    *(v66 + 144) = v73;
    v74 = sub_219BF6214();
    sub_219BE5314("Channel group %{public}@ filtered headlines %ld to %ld", 54, 2, &dword_2186C1000, v65, v74, v66);
  }

  v75 = sub_219BEFC84();
  v76 = [v75 minClusterSize];

  if (v63 >= v76)
  {
    sub_219BEFCB4();

    (*(v102 + 8))(v38, v103);
    sub_219721318(v95, &unk_280E91200, MEMORY[0x277D32A38]);
    sub_2197214EC(v94, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    return sub_219721388(v93, v97);
  }

  else
  {
    v77 = v64;

    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v113 = qword_280F616D8;
    v78 = sub_219BF6204();
    sub_2186F20D4(0);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_219C0B8C0;
    v80 = v100;
    v81 = [sub_219BEFC94() identifier];
    swift_unknownObjectRelease();
    v82 = sub_219BF5414();
    v84 = v83;

    *(v79 + 56) = MEMORY[0x277D837D0];
    v85 = sub_2186FC3BC();
    *(v79 + 32) = v82;
    *(v79 + 40) = v84;
    *(v79 + 96) = v77;
    *(v79 + 104) = MEMORY[0x277D83C10];
    *(v79 + 64) = v85;
    *(v79 + 72) = v63;
    v86 = sub_219BEFC84();
    v87 = [v86 minClusterSize];

    v88 = MEMORY[0x277D83ED0];
    *(v79 + 136) = MEMORY[0x277D83E88];
    *(v79 + 144) = v88;
    *(v79 + 112) = v87;
    sub_219BE5314("Channel group %{public}@ skipped because filtered headlines %ld less than min cluster size %ld", 94, 2, &dword_2186C1000, v113, v78, v79);

    v89 = v93;
    sub_21971DCC4(v96, v97, v93, v98, v101);
    v90 = v95;
    v91 = v94;
    (*(v102 + 8))(v80, v103);
    sub_219721318(v89, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    sub_219721318(v90, &unk_280E91200, MEMORY[0x277D32A38]);
    return sub_2197214EC(v91, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  }
}

uint64_t sub_21971E9F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2197210B0(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[5] = swift_task_alloc();
  sub_2197210B0(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[6] = swift_task_alloc();
  sub_2197210B0(0, &unk_280E91A10, sub_2189AE994, v4);
  v3[7] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_219BF2034();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  sub_2197210B0(0, &unk_280E8FF30, sub_218A42400, v4);
  v3[14] = swift_task_alloc();
  sub_2197210B0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v4);
  v3[15] = swift_task_alloc();
  v7 = sub_219BDBD64();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v8 = sub_219BF3C84();
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();
  v9 = sub_219BF26F4();
  v3[22] = v9;
  v3[23] = *(v9 - 8);
  v3[24] = swift_task_alloc();
  v10 = sub_219BF1364();
  v3[25] = v10;
  v3[26] = *(v10 - 8);
  v3[27] = swift_task_alloc();
  v11 = sub_219BF1214();
  v3[28] = v11;
  v3[29] = *(v11 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = type metadata accessor for ChannelTodayFeedGroupConfigData(0);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v12 = sub_219BF1934();
  v3[34] = v12;
  v3[35] = *(v12 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21971EF1C, 0, 0);
}

uint64_t sub_21971EF1C()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v82 = v0[30];
  v5 = v0[29];
  v76 = v0[31];
  v80 = v0[28];
  v73 = v0[37];
  sub_2186E12C4(0);
  sub_219BEDD14();
  (*(v2 + 16))(v73, v4, v1);
  sub_2197214EC(v4, type metadata accessor for ChannelTodayFeedGroupConfigData);
  sub_219BEF174();
  sub_219BEDD14();
  (*(v5 + 16))(v82, v3 + *(v76 + 20), v80);
  sub_2197214EC(v3, type metadata accessor for ChannelTodayFeedGroupConfigData);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v64 = v0[37];
  v6 = v0[35];
  v68 = v0[34];
  v7 = v0[29];
  v8 = v0[30];
  v66 = v0[28];
  v70 = v0[27];
  v74 = v0[25];
  v75 = v0[26];
  v77 = v0[24];
  v81 = v0[23];
  v83 = v0[22];
  v9 = qword_280F616D8;
  sub_219BEFC94();
  v63 = v9;
  sub_219BF1774();
  swift_unknownObjectRelease();

  (*(v7 + 8))(v8, v66);
  v10 = *(v6 + 8);
  v0[39] = v10;
  v0[40] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v64, v68);
  sub_219BEFC94();
  swift_getObjectType();
  sub_2194F6464(v70);
  swift_unknownObjectRelease();
  v11 = MEMORY[0x277D84560];
  sub_2197210B0(0, &qword_280E8B850, MEMORY[0x277D334E0], MEMORY[0x277D84560]);
  sub_219BF1A44();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  v13 = swift_allocBox();
  (*(v75 + 16))(v14, v70, v74);
  *v77 = v13;
  v15 = *MEMORY[0x277D33748];
  v16 = sub_219BF2124();
  (*(*(v16 - 8) + 104))(v77, v15, v16);
  (*(v81 + 104))(v77, *MEMORY[0x277D339C8], v83);
  sub_219BF1A04();
  sub_2197210B0(0, &unk_280E8B790, MEMORY[0x277D34258], v11);
  sub_219BF3E84();
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  v17 = sub_219BEFCA4();
  v18 = v0;
  if (v17 >> 62)
  {
    v58 = v17;
    v19 = sub_219BF7214();
    v17 = v58;
  }

  else
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = v12;
  if (v19)
  {
    v71 = v17;
    v86 = MEMORY[0x277D84F90];
    v20 = sub_218C34A88(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v20, v21, v22, v23, v24);
    }

    v25 = 0;
    v26 = v0[20];
    v27 = v71;
    v84 = v0;
    v78 = *MEMORY[0x277D34128];
    do
    {
      if ((v71 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x21CECE0F0](v25, v27);
      }

      else
      {
        v28 = swift_unknownObjectRetain();
      }

      v29 = v84[21];
      v30 = v84[19];
      *v29 = v28;
      (*(v26 + 104))(v29, v78, v30);
      v32 = *(v86 + 16);
      v31 = *(v86 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_218C34A88((v31 > 1), v32 + 1, 1);
        v27 = v71;
      }

      v33 = v84[21];
      v34 = v84[19];
      ++v25;
      *(v86 + 16) = v32 + 1;
      (*(v26 + 32))(v86 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v32, v33, v34);
    }

    while (v19 != v25);

    v18 = v84;
  }

  else
  {
  }

  v36 = v18[17];
  v35 = v18[18];
  v37 = v18[16];
  v61 = v18[15];
  v62 = v18[14];
  v65 = v18[7];
  v67 = v18[6];
  v38 = v18[4];
  v72 = v18[5];
  v39 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v39);
  sub_218F0BB90(v39);
  sub_219BF3E74();
  v79 = *(v38 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_formatService + 24);
  v85 = *(v38 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_formatService + 32);
  __swift_project_boxed_opaque_existential_1((v38 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_formatService), v79);
  v40 = [sub_219BEFC94() identifier];
  swift_unknownObjectRelease();
  v41 = sub_219BF5414();
  v43 = v42;

  MEMORY[0x21CECC330](v41, v43);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BDBD54();
  v44 = sub_219BDBD44();
  v46 = v45;
  (*(v36 + 8))(v35, v37);
  MEMORY[0x21CECC330](v44, v46);

  v47 = [sub_219BEFC94() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v48 = sub_219BEC004();
  v60 = *(*(v48 - 8) + 56);
  v60(v61, 1, 1, v48);
  sub_219BF1714();
  sub_2191EED30(v69);
  sub_218A42400(0);
  (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
  sub_219BF1764();

  sub_219721318(v62, &unk_280E8FF30, sub_218A42400);
  sub_219721318(v61, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  sub_2186DF210(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_219C146A0;
  *(v50 + 32) = sub_219BEFC94();
  v60(v61, 1, 1, v48);
  sub_219A95188(v39);
  sub_219A95188(v39);
  sub_219A951A0(v39);
  sub_219A951B8(v39);
  sub_219A952CC(v39);
  sub_219A952E4(v39);
  sub_219A953F8(v39);
  sub_219BF2024();
  v51 = OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_knobs;
  sub_2189AE994(0);
  v53 = v52;
  v54 = *(v52 - 8);
  (*(v54 + 16))(v65, v38 + v51, v52);
  (*(v54 + 56))(v65, 0, 1, v53);
  v55 = sub_219BF35D4();
  (*(*(v55 - 8) + 56))(v67, 1, 1, v55);
  *(v18 + 352) = 21;
  sub_21903485C(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v56 = sub_219BF2774();
  (*(*(v56 - 8) + 56))(v72, 1, 1, v56);
  *MEMORY[0x277D30BC8];
  v63;
  sub_219BF2A84();
  v57 = swift_task_alloc();
  v18[41] = v57;
  *v57 = v18;
  v57[1] = sub_21971FBA8;
  v21 = v18[13];
  v22 = v18[10];
  v20 = v18[36];
  v23 = v79;
  v24 = v85;

  return MEMORY[0x2821921B8](v20, v21, v22, v23, v24);
}

uint64_t sub_21971FBA8(uint64_t a1)
{
  v3 = *v2;
  v3[42] = v1;

  v15 = v3[39];
  v4 = v3[36];
  v5 = v3[34];
  v6 = v3[13];
  v7 = v3[12];
  v8 = v3[11];
  v9 = v3[10];
  v10 = v3[9];
  v11 = v3[8];
  if (v1)
  {
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_21971FFA4;
  }

  else
  {
    v3[43] = a1;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_21971FE28;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_21971FE28()
{
  v1 = v0[39];
  v2 = v0[38];
  v3 = v0[34];
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[43];

  return v4(v5);
}

uint64_t sub_21971FFA4()
{
  v1 = v0[39];
  v2 = v0[38];
  v3 = v0[34];
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21972011C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v12[3] = a1;
  v14 = a3;
  sub_2197210B0(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_219BEF554();
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v13 = sub_219BED8D4();
  v6 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E12C4(0);

  v9 = sub_219BEDCB4();
  v12[1] = v10;
  v12[2] = v9;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for ChannelTodayFeedGroupKnobs(0);
  sub_21903485C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  (*(v6 + 32))(v14, v8, v13);
  type metadata accessor for TodayFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219720464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_2197210B0(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219720584, 0, 0);
}

uint64_t sub_219720584()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_21903485C(0, &qword_280E91120, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D32AB8]);
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_219721318(*(v0 + 48), qword_280EDB700, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    sub_2197211C8(*(v0 + 48), *(v0 + 72), type metadata accessor for TodayFeedGroup);
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_2197214EC(v8, type metadata accessor for TodayFeedGroup);
    if (v10)
    {
      sub_219034698(*(v0 + 40), *(v0 + 24));
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 1;
LABEL_4:
  (*(*(v5 - 8) + 56))(*(v0 + 24), v6, 1, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2197207AC()
{
  v1 = OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_config;
  sub_2186E12C4(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2197214EC(v0 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_knobs, type metadata accessor for ChannelTodayFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_formatService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_personalizationService));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChannelTodayFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EB4FD0;
  if (!qword_280EB4FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219720904(uint64_t a1)
{
  sub_2186E12C4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChannelTodayFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2197209F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_21971C8C0(a1, a2);
}

uint64_t sub_219720A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187609C8;

  return sub_219720464(a1, a2, a3);
}

uint64_t sub_219720B4C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_name);

  return v1;
}

uint64_t sub_219720B8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_config;
  sub_2186E12C4(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for TodayFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219720C20@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for ChannelTodayFeedGroupKnobs(0);
  a1[4] = sub_21972141C(&unk_280EBBEE0, type metadata accessor for ChannelTodayFeedGroupKnobs, &unk_219C2C984);
  a1[5] = sub_21972141C(&qword_280EBBEF0, type metadata accessor for ChannelTodayFeedGroupKnobs, &unk_219C2C9AC);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219721230(v3 + v4, boxed_opaque_existential_1, type metadata accessor for ChannelTodayFeedGroupKnobs);
}

uint64_t sub_219720D84@<X0>(uint64_t *a2@<X8>)
{
  sub_2197210B0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E12C4(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2197214EC(inited + 32, sub_2188317B0);
  sub_2197210B0(0, &qword_280EE7960, type metadata accessor for ChannelTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_219721464();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_219720F24(uint64_t a1)
{
  sub_21972141C(&qword_280EB4FF8, type metadata accessor for ChannelTodayFeedGroupEmitter, &unk_219C9F4E8);

  return sub_219BE2324();
}

void sub_2197210B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219721114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_21971D5B4(a1, v4, v5, v6);
}

uint64_t sub_2197211C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219721230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219721298(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2197210B0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219721318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2197210B0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219721388(uint64_t a1, uint64_t a2)
{
  sub_2197210B0(0, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21972141C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219721464()
{
  result = qword_280EE7968;
  if (!qword_280EE7968)
  {
    sub_2197210B0(255, &qword_280EE7960, type metadata accessor for ChannelTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7968);
  }

  return result;
}

uint64_t sub_2197214EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_21972157C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PuzzleEmbedShowAlertMessageHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_219721630(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BF3994();
  v10[3] = v3;
  v10[4] = MEMORY[0x277D33FF8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, a1, v3);
  v5 = objc_allocWithZone(sub_219BF2224());
  v6 = sub_219BF2214();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC7NewsUI234PuzzleEmbedShowAlertMessageHandler_scriptsManager);
    v9 = Strong;
    swift_unknownObjectRetain();

    [v8 executeScript:v6 completion:0];
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_2197217BC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v4 presentViewController:a1 animated:1 completion:0];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_21972187C(void *a1)
{
  sub_219721C88(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF3704();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 body];
  v11 = sub_219BF5214();

  v12 = sub_2187A1A2C(v11);

  if (!v12)
  {
    goto LABEL_4;
  }

  sub_219BF36F4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_219721CE0(v4);
LABEL_4:
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v13 = sub_219BE5434();
    __swift_project_value_buffer(v13, qword_280F625E0);
    swift_unknownObjectRetain();
    v14 = sub_219BE5414();
    v15 = sub_219BF61F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      v18 = [a1 body];
      sub_219BF5214();

      v19 = sub_219BF5224();
      v21 = v20;

      v22 = sub_2186D1058(v19, v21, &v26);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_2186C1000, v14, v15, "PuzzleEmbedShowAlertMessageHandler received invalid message %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x21CECF960](v17, -1, -1);
      MEMORY[0x21CECF960](v16, -1, -1);
    }

    return;
  }

  (*(v6 + 32))(v9, v4, v5);
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v23 = sub_219BF4844();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_2197217BC(v23, Strong);
    swift_unknownObjectRelease();
  }

  (*(v6 + 8))(v9, v5);
}

void sub_219721C88(uint64_t a1)
{
  if (!qword_27CC1E560)
  {
    sub_219BF3704();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E560);
    }
  }
}

uint64_t sub_219721CE0(uint64_t a1)
{
  sub_219721C88(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PuzzleListTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EB7688;
  if (!qword_280EB7688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219721DB8(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    sub_2186F9548();
    if (v2 <= 0x3F)
    {
      sub_2186F95C4();
      if (v3 <= 0x3F)
      {
        sub_219723040(319, &qword_280E91680, sub_219721E88);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_219721E88(uint64_t a1)
{
  if (!qword_280E91688)
  {
    sub_219BF2934();
    v1 = MEMORY[0x277D33A28];
    sub_21877CCF0(&qword_280E90338, MEMORY[0x277D33A28], MEMORY[0x277D33A48]);
    sub_21877CCF0(&unk_280E90348, v1, MEMORY[0x277D33A30]);
    sub_21877CCF0(&qword_280E90340, v1, MEMORY[0x277D33A38]);
    v2 = sub_219BEF284();
    if (!v3)
    {
      atomic_store(v2, &qword_280E91688);
    }
  }
}

uint64_t sub_219721F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a3;
  v31 = a5;
  v29 = a4;
  sub_219723040(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  sub_2189AD5C8(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v13);
  v19 = *(v16 + 48);
  if (v19(v13, 1, v15) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    v28 = a7;
    sub_21877CCF0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    a7 = v28;
    sub_219BEE974();
    if (v19(v13, 1, v15) != 1)
    {
      sub_2189ADEC8(v13);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v13, v15);
  }

  (*(v16 + 32))(a7, v18, v15);
  v20 = v31;
  if (a2)
  {
    v21 = a2;
  }

  else
  {
    v32 = 2;
    sub_2186F9548();
    swift_allocObject();
    v21 = sub_219BEF534();
  }

  v22 = v30;
  v23 = type metadata accessor for PuzzleListTagFeedGroupKnobs(0);
  *(a7 + v23[5]) = v21;
  if (v22)
  {

    v24 = v22;
  }

  else
  {
    v32 = 6;
    sub_2186F9548();
    swift_allocObject();

    v24 = sub_219BEF534();
  }

  *(a7 + v23[6]) = v24;
  v25 = v29;
  if (v29)
  {
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_2186F95C4();
    swift_allocObject();

    v25 = sub_219BEF534();
  }

  *(a7 + v23[7]) = v25;
  if (!v20)
  {
    LOBYTE(v32) = 0;
    sub_2186F95C4();
    swift_allocObject();
    v20 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a7 + v23[8]) = v20;
  *(a7 + v23[9]) = a6;
  return result;
}

uint64_t sub_21972236C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  sub_2189AD5C8(0);
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PuzzleListTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219723040(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v43 - v11;
  sub_21972314C(0, &qword_280E8CC98, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219723094();
  v17 = v60;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = 0;
  v48 = v14;
  v49 = v7;
  v50 = a1;
  v45 = v5;
  LOBYTE(v66) = 0;
  sub_21877CCF0(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
  v19 = v54;
  v20 = v58;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v65) = 1;
  v21 = MEMORY[0x277D32620];
  sub_21877CCF0(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
  sub_219BF7674();
  v60 = v66;
  LOBYTE(v64) = 2;
  sub_219BF7674();
  v53 = v65;
  sub_2186F95C4();
  LOBYTE(v63) = 3;
  sub_21877CCF0(&qword_280E913F8, sub_2186F95C4, v21);
  sub_219BF7674();
  v51 = v64;
  LOBYTE(v62) = 4;
  sub_219BF7674();
  v52 = v63;
  sub_219721E88(0);
  LOBYTE(v61) = 5;
  sub_21877CCF0(&qword_280E91690, sub_219721E88, MEMORY[0x277D32518]);
  sub_219BF7674();
  v46 = v62;
  v22 = v59;
  sub_2189ADE64(v19, v59);
  v23 = *(v57 + 48);
  v24 = v23(v22, 1, v20);
  v44 = v13;
  v25 = v19;
  v26 = v16;
  if (v24 != 1)
  {
    v32 = v57;
    v28 = v58;
    v27 = v55;
    (*(v57 + 32))(v55, v59, v58);
    v30 = v45;
    goto LABEL_7;
  }

  type metadata accessor for TagFeedServiceConfig(0);
  sub_21877CCF0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  v27 = v55;
  sub_219BEE974();
  v28 = v58;
  v29 = v23(v59, 1, v58);
  v30 = v45;
  v31 = v28;
  v32 = v57;
  if (v29 != 1)
  {
    sub_2189ADEC8(v59);
LABEL_7:
    v31 = v28;
  }

  v33 = v26;
  v34 = v44;
  v35 = v49;
  (*(v32 + 32))(v49, v27, v31);
  if (v60)
  {
    v36 = v60;
  }

  else
  {
    v61 = 2;
    swift_allocObject();
    v36 = sub_219BEF534();
  }

  v37 = v56;
  *(v35 + v30[5]) = v36;
  v38 = v52;
  v39 = v53;
  if (v53)
  {

    v40 = v39;
  }

  else
  {
    v61 = 6;
    swift_allocObject();

    v40 = sub_219BEF534();
    v38 = v52;
  }

  v41 = v48;
  *(v35 + v30[6]) = v40;
  if (v51)
  {

    v42 = v51;
  }

  else
  {
    LOBYTE(v61) = 0;
    swift_allocObject();

    v42 = sub_219BEF534();
    v38 = v52;
  }

  *(v35 + v30[7]) = v42;
  if (!v38)
  {
    LOBYTE(v61) = 0;
    swift_allocObject();
    v38 = sub_219BEF534();
  }

  sub_2189ADEC8(v25);
  (*(v41 + 8))(v33, v34);
  *(v35 + v30[8]) = v38;
  *(v35 + v30[9]) = v46;
  sub_2197230E8(v35, v37);
  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_219722AFC(void *a1)
{
  v3 = v1;
  sub_21972314C(0, &qword_27CC1E570, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219723094();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8(0);
  sub_21877CCF0(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for PuzzleListTagFeedGroupKnobs(0);
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_2186F9548();
    sub_21877CCF0(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186F95C4();
    sub_21877CCF0(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_219721E88(0);
    sub_21877CCF0(&qword_27CC1E578, sub_219721E88, MEMORY[0x277D32508]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_219722E98()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0xD000000000000011;
  if (v1 == 4)
  {
    v3 = 0x54646574696D696CLL;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000018;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_219722F6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219723468(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219722F94(uint64_t a1)
{
  v2 = sub_219723094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219722FD0(uint64_t a1)
{
  v2 = sub_219723094();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_219723040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_219723094()
{
  result = qword_280EB76B8[0];
  if (!qword_280EB76B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB76B8);
  }

  return result;
}

uint64_t sub_2197230E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleListTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21972314C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219723094();
    v7 = a3(a1, &type metadata for PuzzleListTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2197231B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TagFeedServiceConfig(0);
  sub_21877CCF0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  if (sub_219BEE9F4())
  {
    sub_2186F9548();
    v4 = type metadata accessor for PuzzleListTagFeedGroupKnobs(0);
    if (sub_219BEF504() & 1) != 0 && (sub_219BEF504())
    {
      sub_2186F95C4();
      if (sub_219BEF504() & 1) != 0 && (sub_219BEF504())
      {
        v5 = *(v4 + 36);
        v6 = *(a1 + v5);
        v7 = *(a2 + v5);
        if (v6)
        {
          if (v7)
          {
            sub_219721E88(0);
            sub_21877CCF0(&qword_27CC1E580, sub_219721E88, MEMORY[0x277D32510]);

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
  }

  return 0;
}

unint64_t sub_219723364()
{
  result = qword_27CC1E588;
  if (!qword_27CC1E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E588);
  }

  return result;
}

unint64_t sub_2197233BC()
{
  result = qword_280EB76A8;
  if (!qword_280EB76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB76A8);
  }

  return result;
}

unint64_t sub_219723414()
{
  result = qword_280EB76B0;
  if (!qword_280EB76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB76B0);
  }

  return result;
}

uint64_t sub_219723468(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000018 && 0x8000000219D32440 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54646574696D696CLL && a2 == 0xEE007961646F546FLL || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219D32460 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_219BF78F4();

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

char *sub_219723670(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsActivityManager();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    v3 = *&result[OBJC_IVAR____TtC7NewsUI219NewsActivityManager_newsUserActivityManager];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2197236E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (v3)
  {
    v2 = objc_allocWithZone(sub_219BE9654());
    return sub_219BE9644();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_219723784()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainTabBarController(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219726668(0, &qword_280EE7258, &unk_280EE4290, MEMORY[0x277D6E768], MEMORY[0x277D6CEE8]);
  sub_219BE2904();

  sub_2186C709C(0, &unk_280EDC358, &protocol descriptor for MainRouterType, 1);
  sub_219BE2914();
  sub_219BE19D4();

  v4 = *MEMORY[0x277D6CF00];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_2186C709C(0, qword_280ECE5F0, &protocol descriptor for MainEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ED3538, &protocol descriptor for MainInteractorType, 0);
  sub_219BE2914();
  sub_2186C709C(0, &unk_280EE7440, MEMORY[0x277D6CC60], 0);
  sub_219BE19C4();

  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_2186C709C(0, qword_280EDA288, &protocol descriptor for MainTrackerType, 1);
  sub_219BE2914();

  type metadata accessor for Router();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_2186C709C(0, &qword_280EDC350, &protocol descriptor for MainStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EA5FA8, &protocol descriptor for MainTabBarEngagementModifierType, 1);
  sub_219BE2914();
  type metadata accessor for MainFloatingTabBarEngagementModifier();
  sub_219BE19C4();

  return result;
}

char *sub_219723C78(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC350, &protocol descriptor for MainStylerType, 1);
  result = sub_219BE1E34();
  if (!v47)
  {
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECE5F0, &protocol descriptor for MainEventHandlerType, 0);
  result = sub_219BE1E34();
  if (!v44)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v40[0])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v42 = v3;
  v43 = sub_21870D488(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v41[0] = v4;
  sub_219BE6AE4();
  swift_allocObject();
  v5 = sub_219BE6AC4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5974();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingEngagementViewManager();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v38 = v5;
  v39 = result;
  if (sub_219BED0C4())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219726668(0, &qword_280EE7258, &unk_280EE4290, MEMORY[0x277D6E768], MEMORY[0x277D6CEE8]);
    v7 = sub_219BE1E24();
    v8 = v6;
    v9 = v45;
    v10 = v44;
    if (v7)
    {
      v11 = objc_allocWithZone(sub_219BEA164());
      v7 = sub_219BEA144();
    }
  }

  else
  {
    v8 = v6;
    v9 = v45;
    v10 = v44;
    v7 = 0;
  }

  v12 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  v37 = &v34;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v15;
  v18 = type metadata accessor for MainStyler();
  v42 = v18;
  v19 = sub_21870D488(&qword_280EDFC58, type metadata accessor for MainStyler, &unk_219C51A14);
  v43 = v19;
  v41[0] = v17;
  v20 = objc_allocWithZone(type metadata accessor for MainTabBarController(0));
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  v36 = &v34;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (&v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  v26 = *v24;
  v40[3] = v18;
  v40[4] = v19;
  v40[0] = v26;
  *&v20[OBJC_IVAR____TtC7NewsUI220MainTabBarController_followingEngagementView] = 0;
  sub_218718690(v40, &v20[OBJC_IVAR____TtC7NewsUI220MainTabBarController_styler]);
  v27 = &v20[OBJC_IVAR____TtC7NewsUI220MainTabBarController_eventHandler];
  *v27 = v10;
  *(v27 + 1) = v9;
  *&v20[OBJC_IVAR____TtC7NewsUI220MainTabBarController_tipManager] = v8;
  *&v20[OBJC_IVAR____TtC7NewsUI220MainTabBarController_followingEngagementViewManager] = v39;
  v35 = v7;
  swift_unknownObjectRetain();

  v29 = sub_2187C390C(v28, v7);
  v30 = *&v29[OBJC_IVAR____TtC7NewsUI220MainTabBarController_eventHandler + 8];
  ObjectType = swift_getObjectType();
  v32 = *(v30 + 16);
  v33 = v29;
  swift_unknownObjectRetain();
  v32(v29, &off_282A2F308, ObjectType, v30);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v40);
  *(*&v33[OBJC_IVAR____TtC7NewsUI220MainTabBarController_followingEngagementViewManager] + 24) = &off_282A2F2D8;
  swift_unknownObjectWeakAssign();

  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return v33;
}

void sub_2197242BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MainTabManager();
  if (!sub_219BE1E24())
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v3 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate + 8) = &off_282A756F8;
  swift_unknownObjectWeakAssign();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186FB51C(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  if (!sub_219BE1E24())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  type metadata accessor for RouterController();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for Router();

  v4 = sub_219BE1E04();

  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_21870D488(&qword_280E92DA0, type metadata accessor for Router, &unk_219C9A7F0);
  sub_219BE6464();

  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_219BE1A04();
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE73A0, MEMORY[0x277D6CD90], 1);
  sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v8);
    sub_21870D488(&qword_280ECE5B8, type metadata accessor for MainTabBarController, &unk_219C51940);
    sub_219BE29A4();

    __swift_destroy_boxed_opaque_existential_1(&v5);
    __swift_destroy_boxed_opaque_existential_1(v7);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_219724644(uint64_t a1)
{
  v2 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v2);
  sub_218718690(a1, v5);
  v3 = swift_allocObject();
  sub_2186CB1F0(v5, v3 + 16);
  *&v5[0] = MEMORY[0x277D84F90];
  sub_21870D488(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
  sub_218A4E214(0);
  sub_21870D488(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);
  sub_219BF7164();
  sub_219726668(0, &qword_280EE7258, &unk_280EE4290, MEMORY[0x277D6E768], MEMORY[0x277D6CEE8]);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_2197247FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_219BE9654();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = MEMORY[0x277D6E6C8];
    a2[3] = v3;
    a2[4] = v5;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219724870@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FB51C(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for MainRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_2186CB1F0(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_282A7AD50;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219724964(uint64_t a1, void *a2)
{
  sub_218718690(a1, v4);
  sub_2186C709C(0, &unk_280EDC358, &protocol descriptor for MainRouterType, 1);
  type metadata accessor for MainRouter();
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for MainTabBarController(0);
    v3 = sub_219BE1E24();
    swift_unknownObjectWeakAssign();
  }
}

void *sub_219724A34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED3538, &protocol descriptor for MainInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EDC358, &protocol descriptor for MainRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EDA288, &protocol descriptor for MainTrackerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_2187C3090(v5, v6, *v10, *v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A8ED40;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219724CDC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED0F90, &protocol descriptor for MainDataManagerType, 0);
  result = sub_219BE1E34();
  if (!v63)
  {
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187C2600();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480, MEMORY[0x277D34EA8], 0);
  result = sub_219BE1E34();
  if (!v61)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v44 = v62;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE65F0, MEMORY[0x277D31718], 1);
  result = sub_219BE1E34();
  if (!v60[3])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA5FA8, &protocol descriptor for MainTabBarEngagementModifierType, 1);
  result = sub_219BE1E34();
  if (!v59[3])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6540, MEMORY[0x277D31850], 1);
  result = sub_219BE1E34();
  if (!v58[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E97530, &protocol descriptor for EngagementUpsellTriggerStateManagerType, 1);
  result = sub_219BE1E34();
  if (!v57)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6410, MEMORY[0x277D34F70], 1);
  result = sub_219BE1E34();
  if (!v55[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6470, MEMORY[0x277D34EB8], 0);
  result = sub_219BE1E34();
  if (!v53)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v42 = v64;
  v43 = a2;
  v46 = v63;
  v47 = v61;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5974();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = result;
  v45 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5D84();
  result = sub_219BE1E24();
  v41 = result;
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v39 = v54;
  v40 = v6;
  v38 = v53;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6310, MEMORY[0x277D35100], 0);
  result = sub_219BE1E34();
  v37 = v51;
  if (v51)
  {
    v7 = v52;
    v36[0] = v52;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
    v36[2] = v36;
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for EngagementUpsellTriggerStateManager(0);
    v50[3] = v14;
    v50[4] = &off_282A647D8;
    v50[0] = v13;
    type metadata accessor for MainInteractor();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v50, v14);
    v36[1] = v36;
    v17 = MEMORY[0x28223BE20](v16);
    v19 = (v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v49[3] = v14;
    v49[4] = &off_282A647D8;
    v49[0] = v21;
    v15[3] = 0;
    swift_unknownObjectWeakInit();
    v23 = v45;
    v22 = v46;
    v24 = v42;
    v15[4] = v46;
    v15[5] = v24;
    v25 = v47;
    v15[6] = v23;
    v15[7] = v25;
    v15[8] = v44;
    sub_218718690(v60, (v15 + 14));
    sub_218718690(v59, (v15 + 9));
    sub_218718690(v58, (v15 + 19));
    sub_218718690(v49, (v15 + 24));
    sub_218718690(v55, (v15 + 29));
    v26 = v39;
    v15[34] = v38;
    v15[35] = v26;
    v27 = v41;
    v15[36] = v40;
    v15[37] = v27;
    v28 = v37;
    v15[38] = v37;
    v15[39] = v7;
    *(v22 + 24) = &off_282AA34F8;
    swift_unknownObjectWeakAssign();
    v44 = sub_21870D488(&qword_280EDC490, type metadata accessor for MainInteractor, &unk_219CD4F08);
    swift_beginAccess();
    v29 = v15[17];
    v42 = v15[18];
    __swift_mutable_project_boxed_opaque_existential_1((v15 + 14), v29);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v30 = v27;
    swift_unknownObjectRetain();

    sub_219BE38B4();
    swift_endAccess();
    v31 = objc_opt_self();
    v32 = swift_allocObject();
    v33 = v36[0];
    v32[2] = v28;
    v32[3] = v33;
    v32[4] = v15;
    v48[4] = sub_21972664C;
    v48[5] = v32;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 1107296256;
    v48[2] = sub_218793E0C;
    v48[3] = &block_descriptor_160;
    v34 = _Block_copy(v48);
    swift_unknownObjectRetain();

    [v31 scheduleLowPriorityBlockForMainThread_];
    _Block_release(v34);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v59);
    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v50);
    result = __swift_destroy_boxed_opaque_existential_1(v56);
    v35 = v43;
    *v43 = v15;
    v35[1] = &off_282AA3518;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_219725500(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE73A0, MEMORY[0x277D6CD90], 1);
  result = sub_219BE1E34();
  if (v4)
  {
    sub_2186CB1F0(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_219BE29A4();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197255D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for MainTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282AA29E0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219725658(void *a1)
{
  sub_218718690(a1, v73);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RouterController();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FB51C(0, &unk_280E906F0, sub_2186FB5EC, &type metadata for IssueOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FB640(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0, &protocol descriptor for OfflineIssueManagerType, 0);
  result = sub_219BE1E34();
  if (!v71)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FB51C(0, &unk_280E906C0, sub_2186F1804, &type metadata for PuzzleOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  v43 = result;
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FB51C(0, &qword_280E90710, sub_2186F7720, &type metadata for TagFeedOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  v42 = result;
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FB51C(0, &unk_280E90720, sub_2186FB77C, &type metadata for ContentUnavailableOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  v41 = result;
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186F18AC(0);
  result = sub_219BE1E24();
  v40 = result;
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDA0, MEMORY[0x277D34548], 1);
  result = sub_219BE1E34();
  if (!v70)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E740, 0x277D31288);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v6 = result;
  v38 = v72;
  v39 = v71;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6410, MEMORY[0x277D34F70], 1);
  result = sub_219BE1E34();
  if (!v68)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480, MEMORY[0x277D34EA8], 0);
  result = sub_219BE1E34();
  v37 = v65;
  if (!v65)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v36 = v66;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE63C0, MEMORY[0x277D35000], 1);
  result = sub_219BE1E34();
  if (!v64)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6288, MEMORY[0x277D352F8], 1);
  result = sub_219BE1E34();
  if (!v62)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6280, MEMORY[0x277D35308], 1);
  result = sub_219BE1E34();
  if (!v60)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v35 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA8020, &protocol descriptor for SportsOnboardingFlowManagerType, 1);
  result = sub_219BE1E34();
  if (!v58)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6398, MEMORY[0x277D35030], 1);
  result = sub_219BE1E34();
  if (!v56)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB8CD0, &protocol descriptor for FeedAvailabilityServiceType, 1);
  result = sub_219BE1E34();
  if (!v54)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (!v52)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  if (!v50)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  v34 = v47;
  if (!v47)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v32 = v7;
  v33 = v6;
  v31 = v48;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5974();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v9 = result;
  v30 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5700, MEMORY[0x277D6D840], 1);
  result = sub_219BE1E34();
  if (v46)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v16 = type metadata accessor for SportsOnboardingFlowManager(0);
    v44[3] = v16;
    v44[4] = &off_282A31BD0;
    v44[0] = v15;
    type metadata accessor for Router();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v44, v16);
    v19 = MEMORY[0x28223BE20](v18);
    v21 = (&v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21, v19);
    v23 = *v21;
    v17[49] = v16;
    v17[50] = &off_282A31BD0;
    v17[46] = v23;
    sub_2186CB1F0(v73, (v17 + 2));
    v17[7] = v3;
    v17[8] = v4;
    v24 = v39;
    v17[9] = v35;
    v17[10] = v24;
    v25 = v42;
    v17[13] = v43;
    v17[14] = v25;
    v26 = v40;
    v27 = v41;
    v17[11] = v38;
    v17[12] = v27;
    v17[15] = v26;
    sub_2186CB1F0(&v69, (v17 + 16));
    v28 = v33;
    v17[21] = v32;
    v17[22] = v28;
    sub_2186CB1F0(&v67, (v17 + 23));
    v29 = v36;
    v17[28] = v37;
    v17[29] = v29;
    sub_2186CB1F0(&v63, (v17 + 40));
    sub_2186CB1F0(&v61, (v17 + 30));
    sub_2186CB1F0(&v59, (v17 + 35));
    v17[45] = v30;
    sub_2186CB1F0(&v55, (v17 + 51));
    sub_2186CB1F0(&v53, (v17 + 56));
    sub_2186CB1F0(&v51, (v17 + 61));
    sub_2186CB1F0(&v49, (v17 + 66));
    v17[71] = v34;
    v17[72] = v31;
    v17[73] = v9;
    sub_2186CB1F0(&v45, (v17 + 74));
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v57);
    return v17;
  }

LABEL_51:
  __break(1u);
  return result;
}

void *sub_219726124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v26)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (&v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for BaseStyler(0);
    v24[3] = v10;
    v11 = sub_21870D488(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v24[4] = v11;
    v24[0] = v9;
    v12 = type metadata accessor for MainStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v24, v10);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (&v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v23[3] = v10;
    v23[4] = v11;
    v23[0] = v19;
    sub_218718690(v23, v13 + 16);
    sub_2186C6148(0, &unk_280E8E5B0, 0x277D75780);
    v20 = [swift_getObjCClassFromMetadata() appearance];
    v21 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    [v20 setShadowImage_];

    __swift_destroy_boxed_opaque_existential_1(v23);
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    a2[3] = v12;
    result = sub_21870D488(&qword_280EDFC58, type metadata accessor for MainStyler, &unk_219C51A14);
    a2[4] = result;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219726434@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MainTabManager();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE5974();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for MainFloatingTabBarEngagementModifier();
      v8 = swift_allocObject();
      result = swift_unknownObjectWeakInit();
      *(v8 + 32) = 0;
      *(v8 + 24) = v5;
      *(v8 + 40) = v6;
      a2[3] = v7;
      a2[4] = &off_282A59F70;
      *a2 = v8;
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

void sub_219726518(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MainTabBarController(0);
  v4 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE5D84();
  v5 = sub_219BE1E24();
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v6;

    v8 = v6;
    v9 = sub_219BE1C44();
    sub_219BE5D34();
  }

  else
  {
    __break(1u);
  }
}

void sub_219726668(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2197266D4()
{
  sub_219BEEFF4();
  sub_219BEEFE4();
  sub_218A6C9A4(0);
  sub_219BEB2B4();
  if (v3)
  {
    sub_219BEDC74();
    swift_dynamicCast();
  }

  else
  {
    sub_218806FD0(v2);
  }

  type metadata accessor for AudioPlaylistFeedServiceConfig(0);
  sub_218795DC8(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig, &unk_219C95088);
  v0 = sub_219BEEFD4();

  return v0;
}

unint64_t sub_21972681C()
{
  result = qword_27CC1E590[0];
  if (!qword_27CC1E590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC1E590);
  }

  return result;
}

void *sub_219726870(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_219BEFF14();
  sub_219BEF524();

  if (v41 == 1)
  {
    if (qword_280E8D850 != -1)
    {
      goto LABEL_30;
    }

    while (1)
    {
      v4 = qword_280F61740;
      v5 = sub_219BF6214();
      v6 = [a3 publisherSpecifiedArticleIDs];
      if (!v6)
      {
        v38 = sub_219BF6214();
        v39 = MEMORY[0x277D84F90];
        sub_219BE5314("Found no promoted headlines", 27, 2, &dword_2186C1000, v4, v38, MEMORY[0x277D84F90]);
        v37 = v39;
        return sub_2194B0D40(v37);
      }

      v7 = MEMORY[0x277D837D0];
      v8 = v6;
      a3 = sub_219BF5924();

      sub_2186F20D4(0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_219C09BA0;
      v10 = MEMORY[0x21CECC6D0](a3, v7);
      v12 = v11;
      *(v9 + 56) = v7;
      *(v9 + 64) = sub_2186FC3BC();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      v13 = sub_219BF6214();
      sub_219BE5314("Prioritizing promoted headlines %{public}@", 42, 2, &dword_2186C1000, v4, v13, v9);

      v14 = a3[2];
      if (!v14)
      {
        v17 = MEMORY[0x277D84F98];
LABEL_25:

        return v17;
      }

      v15 = 0;
      v16 = a3 + 5;
      v17 = MEMORY[0x277D84F98];
      while (v15 < a3[2])
      {
        v20 = *(v16 - 1);
        v19 = *v16;
        swift_bridgeObjectRetain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = sub_21870F700(v20, v19);
        v24 = v17[2];
        v25 = (v23 & 1) == 0;
        v26 = __OFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          goto LABEL_28;
        }

        v28 = v23;
        if (v17[3] < v27)
        {
          sub_2194815A0(v27, isUniquelyReferenced_nonNull_native);
          v22 = sub_21870F700(v20, v19);
          if ((v28 & 1) != (v29 & 1))
          {
            result = sub_219BF79A4();
            __break(1u);
            return result;
          }

LABEL_14:
          if (v28)
          {
            goto LABEL_6;
          }

          goto LABEL_15;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_14;
        }

        v33 = v22;
        sub_219492450();
        v22 = v33;
        if (v28)
        {
LABEL_6:
          v18 = v22;

          *(v17[7] + 8 * v18) = v15;

          goto LABEL_7;
        }

LABEL_15:
        v17[(v22 >> 6) + 8] |= 1 << v22;
        v30 = (v17[6] + 16 * v22);
        *v30 = v20;
        v30[1] = v19;
        *(v17[7] + 8 * v22) = v15;

        v31 = v17[2];
        v26 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v26)
        {
          goto LABEL_29;
        }

        v17[2] = v32;
LABEL_7:
        ++v15;
        v16 += 2;
        if (v14 == v15)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      swift_once();
    }
  }

  if (qword_280E8D850 != -1)
  {
    swift_once();
  }

  v34 = qword_280F61740;
  v35 = sub_219BF6214();
  v36 = MEMORY[0x277D84F90];
  sub_219BE5314("Will not prioritize promoted headlines", 38, 2, &dword_2186C1000, v34, v35, MEMORY[0x277D84F90]);
  v37 = v36;
  return sub_2194B0D40(v37);
}

BOOL sub_219726C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  sub_218C3EEF4(0);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v47 = (&v46 - v8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v46 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v46 - v13);
  v48 = a1;
  sub_219728E60(a1, &v46 - v13);
  v15 = *v14;
  v16 = [*v14 identifier];

  v17 = sub_219BF5414();
  v19 = v18;

  if (*(a3 + 16))
  {
    v20 = sub_21870F700(v17, v19);
    v22 = v21;

    if (v22)
    {
      v23 = *(*(a3 + 56) + 8 * v20);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v23 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:
  v24 = *(v51 + 48);
  v25 = sub_219BEDC04();
  v26 = *(*(v25 - 8) + 8);
  v26(v14 + v24, v25);
  sub_219728E60(v50, v11);
  v27 = *v11;
  v28 = [*v11 identifier];

  v29 = sub_219BF5414();
  v31 = v30;

  if (*(a3 + 16))
  {
    v32 = sub_21870F700(v29, v31);
    v34 = v33;

    if (v34)
    {
      v35 = *(*(a3 + 56) + 8 * v32);
      goto LABEL_11;
    }
  }

  else
  {
  }

  v35 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:
  v26(v11 + *(v51 + 48), v25);
  if (v23 < v35)
  {
    return 1;
  }

  if (v35 < v23)
  {
    return 0;
  }

  v37 = v47;
  sub_219728E60(v48, v47);

  v38 = v51;
  v39 = *(v51 + 48);
  sub_219BEDBF4();
  v41 = v40;
  v26(v37 + v39, v25);
  v42 = v49;
  sub_219728E60(v50, v49);

  v43 = *(v38 + 48);
  sub_219BEDBF4();
  v45 = v44;
  v26(v42 + v43, v25);
  return v45 < v41;
}

uint64_t sub_219726F4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_219BEFEC4();
  sub_219BEF524();

  v6 = *(a3 + 16);
  if (v15 < v6)
  {
    v7 = v6 - v15;
    if (__OFSUB__(v6, v15))
    {
      __break(1u);
      goto LABEL_13;
    }

    result = v7 - 1;
    if (!__OFSUB__(v7, 1))
    {
      return result;
    }

    __break(1u);
  }

  if (qword_280E8D850 != -1)
  {
LABEL_13:
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09EC0;
  v10 = MEMORY[0x277D83B88];
  v11 = MEMORY[0x277D83C10];
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 64) = v11;
  *(v9 + 32) = v15;
  if (a4 >> 62)
  {
    v13 = v9;
    v12 = sub_219BF7214();
    v9 = v13;
  }

  else
  {
    v12 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = v12;
  sub_219BE5314("Specified position from end %lu is larger than selected headline count %lu, inserting at end", v14, v15);

  if (v6)
  {
    return v6 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2197270D0(uint64_t a1, __n128 a2)
{
  v2 = sub_219BEFD84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF524();
  sub_219BEFD74();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  if (v7 == 0.0)
  {
    return 2;
  }

  if (v7 == 1.0)
  {
    return 1;
  }

  if (v7 == -1.0)
  {
    return 0;
  }

  v9 = sub_218D34164(0x20000000000001);
  if (v9 == 0x20000000000000)
  {
    v10 = 1.0;
    if (v7 <= 0.0)
    {
LABEL_9:
      v11 = v10 > -v7;
      return !v11;
    }
  }

  else
  {
    v10 = vcvtd_n_f64_u64(v9, 0x35uLL) + 0.0;
    if (v7 <= 0.0)
    {
      goto LABEL_9;
    }
  }

  v11 = v10 > v7;
  return !v11;
}

uint64_t (*sub_219727238(uint64_t a1, id a2))()
{
  v3 = [a2 identifier];
  v4 = sub_219BF5414();
  v6 = v5;

  if (*(a1 + 16))
  {
    sub_21870F700(v4, v6);
    v8 = v7;

    if (v8)
    {

      v10 = sub_218845F78(v9);

      if (qword_280E8D850 != -1)
      {
        swift_once();
      }

      v11 = qword_280F61740;
      sub_2186F20D4(0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_219C09BA0;
      v13 = MEMORY[0x277D837D0];
      v14 = sub_219BF5D54();
      v16 = v15;
      *(v12 + 56) = v13;
      *(v12 + 64) = sub_2186FC3BC();
      *(v12 + 32) = v14;
      *(v12 + 40) = v16;
      v17 = sub_219BF6214();
      sub_219BE5314("Using topic allow list %{public}@", 33, 2, &dword_2186C1000, v11, v17, v12);

      *(swift_allocObject() + 16) = v10;
      return sub_219728E58;
    }
  }

  else
  {
  }

  if (qword_280E8D850 != -1)
  {
    swift_once();
  }

  v19 = qword_280F61740;
  v20 = sub_219BF6214();
  sub_219BE5314("No topic allow list configured", 30, 2, &dword_2186C1000, v19, v20, MEMORY[0x277D84F90]);
  return sub_21876836C;
}

BOOL sub_21972745C(uint64_t a1, uint64_t a2)
{

  v4 = sub_218845F78(v3);

  sub_218C33480(a2, v4);
  LOBYTE(a2) = v5;

  return (a2 & 1) == 0;
}

uint64_t (*sub_2197274BC(uint64_t a1, void *a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BEFEA4();
  v5 = [a2 identifier];
  v6 = sub_219BF5414();
  v8 = v7;

  if (*(v4 + 16))
  {
    sub_21870F700(v6, v8);
    v10 = v9;

    if (v10)
    {

      sub_219BEF524();

      v11 = v53;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = 0;
LABEL_6:
  v12 = sub_219BEFEF4();
  v13 = [a2 identifier];
  v14 = sub_219BF5414();
  v16 = v15;

  if (!*(v12 + 16))
  {

LABEL_11:

    v19 = MEMORY[0x277D84FA0];
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  sub_21870F700(v14, v16);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_219BEF524();
  v19 = sub_218845F78(v54);

  if (!v11)
  {
LABEL_13:
    v20 = sub_219BF29C4();

    v22 = sub_218845F78(v21);

    sub_2194796A0(v22, v20);
    v24 = v23;
    if (v11)
    {
      if (qword_280E8D850 != -1)
      {
        swift_once();
      }

      v25 = qword_280F61740;
      sub_2186F20D4(0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_219C09EC0;
      v27 = [a2 identifier];
      v28 = sub_219BF5414();
      v30 = v29;

      v31 = MEMORY[0x277D837D0];
      *(v26 + 56) = MEMORY[0x277D837D0];
      v32 = sub_2186FC3BC();
      *(v26 + 64) = v32;
      *(v26 + 32) = v28;
      *(v26 + 40) = v30;
      v33 = sub_219BF5D54();
      *(v26 + 96) = v31;
      *(v26 + 104) = v32;
      *(v26 + 72) = v33;
      *(v26 + 80) = v34;
      v35 = sub_219BF6214();
      sub_219BE5314("Storefront %{public}@ allows sports from publishers %{public}@", 62, 2, &dword_2186C1000, v25, v35, v26);

      v36 = swift_allocObject();
      *(v36 + 16) = v24;
      *(v36 + 24) = v19;
      return sub_219728E50;
    }

    else
    {

      if (qword_280E8D850 != -1)
      {
        swift_once();
      }

      v38 = qword_280F61740;
      sub_2186F20D4(0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_219C09BA0;
      v40 = [a2 identifier];
      v41 = sub_219BF5414();
      v43 = v42;

      *(v39 + 56) = MEMORY[0x277D837D0];
      *(v39 + 64) = sub_2186FC3BC();
      *(v39 + 32) = v41;
      *(v39 + 40) = v43;
      v44 = sub_219BF6214();
      sub_219BE5314("Storefront %{public}@ doesn't allow sports", 42, 2, &dword_2186C1000, v38, v44, v39);

      *(swift_allocObject() + 16) = v24;
      return sub_219728E48;
    }
  }

LABEL_12:
  if (*(v19 + 16))
  {
    goto LABEL_13;
  }

  if (qword_280E8D850 != -1)
  {
    swift_once();
  }

  v45 = qword_280F61740;
  sub_2186F20D4(0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_219C09BA0;
  v47 = [a2 identifier];
  v48 = sub_219BF5414();
  v50 = v49;

  *(v46 + 56) = MEMORY[0x277D837D0];
  *(v46 + 64) = sub_2186FC3BC();
  *(v46 + 32) = v48;
  *(v46 + 40) = v50;
  v51 = sub_219BF6214();
  sub_219BE5314("Storefront %{public}@ allows sports from any publisher", 54, 2, &dword_2186C1000, v45, v51, v46);

  return sub_21876836C;
}

uint64_t sub_2197279F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 + 16);

  if (!v8)
  {
LABEL_18:

    return 1;
  }

  v9 = 0;
  v10 = a3 + 32;
  v11 = a4 + 56;
  while (1)
  {
    if (!*(a4 + 16))
    {
      goto LABEL_4;
    }

    v12 = (v10 + 16 * v9);
    v14 = *v12;
    v13 = v12[1];
    sub_219BF7AA4();

    sub_219BF5524();
    v15 = sub_219BF7AE4();
    v16 = -1 << *(a4 + 32);
    v17 = v15 & ~v16;
    if ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
    {
      break;
    }

LABEL_3:

LABEL_4:
    if (++v9 == v8)
    {
      goto LABEL_18;
    }
  }

  v18 = ~v16;
  while (1)
  {
    v19 = (*(a4 + 48) + 16 * v17);
    v20 = *v19 == v14 && v19[1] == v13;
    if (v20 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    v17 = (v17 + 1) & v18;
    if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return sub_2188537B8(a1, a2, a5);
}

uint64_t sub_219727B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);

  if (!v6)
  {
LABEL_16:
    v19 = 1;
    goto LABEL_17;
  }

  v7 = 0;
  v8 = a3 + 32;
  v9 = a4 + 56;
  while (1)
  {
    if (!*(a4 + 16))
    {
      goto LABEL_4;
    }

    v10 = (v8 + 16 * v7);
    v12 = *v10;
    v11 = v10[1];
    sub_219BF7AA4();

    sub_219BF5524();
    v13 = sub_219BF7AE4();
    v14 = -1 << *(a4 + 32);
    v15 = v13 & ~v14;
    if ((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      break;
    }

LABEL_3:

LABEL_4:
    if (++v7 == v6)
    {
      goto LABEL_16;
    }
  }

  v16 = ~v14;
  while (1)
  {
    v17 = (*(a4 + 48) + 16 * v15);
    v18 = *v17 == v12 && v17[1] == v11;
    if (v18 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_17:

  return v19;
}

uint64_t sub_219727CD0(void *a1, uint64_t a2, uint64_t a3, char a4, char *a5, uint64_t a6, void *a7, uint64_t (**a8)(char *, uint64_t, uint64_t), uint64_t (*a9)(uint64_t), uint64_t a10, uint64_t (*a11)(char *, uint64_t, uint64_t), char a12, uint64_t a13, uint64_t a14)
{
  v223 = a8;
  LOBYTE(v16) = a4;
  v225 = sub_219BDBD34();
  v222 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v221 = &v218 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v220 = &v218 - v21;
  MEMORY[0x28223BE20](v22);
  v224 = &v218 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v218 - v25;
  *&v28 = MEMORY[0x28223BE20](v27).n128_u64[0];
  v30 = &v218 - v29;
  v226 = a1;
  v31 = [a1 clusterID];
  if (v31)
  {
    v32 = v31;
    v33 = sub_219BF5414();
    v35 = v34;

    if (sub_2188537B8(v33, v35, a3))
    {
      if (qword_280E8D850 != -1)
      {
        swift_once();
      }

      v36 = qword_280F61740;
      sub_2186F20D4(0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_219C09EC0;
      v38 = [v226 identifier];
      v39 = sub_219BF5414();
      v41 = v40;

      v42 = MEMORY[0x277D837D0];
      *(v37 + 56) = MEMORY[0x277D837D0];
      v43 = sub_2186FC3BC();
      *(v37 + 32) = v39;
      *(v37 + 40) = v41;
      *(v37 + 96) = v42;
      *(v37 + 104) = v43;
      *(v37 + 64) = v43;
      *(v37 + 72) = v33;
      *(v37 + 80) = v35;
      v44 = sub_219BF6214();
      sub_219BE5314("Rejected local headline %{public}@ because it contained a cluster ID (%{public}@) also contained by the local story in top stories.", 131, 2, &dword_2186C1000, v36, v44, v37);
LABEL_75:

      return 0;
    }
  }

  v45 = v226;
  if (v16 != 2)
  {
    v46 = [objc_msgSend(a5 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    LODWORD(a5) = [v46 containsItem_];

    if (a5 != (v16 & 1))
    {
      if (qword_280E8D850 != -1)
      {
LABEL_83:
        swift_once();
      }

      v47 = qword_280F61740;
      sub_2186F20D4(0);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_219C0B8C0;
      v49 = [v45 identifier];
      v50 = sub_219BF5414();
      v52 = v51;

      v53 = MEMORY[0x277D837D0];
      *(v48 + 56) = MEMORY[0x277D837D0];
      v54 = sub_2186FC3BC();
      *(v48 + 32) = v50;
      *(v48 + 40) = v52;
      v55 = 32;
      if (v16)
      {
        v56 = 32;
      }

      else
      {
        v56 = 0x20746F6E20;
      }

      *(v48 + 96) = v53;
      *(v48 + 104) = v54;
      if (v16)
      {
        v57 = 0xE100000000000000;
      }

      else
      {
        v57 = 0xE500000000000000;
      }

      *(v48 + 64) = v54;
      *(v48 + 72) = v56;
      *(v48 + 80) = v57;
      if (a5)
      {
        v58 = 0xE100000000000000;
      }

      else
      {
        v55 = 0x20746F6E20;
        v58 = 0xE500000000000000;
      }

      *(v48 + 136) = v53;
      *(v48 + 144) = v54;
      *(v48 + 112) = v55;
      *(v48 + 120) = v58;
      v59 = sub_219BF6214();
      sub_219BE5314("Rejected local headline %{public}@ because a News+ headline is%{public}@preferred and this is%{public}@News+", 108, 2, &dword_2186C1000, v47, v59, v48);
      goto LABEL_75;
    }
  }

  v60 = [v45 bodyTextLength];
  if (v60 < sub_219BEFF04())
  {
    if (qword_280E8D850 != -1)
    {
      swift_once();
    }

    v61 = qword_280F61740;
    sub_2186F20D4(0);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_219C0B8C0;
    v63 = [v45 identifier];
    v64 = sub_219BF5414();
    v66 = v65;

    *(v62 + 56) = MEMORY[0x277D837D0];
    *(v62 + 64) = sub_2186FC3BC();
    *(v62 + 32) = v64;
    *(v62 + 40) = v66;
    v67 = [v45 bodyTextLength];
    v68 = MEMORY[0x277D84A90];
    *(v62 + 96) = MEMORY[0x277D84A28];
    *(v62 + 104) = v68;
    *(v62 + 72) = v67;
    v69 = sub_219BEFF04();
    v70 = MEMORY[0x277D83C10];
    *(v62 + 136) = MEMORY[0x277D83B88];
    *(v62 + 144) = v70;
    *(v62 + 112) = v69;
    v71 = sub_219BF6214();
    sub_219BE5314("Rejected local headline %{public}@ because its bodyTextLength %lu didn't satisfy minimum %lu", 92, 2, &dword_2186C1000, v61, v71, v62);
    goto LABEL_75;
  }

  v72 = sub_219BEFF34();
  v73 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v74 = [a7 identifier];
  v75 = sub_219BF5414();
  v77 = v76;

  if (!*(v72 + 16))
  {

    goto LABEL_30;
  }

  sub_21870F700(v75, v77);
  v79 = v78;

  if ((v79 & 1) == 0)
  {
LABEL_30:

    goto LABEL_31;
  }

  sub_219BEF524();

  v80 = v227;
  v81 = [v226 publishDate];
  if (v81)
  {
    v82 = v81;
    sub_219BDBCA4();

    v83 = v222;
    v84 = v225;
    (*(v222 + 4))(v30, v26, v225);
    v85 = v224;
    sub_219BDBD24();
    sub_219BDBBE4();
    v87 = v86;
    v88 = *(v83 + 1);
    v88(v85, v84);
    if (v87 >= v80)
    {
      if (qword_280E8D850 != -1)
      {
        swift_once();
      }

      v172 = qword_280F61740;
      sub_2186F20D4(0);
      v173 = swift_allocObject();
      *(v173 + 16) = xmmword_219C0EE20;
      v174 = [v226 identifier];
      v175 = sub_219BF5414();
      v177 = v176;

      v178 = MEMORY[0x277D837D0];
      *(v173 + 56) = MEMORY[0x277D837D0];
      v179 = sub_2186FC3BC();
      *(v173 + 64) = v179;
      *(v173 + 32) = v175;
      *(v173 + 40) = v177;
      sub_219248E88();
      v180 = v225;
      v181 = sub_219BF7894();
      *(v173 + 96) = v178;
      *(v173 + 104) = v179;
      *(v173 + 72) = v181;
      *(v173 + 80) = v182;
      v227 = 0;
      v228 = 0xE000000000000000;
      v183 = v224;
      sub_219BDBD24();
      sub_219BDBBE4();
      v88(v183, v180);
      sub_219BF5CB4();
      v184 = v227;
      v185 = v228;
      *(v173 + 136) = v178;
      *(v173 + 144) = v179;
      v186 = MEMORY[0x277D83B88];
      *(v173 + 112) = v184;
      *(v173 + 120) = v185;
      v187 = MEMORY[0x277D83C10];
      *(v173 + 176) = v186;
      *(v173 + 184) = v187;
      *(v173 + 152) = v80;
      v188 = sub_219BF6214();
      sub_219BE5314("Rejected local headline %{public}@ because it had a publish date %{public}@, it has been %{public}@ seconds since then exceeding timeout of %lu", 143, 2, &dword_2186C1000, v172, v188, v173);

      v88(v30, v180);
      return 0;
    }

    v88(v30, v84);
  }

LABEL_31:
  v89 = &selRef_filteredReasons;
  v90 = v226;
  v91 = [v226 publisherID];
  if (v91)
  {
    v92 = v91;
    a5 = sub_219BF5414();
    v94 = v93;

    v95 = [v90 topicIDs];
    if (v95)
    {
      v227 = 0;
      v96 = MEMORY[0x277D837D0];
      v97 = v95;
      sub_219BF5914();

      v98 = v227;
      if (v227)
      {
        if ((a9(v227) & 1) == 0)
        {

          if (qword_280E8D850 != -1)
          {
            swift_once();
          }

          v165 = qword_280F61740;
          sub_2186F20D4(0);
          v166 = swift_allocObject();
          *(v166 + 16) = xmmword_219C09BA0;
          v167 = [v90 identifier];
          v168 = sub_219BF5414();
          v170 = v169;

          *(v166 + 56) = v96;
          *(v166 + 64) = sub_2186FC3BC();
          *(v166 + 32) = v168;
          *(v166 + 40) = v170;
          v171 = sub_219BF6214();
          sub_219BE5314("Rejected local headline %{public}@ because it didn't have a topic specified in the allowed topic filter", 103, 2, &dword_2186C1000, v165, v171, v166);
          goto LABEL_75;
        }

        LOBYTE(v16) = a12;
        v99 = a11(a5, v94, v98);

        if ((v99 & 1) == 0)
        {

          if (qword_280E8D850 != -1)
          {
            swift_once();
          }

          v193 = qword_280F61740;
          sub_2186F20D4(0);
          v194 = swift_allocObject();
          *(v194 + 16) = xmmword_219C09BA0;
          v195 = [v90 identifier];
          v196 = sub_219BF5414();
          v198 = v197;

          *(v194 + 56) = v96;
          *(v194 + 64) = sub_2186FC3BC();
          *(v194 + 32) = v196;
          *(v194 + 40) = v198;
          v199 = sub_219BF6214();
          sub_219BE5314("Rejected local headline %{public}@ because it was filtered by the sports filter", 79, 2, &dword_2186C1000, v193, v199, v194);
          goto LABEL_75;
        }

        v100 = *(v98 + 16);
        v101 = v98;
        if (v100)
        {
          v102 = 0;
          v223 = (v222 + 32);
          v103 = (v222 + 8);
          v45 = (v98 + 40);
          v104 = v220;
          v219 = v101;
          while (1)
          {
            if (v102 >= *(v101 + 16))
            {
              __break(1u);
              goto LABEL_83;
            }

            a5 = *(v45 - 1);
            v105 = *v45;

            v16 = sub_219BEFEB4();
            if (*(v16 + 16) && (v106 = sub_21870F700(a5, v105), (v107 & 1) != 0))
            {
              v108 = *(*(v16 + 56) + 8 * v106);

              v109 = [v226 publishDate];
              if (v109)
              {
                v222 = a5;
                v110 = v100;
                v16 = v221;
                v111 = v109;
                sub_219BDBCA4();

                v112 = v225;
                (*v223)(v104, v16, v225);
                v113 = v103;
                v114 = v224;
                sub_219BDBD24();
                LOBYTE(v16) = v114;
                sub_219BDBBE4();
                v116 = v115;
                v117 = v114;
                v103 = v113;
                a5 = *v113;
                (a5)(v117, v112);
                if (v108 < v116)
                {
                  v224 = a5;

                  if (qword_280E8D850 != -1)
                  {
                    swift_once();
                  }

                  v200 = qword_280F61740;
                  sub_2186F20D4(0);
                  v201 = swift_allocObject();
                  *(v201 + 16) = xmmword_219C0EE20;
                  v202 = [v226 identifier];
                  v203 = sub_219BF5414();
                  v205 = v204;

                  v206 = MEMORY[0x277D837D0];
                  *(v201 + 56) = MEMORY[0x277D837D0];
                  v207 = sub_2186FC3BC();
                  *(v201 + 64) = v207;
                  *(v201 + 32) = v203;
                  *(v201 + 40) = v205;
                  sub_219248E88();
                  v208 = v220;
                  v209 = v225;
                  v210 = sub_219BF7894();
                  *(v201 + 96) = v206;
                  *(v201 + 104) = v207;
                  *(v201 + 72) = v210;
                  *(v201 + 80) = v211;
                  v212 = swift_allocObject();
                  v213 = MEMORY[0x277D839F8];
                  *(v212 + 16) = xmmword_219C09BA0;
                  v214 = MEMORY[0x277D83A80];
                  *(v212 + 56) = v213;
                  *(v212 + 64) = v214;
                  *(v212 + 32) = v108;
                  v215 = sub_219BF5454();
                  *(v201 + 136) = v206;
                  *(v201 + 144) = v207;
                  *(v201 + 112) = v215;
                  *(v201 + 120) = v216;
                  *(v201 + 176) = v206;
                  *(v201 + 184) = v207;
                  *(v201 + 152) = v222;
                  *(v201 + 160) = v105;
                  v217 = sub_219BF6214();
                  sub_219BE5314("Rejected local headline %{public}@ because the publish date %{public}@ exceeded configured timeout %{public}@ for topic %{public}@", 130, 2, &dword_2186C1000, v200, v217, v201);

                  (v224)(v208, v209);
                  return 0;
                }

                (a5)(v104, v112);
                v100 = v110;
                v101 = v219;
              }
            }

            else
            {
            }

            ++v102;

            v45 += 2;
            if (v100 == v102)
            {

              v90 = v226;
              v73 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
              v89 = &selRef_filteredReasons;
              goto LABEL_47;
            }
          }
        }
      }
    }
  }

LABEL_47:
  v118 = [v90 v73[278]];
  v119 = sub_219BF5414();
  v121 = v120;

  v122 = sub_2188537B8(v119, v121, a13);

  if (v122)
  {
    if (qword_280E8D850 != -1)
    {
      swift_once();
    }

    v123 = qword_280F61740;
    sub_2186F20D4(0);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_219C09BA0;
    v125 = [v90 v73[278]];
    v126 = sub_219BF5414();
    v128 = v127;

    *(v124 + 56) = MEMORY[0x277D837D0];
    *(v124 + 64) = sub_2186FC3BC();
    *(v124 + 32) = v126;
    *(v124 + 40) = v128;
    v129 = sub_219BF6214();
    sub_219BE5314("Rejected local headline %{public}@ because it is already selected", 65, 2, &dword_2186C1000, v123, v129, v124);
    goto LABEL_75;
  }

  v130 = [v90 clusterID];
  if (v130)
  {
    v131 = v130;
    v132 = sub_219BF5414();
    v134 = v133;

    if (sub_2188537B8(v132, v134, a14))
    {
      if (qword_280E8D850 != -1)
      {
        swift_once();
      }

      v135 = qword_280F61740;
      sub_2186F20D4(0);
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_219C09EC0;
      v137 = [v90 v73[278]];
      v138 = sub_219BF5414();
      v140 = v139;

      v141 = MEMORY[0x277D837D0];
      *(v136 + 56) = MEMORY[0x277D837D0];
      v142 = sub_2186FC3BC();
      *(v136 + 32) = v138;
      *(v136 + 40) = v140;
      *(v136 + 96) = v141;
      *(v136 + 104) = v142;
      *(v136 + 64) = v142;
      *(v136 + 72) = v132;
      *(v136 + 80) = v134;
      v143 = sub_219BF6214();
      sub_219BE5314("Rejected local headline %{public}@ because its clusterID %{public}@ is already present on a selected item", 105, 2, &dword_2186C1000, v135, v143, v136);
      goto LABEL_75;
    }
  }

  v144 = [v90 v89[87]];
  if (!v144 || (v145 = v144, v146 = sub_219BF5414(), v148 = v147, v145, v149 = sub_219BEFED4(), v227 = v146, v228 = v148, MEMORY[0x28223BE20](v149), *(&v218 - 2) = &v227, v150 = sub_2186D128C(sub_2186D1338, (&v218 - 4), v149), , , (v150 & 1) != 0))
  {
    if (qword_280E8D850 != -1)
    {
      swift_once();
    }

    v151 = qword_280F61740;
    sub_2186F20D4(0);
    v152 = swift_allocObject();
    *(v152 + 16) = xmmword_219C09EC0;
    v153 = [v90 v73[278]];
    v154 = sub_219BF5414();
    v156 = v155;

    v157 = v90;
    v158 = MEMORY[0x277D837D0];
    *(v152 + 56) = MEMORY[0x277D837D0];
    v159 = sub_2186FC3BC();
    *(v152 + 64) = v159;
    *(v152 + 32) = v154;
    *(v152 + 40) = v156;
    v160 = [v157 v89[87]];
    if (v160)
    {
      v161 = v160;
      v162 = sub_219BF5414();
      v164 = v163;
    }

    else
    {
      v162 = 0;
      v164 = 0;
    }

    v227 = v162;
    v228 = v164;
    sub_2186E3374();
    v190 = sub_219BF5484();
    *(v152 + 96) = v158;
    *(v152 + 104) = v159;
    *(v152 + 72) = v190;
    *(v152 + 80) = v191;
    v192 = sub_219BF6214();
    sub_219BE5314("Rejected local headline %{public}@ because the publisher %{public}@ is forbidden", 80, 2, &dword_2186C1000, v151, v192, v152);
    goto LABEL_75;
  }

  return 1;
}

uint64_t sub_219728E60(uint64_t a1, uint64_t a2)
{
  sub_218C3EEF4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result(uint64_t a1)
{
  result = qword_280E9C080;
  if (!qword_280E9C080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_219728F48(uint64_t a1)
{
  result = sub_2186D8870();
  if (v2 <= 0x3F)
  {
    result = sub_219BEDC04();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_219728FF8@<D0>(uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v9 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [a6 userInterfaceIdiom];
  sub_21899E550(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0B8C0;
  v11 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v12 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v60 = v11;
  *(inited + 40) = sub_219BF6BD4();
  v13 = *MEMORY[0x277D74118];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = sub_2186C6148(0, &qword_280E8DED8, 0x277D74240);
  *(inited + 80) = v9;
  v15 = *MEMORY[0x277D740C0];
  *(inited + 104) = v14;
  *(inited + 112) = v15;
  v16 = objc_opt_self();
  v59 = v15;
  v17 = v13;
  v58 = v9;
  v18 = [v16 blackColor];
  v19 = [v16 whiteColor];
  v20 = [v16 ts:v18 dynamicColor:v19 withDarkStyleVariant:?];

  v21 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 144) = v21;
  *(inited + 120) = v20;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v23 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v24 = sub_219BF5204();

  v25 = [v22 initWithString:v23 attributes:v24];

  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_219C09EC0;
  *(v26 + 32) = v60;
  *(v26 + 40) = sub_219BF6BD4();
  *(v26 + 64) = v12;
  *(v26 + 72) = v59;
  v27 = [v16 systemPinkColor];
  *(v26 + 104) = v21;
  *(v26 + 80) = v27;
  sub_2188195F4(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  v28 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v29 = sub_219BF53D4();
  v30 = sub_219BF5204();

  v31 = [v28 initWithString:v29 attributes:v30];

  [v31 size];
  v33 = v32;
  v64 = v32;
  sub_219BE8004();
  v35 = v34;
  sub_219BE8014();
  sub_219BF6034();
  v37 = v35 - v36;
  v62 = v37 - v33;
  v63 = v37;
  sub_219BE7FF4();
  sub_219BF6034();
  [v25 boundingRectWithSize:33 options:0 context:{v62 - v38, 1.79769313e308}];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_219BE7FF4();
  v61 = v47;
  v48 = type metadata accessor for SearchHomeSectionTitleViewLayoutOptions(0);
  v49 = *(a5 + *(v48 + 20));
  v68.origin.x = v40;
  v68.origin.y = v42;
  v68.size.width = v44;
  v68.size.height = v46;
  Width = CGRectGetWidth(v68);
  v69.origin.x = v40;
  v69.origin.y = v42;
  v69.size.width = v44;
  v69.size.height = v46;
  Height = CGRectGetHeight(v69);
  if ([a6 horizontalSizeClass] == 2)
  {
    v52 = 1.0;
  }

  else
  {
    v52 = 0.0;
  }

  sub_219BE7FF4();
  v67 = v62 - v53;
  v70.origin.x = v40;
  v70.origin.y = v42;
  v70.size.width = v44;
  v70.size.height = v46;
  v54 = CGRectGetHeight(v70);
  v71.origin.x = v61;
  v71.origin.y = v49;
  v71.size.width = Width;
  v71.size.height = Height;
  MaxY = CGRectGetMaxY(v71);

  v56 = MaxY + *(a5 + *(v48 + 24));
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = v63;
  *(a7 + 24) = v56;
  *(a7 + 32) = v61;
  *(a7 + 40) = v49;
  *(a7 + 48) = Width;
  *(a7 + 56) = Height;
  *(a7 + 64) = v67;
  *(a7 + 72) = v49 + v52;
  result = v64;
  *(a7 + 80) = v64;
  *(a7 + 88) = v54;
  return result;
}

void sub_21972954C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 48), *(a1 + 72));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_2197295E0()
{
  sub_219BE3204();
  v0 = sub_219BE1C44();
  sub_219BE3034();
}

uint64_t sub_2197296AC()
{
  v1 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 56))(ObjectType, v1);
}

uint64_t sub_219729700(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SportsDetailModel(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SportsManagementDetailModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952E24(0);
  sub_219BE5FC4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for SportsManagementDetailModel;
    v13 = v11;
  }

  else
  {
    sub_218A3A4F8(v11, v8);
    if (*(*&v8[*(v6 + 20)] + 16))
    {
      __swift_project_boxed_opaque_existential_1((a2 + 48), *(a2 + 72));
      sub_218C95740(v8, v5);
      swift_storeEnumTagMultiPayload();
      sub_219623C40(v5);
      sub_2197298F0(v5, type metadata accessor for SportsDetailModel);
    }

    v12 = type metadata accessor for SportsModel;
    v13 = v8;
  }

  return sub_2197298F0(v13, v12);
}

uint64_t sub_2197298F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219729950()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2197299CC()
{
  v1 = *(*v0 + 88);

  return v1;
}

uint64_t sub_219729A00(uint64_t a1)
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

void sub_219729AB8()
{
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

  sub_219BE3204();
  sub_2187D9028();
  v1 = sub_219BF66A4();
  sub_219BE2F94();

  v2 = sub_219BF66A4();
  sub_219BE2FE4();
}

void sub_219729C70(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 112);
  v7[6] = *(a1 + 96);
  v7[7] = v3;
  v8 = *(a1 + 128);
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  v5 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v5;
  v6 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v6;
  v9 = (*(*(v2 + 88) + 40))(v7, *(v2 + 80));
  sub_218A35FA8(0);
  sub_21972A348(&qword_27CC1E618, sub_218A35FA8, MEMORY[0x277D6D890]);

  sub_219BE6EF4();
}

uint64_t sub_219729DC4(uint64_t a1, uint64_t a2)
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

uint64_t sub_219729E7C(uint64_t a1, uint64_t a2)
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

uint64_t sub_219729F34(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE89F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219113A7C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ChannelPickerElementModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218980A74(a1, v12);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_21972A240(v12, type metadata accessor for ChannelPickerElementModel);
  }

  v13 = v12[5];
  v23 = v12[4];
  v24[0] = v13;
  *(v24 + 9) = *(v12 + 89);
  v14 = v12[1];
  v19 = *v12;
  v20 = v14;
  v15 = v12[3];
  v21 = v12[2];
  v22 = v15;
  sub_219BEAF14();
  __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
  swift_unknownObjectRetain();
  sub_219BF3324();
  v16 = sub_219BF3344();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  (*(v4 + 104))(v6, *MEMORY[0x277D6E0F8], v3);
  memset(&v24[2], 0, 32);
  v25 = 1;
  sub_219BE89D4();

  (*(v4 + 8))(v6, v3);
  sub_21972A240(v9, sub_219113A7C);
  return sub_218980BE4(&v19);
}

uint64_t sub_21972A240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21972A2A8()
{
  v0 = off_282A44680[0];
  type metadata accessor for ChannelPickerDetailDataManager(0);
  return v0();
}

uint64_t sub_21972A348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_21972A398()
{
  (*(*(*v0 + 88) + 48))(*(*v0 + 80));
  sub_218A35FA8(0);
  sub_21972A348(&qword_27CC1E618, sub_218A35FA8, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

uint64_t sub_21972A48C(uint64_t a1)
{
  v2 = sub_21972A704(&qword_27CC1E620, &unk_219C9FE28);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21972A504@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6E850];
  v3 = sub_219BE9C14();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *MEMORY[0x277D6E858];
  v5 = sub_219BE9C24();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_21972A5E0@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes(uint64_t a1)
{
  result = qword_27CC1E630;
  if (!qword_27CC1E630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21972A704(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21972A770(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_219BDCAF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21972A7FC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v52 = a6;
  v53 = a7;
  v50 = a4;
  v51 = a5;
  v48 = a2;
  v49 = a3;
  v57 = sub_219BF2094();
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF2D74();
  if (*(a1 + 16))
  {
    v15 = sub_21870F700(v13, v14);
    v17 = v16;

    if (v17)
    {
      v18 = *(*(a1 + 56) + 8 * v15);
      sub_21972C350(0, &unk_280E8BBD0, type metadata accessor for MagazineFeedModel, MEMORY[0x277D84560]);
      v19 = *(type metadata accessor for MagazineFeedModel(0) - 8);
      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_219C09BA0;
      *(v21 + v20) = v18;
      swift_storeEnumTagMultiPayload();
      *a8 = v21;

      return;
    }
  }

  else
  {
  }

  v47 = a8;
  v22 = sub_219BF2D94();
  v23 = *(v22 + 16);
  if (!v23)
  {

    v29 = MEMORY[0x277D84F90];
LABEL_24:
    MEMORY[0x28223BE20](v41);
    v42 = v49;
    *(&v46 - 6) = v48;
    *(&v46 - 5) = v42;
    v43 = v51;
    *(&v46 - 4) = v50;
    *(&v46 - 3) = v43;
    v44 = v53;
    *(&v46 - 2) = v52;
    *(&v46 - 1) = v44;
    v45 = sub_218F90F94(sub_21972C2E4, (&v46 - 8), v29);

    *v47 = v45;
    return;
  }

  v25 = *(v10 + 16);
  v24 = v10 + 16;
  v26 = *(v24 + 64);
  v46 = v22;
  v27 = v22 + ((v26 + 32) & ~v26);
  v54 = *(v24 + 56);
  v55 = v25;
  v56 = v24;
  v28 = (v24 - 8);
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    v30 = v57;
    v55(v12, v27, v57);
    v31 = sub_219BF2084();
    (*v28)(v12, v30);
    v32 = *(v31 + 16);
    v33 = v29[2];
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v34 <= v29[3] >> 1)
    {
      if (*(v31 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v36 = v33 + v32;
      }

      else
      {
        v36 = v33;
      }

      v29 = sub_218855C7C(isUniquelyReferenced_nonNull_native, v36, 1, v29);
      if (*(v31 + 16))
      {
LABEL_18:
        v37 = (v29[3] >> 1) - v29[2];
        sub_219BF3C84();
        if (v37 < v32)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v38 = v29[2];
          v39 = __OFADD__(v38, v32);
          v40 = v38 + v32;
          if (v39)
          {
            goto LABEL_29;
          }

          v29[2] = v40;
        }

        goto LABEL_8;
      }
    }

    if (v32)
    {
      goto LABEL_27;
    }

LABEL_8:
    v27 += v54;
    if (!--v23)
    {

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_21972AC1C@<X0>(const char *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v71 = a6;
  v72 = a2;
  v73 = a3;
  v74 = a5;
  v75 = a7;
  v76 = a4;
  v8 = sub_219BF1DF4();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF1D54();
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x28223BE20](v11);
  v63 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F700C(0);
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x28223BE20](v13);
  v68 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF1AD4();
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D83D88];
  sub_21972C350(0, &qword_280E90EB0, MEMORY[0x277D32F30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v59 - v20;
  sub_21972C350(0, &unk_280EE34A0, MEMORY[0x277D2D148], v18);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v59 - v23;
  v25 = sub_219BF3C84();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v29, a1, v25, v27);
  v30 = (*(v26 + 88))(v29, v25);
  if (v30 == *MEMORY[0x277D34128])
  {
    (*(v26 + 96))(v29, v25);
    v77 = v72;
    v78 = v73;
    v31 = sub_219BEBD44();
    (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
    sub_2195763E4();
    v32 = v75;
    sub_219BEE214();
    swift_unknownObjectRelease();
    sub_21972C3B4(v24, &unk_280EE34A0, MEMORY[0x277D2D148]);
    v33 = type metadata accessor for MagazineFeedModel(0);
LABEL_3:
    swift_storeEnumTagMultiPayload();
    return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  }

  v59[1] = a1;
  v60 = v10;
  v35 = v72;
  v36 = v73;
  if (v30 == *MEMORY[0x277D34108])
  {
    (*(v26 + 96))(v29, v25);
    v37 = *v29;
    v77 = v35;
    v78 = v36;
    v38 = sub_219BF0744();
    (*(*(v38 - 8) + 56))(v21, 1, 1, v38);
    sub_2195763E4();
    v39 = v75;
    sub_219BEE1A4();

    sub_21972C3B4(v21, &qword_280E90EB0, MEMORY[0x277D32F30]);
    v40 = type metadata accessor for MagazineFeedModel(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  }

  if (v30 == *MEMORY[0x277D34100])
  {
    (*(v26 + 96))(v29, v25);
    v32 = v75;
    sub_219BEE184();
    swift_unknownObjectRelease();
    v33 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_3;
  }

  if (v30 == *MEMORY[0x277D34130])
  {
    (*(v26 + 96))(v29, v25);
    v42 = v66;
    v41 = v67;
    (*(v66 + 32))(v17, v29, v67);
    v77 = v35;
    v78 = v36;
    sub_2195763E4();
    v43 = v68;
    sub_219BEE224();
    (*(v42 + 8))(v17, v41);
    v44 = v75;
    (*(v69 + 32))(v75, v43, v70);
    v45 = type metadata accessor for MagazineFeedModel(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  }

  if (v30 == *MEMORY[0x277D34118])
  {
    (*(v26 + 96))(v29, v25);
    v32 = v75;
    sub_219BEE1C4();
    swift_unknownObjectRelease();
    v33 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_3;
  }

  v46 = v75;
  if (v30 == *MEMORY[0x277D340E8])
  {
    (*(v26 + 96))(v29, v25);
    sub_219BEE134();
    swift_unknownObjectRelease();
    v47 = type metadata accessor for MagazineFeedModel(0);
LABEL_21:
    swift_storeEnumTagMultiPayload();
    return (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  }

  if (v30 == *MEMORY[0x277D340F8])
  {
    (*(v26 + 96))(v29, v25);
    v49 = v63;
    v48 = v64;
    v50 = v65;
    (*(v64 + 32))(v63, v29, v65);
    sub_219BEE154();
    (*(v48 + 8))(v49, v50);
    v47 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_21;
  }

  if (v30 == *MEMORY[0x277D34120])
  {
    (*(v26 + 96))(v29, v25);
    v51 = *v29;
    sub_219BEE1E4();

    v47 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_21;
  }

  if (v30 == *MEMORY[0x277D34110])
  {
    (*(v26 + 96))(v29, v25);
    v52 = v60;
    v53 = v61;
    v54 = v62;
    (*(v61 + 32))(v60, v29, v62);
    sub_219BEE114();
    (*(v53 + 8))(v52, v54);
    v47 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_21;
  }

  if (v30 != *MEMORY[0x277D340F0])
  {
    sub_21972C350(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_219C09BA0;
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_219BF7484();
    v56 = v77;
    v57 = v78;
    *(v55 + 56) = MEMORY[0x277D837D0];
    *(v55 + 64) = sub_2186FC3BC();
    *(v55 + 32) = v56;
    *(v55 + 40) = v57;
    MEMORY[0x21CEB8D80]("Unknown format item %s encountered. Please update this switch statement to handle the new case.", v59[0]);
  }

  v58 = type metadata accessor for MagazineFeedModel(0);
  (*(*(v58 - 8) + 56))(v46, 1, 1, v58);
  return (*(v26 + 8))(v29, v25);
}

uint64_t sub_21972B784@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v7 = sub_219BF1D54();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF1DF4();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_21972C350(0, &qword_280E90EB0, MEMORY[0x277D32F30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v49 - v13;
  sub_2186F700C(0);
  v57 = *(v15 - 8);
  v58 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BF1AD4();
  v56 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21972C350(0, &unk_280EE34A0, MEMORY[0x277D2D148], v11);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v49 - v22;
  v24 = sub_219BF3C84();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v28, a1, v24, v26);
  v29 = (*(v25 + 88))(v28, v24);
  if (v29 == *MEMORY[0x277D34128])
  {
    (*(v25 + 96))(v28, v24);
    v30 = sub_219BEBD44();
    v62 = 0;
    v63 = 0;
    (*(*(v30 - 8) + 56))(v23, 1, 1, v30);
    sub_2195763E4();
    sub_219BEE214();
    swift_unknownObjectRelease();
    sub_21972C3B4(v23, &unk_280EE34A0, MEMORY[0x277D2D148]);
    v31 = type metadata accessor for MagazineFeedModel(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v31 - 8) + 56))(a5, 0, 1, v31);
  }

  v49 = a1;
  v33 = a5;
  if (v29 == *MEMORY[0x277D34108])
  {
    (*(v25 + 96))(v28, v24);
    v34 = *v28;
    v35 = sub_219BF0744();
    v62 = 0;
    v63 = 0;
    (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
    sub_2195763E4();
    sub_219BEE1A4();

    sub_21972C3B4(v14, &qword_280E90EB0, MEMORY[0x277D32F30]);
    v36 = type metadata accessor for MagazineFeedModel(0);
LABEL_19:
    swift_storeEnumTagMultiPayload();
    return (*(*(v36 - 8) + 56))(v33, 0, 1, v36);
  }

  if (v29 == *MEMORY[0x277D34100])
  {
    (*(v25 + 96))(v28, v24);
    sub_219BEE184();
    swift_unknownObjectRelease();
    v36 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_19;
  }

  if (v29 == *MEMORY[0x277D34130])
  {
    (*(v25 + 96))(v28, v24);
    v37 = v56;
    (*(v56 + 32))(v20, v28, v18);
    sub_2195763E4();
    v62 = 0;
    v63 = 0;
    sub_219BEE224();
    (*(v37 + 8))(v20, v18);
    (*(v57 + 32))(a5, v17, v58);
    v36 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_19;
  }

  if (v29 == *MEMORY[0x277D34118])
  {
    (*(v25 + 96))(v28, v24);
    sub_219BEE1C4();
    swift_unknownObjectRelease();
    v36 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_19;
  }

  if (v29 == *MEMORY[0x277D340E8])
  {
    (*(v25 + 96))(v28, v24);
    sub_219BEE134();
    swift_unknownObjectRelease();
    v36 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_19;
  }

  if (v29 == *MEMORY[0x277D340F8])
  {
    (*(v25 + 96))(v28, v24);
    v39 = v53;
    v38 = v54;
    v40 = v55;
    (*(v54 + 32))(v53, v28, v55);
    sub_219BEE154();
    (*(v38 + 8))(v39, v40);
    v36 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_19;
  }

  if (v29 == *MEMORY[0x277D34120])
  {
    (*(v25 + 96))(v28, v24);
    v41 = *v28;
    sub_219BEE1E4();

    v36 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_19;
  }

  if (v29 == *MEMORY[0x277D34110])
  {
    (*(v25 + 96))(v28, v24);
    v43 = v50;
    v42 = v51;
    v44 = v52;
    (*(v51 + 32))(v50, v28, v52);
    sub_219BEE114();
    (*(v42 + 8))(v43, v44);
    v36 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_19;
  }

  if (v29 != *MEMORY[0x277D340F0])
  {
    sub_21972C350(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_219C09BA0;
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_219BF7484();
    v46 = v62;
    v47 = v63;
    *(v45 + 56) = MEMORY[0x277D837D0];
    *(v45 + 64) = sub_2186FC3BC();
    *(v45 + 32) = v46;
    *(v45 + 40) = v47;
    MEMORY[0x21CEB8D80]("Unknown slot item %s encountered. Please update this switch statement to handle the new case.", v49);
  }

  v48 = type metadata accessor for MagazineFeedModel(0);
  (*(*(v48 - 8) + 56))(v33, 1, 1, v48);
  return (*(v25 + 8))(v28, v24);
}

uint64_t sub_21972C308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21972C350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21972C3B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21972C350(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21972C434()
{
  v1 = v0[1];
  v2 = sub_21972CB10(*v0, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header);
  v3 = sub_21972CB10(v1, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer);
  sub_2191ED57C(v3);
  return v2;
}

uint64_t sub_21972C4CC(uint64_t a1)
{
  v2 = sub_21972CE80();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_21972C508(uint64_t a1)
{
  v2 = sub_218B201C0();

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21972C54C(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer(0);
  v49 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE9834();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v9 + 104;
  v14 = *(v9 + 104);
  v14(v12, *MEMORY[0x277D6E758], v8, v10);
  v15 = sub_219BEE054();
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v44 = v17;
  v17(v12, v8);
  v18 = *(v15 + 16);
  v46 = a1;
  if (v18)
  {
    v40[0] = v14;
    v40[1] = v13;
    v41 = v12;
    v42 = v16;
    v43 = v8;
    v50 = MEMORY[0x277D84F90];
    sub_218C35470(0, v18, 0);
    v19 = v15;
    v20 = v50;
    v48 = sub_219BF00D4();
    v21 = *(v48 - 8);
    v47 = *(v21 + 16);
    v22 = v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v23 = *(v21 + 72);
    do
    {
      v47(v7, v22, v48);
      v50 = v20;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_218C35470((v24 > 1), v25 + 1, 1);
        v20 = v50;
      }

      *(v20 + 16) = v25 + 1;
      sub_21972CAA8(v7, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header);
      v22 += v23;
      --v18;
    }

    while (v18);

    a1 = v46;
    v8 = v43;
    v12 = v41;
    (v40[0])(v41, *MEMORY[0x277D6E750], v43);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
    (v14)(v12, *MEMORY[0x277D6E750], v8);
  }

  v26 = sub_219BEE054();
  v44(v12, v8);
  v27 = *(v26 + 16);
  v28 = v45;
  if (v27)
  {
    v50 = MEMORY[0x277D84F90];
    sub_218C35420(0, v27, 0);
    v29 = v50;
    v48 = sub_219BF00D4();
    v30 = *(v48 - 8);
    v31 = *(v30 + 16);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v47 = v26;
    v33 = v26 + v32;
    v34 = *(v30 + 72);
    do
    {
      v31(v28, v33, v48);
      v50 = v29;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_218C35420((v35 > 1), v36 + 1, 1);
        v29 = v50;
      }

      *(v29 + 16) = v36 + 1;
      sub_21972CAA8(v28, v29 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v36, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer);
      v33 += v34;
      --v27;
    }

    while (v27);
    v37 = sub_219BEE074();
    (*(*(v37 - 8) + 8))(v46, v37);
  }

  else
  {

    v38 = sub_219BEE074();
    (*(*(v38 - 8) + 8))(a1, v38);
  }

  return v20;
}

uint64_t sub_21972CAA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21972CB10(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v29 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_219BF00D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v33 = MEMORY[0x277D84F90];
    sub_218C34270(0, v14, 0);
    v15 = v33;
    v16 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    v26 = (v11 + 32);
    v27 = v17;
    v18 = (v11 + 16);
    v19 = (v11 + 8);
    do
    {
      v20 = v29;
      sub_21972CDB8(v16, v9, v29);
      v21 = v28;
      sub_21972CDB8(v9, v28, v20);
      (*v26)(v13, v21, v10);
      sub_21972CE20(v9, v20);
      v33 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_218C34270((v22 > 1), v23 + 1, 1);
      }

      v31 = v10;
      v32 = sub_21897FB18();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
      (*v18)(boxed_opaque_existential_1, v13, v10);
      v15 = v33;
      *(v33 + 16) = v23 + 1;
      sub_2186CB1F0(&v30, v15 + 40 * v23 + 32);
      (*v19)(v13, v10);
      v16 += v27;
      --v14;
    }

    while (v14);
  }

  return v15;
}

uint64_t sub_21972CDB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21972CE20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21972CE80()
{
  result = qword_27CC1E640;
  if (!qword_27CC1E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E640);
  }

  return result;
}

void sub_21972CF04(uint64_t a1)
{
  if (!qword_280E920E0)
  {
    type metadata accessor for SportsStandingsTagFeedGroupConfigData(255);
    sub_219730318(&qword_280E98A78, type metadata accessor for SportsStandingsTagFeedGroupConfigData, &unk_219CC95D0);
    sub_219730318(&qword_280E98A80, type metadata accessor for SportsStandingsTagFeedGroupConfigData, &unk_219CC95A8);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E920E0);
    }
  }
}

uint64_t type metadata accessor for SportsStandingsTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280E9E8B0;
  if (!qword_280E9E8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21972D030(uint64_t a1)
{
  sub_21972CF04(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SportsStandingsTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510, MEMORY[0x277D33778], 1);
      if (v3 <= 0x3F)
      {
        sub_2186C709C(319, qword_280EBA370, &protocol descriptor for SportsFavoritesServiceType, 1);
        if (v4 <= 0x3F)
        {
          sub_2186C709C(319, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
          if (v5 <= 0x3F)
          {
            sub_2186C709C(319, qword_280EA48C0, &protocol descriptor for SportsConfiguringDataServiceType, 0);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21972D178(uint64_t a1)
{
  v3 = type metadata accessor for SportsStandingsTagFeedGroupEmitter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;
  v26 = a1;
  sub_219BF43B4();
  sub_219BE3204();
  v22 = v1;
  v23 = type metadata accessor for SportsStandingsTagFeedGroupEmitter;
  sub_219730360(v1, v6, type metadata accessor for SportsStandingsTagFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v24 = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_21972E0F4(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_21972FA98(0, &unk_280E8EE60, MEMORY[0x277D344C0], MEMORY[0x277D83940]);
  sub_219BE2F64();

  v11 = v23;
  sub_219730360(v1, v6, v23);
  v12 = swift_allocObject();
  sub_21972E0F4(v6, v12 + v7);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v14 = v22;
  sub_219730360(v22, v6, v11);
  v15 = swift_allocObject();
  sub_21972E0F4(v6, v15 + v7);
  *(v15 + v8) = a1;

  v16 = sub_219BE2E54();
  sub_218A59C84(0);
  sub_219BE2F64();

  sub_219730360(v14, v6, v11);
  v17 = swift_allocObject();
  sub_21972E0F4(v6, v17 + v7);
  v18 = sub_219BE2E54();
  v19 = sub_219BE3064();

  return v19;
}

uint64_t sub_21972D4EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21972CF04(0);
  v6 = v5;
  v7 = swift_allocBox();
  result = (*(*(v6 - 8) + 16))(v8, v2 + *(a1 + 20), v6);
  *a2 = v7 | 0x4000000000000002;
  return result;
}

uint64_t sub_21972D57C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  a2[3] = type metadata accessor for SportsStandingsTagFeedGroupKnobs(0);
  a2[4] = sub_219730318(&qword_280EA4708, type metadata accessor for SportsStandingsTagFeedGroupKnobs, &unk_219CD2FEC);
  a2[5] = sub_219730318(&qword_27CC1E680, type metadata accessor for SportsStandingsTagFeedGroupKnobs, &unk_219CD2FC4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219730360(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
}

uint64_t sub_21972D644(uint64_t a1)
{
  type metadata accessor for SportsStandingsTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  v1 = sub_219BEE964();
  v2 = MEMORY[0x277D84560];
  sub_21972FA98(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  sub_21972FA98(0, &qword_280E8B8A0, MEMORY[0x277D32F00], v2);
  v8 = sub_219BF0644();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277D32EF8], v8);
  v12 = sub_2194B3180(v11);
  swift_setDeallocating();
  (*(v9 + 8))(v11 + v10, v8);
  swift_deallocClassInstance();
  *(v7 + v6) = v12;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277D322C8], v4);
  sub_2191EDA0C(v7);
  return v1;
}

uint64_t sub_21972D8F4@<X0>(uint64_t *a2@<X8>)
{
  sub_21972FA98(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_21972CF04(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218F6B68C(inited + 32, sub_2188317B0);
  sub_21972FA98(0, &qword_27CC1E688, type metadata accessor for SportsStandingsTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_2197303C8();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_21972DA80(uint64_t a1)
{
  sub_219730318(&unk_27CC1E660, type metadata accessor for SportsStandingsTagFeedGroupEmitter, &unk_219CA00FC);

  return sub_219BE2324();
}

uint64_t sub_21972DC34()
{
  v1 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_219BF43B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BEF0B4();
  v6 = *(v22 + 16);

  v7 = *(v6 + 32);

  v8 = [v7 backingTag];

  v9 = [v8 asSports];
  swift_unknownObjectRelease();
  if (v9)
  {
    v21[1] = v0;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v10 = qword_280F61708;
    sub_2186F20D4(0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09BA0;
    v22 = 0;
    v23 = 0xE000000000000000;
    v24 = v9;
    sub_2186D85DC();
    sub_219BF7484();
    v13 = v22;
    v12 = v23;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_2186FC3BC();
    *(v11 + 32) = v13;
    *(v11 + 40) = v12;
    v14 = sub_219BF6214();
    sub_219BE5314("Sports standings fetching for backing tag=%{public}@", 52, 2, &dword_2186C1000, v10, v14, v11);

    sub_219BDC8D4();
    sub_219BDC8B4();
    sub_219BDC6B4();
    sub_219BDC8A4();

    if (v22 == 1)
    {
      v15 = sub_219BF6214();
      sub_219BE5314("Sports standings fetching debug setting 'useAllFetchForStandingsAndBrackets' enabled; using ALL request", 103, 2, &dword_2186C1000, v10, v15, MEMORY[0x277D84F90]);
      swift_unknownObjectRetain();
      sub_219BF4CE4();
      sub_219BF49F4();
      swift_allocObject();
      *v5 = sub_219BF49D4();
      v16 = MEMORY[0x277D343F0];
    }

    else
    {
      sub_2189D2C8C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_219C146A0;
      *(v19 + 32) = v9;
      swift_unknownObjectRetain();
      sub_219BF4CE4();
      sub_219BF4CA4();
      v16 = MEMORY[0x277D34400];
    }

    (*(v3 + 104))(v5, *v16, v2);
    sub_21972FA98(0, &qword_27CC176F8, MEMORY[0x277D34408], MEMORY[0x277D6CF30]);
    swift_allocObject();
    v17 = sub_219BE3014();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = sub_219BEEDD4();
    sub_219730318(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D323A0], v17);
    swift_willThrow();
  }

  return v17;
}

uint64_t sub_21972E0F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsStandingsTagFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21972E1F8(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind(0);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21972FA98(0, &unk_280E8FE40, MEMORY[0x277D34408], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v47 - v6;
  v47 = type metadata accessor for SportsConfiguringDataVisualizationRequest(0);
  MEMORY[0x28223BE20](v47);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF0BD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SportsStandingsTagFeedGroupEmitter(0);
  v52 = v2;
  type metadata accessor for SportsStandingsTagFeedGroupKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  v13 = *(v10 + 8);
  v13(v12, v9);
  v50 = v54;
  sub_219BEF134();
  sub_219BEF524();
  v13(v12, v9);
  v49 = v54;
  sub_219BEF0B4();
  v14 = *(v54 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v15 = [v14 alternativeFeedDescriptor];
  if (v15 && (v16 = v15, v17 = [v15 feedConfiguration], v16, v17 == 4))
  {
    v18 = 18;
  }

  else
  {
    v18 = 11;
  }

  v19 = sub_219BF43B4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v7, v51, v19);
  (*(v20 + 56))(v7, 0, 1, v19);
  v21 = sub_219BF4F64();
  v22 = v48;
  (*(*(v21 - 8) + 56))(v48, 5, 6, v21);
  v23 = sub_219BF6394();
  v24 = [v14 alternativeFeedDescriptor];
  v25 = v53;
  if (v24)
  {
    v26 = v24;
    v27 = [v24 feedConfiguration];
  }

  else
  {
    v27 = [v14 feedConfiguration];
  }

  sub_218F6B224(v7, v25);
  v28 = v47;
  sub_219730360(v22, v25 + *(v47 + 20), type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
  v29 = (v25 + *(v28 + 24));
  *v29 = v23;
  v29[1] = v27;
  v30 = sub_219975D48(v18);
  v32 = v31;
  sub_218F6B68C(v22, type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
  sub_2197301F8(v7);
  v33 = (v25 + *(v28 + 28));
  *v33 = v30;
  v33[1] = v32;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_219C0B8C0;
  v35 = *(sub_219BF43A4() + 16);

  v36 = MEMORY[0x277D83B88];
  v37 = MEMORY[0x277D83C10];
  *(v34 + 56) = MEMORY[0x277D83B88];
  *(v34 + 64) = v37;
  *(v34 + 32) = v35;
  *(v34 + 96) = v36;
  *(v34 + 104) = v37;
  v39 = v49;
  v38 = v50;
  *(v34 + 72) = v50;
  *(v34 + 136) = v36;
  *(v34 + 144) = v37;
  *(v34 + 112) = v39;
  sub_219BF6214();
  sub_219BE5314("Sports standings will fetch standings for %ld tags with min=%ld and max=%ld standings", v47, v48, v49);

  MEMORY[0x28223BE20](v40);
  *(&v47 - 2) = v52;
  *(&v47 - 1) = v25;
  sub_219BF4264();
  sub_219BE3204();
  v41 = swift_allocObject();
  *(v41 + 16) = v14;
  *(v41 + 24) = v18;
  *(v41 + 32) = v39;
  *(v41 + 40) = v38;
  v42 = v14;
  v43 = sub_219BE2E54();
  sub_21972FA98(0, &unk_280E8EE60, MEMORY[0x277D344C0], MEMORY[0x277D83940]);
  sub_219BE2F74();

  v44 = sub_219BE2E54();
  v45 = sub_219BE2FD4();

  sub_218F6B68C(v25, type metadata accessor for SportsConfiguringDataVisualizationRequest);
  return v45;
}

uint64_t sub_21972E94C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v55 = a1;
  v6 = MEMORY[0x277D83D88];
  sub_21972FA98(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = &v51 - v8;
  sub_21972FA98(0, &qword_280E90150, MEMORY[0x277D33EC8], v6);
  MEMORY[0x28223BE20](v9 - 8);
  v64 = &v51 - v10;
  sub_21972FA98(0, &qword_280E91A70, sub_2189AD5C8, v6);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = &v51 - v12;
  v13 = sub_219BF2AB4();
  v73 = *(v13 - 8);
  v74 = v13;
  MEMORY[0x28223BE20](v13);
  v69 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21972FA98(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v6);
  MEMORY[0x28223BE20](v15 - 8);
  v54 = &v51 - v16;
  v71 = sub_219BF2034();
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v56 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SportsStandingsTagFeedGroupConfigData(0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_219BF4F04();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF0B4();
  v24 = *(v78 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v25 = [v24 backingTag];

  v65 = v25;
  v26 = [v25 asSports];
  sub_219BF4EE4();
  sub_21972FA98(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  sub_219BF3E84();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_219C09BA0;
  v53 = v27;
  v67 = v23;
  v76 = v23;
  sub_21894BFA4(sub_2197301D8, v75, a2);
  v62 = v3;
  v28 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v28);
  sub_218F0BB90(v28);
  sub_219BF3E74();
  v29 = type metadata accessor for SportsStandingsTagFeedGroupEmitter(0);
  v30 = *(v29 + 28);
  v52 = v4;
  v31 = *(v4 + v30 + 24);
  v59 = *(v4 + v30 + 32);
  v60 = v31;
  v58 = __swift_project_boxed_opaque_existential_1((v4 + v30), v31);
  sub_21972CF04(0);
  v66 = v21;
  sub_219BEDD14();
  v57 = *(v19 + 28);
  v32 = sub_219BEC004();
  (*(*(v32 - 8) + 56))(v54, 1, 1, v32);
  sub_219A95188(v28);
  sub_219A95188(v28);
  sub_219A951A0(v28);
  sub_219A951B8(v28);
  sub_219A952CC(v28);
  sub_219A952E4(v28);
  sub_219A953F8(v28);
  v33 = v56;
  v34 = v63;
  sub_219BF2024();
  v35 = *(v29 + 24);
  sub_2189AD5C8(0);
  v37 = v36;
  v38 = *(v36 - 8);
  v39 = v61;
  (*(v38 + 16))(v61, v52 + v35, v36);
  (*(v38 + 56))(v39, 0, 1, v37);
  sub_219BEF0B4();
  v40 = *(v78 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v41 = sub_219BF35D4();
  (*(*(v41 - 8) + 56))(v64, 1, 1, v41);
  LOBYTE(v77) = 18;
  sub_21972F5E8(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v42 = *(v77 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v43 = sub_219BF2774();
  (*(*(v43 - 8) + 56))(v34, 1, 1, v43);
  v44 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v44 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v45 = v69;
  sub_219BF2A84();
  v46 = v66;
  v47 = v57;
  v48 = sub_219BF2194();
  swift_unknownObjectRelease();
  (*(v73 + 8))(v45, v74);
  (*(v68 + 8))(v33, v71);
  v49 = sub_219BF1934();
  (*(*(v49 - 8) + 8))(&v46[v47], v49);
  (*(v70 + 8))(v67, v72);
  return v48;
}

uint64_t sub_21972F3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218A59C84(0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TagFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21972F668(a1, a3, v10);
  sub_219730360(v10, v7, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_21972FA98(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v11 = sub_219BE3014();
  sub_218F6B68C(v10, type metadata accessor for TagFeedGroup);
  return v11;
}

uint64_t sub_21972F550(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsStandingsTagFeedGroupEmitter(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_21972F3BC(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_21972F5E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_21972F668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v25 = a3;
  sub_21972FA98(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v24 = v21 - v5;
  v6 = sub_219BEF554();
  MEMORY[0x28223BE20](v6 - 8);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = sub_219BF1904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BED8D4();
  v13 = *(v22 - 8);
  v14 = MEMORY[0x28223BE20](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9, v14);
  type metadata accessor for SportsStandingsTagFeedGroupEmitter(0);
  sub_21972CF04(0);
  v17 = sub_219BEDCB4();
  v21[2] = v18;
  v21[3] = v17;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AD5C8(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v19 = sub_219BEE5D4();
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  sub_219BED854();
  (*(v13 + 32))(v25, v16, v22);
  type metadata accessor for TagFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_21972FA98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21972FAFC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, int64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = sub_219BF4254();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v10 = qword_280F61708;
  sub_2186F20D4(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C0B8C0;
  v12 = v9 >> 62;
  v41 = a5;
  v43 = v10;
  if (v9 >> 62)
  {
    v13 = sub_219BF7214();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D83C10];
  *(v11 + 56) = MEMORY[0x277D83B88];
  *(v11 + 64) = v14;
  *(v11 + 32) = v13;
  v15 = [objc_msgSend(a1 backingTag)];
  swift_unknownObjectRelease();
  v16 = sub_219BF5414();
  v18 = v17;

  v19 = MEMORY[0x277D837D0];
  *(v11 + 96) = MEMORY[0x277D837D0];
  v20 = sub_2186FC3BC();
  *(v11 + 104) = v20;
  *(v11 + 72) = v16;
  *(v11 + 80) = v18;
  v21 = sub_2199765A8(a2);
  *(v11 + 136) = v19;
  *(v11 + 144) = v20;
  *(v11 + 112) = v21;
  *(v11 + 120) = v22;
  v23 = sub_219BF6214();
  sub_219BE5314("Sports standings found %ld configured standings for tag %{public}@, kind %{public}@", 83, 2, &dword_2186C1000, v43, v23, v11);

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v12)
  {
    if (v9 < 0)
    {
      v19 = v9;
    }

    else
    {
      v19 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = sub_219BF7214();
    if (sub_219BF7214() < 0)
    {
      goto LABEL_52;
    }

    if (a2 >= a3)
    {
      v26 = a3;
    }

    else
    {
      v26 = a2;
    }

    if (a2 < 0)
    {
      v26 = a3;
    }

    if (a3)
    {
      v16 = v26;
    }

    else
    {
      v16 = 0;
    }

    v24 = sub_219BF7214();
  }

  else
  {
    v24 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24 >= a3)
    {
      v25 = a3;
    }

    else
    {
      v25 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a3)
    {
      v16 = v25;
    }

    else
    {
      v16 = 0;
    }
  }

  if (v24 < v16)
  {
    goto LABEL_50;
  }

  if ((v9 & 0xC000000000000001) != 0 && v16)
  {
    sub_219BF46E4();

    v27 = 0;
    do
    {
      v28 = v27 + 1;
      sub_219BF7334();
      v27 = v28;
    }

    while (v16 != v28);
  }

  else
  {
  }

  if (v12)
  {
    a3 = sub_219BF7564();
    a2 = v29;
    v19 = v30;
    v16 = v31;
  }

  else
  {
    v19 = 0;
    a3 = v9 & 0xFFFFFFFFFFFFFF8;
    a2 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
    v16 = (2 * v16) | 1;
  }

  v32 = (v16 >> 1) - v19;
  if (__OFSUB__(v16 >> 1, v19))
  {
    goto LABEL_51;
  }

  if (v32 < a4)
  {
    v33 = sub_219BEEDD4();
    sub_219730318(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    *v34 = a4;
    v34[1] = v32;
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D32400], v33);
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v39 = swift_dynamicCastClass();
  if (!v39)
  {
    swift_unknownObjectRelease();
    v39 = MEMORY[0x277D84F90];
  }

  v40 = *(v39 + 16);

  if (v40 != v32)
  {
LABEL_53:
    swift_unknownObjectRelease_n();
LABEL_40:
    sub_218B675D4(a3, a2, v19, v16);
    v37 = v36;
    v38 = v41;
LABEL_46:
    result = swift_unknownObjectRelease();
    goto LABEL_47;
  }

  v37 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  v38 = v41;
  if (!v37)
  {
    v37 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

LABEL_47:
  *v38 = v37;
  return result;
}

double sub_21972FF40(uint64_t a1)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61708;
  v2 = sub_219BF61F4();
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186C709C(0, &qword_280E8B580, MEMORY[0x277D84948], 1);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("Sports standings failed to fetch standings, error=%{public}@", 60, 2, &dword_2186C1000, v1, v2, v3);

  return result;
}

uint64_t sub_219730070@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_219BF3484();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  *(v7 + 16) = sub_219BF46B4();
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D33E08], v3);
  sub_219BF1AC4();
  v8 = *MEMORY[0x277D34130];
  v9 = sub_219BF3C84();
  return (*(*(v9 - 8) + 104))(a2, v8, v9);
}

uint64_t sub_2197301F8(uint64_t a1)
{
  sub_21972FA98(0, &unk_280E8FE40, MEMORY[0x277D34408], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219730284()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + *(type metadata accessor for SportsStandingsTagFeedGroupEmitter(0) + 40) + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 8))(v1, ObjectType, v3);
}

uint64_t sub_219730318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219730360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2197303C8()
{
  result = qword_27CC1E690;
  if (!qword_27CC1E690)
  {
    sub_21972FA98(255, &qword_27CC1E688, type metadata accessor for SportsStandingsTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E690);
  }

  return result;
}

uint64_t sub_219730450@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219730C5C(0, &qword_27CC1E6B8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SportsLinksTagFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219730BA4();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_219730CC0(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_219730BF8(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2197306FC(uint64_t a1)
{
  v2 = sub_219730BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219730738(uint64_t a1)
{
  v2 = sub_219730BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197307B4(void *a1)
{
  sub_219730C5C(0, &qword_27CC1E6C8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219730BA4();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_219730CC0(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219730A14(uint64_t a1)
{
  result = sub_219730CC0(&unk_27CC1C660, type metadata accessor for SportsLinksTagFeedGroup, &unk_219CA034C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219730A6C(void *a1)
{
  a1[1] = sub_219730CC0(&qword_27CC1E6B0, type metadata accessor for SportsLinksTagFeedGroup, &unk_219CA0278);
  a1[2] = sub_219730CC0(&qword_27CC1C778, type metadata accessor for SportsLinksTagFeedGroup, &unk_219CA0324);
  result = sub_219730CC0(&qword_27CC1C888, type metadata accessor for SportsLinksTagFeedGroup, &unk_219CA02FC);
  a1[3] = result;
  return result;
}

uint64_t sub_219730B18(uint64_t a1)
{
  v2 = sub_219730CC0(&qword_27CC1E6B0, type metadata accessor for SportsLinksTagFeedGroup, &unk_219CA0278);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_219730BA4()
{
  result = qword_27CC1E6C0;
  if (!qword_27CC1E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E6C0);
  }

  return result;
}

uint64_t sub_219730BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsLinksTagFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219730C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219730BA4();
    v7 = a3(a1, &type metadata for SportsLinksTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219730CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219730D1C()
{
  result = qword_27CC1E6D0;
  if (!qword_27CC1E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E6D0);
  }

  return result;
}

unint64_t sub_219730D74()
{
  result = qword_27CC1E6D8;
  if (!qword_27CC1E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E6D8);
  }

  return result;
}

unint64_t sub_219730DCC()
{
  result = qword_27CC1E6E0;
  if (!qword_27CC1E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E6E0);
  }

  return result;
}

void *sub_219730E20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
    result = sub_219BE1E34();
    if (v9)
    {
      v6 = type metadata accessor for SearchMoreModule();
      v7 = swift_allocObject();
      sub_2186CB1F0(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_2186CB1F0(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &protocol witness table for SearchMoreModule;
      *a2 = v7;
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

double sub_219730F34()
{
  type metadata accessor for SearchMoreViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC1E6E8, &protocol descriptor for SearchMoreStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1E6F0, &protocol descriptor for SearchMoreRouterType, 1);
  sub_219BE2914();
  type metadata accessor for SearchMoreRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC1E6F8, &protocol descriptor for SearchMoreEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1E700, &protocol descriptor for SearchMoreInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1E708, &protocol descriptor for SearchMoreTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1E710, &protocol descriptor for SearchMoreDataManagerType, 0);
  sub_219BE2914();

  sub_2189877E8(0);
  sub_219BE2904();

  type metadata accessor for SearchMoreBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC1E718, &protocol descriptor for SearchMoreSectionFactoryType, 1);
  sub_219BE2914();

  sub_219737054(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2197378EC(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219737AE0(0);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_219737140(0);
  sub_219BE2904();

  sub_219737A28(0);
  sub_219BE2904();

  sub_2197375C8(0);
  sub_219BE2904();

  type metadata accessor for SearchMoreBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_219737B74(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  sub_219BE2904();

  sub_21973727C(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2197373F8(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219737680(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219737800(0);
  sub_219BE2904();

  type metadata accessor for SearchMoreBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for SearchMoreBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_219737CB0(0);
  sub_219BE2904();

  sub_219737D44(0);
  sub_219BE2904();

  sub_219737E30(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_219737EC4(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  sub_219BE2914();

  sub_219BE9534();
  sub_219BE2904();

  sub_219BE9564();
  sub_219BE2904();

  sub_219737FB0(0, &qword_27CC1E7F8, &qword_27CC1E800, &unk_219C6E4B0, MEMORY[0x277D30270]);
  sub_219BE2904();

  sub_219737FB0(0, &qword_27CC1E818, &qword_27CC1E820, &unk_219C6E488, MEMORY[0x277D2FF78]);
  sub_219BE2904();

  return result;
}

char *sub_219731B20(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (v67)
  {
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (v65 == 2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1E6E8, &protocol descriptor for SearchMoreStylerType, 1);
  result = sub_219BE1E34();
  if (!v64)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1E6F8, &protocol descriptor for SearchMoreEventHandlerType, 0);
  result = sub_219BE1E34();
  if (!v61)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737B74(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5150, MEMORY[0x277D6DA40], 0);
  result = sub_219BE1E34();
  v4 = v59;
  if (!v59)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v46 = v60;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v44 = v62;
  v45 = v65;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD80, MEMORY[0x277D345A0], 1);
  result = sub_219BE1E34();
  if (!v56)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v43 = v3;
  sub_219BF4FF4();
  swift_allocObject();
  v5 = sub_219BF4FE4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  v6 = v54;
  if (!v54)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v41 = v66;
  v42 = v61;
  v36 = v53;
  v40 = v55;
  v39 = v56;
  v38 = v57;
  v37 = v58;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1DF4();
  v7 = v52;
  if (v52 != 2)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(&v63, v64);
    v35[2] = v35;
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for SearchMoreStyler();
    v50 = v14;
    v51 = &off_282A610B8;
    v49[0] = v13;
    v15 = type metadata accessor for SearchMoreViewController();
    v16 = objc_allocWithZone(v15);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
    v35[1] = v35;
    v18 = MEMORY[0x28223BE20](v17);
    v20 = (v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v48[4] = &off_282A610B8;
    v48[3] = v14;
    v48[0] = v22;
    *&v16[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_searchContentType] = v41;
    v16[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_searchContentSource] = v45 & 1;
    sub_218718690(v48, &v16[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_styler]);
    v23 = &v16[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_eventHandler];
    v24 = v44;
    *v23 = v42;
    v23[1] = v24;
    v25 = v43;
    *&v16[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_blueprintViewController] = v43;
    v26 = &v16[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_toolbarManager];
    v27 = v46;
    *v26 = v4;
    v26[1] = v27;
    *&v16[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_sharingActivityProviderFactory] = v5;
    v28 = &v16[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_searchRequestData];
    *v28 = v36;
    *(v28 + 1) = v6;
    v29 = v39;
    *(v28 + 2) = v40;
    *(v28 + 3) = v29;
    *(v28 + 4) = v38;
    v28[40] = v37 & 1;
    v16[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_refreshRecentSearch] = v7 & 1;
    v47.receiver = v16;
    v47.super_class = v15;
    swift_unknownObjectRetain();
    v30 = v25;
    swift_unknownObjectRetain();

    v31 = objc_msgSendSuper2(&v47, sel_initWithNibName_bundle_, 0, 0);
    *(*(v31 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_eventHandler) + 24) = &off_282A58B88;
    swift_unknownObjectWeakAssign();
    v32 = *(v31 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_blueprintViewController);
    v33 = v31;
    v34 = v32;
    sub_219BE8744();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v48);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(&v63);
    return v33;
  }

LABEL_21:
  __break(1u);
  return result;
}

void *sub_21973223C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for BaseStyler(0);
    v20[3] = v10;
    v11 = sub_2197386EC(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for SearchMoreStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[5] = v10;
    v13[6] = v11;
    v13[2] = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v12;
    a2[4] = &off_282A610B8;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21973249C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  result = sub_219BE1E34();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C(0);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for SearchMoreRouter();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v11, v8 + 24);
    *(v8 + 64) = v5;
    result = sub_2186CB1F0(&v9, v8 + 72);
    *(v8 + 112) = v6;
    a2[3] = v7;
    a2[4] = &off_282A43390;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2197325F8(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchMoreViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_219732678@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1E700, &protocol descriptor for SearchMoreInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v26;
  if (!v26)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC3D88, &protocol descriptor for RecentSearchManagerType, 0);
  result = sub_219BE1E34();
  v7 = v24;
  if (!v24)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1E6F0, &protocol descriptor for SearchMoreRouterType, 1);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1E708, &protocol descriptor for SearchMoreTrackerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v10 = MEMORY[0x28223BE20](v9);
    v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = sub_219738734(v5, v6, v7, v8, *v12, *v17);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    *a2 = v19;
    a2[1] = &off_282A57A88;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_219732994@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1E710, &protocol descriptor for SearchMoreDataManagerType, 0);
  result = sub_219BE1E34();
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737054(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchMoreBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197375C8(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737FB0(0, &qword_27CC1E7F8, &qword_27CC1E800, &unk_219C6E4B0, MEMORY[0x277D30270]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737FB0(0, &qword_27CC1E818, &qword_27CC1E820, &unk_219C6E488, MEMORY[0x277D2FF78]);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    sub_219738658(0);
    v10 = swift_allocObject();
    v10[3] = 0;
    swift_unknownObjectWeakInit();
    v10[6] = v11;
    v10[7] = v12;
    v10[4] = v5;
    v10[5] = v6;
    v10[8] = v7;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = v8;
    v10[12] = v9;
    *(v11 + OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_delegate + 8) = &off_282A945B8;
    result = swift_unknownObjectWeakAssign();
    *a2 = v10;
    a2[1] = &off_282A945D0;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_219732C2C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_219BE14C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_219BE14A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  v34 = v5;
  v35 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = result;
  v29 = v13;
  v30 = v10;
  v31 = v8;
  v32 = v7;
  v33 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  v15 = v38;
  if (!v38)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v37[5];
  v17 = v39;
  v28 = v40;
  v18 = v41;
  v27 = v42;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (v37[3])
  {
    v19 = type metadata accessor for SearchMoreTracker();
    v20 = swift_allocObject();
    v21 = v28;
    v22 = v29;
    *(v20 + 16) = v12;
    *(v20 + 24) = v22;
    *(v20 + 32) = v14;
    *(v20 + 40) = v16;
    *(v20 + 48) = v15;
    *(v20 + 56) = v17;
    *(v20 + 64) = v21;
    *(v20 + 72) = v18;
    *(v20 + 80) = v27 & 1;
    sub_218718690(v37, v20 + 88);
    (*(v34 + 104))(v36, *MEMORY[0x277D2F318], v35);

    v23 = v30;
    sub_219BE1484();
    sub_2197386EC(&qword_280EE8010, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
    v24 = v32;
    sub_219BDD1F4();

    (*(v31 + 8))(v23, v24);
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    v25 = v33;
    v33[3] = v19;
    v25[4] = &off_282A52210;
    *v25 = v20;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_219733008@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BED184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (v28 == 255)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  result = sub_219BE1E34();
  if (!v26[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0, &protocol descriptor for SubscriptionServiceType, 0);
  result = sub_219BE1E34();
  v9 = v24;
  if (!v24)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FFB04(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  v21 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218713E34(0);
  result = sub_219BE1E24();
  if (result)
  {
    v11 = result;
    v12 = type metadata accessor for SearchMoreDataManager();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v14 = OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_accessQueue;
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    (*(v5 + 104))(v7, *MEMORY[0x277D851B8], v4);
    v15 = sub_219BF66E4();
    (*(v5 + 8))(v7, v4);
    *&v13[v14] = v15;
    sub_218EDA89C(v27, &v13[OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_resultsStream]);
    sub_218718690(v26, &v13[OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_headlineService]);
    v16 = &v13[OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_subscriptionService];
    v17 = v22;
    *v16 = v9;
    *(v16 + 1) = v17;
    *&v13[OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_feedService] = v10;
    *&v13[OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_feedServiceConfigFetcher] = v11;
    v23.receiver = v13;
    v23.super_class = v12;
    v18 = objc_msgSendSuper2(&v23, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v26);
    result = sub_2193341FC(v27);
    v19 = v21;
    *v21 = v18;
    v19[1] = &off_282A69F50;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_219733384(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20, &protocol descriptor for HeadlineModelFactoryType, 1);
  result = sub_219BE1E34();
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_27CC1E718, &protocol descriptor for SearchMoreSectionFactoryType, 1);
    result = sub_219BE1E34();
    if (v39)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      v33[2] = v33;
      v4 = MEMORY[0x28223BE20](v3);
      v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6, v4);
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v33[1] = v33;
      v9 = MEMORY[0x28223BE20](v8);
      v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11, v9);
      v13 = *v6;
      v14 = type metadata accessor for HeadlineModelFactory();
      v37[3] = v14;
      v37[4] = &off_282A8B8E8;
      v37[0] = v13;
      v35 = &type metadata for SearchMoreSectionFactory;
      v36 = &off_282A9B958;
      v15 = swift_allocObject();
      v34[0] = v15;
      v16 = v11[1];
      v15[1] = *v11;
      v15[2] = v16;
      v17 = v11[3];
      v15[3] = v11[2];
      v15[4] = v17;
      type metadata accessor for SearchMoreBlueprintModifierFactory();
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v37, v14);
      v20 = MEMORY[0x28223BE20](v19);
      v22 = (v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22, v20);
      v24 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v25 = MEMORY[0x28223BE20](v24);
      v27 = (v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v28 + 16))(v27, v25);
      v29 = *v22;
      v18[5] = v14;
      v18[6] = &off_282A8B8E8;
      v18[2] = v29;
      v18[10] = &type metadata for SearchMoreSectionFactory;
      v18[11] = &off_282A9B958;
      v30 = swift_allocObject();
      v18[7] = v30;
      v31 = v27[1];
      v30[1] = *v27;
      v30[2] = v31;
      v32 = v27[3];
      v30[3] = v27[2];
      v30[4] = v32;
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(v38);
      __swift_destroy_boxed_opaque_existential_1(v40);
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2197337D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20, &protocol descriptor for HeadlineModelFactoryType, 1);
  result = sub_219BE1E34();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEE244();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  if (v7)
  {
    a2[3] = &type metadata for SearchMoreSectionFactory;
    a2[4] = &off_282A9B958;
    v6 = swift_allocObject();
    *a2 = v6;
    result = sub_2186CB1F0(&v9, (v6 + 2));
    v6[7] = v5;
    v6[8] = v7;
    v6[9] = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219733930(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219737140(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_219737054(0);
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}