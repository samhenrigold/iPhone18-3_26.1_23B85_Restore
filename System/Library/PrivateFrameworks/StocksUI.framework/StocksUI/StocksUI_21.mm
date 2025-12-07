void sub_2206C4258(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_2206C429C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206C4304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206C436C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_2206C43D8()
{
  v1 = *v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277D765F0] object:0];

  sub_22054B9F8((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2206C4504()
{
  sub_2206C43D8();

  return swift_deallocClassInstance();
}

double sub_2206C455C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2206C45BC(a1);
  }

  return result;
}

double sub_2206C45BC(uint64_t a1)
{
  (*(*(*v1 + 88) + 56))(a1, *(*v1 + 80));
  sub_2204E57D0(0);
  sub_220483C6C(&qword_281297D48, sub_2204E57D0, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

void sub_2206C46B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2206C53A0(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_22088C6AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    (*(v12 + 16))(v15, a1, v11);
    v18 = (*(v12 + 88))(v15, v11);
    if (v18 == *MEMORY[0x277D6DF98])
    {
      (*(v12 + 8))(v15, v11);
      v19 = *(*v17 + 128);
      sub_2208903FC();
      v20 = sub_22089030C();
      if ((*(*(v20 - 8) + 48))(v10, 1, v20) != 1)
      {
        v21 = *(v17 + v19);
        v22 = swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();
        v23 = v21;

        v24 = swift_allocObject();
        v24[2] = a3;
        v24[3] = a4;
        v24[4] = v22;

        sub_2206C5408(v10);
        return;
      }
    }

    else
    {
      if (v18 != *MEMORY[0x277D6DF90] && v18 != *MEMORY[0x277D6DFA0])
      {
        sub_22089267C();
        __break(1u);
        return;
      }

      swift_unknownObjectRetain();
      sub_22057CE94();
      swift_unknownObjectRelease();
    }
  }
}

void sub_2206C4A18(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = sub_22088AF8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206C53A0(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2206C5464(a1, v12);
    v13 = sub_22089030C();
    if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
    {
      sub_2206C5408(v12);
      sub_22088B6BC();
      sub_22088B71C();

      if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D6D520])
      {
        (*(v5 + 8))(v8, v4);
        sub_2204E6914();
      }

      else
      {

        (*(v5 + 8))(v8, v4);
      }
    }

    else
    {

      sub_2206C5408(v12);
    }
  }
}

double sub_2206C4C3C()
{
  (*(*(*v0 + 88) + 48))(*(*v0 + 80));
  sub_2204E57D0(0);
  sub_220483C6C(&qword_281297D48, sub_2204E57D0, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

uint64_t sub_2206C4D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_220884A6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220884A5C();

  sub_2206C4D30();

  return (*(v4 + 8))(v7, v3);
}

double sub_2206C4E20(uint64_t a1, uint64_t a2)
{
  (*(*(*a1 + 88) + 64))(a2, *(*a1 + 80));
  sub_2204E57D0(0);
  sub_220483C6C(&qword_281297D48, sub_2204E57D0, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

double sub_2206C4F1C(uint64_t a1)
{
  (*(*(*a1 + 88) + 72))(*(*a1 + 80));
  sub_2204E57D0(0);
  sub_220483C6C(&qword_281297D48, sub_2204E57D0, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

double sub_2206C5010(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 88);
  v3 = *(*a1 + 80);
  (*(v2 + 80))(a2, v3, v2);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  sub_2204E57D0(0);
  sub_220483C6C(&qword_281297D48, sub_2204E57D0, MEMORY[0x277D6D890]);

  sub_22088B6DC();

  return result;
}

double sub_2206C5188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v7 = sub_22088C6AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v8 + 104))(v11, *MEMORY[0x277D6DFA0], v7);
    v13 = sub_22088C69C();
    (*(v8 + 8))(v11, v7);
    if (v13)
    {
      v14 = (*(a4 + 72))(a3, a4);
      sub_2204E57D0(0);
      sub_220483C6C(&qword_281297D48, sub_2204E57D0, MEMORY[0x277D6D890]);
      sub_22088B6DC();
    }
  }

  return result;
}

void sub_2206C53A0(uint64_t a1)
{
  if (!qword_2812968B8)
  {
    sub_2204850C0();
    v1 = sub_2208903EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2812968B8);
    }
  }
}

uint64_t sub_2206C5408(uint64_t a1)
{
  sub_2206C53A0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2206C5464(uint64_t a1, uint64_t a2)
{
  sub_2206C53A0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_2206C54C8()
{

  sub_220888FEC();

  return result;
}

double sub_2206C5514(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_2208857BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v8);
  v9 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = *(v3 + 80);
  *(v10 + 3) = *(v3 + 88);
  *(v10 + 4) = v1;
  (*(v5 + 32))(&v10[v9], &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_220888FEC();

  return result;
}

double sub_2206C5688(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22088582C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v8);
  v9 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = *(v3 + 80);
  *(v10 + 3) = *(v3 + 88);
  *(v10 + 4) = v1;
  (*(v5 + 32))(&v10[v9], &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_220888FEC();

  return result;
}

uint64_t objectdestroy_14Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2206C5934(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 32);
  v5 = v2 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return a2(v4, v5);
}

void *sub_2206C59B4(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_dateFormatter;
  v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v11 = sub_22089132C();
  [v10 setDateFormat_];

  *&v4[v9] = v10;
  *&v4[OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessions] = MEMORY[0x277D84F90];
  sub_22046DA2C(a1, &v4[OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_headlineService]);
  *&v4[OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessionDataProvider] = a2;
  sub_22046DA2C(a3, &v4[OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_tagService]);
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

void sub_2206C5BF0(char a1, uint64_t a2)
{
  v3 = v2;
  v8.receiver = v3;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  sub_22088A6AC();
  sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
  v5 = sub_220891D0C();
  *(swift_allocObject() + 16) = v3;
  v6 = v3;
  sub_220888E4C();

  v7 = sub_220888D9C();
  sub_220888E9C();
}

void sub_2206C5D20(uint64_t *a1, char *a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessions;
  swift_beginAccess();
  *&a2[v4] = v3;

  v5 = [a2 tableView];
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];
  }

  else
  {
    __break(1u);
  }
}

double sub_2206C5DC4(uint64_t a1)
{
  sub_2206C8354();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_220899360;
  sub_22089254C();
  MEMORY[0x223D89680](0xD000000000000019, 0x80000002208CE410);
  sub_22058D5E8();
  sub_22089264C();
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_2208929CC();

  return result;
}

void *sub_2206C5F64(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_22088516C();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088549C();
  if (v9 == 1)
  {
    type metadata accessor for SubtitleCell();
    v10 = sub_2208919EC();
    v11 = sub_22088547C();
    v12 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessions;
    swift_beginAccess();
    v13 = *(v3 + v12);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x223D8A700](v11);
      goto LABEL_6;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v13 + 8 * v11 + 32);
LABEL_6:
      v15 = v14;
      swift_endAccess();
      v11 = v10;
      v16 = [v11 textLabel];
      if (v16)
      {
        v17 = v16;
        v18 = *(v3 + OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_dateFormatter);
        sub_22088F19C();
        v19 = sub_22088509C();
        (*(v5 + 8))(v8, v4);
        v20 = [v18 stringFromDate_];

        sub_22089136C();
        v21 = sub_22089132C();

        [v17 setText_];
      }

      v22 = [v11 detailTextLabel];
      if (v22)
      {
        v23 = v22;
        v24 = objc_opt_self();
        v25 = [v24 stringFromByteCount:sub_22088F1AC() countStyle:0];
        if (!v25)
        {
          sub_22089136C();
          v25 = sub_22089132C();
        }

        [v23 setText_];
      }

      [v11 setAccessoryType_];
      v4 = v11;
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (!v9)
  {
    sub_22044D56C(0, &qword_27CF58B38, 0x277D75B48);
    v4 = sub_2208919EC();
    v26 = [v4 textLabel];
    if (!v26)
    {
      return v4;
    }

    v11 = v26;
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_22089254C();
    v10 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessions;
    swift_beginAccess();
    v27 = *&v10[v2];
    if (!(v27 >> 62))
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
      v40 = v28;
      v29 = sub_22089287C();
      v31 = v30;

      v41 = v29;
      v42 = v31;
      MEMORY[0x223D89680](0x6E6F697373657320, 0xE800000000000000);
      v32 = *&v10[v3];
      if (v32 >> 62)
      {
        v33 = sub_2208926AC();
      }

      else
      {
        v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v34 = v33 == 1;
      if (v33 == 1)
      {
        v35 = 0;
      }

      else
      {
        v35 = 115;
      }

      if (v34)
      {
        v36 = 0xE000000000000000;
      }

      else
      {
        v36 = 0xE100000000000000;
      }

      MEMORY[0x223D89680](v35, v36);

      MEMORY[0x223D89680](8236, 0xE200000000000000);
      v37 = sub_22088A6BC();
      MEMORY[0x223D89680](v37);

      v15 = sub_22089132C();

      [v11 setText_];
LABEL_26:

      return v4;
    }

LABEL_31:
    v28 = sub_2208926AC();
    goto LABEL_17;
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  sub_22089254C();

  v43 = 0xD000000000000022;
  v44 = 0x80000002208CE3C0;
  v41 = sub_22088549C();
  v39 = sub_22089287C();
  MEMORY[0x223D89680](v39);

  result = sub_22089267C();
  __break(1u);
  return result;
}

void sub_2206C65B8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_220888C8C();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v8 = sub_22088E55C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2208854AC();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v54 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22066B130(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v52 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22088A71C();
  v17 = *(v53 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v53, v19);
  v51 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v44 - v22;
  if (sub_22088549C() == 1)
  {
    v45 = a1;
    v46 = v11;
    v24 = sub_22088547C();
    v25 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessions;
    swift_beginAccess();
    v26 = *&v3[v25];
    if ((v26 & 0xC000000000000001) == 0)
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v24 < *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v27 = *(v26 + 8 * v24 + 32);
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    }

    v27 = MEMORY[0x223D8A700](v24);
LABEL_6:
    v28 = v27;
    swift_endAccess();
    sub_22088A6CC();

    v29 = sub_22088544C();
    v30 = v45;
    v31 = [v45 cellForRowAtIndexPath_];

    if (v31)
    {
      v32 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
      [v31 setAccessoryView_];

      v33 = sub_22089180C();
      (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
      (*(v17 + 16))(v51, v23, v53);
      v34 = v47;
      (*(v47 + 16))(v54, a2, v46);
      sub_2208917EC();
      v50 = v3;
      v35 = v30;
      v36 = sub_2208917DC();
      v37 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v38 = (v18 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
      v40 = (*(v34 + 80) + v39 + 8) & ~*(v34 + 80);
      v41 = swift_allocObject();
      v42 = MEMORY[0x277D85700];
      *(v41 + 16) = v36;
      *(v41 + 24) = v42;
      v43 = v53;
      (*(v17 + 32))(v41 + v37, v51, v53);
      *(v41 + v38) = v50;
      *(v41 + v39) = v35;
      (*(v34 + 32))(v41 + v40, v54, v46);
      sub_2206830F8(0, 0, v52, &unk_2208AAAB0, v41);

      (*(v17 + 8))(v23, v43);
      return;
    }

LABEL_12:
    __break(1u);
  }
}

uint64_t sub_2206C6C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = sub_2208854AC();
  v7[5] = v9;
  v10 = *(v9 - 8);
  v7[6] = v10;
  v7[7] = *(v10 + 64);
  v7[8] = swift_task_alloc();
  sub_22066B130(0);
  v7[9] = swift_task_alloc();
  v11 = sub_220888C8C();
  v7[10] = v11;
  v12 = *(v11 - 8);
  v7[11] = v12;
  v7[12] = *(v12 + 64);
  v7[13] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[14] = v13;
  v7[15] = sub_2208917EC();
  v7[16] = sub_2208917DC();
  v14 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_headlineService;
  v15 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_tagService;
  v16 = swift_task_alloc();
  v7[17] = v16;
  *v16 = v7;
  v16[1] = sub_2206C6DFC;

  return MEMORY[0x2821CF508](v13, a5 + v14, a5 + v15);
}

uint64_t sub_2206C6DFC()
{
  *(*v1 + 144) = v0;

  v3 = sub_2208917CC();
  if (v0)
  {
    v4 = sub_2206C71B8;
  }

  else
  {
    v4 = sub_2206C6F58;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2206C6F58()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v5 = v0[9];
  v4 = v0[10];
  v28 = v1;
  v29 = v5;
  v6 = v0[8];
  v25 = v6;
  v26 = v2;
  v27 = v0[7];
  v8 = v0[5];
  v7 = v0[6];
  v23 = v8;
  v24 = v4;
  v9 = v0[4];
  v21 = v0[3];
  v22 = v0[2];

  v10 = sub_22089180C();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  (*(v7 + 16))(v6, v9, v8);
  (*(v3 + 16))(v2, v1, v4);
  v11 = v21;
  v12 = v22;
  v13 = sub_2208917DC();
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = (v27 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v3 + 80) + v15 + 8) & ~*(v3 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 2) = v13;
  *(v17 + 3) = v18;
  *(v17 + 4) = v11;
  (*(v7 + 32))(&v17[v14], v25, v23);
  *&v17[v15] = v12;
  (*(v3 + 32))(&v17[v16], v26, v24);
  sub_2206830F8(0, 0, v29, &unk_2208AAAD0, v17);

  (*(v3 + 8))(v28, v24);

  v19 = v0[1];

  return v19();
}

uint64_t sub_2206C71B8()
{
  v1 = v0[18];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v21 = v0[7];
  v22 = v2;
  v6 = v0[4];
  v5 = v0[5];
  v20 = v3;
  v8 = v0[2];
  v7 = v0[3];

  v9 = sub_22089180C();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  (*(v4 + 16))(v3, v6, v5);
  v10 = v7;
  v11 = v8;
  v12 = v1;
  v13 = sub_2208917DC();
  v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v15 = (v21 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 2) = v13;
  *(v16 + 3) = v17;
  *(v16 + 4) = v10;
  (*(v4 + 32))(&v16[v14], v20, v5);
  *&v16[v15] = v11;
  *&v16[(v15 + 15) & 0xFFFFFFFFFFFFFFF8] = v1;
  sub_2206830F8(0, 0, v22, &unk_2208AAAC0, v16);

  v18 = v0[1];

  return v18();
}

uint64_t sub_2206C73A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_220888C8C();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  sub_22088E55C();
  v7[9] = swift_task_alloc();
  sub_2208917EC();
  v7[10] = sub_2208917DC();
  v10 = sub_2208917CC();

  return MEMORY[0x2822009F8](sub_2206C74C4, v10, v9);
}

void sub_2206C74C4(__n128 a1)
{
  v2 = v1[2];
  v3 = sub_22088544C();
  v4 = [v2 cellForRowAtIndexPath_];

  if (v4)
  {
    v5 = v1[4];

    [v4 setAccessoryView_];

    v6 = [v5 navigationController];
    if (v6)
    {
      v7 = v6;
      (*(v1[7] + 16))(v1[8], v1[5], v1[6]);
      sub_22088E54C();
      sub_2206C7C48(0, v8);
      v10 = objc_allocWithZone(v9);
      v11 = sub_22088F01C();
      [v7 pushViewController:v11 animated:1];
    }

    v12 = v1[1];

    v12();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2206C761C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = sub_220888C8C();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  sub_22088E55C();
  v7[12] = swift_task_alloc();
  sub_2208917EC();
  v7[13] = sub_2208917DC();
  v10 = sub_2208917CC();

  return MEMORY[0x2822009F8](sub_2206C7740, v10, v9);
}

void sub_2206C7740(__n128 a1)
{
  v2 = v1[5];
  v3 = sub_22088544C();
  v4 = [v2 cellForRowAtIndexPath_];

  if (v4)
  {
    v5 = v1[7];

    [v4 setAccessoryView_];

    v6 = [v5 navigationController];
    if (v6)
    {
      v7 = v6;
      v8 = v1[11];
      v9 = v1[9];
      v10 = v1[10];
      v11 = v1[8];
      v12 = swift_allocObject();
      sub_22089254C();
      v1[2] = 0;
      v1[3] = 0xE000000000000000;
      MEMORY[0x223D89680](0xD000000000000038, 0x80000002208CE380);
      v1[4] = v11;
      sub_22058D5E8();
      sub_22089264C();
      v13 = v1[3];
      *(v12 + 16) = v1[2];
      *(v12 + 24) = v13;
      *v8 = v12;
      (*(v10 + 104))(v8, *MEMORY[0x277D6CEC8], v9);
      sub_22088E54C();
      sub_2206C7C48(0, v14);
      v16 = objc_allocWithZone(v15);
      v17 = sub_22088F01C();
      [v7 pushViewController:v17 animated:1];
    }

    v18 = v1[1];

    v18();
  }

  else
  {
    __break(1u);
  }
}

void sub_2206C7C48(uint64_t a1, __n128 a2)
{
  if (!qword_27CF58B30)
  {
    sub_22088E55C();
    sub_2206C7CAC(v2);
    v3 = sub_22088F02C();
    if (!v4)
    {
      atomic_store(v3, &qword_27CF58B30);
    }
  }
}

unint64_t sub_2206C7CAC(__n128 a1)
{
  result = qword_27CF58648;
  if (!qword_27CF58648)
  {
    sub_22088E55C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58648);
  }

  return result;
}

uint64_t sub_2206C7D04(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22088A71C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_2208854AC() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2204C6018;

  return sub_2206C6C0C(a1, v11, v12, v1 + v6, v13, v14, v1 + v10);
}

uint64_t sub_2206C7E80(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2208854AC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_220685970;

  return sub_2206C761C(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_2206C7FC4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2208854AC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_220888C8C() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_220685970;

  return sub_2206C73A0(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

void sub_2206C8138()
{
  v1 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_dateFormatter;
  v2 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v3 = sub_22089132C();
  [v2 setDateFormat_];

  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessions) = MEMORY[0x277D84F90];
  sub_22089267C();
  __break(1u);
}

uint64_t sub_2206C8218(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1 == 1)
  {
    v3 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessions;
    swift_beginAccess();
    v4 = *(v1 + v3);
    if (v4 >> 62)
    {
      return sub_2208926AC();
    }

    else
    {
      return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    sub_22089254C();

    v5 = sub_22089287C();
    MEMORY[0x223D89680](v5);

    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

void sub_2206C8354()
{
  if (!qword_28127DE40)
  {
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DE40);
    }
  }
}

uint64_t sub_2206C83AC(uint64_t a1)
{
  sub_220464EC8(0, &qword_281298038, MEMORY[0x277D6D350]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v16 - v7;
  v17 = a1;
  v9 = MEMORY[0x277D84560];
  sub_22044AF60(0, &qword_28127E130, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
  sub_220888A9C();
  v10 = swift_allocObject();
  v16 = xmmword_220899360;
  *(v10 + 16) = xmmword_220899360;
  sub_22044AF60(0, &qword_28127E140, MEMORY[0x277D6CCA0], v9);
  v11 = *(sub_220888A2C() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v16;
  v14 = (v13 + v12);
  *v14 = 0x7972657571;
  v14[1] = 0xE500000000000000;
  (*(v11 + 104))();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  sub_220888A4C();
  *(v1 + 16) = v10;
  type metadata accessor for StocksActivity(0);
  sub_2204549FC(0);
  sub_2206C9BE0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  sub_22088AC3C();
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC8StocksUI22StocksSearchURLHandler_navigator, v8, v4);
  return v1;
}

void *sub_2206C8708(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC(0);
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281299200, MEMORY[0x277D69690], 1);
    result = sub_2208884DC();
    if (v5)
    {
      type metadata accessor for StocksV1SymbolURLHandler(0);
      swift_allocObject();
      return sub_2206C9218(v3, &v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2206C87E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812967E0, MEMORY[0x277D33D68], 1);
  result = sub_2208884DC();
  if (!v7[3])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281297D60, MEMORY[0x277D6D840], 1);
  result = sub_2208884DC();
  if (!v6[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    type metadata accessor for StocksArticleURLHandler(0);
    v4 = swift_allocObject();
    type metadata accessor for StocksActivity(0);
    sub_2206C9BE0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
    sub_22088AC3C();
    sub_22046DA2C(v7, v4 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_featureAvailability);
    sub_22046DA2C(v6, v4 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_appURLHandler);
    v5 = sub_22085C888(v7);
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
    *(v4 + 16) = v5;
    *(v4 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_tracker) = v3;
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2206C8A04(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC(0);
  result = sub_2208884CC();
  if (result)
  {
    v2 = result;
    type metadata accessor for StocksSearchURLHandler(0);
    swift_allocObject();
    return sub_2206C83AC(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2206C8A98(void *a1)
{
  v2 = sub_220888A7C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298A38, MEMORY[0x277D300F8], 1);
  result = sub_2208884DC();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281298B20, MEMORY[0x277D2FD00], 1);
    result = sub_2208884DC();
    if (v5)
    {
      sub_220888A6C();
      sub_2208879CC();
      swift_allocObject();
      return sub_2208879BC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2206C8BFC(uint64_t a1, void *a2)
{
  sub_22044AF60(0, &qword_281282AF8, type metadata accessor for AudioNewsProxyNowPlayingURLHandler, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - v5;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StocksSearchURLHandler(0);
  v7 = sub_2208884CC();
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = v7;
  sub_2206C9BE0(&qword_281295FF8, type metadata accessor for StocksSearchURLHandler, &unk_2208A9278);
  sub_2208889CC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StocksV1SymbolURLHandler(0);
  v8 = sub_2208884CC();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v8;
  sub_2206C9BE0(&qword_281295BC8, type metadata accessor for StocksV1SymbolURLHandler, &unk_2208BBA18);
  sub_2208889CC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StocksArticleURLHandler(0);
  v9 = sub_2208884CC();
  if (!v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v9;
  sub_2206C9BE0(&qword_281295F10, type metadata accessor for StocksArticleURLHandler, &unk_2208BD6F0);
  sub_2208889CC();

  v10 = sub_22088F0DC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (v10)
  {
    v11 = type metadata accessor for AudioNewsProxyNowPlayingURLHandler(0);
    sub_2208884DC();
    if ((*(*(v11 - 8) + 48))(v6, 1, v11) == 1)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    sub_2206C9BE0(&qword_281282B38, type metadata accessor for AudioNewsProxyNowPlayingURLHandler, &unk_2208A179C);
    sub_2208889CC();
    sub_2206C9C28(v6);
    goto LABEL_9;
  }

  sub_2208879CC();
  v12 = sub_2208884CC();
  if (v12)
  {
    v15 = v12;
    sub_2206C9BE0(&unk_281298B10, MEMORY[0x277D2FD10], MEMORY[0x277D2FD08]);
    sub_2208889BC();

LABEL_9:
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_22088A46C();
    v13 = sub_2208884CC();
    if (v13)
    {
      v15 = v13;
      sub_2206C9BE0(&qword_281298218, MEMORY[0x277D35048], MEMORY[0x277D35040]);
      sub_2208889DC();

      return;
    }

    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_2206C9050()
{
  v0 = sub_220888D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088A46C();
  sub_220888BDC();
  (*(v1 + 104))(v4, *MEMORY[0x277D6CF00], v0);
  sub_2208882DC();

  return (*(v1 + 8))(v4, v0);
}

void *sub_2206C917C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298200, MEMORY[0x277D35100], 0);
  result = sub_2208884DC();
  if (v3)
  {
    swift_getObjectType();
    v2 = sub_22088A52C();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206C9218(uint64_t a1, __int128 *a2)
{
  v62 = a2;
  sub_220464EC8(0, &qword_281298038, MEMORY[0x277D6D350]);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v58 = &v56 - v5;
  v77 = a1;
  v6 = MEMORY[0x277D84560];
  sub_22044AF60(0, &qword_28127E130, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
  v7 = *(sub_220888A9C() - 8);
  v72 = *(v7 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v57 = v9;
  *(v9 + 16) = xmmword_22089D630;
  v67 = v9 + v8;
  sub_22044AF60(0, &qword_28127E140, MEMORY[0x277D6CCA0], v6);
  v11 = v10;
  v12 = sub_220888A2C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = *(v13 + 72);
  v68 = *(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_220899360;
  v17 = (v16 + v14);
  v70 = v14;
  *v17 = 0x6C6F626D7973;
  v17[1] = 0xE600000000000000;
  v18 = *(v13 + 104);
  v18();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  sub_220888A4C();
  v64 = "RLHandlerAssembly";
  v19 = v15;
  v74 = v15;
  v71 = v14 + 2 * v15;
  v69 = v11;
  v20 = swift_allocObject();
  v76 = xmmword_220899920;
  *(v20 + 16) = xmmword_220899920;
  v21 = (v20 + v14);
  *v21 = 0x6C6F626D7973;
  v21[1] = 0xE600000000000000;
  v66 = *MEMORY[0x277D6CC80];
  v73 = v18;
  v65 = v13 + 104;
  (v18)(v20 + v14);
  v22 = (v21 + v19);
  *v22 = 0x656C6369747261;
  v22[1] = 0xE700000000000000;
  v75 = *MEMORY[0x277D6CC98];
  v18();
  sub_220884DDC();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  v23 = v72;
  sub_220888A3C();
  v56 = 2 * v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v76;
  v25 = v70;
  v26 = (v24 + v70);
  *v26 = 0x6C6F626D7973;
  v26[1] = 0xE600000000000000;
  v27 = v66;
  v63 = v12;
  v28 = v73;
  (v73)(v26, v66, v12);
  v29 = (v26 + v74);
  *v29 = 0x656C6369747261;
  v29[1] = 0xE700000000000000;
  v28();
  sub_220884DDC();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  v30 = v56;
  sub_220888A3C();
  v31 = v72;
  v56 = v30 + v72;
  v32 = swift_allocObject();
  *(v32 + 16) = v76;
  v33 = (v32 + v25);
  *v33 = 0x6C6F626D7973;
  v33[1] = 0xE600000000000000;
  v34 = v63;
  v35 = v73;
  (v73)(v32 + v25, v27, v63);
  v36 = (v33 + v74);
  *v36 = 0x656C6369747261;
  v36[1] = 0xE700000000000000;
  v35();
  sub_220884DDC();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  sub_220888A3C();
  v56 = 4 * v31;
  v37 = swift_allocObject();
  *(v37 + 16) = v76;
  v38 = (v37 + v70);
  *v38 = 0x6C6F626D7973;
  v38[1] = 0xE600000000000000;
  v39 = v66;
  v40 = v73;
  (v73)(v38, v66, v34);
  v41 = v74;
  v42 = (v38 + v74);
  *v42 = 0x656C6369747261;
  v42[1] = 0xE700000000000000;
  v40();
  sub_220884DDC();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  v43 = v56;
  sub_220888A3C();
  v64 = (v43 + v72);
  v44 = swift_allocObject();
  *(v44 + 16) = v76;
  v45 = v70;
  v46 = (v44 + v70);
  *v46 = 0x6C6F626D7973;
  v46[1] = 0xE600000000000000;
  v47 = v63;
  v48 = v73;
  (v73)(v46, v39, v63);
  v49 = (v46 + v41);
  *v49 = 0x656C6369747261;
  v49[1] = 0xE700000000000000;
  v48();
  sub_220884DDC();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  sub_220888A3C();
  v50 = swift_allocObject();
  *(v50 + 16) = v76;
  v51 = (v50 + v45);
  *v51 = 0x6C6F626D7973;
  v51[1] = 0xE600000000000000;
  (v48)(v50 + v45, v66, v47);
  v52 = (v50 + v45 + v74);
  *v52 = 0x656C6369747261;
  v52[1] = 0xE700000000000000;
  v48();
  sub_220884DDC();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  sub_220888A3C();
  v53 = v59;
  *(v59 + 16) = v57;
  type metadata accessor for StocksActivity(0);
  sub_2204549FC(0);
  sub_2206C9BE0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  v54 = v58;
  sub_22088AC3C();
  (*(v60 + 32))(v53 + OBJC_IVAR____TtC8StocksUI24StocksV1SymbolURLHandler_navigator, v54, v61);
  sub_220458198(v62, v53 + OBJC_IVAR____TtC8StocksUI24StocksV1SymbolURLHandler_stockMetadataManager);
  return v53;
}

uint64_t sub_2206C9BE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2206C9C28(uint64_t a1)
{
  v2 = type metadata accessor for AudioNewsProxyNowPlayingURLHandler(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

UIColor __swiftcall UIColor.stocksAccessibilityAdjustedForIncreaseContrast()()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = &selRef_stocksAccessibilityAdjustedLighterForIncreaseContrast;
  if (v2 != 2)
  {
    v3 = &selRef_stocksAccessibilityAdjustedDarkerForIncreaseContrast;
  }

  v4 = [v0 *v3];

  return v4;
}

id sub_2206C9D18(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 currentTraitCollection];
  v5 = [v4 userInterfaceStyle];

  v6 = &selRef_stocksAccessibilityAdjustedLighterForIncreaseContrast;
  if (v5 != 2)
  {
    v6 = &selRef_stocksAccessibilityAdjustedDarkerForIncreaseContrast;
  }

  v7 = [v3 *v6];

  return v7;
}

UIColor __swiftcall UIColor.stocksAccessibilityAdjustedLighterForIncreaseContrast()()
{
  v1 = [v0 stocksAccessibilityAdjustedForIncreaseContrastAdjustingDarker_];

  return v1;
}

id sub_2206C9E0C(void *a1)
{
  v1 = [a1 stocksAccessibilityAdjustedForIncreaseContrastAdjustingDarker_];

  return v1;
}

UIColor __swiftcall UIColor.stocksAccessibilityAdjustedDarkerForIncreaseContrast()()
{
  v1 = [v0 stocksAccessibilityAdjustedForIncreaseContrastAdjustingDarker_];

  return v1;
}

id sub_2206C9E84(void *a1)
{
  v1 = [a1 stocksAccessibilityAdjustedForIncreaseContrastAdjustingDarker_];

  return v1;
}

UIColor __swiftcall UIColor.stocksAccessibilityAdjustedForIncreaseContrastAgainst(backgroundColor:)(UIColor backgroundColor)
{
  [v1 relativeLuminance];
  v4 = v3;
  [(objc_class *)backgroundColor.super.isa relativeLuminance];
  v6 = [v1 stocksAccessibilityAdjustedForIncreaseContrastAdjustingDarker_];

  return v6;
}

long double sub_2206C9F48(double a1)
{
  if (a1 >= 0.03928)
  {
    return pow((a1 + 0.055) / 1.055, 2.4);
  }

  else
  {
    return a1 / 12.92;
  }
}

uint64_t sub_2206C9F90(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = [v3 childViewControllers];
  sub_220482E6C();
  v7 = sub_2208916EC();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = sub_2208926AC();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223D8A700](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  sub_2206CA2E4();
  if (swift_dynamicCast())
  {
    if (*(&v13 + 1))
    {
      sub_220457328(&v12, v15);
      v10 = v16;
      v11 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v11 + 8))(a1, a2, v10, v11);
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    goto LABEL_12;
  }

LABEL_11:
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
LABEL_12:
  result = sub_2206CA348(&v12);
  if (a1)
  {
    return a1(result);
  }

  return result;
}

uint64_t sub_2206CA11C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 childViewControllers];
  sub_220482E6C();
  v7 = sub_2208916EC();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = sub_2208926AC();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x223D8A700](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;

  v16[0] = v10;
  sub_2206CA2E4();
  if (swift_dynamicCast())
  {
    if (*(&v14 + 1))
    {
      sub_220457328(&v13, v16);
      v11 = v17;
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v12 + 16))(a1, a2, v11, v12);
      return __swift_destroy_boxed_opaque_existential_1(v16);
    }

    return sub_2206CA348(&v13);
  }

LABEL_11:
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  return sub_2206CA348(&v13);
}

unint64_t sub_2206CA2E4()
{
  result = qword_2812909C0;
  if (!qword_2812909C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2812909C0);
  }

  return result;
}

uint64_t sub_2206CA348(uint64_t a1)
{
  sub_2206CA3A4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2206CA3A4(uint64_t a1)
{
  if (!qword_27CF58B40)
  {
    sub_2206CA2E4();
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF58B40);
    }
  }
}

uint64_t sub_2206CA3FC(uint64_t a1)
{
  sub_22061D1D0(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v34 - v10;
  v12 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + OBJC_IVAR____TtC8StocksUI12TickerRouter_navigator);
  sub_2205DE35C(0);
  v18 = *(v17 + 48);
  v19 = sub_22088685C();
  (*(*(v19 - 8) + 16))(v15, a1, v19);
  *&v15[v18] = 0;
  type metadata accessor for StocksActivity.StockFeed(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v20 = *(v1 + OBJC_IVAR____TtC8StocksUI12TickerRouter_tracker);
  v21 = sub_22088969C();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = v16;
  sub_2205A0924(v41, &v36, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
  if (v37)
  {
    sub_220458198(&v36, v38);
    v22 = sub_220597454(v38);
    v24 = v23;
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_2205A0B34(&v36, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v22 = qword_2812908F8;
    v24 = qword_281290900;
    v26 = qword_281290908;

    sub_2204A80F4(v24, v26);
  }

  v37 = sub_22088731C();
  *&v36 = v20;
  sub_2205A08A4(v11, v7);
  sub_2205A0924(v43, v38, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
  v27 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v28 = (v5 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = v11;
  v29 = swift_allocObject();
  *(v29 + 16) = v20;
  sub_2205A0994(v7, v29 + v27);
  v30 = v29 + v28;
  v31 = v38[1];
  *v30 = v38[0];
  *(v30 + 16) = v31;
  *(v30 + 32) = v39;
  v32 = (v29 + ((v28 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v32 = v22;
  v32[1] = v24;
  v32[2] = v26;
  swift_retain_n();

  sub_2204A80F4(v24, v26);
  sub_2204549FC(0);
  sub_2204489A0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  sub_22088E92C();

  sub_2204DA45C(v24, v26);
  sub_2205A0B34(v41, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205A0B34(v43, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_220650F50(v35, sub_22061D1D0);
  sub_220650F50(v15, type metadata accessor for StocksActivity);
  return sub_2205A0B34(&v36, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

void sub_2206CAA80()
{
  v0 = sub_22088CC6C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_220891C4C();

    if (v7)
    {
      swift_getObjectType();
      v8 = sub_22088D05C();
      if (v8 >> 62)
      {
        v10[1] = v8;
        v9 = sub_2208926AC();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v9, 1))
      {
        __break(1u);
      }

      else
      {
        (*(v1 + 104))(v4, *MEMORY[0x277D6E268], v0);
        sub_22088D08C();

        (*(v1 + 8))(v4, v0);
      }
    }
  }
}

uint64_t type metadata accessor for StockListEmptyWatchlistBlueprintModifier(uint64_t a1)
{
  result = qword_27CF58B68;
  if (!qword_27CF58B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2206CAD30(uint64_t a1)
{
  sub_220886A4C();
  if (v1 <= 0x3F)
  {
    sub_2206CBC70(319, &qword_28127EB28, MEMORY[0x277D698E0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AttributionSource(319);
      if (v3 <= 0x3F)
      {
        sub_2206CAE24();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2206CAE24()
{
  result = qword_281299220;
  if (!qword_281299220)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281299220);
  }

  return result;
}

uint64_t sub_2206CAE88(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v89 = a3;
  v90 = a2;
  sub_22047572C(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v86 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206CBB4C(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v87 = *(v7 - 8);
  v88 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v85 = &v77 - v9;
  sub_2206CBB4C(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v83 = *(v10 - 8);
  v84 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v82 = &v77 - v12;
  sub_22046B2A0(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v91 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C(0);
  v95 = v16;
  v92 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v81 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v79 = &v77 - v21;
  v22 = type metadata accessor for AttributionSource(0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = (&v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = (&v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22046B36C(0);
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v33);
  v96 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v78 = &v77 - v37;
  v38 = type metadata accessor for StockListEmptyWatchlistBlueprintModifier(0);
  v39 = v3;
  __swift_project_boxed_opaque_existential_1((v3 + v38[8]), *(v3 + v38[8] + 24));
  v40 = sub_22088618C();
  v93 = v32;
  v94 = v31;
  v80 = v26;
  if (v40)
  {
    v41 = MEMORY[0x277D84F90];
  }

  else
  {
    v42 = v38[7];
    v77 = v3;
    sub_2206CBC0C(v3 + v42, v25);
    *v29 = sub_2204ADF20(v25);
    v29[1] = v43;
    v29[2] = v44;
    v29[3] = v45;
    swift_storeEnumTagMultiPayload();
    sub_2206CBB04(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v46 = v78;
    sub_22088AD7C();
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    v100 = 2;
    sub_2206CBC70(0, &qword_28127E0F8, sub_22046B36C, MEMORY[0x277D84560]);
    v47 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_220899360;
    (*(v32 + 16))(v48 + v47, v46, v31);
    v49 = sub_2206CBB04(&qword_281297F88, sub_22046B36C, MEMORY[0x277D6D408]);
    v50 = sub_2206CBB04(&unk_281297F90, sub_22046B36C, MEMORY[0x277D6D3F8]);
    MEMORY[0x223D80A20](v48, v31, v49, v50);
    sub_22045B950();
    v51 = v79;
    sub_22088B29C();
    v41 = sub_2204AE514(0, 1, 1, MEMORY[0x277D84F90]);
    v53 = v41[2];
    v52 = v41[3];
    if (v53 >= v52 >> 1)
    {
      v41 = sub_2204AE514((v52 > 1), v53 + 1, 1, v41);
    }

    (*(v93 + 8))(v46, v94);
    v41[2] = v53 + 1;
    (*(v92 + 32))(v41 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v53, v51, v95);
    v39 = v77;
  }

  v54 = sub_2208869DC();
  v56 = v55;
  v57 = sub_2208869BC();
  v59 = v58;
  v60 = *(v39 + v38[6]);

  if ((sub_22088F0DC() & 1) != 0 && *(v60 + 16) <= 1uLL)
  {

    v54 = 0;
    v56 = 0;
    v57 = 0;
    v59 = 0;
    v60 = 0;
  }

  swift_storeEnumTagMultiPayload();
  sub_2206CBB04(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
  v61 = v96;
  sub_22088AD7C();
  *&v97 = v54;
  *(&v97 + 1) = v56;
  *&v98 = v57;
  *(&v98 + 1) = v59;
  v99 = v60;
  v100 = 1;
  sub_2206CBC70(0, &qword_28127E0F8, sub_22046B36C, MEMORY[0x277D84560]);
  v62 = v93;
  v63 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_220899360;
  v65 = v94;
  (*(v62 + 16))(v64 + v63, v61, v94);
  v66 = sub_2206CBB04(&qword_281297F88, sub_22046B36C, MEMORY[0x277D6D408]);
  v67 = sub_2206CBB04(&unk_281297F90, sub_22046B36C, MEMORY[0x277D6D3F8]);
  MEMORY[0x223D80A20](v64, v65, v66, v67);
  sub_22045B950();
  v68 = v81;
  sub_22088B29C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v41 = sub_2204AE514(0, v41[2] + 1, 1, v41);
  }

  v70 = v41[2];
  v69 = v41[3];
  if (v70 >= v69 >> 1)
  {
    v41 = sub_2204AE514((v69 > 1), v70 + 1, 1, v41);
  }

  v41[2] = v70 + 1;
  v71 = v95;
  (*(v92 + 32))(v41 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v70, v68, v95);
  v72 = sub_2206CBB04(&qword_281297DC8, sub_22046B19C, MEMORY[0x277D6D720]);
  v73 = sub_2206CBB04(&qword_281297DD0, sub_22046B19C, MEMORY[0x277D6D718]);
  MEMORY[0x223D80A20](v41, v71, v72, v73);
  v74 = v85;
  sub_22088E7CC();
  v75 = v82;
  sub_22088C66C();
  (*(v87 + 8))(v74, v88);
  v90(v75);
  (*(v83 + 8))(v75, v84);
  return (*(v62 + 8))(v96, v65);
}

uint64_t sub_2206CB924()
{
  sub_2206CBC70(0, &qword_28127E048, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_22088C37C();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220899360;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE40], v0);
  v4 = sub_2207E15E8(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_2206CBB04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2206CBB4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for StockListSectionDescriptor;
    v8[1] = type metadata accessor for StockListModel(255);
    v8[2] = sub_22045B950();
    v8[3] = sub_2206CBB04(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2206CBC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2206CBC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2206CBCD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_2206CBCF4, 0, 0);
}

uint64_t sub_2206CBCF4()
{
  sub_2206CE73C(0);
  *(v0 + 64) = sub_22088F3BC();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_2206CBDA4;

  return MEMORY[0x2821D23D8](v0 + 16);
}

uint64_t sub_2206CBDA4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2206CC180;
  }

  else
  {

    v2 = sub_2206CBEC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206CBEC0()
{
  v1 = *(v0 + 16);
  *(v0 + 88) = v1;
  if (v1)
  {
    *(v0 + 96) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_2206CBFD8;

    return MEMORY[0x2821D23D8](v0 + 40);
  }

  else
  {
    sub_2206CE8AC();
    swift_allocError();
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_2206CBFD8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2206CC1E4;
  }

  else
  {
    v2 = sub_2206CC0EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206CC0EC()
{
  v2 = v0[5];
  v1 = v0[6];
  v1[3] = &type metadata for YahooStockForYouFeedGroupEmitterCursor;

  *v1 = v2;

  v3 = v0[1];

  return v3();
}

uint64_t sub_2206CC180()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206CC1E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206CC25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_22088A84C();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2206CC32C, 0, 0);
}

uint64_t sub_2206CC32C()
{
  *(v0 + 136) = sub_22088FA2C();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_2206CC3E0;

  return MEMORY[0x2821D23D8](v0 + 48);
}

uint64_t sub_2206CC3E0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2206CC728;
  }

  else
  {

    v2 = sub_2206CC4FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206CC4FC()
{
  v1 = v0[6];
  v0[20] = v1;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_2206CC5A0;
  v3 = v0[10];

  return sub_2206CCF70(v3, v1);
}

uint64_t sub_2206CC5A0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_2206CCB4C;
  }

  else
  {
    v2 = sub_2206CC6B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206CC6B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206CC728()
{
  v31 = v0;

  v1 = *(v0 + 152);
  *(v0 + 56) = v1;
  v2 = v1;
  sub_22058D5E8();
  if (swift_dynamicCast())
  {

    if (qword_281294340 != -1)
    {
      swift_once();
    }

    v3 = qword_281294348;
    sub_22088A85C();
    v4 = sub_22088A82C();
    v5 = sub_220891AFC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22043F000, v4, v5, "Yahoo News For You Stocks group emitter has no pool to emit from, error=Errors.noPool", v6, 2u);
      MEMORY[0x223D8B7F0](v6, -1, -1);
    }

    v7 = *(v0 + 128);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 80);

    (*(v9 + 8))(v7, v8);
    *v10 = 0xD000000000000058;
    v10[1] = 0x80000002208CE5A0;
    sub_22052B704(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    if (qword_281294340 != -1)
    {
      swift_once();
    }

    v11 = qword_281294348;
    sub_22088A85C();
    v12 = v1;
    v13 = sub_22088A82C();
    v14 = sub_220891AFC();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 112);
    v17 = *(v0 + 120);
    v18 = *(v0 + 104);
    if (v15)
    {
      v28 = *(v0 + 120);
      v27 = v14;
      v19 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v20 = v29;
      *v19 = 136446210;
      *(v0 + 32) = 0;
      *(v0 + 40) = 0xE000000000000000;
      *(v0 + 72) = v1;
      sub_22089264C();
      v21 = sub_2204A7B78(*(v0 + 32), *(v0 + 40), &v29);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_22043F000, v13, v27, "Yahoo News For You Stocks group emitter has no pool to emit from, error=%{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x223D8B7F0](v20, -1, -1);
      MEMORY[0x223D8B7F0](v19, -1, -1);

      (*(v16 + 8))(v28, v18);
    }

    else
    {

      (*(v16 + 8))(v17, v18);
    }

    v22 = *(v0 + 80);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_22089254C();
    v23 = v30;
    *(v0 + 16) = v29;
    *(v0 + 24) = v23;
    MEMORY[0x223D89680](0xD00000000000004BLL, 0x80000002208CE550);
    *(v0 + 64) = v1;
    sub_22089264C();

    v24 = *(v0 + 24);
    *v22 = *(v0 + 16);
    v22[1] = v24;
    sub_22052B704(0);
    swift_storeEnumTagMultiPayload();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2206CCB4C()
{
  v31 = v0;

  v1 = *(v0 + 176);
  *(v0 + 56) = v1;
  v2 = v1;
  sub_22058D5E8();
  if (swift_dynamicCast())
  {

    if (qword_281294340 != -1)
    {
      swift_once();
    }

    v3 = qword_281294348;
    sub_22088A85C();
    v4 = sub_22088A82C();
    v5 = sub_220891AFC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22043F000, v4, v5, "Yahoo News For You Stocks group emitter has no pool to emit from, error=Errors.noPool", v6, 2u);
      MEMORY[0x223D8B7F0](v6, -1, -1);
    }

    v7 = *(v0 + 128);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 80);

    (*(v9 + 8))(v7, v8);
    *v10 = 0xD000000000000058;
    v10[1] = 0x80000002208CE5A0;
    sub_22052B704(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    if (qword_281294340 != -1)
    {
      swift_once();
    }

    v11 = qword_281294348;
    sub_22088A85C();
    v12 = v1;
    v13 = sub_22088A82C();
    v14 = sub_220891AFC();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 112);
    v17 = *(v0 + 120);
    v18 = *(v0 + 104);
    if (v15)
    {
      v28 = *(v0 + 120);
      v27 = v14;
      v19 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v20 = v29;
      *v19 = 136446210;
      *(v0 + 32) = 0;
      *(v0 + 40) = 0xE000000000000000;
      *(v0 + 72) = v1;
      sub_22089264C();
      v21 = sub_2204A7B78(*(v0 + 32), *(v0 + 40), &v29);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_22043F000, v13, v27, "Yahoo News For You Stocks group emitter has no pool to emit from, error=%{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x223D8B7F0](v20, -1, -1);
      MEMORY[0x223D8B7F0](v19, -1, -1);

      (*(v16 + 8))(v28, v18);
    }

    else
    {

      (*(v16 + 8))(v17, v18);
    }

    v22 = *(v0 + 80);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_22089254C();
    v23 = v30;
    *(v0 + 16) = v29;
    *(v0 + 24) = v23;
    MEMORY[0x223D89680](0xD00000000000004BLL, 0x80000002208CE550);
    *(v0 + 64) = v1;
    sub_22089264C();

    v24 = *(v0 + 24);
    *v22 = *(v0 + 16);
    v22[1] = v24;
    sub_22052B704(0);
    swift_storeEnumTagMultiPayload();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2206CCF70(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = type metadata accessor for ForYouFeedGroup(0);
  v3[8] = swift_task_alloc();
  v4 = sub_22088685C();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2206CD064, 0, 0);
}

uint64_t sub_2206CD064()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_appConfiguration;
  *(v0 + 96) = OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_stockFeedService;
  *(v0 + 104) = v2;
  v3 = *(v1 + 16);

  if (v3)
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = *(v5 + 64);
    *(v0 + 28) = v7;
    v8 = *(v0 + 88);
    *(v0 + 112) = v6;
    *(v0 + 120) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v8, v1 + ((v7 + 32) & ~v7), v4);
    v9 = v3 - 1;
    if (!v9)
    {

      v10 = 0;
      goto LABEL_13;
    }

    v14 = *(v0 + 80);
    v15 = (*(v0 + 28) + 32) & ~*(v0 + 28);
    sub_220676A28(0);
    v16 = *(v14 + 72);
    v10 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v10);
    if (v16)
    {
      if (v17 - v15 != 0x8000000000000000 || v16 != -1)
      {
        v10[2] = v9;
        v10[3] = 2 * ((v17 - v15) / v16);
        swift_arrayInitWithCopy();

LABEL_13:
        *(v0 + 128) = v10;
        v19 = (*(v0 + 48) + *(v0 + 96));
        __swift_project_boxed_opaque_existential_1(v19, v19[3]);
        *(v0 + 136) = sub_220885ECC();
        v20 = swift_task_alloc();
        *(v0 + 144) = v20;
        *v20 = v0;
        v20[1] = sub_2206CD2D8;
        v17 = v0 + 16;

        return MEMORY[0x2821D23D8](v17);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x2821D23D8](v17);
  }

  v11 = *(v0 + 32);
  *v11 = 0x64656873696E6966;
  v11[1] = 0xE800000000000000;
  sub_22052B704(0);
  swift_storeEnumTagMultiPayload();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2206CD2D8()
{
  *(*v1 + 152) = v0;

  if (v0)
  {

    v2 = sub_2206CD8F8;
  }

  else
  {
    v2 = sub_2206CD41C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206CD41C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2 >= sub_22088593C())
  {
    v12 = sub_22088592C();
    if (v12 < v2)
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v13 = *(v1 + 16);
        if (v13 >= v12)
        {
          if (v13 != v12)
          {
            v14 = (2 * v12) | 1;
            v15 = *(sub_22088698C() - 8);
            sub_2206CE464(v1, v1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), 0, v14, sub_2206CE708, MEMORY[0x277D69858]);
            v17 = v16;

            v1 = v17;
          }

          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_11:
    v18 = *(v0 + 128);
    v19 = *(v0 + 64);
    (*(v0 + 112))(v19, *(v0 + 88), *(v0 + 72));
    v20 = type metadata accessor for StockForYouFeedGroup(0);
    v21 = v20[7];
    v22 = sub_22088F39C();
    (*(*(v22 - 8) + 56))(v19 + v21, 1, 1, v22);
    *(v19 + v20[5]) = v1;
    *(v19 + v20[6]) = 1;
    swift_storeEnumTagMultiPayload();
    if (v18)
    {
      v23 = *(v0 + 128);
      v25 = *(v0 + 80);
      v24 = *(v0 + 88);
      v27 = *(v0 + 64);
      v26 = *(v0 + 72);
      v28 = *(v0 + 32);
      sub_2206CE66C(0);
      v30 = (v28 + *(v29 + 48));
      sub_22052AAB0(v27, v28, type metadata accessor for ForYouFeedGroup);
      v30[3] = &type metadata for YahooStockForYouFeedGroupEmitterCursor;
      *v30 = v23;
      sub_2206CE968(v27, type metadata accessor for ForYouFeedGroup);
      (*(v25 + 8))(v24, v26);
    }

    else
    {
      v31 = *(v0 + 64);
      v32 = *(v0 + 32);
      (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
      sub_2206CE608(v31, v32);
    }

    sub_22052B704(0);
    goto LABEL_17;
  }

  v3 = *(v0 + 128);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

  if (v3)
  {
    v4 = *(v0 + 128);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v0 + 112);
      v7 = *(v0 + 28);
      v8 = *(v0 + 88);
      v9 = *(v0 + 72);
      *(v0 + 120) = (*(v0 + 80) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v6(v8, v4 + ((v7 + 32) & ~v7), v9);
      v10 = v5 - 1;
      if (!v10)
      {

        v11 = 0;
        goto LABEL_26;
      }

      v36 = *(v0 + 80);
      v37 = (*(v0 + 28) + 32) & ~*(v0 + 28);
      sub_220676A28(0);
      v38 = *(v36 + 72);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      if (v38)
      {
        if (v12 - v37 != 0x8000000000000000 || v38 != -1)
        {
          v11[2] = v10;
          v11[3] = 2 * ((v12 - v37) / v38);
          swift_arrayInitWithCopy();

LABEL_26:
          *(v0 + 128) = v11;
          v40 = (*(v0 + 48) + *(v0 + 96));
          __swift_project_boxed_opaque_existential_1(v40, v40[3]);
          *(v0 + 136) = sub_220885ECC();
          v41 = swift_task_alloc();
          *(v0 + 144) = v41;
          *v41 = v0;
          v41[1] = sub_2206CD2D8;
          v12 = v0 + 16;

          return MEMORY[0x2821D23D8](v12);
        }

LABEL_32:
        __break(1u);
        return MEMORY[0x2821D23D8](v12);
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  v33 = *(v0 + 32);
  *v33 = 0x64656873696E6966;
  v33[1] = 0xE800000000000000;
  sub_22052B704(0);
LABEL_17:
  swift_storeEnumTagMultiPayload();

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2206CD8F8()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2206CD980()
{
  v1 = OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_appConfiguration;
  v2 = sub_220885ACC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_config;
  sub_220452A8C(0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_2206CE968(v0 + OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_knobs, type metadata accessor for StockForYouFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_stockFeedService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for YahooStockForYouFeedGroupEmitter(uint64_t a1)
{
  result = qword_27CF58BA0;
  if (!qword_27CF58BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2206CDAE4(uint64_t a1)
{
  sub_220885ACC();
  if (v1 <= 0x3F)
  {
    sub_220452A8C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for StockForYouFeedGroupKnobs(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_2206CDBF0(uint64_t a1)
{
  sub_2206CE73C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2, v6);
  sub_22052BC98(0, &qword_2812985E0, sub_22055F87C, MEMORY[0x277D6CF30]);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return sub_220888E2C();
}

uint64_t sub_2206CDD60(uint64_t a1)
{
  v3 = *v1;
  sub_22052BC98(0, &qword_281298680, sub_22052B704, MEMORY[0x277D6CF30]);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;

  return sub_220888E2C();
}

uint64_t sub_2206CDE18@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_config;
  sub_220452A8C(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for ForYouFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2206CDEF8@<X0>(uint64_t *a2@<X8>)
{
  sub_22052BC98(0, &qword_28127DEC0, sub_22052BFB4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_220452A8C(0);
  v4 = sub_22088F46C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_22052BDC4(inited);
  swift_setDeallocating();
  sub_2206CE968(inited + 32, sub_22052BFB4);
  sub_2206CE900(0);
  a2[3] = v6;
  a2[4] = sub_22050281C(&qword_27CF58BE0, sub_2206CE900, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_22088883C();
}

uint64_t sub_2206CE068(uint64_t a1)
{
  sub_22050281C(&qword_27CF58BC0, type metadata accessor for YahooStockForYouFeedGroupEmitter, &unk_2208AAD08);

  return sub_22088882C();
}

uint64_t sub_2206CE23C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2204C6018;

  return sub_2206CC25C(a1, v5, v4);
}

char *sub_2206CE2E8(uint64_t a1)
{
  v2 = type metadata accessor for ForYouSection(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = sub_220588644(*(v6 + 16), 0);
  v9 = *(sub_22088698C() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  sub_22052AAB0(a1, v5, type metadata accessor for ForYouSection);
  v11 = sub_22067DA50(&v14, &v8[v10], v7);

  if (v11 != v7)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v8;
}

void sub_2206CE464(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      (a5)(0, a2);
      v10 = *(a6(0) - 8);
      v11 = *(v10 + 72);
      v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      if (!v11)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v14 - v12 == 0x8000000000000000 && v11 == -1)
      {
        goto LABEL_16;
      }

      v13[2] = v7;
      v13[3] = 2 * ((v14 - v12) / v11);
      if (v6 != a3)
      {
LABEL_10:
        a6(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_2206CE608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2206CE66C(uint64_t a1)
{
  if (!qword_281293350[0])
  {
    type metadata accessor for ForYouFeedGroup(255);
    sub_22055F87C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_281293350);
    }
  }
}

void sub_2206CE73C(uint64_t a1)
{
  if (!qword_281296C50)
  {
    type metadata accessor for ForYouFeedServiceConfig(255);
    sub_22050281C(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig, &unk_2208BDD90);
    v1 = sub_22088F3CC();
    if (!v2)
    {
      atomic_store(v1, &qword_281296C50);
    }
  }
}

uint64_t sub_2206CE7D0(uint64_t a1)
{
  sub_2206CE73C(0);
  v5 = (*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_220685970;

  return sub_2206CBCD4(a1, v1 + v5);
}

unint64_t sub_2206CE8AC()
{
  result = qword_27CF58BD0;
  if (!qword_27CF58BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58BD0);
  }

  return result;
}

uint64_t sub_2206CE968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2206CE9DC()
{
  result = qword_27CF58BE8;
  if (!qword_27CF58BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58BE8);
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_2206CEA74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2206CEABC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_2206CEB3C(uint64_t a1)
{
  sub_2206CEBD0();

  sub_22088D90C();
  return result;
}

unint64_t sub_2206CEB7C()
{
  result = qword_27CF58BF0;
  if (!qword_27CF58BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58BF0);
  }

  return result;
}

unint64_t sub_2206CEBD0()
{
  result = qword_27CF58BF8;
  if (!qword_27CF58BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58BF8);
  }

  return result;
}

id sub_2206CEC24()
{
  v0 = objc_allocWithZone(sub_220888C2C());

  return [v0 init];
}

void *sub_2206CEC5C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, qword_281283E20, &protocol descriptor for StockPriceDataRefreshManagerType, 0);
  result = sub_2208884DC();
  if (v3)
  {
    sub_220888C1C();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206CED04(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2208860AC();
  result = sub_2208884CC();
  if (result)
  {
    sub_22046CA9C(qword_281299250, MEMORY[0x277D695C0], MEMORY[0x277D695B8]);
    sub_220888C1C();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206CEDC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220447D10(0);
  v4 = v3;
  result = sub_2208884CC();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_22046CA9C(&qword_281297AC0, sub_220447D10, MEMORY[0x277D6DBD0]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206CEE6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ANFSceneActivityBridge();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206CEEC0()
{
  type metadata accessor for ANFSceneActivityBridge();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  return result;
}

void *sub_2206CEEF4(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_281298738, MEMORY[0x277D6CD90], 1);
  result = sub_2208884DC();
  if (v4)
  {
    sub_220457328(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_22046CA9C(&qword_28128CFF0, type metadata accessor for ANFSceneActivityBridge, &protocol conformance descriptor for ANFSceneActivityBridge);
    sub_220888BFC();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206CEFF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2208917EC();
  v5[2] = a1;
  a2[3] = type metadata accessor for StocksIntentHandler();
  a2[4] = sub_22046CA9C(&qword_27CF58C00, type metadata accessor for StocksIntentHandler, &unk_22089C920);
  result = sub_2206CF394(sub_2206CF54C, v5, "StocksUI/ManagerAssembly.swift", 30, 2, 165);
  *a2 = result;
  return result;
}

void *sub_2206CF0B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22088A07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812954E8, &protocol descriptor for StocksUserActivityIntentDeserializerType, 1);
  result = sub_2208884DC();
  if (!v22)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  v10 = v19;
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280, MEMORY[0x277D69550], 1);
  result = sub_2208884DC();
  if (!v18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  (*(v5 + 104))(v8, *MEMORY[0x277D68FC8], v4);
  v12 = sub_22088721C();

  (*(v5 + 8))(v8, v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC(0);
  result = sub_2208884CC();
  if (result)
  {
    v13 = result;
    sub_22046DA2C(a1, v16);
    type metadata accessor for StocksIntentHandler();
    v14 = swift_allocObject();
    sub_220457328(&v21, (v14 + 2));
    v14[7] = v10;
    v14[8] = v11;
    sub_220457328(&v17, (v14 + 9));
    v14[14] = v12;
    v14[15] = v13;
    result = sub_220457328(v16, (v14 + 16));
    *v15 = v14;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2206CF394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2208917DC();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_2206CF568(v15);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v15[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_22089254C();
  MEMORY[0x223D89680](0xD00000000000003FLL, 0x80000002208CE640);
  v14 = sub_220892A9C();
  MEMORY[0x223D89680](v14);

  MEMORY[0x223D89680](46, 0xE100000000000000);
  result = sub_22089267C();
  __break(1u);
  return result;
}

void *sub_2206CF568@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void sub_2206CF5AC(id *a1, char *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_2206CF664(a1, a2);
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      v14 = *&v9;

      sub_2206D0410(v12, v13, v14, v8, a4);
      swift_bridgeObjectRelease_n();
    }
  }
}

uint64_t sub_2206CF664(id *a1, char *a2)
{
  v139 = a1;
  v140 = a2;
  sub_2205715CC(0);
  v3 = v2;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v133 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v137 = (&v133 - v13);
  sub_2206D0720(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14, v16);
  v18 = (&v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = type metadata accessor for StocksAudioTrack(0);
  MEMORY[0x28223BE20](v138, v19);
  v21 = (&v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22, v23);
  v25 = (&v133 - v24);
  MEMORY[0x28223BE20](v26, v27);
  v29 = (&v133 - v28);
  MEMORY[0x28223BE20](v30, v31);
  v135 = &v133 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v136 = (&v133 - v35);
  MEMORY[0x28223BE20](v36, v37);
  v134 = (&v133 - v38);
  MEMORY[0x28223BE20](v39, v40);
  v42 = (&v133 - v41);
  v43 = *(v15 + 56);
  sub_2206D07E4(v139, v18, sub_2205715CC);
  v44 = v18 + v43;
  v45 = v43;
  v46 = v18;
  sub_2206D07E4(v140, v44, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v137 = v21;
    v139 = v25;
    v140 = v6;
    sub_2206D07E4(v18 + v45, v10, sub_2205715CC);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2206D0784(v10, sub_2205D153C);
    }

    else
    {
      v133 = v3;
      v134 = v45;
      v136 = v18;
      v70 = v140;
      sub_2206D07E4(v18, v140, sub_2205715CC);
      sub_2205D153C(0, v71);
      v50 = *&v70[*(v72 + 48)];
      v135 = *(v72 + 64);
      v73 = v29;
      sub_2205717B0(v70, v29);
      v74 = v139;
      sub_2205717B0(v10, v139);
      v75 = *v29;
      v76 = [*v29 identifier];
      v77 = sub_22089136C();
      v79 = v78;

      v80 = [*v74 identifier];
      v81 = sub_22089136C();
      v83 = v82;

      if (v77 == v81 && v79 == v83)
      {
      }

      else
      {
        v100 = sub_2208928BC();

        if ((v100 & 1) == 0)
        {
          v110 = v139;
          if ((*(v73 + *(v138 + 32)) & 2) != 0)
          {
            v123 = [v75 identifier];
            sub_22089136C();

            sub_2206D0784(v110, type metadata accessor for StocksAudioTrack);
            sub_2206D0784(v73, type metadata accessor for StocksAudioTrack);
            v124 = sub_22088774C();
            v125 = *(*(v124 - 8) + 8);
            v126 = v135;
            v125(&v10[v135], v124);
            v125(&v140[v126], v124);
            v127 = v136;
            sub_2206D0784(v134 + v136, sub_2205715CC);
            sub_2206D0784(v127, sub_2205715CC);
            return v50;
          }

          v138 = v10;
          v111 = v137;
          sub_2206D07E4(v73, v137, type metadata accessor for StocksAudioTrack);
          v112 = sub_22088A82C();
          v113 = sub_220891AFC();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            v141 = v115;
            *v114 = 136446210;
            v116 = [*v111 identifier];
            v117 = v111;
            v118 = v110;
            v119 = sub_22089136C();
            v121 = v120;

            sub_2206D0784(v117, type metadata accessor for StocksAudioTrack);
            v122 = sub_2204A7B78(v119, v121, &v141);

            *(v114 + 4) = v122;
            _os_log_impl(&dword_22043F000, v112, v113, "AudioListeningProgressRecorder: not saving listening progress for %{public}s because it's disabled", v114, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v115);
            MEMORY[0x223D8B7F0](v115, -1, -1);
            MEMORY[0x223D8B7F0](v114, -1, -1);

            sub_2206D0784(v118, type metadata accessor for StocksAudioTrack);
          }

          else
          {

            sub_2206D0784(v111, type metadata accessor for StocksAudioTrack);
            sub_2206D0784(v110, type metadata accessor for StocksAudioTrack);
          }

          sub_2206D0784(v73, type metadata accessor for StocksAudioTrack);
          v128 = v140;
          v129 = v136;
          v130 = sub_22088774C();
          v131 = *(*(v130 - 8) + 8);
          v132 = v135;
          v131(v138 + v135, v130);
          v131(&v128[v132], v130);
          sub_2206D0784(v134 + v129, sub_2205715CC);
          v98 = v129;
          v99 = sub_2205715CC;
          goto LABEL_30;
        }
      }

      sub_2206D0784(v139, type metadata accessor for StocksAudioTrack);
      sub_2206D0784(v73, type metadata accessor for StocksAudioTrack);
      v101 = sub_22088774C();
      v102 = *(*(v101 - 8) + 8);
      v103 = v135;
      v102(&v10[v135], v101);
      v102(&v140[v103], v101);
      v45 = v134;
      v46 = v136;
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v65 = swift_getEnumCaseMultiPayload();
    if (!v65)
    {
      sub_2205D153C(0, v66);
      goto LABEL_16;
    }

    if (v65 == 1)
    {
      sub_2205D1464(0);
LABEL_16:
      v50 = *(v18 + *(v67 + 48));
      v84 = *(v67 + 64);
      sub_2205717B0(v18, v42);
      v85 = sub_22088774C();
      (*(*(v85 - 8) + 8))(v18 + v84, v85);
      sub_2206D0784(v18 + v45, sub_2205715CC);
      if ((*(v42 + *(v138 + 32)) & 2) != 0)
      {
        v96 = [*v42 identifier];
        sub_22089136C();

        sub_2206D0784(v42, type metadata accessor for StocksAudioTrack);
        return v50;
      }

      v86 = v134;
      sub_2205717B0(v42, v134);
      v87 = sub_22088A82C();
      v88 = sub_220891AFC();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v141 = v90;
        *v89 = 136446210;
        v91 = [*v86 identifier];
        v92 = sub_22089136C();
        v94 = v93;

        sub_2206D0784(v86, type metadata accessor for StocksAudioTrack);
        v95 = sub_2204A7B78(v92, v94, &v141);

        *(v89 + 4) = v95;
        _os_log_impl(&dword_22043F000, v87, v88, "AudioListeningProgressRecorder: not saving listening progress for %{public}s because it's disabled", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v90);
        MEMORY[0x223D8B7F0](v90, -1, -1);
        MEMORY[0x223D8B7F0](v89, -1, -1);

        return 0;
      }

      v99 = type metadata accessor for StocksAudioTrack;
      v98 = v86;
LABEL_30:
      sub_2206D0784(v98, v99);
      return 0;
    }

LABEL_24:
    v104 = swift_getEnumCaseMultiPayload();
    if (v104)
    {
      if (v104 != 1)
      {
LABEL_29:
        v99 = sub_2205715CC;
        v98 = v46 + v45;
        goto LABEL_30;
      }

      sub_2205D1464(0);
    }

    else
    {
      sub_2205D153C(0, v105);
    }

    v107 = *(v106 + 64);
    v108 = sub_22088774C();
    (*(*(v108 - 8) + 8))(v46 + v107, v108);
    sub_2206D0784(v46, type metadata accessor for StocksAudioTrack);
    goto LABEL_29;
  }

  v48 = v137;
  sub_2206D07E4(v18 + v45, v137, sub_2205715CC);
  sub_2205D1464(0);
  v50 = *(v48 + *(v49 + 48));
  v51 = *(v49 + 64);
  v52 = v136;
  sub_2205717B0(v48, v136);
  if ((*(v52 + *(v138 + 32)) & 2) == 0)
  {
    v53 = v135;
    sub_2206D07E4(v52, v135, type metadata accessor for StocksAudioTrack);
    v54 = sub_22088A82C();
    v55 = sub_220891AFC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v141 = v139;
      *v56 = 136446210;
      v57 = [*v53 identifier];
      v58 = sub_22089136C();
      v134 = v45;
      v59 = v58;
      v140 = v51;
      v61 = v60;

      sub_2206D0784(v53, type metadata accessor for StocksAudioTrack);
      v62 = v59;
      v45 = v134;
      v63 = sub_2204A7B78(v62, v61, &v141);
      v51 = v140;

      *(v56 + 4) = v63;
      _os_log_impl(&dword_22043F000, v54, v55, "AudioListeningProgressRecorder: not saving listening progress for %{public}s because it's disabled", v56, 0xCu);
      v64 = v139;
      __swift_destroy_boxed_opaque_existential_1(v139);
      MEMORY[0x223D8B7F0](v64, -1, -1);
      MEMORY[0x223D8B7F0](v56, -1, -1);
    }

    else
    {

      sub_2206D0784(v53, type metadata accessor for StocksAudioTrack);
    }

    sub_2206D0784(v52, type metadata accessor for StocksAudioTrack);
    v97 = sub_22088774C();
    (*(*(v97 - 8) + 8))(&v51[v48], v97);
    sub_2206D0784(v46 + v45, sub_2205715CC);
    v98 = v46;
    v99 = sub_2205715CC;
    goto LABEL_30;
  }

  v68 = [*v52 identifier];
  sub_22089136C();

  sub_2206D0784(v52, type metadata accessor for StocksAudioTrack);
  v69 = sub_22088774C();
  (*(*(v69 - 8) + 8))(&v51[v48], v69);
  sub_2206D0784(v18 + v45, sub_2205715CC);
  sub_2206D0784(v18, sub_2205715CC);
  return v50;
}

uint64_t sub_2206D0410(uint64_t a1, unint64_t a2, double a3, uint64_t a4, void *a5)
{

  v8 = sub_22088A82C();
  v9 = sub_220891AFC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315394;
    sub_2206D0674();
    v12 = sub_22089124C();
    v14 = sub_2204A7B78(v12, v13, &v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_2204A7B78(a1, a2, &v16);
    _os_log_impl(&dword_22043F000, v8, v9, "AudioListeningProgressRecorder: saving listening progress %s for %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D8B7F0](v11, -1, -1);
    MEMORY[0x223D8B7F0](v10, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  return sub_22088814C();
}

uint64_t sub_2206D05BC()
{

  v1 = OBJC_IVAR____TtC8StocksUI30AudioListeningProgressRecorder_logger;
  v2 = sub_22088A84C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_2206D0674()
{
  result = qword_27CF58C08;
  if (!qword_27CF58C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58C08);
  }

  return result;
}

unint64_t sub_2206D06C8()
{
  result = qword_2812961F0;
  if (!qword_2812961F0)
  {
    type metadata accessor for StocksAudioTrack(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812961F0);
  }

  return result;
}

void sub_2206D0720(uint64_t a1)
{
  if (!qword_27CF5A000)
  {
    sub_2205715CC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF5A000);
    }
  }
}

uint64_t sub_2206D0784(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2206D07E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_2206D084C()
{
  result = [objc_allocWithZone(type metadata accessor for NetworkReachability()) init];
  qword_28128FDA0 = result;
  return result;
}

StocksUI::ToolbarBehavior_optional __swiftcall ToolbarBehavior.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22089270C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ToolbarBehavior.rawValue.getter()
{
  if (*v0)
  {
    return 0x697370616C6C6F63;
  }

  else
  {
    return 0x6465786966;
  }
}

uint64_t sub_2206D09E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x697370616C6C6F63;
  }

  else
  {
    v3 = 0x6465786966;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEA0000000000676ELL;
  }

  if (*a2)
  {
    v5 = 0x697370616C6C6F63;
  }

  else
  {
    v5 = 0x6465786966;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000676ELL;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

unint64_t sub_2206D0A8C()
{
  result = qword_27CF58C10;
  if (!qword_27CF58C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58C10);
  }

  return result;
}

uint64_t sub_2206D0AE0()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

double sub_2206D0B64(uint64_t a1)
{
  sub_22089146C();

  return result;
}

uint64_t sub_2206D0BD4()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

void sub_2206D0C54(char *a2@<X8>)
{
  v3 = sub_22089270C();

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

void sub_2206D0CB4(uint64_t *a1@<X8>)
{
  v2 = 0x6465786966;
  if (*v1)
  {
    v2 = 0x697370616C6C6F63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000676ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2206D0CF4(uint64_t a1)
{
  v2 = sub_2206D0E08();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_2206D0D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_2206D0E08();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_2206D0DA4(uint64_t a1)
{
  v2 = sub_2206D0E08();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

unint64_t sub_2206D0E08()
{
  result = qword_27CF58C18;
  if (!qword_27CF58C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58C18);
  }

  return result;
}

void sub_2206D0EE4()
{
  v1 = OBJC_IVAR____TtC8StocksUI9QuoteView_priceLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI9QuoteView_priceChangeLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI9QuoteView_timeRangeLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

void sub_2206D0FD4(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2208926AC())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D8A700](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_2206D10D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = sub_22089136C();
    v6 = v5;
    if (v4 == sub_22089136C() && v6 == v7)
    {
      break;
    }

    v9 = sub_2208928BC();

    if (v9)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_2206D11AC(uint64_t a1)
{
  sub_22046B19C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20(0);
  sub_22052C734(&qword_281296EE8, sub_2204A1D20, MEMORY[0x277D6EC70]);
  sub_22089196C();
  if ((v14 & 1) == 0)
  {
    return v13;
  }

  sub_22089193C();
  sub_22089199C();
  v7 = v15;
  if (v15 == v13)
  {
    return 0;
  }

  v8 = (v3 + 16);
  v9 = (v3 + 8);
  while (1)
  {
    v10 = sub_2208919BC();
    (*v8)(v6);
    (v10)(&v13, 0);
    sub_22052C734(&qword_281297DC8, sub_22046B19C, MEMORY[0x277D6D720]);
    LOBYTE(v10) = sub_2208912FC();
    (*v9)(v6, v2);
    if (v10)
    {
      break;
    }

    sub_2208919AC();
    sub_22089199C();
    v7 = v15;
    if (v15 == v13)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2206D141C(uint64_t a1)
{
  sub_22055CE80(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  sub_22052C734(&qword_281296F20, sub_22055CF9C, MEMORY[0x277D6EC70]);
  sub_22089196C();
  if ((v14 & 1) == 0)
  {
    return v13;
  }

  sub_22089193C();
  sub_22089199C();
  v7 = v15;
  if (v15 == v13)
  {
    return 0;
  }

  v8 = (v3 + 16);
  v9 = (v3 + 8);
  while (1)
  {
    v10 = sub_2208919BC();
    (*v8)(v6);
    (v10)(&v13, 0);
    sub_22052C734(&qword_281297DF8, sub_22055CE80, MEMORY[0x277D6D720]);
    LOBYTE(v10) = sub_2208912FC();
    (*v9)(v6, v2);
    if (v10)
    {
      break;
    }

    sub_2208919AC();
    sub_22089199C();
    v7 = v15;
    if (v15 == v13)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2206D16D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v6 = *(a2 + 16);
  if (!v6)
  {
    return 0;
  }

  v11 = *(a3(0) - 8);
  v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v13 = *(v11 + 72);
  sub_22052C734(a4, a5, a6);
  v14 = 0;
  while ((sub_2208912FC() & 1) == 0)
  {
    ++v14;
    v12 += v13;
    if (v6 == v14)
    {
      return 0;
    }
  }

  return v14;
}

uint64_t sub_2206D17E8(uint64_t a1)
{
  sub_22051D97C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FA2D0(0);
  sub_22052C734(&qword_281297E70, sub_2204FA2D0, MEMORY[0x277D6D730]);
  sub_22089196C();
  if ((v14 & 1) == 0)
  {
    return v13;
  }

  sub_22089193C();
  sub_22089199C();
  v7 = v15;
  if (v15 == v13)
  {
    return 0;
  }

  v8 = (v3 + 16);
  v9 = (v3 + 8);
  while (1)
  {
    v10 = sub_2208919BC();
    (*v8)(v6);
    (v10)(&v13, 0);
    sub_22052C734(&qword_281297F68, sub_22051D97C, MEMORY[0x277D6D408]);
    LOBYTE(v10) = sub_2208912FC();
    (*v9)(v6, v2);
    if (v10)
    {
      break;
    }

    sub_2208919AC();
    sub_22089199C();
    v7 = v15;
    if (v15 == v13)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2206D1A58(uint64_t a1, __n128 a2)
{
  sub_2206D32EC(0, a2);
  v3 = v2;
  v4 = *(v2 - 8);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206D33D8(0, v6);
  sub_22052C734(&qword_27CF58C68, sub_2206D33D8, MEMORY[0x277D6EC70]);
  sub_22089196C();
  if ((v16 & 1) == 0)
  {
    return v15;
  }

  sub_22089193C();
  sub_22089199C();
  v9 = v17;
  if (v17 == v15)
  {
    return 0;
  }

  v10 = (v4 + 16);
  v11 = (v4 + 8);
  while (1)
  {
    v12 = sub_2208919BC();
    (*v10)(v8);
    (v12)(&v15, 0);
    sub_22052C734(&qword_27CF58C70, sub_2206D32EC, MEMORY[0x277D6D720]);
    LOBYTE(v12) = sub_2208912FC();
    (*v11)(v8, v3);
    if (v12)
    {
      break;
    }

    sub_2208919AC();
    sub_22089199C();
    v9 = v17;
    if (v17 == v15)
    {
      return 0;
    }
  }

  return v9;
}

char *sub_2206D1D34(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *&result[OBJC_IVAR____TtC8StocksUI19DateRangePickerView_onChange];
    if (v7)
    {
      v8 = *&result[OBJC_IVAR____TtC8StocksUI19DateRangePickerView_onChange + 8];

      v7(a1);
      sub_2204DA45C(v7, v8);
    }

    v9 = OBJC_IVAR____TtC8StocksUI19DateRangePickerView_styler;
    swift_beginAccess();
    sub_22046DA2C(v6 + v9, v18);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v12 = [v6 traitCollection];
    v13 = *(v11 + 8);
    v14 = *(v13 + 8);
    v22 = v10;
    v23 = v11;
    __swift_allocate_boxed_opaque_existential_1(v21);
    v14(v12, v10, v13);

    __swift_destroy_boxed_opaque_existential_1(v18);
    v15 = sub_22088B5CC();
    MEMORY[0x28223BE20](v15, v16);
    v17[2] = v21;
    sub_2206D0FD4(sub_2206D3148, v17, v15);

    __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_220565E9C(a2);
    sub_2206D201C(a1, 1);

    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return result;
}

void sub_2206D1F18(void **a1, void *a2)
{
  v2 = *a1;
  v3 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = *v3;
  v6 = *(*v3 + 40);
  v5 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v6);
  v7 = (*(*(v5 + 16) + 80))(v6);
  [v2 setBackgroundColor_];

  v8 = [v2 titleLabel];
  if (v8)
  {
    v9 = v8;
    v11 = v4[5];
    v10 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v11);
    v12 = (*(*(v10 + 16) + 80))(v11);
    [v9 setBackgroundColor_];
  }
}

void sub_2206D201C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC8StocksUI19DateRangePickerView_segmentedControl);
  v7 = sub_22088B5EC();
  v8 = sub_2206D16D4(a1, v7, MEMORY[0x277D69160], &qword_2812993A0, MEMORY[0x277D69160], MEMORY[0x277D69168]);
  LOBYTE(a1) = v9;

  if (a1)
  {
    return;
  }

  v10 = sub_22088B5CC();
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x223D8A700](v8, v10);
    goto LABEL_6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = *(v10 + 8 * v8 + 32);
LABEL_6:
  v14 = v11;

  [v14 frame];
  [v6 convertRect:v3 toCoordinateSpace:?];
  sub_220891EAC();
  sub_2206D3164(a2 & 1, v12, v13);
}

id sub_2206D2188()
{
  v1 = v0;
  sub_2206D34C4(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208854FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DateRangePickerView();
  v24.receiver = v0;
  v24.super_class = v11;
  objc_msgSendSuper2(&v24, sel_layoutSubviews);
  [v0 contentSize];
  v13 = v12;
  v15 = v14;
  v16 = *&v0[OBJC_IVAR____TtC8StocksUI19DateRangePickerView_segmentedControl];
  result = [v16 frame];
  if (v13 != v19 || v15 != v18)
  {
    [v1 contentSize];
    v22 = v21;
    [v1 contentSize];
    [v16 setFrame_];
    sub_22088B59C();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_2206D351C(v5);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      sub_2206D201C(v10, 0);
      return (*(v7 + 8))(v10, v6);
    }
  }

  return result;
}

uint64_t sub_2206D23EC(uint64_t a1)
{
  v2 = v1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for DateRangePickerView();
  objc_msgSendSuper2(&v21, sel_traitCollectionDidChange_, a1);
  v4 = OBJC_IVAR____TtC8StocksUI19DateRangePickerView_styler;
  swift_beginAccess();
  sub_22046DA2C(v2 + v4, v18);
  v5 = v19;
  v6 = v20;
  v7 = __swift_project_boxed_opaque_existential_1(v18, v19);
  v8 = *(v5 - 8);
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = [v2 traitCollection];
  (*(*(v6 + 8) + 8))();

  v14 = MEMORY[0x28223BE20](v12, v13);
  (*(v8 + 16))(&v17[-v10], &v17[-v10], v5, v14);
  v15 = sub_2206D3578(&v17[-v10], v2, v5, v6);
  (*(v8 + 8))(&v17[-v10], v5, v15);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

id sub_2206D264C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DateRangePickerView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2206D27F8()
{
  sub_2206D34C4(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088B59C();
  v4 = sub_2208854FC();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2206D351C(v3);
    return 0;
  }

  else
  {
    v7 = ChartRange.accessibilityLabel.getter();
    v9 = v8;
    (*(v5 + 8))(v3, v4);
    v11[0] = v7;
    v11[1] = v9;
    sub_22059B6A4();
    v10 = sub_22089234C();

    return v10;
  }
}

void sub_2206D2954()
{
  sub_2206D34C4(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2208854FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v31 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = v31 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = v31 - v20;
  sub_22088B59C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2206D351C(v4);
    goto LABEL_9;
  }

  v31[1] = v0;
  (*(v6 + 32))(v21, v4, v5);
  v22 = sub_22088B5EC();
  v23 = sub_2206D16D4(v21, v22, MEMORY[0x277D69160], &qword_2812993A0, MEMORY[0x277D69160], MEMORY[0x277D69168]);
  v25 = v24;

  if ((v25 & 1) != 0 || (v26 = *(sub_22088B5EC() + 16), , v23 >= v26 - 1))
  {
    (*(v6 + 8))(v21, v5);
LABEL_9:
    v29 = sub_22088B5EC();
    v30 = *(v29 + 16);
    if (v30)
    {
      (*(v6 + 16))(v9, v29 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v30 - 1), v5);

      (*(v6 + 32))(v13, v9, v5);
      sub_22088B5BC();
      (*(v6 + 8))(v13, v5);
    }

    else
    {
    }

    return;
  }

  sub_22088B5EC();

  v27 = sub_22088B5EC();
  if (v23 < -1)
  {
    __break(1u);
  }

  else if ((v23 + 1) < *(v27 + 16))
  {
    (*(v6 + 16))(v17, v27 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v23 + 1), v5);

    sub_22088B5BC();
    sub_2206D201C(v17, 1);
    v28 = *(v6 + 8);
    v28(v17, v5);
    v28(v21, v5);
    return;
  }

  __break(1u);
}

void sub_2206D2D5C()
{
  sub_2206D34C4(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2208854FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v29 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = v29 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = v29 - v20;
  sub_22088B59C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2206D351C(v4);
    goto LABEL_8;
  }

  v29[1] = v0;
  (*(v6 + 32))(v21, v4, v5);
  v22 = sub_22088B5EC();
  v23 = sub_2206D16D4(v21, v22, MEMORY[0x277D69160], &qword_2812993A0, MEMORY[0x277D69160], MEMORY[0x277D69168]);
  v25 = v24;

  if ((v25 & 1) != 0 || (sub_22088B5EC(), , v23 <= 0))
  {
    (*(v6 + 8))(v21, v5);
LABEL_8:
    v28 = sub_22088B5EC();
    if (*(v28 + 16))
    {
      (*(v6 + 16))(v9, v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      (*(v6 + 32))(v13, v9, v5);
      sub_22088B5BC();
      (*(v6 + 8))(v13, v5);
    }

    else
    {
    }

    return;
  }

  sub_22088B5EC();

  v26 = sub_22088B5EC();
  if (v23 > *(v26 + 16))
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 16))(v17, v26 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v23 - 1), v5);

    sub_22088B5BC();
    sub_2206D201C(v17, 1);
    v27 = *(v6 + 8);
    v27(v17, v5);
    v27(v21, v5);
  }
}

id sub_2206D3164(char a1, double a2, double a3)
{
  [v3 bounds];
  CGRectGetWidth(v14);
  [v3 bounds];
  CGRectGetHeight(v15);
  [v3 adjustedContentInset];
  [v3 contentSize];
  [v3 bounds];
  CGRectGetWidth(v16);
  [v3 contentSize];
  [v3 bounds];
  CGRectGetHeight(v17);
  sub_22088737C();
  v6 = v5;
  sub_22088737C();
  v8 = v7;
  result = [v3 contentOffset];
  if (v6 != v11 || v8 != v10)
  {

    return [v3 setContentOffset:a1 & 1 animated:{v6, v8}];
  }

  return result;
}

void sub_2206D32EC(uint64_t a1, __n128 a2)
{
  if (!qword_27CF58C50)
  {
    sub_220887F2C();
    sub_22088778C();
    sub_22052C734(&unk_27CF59390, MEMORY[0x277D301D0], MEMORY[0x277D301A8]);
    sub_22052C734(&qword_27CF58C58, MEMORY[0x277D2FBA8], MEMORY[0x277D2FB90]);
    v2 = sub_22088B39C();
    if (!v3)
    {
      atomic_store(v2, &qword_27CF58C50);
    }
  }
}

void sub_2206D33D8(uint64_t a1, __n128 a2)
{
  if (!qword_27CF58C60)
  {
    sub_220887F2C();
    sub_22088778C();
    sub_22052C734(&unk_27CF59390, MEMORY[0x277D301D0], MEMORY[0x277D301A8]);
    sub_22052C734(&qword_27CF58C58, MEMORY[0x277D2FBA8], MEMORY[0x277D2FB90]);
    v2 = sub_22088E81C();
    if (!v3)
    {
      atomic_store(v2, &qword_27CF58C60);
    }
  }
}

void sub_2206D34C4(uint64_t a1)
{
  if (!qword_281299390)
  {
    sub_2208854FC();
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_281299390);
    }
  }
}

uint64_t sub_2206D351C(uint64_t a1)
{
  sub_2206D34C4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2206D3578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC8StocksUI19DateRangePickerView_styler;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((a2 + v8));
  sub_220457328(&v10, a2 + v8);
  swift_endAccess();
  return result;
}

uint64_t sub_2206D3624(uint64_t a1, uint64_t a2)
{
  *(v2 + 1544) = a2;
  *(v2 + 1496) = a1;
  return MEMORY[0x2822009F8](sub_2206D3648, 0, 0);
}

uint64_t sub_2206D3648()
{
  sub_2206DF978(0, &qword_281296C50, type metadata accessor for ForYouFeedServiceConfig, sub_220502768, MEMORY[0x277D31C68]);
  *(v0 + 1592) = sub_22088F3AC();
  v1 = swift_task_alloc();
  *(v0 + 1640) = v1;
  *v1 = v0;
  v1[1] = sub_2206D373C;

  return MEMORY[0x2821D23D8](v0 + 1384);
}

uint64_t sub_2206D373C()
{
  *(*v1 + 1688) = v0;

  if (v0)
  {
    v2 = sub_2206D3C70;
  }

  else
  {

    v2 = sub_2206D3858;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206D3858()
{
  v1 = v0[173];
  v0[217] = v1;
  v2 = v0[174];
  v0[218] = v2;
  v3 = v0[175];
  v0[219] = v3;
  v4 = swift_allocObject();
  v0[220] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;

  sub_22052BCFC(0, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
  swift_asyncLet_begin();
  v5 = swift_allocObject();
  v0[221] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;

  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 2, v0 + 181, sub_2206D39E8, v0 + 162);
}

uint64_t sub_2206D39E8()
{
  v1[222] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 167, sub_2206D3CD4, v1 + 176);
  }

  else
  {
    v1[223] = v1[181];

    return MEMORY[0x282200930](v1 + 82, v1 + 167, sub_2206D3A9C, v1 + 188);
  }
}

uint64_t sub_2206D3A9C()
{
  *(v1 + 1792) = v0;
  if (v0)
  {
    v2 = sub_2206D3DC8;
  }

  else
  {
    v2 = sub_2206D3AD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206D3AD0()
{
  v1 = *(v0 + 1784);
  v2 = *(v0 + 1496);
  v2[3] = &type metadata for StockForYouFeedGroupEmitterCursor;
  v3 = swift_allocObject();
  *v2 = v3;
  sub_2206DE498(v0 + 1336, v3 + 24);
  *(v3 + 16) = v1;

  return MEMORY[0x282200920](v0 + 656, v0 + 1336, sub_2206D3B7C, v0 + 1648);
}

uint64_t sub_2206D3BD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206D3C70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206D3D2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206D3DC8()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 1336, sub_2206D3E34, v0 + 1552);
}

uint64_t sub_2206D3E8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206D3F28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_220685970;

  return MEMORY[0x2821D23D8](a1);
}

uint64_t sub_2206D3FC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2204C6018;

  return MEMORY[0x2821D23D8](a1);
}

uint64_t sub_2206D4068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_2206D408C, 0, 0);
}

uint64_t sub_2206D408C()
{
  *(v0 + 168) = sub_22088FA7C();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_2206D4134;

  return MEMORY[0x2821D23D8](v0 + 72);
}

uint64_t sub_2206D4134()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2206D48E8;
  }

  else
  {

    v2 = sub_2206D4250;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206D4250()
{
  v1 = v0;
  v2 = *(v0 + 72);
  *(v0 + 192) = v2;
  if (v2)
  {
    *(v0 + 200) = vextq_s8(*(v0 + 80), *(v0 + 80), 8uLL);
    *(v0 + 216) = sub_22088FA2C();
    v3 = swift_task_alloc();
    *(v0 + 224) = v3;
    *v3 = v0;
    v3[1] = sub_2206D45C0;

    return MEMORY[0x2821D23D8](v0 + 16);
  }

  else
  {
    v4 = sub_22088F90C();
    sub_220502864(&qword_281296AF8, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D32418], v4);
    swift_willThrow();
    if (qword_281294340 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 144);
    v8 = qword_281294348;
    v9 = sub_220891ADC();
    sub_22048D7F8(0);
    v10 = swift_allocObject();
    *(v0 + 96) = 0;
    *(v10 + 16) = xmmword_220899360;
    *(v0 + 104) = 0xE000000000000000;
    *(v0 + 128) = v5;
    sub_2204446D4(0, &qword_28127DE30, MEMORY[0x277D84948]);
    sub_22089264C();
    v11 = *(v0 + 96);
    v12 = v1[13];
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_22048D860();
    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    sub_22088A7EC("Failed to emit the stock group, error=%{public}@", 48, 2, &dword_22043F000, v8, v9, v10);

    sub_22089254C();
    v1[14] = 0;
    v1[15] = 0xE000000000000000;
    MEMORY[0x223D89680](0xD000000000000020, 0x80000002208CE900);
    v1[17] = v5;
    sub_22089264C();

    v13 = v1[15];
    *v7 = v1[14];
    v7[1] = v13;
    sub_22052B704(0);
    swift_storeEnumTagMultiPayload();
    v14 = v1[1];

    return v14();
  }
}

uint64_t sub_2206D45C0()
{
  v2 = *v1;
  v2[29] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2206D4B10, 0, 0);
  }

  else
  {
    v3 = v2[25];

    v4 = swift_task_alloc();
    v2[30] = v4;
    *v4 = v2;
    v4[1] = sub_2206D4754;
    v5 = v2[19];
    v6 = v2[18];

    return sub_2206D4F98(v6, v5, (v2 + 2), v3);
  }
}

uint64_t sub_2206D4754()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2206D4D54;
  }

  else
  {
    v2 = sub_2206D4868;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206D4868()
{

  sub_2206DE308(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206D48E8()
{
  v1 = v0;

  v2 = v0[23];
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  v3 = v0[18];
  v4 = qword_281294348;
  v5 = sub_220891ADC();
  sub_22048D7F8(0);
  v6 = swift_allocObject();
  v0[12] = 0;
  *(v6 + 16) = xmmword_220899360;
  v0[13] = 0xE000000000000000;
  v0[16] = v2;
  sub_2204446D4(0, &qword_28127DE30, MEMORY[0x277D84948]);
  sub_22089264C();
  v7 = v0[12];
  v8 = v1[13];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_22048D860();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  sub_22088A7EC("Failed to emit the stock group, error=%{public}@", 48, 2, &dword_22043F000, v4, v5, v6);

  sub_22089254C();
  v1[14] = 0;
  v1[15] = 0xE000000000000000;
  MEMORY[0x223D89680](0xD000000000000020, 0x80000002208CE900);
  v1[17] = v2;
  sub_22089264C();

  v9 = v1[15];
  *v3 = v1[14];
  v3[1] = v9;
  sub_22052B704(0);
  swift_storeEnumTagMultiPayload();
  v10 = v1[1];

  return v10();
}

uint64_t sub_2206D4B10()
{
  v1 = v0;

  v2 = v0[29];
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  v3 = v0[18];
  v4 = qword_281294348;
  v5 = sub_220891ADC();
  sub_22048D7F8(0);
  v6 = swift_allocObject();
  v0[12] = 0;
  *(v6 + 16) = xmmword_220899360;
  v0[13] = 0xE000000000000000;
  v0[16] = v2;
  sub_2204446D4(0, &qword_28127DE30, MEMORY[0x277D84948]);
  sub_22089264C();
  v7 = v0[12];
  v8 = v1[13];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_22048D860();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  sub_22088A7EC("Failed to emit the stock group, error=%{public}@", 48, 2, &dword_22043F000, v4, v5, v6);

  sub_22089254C();
  v1[14] = 0;
  v1[15] = 0xE000000000000000;
  MEMORY[0x223D89680](0xD000000000000020, 0x80000002208CE900);
  v1[17] = v2;
  sub_22089264C();

  v9 = v1[15];
  *v3 = v1[14];
  v3[1] = v9;
  sub_22052B704(0);
  swift_storeEnumTagMultiPayload();
  v10 = v1[1];

  return v10();
}

uint64_t sub_2206D4D54()
{
  v1 = v0;

  sub_2206DE308((v0 + 2));
  v2 = v0[31];
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  v3 = v0[18];
  v4 = qword_281294348;
  v5 = sub_220891ADC();
  sub_22048D7F8(0);
  v6 = swift_allocObject();
  v0[12] = 0;
  *(v6 + 16) = xmmword_220899360;
  v0[13] = 0xE000000000000000;
  v0[16] = v2;
  sub_2204446D4(0, &qword_28127DE30, MEMORY[0x277D84948]);
  sub_22089264C();
  v7 = v0[12];
  v8 = v1[13];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_22048D860();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  sub_22088A7EC("Failed to emit the stock group, error=%{public}@", 48, 2, &dword_22043F000, v4, v5, v6);

  sub_22089254C();
  v1[14] = 0;
  v1[15] = 0xE000000000000000;
  MEMORY[0x223D89680](0xD000000000000020, 0x80000002208CE900);
  v1[17] = v2;
  sub_22089264C();

  v9 = v1[15];
  *v3 = v1[14];
  v3[1] = v9;
  sub_22052B704(0);
  swift_storeEnumTagMultiPayload();
  v10 = v1[1];

  return v10();
}

uint64_t sub_2206D4F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[271] = v4;
  v5[265] = a4;
  v5[259] = a3;
  v5[253] = a2;
  v5[247] = a1;
  type metadata accessor for StockForYouFeedGroup(0);
  v5[277] = swift_task_alloc();
  v6 = sub_22088573C();
  v5[278] = v6;
  v5[279] = *(v6 - 8);
  v5[280] = swift_task_alloc();
  v5[281] = swift_task_alloc();
  v5[282] = swift_task_alloc();
  v7 = sub_22088587C();
  v5[283] = v7;
  v5[284] = *(v7 - 8);
  v5[285] = swift_task_alloc();
  v5[286] = swift_task_alloc();
  v8 = sub_22088685C();
  v5[287] = v8;
  v9 = *(v8 - 8);
  v5[288] = v9;
  v5[289] = *(v9 + 64);
  v5[290] = swift_task_alloc();
  v5[291] = swift_task_alloc();
  v5[292] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2206D5190, 0, 0);
}

uint64_t sub_2206D5190()
{
  v1 = (v0 + 1528);
  sub_2206DE35C(*(v0 + 2072), v0 + 1336);
  sub_2206DE3B8(v0 + 1336, v0 + 1528);
  if (!*(v0 + 1528))
  {
LABEL_17:
    sub_2206DE42C(v0 + 1528);
LABEL_19:
    v28 = sub_22088F90C();
    sub_220502864(&qword_281296AF8, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D323A8], v28);
    swift_willThrow();
    sub_2206DE42C(v0 + 1336);
    sub_2204DA45C(0, 0);
    sub_2204DA45C(0, 0);

    v30 = *(v0 + 8);

    return v30();
  }

  v2 = (v0 + 1432);
  while (1)
  {
    v3 = *(v0 + 1544);
    *v2 = *v1;
    *(v0 + 1448) = v3;
    *(v0 + 1464) = *(v0 + 1560);
    *(v0 + 1480) = *(v0 + 1576);
    v4 = *v2;
    v5 = *(*v2 + 16);
    if (!v5)
    {
      sub_2206DE308(v0 + 1432);
      goto LABEL_19;
    }

    v6 = *(v0 + 2336);
    v7 = *(v0 + 2304);
    v8 = *(v0 + 2296);
    v9 = *(v7 + 16);
    v7 += 16;
    v10 = *(v7 + 64);
    *(v0 + 2432) = v10;
    v11 = v10;
    v12 = (v10 + 32) & ~v10;
    *(v0 + 2344) = v9;
    *(v0 + 2352) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41 = v9;
    v9(v6, v4 + v12, v8);
    v13 = v5 - 1;
    v42 = v11;
    if (v5 == 1)
    {
      *(v0 + 1672) = 0;
      *(v0 + 1640) = 0u;
      *(v0 + 1656) = 0u;
      *(v0 + 1624) = 0u;
    }

    else
    {
      v14 = *(v0 + 2304);
      sub_22052BCFC(0, &qword_28127E198, MEMORY[0x277D69810], MEMORY[0x277D84560]);
      v15 = *(v14 + 72);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      if (!v15)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return MEMORY[0x282200930](v17, v18, v19, v20);
      }

      if (v17 - v12 == 0x8000000000000000 && v15 == -1)
      {
        goto LABEL_26;
      }

      v16[2] = v13;
      v16[3] = 2 * ((v17 - v12) / v15);
      swift_arrayInitWithCopy();
      sub_2206DE498(v0 + 1440, v0 + 1632);
      *(v0 + 1624) = v16;
    }

    sub_2206DE4F4(v0 + 1624, v0 + 1336);
    v22 = *(v0 + 1440);
    v23 = sub_22088681C();
    if (*(v22 + 16))
    {
      break;
    }

    (*(*(v0 + 2304) + 8))(*(v0 + 2336), *(v0 + 2296));

LABEL_4:
    sub_2206DE308(v0 + 1432);
    sub_2206DE3B8(v0 + 1336, v0 + 1528);
    if (!*v1)
    {
      goto LABEL_17;
    }
  }

  v25 = sub_2204AF97C(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    (*(*(v0 + 2304) + 8))(*(v0 + 2336), *(v0 + 2296));
    goto LABEL_4;
  }

  v32 = *(v0 + 2328);
  v33 = *(v0 + 2312);
  v34 = *(v0 + 2304);
  v35 = *(v0 + 2296);
  v40 = *(v0 + 2168);
  v36 = *(*(v22 + 56) + 8 * v25);
  v41(v32, *(v0 + 2336), v35);
  v37 = (v42 + 24) & ~v42;
  v38 = (v37 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v0 + 2360) = v39;
  *(v39 + 16) = v40;
  (*(v34 + 32))(v39 + v37, v32, v35);
  *(v39 + v38) = v36;

  sub_2204DA45C(0, 0);
  sub_22052BCFC(0, &qword_28127EB60, MEMORY[0x277D69268], MEMORY[0x277D83940]);
  swift_asyncLet_begin();

  sub_2204DA45C(0, 0);
  swift_asyncLet_begin();
  v19 = sub_2206D5700;
  v17 = v0 + 16;
  v18 = v0 + 1880;
  v20 = v0 + 1776;

  return MEMORY[0x282200930](v17, v18, v19, v20);
}

uint64_t sub_2206D5700()
{
  v1[296] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2206D683C, 0, 0);
  }

  else
  {
    v1[297] = v1[235];

    v2 = v1[286];

    return MEMORY[0x282200930](v1 + 82, v2, sub_2206D57B0, v1 + 198);
  }
}

uint64_t sub_2206D57B0()
{
  *(v1 + 2384) = v0;
  if (v0)
  {

    v2 = sub_2206D6A14;
  }

  else
  {
    v2 = sub_2206D5830;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206D5830()
{
  v1 = *(v0 + 2376);
  (*(*(v0 + 2272) + 16))(*(v0 + 2280), *(v0 + 2288), *(v0 + 2264));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 2232);
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = *(v0 + 2376) + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v52 = v4;
    v4(*(v0 + 2256), v5, *(v0 + 2224));
    v6 = *(v3 + 56);
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v52(*(v0 + 2248), v5, *(v0 + 2224));
      v8 = sub_22088572C();
      v16 = *(v8 + 16);
      v17 = v7[2];
      v18 = v17 + v16;
      if (__OFADD__(v17, v16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return MEMORY[0x282200920](v8, v9, v10, v11);
      }

      v19 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v18 <= v7[3] >> 1)
      {
        if (*(v19 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v21 = v17 + v16;
        }

        else
        {
          v21 = v17;
        }

        v7 = sub_220588574(isUniquelyReferenced_nonNull_native, v21, 1, v7);
        if (*(v19 + 16))
        {
LABEL_14:
          v22 = (v7[3] >> 1) - v7[2];
          v8 = sub_22088698C();
          if (v22 < v16)
          {
            goto LABEL_34;
          }

          swift_arrayInitWithCopy();

          if (v16)
          {
            v23 = v7[2];
            v24 = __OFADD__(v23, v16);
            v25 = v23 + v16;
            if (v24)
            {
              goto LABEL_35;
            }

            v7[2] = v25;
          }

          goto LABEL_4;
        }
      }

      if (v16)
      {
        goto LABEL_33;
      }

LABEL_4:
      v12 = *(v0 + 2248);
      v13 = *(v0 + 2232);
      v14 = *(v0 + 2224);
      v15 = *(v13 + 8);
      *(v0 + 2392) = v15;
      *(v0 + 2400) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v15(v12, v14);
      v5 += v6;
      if (!--v2)
      {

        sub_2208856DC();

        v26 = *(v0 + 1336);
        if (v26)
        {
          v27 = *(v26 + 16);
          v28 = MEMORY[0x277D84F90];
          if (v27)
          {
            v29 = *(v0 + 2304);
            v30 = (*(v0 + 2432) + 32) & ~*(v0 + 2432);
            *(v0 + 1928) = MEMORY[0x277D84F90];

            sub_22048EE54(0, v27, 0);
            v28 = *(v0 + 1928);
            v31 = v26 + v30;
            v32 = *(v29 + 72);
            do
            {
              v33 = *(v0 + 2320);
              v34 = *(v0 + 2304);
              v35 = *(v0 + 2296);
              (*(v0 + 2344))(v33, v31, v35);
              v36 = sub_22088681C();
              v38 = v37;
              (*(v34 + 8))(v33, v35);
              *(v0 + 1928) = v28;
              v40 = *(v28 + 16);
              v39 = *(v28 + 24);
              if (v40 >= v39 >> 1)
              {
                sub_22048EE54((v39 > 1), v40 + 1, 1);
                v28 = *(v0 + 1928);
              }

              *(v28 + 16) = v40 + 1;
              v41 = v28 + 16 * v40;
              *(v41 + 32) = v36;
              *(v41 + 40) = v38;
              v31 += v32;
              --v27;
            }

            while (v27);
          }
        }

        else
        {
          v28 = MEMORY[0x277D84F90];
        }

        *(v0 + 2408) = v28;
        v45 = swift_task_alloc();
        *(v0 + 2416) = v45;
        *v45 = v0;
        v45[1] = sub_2206D5C78;
        v46 = *(v0 + 2280);
        v47 = *(v0 + 2240);
        v48 = *(v0 + 2216);
        v49 = *(v0 + 2120);
        v50 = *(v0 + 2024);

        return sub_2206D8334(v48, v50, v47, v46, v49, v28, v0 + 1448);
      }
    }
  }

  v42 = *(v0 + 2280);
  v43 = *(v0 + 2272);
  v44 = *(v0 + 2264);

  (*(v43 + 8))(v42, v44);
  v10 = sub_2206D6228;
  v9 = *(v0 + 2288);
  v8 = v0 + 656;
  v11 = v0 + 2128;

  return MEMORY[0x282200920](v8, v9, v10, v11);
}

uint64_t sub_2206D5C78()
{
  v2 = *v1;
  *(*v1 + 2424) = v0;

  (*(v2 + 2392))(*(v2 + 2240), *(v2 + 2224));

  if (v0)
  {
    v3 = sub_2206D6BEC;
  }

  else
  {
    v3 = sub_2206D5E04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2206D5E04()
{
  sub_2206DE3B8(v0 + 1336, v0 + 1720);
  v1 = *(v0 + 2392);
  v16 = *(v0 + 2280);
  v2 = *(v0 + 2264);
  v3 = *(v0 + 2256);
  v4 = *(v0 + 2224);
  v5 = *(v0 + 2216);
  v6 = *(v0 + 1976);
  v7 = (*(v0 + 2272) + 8);
  if (*(v0 + 1720))
  {
    v17 = *(v0 + 1720);
    v18 = *(v0 + 1736);
    v19 = *(v0 + 1752);
    v20 = *(v0 + 1768);
    sub_2206CE66C(0);
    v9 = (v6 + *(v8 + 48));
    sub_2206DE784(v5, v6, type metadata accessor for StockForYouFeedGroup);
    type metadata accessor for ForYouFeedGroup(0);
    swift_storeEnumTagMultiPayload();
    v9[3] = &type metadata for StockForYouFeedGroupEmitterCursor;
    v10 = swift_allocObject();
    *v9 = v10;
    *(v10 + 64) = v20;
    *(v10 + 32) = v18;
    *(v10 + 48) = v19;
    *(v10 + 16) = v17;
    sub_2206DE7EC(v5, type metadata accessor for StockForYouFeedGroup);
    v1(v3, v4);
    (*v7)(v16, v2);
    sub_22052B704(0);
    swift_storeEnumTagMultiPayload();
    v11 = sub_2206D6048;
    v12 = *(v0 + 2288);
    v13 = v0 + 656;
    v14 = v0 + 2032;
  }

  else
  {
    v1(*(v0 + 2256), *(v0 + 2224));
    (*v7)(v16, v2);
    sub_2206DE42C(v0 + 1720);
    sub_2206DE720(v5, v6);
    type metadata accessor for ForYouFeedGroup(0);
    swift_storeEnumTagMultiPayload();
    sub_22052B704(0);
    swift_storeEnumTagMultiPayload();
    v11 = sub_2206D60A0;
    v12 = *(v0 + 2288);
    v13 = v0 + 656;
    v14 = v0 + 1936;
  }

  return MEMORY[0x282200920](v13, v12, v11, v14);
}

uint64_t sub_2206D60F8()
{
  (*(v0[288] + 8))(v0[292], v0[287]);
  sub_2206DE308((v0 + 179));
  sub_2206DE42C((v0 + 167));

  v1 = v0[1];

  return v1();
}

uint64_t sub_2206D6280()
{
  v1 = (v0 + 1432);
  v2 = (v0 + 1528);
  (*(*(v0 + 2304) + 8))(*(v0 + 2336), *(v0 + 2296));
  sub_2206DE308(v0 + 1432);
  sub_2206DE3B8(v0 + 1336, v0 + 1528);
  v40 = *(v0 + 2360);
  v41 = *(v0 + 2168);
  if (!*(v0 + 1528))
  {
LABEL_17:
    sub_2206DE42C(v0 + 1528);
LABEL_19:
    v28 = sub_22088F90C();
    sub_220502864(&qword_281296AF8, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D323A8], v28);
    swift_willThrow();
    sub_2206DE42C(v0 + 1336);
    sub_2204DA45C(&unk_2208AB3D8, v40);
    sub_2204DA45C(&unk_2208AB3E8, v41);

    v30 = *(v0 + 8);

    return v30();
  }

  while (1)
  {
    v3 = *(v0 + 1544);
    *v1 = *v2;
    *(v0 + 1448) = v3;
    *(v0 + 1464) = *(v0 + 1560);
    *(v0 + 1480) = *(v0 + 1576);
    v4 = *v1;
    v5 = *(*v1 + 16);
    if (!v5)
    {
      sub_2206DE308(v0 + 1432);
      goto LABEL_19;
    }

    v6 = *(v0 + 2336);
    v7 = *(v0 + 2304);
    v8 = *(v0 + 2296);
    v9 = *(v7 + 16);
    v7 += 16;
    v10 = *(v7 + 64);
    *(v0 + 2432) = v10;
    v11 = v10;
    v12 = (v10 + 32) & ~v10;
    *(v0 + 2344) = v9;
    *(v0 + 2352) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v42 = v9;
    v9(v6, v4 + v12, v8);
    v13 = v5 - 1;
    v43 = v11;
    if (v5 == 1)
    {
      *(v0 + 1672) = 0;
      *(v0 + 1640) = 0u;
      *(v0 + 1656) = 0u;
      *(v0 + 1624) = 0u;
    }

    else
    {
      v14 = *(v0 + 2304);
      sub_22052BCFC(0, &qword_28127E198, MEMORY[0x277D69810], MEMORY[0x277D84560]);
      v15 = *(v14 + 72);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      if (!v15)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return MEMORY[0x282200930](v17, v18, v19, v20);
      }

      if (v17 - v12 == 0x8000000000000000 && v15 == -1)
      {
        goto LABEL_26;
      }

      v16[2] = v13;
      v16[3] = 2 * ((v17 - v12) / v15);
      swift_arrayInitWithCopy();
      sub_2206DE498(v0 + 1440, v0 + 1632);
      *(v0 + 1624) = v16;
    }

    sub_2206DE4F4(v0 + 1624, v0 + 1336);
    v22 = *(v0 + 1440);
    v23 = sub_22088681C();
    if (*(v22 + 16))
    {
      break;
    }

    (*(*(v0 + 2304) + 8))(*(v0 + 2336), *(v0 + 2296));

LABEL_4:
    sub_2206DE308(v0 + 1432);
    sub_2206DE3B8(v0 + 1336, v0 + 1528);
    if (!*v2)
    {
      goto LABEL_17;
    }
  }

  v25 = sub_2204AF97C(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    (*(*(v0 + 2304) + 8))(*(v0 + 2336), *(v0 + 2296));
    goto LABEL_4;
  }

  v32 = *(v0 + 2328);
  v33 = *(v0 + 2312);
  v34 = *(v0 + 2304);
  v35 = *(v0 + 2296);
  v39 = *(v0 + 2168);
  v36 = *(*(v22 + 56) + 8 * v25);
  v42(v32, *(v0 + 2336), v35);
  v37 = (v43 + 24) & ~v43;
  v38 = swift_allocObject();
  *(v0 + 2360) = v38;
  *(v38 + 16) = v39;
  (*(v34 + 32))(v38 + v37, v32, v35);
  *(v38 + ((v37 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;

  sub_2204DA45C(&unk_2208AB3D8, v40);
  sub_22052BCFC(0, &qword_28127EB60, MEMORY[0x277D69268], MEMORY[0x277D83940]);
  swift_asyncLet_begin();

  sub_2204DA45C(&unk_2208AB3E8, v41);
  swift_asyncLet_begin();
  v19 = sub_2206D5700;
  v17 = v0 + 16;
  v18 = v0 + 1880;
  v20 = v0 + 1776;

  return MEMORY[0x282200930](v17, v18, v19, v20);
}

uint64_t sub_2206D68B4()
{
  (*(v0[288] + 8))(v0[292], v0[287]);
  sub_2206DE308((v0 + 179));
  v1 = v0[295];
  v2 = v0[271];
  sub_2206DE42C((v0 + 167));
  sub_2204DA45C(&unk_2208AB3D8, v1);
  sub_2204DA45C(&unk_2208AB3E8, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2206D6A8C()
{
  (*(v0[288] + 8))(v0[292], v0[287]);
  sub_2206DE308((v0 + 179));
  v1 = v0[295];
  v2 = v0[271];
  sub_2206DE42C((v0 + 167));
  sub_2204DA45C(&unk_2208AB3D8, v1);
  sub_2204DA45C(&unk_2208AB3E8, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2206D6BEC(uint64_t a1)
{
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  v2 = v1[303];
  v13 = v1[299];
  v3 = v1[284];
  v14 = v1[283];
  v15 = v1[285];
  v4 = v1[282];
  v5 = v1[278];
  v6 = qword_281294348;
  v7 = sub_220891ADC();
  sub_22048D7F8(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220899360;
  v1[227] = 0;
  v1[228] = 0xE000000000000000;
  v1[229] = v2;
  sub_2204446D4(0, &qword_28127DE30, MEMORY[0x277D84948]);
  sub_22089264C();
  v9 = v1[227];
  v10 = v1[228];
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_22048D860();
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  sub_22088A7EC("Failed to fetch next group, error=%{public}@", 44, 2, &dword_22043F000, v6, v7, v8);

  v13(v4, v5);
  (*(v3 + 8))(v15, v14);
  v11 = v1[286];

  return MEMORY[0x282200920](v1 + 82, v11, sub_2206D6DC0, v1 + 230);
}

uint64_t sub_2206D6E18()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_config;
  sub_220452A8C(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2206DE7EC(v0 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_knobs, type metadata accessor for StockForYouFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_headlineViewingHistory));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_newsFeedService));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_formatService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockForYouFeedGroupEmitter(uint64_t a1)
{
  result = qword_281287D30;
  if (!qword_281287D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2206D6F7C(uint64_t a1)
{
  sub_220452A8C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for StockForYouFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2206D7068(uint64_t a1)
{
  sub_2206DF978(0, &qword_281296C50, type metadata accessor for ForYouFeedServiceConfig, sub_220502768, MEMORY[0x277D31C68]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v13 - v6;
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  v8 = qword_281294348;
  v9 = sub_220891AFC();
  sub_22088A7EC("Creating Stock For You Feed initial cursor", 42, 2, &dword_22043F000, v8, v9, MEMORY[0x277D84F90]);
  sub_22061A9B8(0);
  (*(v4 + 16))(v7, a1, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  (*(v4 + 32))(v11 + v10, v7, v3);
  return sub_220888E2C();
}

uint64_t sub_2206D7254(uint64_t a1)
{
  v3 = *v1;
  sub_22052BCFC(0, &qword_281298680, sub_22052B704, MEMORY[0x277D6CF30]);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;

  return sub_220888E2C();
}

uint64_t sub_2206D7308@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_config;
  sub_220452A8C(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for ForYouFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2206D739C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for StockForYouFeedGroupKnobs(0);
  a1[4] = sub_220502864(&qword_281289458, type metadata accessor for StockForYouFeedGroupKnobs, &unk_2208ABA24);
  a1[5] = sub_220502864(&qword_27CF58C98, type metadata accessor for StockForYouFeedGroupKnobs, &unk_2208AB9FC);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2206DE784(v3 + v4, boxed_opaque_existential_1, type metadata accessor for StockForYouFeedGroupKnobs);
}

uint64_t sub_2206D74A0@<X0>(uint64_t *a2@<X8>)
{
  sub_22052BCFC(0, &qword_28127DEC0, sub_22052BFB4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_220452A8C(0);
  v4 = sub_22088F46C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_22052BDC4(inited);
  swift_setDeallocating();
  sub_2206DE7EC(inited + 32, sub_22052BFB4);
  sub_22052BCFC(0, &qword_281298870, type metadata accessor for StockForYouFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_2206DFCCC();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_22088883C();
}

uint64_t sub_2206D7610(uint64_t a1)
{
  sub_220502864(&qword_281287D48, type metadata accessor for StockForYouFeedGroupEmitter, &unk_2208AB268);

  return sub_22088882C();
}

uint64_t sub_2206D779C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2204C6018;

  return sub_2206D4068(a1, v5, v4);
}

uint64_t sub_2206D7848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_2206D78F8;

  return sub_2206D7A68(a3, a4);
}

uint64_t sub_2206D78F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_2206D7A44, 0, 0);
  }
}

uint64_t sub_2206D7A68(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_220885ACC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_22088516C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2206D7BA0, 0, 0);
}

uint64_t sub_2206D7BA0(uint64_t a1)
{
  v2 = v1[4];
  if (*(v2 + 16))
  {
    v3 = v1[10];
    v4 = v1[11];
    v5 = v1[8];
    v16 = v1[9];
    v17 = v1[13];
    v6 = v1[7];
    v14 = v1[6];
    v15 = v1[12];
    v7 = v1[5];
    v18 = v1[3];
    sub_22088515C();
    sub_22088515C();
    __swift_project_boxed_opaque_existential_1((v7 + 24), *(v7 + 48));
    sub_22088641C();
    sub_2208858FC();
    (*(v6 + 8))(v5, v14);
    sub_22088508C();
    v8 = *(v3 + 8);
    v1[14] = v8;
    v1[15] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v4, v16);
    v9 = swift_task_alloc();
    v9[2] = v7;
    v9[3] = v17;
    v9[4] = v15;
    v9[5] = v18;
    sub_220573F68(sub_2206DF954, v9, v2);

    __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_newsFeedService), *(v7 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_newsFeedService + 24));
    v1[16] = sub_220885E0C();

    v10 = swift_task_alloc();
    v1[17] = v10;
    *v10 = v1;
    v10[1] = sub_2206D7E18;

    return MEMORY[0x2821D23D8](v1 + 2);
  }

  else
  {

    v11 = v1[1];
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_2206D7E18()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2206D7FF0;
  }

  else
  {

    v2 = sub_2206D7F34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206D7F34()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[2];
  v1(v0[12], v3);
  v1(v2, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_2206D7FF0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];

  v2(v3, v4);
  v2(v1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2206D80B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2206D80D0, 0, 0);
}

uint64_t sub_2206D80D0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v2[4] = sub_22088645C();
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_2206D8194;
  v4 = v2[2];

  return MEMORY[0x2821D23D8](v4);
}

uint64_t sub_2206D8194()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2206D82D0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2206D82D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206D8334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = a7;
  v8[15] = v7;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  v8[16] = *v7;
  v9 = MEMORY[0x277D83D88];
  sub_22052BCFC(0, &qword_281296B70, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v8[17] = swift_task_alloc();
  sub_22088FB9C();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v10 = sub_22088F39C();
  v8[20] = v10;
  v8[21] = *(v10 - 8);
  v8[22] = swift_task_alloc();
  sub_22052BCFC(0, &qword_281296808, MEMORY[0x277D339F0], v9);
  v8[23] = swift_task_alloc();
  sub_22052BCFC(0, &unk_2812967D0, MEMORY[0x277D33EC8], v9);
  v8[24] = swift_task_alloc();
  sub_22052BCFC(0, &qword_281296B18, sub_22044CF38, v9);
  v8[25] = swift_task_alloc();
  v11 = sub_2208906EC();
  v8[26] = v11;
  v8[27] = *(v11 - 8);
  v8[28] = swift_task_alloc();
  v12 = sub_2208904CC();
  v8[29] = v12;
  v8[30] = *(v12 - 8);
  v8[31] = swift_task_alloc();
  sub_22052BCFC(0, &qword_281296788, sub_2206DE84C, v9);
  v8[32] = swift_task_alloc();
  sub_22052BCFC(0, &qword_281296D50, MEMORY[0x277D2D4E0], v9);
  v8[33] = swift_task_alloc();
  v13 = sub_22089037C();
  v8[34] = v13;
  v8[35] = *(v13 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v14 = sub_220890A3C();
  v8[38] = v14;
  v8[39] = *(v14 - 8);
  v8[40] = swift_task_alloc();
  v15 = sub_220890A7C();
  v8[41] = v15;
  v8[42] = *(v15 - 8);
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  sub_22052BCFC(0, &qword_2812968D8, MEMORY[0x277D33478], v9);
  v8[45] = swift_task_alloc();
  type metadata accessor for StockForYouFeedGroupConfigData(0);
  v8[46] = swift_task_alloc();
  v16 = sub_22089039C();
  v8[47] = v16;
  v8[48] = *(v16 - 8);
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  sub_2206DE8C8(0);
  v8[51] = v17;
  v8[52] = swift_task_alloc();
  v18 = sub_220885D1C();
  v8[53] = v18;
  v8[54] = *(v18 - 8);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v19 = sub_22088698C();
  v8[57] = v19;
  v8[58] = *(v19 - 8);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  sub_22052BCFC(0, &unk_281299020, MEMORY[0x277D69858], v9);
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  v8[79] = swift_task_alloc();
  v8[80] = swift_task_alloc();
  v8[81] = swift_task_alloc();
  v8[82] = swift_task_alloc();
  v8[83] = swift_task_alloc();
  v8[84] = swift_task_alloc();
  v8[85] = swift_task_alloc();
  v20 = sub_22088685C();
  v8[86] = v20;
  v8[87] = *(v20 - 8);
  v8[88] = swift_task_alloc();
  v21 = sub_22088561C();
  v8[89] = v21;
  v8[90] = *(v21 - 8);
  v8[91] = swift_task_alloc();
  v22 = sub_22088FFFC();
  v8[92] = v22;
  v8[93] = *(v22 - 8);
  v8[94] = swift_task_alloc();
  v23 = sub_22088609C();
  v8[95] = v23;
  v8[96] = *(v23 - 8);
  v8[97] = swift_task_alloc();
  v8[98] = swift_task_alloc();
  v24 = sub_220885ACC();
  v8[99] = v24;
  v8[100] = *(v24 - 8);
  v8[101] = swift_task_alloc();
  v8[102] = swift_task_alloc();
  v8[103] = swift_task_alloc();
  v25 = sub_22088573C();
  v8[104] = v25;
  v8[105] = *(v25 - 8);
  v8[106] = swift_task_alloc();
  v8[107] = swift_task_alloc();
  v8[108] = swift_task_alloc();
  v8[109] = swift_task_alloc();
  v8[110] = swift_task_alloc();
  v8[111] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2206D8DF4, 0, 0);
}

uint64_t sub_2206D8DF4()
{
  v483 = v0;
  v1 = v0[15];
  v468 = v0[12];
  v399 = v0[14];
  __swift_project_boxed_opaque_existential_1(v399, v399[3]);
  sub_22088572C();
  sub_2208860CC();

  sub_2208856DC();

  v430 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  sub_22088641C();
  sub_22052BCFC(0, &qword_28127E1A8, MEMORY[0x277D695B0], MEMORY[0x277D84560]);
  v477 = sub_22088608C();
  v470 = *(v477 - 8);
  v455 = *(v470 + 72);
  v403 = (*(v470 + 80) + 32) & ~*(v470 + 80);
  v428 = swift_allocObject();
  *(v428 + 16) = xmmword_2208A22C0;
  v2 = *(v468 + 16);
  v452 = v0;
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v0[12];
  v4 = sub_220588764(v2, 0);
  v5 = sub_22067DCB0(v482, v4 + 4, v2, v3);
  v6 = v482[0];

  sub_22067DE08(v6);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x277D84F90];
  }

  v7 = v0[102];
  v8 = v0[100];
  v442 = v452[99];
  v383 = v452[94];
  v400 = v452[93];
  v408 = v452[92];
  v394 = v452[91];
  v469 = v452[90];
  v415 = v452[88];
  v418 = v452[89];
  v466 = v452[87];
  v420 = v452[86];
  v376 = v452[15];
  *(v428 + v403) = v4;
  v9 = *(v470 + 104);
  v374 = *MEMORY[0x277D69588];
  v9(v428 + v403);
  v410 = v9;
  v10 = (v428 + v403 + v455);
  sub_220668490(0);
  v381 = v11;
  v12 = *(v11 + 48);
  __swift_project_boxed_opaque_existential_1((v430 + 24), *(v430 + 48));
  sub_22088641C();
  v13 = sub_220885A2C();
  v14 = *(v8 + 8);
  v452[112] = v14;
  v452[113] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v375 = v14;
  v14(v7, v442);
  *v10 = v13;
  v425 = *(v376 + 16);
  *(v10 + v12) = v425;
  v15 = *MEMORY[0x277D693C0];
  v16 = sub_220885B7C();
  v17 = *(v16 - 8);
  v433 = *(v17 + 104);
  v433(v10 + v12, v15, v16);
  v18 = *(v17 + 56);
  v17 += 56;
  v18(v10 + v12, 0, 1, v16);
  v378 = *MEMORY[0x277D695A0];
  v9(v10);
  v19 = v428 + v403 + 2 * v455;
  v20 = *(v381 + 48);
  v452[114] = OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_knobs;
  type metadata accessor for StockForYouFeedGroupKnobs(0);
  swift_unknownObjectRetain_n();
  sub_22088FA8C();
  sub_22088FB6C();
  (*(v400 + 8))(v383, v408);
  v433((v19 + v20), *MEMORY[0x277D693E0], v16);
  v18((v19 + v20), 0, 1, v16);
  v21 = v9;
  (v9)(v428 + v403 + 2 * v455, v378, v477);
  v384 = 2 * v455;
  v401 = 3 * v455;
  v22 = (v428 + v403 + 3 * v455);
  v23 = sub_220885AAC();
  sub_220885ABC();
  *v22 = v23;
  v22[1] = v24;
  (v21)(v22, *MEMORY[0x277D69598], v477);
  sub_22052BCFC(0, &qword_28127E1B0, MEMORY[0x277D69418], MEMORY[0x277D84560]);
  v25 = *(v17 + 16);
  v26 = (*(v17 + 24) + 32) & ~*(v17 + 24);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_220899920;
  v433((v27 + v26), *MEMORY[0x277D693D0], v16);
  sub_220885A0C();
  *(v27 + v26 + v25) = v28;
  v433((v27 + v26 + v25), *MEMORY[0x277D69410], v16);
  *(v428 + v403 + 4 * v455) = v27;
  (v410)(v428 + v403 + 4 * v455, *MEMORY[0x277D69580], v477);
  v379 = 4 * v455;
  v433((v428 + v403 + 5 * v455), *MEMORY[0x277D693F8], v16);
  v29 = *MEMORY[0x277D695A8];
  (v410)(v428 + v403 + 5 * v455, v29, v477);
  v433((v428 + v403 + 6 * v455), *MEMORY[0x277D693D8], v16);
  (v410)(v428 + v403 + 6 * v455, v29, v477);
  v30 = (v428 + v403 + 7 * v455);
  *v30 = v425;
  sub_22046DA2C(v430 + 24, (v30 + 1));
  v433(v30, *MEMORY[0x277D693F0], v16);
  (v410)(v30, v29, v477);
  *(v428 + v403 + 8 * v455) = sub_22088586C();
  v380 = *MEMORY[0x277D693C8];
  (v433)(v428 + v403 + 8 * v455);
  v385 = v29;
  (v410)(v428 + v403 + 8 * v455, v29, v477);
  sub_22088607C();
  sub_22088571C();
  sub_22048D7F8(0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22089B140;
  sub_220502864(&unk_281299340, MEMORY[0x277D69268], MEMORY[0x277D69270]);
  sub_22089193C();
  sub_22089199C();
  v32 = sub_22089198C();
  v33 = MEMORY[0x277D83B88];
  v34 = MEMORY[0x277D83C10];
  *(v31 + 56) = MEMORY[0x277D83B88];
  *(v31 + 64) = v34;
  *(v31 + 32) = v32;
  sub_22089193C();
  sub_22089199C();
  v35 = sub_22089198C();
  *(v31 + 96) = v33;
  *(v31 + 104) = v34;
  *(v31 + 72) = v35;
  sub_2208856EC();
  sub_22088560C();
  v36 = *(v469 + 8);
  v452[115] = v36;
  v452[116] = (v469 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v422 = v36;
  v36(v394, v418);
  v37 = sub_22088681C();
  v39 = v38;
  v40 = v420;
  v421 = *(v466 + 8);
  v421(v415, v40);
  *(v31 + 136) = MEMORY[0x277D837D0];
  v416 = sub_22048D860();
  *(v31 + 144) = v416;
  *(v31 + 112) = v37;
  *(v31 + 120) = v39;
  sub_22048D2F4();
  v41 = sub_2208922DC();
  v42 = sub_220891AFC();
  sub_22088A7EC("For You stock section emitter filtered %lu headlines down to %lu for %{public}@", 79, 2, &dword_22043F000, v41, v42, v31);

  __swift_project_boxed_opaque_existential_1((v430 + 24), *(v430 + 48));
  sub_22088641C();
  if (sub_2208859EC())
  {
    v43 = v452[84];
    v44 = v452[57];
    v45 = v452[58];
    sub_2206DDB84(v452[110], v43);
    if ((*(v45 + 48))(v43, 1, v44) == 1)
    {
      sub_2206DEDC4(v452[84], &unk_281299020, MEMORY[0x277D69858]);
      v46 = 1;
      v426 = MEMORY[0x277D84F90];
      v429 = MEMORY[0x277D84F90];
      v423 = MEMORY[0x277D84F90];
    }

    else
    {
      v47 = *(v452[58] + 32);
      v47(v452[75], v452[84], v452[57]);
      v48 = sub_22088696C();
      v50 = v49;
      v51 = sub_22045E924(0, 1, 1, MEMORY[0x277D84F90]);
      v53 = *(v51 + 2);
      v52 = *(v51 + 3);
      v426 = v51;
      if (v53 >= v52 >> 1)
      {
        v426 = sub_22045E924((v52 > 1), v53 + 1, 1, v51);
      }

      *(v426 + 2) = v53 + 1;
      v54 = &v426[16 * v53];
      *(v54 + 4) = v48;
      *(v54 + 5) = v50;
      v55 = sub_22088697C();
      if (v56)
      {
        v57 = v55;
        v58 = v56;
        v59 = sub_22045E924(0, 1, 1, MEMORY[0x277D84F90]);
        v61 = *(v59 + 2);
        v60 = *(v59 + 3);
        v429 = v59;
        if (v61 >= v60 >> 1)
        {
          v429 = sub_22045E924((v60 > 1), v61 + 1, 1, v59);
        }

        *(v429 + 2) = v61 + 1;
        v62 = &v429[16 * v61];
        *(v62 + 4) = v57;
        *(v62 + 5) = v58;
      }

      else
      {
        v429 = MEMORY[0x277D84F90];
      }

      v63 = sub_22088690C();
      if (v64)
      {
        v65 = v63;
        v66 = v64;
        v67 = sub_22045E924(0, 1, 1, MEMORY[0x277D84F90]);
        v69 = *(v67 + 2);
        v68 = *(v67 + 3);
        v423 = v67;
        if (v69 >= v68 >> 1)
        {
          v423 = sub_22045E924((v68 > 1), v69 + 1, 1, v67);
        }

        *(v423 + 2) = v69 + 1;
        v70 = &v423[16 * v69];
        *(v70 + 4) = v65;
        *(v70 + 5) = v66;
      }

      else
      {
        v423 = MEMORY[0x277D84F90];
      }

      v47(v452[85], v452[75], v452[57]);
      v46 = 0;
    }
  }

  else
  {
    v423 = MEMORY[0x277D84F90];
    v426 = MEMORY[0x277D84F90];
    v429 = MEMORY[0x277D84F90];
    v46 = 1;
  }

  v71 = 1;
  v431 = *(v452[58] + 56);
  v431(v452[85], v46, 1, v452[57]);
  if (sub_220885A5C())
  {
    v371 = v452[108];
    v372 = v452[109];
    v368 = v452[107];
    v369 = v452[105];
    v370 = v452[104];
    v386 = v452[96];
    v387 = v452[95];
    v373 = v452[81];
    v377 = v452[58];
    v390 = v452[57];
    v72 = v452[56];
    v366 = v452[106];
    v364 = v452[55];
    v365 = v452[97];
    v74 = v452[53];
    v73 = v452[54];
    v397 = v73;
    v362 = v452[15];

    sub_220885A9C();
    v76 = v75;
    v363 = *(v73 + 104);
    v363(v72, *MEMORY[0x277D69450], v74);
    v382 = swift_allocObject();
    *(v382 + 16) = xmmword_2208AB1B0;
    v77 = (v382 + v403);
    *v77 = v426;
    (v410)(v382 + v403, v374, v477);
    *(v77 + v455) = v423;
    v433((v382 + v403 + v455), v380, v16);
    (v410)(v382 + v403 + v455, v385, v477);
    *(v77 + 2 * v455) = v76;
    v433((v382 + v403 + v384), *MEMORY[0x277D69408], v16);
    (v410)(v382 + v403 + v384, v385, v477);
    sub_22046DA2C(v362 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_headlineViewingHistory, v382 + v403 + v401);
    v433((v382 + v403 + v401), *MEMORY[0x277D69400], v16);
    (v410)(v382 + v403 + v401, v385, v477);
    v433((v382 + v403 + v379), *MEMORY[0x277D693E8], v16);
    (v410)(v382 + v403 + v379, v385, v477);
    *(v77 + 5 * v455) = v429;
    (v410)(v382 + v403 + 5 * v455, *MEMORY[0x277D69590], v477);
    sub_22088607C();
    v363(v364, *MEMORY[0x277D69460], v74);
    sub_2208856FC();
    v78 = *(v397 + 8);
    v78(v364, v74);
    sub_22088571C();
    v79 = *(v369 + 8);
    v79(v366, v370);
    sub_2208856FC();
    v79(v368, v370);
    sub_22088570C();
    v79(v371, v370);
    sub_220707390(v373);
    v79(v372, v370);
    (*(v386 + 8))(v365, v387);
    v78(v72, v74);
    v80 = *(v377 + 48);
    if (v80(v373, 1, v390) == 1)
    {
      sub_2206DEDC4(v452[81], &unk_281299020, MEMORY[0x277D69858]);
      v81 = 1;
    }

    else
    {
      (*(v452[58] + 32))(v452[82], v452[81], v452[57]);
      v81 = 0;
    }

    v82 = v452[82];
    v83 = v452[57];
    v431(v82, v81, 1, v83);
    if (v80(v82, 1, v83) == 1)
    {
      sub_2206DEDC4(v452[82], &unk_281299020, MEMORY[0x277D69858]);
      v71 = 1;
    }

    else
    {
      v84 = *(v452[58] + 32);
      v84(v452[74], v452[82], v452[57]);
      v85 = sub_22088696C();
      v87 = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v426 = sub_22045E924(0, *(v426 + 2) + 1, 1, v426);
      }

      v89 = *(v426 + 2);
      v88 = *(v426 + 3);
      if (v89 >= v88 >> 1)
      {
        v426 = sub_22045E924((v88 > 1), v89 + 1, 1, v426);
      }

      *(v426 + 2) = v89 + 1;
      v90 = &v426[16 * v89];
      *(v90 + 4) = v85;
      *(v90 + 5) = v87;
      v91 = sub_22088697C();
      if (v92)
      {
        v93 = v91;
        v94 = v92;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v429 = sub_22045E924(0, *(v429 + 2) + 1, 1, v429);
        }

        v96 = *(v429 + 2);
        v95 = *(v429 + 3);
        if (v96 >= v95 >> 1)
        {
          v429 = sub_22045E924((v95 > 1), v96 + 1, 1, v429);
        }

        *(v429 + 2) = v96 + 1;
        v97 = &v429[16 * v96];
        *(v97 + 4) = v93;
        *(v97 + 5) = v94;
      }

      v98 = sub_22088690C();
      if (v99)
      {
        v100 = v98;
        v101 = v99;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v423 = sub_22045E924(0, *(v423 + 2) + 1, 1, v423);
        }

        v103 = *(v423 + 2);
        v102 = *(v423 + 3);
        if (v103 >= v102 >> 1)
        {
          v423 = sub_22045E924((v102 > 1), v103 + 1, 1, v423);
        }

        *(v423 + 2) = v103 + 1;
        v104 = &v423[16 * v103];
        *(v104 + 4) = v100;
        *(v104 + 5) = v101;
      }

      v84(v452[83], v452[74], v452[57]);
      v71 = 0;
    }
  }

  v105 = v452[108];
  v106 = v452[105];
  v478 = v452[104];
  v404 = v452[91];
  v434 = v452[89];
  v411 = v452[88];
  v471 = v452[85];
  v456 = v452[80];
  v107 = v452[58];
  v436 = v452[86];
  v443 = v452[57];
  v108 = v452[14];
  (v431)(v452[83], v71, 1);
  __swift_project_boxed_opaque_existential_1(v108, v399[3]);
  sub_22088572C();
  v109 = v452;
  sub_2208860DC();

  sub_2208856DC();

  v110 = sub_2206DE95C(v105, v426, v429);
  v111 = *(v106 + 8);
  v452[117] = v111;
  v452[118] = (v106 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v398 = v111;
  v111(v105, v478);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_220899920;
  v479 = v110;
  v113 = *(v110 + 16);
  *(v112 + 56) = MEMORY[0x277D83B88];
  *(v112 + 64) = MEMORY[0x277D83C10];
  *(v112 + 32) = v113;
  sub_2208856EC();
  sub_22088560C();
  v422(v404, v434);
  v114 = sub_22088681C();
  v116 = v115;
  v421(v411, v436);
  *(v112 + 96) = MEMORY[0x277D837D0];
  *(v112 + 104) = v416;
  *(v112 + 72) = v114;
  *(v112 + 80) = v116;
  v117 = sub_2208922DC();
  v118 = sub_220891AFC();
  sub_22088A7EC("For You stock section emitter has %lu personalized backfill stories (stock=%{public}@)", 86, 2, &dword_22043F000, v117, v118, v112);

  v452[6] = MEMORY[0x277D84F90];
  sub_2206DED30(v471, v456);
  v119 = *(v107 + 48);
  v120 = v119(v456, 1, v443);
  v121 = v452[80];
  if (v120 == 1)
  {
    sub_2206DEDC4(v121, &unk_281299020, MEMORY[0x277D69858]);
    v122 = &unk_281287000;
  }

  else
  {
    v123 = v452[15];
    v124 = *(v452[58] + 32);
    v124(v452[73], v121, v452[57]);
    v122 = &unk_281287000;
    __swift_project_boxed_opaque_existential_1((v123 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_headlineViewingHistory), *(v123 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_headlineViewingHistory + 24));
    if ((sub_22088639C() & 1) == 0)
    {
      v471 = v124;
      v434 = v119;
      v180 = v452[91];
      v181 = v452[89];
      v182 = v452[88];
      v183 = v452[86];
      v184 = v452[73];
      v185 = v452[72];
      v186 = v452[58];
      v459 = v452[57];
      v187 = swift_allocObject();
      *(v187 + 16) = xmmword_220899920;
      sub_2208856EC();
      sub_22088560C();
      v422(v180, v181);
      v188 = sub_22088681C();
      v190 = v189;
      v421(v182, v183);
      v191 = MEMORY[0x277D837D0];
      *(v187 + 56) = MEMORY[0x277D837D0];
      *(v187 + 64) = v416;
      *(v187 + 32) = v188;
      *(v187 + 40) = v190;
      v192 = sub_22088694C();
      *(v187 + 96) = v191;
      *(v187 + 104) = v416;
      if (v193)
      {
        v194 = v192;
      }

      else
      {
        v194 = 0;
      }

      v195 = 0xE000000000000000;
      if (v193)
      {
        v195 = v193;
      }

      *(v187 + 72) = v194;
      *(v187 + 80) = v195;
      v196 = sub_2208922DC();
      v197 = sub_220891AFC();
      sub_22088A7EC("For You stock section emitter will place the Big Story in the first slot (stock=%{public}@, title=%{public}@)", 109, 2, &dword_22043F000, v196, v197, v187);

      (*(v186 + 16))(v185, v184, v459);
      v128 = sub_220588574(0, 1, 1, MEMORY[0x277D84F90]);
      v199 = *(v128 + 2);
      v198 = *(v128 + 3);
      if (v199 >= v198 >> 1)
      {
        v128 = sub_220588574((v198 > 1), v199 + 1, 1, v128);
      }

      v109 = v452;
      v200 = v452[72];
      v201 = v452[57];
      v202 = v452[58];
      (*(v202 + 8))(v452[73], v201);
      *(v128 + 2) = v199 + 1;
      (v471)(&v128[((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v199], v200, v201);
      v452[6] = v128;
      goto LABEL_95;
    }

    (*(v452[58] + 8))(v452[73], v452[57]);
  }

  v125 = v452[79];
  v126 = v452[57];
  sub_2206DED30(v452[83], v125);
  if (v119(v125, 1, v126) != 1)
  {
    v434 = v119;
    v160 = v452[91];
    v161 = v452[89];
    v162 = v452[88];
    v163 = v452[86];
    v164 = v452[71];
    v458 = v452[70];
    v165 = v452[58];
    v445 = v452[57];
    v471 = *(v165 + 32);
    (v471)(v164, v452[79]);
    v166 = swift_allocObject();
    *(v166 + 16) = xmmword_220899920;
    sub_2208856EC();
    sub_22088560C();
    v422(v160, v161);
    v167 = sub_22088681C();
    v169 = v168;
    v421(v162, v163);
    v170 = MEMORY[0x277D837D0];
    *(v166 + 56) = MEMORY[0x277D837D0];
    *(v166 + 64) = v416;
    *(v166 + 32) = v167;
    *(v166 + 40) = v169;
    v171 = sub_22088694C();
    *(v166 + 96) = v170;
    *(v166 + 104) = v416;
    if (v172)
    {
      v173 = v171;
    }

    else
    {
      v173 = 0;
    }

    v174 = 0xE000000000000000;
    if (v172)
    {
      v174 = v172;
    }

    *(v166 + 72) = v173;
    *(v166 + 80) = v174;
    v175 = sub_2208922DC();
    v176 = sub_220891AFC();
    sub_22088A7EC("For You stock section emitter will place the Recent Story in the first slot (stock=%{public}@, title=%{public}@)", 112, 2, &dword_22043F000, v175, v176, v166);

    (*(v165 + 16))(v458, v164, v445);
    v128 = sub_220588574(0, 1, 1, MEMORY[0x277D84F90]);
    v129 = *(v128 + 2);
    v132 = *(v128 + 3);
    v125 = (v129 + 1);
    if (v129 >= v132 >> 1)
    {
      goto LABEL_145;
    }

    goto LABEL_71;
  }

  sub_2206DEDC4(v452[79], &unk_281299020, MEMORY[0x277D69858]);
  v127 = v479;
  v128 = *(v479 + 16);
  if (v128)
  {
    v434 = v119;
    v129 = 0;
    v130 = v452[58];
    v444 = (v452[15] + v122[434]);
    v412 = (*(v130 + 80) + 32) & ~*(v130 + 80);
    v131 = (v130 + 8);
    v457 = (v130 + 8);
    do
    {
      v132 = *(v127 + 16);
      if (v129 >= v132)
      {
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      v125 = v452[67];
      v471 = *(v130 + 72);
      v133 = *(v130 + 16);
      v133(v125, v479 + v412 + v471 * v129, v452[57]);
      if (sub_2208868FC())
      {
        v125 = __swift_project_boxed_opaque_existential_1(v444, v444[3]);
        v131 = (v130 + 8);
        if ((sub_22088639C() & 1) == 0)
        {
          v134 = v452[91];
          v135 = v452[88];
          v391 = v452[89];
          v395 = v452[86];
          v136 = v452[69];
          v137 = v452[68];
          v405 = v452[66];
          v138 = v452[57];
          v139 = *(v452[58] + 32);
          v139(v137, v452[67], v138);
          v140 = v136;
          v139(v136, v137, v138);
          v141 = swift_allocObject();
          *(v141 + 16) = xmmword_220899920;
          sub_2208856EC();
          sub_22088560C();
          v422(v134, v391);
          v142 = sub_22088681C();
          v144 = v143;
          v421(v135, v395);
          v145 = MEMORY[0x277D837D0];
          *(v141 + 56) = MEMORY[0x277D837D0];
          *(v141 + 64) = v416;
          *(v141 + 32) = v142;
          *(v141 + 40) = v144;
          v146 = sub_22088694C();
          *(v141 + 96) = v145;
          *(v141 + 104) = v416;
          if (v147)
          {
            v148 = v146;
          }

          else
          {
            v148 = 0;
          }

          v149 = 0xE000000000000000;
          if (v147)
          {
            v149 = v147;
          }

          *(v141 + 72) = v148;
          *(v141 + 80) = v149;
          v150 = sub_2208922DC();
          v151 = sub_220891AFC();
          sub_22088A7EC("For You stock section emitter will place an unseen backfill story in the first slot (stock=%{public}@, title=%{public}@)", 120, 2, &dword_22043F000, v150, v151, v141);

          v133(v405, v140, v138);
          v128 = sub_220588574(0, 1, 1, MEMORY[0x277D84F90]);
          v153 = *(v128 + 2);
          v152 = *(v128 + 3);
          v154 = v139;
          if (v153 >= v152 >> 1)
          {
            v128 = sub_220588574((v152 > 1), v153 + 1, 1, v128);
          }

          v119 = v434;
          v109 = v452;
          v155 = v452[69];
          v156 = v452[66];
          v157 = v452[57];
          *(v128 + 2) = v153 + 1;
          v154(&v128[v412 + v153 * v471], v156, v157);
          v452[6] = v128;
          v158 = swift_task_alloc();
          *(v158 + 16) = v155;
          sub_220687844(sub_2206DF7B0, v158, v479);
          v479 = v159;

          (*v457)(v155, v157);
          if (*(v128 + 2))
          {
            goto LABEL_96;
          }

          goto LABEL_86;
        }
      }

      ++v129;
      (*v131)(v452[67], v452[57]);
      v127 = v479;
    }

    while (v128 != v129);
    v129 = 0;
    v203 = v452[58];
    v204 = (v203 + 8);
    do
    {
      v132 = *(v127 + 16);
      if (v129 >= v132)
      {
        goto LABEL_143;
      }

      v125 = v452[63];
      v205 = (*(v203 + 80) + 32) & ~*(v203 + 80);
      v206 = *(v203 + 72);
      v207 = *(v203 + 16);
      v207(v125, v127 + v205 + v206 * v129, v452[57]);
      if (sub_2208868FC())
      {
        v388 = v452[91];
        v392 = v452[88];
        v402 = v452[89];
        v406 = v452[86];
        v209 = v452[65];
        v396 = v209;
        v210 = v452[64];
        v446 = v452[62];
        v211 = v452[58];
        v212 = *(v211 + 32);
        v413 = v452[57];
        v212(v210, v452[63], v413);
        v471 = v211 + 32;
        v460 = v212;
        v212(v209, v210, v413);
        v213 = swift_allocObject();
        *(v213 + 16) = xmmword_220899920;
        sub_2208856EC();
        sub_22088560C();
        v422(v388, v402);
        v214 = sub_22088681C();
        v216 = v215;
        v421(v392, v406);
        v217 = MEMORY[0x277D837D0];
        *(v213 + 56) = MEMORY[0x277D837D0];
        *(v213 + 64) = v416;
        *(v213 + 32) = v214;
        *(v213 + 40) = v216;
        v218 = sub_22088694C();
        *(v213 + 96) = v217;
        *(v213 + 104) = v416;
        if (v219)
        {
          v220 = v218;
        }

        else
        {
          v220 = 0;
        }

        v221 = 0xE000000000000000;
        if (v219)
        {
          v221 = v219;
        }

        *(v213 + 72) = v220;
        *(v213 + 80) = v221;
        v222 = sub_2208922DC();
        v223 = sub_220891AFC();
        sub_22088A7EC("For You stock section emitter will place a seen backfill story in the first slot (stock=%{public}@, title=%{public}@)", 117, 2, &dword_22043F000, v222, v223, v213);

        v207(v446, v396, v413);
        v128 = sub_220588574(0, 1, 1, MEMORY[0x277D84F90]);
        v225 = *(v128 + 2);
        v224 = *(v128 + 3);
        if (v225 >= v224 >> 1)
        {
          v128 = sub_220588574((v224 > 1), v225 + 1, 1, v128);
        }

        v109 = v452;
        v226 = v452[65];
        v227 = v452[62];
        v228 = v452[57];
        *(v128 + 2) = v225 + 1;
        v460(&v128[v205 + v225 * v206], v227, v228);
        v452[6] = v128;
        v229 = swift_task_alloc();
        *(v229 + 16) = v226;
        sub_220687844(sub_2206DFDBC, v229, v479);
        v479 = v230;

        (*v204)(v226, v228);
        goto LABEL_95;
      }

      ++v129;
      (*v204)(v452[63], v452[57]);
      v127 = v479;
    }

    while (v128 != v129);
    v119 = v434;
  }

  v128 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_96;
  }

LABEL_86:
  for (i = 1; ; i = 0)
  {
    v231 = v109[85];
    v232 = v109[78];
    v233 = v109[57];
    v235 = v109[51];
    v234 = v109[52];
    v431(v232, i, 1, v233);
    v236 = *(v235 + 48);
    sub_2206DED30(v232, v234);
    sub_2206DED30(v231, v234 + v236);
    if (v119(v234, 1, v233) == 1)
    {
      v237 = v109[57];
      sub_2206DEDC4(v109[78], &unk_281299020, MEMORY[0x277D69858]);
      if (v119(v234 + v236, 1, v237) == 1)
      {
        v238 = v109[52];
LABEL_105:
        sub_2206DEDC4(v238, &unk_281299020, MEMORY[0x277D69858]);
        goto LABEL_117;
      }
    }

    else
    {
      v239 = v109[57];
      sub_2206DED30(v109[52], v109[77]);
      v240 = v119(v234 + v236, 1, v239);
      v241 = v109[78];
      v242 = v109[77];
      if (v240 != 1)
      {
        v272 = v109[61];
        v273 = v452[58];
        v274 = v452[57];
        v275 = v119;
        v276 = v452[52];
        (*(v273 + 32))(v272, v234 + v236, v274);
        sub_220502864(&unk_281299030, MEMORY[0x277D69858], MEMORY[0x277D69860]);
        v277 = sub_2208912FC();
        v278 = *(v273 + 8);
        v278(v272, v274);
        v279 = v128;
        v280 = MEMORY[0x277D69858];
        sub_2206DEDC4(v241, &unk_281299020, MEMORY[0x277D69858]);
        v278(v242, v274);
        v109 = v452;
        v281 = v276;
        v119 = v275;
        v282 = v280;
        v128 = v279;
        sub_2206DEDC4(v281, &unk_281299020, v282);
        if (v277)
        {
          goto LABEL_117;
        }

        goto LABEL_103;
      }

      v243 = v109[57];
      v244 = v109[58];
      sub_2206DEDC4(v109[78], &unk_281299020, MEMORY[0x277D69858]);
      (*(v244 + 8))(v242, v243);
    }

    sub_2206DE7EC(v109[52], sub_2206DE8C8);
LABEL_103:
    v245 = v109[76];
    v246 = v109[57];
    sub_2206DED30(v109[85], v245);
    if (v119(v245, 1, v246) == 1)
    {
      v238 = v109[76];
      goto LABEL_105;
    }

    v247 = v109[91];
    v248 = v128;
    v249 = v109[89];
    v250 = v109;
    v251 = v109[88];
    v252 = v250[86];
    v253 = v250[60];
    v254 = v250[58];
    v437 = v250[57];
    v447 = v250[59];
    v471 = v254 + 32;
    v461 = *(v254 + 32);
    (v461)(v253, v250[76]);
    v255 = swift_allocObject();
    *(v255 + 16) = xmmword_220899920;
    sub_2208856EC();
    sub_22088560C();
    v256 = v249;
    v128 = v248;
    v422(v247, v256);
    v257 = sub_22088681C();
    v259 = v258;
    v421(v251, v252);
    v260 = MEMORY[0x277D837D0];
    *(v255 + 56) = MEMORY[0x277D837D0];
    *(v255 + 64) = v416;
    *(v255 + 32) = v257;
    *(v255 + 40) = v259;
    v261 = sub_22088694C();
    *(v255 + 96) = v260;
    *(v255 + 104) = v416;
    if (v262)
    {
      v263 = v261;
    }

    else
    {
      v263 = 0;
    }

    v264 = 0xE000000000000000;
    if (v262)
    {
      v264 = v262;
    }

    *(v255 + 72) = v263;
    *(v255 + 80) = v264;
    v265 = sub_2208922DC();
    v266 = sub_220891AFC();
    sub_22088A7EC("For You stock section emitter will place the Big Story in the second slot (stock=%{public}@, title=%{public}@)", 110, 2, &dword_22043F000, v265, v266, v255);

    (*(v254 + 16))(v447, v253, v437);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v128 = sub_220588574(0, *(v128 + 2) + 1, 1, v128);
    }

    v268 = *(v128 + 2);
    v267 = *(v128 + 3);
    v109 = v452;
    if (v268 >= v267 >> 1)
    {
      v128 = sub_220588574((v267 > 1), v268 + 1, 1, v128);
    }

    v269 = v452[59];
    v270 = v452[57];
    v271 = v452[58];
    (*(v271 + 8))(v452[60], v270);
    *(v128 + 2) = v268 + 1;
    v461(&v128[((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v268], v269, v270);
    v452[6] = v128;
LABEL_117:
    sub_2205D33E8(v479);
    sub_220886A8C();
    sub_220502864(&qword_281287D58, type metadata accessor for StockForYouFeedGroupEmitter, &unk_2208AB340);
    sub_220886B3C();

    if (*(v109 + 1024) == 1)
    {
      v125 = v109[15];
      sub_220886A7C();
      sub_220886B3C();

      v132 = v109[7];
    }

    else
    {
      v125 = v109[101];
      v283 = sub_22088592C();
      v132 = 5;
      if (v283 < 5)
      {
        v132 = v283;
      }
    }

    v284 = v109[6];
    v129 = *(v284 + 16);
    if (v132 >= v129)
    {
      goto LABEL_124;
    }

    if ((v132 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_144:
    __break(1u);
LABEL_145:
    v128 = sub_220588574((v132 > 1), v125, 1, v128);
LABEL_71:
    v177 = v452[70];
    v178 = v452[57];
    v179 = v452[58];
    (*(v179 + 8))(v452[71], v178);
    *(v128 + 2) = v125;
    (v471)(&v128[((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v129], v177, v178);
    v109 = v452;
    v452[6] = v128;
LABEL_95:
    v119 = v434;
    if (!*(v128 + 2))
    {
      goto LABEL_86;
    }

LABEL_96:
    (*(v109[58] + 16))(v109[78], &v128[(*(v109[58] + 80) + 32) & ~*(v109[58] + 80)], v109[57]);
  }

  v285 = (2 * v132) | 1;
  v286 = *(v109[58] + 80);
  sub_2206CE6DC(v109[6], v284 + ((v286 + 32) & ~v286), 0, v285);
  v288 = v287;

  v129 = *(v288 + 16);
  v284 = v288;
LABEL_124:
  v109[119] = v284;
  if (v129 < sub_22088593C())
  {
    v472 = v109[111];
    v435 = v109[104];
    v438 = v109[110];
    v289 = v109[101];
    v432 = v109[99];
    v453 = v109[98];
    v462 = v109[103];
    v290 = v109[96];
    v448 = v109[95];
    v291 = v109[91];
    v292 = v109[89];
    v293 = v109[88];
    v294 = v109;
    v295 = v109[86];
    v414 = v294[85];
    v409 = v294[83];

    v296 = swift_allocObject();
    *(v296 + 16) = xmmword_22089B140;
    sub_2208856EC();
    sub_22088560C();
    v422(v291, v292);
    v297 = sub_22088681C();
    v299 = v298;
    v421(v293, v295);
    *(v296 + 56) = MEMORY[0x277D837D0];
    *(v296 + 64) = v416;
    *(v296 + 32) = v297;
    *(v296 + 40) = v299;
    v300 = sub_22088593C();
    v301 = MEMORY[0x277D83B88];
    *(v296 + 96) = MEMORY[0x277D83B88];
    v302 = MEMORY[0x277D83C10];
    *(v296 + 104) = MEMORY[0x277D83C10];
    *(v296 + 72) = v300;
    v303 = *(v284 + 16);
    *(v296 + 136) = v301;
    *(v296 + 144) = v302;
    *(v296 + 112) = v303;
    v304 = sub_2208922DC();
    v305 = sub_220891AFC();
    sub_22088A7EC("For You stock section emitter will not produce section due to failure to meet minimum section size (stock=%{public}@, minimum=%lu, actual=%lu)", 142, 2, &dword_22043F000, v304, v305, v296);

    sub_2206DF75C();
    swift_allocError();
    swift_willThrow();
    v306 = MEMORY[0x277D69858];
    sub_2206DEDC4(v409, &unk_281299020, MEMORY[0x277D69858]);
    sub_2206DEDC4(v414, &unk_281299020, v306);
    v375(v289, v432);
    v398(v438, v435);
    (*(v290 + 8))(v453, v448);
    v375(v462, v432);
    v398(v472, v435);

    v351 = v294[1];
    goto LABEL_136;
  }

  v307 = v109[47];
  v308 = v109[48];
  v310 = v109[45];
  v309 = v109[46];
  v109[120] = OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_config;
  sub_220452A8C(0);
  v109[121] = v311;
  sub_22088F48C();
  sub_220561F64(v309, v310);
  if ((*(v308 + 48))(v310, 1, v307) == 1)
  {
    v312 = v109[104];
    v473 = v109[103];
    v480 = v109[111];
    v449 = v109[101];
    v454 = v109[110];
    v313 = v109[99];
    v314 = v109[96];
    v463 = v109[95];
    v467 = v109[98];
    v315 = v109[91];
    v316 = v109[89];
    v439 = v109[85];
    v317 = v109[83];
    v318 = v109[45];
    v367 = v109[8];

    sub_2206DEDC4(v318, &qword_2812968D8, MEMORY[0x277D33478]);
    sub_2208856EC();
    sub_22088560C();
    v422(v315, v316);
    v319 = MEMORY[0x277D69858];
    sub_2206DEDC4(v317, &unk_281299020, MEMORY[0x277D69858]);
    sub_2206DEDC4(v439, &unk_281299020, v319);
    v375(v449, v313);
    v398(v454, v312);
    (*(v314 + 8))(v467, v463);
    v375(v473, v313);
    v398(v480, v312);
    v320 = type metadata accessor for StockForYouFeedGroup(0);
    v321 = v109[119];
    v322 = v109[8];
    (*(v109[21] + 56))(v367 + v320[7], 1, 1, v109[20]);
    *(v322 + v320[5]) = v321;
    *(v322 + v320[6]) = 0;

    v351 = v109[1];
LABEL_136:

    return v351();
  }

  else
  {
    (*(v109[48] + 32))(v109[50], v109[45], v109[47]);
    v323 = *(v284 + 16);
    if (v323)
    {
      v324 = v109[58];
      v325 = v109[39];
      v482[0] = MEMORY[0x277D84F90];
      sub_22070C3BC(0, v323, 0);
      v474 = *(v324 + 16);
      v326 = v482[0];
      v327 = v284 + ((*(v324 + 80) + 32) & ~*(v324 + 80));
      v464 = *(v324 + 72);
      v450 = (v324 + 8);
      v440 = *MEMORY[0x277D34128];
      do
      {
        v328 = v109[61];
        v329 = v109[57];
        v330 = v109[40];
        v331 = v109[38];
        v474(v328, v327, v329);
        v332 = sub_2208868DC();
        (*v450)(v328, v329);
        *v330 = v332;
        (*(v325 + 104))(v330, v440, v331);
        v482[0] = v326;
        v334 = *(v326 + 16);
        v333 = *(v326 + 24);
        if (v334 >= v333 >> 1)
        {
          sub_22070C3BC((v333 > 1), v334 + 1, 1);
          v326 = v482[0];
        }

        v335 = v109[40];
        v336 = v109[38];
        *(v326 + 16) = v334 + 1;
        (*(v325 + 32))(v326 + ((*(v325 + 80) + 32) & ~*(v325 + 80)) + *(v325 + 72) * v334, v335, v336);
        v327 += v464;
        --v323;
      }

      while (v323);
    }

    v337 = v109[91];
    v465 = v109[89];
    v338 = v109[88];
    v475 = v109[86];
    v407 = v109[44];
    v481 = v109[43];
    v417 = v109[42];
    v419 = v109[41];
    v389 = v109[33];
    v393 = v109[32];
    v424 = v109[25];
    v427 = v109[24];
    v441 = v109[15];
    v451 = v109[23];
    v339 = MEMORY[0x277D84F90];
    sub_2206DEE64(MEMORY[0x277D84F90], sub_2206DF8BC);
    sub_2206DEE64(v339, sub_2206DF838);
    sub_2206DEF60(v339);
    sub_220890A6C();
    sub_2208856EC();
    sub_22088560C();
    v422(v337, v465);
    sub_2206DF158(v338);
    v421(v338, v475);
    sub_2206DEE64(v339, sub_2206DF8BC);
    sub_2206DEE64(v339, sub_2206DF838);
    sub_2206DEF60(v339);
    sub_220890A6C();
    __swift_project_boxed_opaque_existential_1((v441 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_formatService), *(v441 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_formatService + 24));
    sub_2208856EC();
    sub_22088560C();
    v422(v337, v465);
    sub_22088677C();
    v421(v338, v475);
    v340 = sub_22088ECFC();
    v476 = *(*(v340 - 8) + 56);
    v476(v389, 1, 1, v340);
    sub_2206DE84C(0);
    (*(*(v341 - 8) + 56))(v393, 1, 1, v341);
    sub_22089034C();

    sub_2206DEDC4(v393, &qword_281296788, sub_2206DE84C);
    sub_2206DEDC4(v389, &qword_281296D50, MEMORY[0x277D2D4E0]);
    sub_22052BCFC(0, &qword_28127DFA0, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v342 = *(v417 + 72);
    v343 = (*(v417 + 80) + 32) & ~*(v417 + 80);
    v344 = swift_allocObject();
    *(v344 + 16) = xmmword_220899920;
    v345 = v344 + v343;
    v346 = *(v417 + 16);
    v346(v345, v407, v419);
    v346(v345 + v342, v481, v419);
    v476(v389, 1, 1, v340);
    sub_22061A1B8(v339);
    sub_22061A1B8(v339);
    sub_22061A1D0(v339);
    sub_22061A1E8(v339);
    sub_22061A2FC(v339);
    sub_22061A410(v339);
    sub_22061A428(v339);
    sub_2208904BC();
    sub_22044CF38(0);
    v452[122] = v347;
    (*(*(v347 - 8) + 56))(v424, 1, 1, v347);
    v348 = sub_2208909AC();
    (*(*(v348 - 8) + 56))(v427, 1, 1, v348);
    *(v452 + 1025) = 1;
    sub_2206DF978(0, &qword_2812967B8, type metadata accessor for ForYouFeedServiceConfig, sub_220502768, MEMORY[0x277D33F88]);
    swift_allocObject();

    sub_2208909CC();
    v349 = sub_22089068C();
    (*(*(v349 - 8) + 56))(v451, 1, 1, v349);
    v350 = qword_2812948A0;
    *MEMORY[0x277D30BC8];
    if (v350 != -1)
    {
      swift_once();
    }

    qword_2812948A8;
    sub_2208906DC();
    v452[123] = sub_22089052C();
    v354 = v452[48];
    v353 = v452[49];
    v355 = v452[47];
    v357 = v452[30];
    v356 = v452[31];
    v358 = v452[29];
    (*(v452[27] + 8))(v452[28], v452[26]);
    (*(v357 + 8))(v356, v358);
    v359 = *(v354 + 8);
    v452[124] = v359;
    v452[125] = (v354 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v359(v353, v355);
    v360 = swift_task_alloc();
    v452[126] = v360;
    *v360 = v452;
    v360[1] = sub_2206DCAF4;
    v361 = v452[37];

    return MEMORY[0x2821D23D8](v361);
  }
}

uint64_t sub_2206DCAF4()
{
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v2 = sub_2206DD35C;
  }

  else
  {
    v2 = sub_2206DCC28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206DCC28()
{
  v27 = v0[124];
  v38 = v0[117];
  v22 = v0[115];
  v33 = v0[110];
  v31 = v0[112];
  v32 = v0[104];
  v39 = v0[103];
  v40 = v0[111];
  v28 = v0[99];
  v29 = v0[101];
  v30 = v0[96];
  v34 = v0[95];
  v35 = v0[98];
  v17 = v0[91];
  v18 = v0[89];
  v25 = v0[83];
  v26 = v0[85];
  v23 = v0[47];
  v24 = v0[50];
  v20 = v0[43];
  v21 = v0[44];
  v19 = v0[41];
  v13 = v0[42];
  v1 = v0[35];
  v15 = v0[34];
  v16 = v0[37];
  v14 = v0[22];
  v36 = v0[21];
  v37 = v0[20];
  v2 = v0[17];
  v12 = v0[8];
  (*(v1 + 16))();
  sub_22088F47C();
  sub_22088F47C();
  sub_22088F7FC();
  sub_22088F81C();
  v3 = sub_22088F68C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_22088F36C();
  sub_2208856EC();
  sub_22088560C();
  v22(v17, v18);
  (*(v1 + 8))(v16, v15);
  v4 = *(v13 + 8);
  v4(v20, v19);
  v4(v21, v19);
  v27(v24, v23);
  v5 = MEMORY[0x277D69858];
  sub_2206DEDC4(v25, &unk_281299020, MEMORY[0x277D69858]);
  sub_2206DEDC4(v26, &unk_281299020, v5);
  v31(v29, v28);
  v38(v33, v32);
  (*(v30 + 8))(v35, v34);
  v31(v39, v28);
  v38(v40, v32);
  v6 = type metadata accessor for StockForYouFeedGroup(0);
  v7 = v6[7];
  (*(v36 + 32))(v12 + v7, v14, v37);
  v8 = v0[119];
  v9 = v0[8];
  (*(v0[21] + 56))(v12 + v7, 0, 1, v0[20]);
  *(v9 + v6[5]) = v8;
  *(v9 + v6[6]) = 0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_2206DD35C()
{
  v13 = v0[124];
  v20 = v0[117];
  v22 = v0[111];
  v17 = v0[110];
  v15 = v0[112];
  v16 = v0[104];
  v21 = v0[103];
  v14 = v0[101];
  v1 = v0[99];
  v2 = v0[96];
  v18 = v0[95];
  v19 = v0[98];
  v12 = v0[85];
  v3 = v0[83];
  v4 = v0[50];
  v5 = v0[47];
  v6 = v0[44];
  v7 = v0[41];
  v8 = *(v0[42] + 8);
  v8(v0[43], v7);
  v8(v6, v7);
  v13(v4, v5);
  v9 = MEMORY[0x277D69858];
  sub_2206DEDC4(v3, &unk_281299020, MEMORY[0x277D69858]);
  sub_2206DEDC4(v12, &unk_281299020, v9);
  v15(v14, v1);
  v20(v17, v16);
  (*(v2 + 8))(v19, v18);
  v15(v21, v1);
  v20(v22, v16);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2206DD86C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a5;
  v34 = a3;
  v35 = a4;
  v39 = a6;
  v38 = sub_22088561C();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v8);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088516C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v33 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v32 = &v28 - v16;
  v17 = sub_220885ACC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[1];
  v31 = *a1;
  __swift_project_boxed_opaque_existential_1(a2 + 3, a2[6]);
  v30 = v22;

  sub_22088641C();
  v23 = sub_2208859FC();
  result = (*(v18 + 8))(v21, v17);
  if (v23 < 0)
  {
    __break(1u);
  }

  else
  {
    v25 = *(v11 + 16);
    v25(v32, v34, v10);
    v25(v33, v35, v10);
    v26 = sub_22088685C();
    v27 = v29;
    (*(*(v26 - 8) + 16))(v29, v37, v26);
    (*(v36 + 104))(v27, *MEMORY[0x277D69238], v38);
    return sub_22088584C();
  }

  return result;
}

uint64_t sub_2206DDB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_22088685C();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088561C();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052BCFC(0, &unk_281299020, MEMORY[0x277D69858], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v62 = &v53 - v11;
  v63 = sub_22088609C();
  v12 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_220885D1C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22088573C();
  v61 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v29 = &v53 - v28;
  (*(v17 + 104))(v20, *MEMORY[0x277D69460], v16, v27);
  v58 = a1;
  sub_2208856FC();
  (*(v17 + 8))(v20, v16);
  sub_22052BCFC(0, &qword_28127E1A8, MEMORY[0x277D695B0], MEMORY[0x277D84560]);
  v30 = sub_22088608C();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  v53 = xmmword_220899360;
  *(v33 + 16) = xmmword_220899360;
  v34 = *MEMORY[0x277D693E8];
  v35 = sub_220885B7C();
  (*(*(v35 - 8) + 104))(v33 + v32, v34, v35);
  (*(v31 + 104))(v33 + v32, *MEMORY[0x277D695A8], v30);
  sub_22088607C();
  sub_22088571C();
  v36 = v15;
  v37 = v62;
  (*(v12 + 8))(v36, v63);
  v38 = *(v61 + 8);
  v38(v24, v21);
  v63 = v29;
  sub_220707390(v37);
  v39 = sub_22088698C();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v37, 1, v39) == 1)
  {
    sub_2206DEDC4(v37, &unk_281299020, MEMORY[0x277D69858]);
    sub_22048D7F8(0);
    v41 = swift_allocObject();
    *(v41 + 16) = v53;
    v42 = v54;
    sub_2208856EC();
    v43 = v57;
    sub_22088560C();
    (*(v55 + 8))(v42, v56);
    v44 = sub_22088681C();
    v46 = v45;
    (*(v59 + 8))(v43, v60);
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_22048D860();
    *(v41 + 32) = v44;
    *(v41 + 40) = v46;
    sub_22048D2F4();
    v47 = sub_2208922DC();
    v48 = sub_220891AFC();
    sub_22088A7EC("For You stock section emitter found no Big Story (stock=%{public}@)", 67, 2, &dword_22043F000, v47, v48, v41);

    v38(v63, v21);
    v49 = 1;
    v50 = v64;
  }

  else
  {
    v38(v63, v21);
    v51 = v64;
    (*(v40 + 32))(v64, v37, v39);
    v49 = 0;
    v50 = v51;
  }

  return (*(v40 + 56))(v50, v49, 1, v39);
}

BOOL sub_2206DE274(uint64_t a1, uint64_t a2)
{
  sub_22088698C();
  sub_220502864(&unk_281299030, MEMORY[0x277D69858], MEMORY[0x277D69860]);
  return (sub_2208912FC() & 1) == 0;
}

uint64_t sub_2206DE3B8(uint64_t a1, uint64_t a2)
{
  sub_220458660(0, qword_281282FA8, &type metadata for StockForYouFeedGroupEmitterCursor);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206DE42C(uint64_t a1)
{
  sub_220458660(0, qword_281282FA8, &type metadata for StockForYouFeedGroupEmitterCursor);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2206DE4F4(uint64_t a1, uint64_t a2)
{
  sub_220458660(0, qword_281282FA8, &type metadata for StockForYouFeedGroupEmitterCursor);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206DE568(uint64_t a1)
{
  v4 = *(sub_22088685C() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_220685970;

  return sub_2206D7848(a1, v6, v1 + v5, v7);
}

uint64_t sub_2206DE684(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_220685970;

  return sub_2206D80B0(a1, v1);
}

uint64_t sub_2206DE720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockForYouFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206DE784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206DE7EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2206DE8C8(uint64_t a1)
{
  if (!qword_281299018)
  {
    sub_22052BCFC(255, &unk_281299020, MEMORY[0x277D69858], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281299018);
    }
  }
}

uint64_t sub_2206DE95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v43 = sub_22088573C();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v5);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v37 = &v34 - v9;
  v10 = sub_22088609C();
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_220885D1C();
  v13 = *(v36 - 8);
  v15 = MEMORY[0x28223BE20](v36, v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v17, *MEMORY[0x277D69458], v15);
  sub_22052BCFC(0, &qword_28127E1A8, MEMORY[0x277D695B0], MEMORY[0x277D84560]);
  v18 = sub_22088608C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_220899920;
  v23 = (v22 + v21);
  *v23 = a2;
  v24 = *(v19 + 104);
  v24(v23, *MEMORY[0x277D69588], v18);
  *(v23 + v20) = a3;
  v24((v23 + v20), *MEMORY[0x277D69590], v18);

  v25 = v35;
  sub_22088607C();
  v26 = v38;
  sub_2208856FC();
  v27 = v37;
  v28 = v26;
  sub_22088571C();
  v29 = *(v41 + 8);
  v30 = v28;
  v31 = v43;
  v29(v30, v43);
  v32 = sub_22088572C();
  v29(v27, v31);
  (*(v39 + 8))(v25, v40);
  (*(v13 + 8))(v17, v36);
  return v32;
}

uint64_t sub_2206DED30(uint64_t a1, uint64_t a2)
{
  sub_22052BCFC(0, &unk_281299020, MEMORY[0x277D69858], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206DEDC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22052BCFC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2206DEE64(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_2208926DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_2204AF97C(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_2206DEF60(uint64_t a1)
{
  sub_2206DF7D0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2206DF858(0, &qword_27CF58C78, MEMORY[0x277D34398]);
    v9 = sub_2208926DC();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_2206DE784(v11, v7, sub_2206DF7D0);
      v13 = *v7;
      v14 = v7[1];
      result = sub_2204AF97C(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_220890ACC();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

uint64_t sub_2206DF158(uint64_t a1)
{
  v49 = sub_22089026C();
  v2 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v3);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v46 = &v43 - v7;
  sub_22052BCFC(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v50 = &v43 - v10;
  v11 = sub_220884E9C();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220884A4C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22089050C();
  MEMORY[0x28223BE20](v19 - 8, v20);
  sub_22052BCFC(0, &qword_28127DFC0, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  v21 = *(v2 + 72);
  v48 = v2;
  v22 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v44 = v21;
  v23 = swift_allocObject();
  v53 = xmmword_220899360;
  *(v23 + 16) = xmmword_220899360;
  sub_22088684C();
  sub_2208904FC();

  sub_22089025C();
  v54 = a1;
  v55 = sub_22088681C();
  v56 = v24;
  sub_220884A0C();
  sub_22059B6A4();
  v25 = sub_22089237C();
  v27 = v26;
  (*(v15 + 8))(v18, v14);

  if (v27)
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_22089254C();

    v55 = 0x3F3A736B636F7473;
    v56 = 0xEF3D6C6F626D7973;
    MEMORY[0x223D89680](v25, v27);

    v28 = v50;
    sub_220884E8C();

    v30 = v51;
    v29 = v52;
    if ((*(v51 + 48))(v28, 1, v52) != 1)
    {
      v37 = v45;
      (*(v30 + 32))(v45, v28, v29);
      sub_2208904DC();
      v38 = v46;
      sub_22089025C();
      v40 = v47;
      v39 = v48;
      v41 = v49;
      (*(v48 + 16))(v47, v38, v49);
      v23 = sub_220588540(1, 2, 1, v23);
      (*(v39 + 8))(v38, v41);
      (*(v30 + 8))(v37, v29);
      *(v23 + 16) = 2;
      (*(v39 + 32))(v23 + v22 + v44, v40, v41);
      return v23;
    }

    sub_2206DEDC4(v28, &qword_2812994E0, MEMORY[0x277CC9260]);
  }

  sub_22048D7F8(0);
  v31 = swift_allocObject();
  *(v31 + 16) = v53;
  v32 = sub_22088681C();
  v34 = v33;
  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 64) = sub_22048D860();
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  sub_22048D2F4();
  v35 = sub_2208922DC();
  v36 = sub_220891AFC();
  sub_22088A7EC("For You stock section emitter failed to generate a URL for %{public}@", 69, 2, &dword_22043F000, v35, v36, v31);

  return v23;
}

unint64_t sub_2206DF75C()
{
  result = qword_281287D78;
  if (!qword_281287D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281287D78);
  }

  return result;
}

void sub_2206DF7D0(uint64_t a1)
{
  if (!qword_28127EBB8)
  {
    sub_220890ACC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127EBB8);
    }
  }
}

void sub_2206DF858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2208926EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2206DF8BC(uint64_t a1)
{
  if (!qword_27CF58C88)
  {
    sub_22052BCFC(255, &qword_27CF58C90, MEMORY[0x277D333A8], MEMORY[0x277D83940]);
    v1 = sub_2208926EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF58C88);
    }
  }
}

void sub_2206DF978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2206DF9F8(uint64_t a1)
{
  v3 = v2;
  sub_2206DF978(0, &qword_281296C50, type metadata accessor for ForYouFeedServiceConfig, sub_220502768, MEMORY[0x277D31C68]);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_220685970;

  return sub_2206D3624(a1, v1 + v6);
}

uint64_t sub_2206DFB1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_220685970;

  return sub_2206D3F28(a1);
}

uint64_t objectdestroy_45Tm()
{

  return swift_deallocObject();
}

uint64_t sub_2206DFC18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_220685970;

  return sub_2206D3FC8(a1);
}

unint64_t sub_2206DFCCC()
{
  result = qword_281298878;
  if (!qword_281298878)
  {
    sub_22052BCFC(255, &qword_281298870, type metadata accessor for StockForYouFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281298878);
  }

  return result;
}

unint64_t sub_2206DFD68()
{
  result = qword_27CF58CA0;
  if (!qword_27CF58CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CA0);
  }

  return result;
}

uint64_t type metadata accessor for StockListWatchlistChangeBlueprintModifier(uint64_t a1)
{
  result = qword_281280170;
  if (!qword_281280170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2206DFE54(uint64_t a1)
{
  result = sub_2208857BC();
  if (v2 <= 0x3F)
  {
    result = sub_2204446D4(319, &qword_281299280, MEMORY[0x277D69550]);
    if (v3 <= 0x3F)
    {
      result = sub_2204446D4(319, &unk_2812991E0, MEMORY[0x277D696B8]);
      if (v4 <= 0x3F)
      {
        result = sub_2204446D4(319, &unk_281299178, MEMORY[0x277D69718]);
        if (v5 <= 0x3F)
        {
          result = sub_2204446D4(319, &qword_281299220, MEMORY[0x277D69608]);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_2206DFF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v27 = a2;
  sub_22045BD88(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for StockListWatchlistChangeBlueprintModifier(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8, v16);
  v17 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v4;
  sub_22088582C();
  sub_220888FBC();
  sub_2206E2414(v4, v17, type metadata accessor for StockListWatchlistChangeBlueprintModifier);
  (*(v8 + 16))(v12, v26, v7);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = (v15 + *(v8 + 80) + v18) & ~*(v8 + 80);
  v20 = swift_allocObject();
  sub_2206E247C(v17, v20 + v18, type metadata accessor for StockListWatchlistChangeBlueprintModifier);
  (*(v8 + 32))(v20 + v19, v12, v7);
  v21 = (v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v27;
  *v21 = v27;
  v21[1] = a3;

  v23 = sub_220888D9C();
  sub_220888E4C();

  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = a3;

  v25 = sub_220888D9C();
  sub_220888E9C();
}

uint64_t sub_2206E0274(uint64_t a1)
{
  v2 = type metadata accessor for StockListWatchlistChangeBlueprintModifier(0);
  __swift_project_boxed_opaque_existential_1((a1 + *(v2 + 28)), *(a1 + *(v2 + 28) + 24));
  sub_22088574C();
  v3 = sub_22088632C();

  return v3;
}

uint64_t sub_2206E0300(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v114 = a4;
  v113 = a5;
  v124 = a3;
  v115 = a1;
  sub_22045BD88(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v111 = *(v6 - 8);
  v112 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v110 = &v91 - v8;
  v117 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v117, v9);
  v95 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C(0);
  v107 = v11;
  v96 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v94 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045BD88(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v120 = *(v14 - 8);
  v121 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v109 = &v91 - v16;
  sub_22046B2A0(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v93 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1EF0(0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v106 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v105 = &v91 - v25;
  sub_22046B19C(0);
  v119 = v26;
  v123 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v27);
  v108 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v122 = &v91 - v31;
  v104 = sub_220886A4C();
  v116 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v32);
  v103 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v102 = &v91 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v92 = &v91 - v39;
  sub_2204B5FB8(0);
  MEMORY[0x28223BE20](v40 - 8, v41);
  v43 = &v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_220885DFC();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v46);
  v48 = &v91 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for StockListWatchlistChangeBlueprintModifier(0);
  sub_22046DA2C(a2 + *(v49 + 32), v125);
  v99 = v127;
  v100 = v126;
  v98 = __swift_project_boxed_opaque_existential_1(v125, v126);
  v97 = sub_22088574C();
  sub_22088577C();
  v50 = *(v45 + 48);
  v51 = v50(v43, 1, v44);
  v118 = a2;
  v101 = v49;
  if (v51 == 1)
  {
    __swift_project_boxed_opaque_existential_1((a2 + *(v49 + 24)), *(a2 + *(v49 + 24) + 24));
    v52 = v92;
    sub_2208863EC();
    sub_220886A3C();
    v53 = v104;
    v116[1](v52, v104);
    if (v50(v43, 1, v44) != 1)
    {
      sub_2206E22F4(v43, sub_2204B5FB8);
    }
  }

  else
  {
    (*(v45 + 32))(v48, v43, v44);
    v53 = v104;
  }

  v104 = sub_22088646C();

  (*(v45 + 8))(v48, v44);
  __swift_destroy_boxed_opaque_existential_1(v125);
  v54 = (v118 + *(v101 + 24));
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v55 = v102;
  sub_2208863EC();
  v115 = sub_2208869DC();
  v57 = v56;
  v58 = v116[1];
  v58(v55, v53);
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v59 = v103;
  sub_2208863EC();
  v60 = sub_2208869BC();
  v62 = v61;
  v58(v59, v53);
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v63 = sub_220885FCC();
  if ((sub_22088F0DC() & 1) != 0 && *(v63 + 16) <= 1uLL)
  {

    v115 = 0;
    v57 = 0;
    v60 = 0;
    v62 = 0;
    v63 = 0;
  }

  v64 = v105;
  sub_22088E83C();
  v65 = v123;
  v66 = *(v123 + 48);
  v67 = v119;
  if (v66(v64, 1, v119) == 1)
  {
    v125[0] = v115;
    v125[1] = v57;
    v125[2] = v60;
    v126 = v62;
    v127 = v63;
    v128 = 0;
    v68 = sub_2206E215C(&qword_281297F88, sub_22046B36C, MEMORY[0x277D6D408]);
    v69 = sub_2206E215C(&unk_281297F90, sub_22046B36C, MEMORY[0x277D6D3F8]);
    MEMORY[0x223D80A10](MEMORY[0x277D84F90], v107, v68, v69);
    sub_22045B950();
    sub_2206E215C(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    sub_22088B29C();
    v70 = v66(v64, 1, v67);
    if (v70 != 1)
    {
      v70 = sub_2206E22F4(v64, sub_2204A1EF0);
    }
  }

  else
  {
    sub_2204BE768(v115, v57, v60, v62, v63);
    v70 = (*(v65 + 32))(v122, v64, v67);
  }

  MEMORY[0x28223BE20](v70, v71);
  *(&v91 - 2) = v118;
  sub_22088685C();
  sub_2206E215C(&qword_281299080, MEMORY[0x277D69810], MEMORY[0x277D69808]);
  v72 = v108;
  sub_22088B2CC();

  v73 = v121;
  v74 = *(v120 + 16);
  v75 = v109;
  v118 = v120 + 16;
  v116 = v74;
  (v74)(v109, v124, v121);
  sub_2206E215C(&qword_281297DB8, sub_22046B19C, MEMORY[0x277D6D730]);
  sub_22089193C();
  sub_22089199C();
  v76 = v110;
  if (v125[0] == v129)
  {
    swift_storeEnumTagMultiPayload();
    sub_2206E215C(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v77 = v94;
    sub_22088AD7C();
    sub_22088B30C();
    (*(v96 + 8))(v77, v107);
  }

  else
  {
    sub_22088E74C();
  }

  v78 = v123;
  v79 = v106;
  (*(v123 + 16))(v106, v122, v67);
  (*(v78 + 56))(v79, 0, 1, v67);
  sub_22088E6DC();
  sub_2206E22F4(v79, sub_2204A1EF0);
  sub_2204CD300();
  sub_22045B950();
  sub_2206E215C(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
  sub_22088BDEC();
  __swift_project_boxed_opaque_existential_1(v125, v126);
  if (sub_22088B65C())
  {
    v80 = MEMORY[0x277D6DF80];
  }

  else
  {
    sub_2206E235C(0);
    v82 = *(v81 + 48);
    v83 = *(v81 + 64);
    (v116)(v76, v75, v73);
    sub_22046DA2C(v125, &v76[v82]);
    v84 = *MEMORY[0x277D6D868];
    v85 = sub_22088B64C();
    (*(*(v85 - 8) + 104))(&v76[v83], v84, v85);
    v80 = MEMORY[0x277D6DF78];
  }

  v87 = v111;
  v86 = v112;
  (*(v111 + 104))(v76, *v80, v112);
  v114(v76);
  (*(v87 + 8))(v76, v86);
  (*(v120 + 8))(v75, v73);
  v88 = *(v123 + 8);
  v89 = v119;
  v88(v72, v119);
  v88(v122, v89);
  return __swift_destroy_boxed_opaque_existential_1(v125);
}

uint64_t sub_2206E1178@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v138 = a2;
  v136 = a3;
  v135 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v135, v4);
  v134 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208852DC();
  v132 = *(v6 - 8);
  v133 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v148 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2208857EC();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v9);
  v127 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_22088699C();
  v145 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v11);
  v143 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v137 = &v111 - v15;
  v146 = sub_220885D4C();
  v144 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v16);
  v142 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_220886A4C();
  v149 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v18);
  v131 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v111 - v22;
  sub_2204E99F0(0);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v27;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v121 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v120 = &v111 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v119 = &v111 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v116 = &v111 - v39;
  MEMORY[0x28223BE20](v40, v41);
  v139 = &v111 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v111 - v45;
  v140 = &v111 - v45;
  v47 = sub_22088685C();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v49);
  v51 = &v111 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for StockViewModel(0);
  v53 = MEMORY[0x28223BE20](v112, v52);
  v55 = &v111 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v48;
  v56 = *(v48 + 16);
  v56(v51, a1, v47, v53);
  v57 = sub_22088676C();
  v113 = *(v57 - 8);
  (*(v113 + 56))(v46, 1, 1, v57);
  v58 = type metadata accessor for StockSparklineViewModel(0);
  (*(*(v58 - 8) + 56))(v27, 1, 1, v58);
  v59 = &v138[*(type metadata accessor for StockListWatchlistChangeBlueprintModifier(0) + 24)];
  v60 = *(v59 + 3);
  v123 = v59;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  sub_2208863EC();
  v61 = v142;
  sub_2208869CC();
  v62 = *(v149 + 8);
  v149 += 8;
  v122 = v62;
  v62(v23, v147);
  v126 = v47;
  v63 = v47;
  v64 = v139;
  (v56)(v55, v51, v63);
  v65 = v116;
  v66 = v112;
  v67 = v140;
  sub_2206E2414(v140, &v55[*(v112 + 20)], sub_22045987C);
  v68 = v55;
  sub_2206E2414(v141, &v55[v66[6]], sub_2204E99F0);
  v69 = &v55[v66[8]];
  v70 = v61;
  v71 = v57;
  v72 = v137;
  (*(v144 + 16))(v69, v70, v146);
  v73 = v66[9];
  v138 = v68;
  v68[v73] = 0;
  v74 = v113;
  sub_2206E2414(v67, v64, sub_22045987C);
  v124 = v51;
  sub_2208867CC();
  sub_2206E2414(v64, v65, sub_22045987C);
  v75 = *(v74 + 48);
  if (v75(v65, 1, v71) == 1)
  {
    sub_2206E22F4(v65, sub_22045987C);
    v118 = 0;
    v117 = 1;
  }

  else
  {
    v118 = sub_22088675C();
    v117 = v76;
    (*(v74 + 8))(v65, v71);
  }

  v77 = v119;
  sub_2206E2414(v64, v119, sub_22045987C);
  v78 = v75(v77, 1, v71);
  v79 = v145;
  v80 = v120;
  if (v78 == 1)
  {
    sub_2206E22F4(v77, sub_22045987C);
    v116 = 0;
    v115 = 1;
  }

  else
  {
    v116 = sub_22088666C();
    v115 = v81;
    (*(v74 + 8))(v77, v71);
  }

  sub_2206E2414(v64, v80, sub_22045987C);
  if (v75(v80, 1, v71) == 1)
  {
    sub_2206E22F4(v80, sub_22045987C);
    v119 = 0;
    v114 = 1;
  }

  else
  {
    v119 = sub_22088671C();
    v114 = v82;
    (*(v74 + 8))(v80, v71);
  }

  v83 = v121;
  sub_2206E2414(v64, v121, sub_22045987C);
  if (v75(v83, 1, v71) == 1)
  {
    sub_2206E22F4(v83, sub_22045987C);
    v120 = 0;
    v111 = 0;
  }

  else
  {
    v120 = sub_22088668C();
    v111 = v84;
    (*(v74 + 8))(v83, v71);
  }

  v85 = v143;
  v86 = &v138[v66[7]];
  v87 = *(v79 + 16);
  v88 = v128;
  v87(v143, v72, v128);
  v89 = v129;
  v90 = v127;
  v91 = v130;
  (*(v129 + 104))(v127, *MEMORY[0x277D69288], v130);
  v92 = v148;
  sub_22088524C();
  *v86 = v118;
  v86[8] = v117 & 1;
  *(v86 + 2) = v116;
  v86[24] = v115 & 1;
  *(v86 + 4) = v119;
  v86[40] = v114 & 1;
  v93 = v111;
  *(v86 + 6) = v120;
  *(v86 + 7) = v93;
  v94 = type metadata accessor for PriceViewModel(0);
  v87(&v86[v94[10]], v85, v88);
  *(v86 + 8) = 9666786;
  *(v86 + 9) = 0xA300000000000000;
  (*(v89 + 16))(&v86[v94[9]], v90, v91);
  v95 = v132;
  v96 = &v86[v94[11]];
  v97 = v133;
  (*(v132 + 16))(v96, v92, v133);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v98 = qword_2812B6B48;
  (*(v89 + 8))(v90, v91);
  v99 = *(v145 + 8);
  v99(v143, v88);
  v99(v137, v88);
  sub_2206E22F4(v139, sub_22045987C);
  (*(v144 + 8))(v142, v146);
  sub_2206E22F4(v141, sub_2204E99F0);
  sub_2206E22F4(v140, sub_22045987C);
  (*(v125 + 8))(v124, v126);
  v100 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v95 + 40))(v98 + v100, v148, v97);
  swift_endAccess();
  v101 = v138;
  v102 = v134;
  sub_2206E2414(v138, v134, type metadata accessor for StockViewModel);
  v103 = v123;
  __swift_project_boxed_opaque_existential_1(v123, *(v123 + 3));
  LOBYTE(v100) = sub_22088602C();
  __swift_project_boxed_opaque_existential_1(v103, *(v103 + 3));
  v104 = v131;
  sub_2208863EC();
  v105 = sub_2208869BC();
  v107 = v106;
  v122(v104, v147);
  sub_2206E22F4(v101, type metadata accessor for StockViewModel);
  v108 = v135;
  *(v102 + *(v135 + 20)) = v100 & 1;
  v109 = (v102 + *(v108 + 24));
  *v109 = v105;
  v109[1] = v107;
  sub_2206E247C(v102, v136, type metadata accessor for StockListStockModel);
  type metadata accessor for StockListModel(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2206E1FA4(void *a1, void (*a2)(char *))
{
  sub_22045BD88(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v13 - v9;
  *(&v13 - v9) = a1;
  (*(v6 + 104))(&v13 - v9, *MEMORY[0x277D6DF68], v5, v8);
  v11 = a1;
  a2(v10);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_2206E215C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2206E21C0(uint64_t a1)
{
  v3 = *(type metadata accessor for StockListWatchlistChangeBlueprintModifier(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_22045BD88(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v7 = (v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = v1 + ((*(*(v6 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_2206E0300(a1, v1 + v4, v1 + v7, *v8, *(v8 + 8));
}

uint64_t sub_2206E22F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2206E235C(uint64_t a1)
{
  if (!qword_27CF58CA8)
  {
    sub_22045BD88(255, &qword_281296EE0, MEMORY[0x277D6EC60]);
    sub_2204446D4(255, &qword_281297D50, MEMORY[0x277D6D880]);
    sub_22088B64C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF58CA8);
    }
  }
}

uint64_t sub_2206E2414(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206E247C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206E24E4(void *a1, void (*a2)(char *))
{
  sub_22051D4B8(0, &qword_281297840, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v13 - v9;
  *(&v13 - v9) = a1;
  (*(v6 + 104))(&v13 - v9, *MEMORY[0x277D6DF68], v5, v8);
  v11 = a1;
  a2(v10);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_2206E2608()
{
  sub_22051F584(0, &qword_28127E048, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_22088C37C();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220899360;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE38], v0);
  v4 = sub_2207E15E8(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_2206E2754(uint64_t a1)
{
  v2 = sub_22051DCC0(&qword_281283A50, type metadata accessor for ForYouFeedExpandBlueprintModifier, &unk_2208AB5B8);

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2206E2898()
{
  result = qword_281283A58;
  if (!qword_281283A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281283A58);
  }

  return result;
}

uint64_t sub_2206E292C(uint64_t a1)
{
  result = sub_2204446D4(319, qword_281287430, &protocol descriptor for ForYouFeedSectionFactoryType);
  if (v2 <= 0x3F)
  {
    result = sub_2204446D4(319, &unk_2812991E0, MEMORY[0x277D696B8]);
    if (v3 <= 0x3F)
    {
      result = sub_220885D4C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2206E29F4()
{
  result = qword_27CF58CB0;
  if (!qword_27CF58CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CB0);
  }

  return result;
}

void sub_2206E2A48(void *a1)
{
  v3 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  (*(*(v5 + 16) + 32))(&v8, v4);
  if ((v8 & 1) == 0)
  {
    v6 = [objc_opt_self() ts_sideBarEffect];
    v7 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    [a1 setBackgroundView_];
  }
}

uint64_t sub_2206E2B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_2206E2CDC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_2206E2D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 48);
  v8 = *(*v3 + 56);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 24), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_2206E2EA8(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_2206E2EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v7 = swift_allocObject();
  sub_220561394();
  *(v7 + 16) = sub_220891F2C();
  sub_220457328(&v9, v7 + 24);
  return v7;
}

double sub_2206E2FA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v126 = sub_2208852DC();
  v118 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v3);
  v125 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2208857EC();
  v115 = *(v5 - 8);
  v116 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v113 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22088699C();
  v114 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v8);
  v122 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v127 = &v96 - v12;
  v124 = sub_220885D4C();
  v13 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v14);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for StockSparklineViewModel;
  v17 = MEMORY[0x277D83D88];
  sub_2205052F4(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v96 - v20;
  v121 = &v96 - v20;
  v102 = MEMORY[0x277D697F8];
  sub_2205052F4(0, &qword_2812990C0, MEMORY[0x277D697F8], v17);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v106 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v105 = &v96 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v103 = &v96 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v100 = &v96 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v119 = &v96 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v96 - v39;
  v41 = sub_22088685C();
  v42 = *(v41 - 8);
  v44 = MEMORY[0x28223BE20](v41, v43);
  v46 = &v96 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v42;
  v47 = *(v42 + 16);
  v117 = a1;
  v47(v46, a1, v41, v44);
  v97 = sub_22088676C();
  v48 = *(v97 - 8);
  (*(v48 + 56))(v40, 1, 1, v97);
  v49 = type metadata accessor for StockSparklineViewModel(0);
  (*(*(v49 - 8) + 56))(v21, 1, 1, v49);
  v50 = v16;
  v51 = v16;
  v52 = v124;
  (*(v13 + 104))(v51, *MEMORY[0x277D69468], v124);
  v53 = v120;
  v109 = v41;
  (v47)(v120, v46, v41);
  v54 = type metadata accessor for StockViewModel(0);
  v55 = v102;
  sub_2204B2A28(v40, v53 + v54[5], &qword_2812990C0, v102);
  sub_2204B2A28(v121, v53 + v54[6], qword_28128AAE8, v112);
  v56 = v54[8];
  v112 = v13;
  v57 = *(v13 + 16);
  v58 = v97;
  v111 = v50;
  v59 = v50;
  v60 = v119;
  v57(v53 + v56, v59, v52);
  v98 = v54;
  *(v53 + v54[9]) = 0;
  v110 = v40;
  v61 = v40;
  v62 = v48;
  sub_2204B2A28(v61, v60, &qword_2812990C0, v55);
  v107 = v46;
  sub_2208867CC();
  v63 = v100;
  sub_2204B2A28(v60, v100, &qword_2812990C0, v55);
  v64 = *(v48 + 48);
  v65 = v58;
  if (v64(v63, 1, v58) == 1)
  {
    sub_2204B3C1C(v63, &qword_2812990C0, MEMORY[0x277D697F8]);
    v102 = 0;
    v101 = 1;
  }

  else
  {
    v102 = sub_22088675C();
    v101 = v66;
    (*(v62 + 8))(v63, v58);
  }

  v67 = v103;
  sub_2204B2A28(v60, v103, &qword_2812990C0, MEMORY[0x277D697F8]);
  v68 = v64(v67, 1, v58);
  v69 = v123;
  v70 = v106;
  v71 = v105;
  v104 = v62;
  if (v68 == 1)
  {
    sub_2204B3C1C(v67, &qword_2812990C0, MEMORY[0x277D697F8]);
    v100 = 0;
    v99 = 1;
  }

  else
  {
    v100 = sub_22088666C();
    v99 = v72;
    (*(v62 + 8))(v67, v65);
  }

  v73 = v114;
  sub_2204B2A28(v60, v71, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v64(v71, 1, v65) == 1)
  {
    sub_2204B3C1C(v71, &qword_2812990C0, MEMORY[0x277D697F8]);
    v114 = 0;
    LODWORD(v103) = 1;
  }

  else
  {
    v114 = sub_22088671C();
    LODWORD(v103) = v74;
    (*(v104 + 8))(v71, v65);
  }

  sub_2204B2A28(v60, v70, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v64(v70, 1, v65) == 1)
  {
    sub_2204B3C1C(v70, &qword_2812990C0, MEMORY[0x277D697F8]);
    v75 = 0;
    v105 = 0;
  }

  else
  {
    v75 = sub_22088668C();
    v105 = v76;
    (*(v104 + 8))(v70, v65);
  }

  v77 = v122;
  v78 = v120 + v98[7];
  v79 = *(v73 + 16);
  v79(v122, v127, v69);
  v81 = v115;
  v80 = v116;
  v82 = v113;
  (*(v115 + 104))(v113, *MEMORY[0x277D69288], v116);
  v83 = v125;
  sub_22088524C();
  *v78 = v102;
  *(v78 + 8) = v101 & 1;
  *(v78 + 16) = v100;
  *(v78 + 24) = v99 & 1;
  *(v78 + 32) = v114;
  *(v78 + 40) = v103 & 1;
  *(v78 + 48) = v75;
  v84 = v80;
  *(v78 + 56) = v105;
  v85 = type metadata accessor for PriceViewModel(0);
  v86 = v77;
  v87 = v123;
  v79((v78 + v85[10]), v86, v123);
  *(v78 + 64) = 9666786;
  *(v78 + 72) = 0xA300000000000000;
  (*(v81 + 16))(v78 + v85[9], v82, v84);
  v88 = v118;
  (*(v118 + 16))(v78 + v85[11], v83, v126);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v120 = qword_2812B6B48;
  v89 = *(v108 + 8);
  v90 = v109;
  v89(v117, v109);
  (*(v81 + 8))(v82, v84);
  v91 = *(v73 + 8);
  v91(v122, v87);
  v91(v127, v87);
  v92 = MEMORY[0x277D697F8];
  sub_2204B3C1C(v119, &qword_2812990C0, MEMORY[0x277D697F8]);
  (*(v112 + 1))(v111, v124);
  sub_2204B3C1C(v121, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  sub_2204B3C1C(v110, &qword_2812990C0, v92);
  v89(v107, v90);
  v93 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  v94 = v120;
  swift_beginAccess();
  (*(v88 + 40))(v94 + v93, v125, v126);
  swift_endAccess();
  return result;
}

uint64_t sub_2206E3BD0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  sub_2205052F4(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220899360;
  v3 = sub_2208867BC();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_22048D860();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v6 = sub_22089139C();

  return v6;
}

unint64_t sub_2206E3D3C()
{
  result = qword_27CF58CB8;
  if (!qword_27CF58CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CB8);
  }

  return result;
}

unint64_t sub_2206E3D94()
{
  result = qword_27CF58CC0;
  if (!qword_27CF58CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CC0);
  }

  return result;
}

unint64_t sub_2206E3E54()
{
  result = qword_27CF58CC8;
  if (!qword_27CF58CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CC8);
  }

  return result;
}

uint64_t sub_2206E3EC4()
{
  v0 = sub_220884D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2208852DC();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_22089131C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_220884D6C();
  __swift_allocate_value_buffer(v9, qword_27CF6D098);
  __swift_project_value_buffer(v9, qword_27CF6D098);
  sub_22089130C();
  sub_22088528C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_220884D7C();
}

void sub_2206E40A4(uint64_t a1)
{
  sub_22088E2BC();
  sub_22088481C();
  swift_getObjectType();
  v1 = sub_22088B7EC();
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_22088481C();
    swift_getObjectType();
    sub_22088B82C();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_2206E4400();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_2206E419C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF55B30 != -1)
  {
    swift_once();
  }

  v3 = sub_220884D6C();
  v4 = __swift_project_value_buffer(v3, qword_27CF6D098);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}