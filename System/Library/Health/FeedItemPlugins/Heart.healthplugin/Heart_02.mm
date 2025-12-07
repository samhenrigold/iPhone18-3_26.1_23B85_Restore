void sub_29D6B0838(uint64_t a1)
{
  if (!qword_2A17B1988)
  {
    sub_29D6B08D4(255);
    sub_29D6B1494(&qword_2A17B19A8, sub_29D6B08D4, MEMORY[0x29EDB8958]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1988);
    }
  }
}

void sub_29D6B08D4(uint64_t a1)
{
  if (!qword_2A17B1990)
  {
    sub_29D6B0968(255);
    sub_29D6B1494(&qword_2A17B19A0, sub_29D6B0968, MEMORY[0x29EDB8870]);
    v1 = sub_29D938158();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1990);
    }
  }
}

void sub_29D6B0968(uint64_t a1)
{
  if (!qword_2A17B1998)
  {
    sub_29D6AD3EC(255);
    sub_29D6B1494(&qword_2A1A22328, sub_29D6AD3EC, MEMORY[0x29EDB8AD8]);
    v1 = sub_29D938058();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1998);
    }
  }
}

uint64_t sub_29D6B0A10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_29D6B0ABC(0);
  result = v5(a1, a1 + *(v6 + 48));
  *a2 = result & 1;
  return result;
}

uint64_t sub_29D6B0A64()
{

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

void sub_29D6B0ABC(uint64_t a1)
{
  if (!qword_2A17B19C8)
  {
    sub_29D6A08F8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B19C8);
    }
  }
}

uint64_t sub_29D6B0B20(char *a1, char *a2)
{
  v49 = a2;
  v3 = sub_29D933CC8();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v45 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29D933CE8();
  v44 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46, v6);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6A08F8(0);
  v11 = MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v43 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = v41 - v14;
  v16 = sub_29D9339F8();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v42 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = v41 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = v41 - v26;
  v28 = v17[6];
  v29 = 1;
  if (v28(a1, 1, v16) == 1)
  {
    sub_29D6A0A20(v49, v15);
    if (v28(v15, 1, v16) == 1)
    {
      v30 = v15;
    }

    else
    {
      v31 = v17[4];
      v49 = v27;
      v41[0] = v31;
      v41[1] = v17 + 4;
      v31(v27, v15, v16);
      sub_29D9339E8();
      sub_29D933C88();
      v33 = v47;
      v32 = v48;
      v34 = v45;
      (*(v47 + 104))(v45, *MEMORY[0x29EDB9CB8], v48);
      v35 = v43;
      sub_29D933C38();
      (*(v33 + 8))(v34, v32);
      (*(v44 + 8))(v8, v46);
      if (v28(v35, 1, v16) != 1)
      {
        v37 = v42;
        (v41[0])(v42, v35, v16);
        v38 = v49;
        v29 = sub_29D933978();
        v39 = v17[1];
        v39(v37, v16);
        v39(v24, v16);
        v39(v38, v16);
        return v29 & 1;
      }

      v36 = v17[1];
      v36(v24, v16);
      v36(v49, v16);
      v30 = v35;
    }

    sub_29D6A0D34(v30);
    v29 = 0;
  }

  return v29 & 1;
}

void sub_29D6B0F70(uint64_t a1)
{
  if (!qword_2A17B19D0)
  {
    v1 = MEMORY[0x29EDB89F8];
    sub_29D6B1310(255, &qword_2A17B19D8, MEMORY[0x29EDB89F8]);
    sub_29D6AD3EC(255);
    sub_29D6B0544(&qword_2A17B19E0, &qword_2A17B19D8, v1, MEMORY[0x29EDB8A00]);
    sub_29D6B1494(&qword_2A1A22328, sub_29D6AD3EC, MEMORY[0x29EDB8AD8]);
    v2 = sub_29D938198();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17B19D0);
    }
  }
}

void sub_29D6B107C(uint64_t a1)
{
  if (!qword_2A17B19E8)
  {
    sub_29D6B0F70(255);
    v1 = MEMORY[0x29EDCA180];
    sub_29D6B1168(255, &qword_2A17B19F0, MEMORY[0x29EDCA180] + 8);
    sub_29D6B1494(&qword_2A17B19F8, sub_29D6B0F70, MEMORY[0x29EDB89A8]);
    sub_29D6B11B4(&qword_2A17B1A00, &qword_2A17B19F0, v1 + 8);
    v2 = sub_29D938118();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17B19E8);
    }
  }
}

void sub_29D6B1168(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_29D938328();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D6B11B4(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D6B1168(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D6B1204(uint64_t a1, uint64_t a2)
{
  sub_29D6A08F8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6B1268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D6A08F8(0);

  return sub_29D6AFD4C(a1, a2);
}

void sub_29D6B1310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29D6A0CD0();
    v7 = a3(a1, MEMORY[0x29EDCA180] + 8, v6, MEMORY[0x29EDC9F20]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D6B1384(uint64_t a1)
{
  if (!qword_2A17B1A20)
  {
    v1 = MEMORY[0x29EDB8AD0];
    sub_29D6B1310(255, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
    v2 = MEMORY[0x29EDCA180];
    sub_29D6B1168(255, &qword_2A17B19F0, MEMORY[0x29EDCA180] + 8);
    sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v1, MEMORY[0x29EDB8AD8]);
    sub_29D6B11B4(&qword_2A17B1A00, &qword_2A17B19F0, v2 + 8);
    v3 = sub_29D938118();
    if (!v4)
    {
      atomic_store(v3, &qword_2A17B1A20);
    }
  }
}

uint64_t sub_29D6B1494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D6B14DC()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

__n128 sub_29D6B151C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_29D6B1538(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_29D6B1580(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for BPCameraScannerFlowViewController(uint64_t a1)
{
  result = qword_2A17B1A38;
  if (!qword_2A17B1A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D6B1684()
{
  v1 = v0;
  v2 = sub_29D935D38();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  result = [v1 view];
  if (result)
  {
    v8 = result;
    [result bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v20.origin.x = v10;
    v20.origin.y = v12;
    v20.size.width = v14;
    v20.size.height = v16;
    CGRectGetHeight(v20);
    (*(v3 + 104))(v6, *MEMORY[0x29EDC23B8], v2);
    v17 = objc_allocWithZone(sub_29D936EE8());
    v18 = sub_29D936ED8();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_29D936EC8();

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D6B1924()
{
  v0 = sub_29D939C18();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B21C4(0, &qword_2A17B1A48, MEMORY[0x29EDBD210], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v16 - v7;
  sub_29D6B21C4(0, &qword_2A17B1A50, MEMORY[0x29EDBD1F0], MEMORY[0x29EDC9E90]);
  v9 = sub_29D939BF8();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D93DDB0;
  v13 = sub_29D939C28();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_29D939BE8();
  sub_29D6B2228(v8);
  sub_29D6E3A5C(v12);
  swift_setDeallocating();
  (*(v10 + 8))(v12 + v11, v9);
  swift_deallocClassInstance();
  (*(v1 + 104))(v4, *MEMORY[0x29EDBD208], v0);
  v14 = objc_allocWithZone(sub_29D939C38());
  return sub_29D939C08();
}

uint64_t sub_29D6B1BEC()
{
  v0 = sub_29D935D38();
  MEMORY[0x2A1C7C4A8](v0, v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = 0x3FC999999999999ALL;
  (*(v4 + 104))(v3, *MEMORY[0x29EDC23B0]);
  v5 = objc_allocWithZone(sub_29D936EE8());
  v6 = sub_29D936ED8();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D936EC8();

  return v6;
}

void sub_29D6B1D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_29D9366C8();
    v7 = a3(v6);
    sub_29D9366D8();
  }
}

uint64_t sub_29D6B1E1C()
{
  v0 = sub_29D935D38();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936728();
  sub_29D936718();
  (*(v1 + 104))(v4, *MEMORY[0x29EDC23B8], v0);
  v5 = objc_allocWithZone(sub_29D936EE8());
  v6 = sub_29D936ED8();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D936EC8();

  return v6;
}

void sub_29D6B1FD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_29D9366C8();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_29D9366F8();
  }
}

id sub_29D6B2074(char *a1)
{
  *&a1[qword_2A17B1A30 + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = a1;
  v3.super_class = type metadata accessor for BPCameraScannerFlowViewController(0);
  return objc_msgSendSuper2(&v3, sel_init);
}

char *sub_29D6B20D0(char *a1, uint64_t a2, void *a3)
{
  *&a1[qword_2A17B1A30 + 8] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = a1;
  v8.super_class = type metadata accessor for BPCameraScannerFlowViewController(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_29D6B2174()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BPCameraScannerFlowViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D6B21C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D6B2228(uint64_t a1)
{
  sub_29D6B21C4(0, &qword_2A17B1A48, MEMORY[0x29EDBD210], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_29D6B2344(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = sub_29D939D28();
    [v6 setText_];

    v8 = [objc_opt_self() labelColor];
    [v6 setTextColor_];

    [v6 setNumberOfLines_];
    v9 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

double sub_29D6B24BC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29D6B231C();
  [v1 addSubview_];

  v3 = sub_29D6B2330();
  [v1 addSubview_];

  v40 = objc_opt_self();
  sub_29D6A0C58();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D9403C0;
  v5 = OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___titleLabel;
  v6 = [*&v1[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___titleLabel] topAnchor];
  v7 = [v1 &selRef_irregularHeartRhythmFooterLinkTitle];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = [*&v1[v5] leadingAnchor];
  v10 = [v1 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:0.0];

  *(v4 + 40) = v11;
  v12 = [*&v1[v5] trailingAnchor];
  v13 = [v1 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-0.0];

  *(v4 + 48) = v14;
  v15 = OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___detailLabel;
  v16 = [*&v1[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___detailLabel] topAnchor];
  v17 = [*&v1[v5] bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:4.0];

  *(v4 + 56) = v18;
  v19 = [*&v1[v15] leadingAnchor];
  v20 = [*&v1[v5] leadingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v4 + 64) = v21;
  v22 = [*&v1[v15] trailingAnchor];
  v23 = [*&v1[v5] trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v4 + 72) = v24;
  v25 = [*&v1[v15] bottomAnchor];
  v26 = [v1 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v4 + 80) = v27;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v28 = sub_29D939F18();

  [v40 activateConstraints_];

  v29 = *&v1[v5];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v30 = v29;
  v31 = sub_29D93A658();
  [v30 setFont_];

  v32 = *&v1[v15];
  v33 = sub_29D93A658();
  [v32 setFont_];

  sub_29D6B2AD0(0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_29D93F680;
  v35 = sub_29D937BC8();
  v36 = MEMORY[0x29EDC7870];
  *(v34 + 32) = v35;
  *(v34 + 40) = v36;
  v37 = sub_29D937968();
  v38 = MEMORY[0x29EDC77A0];
  *(v34 + 48) = v37;
  *(v34 + 56) = v38;
  sub_29D93A678();
  sub_29D936978();

  return result;
}

id sub_29D6B2A04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleDetailsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D6B2AD0(uint64_t a1)
{
  if (!qword_2A17B1A78)
  {
    sub_29D6B2B28();
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1A78);
    }
  }
}

unint64_t sub_29D6B2B28()
{
  result = qword_2A17B1A80;
  if (!qword_2A17B1A80)
  {
    sub_29D6B2B70();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A17B1A80);
  }

  return result;
}

unint64_t sub_29D6B2B70()
{
  result = qword_2A17B1A88;
  if (!qword_2A17B1A88)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1A88);
  }

  return result;
}

void sub_29D6B2BD8()
{
  v0 = sub_29D6B231C();
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v1 = sub_29D93A658();
  [v0 setFont_];

  v2 = sub_29D6B2330();
  v3 = sub_29D93A658();
  [v2 setFont_];
}

uint64_t type metadata accessor for BloodPressureLoggingPromotionViewActionHandler(uint64_t a1)
{
  result = qword_2A1A22FE8;
  if (!qword_2A1A22FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6B2D78@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_29D9371A8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v66 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v56 - v10;
  v12 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v69 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D939D18();
  v68 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15, v16);
  v67 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v56 - v20;
  v22 = sub_29D934798();
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D9371B8();
  v27 = [v26 areAllRequirementsSatisfied];

  if (v27)
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v28 = sub_29D937898();
    sub_29D69C6C0(v28, qword_2A1A2BF10);
    v29 = sub_29D937878();
    v30 = sub_29D93A2A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v70 = v32;
      *v31 = 136446466;
      *(v31 + 4) = sub_29D6C2364(0xD000000000000031, 0x800000029D940480, &v70);
      *(v31 + 12) = 2082;
      *(v31 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D958D30, &v70);
      _os_log_impl(&dword_29D677000, v29, v30, "[%{public}s.%{public}s]: Creating blood pressure PromotionalTileConfiguration", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v32, -1, -1);
      MEMORY[0x29ED6BE30](v31, -1, -1);
    }

    v33 = v15;
    v66 = a2;
    v64 = v25;
    v65 = "SetUpBloodPressureJournal";
    sub_29D740490();
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v34 = qword_2A1A2BE98;
    v60 = qword_2A1A2BE98;
    v35 = v67;
    v36 = v68;
    v37 = *(v68 + 16);
    v37(v67, v21, v33);
    v58 = v37;
    sub_29D935E88();
    v61 = v34;
    sub_29D933A98();
    v38 = sub_29D939D98();
    v62 = v39;
    v63 = v38;
    v59 = *(v36 + 8);
    v59(v21, v33);
    sub_29D939D08();
    v37(v35, v21, v33);
    sub_29D935E88();
    v57 = v61;
    sub_29D933A98();
    v68 = sub_29D939D98();
    v61 = v40;
    v41 = v59;
    v59(v21, v33);
    sub_29D939D08();
    v58(v35, v21, v33);
    sub_29D935E88();
    v42 = v57;
    sub_29D933A98();
    sub_29D939D98();
    v41(v21, v33);
    a2 = v66;
    sub_29D9349E8();
    v43 = 0;
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v44 = sub_29D937898();
    sub_29D69C6C0(v44, qword_2A1A2BF10);
    v45 = *(v5 + 16);
    v45(v11, a1, v4);
    v46 = sub_29D937878();
    v47 = sub_29D93A2A8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = v69;
      *v48 = 136446722;
      *(v48 + 4) = sub_29D6C2364(0xD000000000000031, 0x800000029D940480, &v70);
      *(v48 + 12) = 2082;
      *(v48 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D958D30, &v70);
      *(v48 + 22) = 2082;
      v45(v66, v11, v4);
      v49 = sub_29D939DA8();
      v51 = v50;
      (*(v5 + 8))(v11, v4);
      v52 = sub_29D6C2364(v49, v51, &v70);

      *(v48 + 24) = v52;
      _os_log_impl(&dword_29D677000, v46, v47, "[%{public}s.%{public}s]: Promotion requirement is not met for feature status %{public}s", v48, 0x20u);
      v53 = v69;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v53, -1, -1);
      MEMORY[0x29ED6BE30](v48, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    v43 = 1;
  }

  v54 = sub_29D934A18();
  return (*(*(v54 - 8) + 56))(a2, v43, 1, v54);
}

void sub_29D6B35EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D9340F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = sub_29D9371B8();
  LOBYTE(a1) = [v5 areAllRequirementsSatisfied];

  if ((a1 & 1) == 0)
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v6 = sub_29D937898();
    sub_29D69C6C0(v6, qword_2A1A2BF10);
    v7 = sub_29D937878();
    v8 = sub_29D93A2A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_29D6C2364(0xD000000000000031, 0x800000029D940480, &v11);
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D958CD0, &v11);
      _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s]: Does not meet onboarding promotion requirements. Hiding from discovery", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v10, -1, -1);
      MEMORY[0x29ED6BE30](v9, -1, -1);
    }

    sub_29D934078();
  }
}

uint64_t sub_29D6B37F4@<X0>(uint64_t a1@<X8>)
{
  result = sub_29D6B3FB8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_29D6B3848(uint64_t a1)
{
  v2 = sub_29D6B3E64();

  return MEMORY[0x2A1C63270](a1, v2);
}

uint64_t sub_29D6B3894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D6B3E64();

  return MEMORY[0x2A1C63268](a1, a2, a3, v6);
}

uint64_t sub_29D6B3904()
{
  swift_getObjectType();
  v0 = sub_29D936638();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v0, v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v25 - v7;
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v9 = sub_29D937898();
  sub_29D69C6C0(v9, qword_2A1A2BF10);
  v10 = sub_29D937878();
  v11 = sub_29D93A278();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = v0;
    v13 = v12;
    v14 = swift_slowAlloc();
    v27[0] = v14;
    *v13 = 136446210;
    v15 = sub_29D93AF08();
    v17 = sub_29D6C2364(v15, v16, v27);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s] BloodPressureJournalPromotionTileFeedItem was tapped", v13, 0xCu);
    sub_29D69417C(v14);
    MEMORY[0x29ED6BE30](v14, -1, -1);
    v18 = v13;
    v0 = v26;
    MEMORY[0x29ED6BE30](v18, -1, -1);
  }

  sub_29D936B88();
  sub_29D936608();
  v19 = *(v1 + 8);
  v19(v8, v0);
  sub_29D693E2C(v27, v27[3]);
  v20 = sub_29D936588();
  type metadata accessor for BloodPressureJournalCreationFlowManager();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = v20;
  sub_29D69417C(v27);
  sub_29D936B88();
  v22 = sub_29D936618();
  v19(v5, v0);
  v23 = sub_29D89AE08(1, 1, 1, 4);
  [v22 presentViewController:v23 animated:1 completion:0];

  swift_setDeallocating();
}

uint64_t sub_29D6B3C10(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29D6B3D10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureLoggingPromotionViewActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6B3D98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D6B3DF8()
{
  result = qword_2A1A22D90;
  if (!qword_2A1A22D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22D90);
  }

  return result;
}

unint64_t sub_29D6B3E64()
{
  result = qword_2A1A22D88;
  if (!qword_2A1A22D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22D88);
  }

  return result;
}

uint64_t sub_29D6B3EB8()
{
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D9403F0;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  *(inited + 48) = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D6B3FB8()
{
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v0 = sub_29D937898();
  sub_29D69C6C0(v0, qword_2A1A2BF10);
  v1 = sub_29D937878();
  v2 = sub_29D93A2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446466;
    *(v3 + 4) = sub_29D6C2364(0xD000000000000031, 0x800000029D940480, &v6);
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_29D6C2364(0xD000000000000029, 0x800000029D958D00, &v6);
    _os_log_impl(&dword_29D677000, v1, v2, "[%{public}s.%{public}s]: Creating promo tile action handler user data object", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v4, -1, -1);
    MEMORY[0x29ED6BE30](v3, -1, -1);
  }

  return 0;
}

id sub_29D6B413C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_29D6B41D0()
{
  v1 = sub_29D6B413C();
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29D6B4308;
  v2 = swift_continuation_init();
  sub_29D6B5328(0, &qword_2A1A22250, sub_29D6B5290);
  v0[17] = v3;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D6B458C;
  v0[13] = &unk_2A2440A28;
  v0[14] = v2;
  [v1 fetchActiveJournalWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D6B4308()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_29D6B451C;
  }

  else
  {
    v2 = sub_29D6B4418;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D6B4418()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = v1;
    v3 = [v2 journalType];
    if (v3 == 1)
    {

      v4 = 0xE500000000000000;
      v5 = 0x68746E6F6DLL;
    }

    else if (v3)
    {
      v6 = sub_29D939D68();
      v8 = v7;

      v5 = v6;
      v4 = v8;
    }

    else
    {

      v4 = 0xE400000000000000;
      v5 = 1801807223;
    }
  }

  else
  {
    v5 = sub_29D939D68();
  }

  v9 = *(v0 + 8);

  return v9(v5, v4);
}

uint64_t sub_29D6B451C()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29D6B458C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_29D693E2C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29D6A0CD0();
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_29D6B4670()
{
  v1 = sub_29D6B413C();
  v0[28] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_29D6B47A8;
  v2 = swift_continuation_init();
  sub_29D6B5328(0, &qword_2A1A22250, sub_29D6B5290);
  v0[25] = v3;
  v0[18] = MEMORY[0x29EDCA5F8];
  v0[19] = 1107296256;
  v0[20] = sub_29D6B458C;
  v0[21] = &unk_2A24409D8;
  v0[22] = v2;
  [v1 fetchActiveJournalWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D6B47A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_29D6B4C38;
  }

  else
  {
    v2 = sub_29D6B48B8;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D6B48B8()
{
  v1 = *(v0 + 208);

  if (v1)
  {
    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    v4 = *(*(v0 + 216) + 24);
    *(v0 + 240) = v4;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 208;
    *(v0 + 88) = sub_29D6B4A34;
    v5 = swift_continuation_init();
    sub_29D6B5328(0, &qword_2A17B1A98, sub_29D6B539C);
    *(v0 + 200) = v6;
    *(v0 + 144) = MEMORY[0x29EDCA5F8];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_29D6B4D18;
    *(v0 + 168) = &unk_2A2440A00;
    *(v0 + 176) = v5;
    [v4 fetchAllJournalsWithCompletion_];

    return MEMORY[0x2A1C73CC0](v0 + 80);
  }
}

uint64_t sub_29D6B4A34()
{
  v1 = *(*v0 + 112);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_29D6B4CA8;
  }

  else
  {
    v2 = sub_29D6B4B44;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

unint64_t sub_29D6B4B44()
{
  v1 = *(v0 + 208);

  if (!v1)
  {
    goto LABEL_12;
  }

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v2 = sub_29D93A928();
  if (!v2)
  {
LABEL_11:

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

LABEL_4:
  v3 = __OFSUB__(v2, 1);
  result = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_17:
    v5 = MEMORY[0x29ED6AE30](result, v1);
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (result >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 8 * result + 32);
LABEL_9:
  v6 = v5;

  v7 = v6;
LABEL_13:
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_29D6B4C38()
{
  v1 = *(v0 + 224);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29D6B4CA8()
{
  v1 = *(v0 + 240);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29D6B4D18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_29D693E2C((a1 + 32), *(a1 + 56));
  v6 = 0;
  if (a3)
  {
    sub_29D6A0CD0();
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      sub_29D6B52C4();
      v6 = sub_29D939F38();
    }

    **(*(v5 + 64) + 40) = v6;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_29D6B4DEC(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  v30[1] = *v2;
  v31 = sub_29D933CE8();
  v3 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D933318();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933C88();
  sub_29D6B5404(0, &qword_2A17B1A90, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v12 = sub_29D933CC8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D93DDB0;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x29EDB9CB8], v12);
  sub_29D6E3748(v15);
  swift_setDeallocating();
  (*(v13 + 8))(v15 + v14, v12);
  swift_deallocClassInstance();
  sub_29D933B38();
  v16 = v11;

  (*(v3 + 8))(v6, v31);
  v17 = sub_29D9332A8();
  if (v18)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v19 = sub_29D937898();
    sub_29D69C6C0(v19, qword_2A1A2C008);
    v20 = sub_29D937878();
    v21 = sub_29D93A288();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136446210;
      v24 = sub_29D93AF08();
      v26 = sub_29D6C2364(v24, v25, &v34);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s] [Logging Analytics] Failed to compute difference in days", v22, 0xCu);
      sub_29D69417C(v23);
      MEMORY[0x29ED6BE30](v23, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);
    }

    v27 = [*MEMORY[0x29EDBA360] integerValue];
    (*(v8 + 8))(v16, v7);
    return v27;
  }

  v27 = v17;
  result = (*(v8 + 8))(v11, v7);
  if ((v27 & 0x8000000000000000) == 0)
  {
    return v27;
  }

  v29 = __OFSUB__(0, v27);
  v27 = -v27;
  if (!v29)
  {
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D6B522C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_29D6B52C4()
{
  result = qword_2A1A221D0;
  if (!qword_2A1A221D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A221D0);
  }

  return result;
}

void sub_29D6B5328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D6A0CD0();
    v4 = sub_29D93A038();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D6B5404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 sub_29D6B5478(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_29D6B5494(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_29D6B54DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D6B5540(uint64_t a1, uint64_t a2)
{
  sub_29D693E2C(v2, v2[3]);
  sub_29D935128();
  sub_29D693E2C(v2 + 5, v2[8]);
  return sub_29D935128();
}

double sub_29D6B55CC(uint64_t a1)
{
  sub_29D693E2C(v1, v1[3]);
  sub_29D935118();
  CGRectGetHeight(v5);
  sub_29D693E2C(v1 + 5, v1[8]);
  sub_29D935118();
  CGRectGetHeight(v6);
  sub_29D934DC8();
  v3 = v2;
  sub_29D934DC8();
  CGRectGetWidth(v7);
  return v3;
}

uint64_t sub_29D6B5694(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D6B5798();
  *v3 = v1;
  v3[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

unint64_t sub_29D6B5744()
{
  result = qword_2A17B1AB0;
  if (!qword_2A17B1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1AB0);
  }

  return result;
}

unint64_t sub_29D6B5798()
{
  result = qword_2A17B1AB8;
  if (!qword_2A17B1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1AB8);
  }

  return result;
}

uint64_t sub_29D6B57FC()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

double sub_29D6B58C4(uint64_t a1)
{
  sub_29D939E18();

  return result;
}

uint64_t sub_29D6B5978(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

unint64_t sub_29D6B5A3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D6B720C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D6B5A6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7075746573;
  v5 = 0xE600000000000000;
  v6 = 0x6C65636E6163;
  v7 = 0xE400000000000000;
  v8 = 1701736292;
  if (v2 != 3)
  {
    v8 = 0x726574616CLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1954047342;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void *sub_29D6B5BA4(void *a1)
{
  v4 = *v1;
  v131 = sub_29D937158();
  v130 = *(v131 - 8);
  MEMORY[0x2A1C7C4A8](v131, v5);
  v129 = v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_29D9371A8();
  v7 = *(v135 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v135, v8);
  v11 = v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = v127 - v13;
  v15 = [a1 healthDataSource];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 featureStatusProviderForIdentifier_];
    v132 = v4;
    if (v17 && (v138[0] = v17, sub_29D6B7258(), sub_29D6B7370(0, &qword_2A1A246E0, MEMORY[0x29EDC2D90]), (swift_dynamicCast() & 1) != 0))
    {
      v133 = v1;
      v134 = v7;
      v136 = v14;
      if (*(&v141 + 1))
      {
        sub_29D679D3C(&v140, &v143);
        v18 = [a1 environmentDataSource];
        v146 = MEMORY[0x29EDCA198];
        v19 = sub_29D693E2C(&v143, v145);
        v20 = a1;
        v21 = v136;
        v22 = v19;
        sub_29D937238();
        if (v2)
        {
          sub_29D936978();

          sub_29D69417C(&v143);
          return v22;
        }

        v128 = v18;
        v127[0] = v20;
        v127[1] = 0;
        v24 = v134;
        v23 = v135;
        (*(v134 + 16))(v11, v21, v135);
        v25 = (*(v24 + 88))(v11, v23);
        v26 = MEMORY[0x29EDC99B0];
        v27 = MEMORY[0x29EDC99D8];
        v28 = v25 == *MEMORY[0x29EDC2D70];
        v127[2] = v16;
        if (v28)
        {
          (*(v24 + 96))(v11, v23);
          (*(v130 + 32))(v129, v11, v131);
          v29 = sub_29D937138();
          v30 = sub_29D7010AC(v29);
          v32 = v31;

          *(&v141 + 1) = v26;
          v142 = v27;
          v33 = v133;
          if (!v32)
          {
            v30 = sub_29D939D68();
            v32 = v34;
          }

          *&v140 = v30;
          *(&v140 + 1) = v32;
          sub_29D679D3C(&v140, v138);
          v35 = v146;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v137 = v35;
          v37 = sub_29D693DDC(v138, v139);
          MEMORY[0x2A1C7C4A8](v37, v37);
          v39 = (v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v40 + 16))(v39);
          sub_29D8C439C(*v39, v39[1], 0x437972746E756F63, 0xEB0000000065646FLL, isUniquelyReferenced_nonNull_native, &v137);
          (*(v130 + 8))(v129, v131);
          sub_29D69417C(v138);
          v146 = v137;
        }

        else
        {
          v33 = v133;
          if (v25 == *MEMORY[0x29EDC2D68])
          {
            *(&v141 + 1) = MEMORY[0x29EDC99B0];
            v142 = MEMORY[0x29EDC99D8];
            strcpy(&v140, "Not available");
            HIWORD(v140) = -4864;
            sub_29D679D3C(&v140, v138);
            v41 = v146;
            v42 = swift_isUniquelyReferenced_nonNull_native();
            v137 = v41;
            v43 = sub_29D693DDC(v138, v139);
            MEMORY[0x2A1C7C4A8](v43, v43);
            v45 = (v127 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v46 + 16))(v45);
            sub_29D8C439C(*v45, v45[1], 0x437972746E756F63, 0xEB0000000065646FLL, v42, &v137);
            sub_29D69417C(v138);
            v27 = MEMORY[0x29EDC99D8];
            v146 = v137;
            v47 = v134;
          }

          else
          {
            v47 = v24;
          }

          (*(v47 + 8))(v11, v135);
        }

        v48 = 0xD000000000000013;
        v49 = v33[16];
        if (v49 > 2)
        {
          if (v49 == 3)
          {
            v50 = 0x800000029D9590A0;
            v51 = 0xD000000000000012;
          }

          else if (v49 == 4)
          {
            v50 = 0x800000029D959080;
            v51 = 0xD000000000000010;
          }

          else
          {
            v51 = 0x6974656C706D6F63;
            v50 = 0xEA00000000006E6FLL;
          }
        }

        else if (v33[16])
        {
          if (v49 == 1)
          {
            v50 = 0xEA0000000000736BLL;
            v51 = 0x726F577449776F68;
          }

          else
          {
            v50 = 0x800000029D9590C0;
            v51 = 0xD000000000000013;
          }
        }

        else
        {
          v50 = 0xEE00736C69617465;
          v51 = 0x446D7269666E6F63;
        }

        *(&v141 + 1) = v26;
        v142 = v27;
        *&v140 = v51;
        *(&v140 + 1) = v50;
        sub_29D679D3C(&v140, v138);
        v52 = v146;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v52;
        v54 = sub_29D693DDC(v138, v139);
        MEMORY[0x2A1C7C4A8](v54, v54);
        v56 = (v127 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v57 + 16))(v56);
        v58 = *v56;
        v59 = v56[1];
        v60 = 0xE400000000000000;
        sub_29D8C439C(v58, v59, 1885697139, 0xE400000000000000, v53, &v137);
        sub_29D69417C(v138);
        v61 = v137;
        v146 = v137;
        v62 = v33[17];
        if (v62 <= 1)
        {
          if (v33[17])
          {
            v63 = 1954047342;
          }

          else
          {
            v60 = 0xE500000000000000;
            v63 = 0x7075746573;
          }
        }

        else if (v62 == 2)
        {
          v60 = 0xE600000000000000;
          v63 = 0x6C65636E6163;
        }

        else if (v62 == 3)
        {
          v63 = 1701736292;
        }

        else
        {
          v60 = 0xE500000000000000;
          v63 = 0x726574616CLL;
        }

        *(&v141 + 1) = v26;
        v142 = v27;
        *&v140 = v63;
        *(&v140 + 1) = v60;
        sub_29D679D3C(&v140, v138);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v61;
        v65 = sub_29D693DDC(v138, v139);
        MEMORY[0x2A1C7C4A8](v65, v65);
        v67 = (v127 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v68 + 16))(v67);
        sub_29D8C439C(*v67, v67[1], 0x6E6F69746361, 0xE600000000000000, v64, &v137);
        sub_29D69417C(v138);
        v69 = v137;
        v70 = v33[18];
        if (v70 <= 1)
        {
          if (v33[18])
          {
            v71 = 0xEC0000006D6F6F52;
            v72 = 0x6570795461746164;
          }

          else
          {
            v71 = 0xED0000656C69546ELL;
            v72 = 0x6F69746F6D6F7270;
          }
        }

        else if (v70 == 2)
        {
          v71 = 0xEF7473696C6B6365;
          v72 = 0x684368746C616568;
        }

        else if (v70 == 3)
        {
          v71 = 0xE800000000000000;
          v72 = 0x6B6E694C70656564;
        }

        else
        {
          v71 = 0xE700000000000000;
          v72 = 0x6E776F6E6B6E75;
        }

        *(&v141 + 1) = v26;
        v142 = v27;
        *&v140 = v72;
        *(&v140 + 1) = v71;
        sub_29D679D3C(&v140, v138);
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v69;
        v74 = sub_29D693DDC(v138, v139);
        MEMORY[0x2A1C7C4A8](v74, v74);
        v76 = (v127 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v77 + 16))(v76);
        sub_29D8C439C(*v76, v76[1], 0x747865746E6F63, 0xE700000000000000, v73, &v137);
        sub_29D69417C(v138);
        v78 = v137;
        v146 = v137;
        v79 = v33[19];
        if (v79 > 2)
        {
          if (v79 == 3)
          {
            v80 = 0x800000029D959020;
            v48 = 0xD000000000000018;
          }

          else
          {
            if (v79 != 4)
            {
              sub_29D8C424C(0x626967696C656E69, 0xED00007974696C69, &v140);
              sub_29D6B72BC(&v140, &qword_2A17B1B30, &qword_2A17B1120, MEMORY[0x29EDC9968]);
              v86 = v146;
              goto LABEL_56;
            }

            v80 = 0x800000029D959000;
            v48 = 0xD000000000000016;
          }
        }

        else if (v33[19])
        {
          if (v79 == 1)
          {
            v80 = 0x800000029D959060;
          }

          else
          {
            v80 = 0x800000029D959040;
            v48 = 0xD00000000000001CLL;
          }
        }

        else
        {
          v80 = 0xED0000656C626967;
          v48 = 0x696C656E49656761;
        }

        *(&v141 + 1) = v26;
        v142 = v27;
        *&v140 = v48;
        *(&v140 + 1) = v80;
        sub_29D679D3C(&v140, v138);
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v78;
        v82 = sub_29D693DDC(v138, v139);
        MEMORY[0x2A1C7C4A8](v82, v82);
        v84 = v127 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v85 + 16))(v84);
        sub_29D8C4A50(v84, 0x626967696C656E69, 0xED00007974696C69, v81, &v137, v26, v27);
        sub_29D69417C(v138);
        v86 = v137;
LABEL_56:
        *(&v141 + 1) = MEMORY[0x29EDC9BA8];
        v142 = MEMORY[0x29EDC9BC8];
        *&v140 = 1;
        sub_29D679D3C(&v140, v138);
        v87 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v86;
        v88 = sub_29D693DDC(v138, v139);
        sub_29D8C458C(*v88, 0x5665727574616566, 0xEE006E6F69737265, v87, &v137);
        sub_29D69417C(v138);
        v146 = v137;
        v131 = sub_29D939D68();
        v90 = v89;
        if (qword_2A1A25718 != -1)
        {
          swift_once();
        }

        v91 = sub_29D937898();
        sub_29D69C6C0(v91, qword_2A1A2C008);
        v92 = sub_29D93A2F8();
        *(&v141 + 1) = sub_29D6B73CC();
        v142 = sub_29D6B7418();
        *&v140 = v92;
        sub_29D679D3C(&v140, v138);
        v93 = v146;
        v94 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v93;
        v95 = sub_29D693DDC(v138, v139);
        MEMORY[0x2A1C7C4A8](v95, v95);
        v97 = (v127 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v98 + 16))(v97);
        sub_29D8C46F4(*v97, v131, v90, v94, &v137);

        sub_29D69417C(v138);
        v99 = v137;
        v146 = v137;
        v131 = sub_29D939D68();
        v101 = v100;
        v102 = sub_29D93A308();
        v103 = MEMORY[0x29EDC99B0];
        *(&v141 + 1) = MEMORY[0x29EDC99B0];
        v104 = MEMORY[0x29EDC99D8];
        v142 = MEMORY[0x29EDC99D8];
        *&v140 = v102;
        *(&v140 + 1) = v105;
        sub_29D679D3C(&v140, v138);
        LOBYTE(v93) = swift_isUniquelyReferenced_nonNull_native();
        v137 = v99;
        v106 = sub_29D693DDC(v138, v139);
        MEMORY[0x2A1C7C4A8](v106, v106);
        v108 = (v127 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v109 + 16))(v108);
        sub_29D8C439C(*v108, v108[1], v131, v101, v93, &v137);

        sub_29D69417C(v138);
        v110 = v137;
        v146 = v137;
        v111 = [v127[0] environmentDataSource];
        v112 = [v111 activePairedDeviceProductType];

        if (v112)
        {
          v113 = sub_29D939D68();
          v115 = v114;

          v116 = sub_29D939D68();
          v118 = v117;
          *(&v141 + 1) = v103;
          v142 = v104;
          *&v140 = v113;
          *(&v140 + 1) = v115;
          sub_29D679D3C(&v140, v138);
          LOBYTE(v113) = swift_isUniquelyReferenced_nonNull_native();
          v137 = v110;
          v119 = sub_29D693DDC(v138, v139);
          MEMORY[0x2A1C7C4A8](v119, v119);
          v121 = (v127 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v122 + 16))(v121);
          sub_29D8C439C(*v121, v121[1], v116, v118, v113, &v137);

          sub_29D69417C(v138);
          v110 = v137;
        }

        sub_29D8C3BB0(v110);
        v22 = v123;
        sub_29D936978();

        (*(v134 + 8))(v136, v135);
        sub_29D69417C(&v143);
        return v22;
      }
    }

    else
    {
      v142 = 0;
      v140 = 0u;
      v141 = 0u;
    }

    sub_29D6B72BC(&v140, &qword_2A1A246D8, &qword_2A1A246E0, MEMORY[0x29EDC2D90]);
    v143 = 0;
    v144 = 0xE000000000000000;
    sub_29D93AA18();
    MEMORY[0x29ED6A240](91, 0xE100000000000000);
    v125 = sub_29D93AF08();
    MEMORY[0x29ED6A240](v125);

    MEMORY[0x29ED6A240](0xD000000000000052, 0x800000029D958FA0);
  }

  else
  {
    v143 = 0;
    v144 = 0xE000000000000000;
    sub_29D93AA18();
    MEMORY[0x29ED6A240](91, 0xE100000000000000);
    v126 = sub_29D93AF08();
    MEMORY[0x29ED6A240](v126);

    MEMORY[0x29ED6A240](0xD00000000000004DLL, 0x800000029D958F50);
  }

  result = sub_29D93AB28();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingAction(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OnboardingAction(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29D6B71B8()
{
  result = qword_2A17B1B20;
  if (!qword_2A17B1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1B20);
  }

  return result;
}

unint64_t sub_29D6B720C(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_29D6B7258()
{
  result = qword_2A17B1B28;
  if (!qword_2A17B1B28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1B28);
  }

  return result;
}

uint64_t sub_29D6B72BC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_29D6B7318(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_29D6B7318(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D6B7370(255, a3, a4);
    v5 = sub_29D93A7F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D6B7370(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_29D6B73CC()
{
  result = qword_2A17B4FE0;
  if (!qword_2A17B4FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B4FE0);
  }

  return result;
}

unint64_t sub_29D6B7418()
{
  result = qword_2A17B1B38;
  if (!qword_2A17B1B38)
  {
    sub_29D6B73CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1B38);
  }

  return result;
}

id sub_29D6B7470()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[5];
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v0[2] healthStore:v0[4]];
    v4 = v0[5];
    v0[5] = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_29D6B74EC()
{
  sub_29D6B7DFC(0);
  v1 = *(v0 - 8);
  v21 = v0;
  v22 = v1;
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B7F94(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B7EE8(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D6B8028(0);
  sub_29D6B827C(&qword_2A1A22350, sub_29D6B8028, MEMORY[0x29EDB8AB8]);
  sub_29D938378();
  sub_29D9371A8();
  sub_29D6B827C(&qword_2A1A222F8, sub_29D6B7F94, MEMORY[0x29EDB8AE8]);
  sub_29D938428();
  (*(v7 + 8))(v10, v6);
  sub_29D6B8230();
  v23 = sub_29D937288();
  sub_29D6B7D8C(0);
  sub_29D6B827C(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  sub_29D6B827C(&qword_2A1A22700, sub_29D6B7EE8, MEMORY[0x29EDB88A0]);
  sub_29D938528();

  sub_29D6B827C(&qword_2A1A226E0, sub_29D6B7DFC, MEMORY[0x29EDB88B0]);
  v17 = v21;
  v18 = sub_29D938418();
  (*(v22 + 8))(v4, v17);
  (*(v13 + 8))(v16, v12);
  return v18;
}

uint64_t sub_29D6B78EC@<X0>(char *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 24);
    if (v4)
    {
      v5 = v4;
      v6 = sub_29D9371B8();
      v7 = [v6 areAllRequirementsSatisfied];
    }

    else
    {
      v7 = sub_29D937198();
    }

    v8 = v7 & 1;
  }

  else
  {
    v8 = 2;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_29D6B79A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D6B7A24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D6B7A74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_29D6B7AC8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_29D6B7AE0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_29D6B7B10()
{
  sub_29D6B7CF0(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D6B7470();
  v7 = sub_29D6B74EC();

  v10[1] = v7;
  swift_allocObject();
  swift_weakInit();
  sub_29D6B7D8C(0);
  sub_29D6B827C(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  sub_29D938428();

  sub_29D6B827C(&qword_2A1A22740, sub_29D6B7CF0, MEMORY[0x29EDB88A0]);
  v8 = sub_29D938418();
  (*(v2 + 8))(v5, v1);
  return v8;
}

void sub_29D6B7CF0(uint64_t a1)
{
  if (!qword_2A1A22738)
  {
    sub_29D6B7D8C(255);
    sub_29D6B827C(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D938078();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22738);
    }
  }
}

void sub_29D6B7D8C(uint64_t a1)
{
  if (!qword_2A1A22410)
  {
    sub_29D9371A8();
    v1 = sub_29D938238();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22410);
    }
  }
}

void sub_29D6B7DFC(uint64_t a1)
{
  if (!qword_2A1A226D8)
  {
    sub_29D6B7EE8(255);
    sub_29D6B7D8C(255);
    sub_29D6B827C(&qword_2A1A22700, sub_29D6B7EE8, MEMORY[0x29EDB88A0]);
    sub_29D6B827C(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D938088();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A226D8);
    }
  }
}

void sub_29D6B7EE8(uint64_t a1)
{
  if (!qword_2A1A226F8)
  {
    sub_29D6B7F94(255);
    sub_29D9371A8();
    sub_29D6B827C(&qword_2A1A222F8, sub_29D6B7F94, MEMORY[0x29EDB8AE8]);
    v1 = sub_29D938078();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A226F8);
    }
  }
}

void sub_29D6B7F94(uint64_t a1)
{
  if (!qword_2A1A222F0)
  {
    sub_29D6B8028(255);
    sub_29D6B827C(&qword_2A1A22350, sub_29D6B8028, MEMORY[0x29EDB8AB8]);
    v1 = sub_29D938388();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A222F0);
    }
  }
}

void sub_29D6B8090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D6B80F4(uint64_t a1)
{
  sub_29D6B805C(0);
  MEMORY[0x2A1C7C4A8](v1, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_29D6B8230();
    v7 = 0;
    sub_29D937278();
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_29D9371A8();
  (*(*(v8 - 8) + 56))(v4, v7, 1, v8);
  return sub_29D938338();
}

unint64_t sub_29D6B8230()
{
  result = qword_2A1A221E0;
  if (!qword_2A1A221E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A221E0);
  }

  return result;
}

uint64_t sub_29D6B827C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_29D6B82C4(uint64_t a1)
{
  v32 = sub_29D9341E8();
  v2 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v3);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BB3EC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934188();
  sub_29D693E2C(&v36, *(&v37 + 1));
  v11 = sub_29D934118();
  sub_29D69417C(&v36);
  v34 = v11;
  v33 = sub_29D6B87A0(v11);
  sub_29D69567C(0, &qword_2A1A22208, 0x29EDBAA98);
  *&v36 = sub_29D93A508();
  sub_29D6BC95C(0, &qword_2A1A22388, &qword_2A1A21EB0, &qword_2A1A221A0, 0x29EDBAAA0);
  sub_29D6BB498();
  sub_29D938408();

  sub_29D6BEAE8(&qword_2A1A22720, sub_29D6BB3EC, MEMORY[0x29EDB88A0]);
  v30 = sub_29D938418();
  (*(v7 + 8))(v10, v6);
  v12 = a1;
  v29 = a1;
  sub_29D934188();
  sub_29D693E2C(&v36, *(&v37 + 1));
  v13 = sub_29D934118();
  sub_29D934408();
  swift_allocObject();
  v14 = v13;
  v15 = sub_29D9343C8();

  sub_29D69417C(&v36);
  v16 = v31;
  v17 = v12;
  v18 = v32;
  (*(v2 + 16))(v31, v17, v32);
  v35[3] = &type metadata for CardioFitnessRetroComputeDismissalStateManager;
  v35[4] = &off_2A2440968;
  v19 = swift_allocObject();
  v35[0] = v19;
  v19[2] = v15;
  v19[3] = 0xD000000000000016;
  v19[4] = 0x800000029D959220;
  v19[5] = 0xD000000000000016;
  v19[6] = 0x800000029D959240;
  v19[7] = 0xD000000000000020;
  v19[8] = 0x800000029D959260;
  type metadata accessor for CardioFitnessRetroComputeGeneratorPipeline(0);
  v20 = swift_allocObject();
  v21 = sub_29D693DDC(v35, &type metadata for CardioFitnessRetroComputeDismissalStateManager);
  MEMORY[0x2A1C7C4A8](v21, v21);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23);
  v25 = *(v23 + 1);
  v36 = *v23;
  v37 = v25;
  v38 = *(v23 + 2);
  v39 = *(v23 + 6);

  sub_29D935E88();
  sub_29D935E88();
  sub_29D935E88();
  v26 = sub_29D6BBB78(v16, v33, v30, &v36, v20);

  (*(v2 + 8))(v29, v18);
  sub_29D69417C(v35);
  return v26;
}

uint64_t sub_29D6B87A0(void *a1)
{
  v2 = v1;
  sub_29D6BE524(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D937898();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BE774(0);
  v44 = *(v15 - 8);
  v45 = v15;
  MEMORY[0x2A1C7C4A8](v15, v16);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BE9F4(0);
  v46 = *(v19 - 8);
  v47 = v19;
  MEMORY[0x2A1C7C4A8](v19, v20);
  v22 = v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isAppleInternalInstall])
  {
    sub_29D934408();
    swift_allocObject();
    v23 = a1;
    v43[2] = sub_29D9343C8();
    v48 = sub_29D9343F8();
    v24 = swift_allocObject();
    *(v24 + 16) = v2;
    *(v24 + 24) = v2;
    v43[1] = sub_29D938228();
    sub_29D6BE680(0, &qword_2A1A22310, sub_29D6BE91C, MEMORY[0x29EDB8AD0]);
    sub_29D6BC95C(0, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BE96C();
    sub_29D6BCA50();
    sub_29D9384F8();

    *(swift_allocObject() + 16) = v2;
    sub_29D6BEAE8(&qword_2A1A22478, sub_29D6BE774, MEMORY[0x29EDB89A8]);
    v25 = v45;
    sub_29D938488();

    (*(v44 + 8))(v18, v25);
    sub_29D6BEAE8(&qword_2A1A22508, sub_29D6BE9F4, MEMORY[0x29EDB8928]);
    v26 = v47;
    v27 = sub_29D938418();

    (*(v46 + 8))(v22, v26);
  }

  else
  {
    v46 = v6;
    v47 = v5;
    sub_29D934D28();
    v28 = sub_29D937878();
    v29 = sub_29D93A2A8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48 = v31;
      *v30 = 136446210;
      v32 = sub_29D93AF08();
      v34 = sub_29D6C2364(v32, v33, &v48);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_29D677000, v28, v29, "[%{public}s] Creating real state publisher for non-internal install", v30, 0xCu);
      sub_29D69417C(v31);
      MEMORY[0x29ED6BE30](v31, -1, -1);
      MEMORY[0x29ED6BE30](v30, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v35 = objc_allocWithZone(type metadata accessor for CMVO2MaxRetrocomputeStatePublisher());
    v36 = sub_29D843650(0);
    v37 = *&v36[OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject];
    os_unfair_lock_lock((v37 + 24));
    v38 = *(v37 + 16);

    os_unfair_lock_unlock((v37 + 24));
    v48 = v38;
    *(swift_allocObject() + 16) = v36;
    sub_29D6BE5E8(0);
    sub_29D6BC9C8(0, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BEAE8(&qword_2A1A22370, sub_29D6BE5E8, MEMORY[0x29EDB8A70]);
    v39 = v36;
    sub_29D938428();

    sub_29D6BEAE8(&qword_2A1A22710, sub_29D6BE524, MEMORY[0x29EDB88A0]);
    v40 = v47;
    v41 = sub_29D938418();
    (*(v46 + 8))(v9, v40);

    v48 = v41;
    sub_29D6BC95C(0, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BCA50();
    v27 = sub_29D938418();
  }

  return v27;
}

uint64_t sub_29D6B8F20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v60 = a2;
  sub_29D6BE524(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D6BEB30(0);
  v62 = *(v11 - 1);
  v63 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v61 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_29D937898();
  v64 = *(v14 - 8);
  v65 = v14;
  v16 = MEMORY[0x2A1C7C4A8](v14, v15);
  v18 = &v57[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v57[-v20];
  v22 = *a1;
  v23 = a1[1];
  v24 = sub_29D6B95F4(v22, v23);
  if (v24)
  {
    v25 = v24;
    sub_29D934D28();
    sub_29D935E88();
    v26 = sub_29D937878();
    v27 = sub_29D93A2A8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v58 = v27;
      v29 = v28;
      v59 = swift_slowAlloc();
      v68 = v59;
      *v29 = 136446466;
      v30 = sub_29D93AF08();
      v32 = sub_29D6C2364(v30, v31, &v68);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2082;
      v66 = v22;
      v67 = v23;
      sub_29D6BE91C();
      sub_29D935E88();
      v33 = sub_29D939DA8();
      v35 = sub_29D6C2364(v33, v34, &v68);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_29D677000, v26, v58, "[%{public}s] Created mockState from mockStateString: %{public}s", v29, 0x16u);
      v36 = v59;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v36, -1, -1);
      MEMORY[0x29ED6BE30](v29, -1, -1);
    }

    (*(v64 + 8))(v21, v65);
    v66 = v25;
    LOBYTE(v67) = 0;
    sub_29D6BC9C8(0, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    v37 = v25;
    v38 = v61;
    sub_29D938338();
    sub_29D6BEAE8(&qword_2A17B1B48, sub_29D6BEB30, MEMORY[0x29EDB8AB8]);
    v39 = v63;
    v40 = sub_29D938418();

    result = (*(v62 + 8))(v38, v39);
  }

  else
  {
    v61 = v10;
    v62 = v7;
    v63 = a3;
    sub_29D934D28();
    v42 = sub_29D937878();
    v43 = sub_29D93A2A8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v66 = v45;
      *v44 = 136446210;
      v46 = sub_29D93AF08();
      v48 = sub_29D6C2364(v46, v47, &v66);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_29D677000, v42, v43, "[%{public}s] Creating real state publisher", v44, 0xCu);
      sub_29D69417C(v45);
      MEMORY[0x29ED6BE30](v45, -1, -1);
      MEMORY[0x29ED6BE30](v44, -1, -1);
    }

    (*(v64 + 8))(v18, v65);
    v49 = v6;
    v50 = objc_allocWithZone(type metadata accessor for CMVO2MaxRetrocomputeStatePublisher());
    v51 = sub_29D843650(0);
    v52 = *&v51[OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject];
    os_unfair_lock_lock((v52 + 24));
    v53 = *(v52 + 16);

    os_unfair_lock_unlock((v52 + 24));
    v66 = v53;
    *(swift_allocObject() + 16) = v51;
    sub_29D6BE5E8(0);
    sub_29D6BC9C8(0, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BEAE8(&qword_2A1A22370, sub_29D6BE5E8, MEMORY[0x29EDB8A70]);
    v54 = v51;
    v55 = v61;
    sub_29D938428();

    sub_29D6BEAE8(&qword_2A1A22710, sub_29D6BE524, MEMORY[0x29EDB88A0]);
    v56 = sub_29D938418();
    (*(v62 + 8))(v55, v49);

    v66 = v56;
    sub_29D6BC95C(0, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BCA50();
    v40 = sub_29D938418();

    a3 = v63;
  }

  *a3 = v40;
  return result;
}

id sub_29D6B95F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D937898();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D9339F8();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v16 = &v55 - v15;
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v55 - v18;
  sub_29D6A08F8(0);
  v22 = MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v22, v25);
  v28 = &v55 - v27;
  MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = &v55 - v30;
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065 || (sub_29D93AD78() & 1) != 0)
  {
    (*(v8 + 56))(v31, 1, 1, v7);
    sub_29D9339E8();
    if ((*(v8 + 48))(v31, 1, v7) == 1)
    {
      v32 = 0;
    }

    else
    {
      v32 = sub_29D933958();
      (*(v8 + 8))(v31, v7);
    }

    v33 = objc_allocWithZone(MEMORY[0x29EDB93D8]);
    v34 = sub_29D933958();
    v35 = [v33 initWithStatus:1 startDate:v32 endDate:v34 meanDelta:0];

    (*(v8 + 8))(v19, v7);
    return v35;
  }

  if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62 || (sub_29D93AD78() & 1) != 0)
  {
    (*(v8 + 56))(v28, 1, 1, v7);
    sub_29D9339E8();
    if ((*(v8 + 48))(v28, 1, v7) == 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = sub_29D933958();
      (*(v8 + 8))(v28, v7);
    }

    v37 = objc_allocWithZone(MEMORY[0x29EDB93D8]);
    v38 = sub_29D933958();
    v35 = [v37 initWithStatus:0 startDate:v36 endDate:v38 meanDelta:0];

    (*(v8 + 8))(v16, v7);
    return v35;
  }

  if ((a1 != 0x6574656C706D6F63 || a2 != 0xE800000000000000) && (sub_29D93AD78() & 1) == 0)
  {
    v43 = v56;
    sub_29D934D28();
    sub_29D935E88();
    v44 = sub_29D937878();
    v45 = sub_29D93A288();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v61 = v47;
      *v46 = 136446466;
      v48 = sub_29D93AF08();
      v50 = sub_29D6C2364(v48, v49, &v61);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2082;
      v59 = a1;
      v60 = a2;
      sub_29D6BE91C();
      sub_29D935E88();
      v51 = sub_29D939DA8();
      v53 = sub_29D6C2364(v51, v52, &v61);

      *(v46 + 14) = v53;
      _os_log_impl(&dword_29D677000, v44, v45, "[%{public}s] Unrecognized mockStateString: %{public}s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v47, -1, -1);
      MEMORY[0x29ED6BE30](v46, -1, -1);
    }

    (*(v57 + 8))(v43, v58);
    return 0;
  }

  (*(v8 + 56))(v24, 1, 1, v7);
  sub_29D9339E8();
  sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
  v39 = sub_29D93A6C8();
  v40 = 0;
  if ((*(v8 + 48))(v24, 1, v7) != 1)
  {
    v40 = sub_29D933958();
    (*(v8 + 8))(v24, v7);
  }

  v41 = objc_allocWithZone(MEMORY[0x29EDB93D8]);
  v42 = sub_29D933958();
  v35 = [v41 initWithStatus:3 startDate:v40 endDate:v42 meanDelta:v39];

  (*(v8 + 8))(v12, v7);
  return v35;
}

void sub_29D6B9CDC(uint64_t *a2@<X8>)
{
  sub_29D6BE524(0);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D937898();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934D28();
  v12 = sub_29D937878();
  v13 = sub_29D93A288();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = a2;
    v16 = v15;
    v31 = v15;
    *v14 = 136446210;
    v17 = sub_29D93AF08();
    v19 = sub_29D6C2364(v17, v18, &v31);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s] Failed to get mockStateString, return real state publisher", v14, 0xCu);
    sub_29D69417C(v16);
    v20 = v16;
    a2 = v28;
    MEMORY[0x29ED6BE30](v20, -1, -1);
    MEMORY[0x29ED6BE30](v14, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v21 = objc_allocWithZone(type metadata accessor for CMVO2MaxRetrocomputeStatePublisher());
  v22 = sub_29D843650(0);
  v23 = *&v22[OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject];
  os_unfair_lock_lock((v23 + 24));
  v24 = *(v23 + 16);

  os_unfair_lock_unlock((v23 + 24));
  v31 = v24;
  *(swift_allocObject() + 16) = v22;
  sub_29D6BE5E8(0);
  sub_29D6BC9C8(0, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
  sub_29D6BEAE8(&qword_2A1A22370, sub_29D6BE5E8, MEMORY[0x29EDB8A70]);
  v25 = v22;
  sub_29D938428();

  sub_29D6BEAE8(&qword_2A1A22710, sub_29D6BE524, MEMORY[0x29EDB88A0]);
  v26 = v30;
  v27 = sub_29D938418();
  (*(v29 + 8))(v6, v26);

  *a2 = v27;
}

uint64_t sub_29D6BA088@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29D93A5D8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29D6BA0C0@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a7@<X8>)
{
  v46 = a5;
  v47 = a2;
  v48 = a4;
  sub_29D6BC414(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_29D937898();
  v16 = *(v49 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v49, v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v46 - v22;
  if (*a1 == 1)
  {
    sub_29D934D28();
    v24 = sub_29D937878();
    v25 = sub_29D93A2A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v50 = v27;
      *v26 = 136446210;
      v28 = sub_29D93AF08();
      v30 = a3;
      v31 = a7;
      v32 = sub_29D6C2364(v28, v29, &v50);

      *(v26 + 4) = v32;
      a7 = v31;
      a3 = v30;
      _os_log_impl(&dword_29D677000, v24, v25, "[%{public}s] First restore is complete, creating generation publisher from result state publisher", v26, 0xCu);
      sub_29D69417C(v27);
      MEMORY[0x29ED6BE30](v27, -1, -1);
      MEMORY[0x29ED6BE30](v26, -1, -1);
    }

    (*(v16 + 8))(v23, v49);
    v33 = sub_29D693E2C(v46, v46[3]);
    v50 = *v33;
    v51 = *(v33 + 1);
    v52 = *(v33 + 2);
    v53 = v33[6];
    result = sub_29D6BC47C(a3, v48, &v50, v47);
    v35 = result;
  }

  else
  {
    v48 = a3;
    sub_29D934D28();
    v36 = sub_29D937878();
    v37 = sub_29D93A2A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v47 = a7;
      v39 = v38;
      v40 = swift_slowAlloc();
      *&v50 = v40;
      *v39 = 136446210;
      v41 = sub_29D93AF08();
      v46 = v15;
      v43 = sub_29D6C2364(v41, v42, &v50);
      v15 = v46;

      *(v39 + 4) = v43;
      _os_log_impl(&dword_29D677000, v36, v37, "[%{public}s] First restore is not complete yet, deleting feed item", v39, 0xCu);
      sub_29D69417C(v40);
      MEMORY[0x29ED6BE30](v40, -1, -1);
      v44 = v39;
      a7 = v47;
      MEMORY[0x29ED6BE30](v44, -1, -1);
    }

    (*(v16 + 8))(v20, v49);
    *(&v51 + 1) = sub_29D934228();
    *&v52 = MEMORY[0x29EDC38C8];
    sub_29D693F78(&v50);
    if (qword_2A1A23530 != -1)
    {
      swift_once();
    }

    v45 = sub_29D934178();
    sub_29D69C6C0(v45, qword_2A1A2BDA8);
    sub_29D9341F8();
    sub_29D6B7370(0, &qword_2A1A25740, MEMORY[0x29EDC3C90]);
    sub_29D938338();
    sub_29D6BEAE8(&qword_2A1A24A70, sub_29D6BC414, MEMORY[0x29EDB8AB8]);
    v35 = sub_29D938418();
    result = (*(v12 + 8))(v15, v11);
  }

  *a7 = v35;
  return result;
}

uint64_t sub_29D6BA5A0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v30 = a3;
  v31 = a4;
  v6 = sub_29D934178();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v29 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_29D9341E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v14, v16);
  v27 = *a1;
  v17 = *(v11 + 16);
  v28 = &v26[-v18];
  v17();
  if (qword_2A1A23530 != -1)
  {
    swift_once();
  }

  v19 = sub_29D69C6C0(v6, qword_2A1A2BDA8);
  (*(v7 + 16))(v29, v19, v6);
  (v17)(v15, a2, v10);
  v20 = (*(v11 + 80) + 17) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v27;
  (*(v11 + 32))(v21 + v20, v15, v10);
  *(v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  v22 = sub_29D934228();
  v23 = MEMORY[0x29EDC38C8];
  v24 = v31;
  v31[3] = v22;
  v24[4] = v23;
  sub_29D693F78(v24);
  return sub_29D934208();
}

void sub_29D6BA864(char a1@<W0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v7 = sub_29D937898();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v38 - v14;
  if (a1)
  {
    sub_29D934D28();
    v16 = sub_29D937878();
    v17 = sub_29D93A2A8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38 = a2;
      v39 = v19;
      v20 = x8_0;
      v21 = v19;
      *v18 = 136446210;
      v22 = sub_29D93AF08();
      v24 = sub_29D6C2364(v22, v23, &v39);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_29D677000, v16, v17, "[%{public}s] Creating available(promote: false) state feed item", v18, 0xCu);
      sub_29D69417C(v21);
      v25 = v21;
      x8_0 = v20;
      MEMORY[0x29ED6BE30](v25, -1, -1);
      MEMORY[0x29ED6BE30](v18, -1, -1);
    }

    (*(v8 + 8))(v15, v7);
    v26 = 0;
  }

  else
  {
    sub_29D934D28();
    v27 = sub_29D937878();
    v28 = sub_29D93A2A8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = a2;
      v39 = v30;
      v31 = x8_0;
      v32 = v30;
      *v29 = 136446210;
      v33 = sub_29D93AF08();
      v35 = sub_29D6C2364(v33, v34, &v39);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_29D677000, v27, v28, "[%{public}s] Creating available(promote: true) state feed item", v29, 0xCu);
      sub_29D69417C(v32);
      v36 = v32;
      x8_0 = v31;
      MEMORY[0x29ED6BE30](v36, -1, -1);
      MEMORY[0x29ED6BE30](v29, -1, -1);
    }

    (*(v8 + 8))(v12, v7);
    v26 = 1;
  }

  v37 = sub_29D9341B8();
  sub_29D7DA554(v37, v26, 0, x8_0);
}

uint64_t sub_29D6BAB6C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v33 = a3;
  v34 = a4;
  v8 = sub_29D934178();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v32 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_29D9341E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v16, v18);
  v30 = *a1;
  v19 = *(v13 + 16);
  v31 = &v29[-v20];
  v19();
  if (qword_2A1A23530 != -1)
  {
    swift_once();
  }

  v21 = sub_29D69C6C0(v8, qword_2A1A2BDA8);
  (*(v9 + 16))(v32, v21, v8);
  (v19)(v17, a2, v12);
  v22 = (*(v13 + 80) + 17) & ~*(v13 + 80);
  v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v30;
  (*(v13 + 32))(v24 + v22, v17, v12);
  *(v24 + v23) = a5;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v33;
  v25 = sub_29D934228();
  v26 = MEMORY[0x29EDC38C8];
  v27 = v34;
  v34[3] = v25;
  v27[4] = v26;
  sub_29D693F78(v27);
  return sub_29D934208();
}

void sub_29D6BAE48(char a1@<W0>, uint64_t a3@<X8>, uint64_t a4@<D0>)
{
  v7 = sub_29D937898();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v34 - v14;
  if (a1)
  {
    sub_29D934D28();
    v16 = sub_29D937878();
    v17 = sub_29D93A2A8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136446210;
      v20 = sub_29D93AF08();
      v22 = sub_29D6C2364(v20, v21, &v35);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_29D677000, v16, v17, "[%{public}s] Complete state feed item dismissed, deleting feed item", v18, 0xCu);
      sub_29D69417C(v19);
      MEMORY[0x29ED6BE30](v19, -1, -1);
      MEMORY[0x29ED6BE30](v18, -1, -1);
    }

    (*(v8 + 8))(v15, v7);
    v23 = sub_29D9340F8();
    (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
  }

  else
  {
    sub_29D934D28();
    v24 = sub_29D937878();
    v25 = sub_29D93A2A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136446210;
      v28 = sub_29D93AF08();
      v30 = sub_29D6C2364(v28, v29, &v35);
      v34 = v7;
      v31 = a3;
      v32 = v30;

      *(v26 + 4) = v32;
      a3 = v31;
      _os_log_impl(&dword_29D677000, v24, v25, "[%{public}s] Creating complete state feed item", v26, 0xCu);
      sub_29D69417C(v27);
      MEMORY[0x29ED6BE30](v27, -1, -1);
      MEMORY[0x29ED6BE30](v26, -1, -1);

      (*(v8 + 8))(v12, v34);
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    v33 = sub_29D9341B8();
    sub_29D7DA554(v33, a4, 64, a3);
  }
}

uint64_t sub_29D6BB1A4()
{
  v1 = OBJC_IVAR____TtC5Heart42CardioFitnessRetroComputeGeneratorPipeline_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_29D69417C((v0 + OBJC_IVAR____TtC5Heart42CardioFitnessRetroComputeGeneratorPipeline_dismissalStateManaging));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CardioFitnessRetroComputeGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A23300;
  if (!qword_2A1A23300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6BB2B4(uint64_t a1)
{
  result = sub_29D934178();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D6BB370@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart42CardioFitnessRetroComputeGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D6BB3EC(uint64_t a1)
{
  if (!qword_2A1A22718)
  {
    sub_29D6BC95C(255, &qword_2A1A22388, &qword_2A1A21EB0, &qword_2A1A221A0, 0x29EDBAAA0);
    sub_29D69567C(255, &qword_2A1A221A0, 0x29EDBAAA0);
    sub_29D6BB498();
    v1 = sub_29D938078();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22718);
    }
  }
}

unint64_t sub_29D6BB498()
{
  result = qword_2A1A22390;
  if (!qword_2A1A22390)
  {
    sub_29D6BC95C(255, &qword_2A1A22388, &qword_2A1A21EB0, &qword_2A1A221A0, 0x29EDBAAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22390);
  }

  return result;
}

uint64_t sub_29D6BB510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v53 = a2;
  v49 = a1;
  v7 = sub_29D9341E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  sub_29D6BC088(0);
  v12 = *(v11 - 8);
  v55 = v11;
  v56 = v12;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v51 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BC310(0);
  v16 = *(v15 - 8);
  v57 = v15;
  v58 = v16;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v52 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BC1F4(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BC160(0);
  v48 = v25;
  v54 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v26);
  v47 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61[3] = &type metadata for CardioFitnessRetroComputeDismissalStateManager;
  v61[4] = &off_2A2440968;
  v28 = swift_allocObject();
  v60 = a3;
  v61[0] = v28;
  v29 = *(a4 + 16);
  *(v28 + 16) = *a4;
  *(v28 + 32) = v29;
  *(v28 + 48) = *(a4 + 32);
  *(v28 + 64) = *(a4 + 48);
  sub_29D6B0450(a4, v59);
  sub_29D6BBF98(0, &qword_2A1A223C8, &qword_2A1A221A0, 0x29EDBAAA0, sub_29D69567C);
  sub_29D6BC28C();
  sub_29D938468();
  v30 = MEMORY[0x29EDB8908];
  sub_29D6BEAE8(&qword_2A1A225B0, sub_29D6BC1F4, MEMORY[0x29EDB8908]);
  sub_29D938558();
  (*(v21 + 8))(v24, v20);
  v31 = v7;
  (*(v8 + 16))(&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v7);
  sub_29D6945AC(v61, v59);
  v32 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v33 = (v9 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v50;
  *(v35 + 16) = v50;
  (*(v8 + 32))(v35 + v32, &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  *(v35 + v33) = v53;
  sub_29D679D3C(v59, v35 + v34);
  *(v35 + ((v34 + 47) & 0xFFFFFFFFFFFFFFF8)) = v36;
  sub_29D6BBF98(0, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
  sub_29D6BEAE8(&qword_2A1A22650, sub_29D6BC160, MEMORY[0x29EDB88F0]);

  v37 = v51;
  v38 = v48;
  v39 = v47;
  sub_29D938468();

  v40 = sub_29D6BEAE8(&qword_2A1A22538, sub_29D6BC088, v30);
  v41 = sub_29D6BC004();
  v42 = v52;
  v43 = v55;
  MEMORY[0x29ED68960](v55, v40, v41);
  (*(v56 + 8))(v37, v43);
  sub_29D6BEAE8(&qword_2A1A22690, sub_29D6BC310, MEMORY[0x29EDB88E0]);
  v44 = v57;
  v45 = sub_29D938418();
  (*(v58 + 8))(v42, v44);
  (*(v54 + 8))(v39, v38);
  sub_29D69417C(v61);
  return v45;
}

uint64_t *sub_29D6BBB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  sub_29D6BBF08(0);
  v12 = v11;
  v28 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = &type metadata for CardioFitnessRetroComputeDismissalStateManager;
  v33 = &off_2A2440968;
  v16 = swift_allocObject();
  v31[0] = v16;
  v17 = *(a4 + 16);
  *(v16 + 16) = *a4;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(a4 + 32);
  *(v16 + 64) = *(a4 + 48);
  if (qword_2A1A23530 != -1)
  {
    swift_once();
  }

  v18 = sub_29D934178();
  v19 = sub_29D69C6C0(v18, qword_2A1A2BDA8);
  (*(*(v18 - 8) + 16))(a5 + OBJC_IVAR____TtC5Heart42CardioFitnessRetroComputeGeneratorPipeline_domain, v19, v18);
  sub_29D6945AC(v31, a5 + OBJC_IVAR____TtC5Heart42CardioFitnessRetroComputeGeneratorPipeline_dismissalStateManaging);
  v20 = sub_29D693E2C(v31, v32);
  v21 = *(v20 + 1);
  v34[0] = *v20;
  v34[1] = v21;
  v34[2] = *(v20 + 2);
  v35 = v20[6];
  v22 = sub_29D6BB510(a1, a2, a3, v34, v10);
  v29 = a1;
  v30 = v22;
  v23 = sub_29D934198();
  sub_29D6BBF98(0, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
  sub_29D6BC004();
  if (v23)
  {
    v24 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D6BEAE8(&qword_2A1A224E8, sub_29D6BBF08, MEMORY[0x29EDB8940]);
    v24 = sub_29D938418();

    (*(v28 + 8))(v15, v12);
  }

  v30 = v24;
  v25 = sub_29D938418();

  v26 = sub_29D9341E8();
  (*(*(v26 - 8) + 8))(v29, v26);

  sub_29D69417C(v31);
  *(a5 + OBJC_IVAR____TtC5Heart42CardioFitnessRetroComputeGeneratorPipeline_publisher) = v25;
  return a5;
}

void sub_29D6BBF08(uint64_t a1)
{
  if (!qword_2A1A24B50)
  {
    sub_29D6BBF98(255, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
    sub_29D6BC004();
    v1 = sub_29D938128();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24B50);
    }
  }
}

void sub_29D6BBF98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_29D938238();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29D6BC004()
{
  result = qword_2A1A24AE0;
  if (!qword_2A1A24AE0)
  {
    sub_29D6BBF98(255, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24AE0);
  }

  return result;
}

void sub_29D6BC088(uint64_t a1)
{
  if (!qword_2A1A22530)
  {
    sub_29D6BC160(255);
    sub_29D6BBF98(255, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
    sub_29D6BEAE8(&qword_2A1A22650, sub_29D6BC160, MEMORY[0x29EDB88F0]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22530);
    }
  }
}

void sub_29D6BC160(uint64_t a1)
{
  if (!qword_2A1A22648)
  {
    sub_29D6BC1F4(255);
    sub_29D6BEAE8(&qword_2A1A225B0, sub_29D6BC1F4, MEMORY[0x29EDB8908]);
    v1 = sub_29D9380D8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22648);
    }
  }
}

void sub_29D6BC1F4(uint64_t a1)
{
  if (!qword_2A1A225A8)
  {
    sub_29D6BBF98(255, &qword_2A1A223C8, &qword_2A1A221A0, 0x29EDBAAA0, sub_29D69567C);
    sub_29D6BC28C();
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A225A8);
    }
  }
}

unint64_t sub_29D6BC28C()
{
  result = qword_2A1A223D0;
  if (!qword_2A1A223D0)
  {
    sub_29D6BBF98(255, &qword_2A1A223C8, &qword_2A1A221A0, 0x29EDBAAA0, sub_29D69567C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A223D0);
  }

  return result;
}

uint64_t sub_29D6BC34C@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);

  return sub_29D6BA0C0(a1, v8, v2 + v6, v9, (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), a2);
}

void sub_29D6BC414(uint64_t a1)
{
  if (!qword_2A1A24A68)
  {
    sub_29D6B7370(255, &qword_2A1A25740, MEMORY[0x29EDC3C90]);
    v1 = sub_29D938328();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24A68);
    }
  }
}

uint64_t sub_29D6BC47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v7 = sub_29D9341E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  sub_29D6BC894(0);
  v33 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BCAC8(0);
  v17 = *(v16 - 8);
  v34 = v16;
  v35 = v17;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[3] = &type metadata for CardioFitnessRetroComputeDismissalStateManager;
  v38[4] = &off_2A2440968;
  v21 = swift_allocObject();
  v37 = a2;
  v38[0] = v21;
  v22 = *(a3 + 16);
  *(v21 + 16) = *a3;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a3 + 32);
  *(v21 + 64) = *(a3 + 48);
  (*(v8 + 16))(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  sub_29D6945AC(v38, v36);
  v23 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v32;
  (*(v8 + 32))(v24 + v23, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_29D679D3C(v36, v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_29D6B0450(a3, v36);
  sub_29D6BC95C(0, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
  sub_29D6BBF98(0, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
  sub_29D6BCA50();
  sub_29D938468();

  v25 = sub_29D6BEAE8(&qword_2A1A22590, sub_29D6BC894, MEMORY[0x29EDB8908]);
  v26 = sub_29D6BC004();
  v27 = v33;
  MEMORY[0x29ED68960](v33, v25, v26);
  (*(v12 + 8))(v15, v27);
  sub_29D6BEAE8(&qword_2A1A22680, sub_29D6BCAC8, MEMORY[0x29EDB88E0]);
  v28 = v34;
  v29 = sub_29D938418();
  (*(v35 + 8))(v20, v28);
  sub_29D69417C(v38);
  return v29;
}

void sub_29D6BC894(uint64_t a1)
{
  if (!qword_2A1A22588)
  {
    sub_29D6BC95C(255, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BBF98(255, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
    sub_29D6BCA50();
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22588);
    }
  }
}

void sub_29D6BC95C(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_29D6BC9C8(255, a3, a4, a5);
    v6 = sub_29D938238();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D6BC9C8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_29D69567C(255, a3, a4);
    sub_29D6B7370(255, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
    v5 = sub_29D93AEB8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29D6BCA50()
{
  result = qword_2A1A223A0;
  if (!qword_2A1A223A0)
  {
    sub_29D6BC95C(255, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A223A0);
  }

  return result;
}

void sub_29D6BCB04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29D6BBF98(255, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
    a3(255);
    sub_29D6BC004();
    sub_29D6BEAE8(a4, a5, MEMORY[0x29EDB8908]);
    v9 = sub_29D9380C8();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D6BCBF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v10 = sub_29D693E2C(v8, v8[3]);
  v11 = *(v10 + 1);
  v13[0] = *v10;
  v13[1] = v11;
  v13[2] = *(v10 + 2);
  v14 = v10[6];
  result = sub_29D6BDB00(v2 + v6, v9, a1, v13, v7);
  *a2 = result;
  return result;
}

uint64_t sub_29D6BCCD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v116 = a4;
  v118 = a1;
  v106 = sub_29D9341E8();
  v105 = *(v106 - 8);
  v6 = *(v105 + 64);
  MEMORY[0x2A1C7C4A8](v106, v7);
  v104 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BE124(0);
  v109 = v8;
  v108 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v107 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BE1B8(0);
  v112 = v11;
  v111 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v110 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BC414(0);
  v114 = *(v14 - 8);
  v115 = v14;
  MEMORY[0x2A1C7C4A8](v14, v15);
  v113 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_29D937898();
  v17 = *(v117 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v117, v18);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v19, v22);
  v25 = &v103 - v24;
  v27 = MEMORY[0x2A1C7C4A8](v23, v26);
  v29 = &v103 - v28;
  v31 = MEMORY[0x2A1C7C4A8](v27, v30);
  v33 = &v103 - v32;
  MEMORY[0x2A1C7C4A8](v31, v34);
  v36 = &v103 - v35;
  v121 = &type metadata for CardioFitnessRetroComputeDismissalStateManager;
  v122 = &off_2A2440968;
  v37 = swift_allocObject();
  v120[0] = v37;
  v38 = *(a3 + 16);
  *(v37 + 16) = *a3;
  *(v37 + 32) = v38;
  *(v37 + 48) = *(a3 + 32);
  *(v37 + 64) = *(a3 + 48);
  sub_29D6B0450(a3, &v123);
  v39 = [a2 status];
  if (v39 > 1)
  {
    if (v39 == 2)
    {
      sub_29D934D28();
      v82 = sub_29D937878();
      v83 = sub_29D93A2A8();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *&v123 = v85;
        *v84 = 136446210;
        v86 = sub_29D93AF08();
        v88 = sub_29D6C2364(v86, v87, &v123);

        *(v84 + 4) = v88;
        _os_log_impl(&dword_29D677000, v82, v83, "[%{public}s] Creating delete generator since status is inProgress", v84, 0xCu);
        sub_29D69417C(v85);
        MEMORY[0x29ED6BE30](v85, -1, -1);
        MEMORY[0x29ED6BE30](v84, -1, -1);
      }

      (*(v17 + 8))(v29, v117);
      goto LABEL_21;
    }

    if (v39 == 3)
    {
      v48 = [a2 meanDelta];
      [v48 doubleValue];
      v50 = v49;

      sub_29D934D28();
      v51 = sub_29D937878();
      v52 = sub_29D93A2A8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v123 = v54;
        *v53 = 136446466;
        v55 = sub_29D93AF08();
        v57 = sub_29D6C2364(v55, v56, &v123);

        *(v53 + 4) = v57;
        *(v53 + 12) = 2048;
        *(v53 + 14) = v50;
        _os_log_impl(&dword_29D677000, v51, v52, "[%{public}s] Creating complete status generator publisher with deltaVO2MaxValue: %f", v53, 0x16u);
        sub_29D69417C(v54);
        MEMORY[0x29ED6BE30](v54, -1, -1);
        MEMORY[0x29ED6BE30](v53, -1, -1);
      }

      (*(v17 + 8))(v25, v117);
      v58 = sub_29D693E2C(v120, v121);
      v123 = *v58;
      v124 = *(v58 + 1);
      v125 = *(v58 + 2);
      v126 = v58[6];
      v119 = sub_29D6ADAB0();
      sub_29D6AD548();
      sub_29D6BEAE8(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
      v59 = v107;
      sub_29D938558();
      v60 = v105;
      v61 = v104;
      v62 = v106;
      (*(v105 + 16))(v104, v118, v106);
      v63 = (*(v60 + 80) + 16) & ~*(v60 + 80);
      v64 = (v6 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v65 = swift_allocObject();
      (*(v60 + 32))(v65 + v63, v61, v62);
      *(v65 + v64) = v50;
      *(v65 + ((v64 + 15) & 0xFFFFFFFFFFFFFFF8)) = v116;
      sub_29D6B7370(0, &qword_2A1A25740, MEMORY[0x29EDC3C90]);
      sub_29D6BEAE8(&qword_2A1A22670, sub_29D6BE124, MEMORY[0x29EDB88F0]);
      goto LABEL_26;
    }
  }

  else
  {
    if (!v39)
    {
      sub_29D934D28();
      v75 = sub_29D937878();
      v76 = sub_29D93A2A8();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *&v123 = v78;
        *v77 = 136446210;
        v79 = sub_29D93AF08();
        v81 = sub_29D6C2364(v79, v80, &v123);

        *(v77 + 4) = v81;
        _os_log_impl(&dword_29D677000, v75, v76, "[%{public}s] Creating delete generator since status is unavailable", v77, 0xCu);
        sub_29D69417C(v78);
        MEMORY[0x29ED6BE30](v78, -1, -1);
        MEMORY[0x29ED6BE30](v77, -1, -1);
      }

      (*(v17 + 8))(v36, v117);
      goto LABEL_21;
    }

    if (v39 == 1)
    {
      sub_29D934D28();
      v40 = sub_29D937878();
      v41 = sub_29D93A2A8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v123 = v43;
        *v42 = 136446210;
        v44 = v116;
        v45 = sub_29D93AF08();
        v47 = sub_29D6C2364(v45, v46, &v123);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_29D677000, v40, v41, "[%{public}s] Creating available status generator publisher", v42, 0xCu);
        sub_29D69417C(v43);
        MEMORY[0x29ED6BE30](v43, -1, -1);
        MEMORY[0x29ED6BE30](v42, -1, -1);

        (*(v17 + 8))(v33, v117);
      }

      else
      {

        (*(v17 + 8))(v33, v117);
        v44 = v116;
      }

      v93 = sub_29D693E2C(v120, v121);
      v123 = *v93;
      v124 = *(v93 + 1);
      v125 = *(v93 + 2);
      v126 = v93[6];
      v119 = sub_29D6ACBD8();
      sub_29D6AD548();
      sub_29D6BEAE8(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
      v59 = v107;
      sub_29D938558();
      v94 = v105;
      v95 = v104;
      v96 = v106;
      (*(v105 + 16))(v104, v118, v106);
      v97 = (*(v94 + 80) + 16) & ~*(v94 + 80);
      v98 = swift_allocObject();
      (*(v94 + 32))(v98 + v97, v95, v96);
      *(v98 + ((v6 + v97 + 7) & 0xFFFFFFFFFFFFFFF8)) = v44;
      sub_29D6B7370(0, &qword_2A1A25740, MEMORY[0x29EDC3C90]);
      sub_29D6BEAE8(&qword_2A1A22670, sub_29D6BE124, MEMORY[0x29EDB88F0]);
LABEL_26:
      v99 = v110;
      v100 = v109;
      sub_29D938468();

      (*(v108 + 8))(v59, v100);
      sub_29D6BEAE8(&qword_2A17B1B40, sub_29D6BE1B8, MEMORY[0x29EDB8908]);
      v101 = v112;
      v92 = sub_29D938418();

      (*(v111 + 8))(v99, v101);
      goto LABEL_27;
    }
  }

  sub_29D934D28();
  v66 = a2;
  v67 = sub_29D937878();
  v68 = sub_29D93A288();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&v123 = v70;
    *v69 = 136446466;
    v71 = sub_29D93AF08();
    v73 = sub_29D6C2364(v71, v72, &v123);

    *(v69 + 4) = v73;
    *(v69 + 12) = 2048;
    v74 = [v66 status];

    *(v69 + 14) = v74;
    _os_log_impl(&dword_29D677000, v67, v68, "[%{public}s] Creating delete generator due to unknown status received: %ld", v69, 0x16u);
    sub_29D69417C(v70);
    MEMORY[0x29ED6BE30](v70, -1, -1);
    MEMORY[0x29ED6BE30](v69, -1, -1);
  }

  else
  {
  }

  (*(v17 + 8))(v21, v117);
LABEL_21:
  *(&v124 + 1) = sub_29D934228();
  *&v125 = MEMORY[0x29EDC38C8];
  sub_29D693F78(&v123);
  if (qword_2A1A23530 != -1)
  {
    swift_once();
  }

  v89 = sub_29D934178();
  sub_29D69C6C0(v89, qword_2A1A2BDA8);
  sub_29D9341F8();
  sub_29D6B7370(0, &qword_2A1A25740, MEMORY[0x29EDC3C90]);
  v90 = v113;
  sub_29D938338();
  sub_29D6BEAE8(&qword_2A1A24A70, sub_29D6BC414, MEMORY[0x29EDB8AB8]);
  v91 = v115;
  v92 = sub_29D938418();
  (*(v114 + 8))(v90, v91);
LABEL_27:
  sub_29D69417C(v120);
  return v92;
}

uint64_t sub_29D6BDB00(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_29D6BC414(0);
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D937898();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v55 - v21;
  v61 = &type metadata for CardioFitnessRetroComputeDismissalStateManager;
  v62 = &off_2A2440968;
  v23 = swift_allocObject();
  v60[0] = v23;
  v24 = *(a4 + 16);
  *(v23 + 16) = *a4;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(a4 + 32);
  *(v23 + 64) = *(a4 + 48);
  if (a3)
  {
    v57 = v14;
    sub_29D6B0450(a4, &v63);
    sub_29D934D28();
    v25 = a2;
    v26 = sub_29D937878();
    v27 = sub_29D93A288();
    sub_29D6BE118(a2);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v63 = v29;
      *v28 = 136446466;
      v30 = sub_29D93AF08();
      v32 = sub_29D6C2364(v30, v31, &v63);
      v58 = a1;
      v33 = v32;

      *(v28 + 4) = v33;
      *(v28 + 12) = 2082;
      v59 = a2;
      v34 = a2;
      sub_29D6B7370(0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
      v35 = sub_29D939DA8();
      v37 = sub_29D6C2364(v35, v36, &v63);

      *(v28 + 14) = v37;
      _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s] Creating delete generator due to get retrocompute state failure: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v29, -1, -1);
      MEMORY[0x29ED6BE30](v28, -1, -1);
    }

    (*(v15 + 8))(v19, v57);
    *(&v64 + 1) = sub_29D934228();
    *&v65 = MEMORY[0x29EDC38C8];
    sub_29D693F78(&v63);
    if (qword_2A1A23530 != -1)
    {
      swift_once();
    }

    v38 = sub_29D934178();
    sub_29D69C6C0(v38, qword_2A1A2BDA8);
    sub_29D9341F8();
    sub_29D6B7370(0, &qword_2A1A25740, MEMORY[0x29EDC3C90]);
    sub_29D938338();
    sub_29D6BEAE8(&qword_2A1A24A70, sub_29D6BC414, MEMORY[0x29EDB8AB8]);
    v39 = v56;
    v40 = sub_29D938418();
    (*(v55 + 8))(v13, v39);
  }

  else
  {
    v58 = a1;
    sub_29D6B0450(a4, &v63);
    sub_29D934D28();
    v41 = a2;
    v42 = sub_29D937878();
    v43 = sub_29D93A2A8();
    sub_29D6BE118(a2);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v63 = v45;
      *v44 = 136446466;
      v46 = sub_29D93AF08();
      v48 = sub_29D6C2364(v46, v47, &v63);
      v57 = v14;
      v49 = v48;

      *(v44 + 4) = v49;
      *(v44 + 12) = 2082;
      v59 = [v41 status];
      type metadata accessor for CMVO2MaxRetrocomputeStatus(0);
      v50 = sub_29D939DA8();
      v52 = sub_29D6C2364(v50, v51, &v63);

      *(v44 + 14) = v52;
      _os_log_impl(&dword_29D677000, v42, v43, "[%{public}s] Creating generator publisher for retrocompute state status: %{public}s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v45, -1, -1);
      MEMORY[0x29ED6BE30](v44, -1, -1);

      (*(v15 + 8))(v22, v57);
    }

    else
    {

      (*(v15 + 8))(v22, v14);
    }

    v53 = sub_29D693E2C(v60, v61);
    v63 = *v53;
    v64 = *(v53 + 1);
    v65 = *(v53 + 2);
    v66 = v53[6];
    v40 = sub_29D6BCCD8(v58, v41, &v63, a5);
  }

  sub_29D69417C(v60);
  return v40;
}

void sub_29D6BE124(uint64_t a1)
{
  if (!qword_2A1A22668)
  {
    sub_29D6AD548();
    sub_29D6BEAE8(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
    v1 = sub_29D9380D8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22668);
    }
  }
}

void sub_29D6BE1B8(uint64_t a1)
{
  if (!qword_2A1A22550)
  {
    sub_29D6BE124(255);
    sub_29D6B7370(255, &qword_2A1A25740, MEMORY[0x29EDC3C90]);
    sub_29D6BEAE8(&qword_2A1A22670, sub_29D6BE124, MEMORY[0x29EDB88F0]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22550);
    }
  }
}

uint64_t sub_29D6BE274@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D6BAB6C(a1, v2 + v6, v9, a2, v8);
}

uint64_t sub_29D6BE32C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D6BA5A0(a1, v2 + v6, v7, a2);
}

void sub_29D6BE3D8(uint64_t a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  sub_29D6BA864(v4, v5, a1);
}

void sub_29D6BE478(uint64_t a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 17) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 16);

  sub_29D6BAE48(v5, a1, v4);
}

void sub_29D6BE524(uint64_t a1)
{
  if (!qword_2A1A22708)
  {
    sub_29D6BE5E8(255);
    sub_29D6BC9C8(255, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BEAE8(&qword_2A1A22370, sub_29D6BE5E8, MEMORY[0x29EDB8A70]);
    v1 = sub_29D938078();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22708);
    }
  }
}

void sub_29D6BE5E8(uint64_t a1)
{
  if (!qword_2A1A22368)
  {
    sub_29D6BE680(255, &qword_2A1A21EC0, sub_29D6BE70C, MEMORY[0x29EDCA058]);
    v1 = sub_29D9382C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22368);
    }
  }
}

void sub_29D6BE680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D6B7370(255, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D6BE70C(uint64_t a1)
{
  if (!qword_2A1A221A8)
  {
    sub_29D69567C(255, &unk_2A1A221B0, 0x29EDB93D8);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A221A8);
    }
  }
}

void sub_29D6BE774(uint64_t a1)
{
  if (!qword_2A1A22470)
  {
    sub_29D6BE860(255);
    sub_29D6BE680(255, &qword_2A1A22310, sub_29D6BE91C, MEMORY[0x29EDB8AD0]);
    sub_29D6BEAE8(&qword_2A1A226B0, sub_29D6BE860, MEMORY[0x29EDB88D8]);
    sub_29D6BE96C();
    v1 = sub_29D938198();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22470);
    }
  }
}

void sub_29D6BE860(uint64_t a1)
{
  if (!qword_2A1A226A8)
  {
    sub_29D6BC95C(255, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6B7370(255, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
    sub_29D6BCA50();
    v1 = sub_29D9380B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A226A8);
    }
  }
}

void sub_29D6BE91C()
{
  if (!qword_2A1A22290)
  {
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22290);
    }
  }
}

unint64_t sub_29D6BE96C()
{
  result = qword_2A1A22318;
  if (!qword_2A1A22318)
  {
    sub_29D6BE680(255, &qword_2A1A22310, sub_29D6BE91C, MEMORY[0x29EDB8AD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22318);
  }

  return result;
}

void sub_29D6BE9F4(uint64_t a1)
{
  if (!qword_2A1A22500)
  {
    sub_29D6BE774(255);
    sub_29D6BC95C(255, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BEAE8(&qword_2A1A22478, sub_29D6BE774, MEMORY[0x29EDB89A8]);
    sub_29D6BCA50();
    v1 = sub_29D938118();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22500);
    }
  }
}

uint64_t sub_29D6BEAE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D6BEB30(uint64_t a1)
{
  if (!qword_2A1A22338)
  {
    sub_29D6BC9C8(255, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    v1 = sub_29D938328();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22338);
    }
  }
}

uint64_t sub_29D6BEBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29D6C2E78(0);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C370C(a3, v12, sub_29D6C2E78);
  v13 = sub_29D93A028();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_29D6C3774(v12, sub_29D6C2E78);
  }

  else
  {
    sub_29D93A018();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_29D939FD8();
    v19 = v18;
    sub_29D936978();
    if (a2)
    {
LABEL_6:
      v20 = sub_29D939DD8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_29D6C3774(a3, sub_29D6C2E78);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29D6C3774(a3, sub_29D6C2E78);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_29D6BEEAC(uint64_t a1)
{
  v52 = *v1;
  v3 = sub_29D9341E8();
  v46 = v3;
  v48 = *(v3 - 8);
  v4 = v48;
  v50 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C3178(0);
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  MEMORY[0x2A1C7C4A8](v7, v9);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29D934148();
  v11 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_29D934178();
  v15 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v4 + 16);
  v43 = a1;
  v47(v1 + OBJC_IVAR____TtC5Heart57BloodPressureJournalNotificationSettingsGeneratorPipeline_context, a1, v3);
  v41 = sub_29D9341B8();
  sub_29D6C2EAC(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v19 = sub_29D933F58();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29D93DDB0;
  (*(v20 + 104))(v22 + v21, *MEMORY[0x29EDC3780], v19);
  sub_29D6E4080(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  sub_29D6C2914();
  (*(v11 + 104))(v14, *MEMORY[0x29EDC3898], v45);
  sub_29D934168();
  v23 = v42;
  (*(v15 + 32))(v42 + OBJC_IVAR____TtC5Heart57BloodPressureJournalNotificationSettingsGeneratorPipeline_domain, v18, v44);
  v24 = *MEMORY[0x29EDBA6B8];
  v25 = v43;
  v26 = sub_29D9341A8();
  v27 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v24 healthStore:v26];

  v28 = (v23 + OBJC_IVAR____TtC5Heart57BloodPressureJournalNotificationSettingsGeneratorPipeline_featureStatusManager);
  v29 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v30 = MEMORY[0x29EDC2EA8];
  v28[3] = v29;
  v28[4] = v30;
  *v28 = v27;
  v31 = v49;
  v32 = v46;
  v47(v49, v25, v46);
  v33 = v48;
  v34 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v35 = (v50 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v33 + 32))(v36 + v34, v31, v32);
  *(v36 + v35) = v52;
  sub_29D6C320C(0);
  sub_29D6C2E30(&qword_2A1A24AE0, sub_29D6C320C, MEMORY[0x29EDB8A00]);
  v37 = v51;
  sub_29D938378();
  sub_29D6C2E30(&qword_2A1A24A20, sub_29D6C3178, MEMORY[0x29EDB8AE8]);
  v38 = v53;
  v39 = sub_29D938418();
  (*(v33 + 8))(v25, v32);
  (*(v54 + 8))(v37, v38);
  result = v23;
  *(v23 + 16) = v39;
  return result;
}

uint64_t sub_29D6BF4C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D6C3320(0, &qword_2A1A22330, MEMORY[0x29EDB8AC0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v19[-1] - v8;
  sub_29D934188();
  sub_29D693E2C(v19, v19[3]);
  v10 = sub_29D934118();
  v11 = [v10 profileIdentifier];
  v12 = [v11 type];

  if (v12 == 1 && (v13 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:v10]) != 0)
  {
    v14 = v13;
    v15 = sub_29D6B74EC();
  }

  else
  {
    sub_29D9371A8();
    sub_29D938348();
    sub_29D6C3444(&qword_2A17B1B60, &qword_2A1A22330, MEMORY[0x29EDB8AC0], MEMORY[0x29EDB8AC8]);
    v15 = sub_29D938418();

    (*(v6 + 8))(v9, v5);
  }

  sub_29D69417C(v19);
  v16 = sub_29D6BF708(a1, v15);

  *a2 = v16;
  return result;
}

uint64_t sub_29D6BF708(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D9341E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  sub_29D6C3390(0);
  v9 = v8;
  v26 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C3488(0);
  v29 = *(v13 - 8);
  v30 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  v27 = a1;
  LOBYTE(a2) = sub_29D934198();
  v17 = MEMORY[0x29EDB89F8];
  sub_29D6C3320(0, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
  v31 = v18;
  sub_29D6C3444(&qword_2A1A22420, &qword_2A1A22410, v17, MEMORY[0x29EDB8A00]);
  if (a2)
  {
    v19 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D6C2E30(&qword_2A1A224E0, sub_29D6C3390, MEMORY[0x29EDB8940]);
    v19 = sub_29D938418();
    (*(v26 + 8))(v12, v9);
  }

  v32 = v19;
  (*(v5 + 16))(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v4);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  (*(v5 + 32))(v21 + v20, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  sub_29D6C3320(0, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
  sub_29D6B7370(0, &qword_2A1A25740, MEMORY[0x29EDC3C90]);
  sub_29D938468();

  sub_29D6C2E30(&qword_2A1A22618, sub_29D6C3488, MEMORY[0x29EDB8908]);
  v22 = v30;
  v23 = sub_29D938418();
  (*(v29 + 8))(v16, v22);
  return v23;
}

uint64_t sub_29D6BFB18@<X0>(uint64_t a1@<X1>, uint64_t *a3@<X8>)
{
  v70 = a3;
  sub_29D6C36A4(0);
  v66 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v71 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D934148();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v65 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D934178();
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v69 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_29D9341E8();
  v13 = *(v61 - 8);
  MEMORY[0x2A1C7C4A8](v61, v14);
  v64 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  v63 = v16;
  v18 = MEMORY[0x2A1C7C4A8](v16, v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v58 - v22;
  v62 = a1;
  v24 = sub_29D6C2A20();
  v26 = v25;
  v27 = sub_29D9371B8();
  v28 = [v27 areAllRequirementsSatisfied];

  v29 = sub_29D9340F8();
  (*(*(v29 - 8) + 56))(v23, 1, 1, v29);
  v72 = v26;
  if (v28)
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v30 = sub_29D937898();
    sub_29D69C6C0(v30, qword_2A1A2BF10);
    v31 = sub_29D937878();
    v32 = sub_29D93A2A8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v60 = v20;
      v35 = v34;
      v73 = v34;
      *v33 = 136315394;
      v36 = sub_29D93AF08();
      v38 = v23;
      v39 = sub_29D6C2364(v36, v37, &v73);

      *(v33 + 4) = v39;
      v23 = v38;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_29D6C2364(0xD000000000000045, 0x800000029D959390, &v73);
      _os_log_impl(&dword_29D677000, v31, v32, "[%s.%s] Creating blood pressure journal settings feed item", v33, 0x16u);
      swift_arrayDestroy();
      v20 = v60;
      v26 = v72;
      MEMORY[0x29ED6BE30](v35, -1, -1);
      MEMORY[0x29ED6BE30](v33, -1, -1);
    }

    v40 = v62;
    sub_29D6C035C(v62, v24, v26, v20);
    sub_29D6C3774(v23, sub_29D6C36D8);
    sub_29D6C37D4(v20, v23);
    v41 = v23;
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v59 = v23;
    v60 = v20;
    v42 = sub_29D937898();
    sub_29D69C6C0(v42, qword_2A1A2BF10);
    v43 = sub_29D937878();
    v44 = sub_29D93A2A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v73 = v46;
      *v45 = 136315650;
      v47 = sub_29D93AF08();
      v49 = sub_29D6C2364(v47, v48, &v73);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_29D6C2364(0xD000000000000045, 0x800000029D959390, &v73);
      *(v45 + 22) = 1024;
      *(v45 + 24) = 0;
      _os_log_impl(&dword_29D677000, v43, v44, "[%s.%s] Not creating blood pressure journal settings feed item isAvailable: %{BOOL}d", v45, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v46, -1, -1);
      MEMORY[0x29ED6BE30](v45, -1, -1);
    }

    v41 = v59;
    v20 = v60;
    v40 = v62;
  }

  (*(v13 + 16))(v64, v40, v61);
  sub_29D9341B8();
  sub_29D6C2EAC(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v50 = sub_29D933F58();
  v51 = *(v50 - 8);
  v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_29D93DDB0;
  (*(v51 + 104))(v53 + v52, *MEMORY[0x29EDC3780], v50);
  sub_29D6E4080(v53);
  swift_setDeallocating();
  (*(v51 + 8))(v53 + v52, v50);
  swift_deallocClassInstance();
  sub_29D6C2914();
  (*(v67 + 104))(v65, *MEMORY[0x29EDC3898], v68);
  sub_29D934168();
  sub_29D6C370C(v41, v20, sub_29D6C36D8);
  sub_29D938338();
  v54 = sub_29D934228();
  v55 = MEMORY[0x29EDC38C8];
  v56 = v70;
  v70[3] = v54;
  v56[4] = v55;
  sub_29D693F78(v56);
  sub_29D6C2E30(&qword_2A1A22360, sub_29D6C36A4, MEMORY[0x29EDB8AB8]);
  sub_29D934218();
  return sub_29D6C3774(v41, sub_29D6C36D8);
}

uint64_t sub_29D6C035C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v72 = a2;
  v73 = a3;
  v78 = a4;
  v7 = sub_29D9349C8();
  v74 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D933F58();
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v70 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v16 = sub_29D939D18();
  v75 = *(v16 - 8);
  v76 = v16;
  v18 = MEMORY[0x2A1C7C4A8](v16, v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v56 - v22;
  v67 = sub_29D935108();
  v66 = *(v67 - 8);
  MEMORY[0x2A1C7C4A8](v67, v24);
  v77 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D935788();
  v27 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  v65 = v5;
  if (sub_29D6C0D54())
  {
    v56 = v10;
    v57 = v7;
    v62 = v30;
    v63 = v27;
    v64 = v26;
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v31 = qword_2A1A2BE98;
    v59 = unk_2A1A2BEA0;
    v32 = v75;
    v61 = *(v75 + 16);
    v33 = v76;
    v61(v20, v23, v76);
    sub_29D935E88();
    v58 = v31;
    v60 = v31;
    sub_29D933A98();
    sub_29D939D98();
    v34 = *(v32 + 8);
    v34(v23, v33);
    v35 = v77;
    sub_29D9350E8();
    sub_29D939D08();
    v61(v20, v23, v33);
    sub_29D935E88();
    v36 = v60;
    sub_29D933A98();
    sub_29D939D98();
    v34(v23, v33);
    v37 = v62;
    sub_29D935758();
    v42 = sub_29D935778();
    v44 = v43;
    type metadata accessor for BPJNotificationSettingsDisclosureCellViewController(0);
    sub_29D933FF8();
    (*(v68 + 104))(v70, *MEMORY[0x29EDC3780], v69);
    sub_29D935E88();
    sub_29D6AA230(v42, v44);
    sub_29D9341B8();
    v45 = v37;
    v46 = v78;
    v47 = v44;
    sub_29D9340A8();
    v48 = v45;
    sub_29D935768();
    sub_29D9350F8();
    (*(v66 + 8))(v35, v67);
    sub_29D934098();
    sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D93DDB0;
    *(inited + 32) = sub_29D934298();
    *(inited + 40) = v50;
    sub_29D6E35C8(inited);
    swift_setDeallocating();
    sub_29D6AA360(inited + 32);
    sub_29D9340D8();
    v51 = v74;
    v52 = v56;
    v53 = v57;
    (*(v74 + 104))(v56, *MEMORY[0x29EDC19B0], v57);
    sub_29D9349B8();
    (*(v51 + 8))(v52, v53);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6C2914();
    sub_29D9340B8();
    sub_29D6AA284(v42, v47);
    (*(v63 + 8))(v48, v64);
    v54 = sub_29D9340F8();
    return (*(*(v54 - 8) + 56))(v46, 0, 1, v54);
  }

  else
  {
    v38 = sub_29D9340F8();
    v39 = *(*(v38 - 8) + 56);
    v40 = v38;
    v41 = v78;

    return v39(v41, 1, 1, v40);
  }
}

id sub_29D6C0D54()
{
  v0 = sub_29D9371A8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x29EDBA6B8];
  v6 = sub_29D9341A8();
  v7 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v5 healthStore:v6];

  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  v8 = sub_29D9371B8();
  v9 = [v8 areAllRequirementsSatisfied];

  (*(v1 + 8))(v4, v0);
  return v9;
}

uint64_t sub_29D6C10A4()
{

  v1 = OBJC_IVAR____TtC5Heart57BloodPressureJournalNotificationSettingsGeneratorPipeline_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Heart57BloodPressureJournalNotificationSettingsGeneratorPipeline_context;
  v4 = sub_29D9341E8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_29D69417C((v0 + OBJC_IVAR____TtC5Heart57BloodPressureJournalNotificationSettingsGeneratorPipeline_featureStatusManager));

  return swift_deallocClassInstance();
}

uint64_t sub_29D6C11C0(uint64_t a1)
{
  result = sub_29D934178();
  if (v2 <= 0x3F)
  {
    result = sub_29D9341E8();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D6C1310@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart57BloodPressureJournalNotificationSettingsGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D6C138C()
{
  v1 = sub_29D939D68();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD000000000000023, 0x800000029D9594B0);

  return v1;
}

double (*sub_29D6C1404(uint64_t *a1))(uint64_t a1)
{
  v4 = sub_29D939D68();
  v5 = v2;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD000000000000023, 0x800000029D9594B0);

  *a1 = v4;
  a1[1] = v5;
  return sub_29D6C14A0;
}

uint64_t sub_29D6C14A8(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v51 = a3;
  v52 = a4;
  v50 = sub_29D939968();
  v9 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50, v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D939998();
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v17 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v18 = sub_29D937898();
    sub_29D69C6C0(v18, qword_2A1A2C008);
    v19 = a2;
    v20 = sub_29D937878();
    v21 = sub_29D93A288();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v48 = a5;
      v24 = v23;
      aBlock[0] = v23;
      *v22 = 136446722;
      v25 = sub_29D93AF08();
      v49 = v9;
      v27 = sub_29D6C2364(v25, v26, aBlock);
      v47 = a1;
      v28 = v27;

      *(v22 + 4) = v28;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_29D6C2364(0xD000000000000014, 0x800000029D959370, aBlock);
      *(v22 + 22) = 2080;
      v55 = a2;
      v29 = a2;
      sub_29D6B7370(0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
      v30 = sub_29D939DA8();
      v32 = sub_29D6C2364(v30, v31, aBlock);
      v9 = v49;

      *(v22 + 24) = v32;
      a1 = v47;
      _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s.%{public}s]: Error fetching active journal from health store: %s", v22, 0x20u);
      swift_arrayDestroy();
      v33 = v24;
      a5 = v48;
      MEMORY[0x29ED6BE30](v33, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);
    }

    else
    {
    }
  }

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v34 = sub_29D93A468();
  v35 = swift_allocObject();
  v35[2] = a1;
  v36 = a1;
  v37 = v51;
  v38 = v52;
  v35[3] = v51;
  v35[4] = v38;
  v35[5] = a5;
  aBlock[4] = sub_29D6C2DF0;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2440EA8;
  v39 = _Block_copy(aBlock);
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = a5;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D6C2E30(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D6C2DFC(0);
  sub_29D6C2E30(&qword_2A1A24980, sub_29D6C2DFC, MEMORY[0x29EDC9A70]);
  v44 = v50;
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v16, v12, v39);
  _Block_release(v39);

  (*(v9 + 8))(v12, v44);
  return (*(v53 + 8))(v16, v54);
}

void sub_29D6C19A8(void *a1, void *a2, void *a3, void *a4)
{
  sub_29D6C2E78(0);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for BloodPressureSettingsFacade();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  type metadata accessor for BloodPressureJournalSettingsViewModel(0);
  swift_allocObject();
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v12[5] = sub_29D7F280C(a1, 0);
  v16 = sub_29D93A028();
  v17 = *(*(v16 - 8) + 56);
  v17(v11, 1, 1, v16);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v12;

  sub_29D6BEBA4(0, 0, v11, &unk_29D951580, v18);

  v17(v11, 1, 1, v16);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v15;
  v19[5] = v12;
  v20 = v15;

  sub_29D6BEBA4(0, 0, v11, &unk_29D9409E0, v19);

  v21 = objc_allocWithZone(type metadata accessor for BloodPressureJournalSettingsViewController(0));
  v22 = v20;

  v24 = sub_29D8D9220(v23, 3, v22);

  v25 = swift_allocObject();
  *(v25 + 16) = v12;
  *(v25 + 24) = v24;
  v26 = v24;

  v27 = v26;
  v28 = sub_29D938D08();
  v30 = v29;
  v31 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v32 = (v30 + v31[8]);
  v33 = *v32;
  v34 = v32[1];
  *v32 = sub_29D6C2FD0;
  v32[1] = v25;
  sub_29D694784(v33, v34);
  v28(v74, 0);
  v35 = swift_allocObject();
  *(v35 + 16) = v22;
  *(v35 + 24) = v27;
  v36 = v22;
  v37 = v27;
  v38 = sub_29D938D08();
  v40 = (v39 + v31[5]);
  v41 = *v40;
  v42 = v40[1];
  *v40 = sub_29D6C2FD8;
  v40[1] = v35;
  sub_29D694784(v41, v42);
  v38(v74, 0);
  v43 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v12;
  *(v44 + 24) = v43;

  v45 = sub_29D938D08();
  v47 = (v46 + v31[6]);
  v48 = *v47;
  v49 = v47[1];
  *v47 = sub_29D6C2FE0;
  v47[1] = v44;
  sub_29D694784(v48, v49);
  v45(v74, 0);

  v50 = swift_allocObject();
  *(v50 + 16) = v36;
  *(v50 + 24) = 3;
  *(v50 + 32) = v37;
  v51 = v36;
  v52 = v37;
  v53 = sub_29D938D08();
  v55 = (v54 + v31[7]);
  v56 = *v55;
  v57 = v55[1];
  *v55 = sub_29D6C2FE8;
  v55[1] = v50;
  sub_29D694784(v56, v57);
  v53(v74, 0);
  v58 = swift_allocObject();
  *(v58 + 16) = v52;
  v59 = v52;
  v60 = sub_29D938D08();
  v62 = (v61 + v31[9]);
  v63 = *v62;
  v64 = v62[1];
  *v62 = sub_29D6C2FF8;
  v62[1] = v58;
  sub_29D694784(v63, v64);
  v60(v74, 0);
  v65 = swift_allocObject();
  *(v65 + 16) = v59;
  v66 = v59;
  v67 = sub_29D938D08();
  v69 = (v68 + v31[10]);
  v70 = *v69;
  v71 = v69[1];
  *v69 = sub_29D6C3000;
  v69[1] = v65;
  sub_29D694784(v70, v71);
  v67(v74, 0);

  v72 = [a4 navigationController];
  if (v72)
  {
    v73 = v72;
    [v72 pushViewController:v66 animated:1];
  }
}

uint64_t sub_29D6C1F10(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_29D6C1F54(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_29D6C1FE0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29D939D68();
    v6 = a4;
    v7 = sub_29D939D28();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for BPJNotificationSettingsDisclosureCellViewController(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v7, a4);

  return v9;
}

id sub_29D6C2084(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for BPJNotificationSettingsDisclosureCellViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D6C2100()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BPJNotificationSettingsDisclosureCellViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6C2174(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29D6C226C;

  return v6(a1);
}

uint64_t sub_29D6C226C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_29D6C2364(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_29D935E88();
  v6 = sub_29D6C2430(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_29D694294(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29D69417C(v11);
  return v7;
}

unint64_t sub_29D6C2430(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_29D6C253C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_29D93AA98();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_29D6C253C(uint64_t a1, unint64_t a2)
{
  v3 = sub_29D6C2588(a1, a2);
  sub_29D6C26B8(&unk_2A243CD28);
  return v3;
}

void *sub_29D6C2588(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29D6C27A4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_29D93AA98();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_29D939E68();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29D6C27A4(v10, 0);
        result = sub_29D93AA08();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_29D6C26B8(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_29D6C281C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_29D6C27A4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D6AA3B4(0, &qword_2A1A24868, MEMORY[0x29EDCA018]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29D6C281C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D6AA3B4(0, &qword_2A1A24868, MEMORY[0x29EDCA018]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

uint64_t sub_29D6C2914()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D9403F0;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  *(inited + 48) = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D6C2A20()
{
  v0 = sub_29D933A58();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9341B8();
  v6 = sub_29D933FA8();

  if (v6)
  {
    v7 = [v6 identifier];

    sub_29D933A38();
    v8 = sub_29D933A18();
    v10 = v9;
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v10 = 0xE800000000000000;
    v8 = 0x636974736F6E6761;
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD000000000000031, 0x800000029D959470);
  MEMORY[0x29ED6A240](v8, v10);

  return v12[0];
}

void sub_29D6C2BA8(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_29D936738();
  v3 = v16;
  if (v16)
  {
    v4 = sub_29D693E2C(aBlock, v16);
    v5 = *(v3 - 1);
    MEMORY[0x2A1C7C4A8](v4, v4);
    v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_29D936588();
    (*(v5 + 8))(v7, v3);
    sub_29D69417C(aBlock);
    v9 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v8;
    v10[4] = a1;
    v10[5] = ObjectType;
    v17 = sub_29D6C2DCC;
    v18 = v10;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F54;
    v16 = &unk_2A2440E58;
    v11 = _Block_copy(aBlock);
    v12 = v9;
    v13 = v8;
    v14 = a1;

    [v12 fetchActiveJournalWithCompletion_];
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D6C2DD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D6C2E30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D6C2EAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D6C2F10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29D6AC948;

  return sub_29D7C4DB0(a1, v4, v5, v7, v6);
}

uint64_t sub_29D6C3008(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D6C383C;

  return sub_29D6C2174(a1, v4);
}

uint64_t sub_29D6C30C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D6AC948;

  return sub_29D6C2174(a1, v4);
}

void sub_29D6C3178(uint64_t a1)
{
  if (!qword_2A1A24A18)
  {
    sub_29D6C320C(255);
    sub_29D6C2E30(&qword_2A1A24AE0, sub_29D6C320C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D938388();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24A18);
    }
  }
}

void sub_29D6C320C(uint64_t a1)
{
  if (!qword_2A1A24AD8)
  {
    sub_29D6B7370(255, &qword_2A1A25740, MEMORY[0x29EDC3C90]);
    v1 = sub_29D938238();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24AD8);
    }
  }
}

uint64_t sub_29D6C3284@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_29D6BF4C0(v4, a1);
}

void sub_29D6C3320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v6 = sub_29D9371A8();
    v7 = a3(a1, v6, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D6C3390(uint64_t a1)
{
  if (!qword_2A1A224D8)
  {
    v1 = MEMORY[0x29EDB89F8];
    sub_29D6C3320(255, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
    sub_29D6C3444(&qword_2A1A22420, &qword_2A1A22410, v1, MEMORY[0x29EDB8A00]);
    v2 = sub_29D938128();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A224D8);
    }
  }
}

uint64_t sub_29D6C3444(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D6C3320(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D6C3488(uint64_t a1)
{
  if (!qword_2A1A22610)
  {
    v1 = MEMORY[0x29EDB89F8];
    sub_29D6C3320(255, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
    sub_29D6B7370(255, &qword_2A1A25740, MEMORY[0x29EDC3C90]);
    sub_29D6C3444(&qword_2A1A22420, &qword_2A1A22410, v1, MEMORY[0x29EDB8A00]);
    v2 = sub_29D9380F8();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A22610);
    }
  }
}

uint64_t sub_29D6C3564()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D6C35F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_29D6BFB18(v4, a1);
}

uint64_t sub_29D6C370C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6C3774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D6C37D4(uint64_t a1, uint64_t a2)
{
  sub_29D6C36D8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6C3844()
{
  sub_29D6AA400();
  result = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  qword_2A17B1B68 = result;
  return result;
}

void sub_29D6C3888()
{
  v6 = sub_29D939D68();
  v7 = v0;
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  if (qword_2A17B0BD0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B1B68;
  v2 = [v1 identifier];

  v3 = sub_29D939D68();
  v5 = v4;

  MEMORY[0x29ED6A240](v3, v5);

  qword_2A17B1B70 = v6;
  *algn_2A17B1B78 = v7;
}

uint64_t sub_29D6C3970(uint64_t a1)
{
  if (!BYTE1(a1))
  {
    if (a1 == 10)
    {
      if (qword_2A17B0BD8 != -1)
      {
        swift_once();
      }

      v11 = qword_2A17B1B70;
      sub_29D935E88();
      v2 = 0x697461637564452ELL;
      v1 = 0xEA00000000006E6FLL;
      goto LABEL_14;
    }

    v8 = a1;
    if (qword_2A17B0BD8 != -1)
    {
      swift_once();
    }

    v11 = qword_2A17B1B70;
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
    v6 = sub_29D6C3CF8(v8);
LABEL_36:
    MEMORY[0x29ED6A240](v6, v9);

    return v11;
  }

  if (BYTE1(a1) != 1)
  {
    sub_29D93AA18();
    if (qword_2A17B0BD8 != -1)
    {
      swift_once();
    }

    v3 = qword_2A17B1B70;
    sub_29D935E88();

    v11 = v3;
    v2 = 0xD000000000000022;
    v1 = 0x800000029D9594E0;
    goto LABEL_14;
  }

  if (a1 != 5)
  {
    v4 = a1;
    sub_29D93AA18();
    if (qword_2A17B0BD8 != -1)
    {
      swift_once();
    }

    v5 = qword_2A17B1B70;
    sub_29D935E88();

    v11 = v5;
    MEMORY[0x29ED6A240](0x6361466566694C2ELL, 0xED00002E73726F74);
    if (v4 <= 1u)
    {
      if (v4)
      {
        v6 = 0x7065656C53;
      }

      else
      {
        v6 = 0x6573696372657845;
      }

      if (v4)
      {
        v7 = 0xE500000000000000;
      }

      else
      {
        v7 = 0xEF736574756E694DLL;
      }
    }

    else if (v4 == 2)
    {
      v7 = 0xE600000000000000;
      v6 = 0x746867696557;
    }

    else
    {
      if (v4 == 3)
      {
        v6 = 0xD000000000000012;
      }

      else
      {
        v6 = 0x4D6C7566646E694DLL;
      }

      if (v4 == 3)
      {
        v7 = 0x800000029D959510;
      }

      else
      {
        v7 = 0xEE00736574756E69;
      }
    }

    v9 = v7;
    goto LABEL_36;
  }

  if (qword_2A17B0BD8 != -1)
  {
    swift_once();
  }

  v11 = qword_2A17B1B70;
  sub_29D935E88();
  v1 = 0xEC00000073726F74;
  v2 = 0x6361466566694C2ELL;
LABEL_14:
  MEMORY[0x29ED6A240](v2, v1);
  return v11;
}

unint64_t sub_29D6C3CF8(unsigned __int8 a1)
{
  result = 0x746361466566694CLL;
  if (a1 <= 6u)
  {
    if (a1 == 5)
    {
      return result;
    }

    if (a1 == 6)
    {
      return 0xD000000000000017;
    }
  }

  else
  {
    switch(a1)
    {
      case 7u:
        return 0xD000000000000019;
      case 8u:
        return 0xD000000000000010;
      case 9u:
        return 0xD000000000000013;
    }
  }

  v13[4] = v1;
  v13[5] = v2;
  strcpy(v13, "LifeFactors.");
  BYTE5(v13[1]) = 0;
  HIWORD(v13[1]) = -5120;
  v5 = 0xE500000000000000;
  v6 = 0x7065656C53;
  v7 = 0xE600000000000000;
  v8 = 0x746867696557;
  v9 = 0x800000029D959510;
  v10 = 0xD000000000000012;
  if (a1 != 3)
  {
    v10 = 0x4D6C7566646E694DLL;
    v9 = 0xEE00736574756E69;
  }

  if (a1 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (!a1)
  {
    v6 = 0x6573696372657845;
    v5 = 0xEF736574756E694DLL;
  }

  if (a1 <= 1u)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (a1 <= 1u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  MEMORY[0x29ED6A240](v11, v12);

  return v13[0];
}

_OWORD *sub_29D6C3ED0(uint64_t a1)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v7[2] = v1[2];
  v3 = objc_allocWithZone(type metadata accessor for CenteredLabelWithSpinnerContentView());
  v8 = v7[0];
  sub_29D6C4F64(&v8, &v6);
  v4 = sub_29D6C4110(v7);
  sub_29D6C4FEC();
  return v4;
}

uint64_t sub_29D6C3F3C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  v3 = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  return sub_29D935E88();
}

uint64_t sub_29D6C3F50(float64x2_t *a1, uint64_t a2)
{
  v3 = a1->f64[1];
  v4 = *(a2 + 8);
  v5 = a1[1];
  v6 = a1[2];
  v8 = *(a2 + 16);
  v7 = *(a2 + 32);
  if (v3 == 0.0)
  {
    if (!v4)
    {
      return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v5, v8), vceqq_f64(v6, v7)))) & 1;
    }
  }

  else if (v4)
  {
    if (*&a1->f64[0] == *a2 && *&v3 == v4)
    {
      return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v5, v8), vceqq_f64(v6, v7)))) & 1;
    }

    v15 = a1[2];
    v13 = *(a2 + 32);
    v14 = a1[1];
    v12 = *(a2 + 16);
    v10 = sub_29D93AD78();
    v8 = v12;
    v7 = v13;
    v5 = v14;
    v6 = v15;
    if (v10)
    {
      return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v5, v8), vceqq_f64(v6, v7)))) & 1;
    }
  }

  return 0;
}

uint64_t sub_29D6C3FEC(void *a1)
{
  sub_29D6945AC(a1, v21);
  sub_29D6C5090();
  if (swift_dynamicCast())
  {
    v3 = v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration;
    v4 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 8);
    v6 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 16);
    v5 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 24);
    v8 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 32);
    v7 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 40);
    if (v4)
    {
      if (!v16)
      {
        goto LABEL_23;
      }

      v9 = *v3 == v15 && v4 == v16;
      if (!v9 && (sub_29D93AD78() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v16)
    {
LABEL_23:
      *v3 = v15;
      *(v3 + 8) = v16;
      *(v3 + 16) = v17;
      *(v3 + 24) = v18;
      *(v3 + 32) = v19;
      *(v3 + 40) = v20;

      sub_29D6C4A7C(v13);
      return sub_29D69417C(a1);
    }

    if (v6 != v17 || v5 != v18 || v8 != v19 || v7 != v20)
    {
      goto LABEL_23;
    }
  }

  return sub_29D69417C(a1);
}

_OWORD *sub_29D6C4110(_OWORD *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__topConstraint] = 0;
  *&v1[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__leadingConstraint] = 0;
  *&v1[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__trailingConstraint] = 0;
  *&v1[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__bottomConstraint] = 0;
  v4 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView_label;
  v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  v6 = [objc_opt_self() secondaryLabelColor];
  [v5 setTextColor_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v7 = sub_29D93A658();
  [v5 setFont_];

  [v5 setAdjustsFontForContentSizeCategory_];
  [v5 setTextAlignment_];
  [v5 setNumberOfLines_];
  *&v2[v4] = v5;
  v8 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView_spinner;
  v9 = [objc_allocWithZone(MEMORY[0x29EDC7918]) initWithActivityIndicatorStyle_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setHidesWhenStopped_];
  [v9 startAnimating];
  *&v2[v8] = v9;
  v10 = &v2[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration];
  v11 = a1[1];
  *v10 = *a1;
  *(v10 + 1) = v11;
  *(v10 + 2) = a1[2];
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CenteredLabelWithSpinnerContentView();
  v12 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29D6C4388();
  sub_29D6C4A7C(v13);

  return v12;
}

void sub_29D6C4388()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView_label];
  [v1 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView_spinner];
  [v1 &selRef_systemMintColor];
  sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D940A00;
  v5 = [v2 topAnchor];
  v6 = [v1 &selRef_irregularHeartRhythmFooterLinkTitle];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v2 bottomAnchor];
  v9 = [v1 &selRef_name + 5];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v2 leadingAnchor];
  v12 = [v1 &selRef_initWithLoggingCategory_healthDataSource_ + 1];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v3 &selRef_initWithLoggingCategory_healthDataSource_ + 1];
  v15 = [v2 trailingAnchor];
  v16 = [v14 constraintEqualToSystemSpacingAfterAnchor:v15 multiplier:1.0];

  *(v4 + 56) = v16;
  v17 = [v3 centerYAnchor];
  v18 = [v2 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v4 + 64) = v19;
  v20 = [v3 trailingAnchor];
  v21 = [v1 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v4 + 72) = v22;
  [v0 addSubview_];
  v24 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 16];
  v23 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 24];
  v25 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 32];
  v26 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 40];
  v27 = [v1 topAnchor];
  v28 = [v0 layoutMarginsGuide];
  v29 = [v28 topAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:v24];
  v31 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__topConstraint;
  v32 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__topConstraint];
  *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__topConstraint] = v30;

  v33 = [v1 layoutMarginsGuide];
  v34 = [v33 leadingAnchor];

  v35 = [v0 leadingAnchor];
  v36 = [v34 constraintGreaterThanOrEqualToAnchor:v35 constant:v23];

  v37 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__leadingConstraint;
  v38 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__leadingConstraint];
  *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__leadingConstraint] = v36;

  v39 = [v0 layoutMarginsGuide];
  v40 = [v39 trailingAnchor];

  v41 = [v1 trailingAnchor];
  v42 = [v40 constraintGreaterThanOrEqualToAnchor:v41 constant:v26];

  v43 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__trailingConstraint;
  v44 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__trailingConstraint];
  *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__trailingConstraint] = v42;

  v45 = [v0 layoutMarginsGuide];
  v46 = [v45 bottomAnchor];

  v47 = [v1 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:v25];

  v49 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__bottomConstraint;
  v50 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__bottomConstraint];
  *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__bottomConstraint] = v48;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940A10;
  v52 = *&v0[v31];
  if (!v52)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(inited + 32) = v52;
  v53 = *&v0[v37];
  if (!v53)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(inited + 40) = v53;
  v54 = *&v0[v43];
  if (!v54)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(inited + 48) = v54;
  v55 = *&v0[v49];
  if (v55)
  {
    *(inited + 56) = v55;
    v56 = inited;
    v57 = v52;
    v58 = v53;
    v59 = v54;
    v60 = v55;
    v61 = [v0 centerXAnchor];
    v62 = [v1 centerXAnchor];
    v63 = [v61 constraintEqualToAnchor_];

    *(v56 + 64) = v63;
    v64 = objc_opt_self();
    sub_29D88BCBC(v56);
    sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
    v65 = sub_29D939F18();

    [v64 activateConstraints_];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_29D6C4A7C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView_label);
  v3 = (v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration);
  if (*(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 8))
  {
    sub_29D935E88();
    v4 = sub_29D939D28();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText_];

  result = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__topConstraint);
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[3];
  [result setConstant_];
  result = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__leadingConstraint);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [result setConstant_];
  result = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__trailingConstraint);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [result setConstant_];
  result = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__bottomConstraint);
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  return [result setConstant_];
}

id sub_29D6C4BE0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CenteredLabelWithSpinnerContentView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D6C4CD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_29D6C4D34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_29D6C4DA4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration;
  v5 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration);
  v4 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 8);
  a1[3] = &type metadata for CenteredLabelWithSpinnerContentConfiguration;
  a1[4] = sub_29D69F2A8();
  v6 = swift_allocObject();
  *a1 = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = *(v3 + 32);
  *(v6 + 32) = *(v3 + 16);
  *(v6 + 48) = v7;

  return sub_29D935E88();
}

void (*sub_29D6C4E2C(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[10] = v1;
  v5 = v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration;
  v7 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration);
  v6 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 8);
  v8 = sub_29D69F2A8();
  v9 = swift_allocObject();
  v10 = *(v5 + 16);
  v11 = *(v5 + 32);
  v4[3] = &type metadata for CenteredLabelWithSpinnerContentConfiguration;
  v4[4] = v8;
  *v4 = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  *(v9 + 32) = v10;
  *(v9 + 48) = v11;
  sub_29D935E88();
  return sub_29D6C4EF8;
}

void sub_29D6C4EF8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_29D6945AC(*a1, (v2 + 5));
    sub_29D6C3FEC(v2 + 5);
    sub_29D69417C(v2);
  }

  else
  {
    sub_29D6C3FEC(*a1);
  }

  free(v2);
}

uint64_t sub_29D6C4F64(uint64_t a1, uint64_t a2)
{
  sub_29D6C5040(0, &qword_2A1A22290, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D6C4FEC()
{
  result = qword_2A17B1BB8;
  if (!qword_2A17B1BB8)
  {
    type metadata accessor for CenteredLabelWithSpinnerContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1BB8);
  }

  return result;
}

void sub_29D6C5040(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D6C5090()
{
  result = qword_2A17B1BC0;
  if (!qword_2A17B1BC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1BC0);
  }

  return result;
}

void sub_29D6C50F4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__topConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__leadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__trailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__bottomConstraint) = 0;
  v2 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView_label;
  v3 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  v4 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v5 = sub_29D93A658();
  [v3 setFont_];

  [v3 setAdjustsFontForContentSizeCategory_];
  [v3 setTextAlignment_];
  [v3 setNumberOfLines_];
  *(v1 + v2) = v3;
  v6 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView_spinner;
  v7 = [objc_allocWithZone(MEMORY[0x29EDC7918]) initWithActivityIndicatorStyle_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setHidesWhenStopped_];
  [v7 startAnimating];
  *(v1 + v6) = v7;
  sub_29D93AB28();
  __break(1u);
}

uint64_t type metadata accessor for HypertensionNotificationsPromotionTileActionHandler(uint64_t a1)
{
  result = qword_2A17B1BC8;
  if (!qword_2A17B1BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6C539C()
{
  v0 = sub_29D936638();
  v24 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D936608();
  v5 = *(v1 + 8);
  v23[1] = v1 + 8;
  v25 = v5;
  v5(v4, v0);
  sub_29D693E2C(v28, v28[3]);
  v6 = sub_29D936588();
  v7 = type metadata accessor for HypertensionNotificationsOnboardingViewController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = 0;
  v8[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_navigateToDetailRoomUponOnboardingCompletion] = 1;
  v9 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F0] healthStore:v6];
  type metadata accessor for HypertensionNotificationsOnboardingFlowManager();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  sub_29D933F18();

  v11 = sub_29D933F08();
  v12 = sub_29D6C9F00(v10, v11);
  type metadata accessor for HypertensionNotificationsOnboardingViewControllerFactory();
  v13 = swift_allocObject();
  *(v13 + 16) = 1;
  v27.receiver = v8;
  v27.super_class = v7;
  v14 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
  [v14 setModalPresentationStyle_];
  v15 = type metadata accessor for HypertensionNotificationsOnboardingCoordinator();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_rootViewController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_2A244D708;
  swift_unknownObjectWeakAssign();
  *&v16[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_model] = v12;
  *&v16[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_factory] = v13;
  v17 = v12;

  v18 = HKLogHeartRateCategory();
  v19 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v18 healthDataSource:v6];

  *&v16[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_eventSubmissionManager] = v19;
  v16[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_provenance] = 0;
  v26.receiver = v16;
  v26.super_class = v15;
  v20 = objc_msgSendSuper2(&v26, sel_init);
  sub_29D8E53B0();
  sub_29D8E5270(0, 0, 5);

  v21 = *&v14[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator];
  *&v14[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = v20;

  sub_29D69417C(v28);
  sub_29D936B88();
  v22 = sub_29D936618();
  v25(v4, v24);
  [v22 presentViewController:v14 animated:1 completion:0];
}

uint64_t sub_29D6C5734(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29D6C5834()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HypertensionNotificationsPromotionTileActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6C5878()
{
  swift_getObjectType();
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = sub_29D937878();
  v6 = sub_29D93A2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446466;
    v9 = sub_29D93AF08();
    v11 = sub_29D6C2364(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_29D6C2364(0x6944706154646964, 0xEF29287373696D73, &v15);
    _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s.%{public}s]: Handling dismissal", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  sub_29D7FFF04();
  sub_29D9339E8();
  v12 = sub_29D9339F8();
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  sub_29D7FFB50(v3);
}

uint64_t sub_29D6C5B50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D6C5BF8(void *a1)
{
  v2 = MEMORY[0x29EDC9E88];
  sub_29D6CA804(0, &qword_2A17B1D18, sub_29D6CA454, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.OpenURLCodingKeys, MEMORY[0x29EDC9E88]);
  v99 = *(v3 - 8);
  v100 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v96 = &v72 - v5;
  v6 = sub_29D9336F8();
  v97 = *(v6 - 8);
  v98 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v95 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CA804(0, &qword_2A17B1D20, sub_29D6CA4A8, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.DeepLinkToHealthSettingsCodingKeys, v2);
  v93 = *(v9 - 8);
  v94 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v92 = &v72 - v11;
  sub_29D6CA804(0, &qword_2A17B1D28, sub_29D6CA4FC, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.DeepLinkToWatchPasscodeSettingsCodingKeys, v2);
  v90 = *(v12 - 8);
  v91 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v89 = &v72 - v14;
  sub_29D6CA804(0, &qword_2A17B1D30, sub_29D6CA550, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.DeepLinkToWatchPrivacySettingsCodingKeys, v2);
  v87 = *(v15 - 8);
  v88 = v15;
  MEMORY[0x2A1C7C4A8](v15, v16);
  v86 = &v72 - v17;
  sub_29D6CA804(0, &qword_2A17B1D38, sub_29D6CA5A4, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PresentHealthDetailsCodingKeys, v2);
  v85 = v18;
  v84 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v82 = &v72 - v20;
  sub_29D6CA804(0, &qword_2A17B1D40, sub_29D6CA5F8, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PresentOnboardingCodingKeys, v2);
  v80 = v21;
  v78 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v77 = &v72 - v23;
  sub_29D6CA804(0, &qword_2A17B1D48, sub_29D6CA64C, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PresentEnabledFeatureSettingsCodingKeys, v2);
  v83 = v24;
  v81 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v25);
  v79 = &v72 - v26;
  sub_29D6CA804(0, &qword_2A17B1D50, sub_29D6CA6A0, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PushFeatureSettingsCodingKeys, v2);
  v76 = v27;
  v75 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v74 = &v72 - v29;
  v30 = sub_29D9346E8();
  v101 = *(v30 - 8);
  v102 = v30;
  v32 = MEMORY[0x2A1C7C4A8](v30, v31);
  v73 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32, v34);
  v36 = &v72 - v35;
  v37 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  MEMORY[0x2A1C7C4A8](v37, v38);
  v40 = &v72 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CA804(0, &qword_2A17B1D58, sub_29D6CA6F4, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.CodingKeys, v2);
  v42 = v41;
  v105 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41, v43);
  v45 = &v72 - v44;
  sub_29D693E2C(a1, a1[3]);
  sub_29D6CA6F4();
  v104 = v45;
  sub_29D93AED8();
  sub_29D6C9E9C(v103, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v53 = v104;
      if (EnumCaseMultiPayload == 6)
      {
        v111 = 5;
        sub_29D6CA4FC();
        v60 = v89;
        sub_29D93ACA8();
        v62 = v90;
        v61 = v91;
      }

      else
      {
        v112 = 6;
        sub_29D6CA4A8();
        v60 = v92;
        sub_29D93ACA8();
        v62 = v93;
        v61 = v94;
      }
    }

    else
    {
      v53 = v104;
      if (EnumCaseMultiPayload == 4)
      {
        v109 = 3;
        sub_29D6CA5A4();
        v54 = v82;
        sub_29D93ACA8();
        (*(v84 + 8))(v54, v85);
LABEL_19:
        v66 = *(v105 + 8);
        v67 = v53;
        v70 = v42;
        return v66(v67, v70);
      }

      v110 = 4;
      sub_29D6CA550();
      v60 = v86;
      sub_29D93ACA8();
      v62 = v87;
      v61 = v88;
    }

    (*(v62 + 8))(v60, v61);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v47 = v42;
    if (EnumCaseMultiPayload != 2)
    {
      v108 = 2;
      sub_29D6CA5F8();
      v68 = v77;
      v69 = v104;
      sub_29D93ACA8();
      (*(v78 + 8))(v68, v80);
      v66 = *(v105 + 8);
      v67 = v69;
      goto LABEL_16;
    }

    v56 = v97;
    v55 = v98;
    v57 = v95;
    (*(v97 + 32))(v95, v40, v98);
    v113 = 7;
    sub_29D6CA454();
    v58 = v96;
    v51 = v104;
    sub_29D93ACA8();
    sub_29D6C9D98(&qword_2A17B1D60, MEMORY[0x29EDB9B18], MEMORY[0x29EDB9B20]);
    v59 = v100;
    sub_29D93AD18();
    (*(v99 + 8))(v58, v59);
    (*(v56 + 8))(v57, v55);
  }

  else
  {
    v47 = v42;
    v49 = v101;
    v48 = v102;
    if (EnumCaseMultiPayload)
    {
      v63 = v73;
      (*(v101 + 32))(v73, v40, v102);
      v107 = 1;
      sub_29D6CA64C();
      v64 = v79;
      v51 = v104;
      sub_29D93ACA8();
      sub_29D6C9D98(&qword_2A17B1D68, MEMORY[0x29EDC1770], MEMORY[0x29EDC1778]);
      v65 = v83;
      sub_29D93AD18();
      (*(v81 + 8))(v64, v65);
      (*(v49 + 8))(v63, v48);
    }

    else
    {
      (*(v101 + 32))(v36, v40, v102);
      v106 = 0;
      sub_29D6CA6A0();
      v50 = v74;
      v51 = v104;
      sub_29D93ACA8();
      sub_29D6C9D98(&qword_2A17B1D68, MEMORY[0x29EDC1770], MEMORY[0x29EDC1778]);
      v52 = v76;
      sub_29D93AD18();
      (*(v75 + 8))(v50, v52);
      (*(v49 + 8))(v36, v48);
    }
  }

  v66 = *(v105 + 8);
  v67 = v51;
LABEL_16:
  v70 = v47;
  return v66(v67, v70);
}

uint64_t sub_29D6C6898@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v3 = MEMORY[0x29EDC9E80];
  sub_29D6CA804(0, &qword_2A17B1C68, sub_29D6CA454, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.OpenURLCodingKeys, MEMORY[0x29EDC9E80]);
  v5 = *(v4 - 8);
  v104 = v4;
  v105 = v5;
  MEMORY[0x2A1C7C4A8](v4, v6);
  v108 = &v85 - v7;
  sub_29D6CA804(0, &qword_2A17B1C78, sub_29D6CA4A8, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.DeepLinkToHealthSettingsCodingKeys, v3);
  v103 = v8;
  v100 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v115 = &v85 - v10;
  sub_29D6CA804(0, &qword_2A17B1C88, sub_29D6CA4FC, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.DeepLinkToWatchPasscodeSettingsCodingKeys, v3);
  v102 = v11;
  v101 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v114 = &v85 - v13;
  sub_29D6CA804(0, &qword_2A17B1C98, sub_29D6CA550, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.DeepLinkToWatchPrivacySettingsCodingKeys, v3);
  v99 = v14;
  v98 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v113 = &v85 - v16;
  sub_29D6CA804(0, &qword_2A17B1CA8, sub_29D6CA5A4, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PresentHealthDetailsCodingKeys, v3);
  v97 = v17;
  v96 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v107 = &v85 - v19;
  sub_29D6CA804(0, &qword_2A17B1CB8, sub_29D6CA5F8, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PresentOnboardingCodingKeys, v3);
  v94 = v20;
  v93 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v21);
  v106 = &v85 - v22;
  sub_29D6CA804(0, &qword_2A17B1CC8, sub_29D6CA64C, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PresentEnabledFeatureSettingsCodingKeys, v3);
  v92 = v23;
  v95 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23, v24);
  v112 = &v85 - v25;
  sub_29D6CA804(0, &qword_2A17B1CD8, sub_29D6CA6A0, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PushFeatureSettingsCodingKeys, v3);
  v90 = v26;
  v91 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26, v27);
  v110 = &v85 - v28;
  sub_29D6CA804(0, &qword_2A17B1CE8, sub_29D6CA6F4, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.CodingKeys, v3);
  v111 = v29;
  v109 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29, v30);
  v32 = &v85 - v31;
  v33 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  v35 = MEMORY[0x2A1C7C4A8](v33, v34);
  v37 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x2A1C7C4A8](v35, v38);
  v41 = &v85 - v40;
  v43 = MEMORY[0x2A1C7C4A8](v39, v42);
  v45 = &v85 - v44;
  MEMORY[0x2A1C7C4A8](v43, v46);
  v48 = &v85 - v47;
  v49 = a1[3];
  v119 = a1;
  sub_29D693E2C(a1, v49);
  sub_29D6CA6F4();
  v117 = v32;
  v50 = v118;
  sub_29D93AEC8();
  if (!v50)
  {
    v85 = v45;
    v86 = v41;
    v87 = v37;
    v51 = v110;
    v118 = 0;
    v52 = v112;
    v53 = v113;
    v54 = v114;
    v55 = v115;
    v89 = v33;
    v88 = v48;
    v56 = v109;
    v57 = v116;
    v58 = v111;
    v59 = sub_29D93AC98();
    v60 = (2 * *(v59 + 16)) | 1;
    v120 = v59;
    v121 = v59 + 32;
    v122 = 0;
    v123 = v60;
    v61 = sub_29D872828();
    if (v61 == 8 || v122 != v123 >> 1)
    {
      v65 = sub_29D93AA78();
      swift_allocError();
      v67 = v66;
      sub_29D6CA748(0);
      *v67 = v89;
      v68 = v117;
      sub_29D93AC18();
      sub_29D93AA58();
      (*(*(v65 - 8) + 104))(v67, *MEMORY[0x29EDC9DB8], v65);
      swift_willThrow();
      (*(v56 + 8))(v68, v58);
LABEL_10:
      sub_29D936978();
      return sub_29D69417C(v119);
    }

    if (v61 > 3u)
    {
      v70 = v57;
      if (v61 > 5u)
      {
        if (v61 == 6)
        {
          v124 = 6;
          sub_29D6CA4A8();
          v74 = v118;
          sub_29D93AC08();
          if (!v74)
          {
            (*(v100 + 8))(v55, v103);
            (*(v56 + 8))(v117, v58);
            sub_29D936978();
            v72 = v88;
            swift_storeEnumTagMultiPayload();
            goto LABEL_32;
          }
        }

        else
        {
          v124 = 7;
          sub_29D6CA454();
          v80 = v118;
          sub_29D93AC08();
          if (!v80)
          {
            sub_29D9336F8();
            sub_29D6C9D98(&qword_2A17B1D08, MEMORY[0x29EDB9B18], MEMORY[0x29EDB9B38]);
            v81 = v87;
            v82 = v104;
            v83 = v108;
            sub_29D93AC88();
            (*(v105 + 8))(v83, v82);
            (*(v56 + 8))(v117, v58);
            sub_29D936978();
            swift_storeEnumTagMultiPayload();
            v72 = v88;
            sub_29D6CA178(v81, v88, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction);
            goto LABEL_32;
          }
        }
      }

      else if (v61 == 4)
      {
        v124 = 4;
        sub_29D6CA550();
        v71 = v118;
        sub_29D93AC08();
        if (!v71)
        {
          (*(v98 + 8))(v53, v99);
          (*(v56 + 8))(v117, v58);
          sub_29D936978();
          v72 = v88;
          swift_storeEnumTagMultiPayload();
LABEL_32:
          sub_29D6CA178(v72, v70, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction);
          return sub_29D69417C(v119);
        }
      }

      else
      {
        v124 = 5;
        sub_29D6CA4FC();
        v78 = v118;
        sub_29D93AC08();
        if (!v78)
        {
          (*(v101 + 8))(v54, v102);
          (*(v56 + 8))(v117, v58);
          sub_29D936978();
          v72 = v88;
          swift_storeEnumTagMultiPayload();
          goto LABEL_32;
        }
      }
    }

    else
    {
      v62 = v118;
      if (v61 <= 1u)
      {
        if (v61)
        {
          v124 = 1;
          sub_29D6CA64C();
          v75 = v52;
          sub_29D93AC08();
          if (!v62)
          {
            sub_29D9346E8();
            sub_29D6C9D98(&qword_2A17B1D10, MEMORY[0x29EDC1770], MEMORY[0x29EDC1788]);
            v76 = v86;
            v77 = v92;
            sub_29D93AC88();
            (*(v95 + 8))(v75, v77);
            (*(v56 + 8))(v117, v58);
            sub_29D936978();
            swift_storeEnumTagMultiPayload();
            v84 = v76;
            goto LABEL_31;
          }
        }

        else
        {
          v124 = 0;
          sub_29D6CA6A0();
          sub_29D93AC08();
          if (!v62)
          {
            sub_29D9346E8();
            sub_29D6C9D98(&qword_2A17B1D10, MEMORY[0x29EDC1770], MEMORY[0x29EDC1788]);
            v63 = v85;
            v64 = v90;
            sub_29D93AC88();
            (*(v91 + 8))(v51, v64);
            (*(v56 + 8))(v117, v58);
            sub_29D936978();
            swift_storeEnumTagMultiPayload();
            v84 = v63;
LABEL_31:
            v72 = v88;
            sub_29D6CA178(v84, v88, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction);
            v70 = v57;
            goto LABEL_32;
          }
        }

        goto LABEL_30;
      }

      if (v61 == 2)
      {
        v124 = 2;
        sub_29D6CA5F8();
        v73 = v106;
        sub_29D93AC08();
        if (!v62)
        {
          v70 = v57;
          (*(v93 + 8))(v73, v94);
          (*(v56 + 8))(v117, v58);
          sub_29D936978();
          v72 = v88;
          swift_storeEnumTagMultiPayload();
          goto LABEL_32;
        }
      }

      else
      {
        v124 = 3;
        sub_29D6CA5A4();
        v79 = v107;
        sub_29D93AC08();
        if (!v62)
        {
          v70 = v57;
          (*(v96 + 8))(v79, v97);
          (*(v56 + 8))(v117, v58);
          sub_29D936978();
          v72 = v88;
          swift_storeEnumTagMultiPayload();
          goto LABEL_32;
        }
      }
    }

LABEL_30:
    (*(v56 + 8))(v117, v58);
    goto LABEL_10;
  }

  return sub_29D69417C(v119);
}

unint64_t sub_29D6C789C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x4C52556E65706FLL;
    if (v1 == 6)
    {
      v5 = 0xD000000000000018;
    }

    v6 = 0xD00000000000001FLL;
    if (v1 == 4)
    {
      v6 = 0xD00000000000001ELL;
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
    v2 = 0xD000000000000014;
    if (v1 == 2)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD00000000000001DLL;
    if (!*v0)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_29D6C79A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D6CB8B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D6C79D8(uint64_t a1)
{
  v2 = sub_29D6CA6F4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7A14(uint64_t a1)
{
  v2 = sub_29D6CA6F4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7A5C(uint64_t a1)
{
  v2 = sub_29D6CA4A8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7A98(uint64_t a1)
{
  v2 = sub_29D6CA4A8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7AD4(uint64_t a1)
{
  v2 = sub_29D6CA4FC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7B10(uint64_t a1)
{
  v2 = sub_29D6CA4FC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7B4C(uint64_t a1)
{
  v2 = sub_29D6CA550();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7B88(uint64_t a1)
{
  v2 = sub_29D6CA550();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7BD8(uint64_t a1)
{
  v2 = sub_29D6CA454();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7C14(uint64_t a1)
{
  v2 = sub_29D6CA454();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7C50(uint64_t a1)
{
  v2 = sub_29D6CA64C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7C8C(uint64_t a1)
{
  v2 = sub_29D6CA64C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7CC8(uint64_t a1)
{
  v2 = sub_29D6CA5A4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7D04(uint64_t a1)
{
  v2 = sub_29D6CA5A4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7D40(uint64_t a1)
{
  v2 = sub_29D6CA5F8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7D7C(uint64_t a1)
{
  v2 = sub_29D6CA5F8();

  return MEMORY[0x2A1C73280](a1, v2);
}

void sub_29D6C7DB8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_29D6C7E38(uint64_t a1)
{
  v2 = sub_29D6CA6A0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7E74(uint64_t a1)
{
  v2 = sub_29D6CA6A0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7EE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CA804(0, &qword_2A17B1C08, sub_29D6CA124, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.CodingKeys, MEMORY[0x29EDC9E80]);
  v7 = v6;
  v21 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData(0);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C(a1, a1[3]);
  sub_29D6CA124();
  v15 = v23;
  sub_29D93AEC8();
  if (!v15)
  {
    v16 = v21;
    sub_29D6C9D98(&qword_2A17B1C18, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction, &unk_29D940E74);
    v17 = v22;
    sub_29D93AC88();
    (*(v16 + 8))(v10, v7);
    sub_29D6CA178(v17, v14, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction);
    sub_29D6CA178(v14, v20, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData);
  }

  return sub_29D69417C(a1);
}

uint64_t sub_29D6C819C()
{
  sub_29D93AE58();
  MEMORY[0x29ED6B260](0);
  return sub_29D93AE98();
}

uint64_t sub_29D6C81E0(uint64_t a1)
{
  sub_29D93AE58();
  MEMORY[0x29ED6B260](0);
  return sub_29D93AE98();
}

void sub_29D6C823C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F69746341706174 && a2 == 0xE90000000000006ELL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_29D6C82CC(uint64_t a1)
{
  v2 = sub_29D6CA124();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C8308(uint64_t a1)
{
  v2 = sub_29D6CA124();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C835C(void *a1)
{
  sub_29D6CA804(0, &qword_2A17B1C20, sub_29D6CA124, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v9 - v6;
  sub_29D693E2C(a1, a1[3]);
  sub_29D6CA124();
  sub_29D93AED8();
  type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  sub_29D6C9D98(&qword_2A17B1C28, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction, &unk_29D940E4C);
  sub_29D93AD18();
  return (*(v4 + 8))(v7, v3);
}

void sub_29D6C8508()
{
  ObjectType = swift_getObjectType();
  v153 = sub_29D9336F8();
  v152 = *(v153 - 8);
  MEMORY[0x2A1C7C4A8](v153, v1);
  v151 = &v148 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_29D9346B8();
  v161 = *(v162 - 8);
  MEMORY[0x2A1C7C4A8](v162, v3);
  v160 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69C75C();
  v156 = v5;
  v155 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v154 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_29D9346E8();
  v165 = *(v167 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v167, v8);
  v157 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v163 = &v148 - v13;
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v166 = &v148 - v16;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v159 = &v148 - v18;
  v170 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  MEMORY[0x2A1C7C4A8](v170, v19);
  v169 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29D934C58();
  v22 = *(v21 - 8);
  v171 = v21;
  v172 = v22;
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v158 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v164 = &v148 - v28;
  MEMORY[0x2A1C7C4A8](v27, v29);
  v173 = &v148 - v30;
  v31 = sub_29D936638();
  v32 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v35 = &v148 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CA0D0(0, &qword_2A17B1BE0, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData);
  MEMORY[0x2A1C7C4A8](v36 - 8, v37);
  v39 = &v148 - v38;
  v40 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData(0);
  v41 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40, v42);
  v44 = &v148 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D6C9D98(&qword_2A17B1BE8, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData, &unk_29D940C7C);
  sub_29D6C9D98(&qword_2A17B1BF0, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData, &unk_29D940C54);
  sub_29D936628();
  v47 = *(v32 + 8);
  v45 = v32 + 8;
  v46 = v47;
  v47(v35, v31);
  if ((*(v41 + 48))(v39, 1, v40) != 1)
  {
    sub_29D6CA178(v39, v44, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData);
    sub_29D936B88();
    v56 = sub_29D936618();
    v46(v35, v31);
    v57 = v0;
    sub_29D936B88();
    v58 = v173;
    sub_29D9347B8();
    v46(v35, v31);
    v59 = v169;
    sub_29D6C9E9C(v44, v169);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v61 = v44;
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v100 = MEMORY[0x29EDC1728];
        }

        else
        {
          v100 = MEMORY[0x29EDC1718];
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 4)
        {
          sub_29D936B88();
          sub_29D936608();
          v46(v35, v31);
          v94 = v58;
          sub_29D693E2C(v176, v177);
          v95 = sub_29D936588();
          sub_29D73ADB0(v56, v95);

          (*(v172 + 8))(v94, v171);
          sub_29D6CAE24(v44, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData);
          sub_29D69417C(v176);
          return;
        }

        v100 = MEMORY[0x29EDC1720];
      }

      v97 = v161;
      v98 = v160;
      v99 = v162;
      (*(v161 + 104))(v160, *v100, v162);
      sub_29D9346A8();
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        v170 = v56;
        v162 = v44;
        v150 = v45;
        v149 = v31;
        if (EnumCaseMultiPayload)
        {
          v101 = v165;
          (*(v165 + 32))(v166, v59, v167);
          v102 = *MEMORY[0x29EDBA6F0];
          v148 = v57;
          sub_29D936B88();
          sub_29D936608();
          v46(v35, v31);
          sub_29D693E2C(v176, v177);
          v103 = sub_29D936588();
          v104 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:v102 healthStore:v103];

          sub_29D69417C(v176);
          v105 = v154;
          sub_29D93A408();
          *(swift_allocObject() + 16) = ObjectType;
          sub_29D6CA084();
          v169 = v104;
          sub_29D93A608();

          (*(v155 + 8))(v105, v156);
          ObjectType = *(v101 + 16);
          v106 = v163;
          v107 = v167;
          ObjectType(v163, v166, v167);
          v161 = *(v172 + 16);
          v108 = v164;
          v109 = v58;
          v110 = v171;
          (v161)(v164, v109, v171);
          sub_29D936B88();
          sub_29D936608();
          v46(v35, v149);
          sub_29D693E2C(v176, v177);
          v111 = sub_29D936588();
          v112 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsViewController(0));
          v113 = v157;
          ObjectType(v157, v106, v107);
          v114 = v158;
          (v161)(v158, v108, v110);
          v115 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsSpecifierDataSource(0));
          v116 = v111;
          v117 = sub_29D7BB5B4(v113, v114, v116);
          sub_29D6C9D98(&qword_2A17B1C00, type metadata accessor for HypertensionNotificationsSettingsSpecifierDataSource, &unk_29D949960);
          v118 = v117;
          v119 = sub_29D9365D8();
          v120 = qword_2A17B0D68;
          v121 = v119;
          if (v120 != -1)
          {
            swift_once();
          }

          sub_29D9334A8();
          v122 = sub_29D939D28();

          [v121 setTitle_];

          static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243CF28);
          swift_arrayDestroy();
          v123 = sub_29D939D28();

          [v121 setAccessibilityIdentifier_];

          v124 = v171;
          v125 = *(v172 + 8);
          v125(v108, v171);
          v126 = *(v165 + 8);
          v127 = v167;
          v126(v163, v167);
          sub_29D69417C(v176);
          v128 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];

          v129 = v170;
          [v170 presentViewController:v128 animated:1 completion:0];

          v126(v166, v127);
          v125(v173, v124);
          v130 = v162;
        }

        else
        {
          v62 = v165;
          v63 = v59;
          v64 = v159;
          v65 = v167;
          (*(v165 + 32))(v159, v63, v167);
          v169 = *(v62 + 16);
          v66 = v166;
          (v169)(v166, v64, v65);
          ObjectType = *(v172 + 16);
          v67 = v164;
          v68 = v58;
          v69 = v171;
          ObjectType(v164, v68, v171);
          sub_29D936B88();
          sub_29D936608();
          v70 = v35;
          v71 = v69;
          v46(v70, v149);
          sub_29D693E2C(v176, v177);
          v72 = sub_29D936588();
          v73 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsViewController(0));
          v74 = v163;
          (v169)(v163, v66, v65);
          v75 = v158;
          v76 = v67;
          v77 = v69;
          ObjectType(v158, v76, v69);
          v78 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsSpecifierDataSource(0));
          v79 = v72;
          v80 = sub_29D7BB5B4(v74, v75, v79);
          sub_29D6C9D98(&qword_2A17B1C00, type metadata accessor for HypertensionNotificationsSettingsSpecifierDataSource, &unk_29D949960);
          v81 = v80;
          v82 = sub_29D9365D8();
          v83 = qword_2A17B0D68;
          v84 = v82;
          if (v83 != -1)
          {
            swift_once();
          }

          sub_29D9334A8();
          v85 = sub_29D939D28();

          [v84 setTitle_];

          static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243CEE8);
          swift_arrayDestroy();
          v86 = sub_29D939D28();

          [v84 setAccessibilityIdentifier_];

          v87 = *(v172 + 8);
          v87(v164, v71);
          v88 = *(v165 + 8);
          v89 = v167;
          v88(v166, v167);
          sub_29D69417C(v176);
          v90 = v170;
          v91 = [v170 navigationController];
          v92 = v162;
          if (v91)
          {
            v93 = v91;
            [v91 pushViewController:v84 animated:1];
          }

          else
          {
          }

          v88(v159, v89);
          v87(v173, v77);
          v130 = v92;
        }

        goto LABEL_30;
      }

      if (EnumCaseMultiPayload != 2)
      {
        sub_29D936B88();
        sub_29D936608();
        v46(v35, v31);
        v170 = v56;
        sub_29D693E2C(v176, v177);
        v131 = sub_29D936588();
        v132 = type metadata accessor for HypertensionNotificationsOnboardingViewController();
        v133 = objc_allocWithZone(v132);
        *&v133[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = 0;
        v133[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_navigateToDetailRoomUponOnboardingCompletion] = 0;
        v134 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F0] healthStore:v131];
        type metadata accessor for HypertensionNotificationsOnboardingFlowManager();
        v135 = swift_allocObject();
        *(v135 + 16) = v134;
        sub_29D933F18();

        v136 = sub_29D933F08();
        v137 = sub_29D6C9F00(v135, v136);
        type metadata accessor for HypertensionNotificationsOnboardingViewControllerFactory();
        v138 = swift_allocObject();
        *(v138 + 16) = 1;
        v175.receiver = v133;
        v175.super_class = v132;
        v139 = objc_msgSendSuper2(&v175, sel_initWithNibName_bundle_, 0, 0);
        [v139 setModalPresentationStyle_];
        v140 = type metadata accessor for HypertensionNotificationsOnboardingCoordinator();
        v141 = objc_allocWithZone(v140);
        *&v141[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_rootViewController + 8] = 0;
        *(swift_unknownObjectWeakInit() + 8) = &off_2A244D708;
        swift_unknownObjectWeakAssign();
        *&v141[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_model] = v137;
        *&v141[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_factory] = v138;
        v142 = v137;

        v143 = HKLogHeartRateCategory();
        v144 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v143 healthDataSource:v131];

        *&v141[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_eventSubmissionManager] = v144;
        v141[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_provenance] = 2;
        v174.receiver = v141;
        v174.super_class = v140;
        v145 = objc_msgSendSuper2(&v174, sel_init);
        sub_29D8E53B0();
        sub_29D8E5270(0, 0, 5);

        v146 = *&v139[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator];
        *&v139[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = v145;

        sub_29D69417C(v176);
        v147 = v170;
        [v170 presentViewController:v139 animated:1 completion:0];

        (*(v172 + 8))(v173, v171);
LABEL_29:
        v130 = v61;
LABEL_30:
        sub_29D6CAE24(v130, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData);
        return;
      }

      v96 = v59;
      v97 = v152;
      v98 = v151;
      v99 = v153;
      (*(v152 + 32))(v151, v96, v153);
      sub_29D9336A8();
    }

    (*(v97 + 8))(v98, v99);
    (*(v172 + 8))(v58, v171);
    goto LABEL_29;
  }

  sub_29D6C9E24(v39);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v48 = sub_29D937898();
  sub_29D69C6C0(v48, qword_2A1A2C008);
  v49 = sub_29D937878();
  v50 = sub_29D93A298();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v176[0] = v52;
    *v51 = 136315138;
    v53 = sub_29D93AF08();
    v55 = sub_29D6C2364(v53, v54, v176);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_29D677000, v49, v50, "[%s] Could not access action handler user data!", v51, 0xCu);
    sub_29D69417C(v52);
    MEMORY[0x29ED6BE30](v52, -1, -1);
    MEMORY[0x29ED6BE30](v51, -1, -1);
  }
}

void sub_29D6C9A00(char a1, void *a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2C008);
    v5 = a2;
    oslog = sub_29D937878();
    v6 = sub_29D93A288();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315394;
      v9 = sub_29D93AF08();
      v11 = sub_29D6C2364(v9, v10, &v17);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      v12 = a2;
      sub_29D6CA0D0(0, &qword_2A17B7AF0, sub_29D6A0CD0);
      v13 = sub_29D939DB8();
      v15 = sub_29D6C2364(v13, v14, &v17);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_29D677000, oslog, v6, "[%s]: Unable to enable hypertension notifications: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_29D6C9C00(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v9;
}

uint64_t sub_29D6C9D98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D6C9E24(uint64_t a1)
{
  sub_29D6CA0D0(0, &qword_2A17B1BE0, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D6C9E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_29D6C9F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D933F18();
  v16[3] = v4;
  v16[4] = &off_2A244EE00;
  v16[0] = a2;
  v5 = type metadata accessor for HypertensionNotificationsOnboardingModel();
  v6 = objc_allocWithZone(v5);
  v7 = sub_29D693DDC(v16, v4);
  MEMORY[0x2A1C7C4A8](v7, v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v15[3] = v4;
  v15[4] = &off_2A244EE00;
  v15[0] = v11;
  v6[OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsEnabled] = 2;
  v6[OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_detailsChanged] = 2;
  *&v6[OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_onboardingFlowManager] = a1;
  sub_29D6945AC(v15, &v6[OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsStatusProvider]);
  v14.receiver = v6;
  v14.super_class = v5;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_29D69417C(v15);
  sub_29D69417C(v16);
  return v12;
}

unint64_t sub_29D6CA084()
{
  result = qword_2A17B1BF8;
  if (!qword_2A17B1BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B1BF8);
  }

  return result;
}

void sub_29D6CA0D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D6CA124()
{
  result = qword_2A17B1C10;
  if (!qword_2A17B1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C10);
  }

  return result;
}

uint64_t sub_29D6CA178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6CA244(uint64_t a1)
{
  result = sub_29D9346E8();
  if (v2 <= 0x3F)
  {
    result = sub_29D9336F8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D6CA2E0(uint64_t a1)
{
  result = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29D6CA350()
{
  result = qword_2A17B1C50;
  if (!qword_2A17B1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C50);
  }

  return result;
}

unint64_t sub_29D6CA3A8()
{
  result = qword_2A17B1C58;
  if (!qword_2A17B1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C58);
  }

  return result;
}

unint64_t sub_29D6CA400()
{
  result = qword_2A17B1C60;
  if (!qword_2A17B1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C60);
  }

  return result;
}

unint64_t sub_29D6CA454()
{
  result = qword_2A17B1C70;
  if (!qword_2A17B1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C70);
  }

  return result;
}

unint64_t sub_29D6CA4A8()
{
  result = qword_2A17B1C80;
  if (!qword_2A17B1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C80);
  }

  return result;
}

unint64_t sub_29D6CA4FC()
{
  result = qword_2A17B1C90;
  if (!qword_2A17B1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C90);
  }

  return result;
}

unint64_t sub_29D6CA550()
{
  result = qword_2A17B1CA0;
  if (!qword_2A17B1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1CA0);
  }

  return result;
}

unint64_t sub_29D6CA5A4()
{
  result = qword_2A17B1CB0;
  if (!qword_2A17B1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1CB0);
  }

  return result;
}

unint64_t sub_29D6CA5F8()
{
  result = qword_2A17B1CC0;
  if (!qword_2A17B1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1CC0);
  }

  return result;
}

unint64_t sub_29D6CA64C()
{
  result = qword_2A17B1CD0;
  if (!qword_2A17B1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1CD0);
  }

  return result;
}

unint64_t sub_29D6CA6A0()
{
  result = qword_2A17B1CE0;
  if (!qword_2A17B1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1CE0);
  }

  return result;
}

unint64_t sub_29D6CA6F4()
{
  result = qword_2A17B1CF0;
  if (!qword_2A17B1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1CF0);
  }

  return result;
}

void sub_29D6CA748(uint64_t a1)
{
  if (!qword_2A17B1CF8)
  {
    sub_29D6CA7B8();
    sub_29D93AA68();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B1CF8);
    }
  }
}

unint64_t sub_29D6CA7B8()
{
  result = qword_2A17B1D00;
  if (!qword_2A17B1D00)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A17B1D00);
  }

  return result;
}

void sub_29D6CA804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_29D6CA86C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D9336F8();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D9346E8();
  v60 = *(v7 - 8);
  v61 = v7;
  v9 = MEMORY[0x2A1C7C4A8](v7, v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v56 - v13;
  v15 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  v17 = MEMORY[0x2A1C7C4A8](v15, v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v23 = &v56 - v22;
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = &v56 - v25;
  sub_29D6CADC0(0);
  v29 = MEMORY[0x2A1C7C4A8](v27 - 8, v28);
  v31 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v29 + 56);
  sub_29D6C9E9C(a1, v31);
  sub_29D6C9E9C(a2, &v31[v32]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v44 = swift_getEnumCaseMultiPayload();
        v35 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction;
        if (v44 != 6)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v51 = swift_getEnumCaseMultiPayload();
        v35 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction;
        if (v51 != 7)
        {
          goto LABEL_26;
        }
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v34 = swift_getEnumCaseMultiPayload();
      v35 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction;
      if (v34 != 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v49 = swift_getEnumCaseMultiPayload();
      v35 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction;
      if (v49 != 5)
      {
        goto LABEL_26;
      }
    }

LABEL_23:
    v40 = 1;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_29D6C9E9C(v31, v19);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v58 + 8))(v19, v59);
        goto LABEL_26;
      }

      v37 = v58;
      v36 = v59;
      v38 = &v31[v32];
      v39 = v57;
      (*(v58 + 32))(v57, v38, v59);
      v40 = sub_29D9336C8();
      v41 = *(v37 + 8);
      v41(v39, v36);
      v42 = v19;
      v43 = v36;
      goto LABEL_29;
    }

    v50 = swift_getEnumCaseMultiPayload();
    v35 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction;
    if (v50 != 3)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_29D6C9E9C(v31, v26);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v60 + 8))(v26, v61);
LABEL_26:
      v40 = 0;
      v35 = sub_29D6CADC0;
      goto LABEL_27;
    }

    v53 = v60;
    v54 = &v31[v32];
    v55 = v61;
    (*(v60 + 32))(v14, v54, v61);
    v40 = sub_29D9346D8();
    v41 = *(v53 + 8);
    v41(v14, v55);
    v42 = v26;
    v43 = v55;
LABEL_29:
    v41(v42, v43);
    v35 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction;
    goto LABEL_27;
  }

  sub_29D6C9E9C(v31, v23);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v60 + 8))(v23, v61);
    goto LABEL_26;
  }

  v45 = v60;
  v46 = &v31[v32];
  v47 = v61;
  (*(v60 + 32))(v11, v46, v61);
  v40 = sub_29D9346D8();
  v48 = *(v45 + 8);
  v48(v11, v47);
  v48(v23, v47);
  v35 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction;
LABEL_27:
  sub_29D6CAE24(v31, v35);
  return v40 & 1;
}

void sub_29D6CADC0(uint64_t a1)
{
  if (!qword_2A17B1D70)
  {
    type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B1D70);
    }
  }
}

uint64_t sub_29D6CAE24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AFibBurdenPDFChartPoint.Tag(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AFibBurdenPDFChartPoint.Tag(_WORD *result, int a2, int a3)
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

unint64_t sub_29D6CB124()
{
  result = qword_2A17B1D78;
  if (!qword_2A17B1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1D78);
  }

  return result;
}

unint64_t sub_29D6CB17C()
{
  result = qword_2A17B1D80;
  if (!qword_2A17B1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1D80);
  }

  return result;
}

unint64_t sub_29D6CB1D4()
{
  result = qword_2A17B1D88;
  if (!qword_2A17B1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1D88);
  }

  return result;
}

unint64_t sub_29D6CB22C()
{
  result = qword_2A17B1D90;
  if (!qword_2A17B1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1D90);
  }

  return result;
}

unint64_t sub_29D6CB284()
{
  result = qword_2A17B1D98;
  if (!qword_2A17B1D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1D98);
  }

  return result;
}

unint64_t sub_29D6CB2DC()
{
  result = qword_2A17B1DA0;
  if (!qword_2A17B1DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DA0);
  }

  return result;
}

unint64_t sub_29D6CB334()
{
  result = qword_2A17B1DA8;
  if (!qword_2A17B1DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DA8);
  }

  return result;
}

unint64_t sub_29D6CB38C()
{
  result = qword_2A17B1DB0;
  if (!qword_2A17B1DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DB0);
  }

  return result;
}

unint64_t sub_29D6CB3E4()
{
  result = qword_2A17B1DB8;
  if (!qword_2A17B1DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DB8);
  }

  return result;
}

unint64_t sub_29D6CB43C()
{
  result = qword_2A17B1DC0;
  if (!qword_2A17B1DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DC0);
  }

  return result;
}

unint64_t sub_29D6CB494()
{
  result = qword_2A17B1DC8;
  if (!qword_2A17B1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DC8);
  }

  return result;
}

unint64_t sub_29D6CB4EC()
{
  result = qword_2A17B1DD0;
  if (!qword_2A17B1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DD0);
  }

  return result;
}

unint64_t sub_29D6CB544()
{
  result = qword_2A17B1DD8;
  if (!qword_2A17B1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DD8);
  }

  return result;
}

unint64_t sub_29D6CB59C()
{
  result = qword_2A17B1DE0;
  if (!qword_2A17B1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DE0);
  }

  return result;
}

unint64_t sub_29D6CB5F4()
{
  result = qword_2A17B1DE8;
  if (!qword_2A17B1DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DE8);
  }

  return result;
}

unint64_t sub_29D6CB64C()
{
  result = qword_2A17B1DF0;
  if (!qword_2A17B1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DF0);
  }

  return result;
}

unint64_t sub_29D6CB6A4()
{
  result = qword_2A17B1DF8;
  if (!qword_2A17B1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DF8);
  }

  return result;
}

unint64_t sub_29D6CB6FC()
{
  result = qword_2A17B1E00;
  if (!qword_2A17B1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1E00);
  }

  return result;
}

unint64_t sub_29D6CB754()
{
  result = qword_2A17B1E08;
  if (!qword_2A17B1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1E08);
  }

  return result;
}

unint64_t sub_29D6CB7AC()
{
  result = qword_2A17B1E10;
  if (!qword_2A17B1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1E10);
  }

  return result;
}

unint64_t sub_29D6CB804()
{
  result = qword_2A17B1E18;
  if (!qword_2A17B1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1E18);
  }

  return result;
}

unint64_t sub_29D6CB85C()
{
  result = qword_2A17B1E20;
  if (!qword_2A17B1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1E20);
  }

  return result;
}

uint64_t sub_29D6CB8B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000029D9597B0 == a2;
  if (v3 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000029D9597D0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000029D9597F0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000029D959810 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000029D959830 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000029D959850 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000029D959870 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C52556E65706FLL && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_29D93AD78();

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

uint64_t sub_29D6CBB5C()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D6CBC0C()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;

  return sub_29D934788();
}

uint64_t sub_29D6CBCA0(char a1)
{
  if (a1)
  {
    [objc_opt_self() bradycardiaThresholdHeartRate];
    v1 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    sub_29D6B73CC();
    v2 = sub_29D93A6E8();
    v3 = sub_29D8EFDF0(v2, v1);
    v5 = v4;

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    sub_29D6CC0B8(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29D93DDB0;
    *(v6 + 56) = MEMORY[0x29EDC99B0];
    *(v6 + 64) = sub_29D69AD24();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v7 = sub_29D939D38();
    v9 = v8;

    sub_29D9334A8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_29D93DDB0;
    v11 = *MEMORY[0x29EDC5250];
    v12 = MEMORY[0x29EDC9C10];
    *(v10 + 56) = MEMORY[0x29EDC9BA8];
    *(v10 + 64) = v12;
    *(v10 + 32) = v11;
    v13 = sub_29D939D38();
    v15 = v14;

    sub_29D6CBFE8();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29D93F680;
    *(v16 + 32) = v7;
    *(v16 + 40) = v9;
    *(v16 + 48) = v13;
  }

  else
  {
    sub_29D6CBFE8();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29D93F680;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    *(v16 + 32) = sub_29D9334A8();
    *(v16 + 40) = v17;
    v18 = sub_29D9334A8();
    v15 = v19;
    *(v16 + 48) = v18;
  }

  *(v16 + 56) = v15;
  return v16;
}

void sub_29D6CBFE8()
{
  if (!qword_2A1A21F18)
  {
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21F18);
    }
  }
}

void sub_29D6CC038()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  [objc_opt_self() setBradycardiaThresholdHeartRate_];
}

void sub_29D6CC0B8(uint64_t a1)
{
  if (!qword_2A1A24860)
  {
    sub_29D69ACC0();
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24860);
    }
  }
}

uint64_t sub_29D6CC110@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v62 = a3;
  v67 = a5;
  v68 = a2;
  sub_29D6CE4A4(0, &qword_2A1A24A68, sub_29D6CE0BC, MEMORY[0x29EDB8AB0]);
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v64 = v51 - v8;
  sub_29D6CE508(0);
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v59 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_29D934148();
  v56 = *(v58 - 8);
  MEMORY[0x2A1C7C4A8](v58, v12);
  v55 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D9341E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v57 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v21 = v51 - v20;
  updated = type metadata accessor for ElectrocardiogramUpdateGenerator(0);
  MEMORY[0x2A1C7C4A8](updated, v23);
  v63 = (v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D6CE120(0, &qword_2A1A24A38, MEMORY[0x29EDB8AC0]);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v28);
  v30 = v51 - v29;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v54 = a4;
    v32 = *(v15 + 16);
    v53 = Strong;
    v32(v21, v68, v14);
    v52 = updated;
    v51[1] = *(updated + 20);
    v51[0] = sub_29D9341B8();
    sub_29D6CE4A4(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
    v33 = sub_29D933F58();
    v34 = *(v33 - 8);
    v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_29D93DDB0;
    (*(v34 + 104))(v36 + v35, *MEMORY[0x29EDC3758], v33);
    (*(v56 + 104))(v55, *MEMORY[0x29EDC3898], v58);
    v37 = v63;
    sub_29D934158();
    v38 = v57;
    v32(v57, v21, v14);
    v39 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v62;
    (*(v15 + 32))(v40 + v39, v38, v14);
    sub_29D6CE59C(0);
    sub_29D6CE9B0(&qword_2A1A24AB0, sub_29D6CE59C, MEMORY[0x29EDB8A00]);

    v41 = v59;
    sub_29D938378();
    sub_29D6CE9B0(&qword_2A1A24A00, sub_29D6CE508, MEMORY[0x29EDB8AE8]);
    v42 = v61;
    v43 = sub_29D938418();
    (*(v60 + 8))(v41, v42);
    (*(v15 + 8))(v21, v14);
    *v37 = v43;
    v69[3] = v52;
    v69[4] = sub_29D6CE9B0(qword_2A1A25418, type metadata accessor for ElectrocardiogramUpdateGenerator, &unk_29D941834);
    v44 = sub_29D693F78(v69);
    sub_29D6CE6EC(v37, v44);
    sub_29D6CE0BC();
    v45 = v64;
    sub_29D938338();
    sub_29D6CE750();
    v46 = v66;
    v47 = sub_29D938418();
    (*(v65 + 8))(v45, v46);
    v48 = *(v53 + OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_notificationPublisher);

    v49 = sub_29D6CC920(v47, v48);

    result = sub_29D6CE7D8(v37);
  }

  else
  {
    sub_29D6CE0BC();
    sub_29D938348();
    sub_29D6CE190(&qword_2A1A24A40, &qword_2A1A24A38, MEMORY[0x29EDB8AC0], MEMORY[0x29EDB8AC8]);
    v49 = sub_29D938418();
    result = (*(v27 + 8))(v30, v26);
  }

  *v67 = v49;
  return result;
}