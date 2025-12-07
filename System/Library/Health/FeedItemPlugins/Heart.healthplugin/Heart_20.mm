id sub_29D8C87C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HypertensionNotificationsStatusCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8C8918(uint64_t a1)
{
  result = type metadata accessor for HypertensionNotificationsStatusURLDestination(319);
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

uint64_t sub_29D8C8A20(uint64_t a1)
{
  sub_29D8C8C28(319, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_29D8C8A94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_item;
  swift_beginAccess();
  return sub_29D8C8DB8(v1 + v3, a1, &qword_2A17B1830, sub_29D69F188);
}

uint64_t sub_29D8C8B08(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_item;
  swift_beginAccess();
  sub_29D69F2FC(a1, v1 + v3);
  swift_endAccess();
  sub_29D8C5FCC();
  return sub_29D8C8E24(a1, &qword_2A17B1830, sub_29D69F188);
}

uint64_t (*sub_29D8C8B90(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D8C8BF4;
}

uint64_t sub_29D8C8BF4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29D8C5FCC();
  }

  return result;
}

void sub_29D8C8C28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_29D8C8C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D8C8CE0()
{
  result = qword_2A17B1C00;
  if (!qword_2A17B1C00)
  {
    type metadata accessor for HypertensionNotificationsSettingsSpecifierDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C00);
  }

  return result;
}

uint64_t sub_29D8C8D38(uint64_t a1, uint64_t a2)
{
  sub_29D8C8C28(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8C8DB8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D8C8C28(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D8C8E24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D8C8C28(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D8C8E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationsStatusDataSourceItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8C8EE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29D8C8F48()
{
  v1 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v2 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_detailLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v3 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_statusImageView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  v4 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_bottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkTopConstraint) = 0;
  v5 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_urlDestination;
  v6 = sub_29D9336F8();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  sub_29D8C8C28(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  (*(*(v7 - 8) + 56))(v0 + v5, 0, 2, v7);
  *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_healthStore) = 0;
  v8 = v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_item;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  sub_29D93AB28();
  __break(1u);
}

uint64_t sub_29D8C9114(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D8C9194(uint64_t a1)
{
  sub_29D8CDF68(319, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_29D8C92B0@<X0>(uint64_t a1@<X8>)
{
  v3 = _s14descr2A243C641C15SettingsContentVMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v19 - v10;
  v12 = sub_29D9346E8();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_2A17B7840;
  swift_beginAccess();
  sub_29D8CE014(v1 + v17, v11);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_29D8CE3E4(v11, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    return (*(v13 + 104))(a1, *MEMORY[0x29EDC1768], v12);
  }

  else
  {
    sub_29D6E5560(v11, v7);
    sub_29D8CE3E4(v11, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    (*(v13 + 16))(v16, v7, v12);
    sub_29D6E5644(v7);
    return (*(v13 + 32))(a1, v16, v12);
  }
}

uint64_t sub_29D8C9560()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29D939978();
  v63 = *(v1 - 8);
  v64 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v62 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_29D93A548();
  v67 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65, v4);
  v59 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CE170(0);
  v7 = *(v6 - 8);
  v69 = v6;
  v70 = v7;
  MEMORY[0x2A1C7C4A8](v6, v8);
  v61 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CE23C(0);
  v11 = *(v10 - 8);
  v71 = v10;
  v72 = v11;
  MEMORY[0x2A1C7C4A8](v10, v12);
  v66 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CE318(0);
  v15 = *(v14 - 8);
  v73 = v14;
  v74 = v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v68 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x29EDCA298];
  v60 = MEMORY[0x29EDC9C68];
  sub_29D8CDF68(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v21 = v53 - v20;
  sub_29D710880(0);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C((v0 + qword_2A17B7820), *(v0 + qword_2A17B7820 + 24));
  v78 = sub_29D937258();
  v28 = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v29 = sub_29D93A468();
  v79 = v29;
  v55 = sub_29D93A448();
  v30 = *(v55 - 8);
  v76 = *(v30 + 56);
  v56 = v30 + 56;
  v76(v21, 1, 1, v55);
  sub_29D6B7D8C(0);
  sub_29D8CDEF8(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  v75 = sub_29D706380();
  sub_29D938538();
  sub_29D8CE3E4(v21, &unk_2A1A248F0, v77);

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v33 = ObjectType;
  *(v32 + 16) = v31;
  *(v32 + 24) = v33;
  v54 = MEMORY[0x29EDB89E8];
  sub_29D8CDEF8(&qword_2A17B2C70, sub_29D710880, MEMORY[0x29EDB89E8]);
  sub_29D938588();

  (*(v24 + 8))(v27, v23);
  v58 = qword_2A17B7828;
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  v34 = [objc_opt_self() defaultCenter];
  v35 = v59;
  sub_29D93A558();

  v36 = v62;
  v37 = v63;
  v38 = v64;
  (*(v63 + 104))(v62, *MEMORY[0x29EDCA260], v64);
  v53[1] = v28;
  v39 = sub_29D93A4A8();
  (*(v37 + 8))(v36, v38);
  v78 = v39;
  v40 = v55;
  v76(v21, 1, 1, v55);
  sub_29D8CDEF8(&unk_2A1A248C0, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
  v41 = v61;
  v42 = v65;
  sub_29D938538();
  sub_29D8CE3E4(v21, &unk_2A1A248F0, v77);

  (*(v67 + 8))(v35, v42);
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v33;
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, v60);
  v45 = v54;
  sub_29D8CDEF8(&qword_2A17B7888, sub_29D8CE170, v54);
  v46 = v66;
  v47 = v69;
  sub_29D9384C8();

  (*(v70 + 8))(v41, v47);
  v48 = sub_29D93A468();
  v78 = v48;
  v76(v21, 1, 1, v40);
  sub_29D8CDEF8(&qword_2A17B7898, sub_29D8CE23C, MEMORY[0x29EDB8990]);
  v49 = v68;
  v50 = v71;
  sub_29D938538();
  sub_29D8CE3E4(v21, &unk_2A1A248F0, v77);

  (*(v72 + 8))(v46, v50);
  *(swift_allocObject() + 16) = v33;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D8CDEF8(&qword_2A17B78A0, sub_29D8CE318, v45);
  v51 = v73;
  sub_29D938478();

  (*(v74 + 8))(v49, v51);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

void sub_29D8C9FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v26 - v7;
  v9 = sub_29D9371A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v13 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v27 = a3;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v16, qword_2A1A2BF58);
    (*(v10 + 16))(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
    v17 = *(v10 + 80);
    v26 = a1;
    v18 = (v17 + 16) & ~v17;
    v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    (*(v10 + 32))(v20 + v18, v13, v9);
    *(v20 + v19) = v27;
    v28[0] = 0;
    sub_29D9371C8();

    v21 = *&v15[qword_2A17B7848 + 24];
    v22 = *&v15[qword_2A17B7848 + 32];
    v23 = sub_29D693E2C(&v15[qword_2A17B7848], v21);
    v28[3] = v21;
    v28[4] = *(v22 + 8);
    v24 = sub_29D693F78(v28);
    (*(*(v21 - 8) + 16))(v24, v23, v21);
    sub_29D826468(v26, v28, v8);
    sub_29D69417C(v28);
    v25 = qword_2A17B7840;
    swift_beginAccess();
    sub_29D6E55C4(v8, &v15[v25]);
    swift_endAccess();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_29D9367C8();

      sub_29D936978();
    }

    else
    {
    }
  }
}

uint64_t sub_29D8CA2FC(uint64_t a1, uint64_t a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D96D000);
  sub_29D9371A8();
  sub_29D93AB08();
  return 0;
}

void sub_29D8CA3C8(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_29D9371A8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v20 = a3;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v13, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = a2;
    v19[0] = 0;
    sub_29D9371C8();

    sub_29D693E2C(&v12[qword_2A17B7820], *&v12[qword_2A17B7820 + 24]);
    sub_29D937238();
    if (v3)
    {
    }

    else
    {
      v15 = *&v12[qword_2A17B7848 + 24];
      v16 = *&v12[qword_2A17B7848 + 32];
      v17 = sub_29D693E2C(&v12[qword_2A17B7848], v15);
      v19[3] = v15;
      v19[4] = *(v16 + 8);
      v18 = sub_29D693F78(v19);
      (*(*(v15 - 8) + 16))(v18, v17, v15);
      sub_29D826468(v10, v19, v20);

      (*(v7 + 8))(v10, v6);
      sub_29D69417C(v19);
    }
  }

  else
  {
    v14 = _s14descr2A243C641C15SettingsContentVMa(0);
    (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }
}

uint64_t sub_29D8CA670(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](0xD000000000000058, 0x800000029D96CFA0);
  return 0;
}

void **sub_29D8CA708(void **result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = v2;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v5, qword_2A1A2BF58);
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = a2;
    v7 = v2;
    sub_29D9371E8();
  }

  return result;
}

uint64_t sub_29D8CA7FC(void *a1, uint64_t a2)
{
  sub_29D93AA18();

  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](0xD00000000000002CLL, 0x800000029D96CF70);
  v4 = a1;
  sub_29D6A0CD0();
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  return 91;
}

void sub_29D8CA8D0(uint64_t a1, uint64_t a2)
{
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_29D8CE014(a1, v6);
    v9 = qword_2A17B7840;
    swift_beginAccess();
    sub_29D6E55C4(v6, v8 + v9);
    swift_endAccess();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();

    if (v12)
    {
      swift_getObjectType();
      sub_29D9367C8();
      sub_29D936978();
    }
  }
}

uint64_t sub_29D8CAA4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_29D9346E8();
  v44 = *(v3 - 8);
  v45 = v3;
  v5 = MEMORY[0x2A1C7C4A8](v3, v4);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v42 - v8;
  v10 = _s14descr2A243C641C15SettingsContentVMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  v17 = MEMORY[0x2A1C7C4A8](v15 - 8, v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v42 - v21;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v23 = qword_2A1A2C038;
  v24 = sub_29D939D28();
  v25 = [objc_opt_self() imageNamed:v24 inBundle:v23];

  if (v25)
  {
    v26 = qword_2A17B7840;
    swift_beginAccess();
    sub_29D8CE014(v2 + v26, v22);
    v27 = *(v11 + 48);
    if (v27(v22, 1, v10))
    {
      sub_29D8CE3E4(v22, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
LABEL_6:
      if (qword_2A1A24678 != -1)
      {
        swift_once();
      }

      sub_29D6A9ED4(0);
      sub_29D69C6C0(v28, qword_2A1A2BF58);
      *(swift_allocObject() + 16) = ObjectType;
      v48 = 0;
      sub_29D9371E8();

      v29 = sub_29D9368F8();
      return (*(*(v29 - 8) + 56))(v47, 1, 1, v29);
    }

    sub_29D6E5560(v22, v14);
    sub_29D8CE3E4(v22, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    v35 = &v14[*(v10 + 28)];
    v36 = *(v35 + 1);
    v42 = *v35;
    sub_29D935E88();
    sub_29D6E5644(v14);
    if (!v36)
    {
      goto LABEL_6;
    }

    sub_29D8CE014(v2 + v26, v19);
    if (v27(v19, 1, v10))
    {
      sub_29D8CE3E4(v19, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
      v38 = v44;
      v37 = v45;
      (*(v44 + 104))(v9, *MEMORY[0x29EDC1768], v45);
    }

    else
    {
      sub_29D6E5560(v19, v14);
      sub_29D8CE3E4(v19, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
      v39 = v43;
      v38 = v44;
      v37 = v45;
      (*(v44 + 16))(v43, v14, v45);
      sub_29D6E5644(v14);
      (*(v38 + 32))(v9, v39, v37);
    }

    sub_29D9347C8();
    sub_29D9347A8();
    (*(v38 + 8))(v9, v37);
    v40 = v47;
    sub_29D9368D8();
    v41 = sub_29D9368F8();
    return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  }

  else
  {
    v31 = sub_29D9368F8();
    v32 = *(*(v31 - 8) + 56);
    v33 = v31;
    v34 = v47;

    return v32(v34, 1, 1, v33);
  }
}

uint64_t sub_29D8CB074(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](0xD00000000000001FLL, 0x800000029D96CF50);
  return 91;
}

uint64_t sub_29D8CB108()
{
  ObjectType = swift_getObjectType();
  v2 = _s14descr2A243C641C15SettingsContentVMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = v37 - v9;
  v38 = MEMORY[0x29EDCA190];
  v11 = objc_opt_self();
  v12 = sub_29D939D28();
  v13 = [v11 groupSpecifierWithID_];

  if (!v13)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v16, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = ObjectType;
    v37[2] = 0;
    sub_29D9371E8();

    return MEMORY[0x29EDCA190];
  }

  v14 = qword_2A17B7840;
  swift_beginAccess();
  sub_29D8CE014(v0 + v14, v10);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_29D8CE3E4(v10, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
LABEL_4:
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v15, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = ObjectType;
    v37[1] = 0;
    sub_29D9371E8();

    return MEMORY[0x29EDCA190];
  }

  sub_29D6E5560(v10, v6);
  sub_29D8CE3E4(v10, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  v18 = &v6[*(v2 + 32)];
  v19 = v18[1];
  v20 = v18[4];
  v21 = v18[5];
  sub_29D87DBEC(*v18, v19, v18[2], v18[3], v20, v21);
  sub_29D6E5644(v6);
  if (!v19)
  {
    goto LABEL_4;
  }

  v22 = (v0 + qword_2A17B7830);
  *v22 = v20;
  v22[1] = v21;
  sub_29D935E88();

  v23 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
  v24 = sub_29D939D28();
  v25 = [v23 initWithString_];

  v26 = sub_29D939D28();

  v27 = [v25 localizedStandardRangeOfString_];
  v29 = v28;

  sub_29D69567C(0, &qword_2A17B2A38, 0x29EDC6268);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v31)
  {
    sub_29D939D68();
    v31 = sub_29D939D28();
  }

  [v13 setProperty:v31 forKey:*MEMORY[0x29EDC62D0]];

  v32 = sub_29D939D28();

  [v13 setProperty:v32 forKey:*MEMORY[0x29EDC62F0]];

  v39.location = v27;
  v39.length = v29;
  v33 = NSStringFromRange(v39);
  if (!v33)
  {
    sub_29D939D68();
    v33 = sub_29D939D28();
  }

  [v13 setProperty:v33 forKey:*MEMORY[0x29EDC62E0]];

  v34 = [objc_opt_self() valueWithNonretainedObject_];
  [v13 setProperty:v34 forKey:*MEMORY[0x29EDC62E8]];
  sub_29D933DC8();
  v35 = sub_29D939D28();

  [v13 setProperty:v35 forKey:*MEMORY[0x29EDC62D8]];

  v36 = v13;
  MEMORY[0x29ED6A300]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D939F78();
  }

  sub_29D939FA8();

  return v38;
}

uint64_t sub_29D8CB750(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](0xD000000000000029, 0x800000029D96CEF0);
  return 91;
}

uint64_t sub_29D8CB7E4(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](0xD000000000000027, 0x800000029D96CEC0);
  return 91;
}

uint64_t sub_29D8CB878()
{
  v1 = _s14descr2A243C641C15SettingsContentVMa(0);
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  v8 = MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v39 - v12;
  v14 = v0 + qword_2A17B7810;
  v15 = &qword_2A17B7000;
  if (*(v0 + qword_2A17B7810) != 1)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v16 = qword_2A17B7840;
  swift_beginAccess();
  sub_29D8CE014(v0 + v16, v13);
  if ((*(v2 + 48))(v13, 1, v1))
  {
    sub_29D8CE3E4(v13, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    v17 = 2;
  }

  else
  {
    sub_29D6E5560(v13, v5);
    sub_29D8CE3E4(v13, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    v19 = v5[*(v1 + 20)];
    sub_29D6E5644(v5);
    v17 = v19;
  }

  v20 = [objc_opt_self() aFibBurdenTitleDescription];
  if (!v20)
  {
    sub_29D939D68();
    v20 = sub_29D939D28();
  }

  if (v17 == 2)
  {
    v18 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v18 = [objc_opt_self() preferenceSpecifierNamed:v20 target:v0 set:sel_setAFibBurdenFeatureEnabledWithValue_ get:sel_isAFibBurdenFeatureEnabled detail:0 cell:6 edit:0];

  if (v18)
  {
    v21 = sub_29D939D28();
    [v18 setIdentifier_];

    v22 = sub_29D939FC8();
    [v18 setProperty:v22 forKey:*MEMORY[0x29EDC62C8]];

    v20 = sub_29D939FC8();
    [v18 setProperty:v20 forKey:*MEMORY[0x29EDC62A0]];
    v15 = &qword_2A17B7000;
    goto LABEL_12;
  }

  v15 = &qword_2A17B7000;
LABEL_13:
  if (*(v14 + 1) != 1)
  {
LABEL_21:
    v26 = 0;
    goto LABEL_22;
  }

  v23 = v15[264];
  swift_beginAccess();
  sub_29D8CE014(v0 + v23, v10);
  if ((*(v2 + 48))(v10, 1, v1))
  {
    sub_29D8CE3E4(v10, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    v24 = 2;
  }

  else
  {
    sub_29D6E5560(v10, v5);
    sub_29D8CE3E4(v10, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    v25 = v5[*(v1 + 24)];
    sub_29D6E5644(v5);
    v24 = v25;
  }

  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  if (v24 == 2)
  {

    goto LABEL_21;
  }

  v34 = objc_opt_self();
  v35 = sub_29D939D28();

  v26 = [v34 preferenceSpecifierNamed:v35 target:v0 set:sel_setAFibBurdenNotificationEnabledWithValue_ get:sel_isAFibBurdenNotificationEnabled detail:0 cell:6 edit:0];

  if (v26)
  {
    v36 = sub_29D939D28();
    [v26 setIdentifier_];

    v37 = sub_29D939FC8();
    [v26 setProperty:v37 forKey:*MEMORY[0x29EDC62C8]];

    v38 = sub_29D939FC8();
    [v26 setProperty:v38 forKey:*MEMORY[0x29EDC62A0]];
  }

LABEL_22:
  v41[4] = v18;
  v41[5] = v26;
  v27 = MEMORY[0x29EDCA190];
  v40 = MEMORY[0x29EDCA190];
  v28 = v26;
  v29 = v18;
  for (i = 0; i != 2; ++i)
  {
    v31 = v41[i + 4];
    if (v31)
    {
      v32 = v31;
      MEMORY[0x29ED6A300]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D939F78();
      }

      sub_29D939FA8();
      v27 = v40;
    }
  }

  sub_29D8CE0F0(0);
  swift_arrayDestroy();

  return v27;
}

uint64_t sub_29D8CBF4C()
{
  v1 = _s14descr2A243C641C15SettingsContentVMa(0);
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v12 - v8;
  v10 = qword_2A17B7840;
  swift_beginAccess();
  sub_29D8CE014(v0 + v10, v9);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_29D8CE3E4(v9, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  }

  else
  {
    sub_29D6E5560(v9, v5);
    sub_29D8CE3E4(v9, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    sub_29D6E5644(v5);
  }

  return sub_29D939FC8();
}

id sub_29D8CC124(void *a1)
{
  v1 = a1;
  v2 = sub_29D8CBF4C();

  return v2;
}

void sub_29D8CC168(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v5, qword_2A1A2BF58);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = ObjectType;
  v13[0] = 0;
  v7 = a1;
  sub_29D9371C8();

  v8 = *(v2 + qword_2A17B7818);
  v9 = *MEMORY[0x29EDBA788];
  v10 = swift_allocObject();
  *(v10 + 16) = ObjectType;
  v13[4] = sub_29D8CE0B0;
  v13[5] = v10;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29D8E44F0;
  v13[3] = &unk_2A244D100;
  v11 = _Block_copy(v13);
  v12 = v9;

  [v8 setFeatureSettingNumber:v7 forKey:v12 completion:v11];
  _Block_release(v11);
}

uint64_t sub_29D8CC32C(void *a1, uint64_t a2)
{
  sub_29D93AA18();

  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](0xD000000000000026, 0x800000029D96CE00);
  v4 = a1;
  v5 = [v4 description];
  v6 = sub_29D939D68();
  v8 = v7;

  MEMORY[0x29ED6A240](v6, v8);

  return 91;
}

uint64_t sub_29D8CC418(void *a1, uint64_t a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](0xD00000000000003DLL, 0x800000029D968130);
  v4 = a1;
  sub_29D8CDF68(0, &qword_2A17B7AF0, sub_29D6A0CD0, MEMORY[0x29EDC9C68]);
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  return 0;
}

void sub_29D8CC520(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D8CC168(v4);
}

uint64_t sub_29D8CC588()
{
  v1 = _s14descr2A243C641C15SettingsContentVMa(0);
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v12 - v8;
  v10 = qword_2A17B7840;
  swift_beginAccess();
  sub_29D8CE014(v0 + v10, v9);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_29D8CE3E4(v9, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  }

  else
  {
    sub_29D6E5560(v9, v5);
    sub_29D8CE3E4(v9, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    sub_29D6E5644(v5);
  }

  return sub_29D939FC8();
}

id sub_29D8CC760(void *a1)
{
  v1 = a1;
  v2 = sub_29D8CC588();

  return v2;
}

void sub_29D8CC7A4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v33 = a4;
  v6 = sub_29D939968();
  v32 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D939998();
  v31 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69C75C();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if ([a1 authorizationStatus] == 2)
    {
      if (qword_2A1A24678 != -1)
      {
        swift_once();
      }

      sub_29D6A9ED4(0);
      sub_29D69C6C0(v22, qword_2A1A2BF58);
      v23 = swift_allocObject();
      v24 = v33;
      *(v23 + 16) = a3;
      *(v23 + 24) = v24;
      aBlock[0] = 0;
      v25 = a3;
      sub_29D9371C8();

      swift_getObjectType();
      [v25 BOOLValue];
      sub_29D939D68();
      sub_29D93A3E8();
      *(swift_allocObject() + 16) = v24;
      sub_29D93A608();

      (*(v16 + 8))(v19, v15);
    }

    else
    {
      if (qword_2A1A24678 != -1)
      {
        swift_once();
      }

      sub_29D6A9ED4(0);
      sub_29D69C6C0(v26, qword_2A1A2BF58);
      *(swift_allocObject() + 16) = v33;
      aBlock[0] = 0;
      sub_29D9371C8();

      sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
      v27 = sub_29D93A468();
      v28 = swift_allocObject();
      *(v28 + 16) = v21;
      aBlock[4] = sub_29D8CDF48;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D6C1F10;
      aBlock[3] = &unk_2A244CFE8;
      v29 = _Block_copy(aBlock);
      v30 = v21;

      sub_29D939988();
      aBlock[0] = MEMORY[0x29EDCA190];
      sub_29D8CDEF8(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
      sub_29D8CDF68(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
      sub_29D6FC864();
      sub_29D93A888();
      MEMORY[0x29ED6A880](0, v13, v9, v29);
      _Block_release(v29);

      (*(v32 + 8))(v9, v6);
      (*(v31 + 8))(v13, v10);
    }
  }
}

uint64_t sub_29D8CCD54(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](0xD00000000000004FLL, 0x800000029D96CD80);
  return 0;
}

void sub_29D8CCDEC(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_29D9367C8();
    sub_29D936978();
  }

  sub_29D8CD540();
}

uint64_t sub_29D8CCE6C(void *a1, uint64_t a2)
{
  sub_29D93AA18();

  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](0xD00000000000002BLL, 0x800000029D96CD50);
  v4 = a1;
  v5 = [v4 description];
  v6 = sub_29D939D68();
  v8 = v7;

  MEMORY[0x29ED6A240](v6, v8);

  return 91;
}

uint64_t sub_29D8CCF58(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 1) == 0)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v7, qword_2A1A2BF58);
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v9 = a2;
    sub_29D9371E8();
  }

  return result;
}

uint64_t sub_29D8CD034(void *a1, uint64_t a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](0xD000000000000043, 0x800000029D96CD00);
  v4 = a1;
  sub_29D8CDF68(0, &qword_2A17B7AF0, sub_29D6A0CD0, MEMORY[0x29EDC9C68]);
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  return 0;
}

void sub_29D8CD13C(char *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  sub_29D693E2C(&a1[qword_2A17B7848], *&a1[qword_2A17B7848 + 24]);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a3;
  v7[4] = ObjectType;
  v9 = a3;
  v8 = a1;

  sub_29D933ED8();
}

double sub_29D8CD248(double result)
{
  v2 = *(v1 + qword_2A17B7830 + 8);
  if (!v2)
  {
    return v11;
  }

  v3 = *(v1 + qword_2A17B7830);
  v4 = objc_opt_self();
  sub_29D935E88();
  v5 = [v4 aFibBurdenArticleLinkURL];
  v6 = sub_29D939D68();
  v8 = v7;

  if (v3 == v6 && v2 == v8)
  {

LABEL_10:

    sub_29D8CD3BC();
    return v11;
  }

  v10 = sub_29D93AD78();

  if (v10)
  {
    goto LABEL_10;
  }

  sub_29D939DF8();

  return v11;
}

void sub_29D8CD374(void *a1)
{
  v2 = a1;
  sub_29D8CD248(v1);
}

void sub_29D8CD3BC()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D8AD070();
  v0 = objc_allocWithZone(sub_29D934568());
  v1 = sub_29D934558();
  v2 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v3 = sub_29D936F08();
    sub_29D936978();
    [v3 presentViewController:v2 animated:1 completion:0];
  }
}

void sub_29D8CD540()
{
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  v0 = sub_29D939D28();

  v1 = sub_29D939D28();

  v2 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:{1, 0xE000000000000000}];

  sub_29D9334A8();
  v3 = sub_29D939D28();

  v4 = objc_opt_self();
  v5 = [v4 actionWithTitle:v3 style:1 handler:{0, 0xE000000000000000}];

  sub_29D9334A8();
  v6 = sub_29D939D28();

  aBlock[4] = sub_29D8CD8D0;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D799960;
  aBlock[3] = &unk_2A244D088;
  v7 = _Block_copy(aBlock);

  v8 = [v4 actionWithTitle:v6 style:0 handler:{v7, 0xE000000000000000}];
  _Block_release(v7);

  [v2 addAction_];
  [v2 addAction_];
  [v2 setPreferredAction_];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v9 = sub_29D936F08();
    sub_29D936978();
    [v9 presentViewController:v2 animated:1 completion:0];
  }
}

uint64_t sub_29D8CD8D0()
{
  v0 = sub_29D9346B8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC1718], v0);
  sub_29D9346A8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_29D8CD9E4()
{
  sub_29D936978();
  sub_29D69417C((v0 + qword_2A17B7820));

  sub_29D8CE3E4(v0 + qword_2A17B7840, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  sub_29D69417C((v0 + qword_2A17B7848));
  sub_29D68B77C(v0 + qword_2A17D0E28);
  v1 = v0 + qword_2A17D0E30;

  return sub_29D68B77C(v1);
}

uint64_t sub_29D8CDACC(uint64_t a1)
{
  sub_29D936978();
  sub_29D69417C((a1 + qword_2A17B7820));

  sub_29D8CE3E4(a1 + qword_2A17B7840, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  sub_29D69417C((a1 + qword_2A17B7848));
  sub_29D68B77C(a1 + qword_2A17D0E28);
  v2 = a1 + qword_2A17D0E30;

  return sub_29D68B77C(v2);
}

void (*sub_29D8CDC28(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17D0E28;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D7787F8;
}

void (*sub_29D8CDCE0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17D0E30;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D7797E4;
}

unint64_t sub_29D8CDD84()
{
  v4 = MEMORY[0x29EDCA190];
  v0 = sub_29D8CB108();
  sub_29D88BF0C(v0);
  v1 = sub_29D8CB878();
  sub_29D88BF0C(v1);
  v2 = sub_29D775B18(v4);

  return v2;
}

id sub_29D8CDE94(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D8CDEF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D8CDF50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D8CDF68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8CE014(uint64_t a1, uint64_t a2)
{
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D8CE0F0(uint64_t a1)
{
  if (!qword_2A17B7870)
  {
    sub_29D69567C(255, &qword_2A17B2940, 0x29EDC6288);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7870);
    }
  }
}

void sub_29D8CE170(uint64_t a1)
{
  if (!qword_2A17B7878)
  {
    sub_29D93A548();
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D8CDEF8(&unk_2A1A248C0, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
    sub_29D706380();
    v1 = sub_29D9381E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7878);
    }
  }
}

void sub_29D8CE23C(uint64_t a1)
{
  if (!qword_2A17B7880)
  {
    sub_29D8CE170(255);
    sub_29D8CDF68(255, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
    sub_29D8CDEF8(&qword_2A17B7888, sub_29D8CE170, MEMORY[0x29EDB89E8]);
    v1 = sub_29D938178();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7880);
    }
  }
}

void sub_29D8CE318(uint64_t a1)
{
  if (!qword_2A17B7890)
  {
    sub_29D8CE23C(255);
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D8CDEF8(&qword_2A17B7898, sub_29D8CE23C, MEMORY[0x29EDB8990]);
    sub_29D706380();
    v1 = sub_29D9381E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7890);
    }
  }
}

uint64_t sub_29D8CE3E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D8CDF68(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D8CE498()
{
  v1 = *(sub_29D9371A8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D8CA2FC(v0 + v2, v3);
}

id sub_29D8CE524(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  v72 = a7;
  v65 = a5;
  v76 = a4;
  v71 = a3;
  v67 = a1;
  v75 = a11;
  v13 = MEMORY[0x29EDC9C68];
  sub_29D8CDF68(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v70 = &v63 - v16;
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, v13);
  MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v20 = &v63 - v19;
  v21 = sub_29D934C58();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _s14descr2A243C641C15SettingsContentVMa(0);
  v27 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82[3] = a10;
  v82[4] = v75;
  v31 = sub_29D693F78(v82);
  (*(*(a10 - 8) + 32))(v31, v76, a10);
  v76 = a2;
  v68 = v30;
  sub_29D6E5560(a2, v30);
  sub_29D6945AC(v82, v81);
  v73 = v22;
  v32 = *(v22 + 16);
  v69 = v25;
  v75 = a6;
  v74 = v21;
  v66 = v32;
  v32(v25, a6, v21);
  v33 = sub_29D933F18();
  v64 = v65;
  v34 = sub_29D933F08();
  v79 = v33;
  v80 = &off_2A244CEA8;
  v78[0] = v34;
  v35 = objc_allocWithZone(type metadata accessor for AFibBurdenSpecifierDataSource(0));
  v36 = sub_29D693DDC(v78, v79);
  MEMORY[0x2A1C7C4A8](v36, v36);
  v38 = (&v63 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = *v38;
  v77[3] = v33;
  v77[4] = &off_2A244CEA8;
  v77[0] = v40;
  v63 = v34;
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {

    v41 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {

    v41 = MEMORY[0x29EDCA1A0];
  }

  v65 = objc_allocWithZone(type metadata accessor for AFibBurdenSettingsViewController(0));
  *&v35[qword_2A17B7828] = v41;
  v42 = &v35[qword_2A17B7830];
  *v42 = 0;
  *(v42 + 1) = 0;
  v43 = qword_2A17B7840;
  v44 = *(v27 + 56);
  v44(&v35[qword_2A17B7840], 1, 1, v26);
  *&v35[qword_2A17D0E28 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v35[qword_2A17D0E30 + 8] = 0;
  swift_unknownObjectWeakInit();
  v45 = &v35[qword_2A17B7810];
  v46 = BYTE1(v67);
  *v45 = v67 & 1;
  v45[1] = v46 & 1;
  *&v35[qword_2A17B7818] = v71;
  sub_29D6945AC(v81, &v35[qword_2A17B7820]);
  v47 = v26;
  v48 = v64;
  *&v35[qword_2A17B7838] = v64;
  v49 = v68;
  sub_29D6E5560(v68, v20);
  v44(v20, 0, 1, v47);
  swift_beginAccess();
  v50 = v48;
  swift_unknownObjectRetain();
  sub_29D6E55C4(v20, &v35[v43]);
  swift_endAccess();
  sub_29D6945AC(v77, &v35[qword_2A17B7848]);
  v51 = v70;
  v52 = v69;
  v53 = v74;
  v66(v70, v69, v74);
  v54 = v73;
  (*(v73 + 56))(v51, 0, 1, v53);
  HKImproveHealthAndActivityAnalyticsAllowed();
  v55 = sub_29D934C48();
  sub_29D8C9560();

  sub_29D936978();

  v56 = *(v54 + 8);
  v56(v52, v53);
  sub_29D69417C(v81);
  sub_29D6E5644(v49);
  sub_29D69417C(v77);
  sub_29D69417C(v78);
  sub_29D8CDEF8(&qword_2A17B1FF8, type metadata accessor for AFibBurdenSpecifierDataSource, &unk_29D953B90);
  v57 = v55;
  v58 = sub_29D9365D8();
  v59 = objc_opt_self();
  v60 = v58;
  v61 = [v59 aFibBurdenSectionTitle];
  if (!v61)
  {
    sub_29D939D68();
    v61 = sub_29D939D28();
  }

  [v60 setTitle_];

  v56(v75, v53);
  sub_29D6E5644(v76);
  sub_29D69417C(v82);
  return v60;
}

uint64_t sub_29D8CECD4(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 40);
  v4 = sub_29D936338();
  type metadata accessor for AFibBurdenEducationSectionGenerator();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = *(v2 + 24);
  *(v5 + 40) = v3;
  swift_unknownObjectRetain();
  v6 = sub_29D7CE120();

  return v6;
}

uint64_t sub_29D8CED54@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = 0xD000000000000013;
  *(a5 + 16) = 0x800000029D95C690;
  *(a5 + 24) = a2;
  *(a5 + 32) = a4;
  *(a5 + 40) = a3;
  return result;
}

__n128 sub_29D8CED80(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29D8CED94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_29D8CEDDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29D8CEE54(uint64_t a1)
{
  if (!qword_2A17B78B0)
  {
    sub_29D7CF5AC(255);
    sub_29D8CEEE8(&unk_2A17B5110, sub_29D7CF5AC, MEMORY[0x29EDC1E08]);
    v1 = sub_29D9357B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B78B0);
    }
  }
}

uint64_t sub_29D8CEEE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_29D8CEF30(unsigned __int8 a1)
{
  v2 = *(v1 + 16);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = objc_allocWithZone(type metadata accessor for BloodPressureJournalCreationBestPracticesViewController(0));
      v7 = &v6[qword_2A17B5BE8];
      *v7 = 0;
      *(v7 + 1) = 0;
      *&v6[qword_2A17B5BF0] = v2;
      *&v6[qword_2A17B5BF8] = *(v2 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bestPracticesManager);

      return sub_29D81C20C(0);
    }

    else
    {
      v11 = objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingCompletionViewController(0));

      return sub_29D75C9AC(v12);
    }
  }

  else if (a1)
  {
    v8 = objc_allocWithZone(type metadata accessor for BloodPressureJournalCreationNotificationSettingsViewController(0));

    v10 = sub_29D8BB554(v9);

    return v10;
  }

  else
  {
    v3 = objc_allocWithZone(type metadata accessor for BloodPressureJournalTypeSelectionViewController(0));

    return sub_29D85E914(v4);
  }
}

uint64_t type metadata accessor for HypertensionNotificationsSettingsCellViewController(uint64_t a1)
{
  result = qword_2A17B78B8;
  if (!qword_2A17B78B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8CF110()
{
  v1 = sub_29D939D68();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD00000000000002FLL, 0x800000029D96D0B0);

  return v1;
}

double (*sub_29D8CF180(uint64_t *a1))(uint64_t a1)
{
  v4 = sub_29D939D68();
  v5 = v2;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD00000000000002FLL, 0x800000029D96D0B0);

  *a1 = v4;
  a1[1] = v5;
  return sub_29D6C14A0;
}

void sub_29D8CF21C(int a1, id a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v6 = sub_29D937898();
    sub_29D69C6C0(v6, qword_2A1A2C008);
    v7 = a2;
    v8 = sub_29D937878();
    v9 = sub_29D93A288();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      v20 = a3;
      *v10 = 136446466;
      swift_getMetatypeMetadata();
      v12 = sub_29D939DA8();
      v14 = sub_29D6C2364(v12, v13, &v19);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v20 = a2;
      v15 = a2;
      sub_29D6A0CD0();
      v16 = sub_29D939DA8();
      v18 = sub_29D6C2364(v16, v17, &v19);

      *(v10 + 14) = v18;
      _os_log_impl(&dword_29D677000, v8, v9, "[%{public}s] Error when submitting analytics event: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v11, -1, -1);
      MEMORY[0x29ED6BE30](v10, -1, -1);
    }

    else
    {
    }
  }
}

id sub_29D8CF424(void *a1, uint64_t a2, uint64_t a3, void *a4)
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
  v11.super_class = type metadata accessor for HypertensionNotificationsSettingsCellViewController(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v7, a4);

  return v9;
}

id sub_29D8CF4C8(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for HypertensionNotificationsSettingsCellViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D8CF544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HypertensionNotificationsSettingsCellViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_29D8CF5AC(void *a1)
{
  v105 = a1;
  ObjectType = swift_getObjectType();
  v109 = sub_29D934C58();
  v107 = *(v109 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v109, v2);
  v104 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v96 - v6;
  sub_29D8D0488(0);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v101 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v96 - v13;
  v99 = sub_29D9371A8();
  v98 = *(v99 - 8);
  MEMORY[0x2A1C7C4A8](v99, v15);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D9346E8();
  v112 = *(v18 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v18, v19);
  v103 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v110 = &v96 - v24;
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v97 = &v96 - v27;
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v31 = &v96 - v30;
  MEMORY[0x2A1C7C4A8](v29, v32);
  v111 = &v96 - v33;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v34 = sub_29D937898();
  sub_29D69C6C0(v34, qword_2A1A2C008);
  v35 = sub_29D937878();
  v36 = sub_29D93A2A8();
  v37 = os_log_type_enabled(v35, v36);
  v108 = ObjectType;
  v106 = v7;
  v100 = v31;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock = v39;
    *v38 = 136315394;
    v40 = sub_29D93AF08();
    v42 = sub_29D6C2364(v40, v41, &aBlock);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_29D6C2364(0xD000000000000014, 0x800000029D959370, &aBlock);
    _os_log_impl(&dword_29D677000, v35, v36, "[%s.%s]: Presenting hypertension notifications settings view", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v39, -1, -1);
    MEMORY[0x29ED6BE30](v38, -1, -1);
  }

  result = sub_29D936738();
  v44 = v116;
  if (!v116)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v45 = *MEMORY[0x29EDBA6F0];
  v46 = sub_29D693E2C(&aBlock, v116);
  v47 = *(v44 - 1);
  MEMORY[0x2A1C7C4A8](v46, v46);
  v49 = &v96 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v47 + 16))(v49);
  v50 = sub_29D936588();
  (*(v47 + 8))(v49, v44);
  v51 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v45 healthStore:v50];

  sub_29D69417C(&aBlock);
  v52 = *MEMORY[0x29EDC1768];
  v53 = *(v112 + 104);
  v53(v111, v52, v18);
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v102 = v51;
  sub_29D937278();
  aBlock = sub_29D67BF28;
  v114 = 0;
  sub_29D76C9EC();
  sub_29D934D08();
  v54 = v101;
  sub_29D8D0500(v14, v101);
  v55 = sub_29D9349A8();
  v56 = *(v55 - 8);
  if ((*(v56 + 48))(v54, 1, v55) == 1)
  {
    sub_29D8D0564(v14, sub_29D8D0488);
    (*(v98 + 8))(v17, v99);
    v57 = v111;
    v58 = v112;
    (*(v112 + 8))(v111, v18);
    sub_29D8D0564(v54, sub_29D8D0488);
    v59 = v100;
    v53(v100, v52, v18);
    v60 = *(v58 + 32);
  }

  else
  {
    v61 = v97;
    sub_29D934958();
    sub_29D8D0564(v14, sub_29D8D0488);
    (*(v98 + 8))(v17, v99);
    v57 = v111;
    v58 = v112;
    (*(v112 + 8))(v111, v18);
    (*(v56 + 8))(v54, v55);
    v60 = *(v58 + 32);
    v59 = v100;
    v60(v100, v61, v18);
  }

  v62 = v109;
  v63 = v107;
  v60(v57, v59, v18);
  v64 = *(v58 + 16);
  v64(v110, v57, v18);
  v65 = v106;
  (v63[13])(v106, *MEMORY[0x29EDC1BF0], v62);
  result = sub_29D936738();
  v66 = v116;
  if (!v116)
  {
    goto LABEL_15;
  }

  v67 = sub_29D693E2C(&aBlock, v116);
  v107 = &v96;
  v68 = *(v66 - 1);
  MEMORY[0x2A1C7C4A8](v67, v67);
  v70 = &v96 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v68 + 16))(v70);
  v71 = sub_29D936588();
  (*(v68 + 8))(v70, v66);
  v72 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsViewController(0));
  v73 = v103;
  v64(v103, v110, v18);
  v74 = v104;
  (v63[2])(v104, v65, v62);
  v75 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsSpecifierDataSource(0));
  v76 = v71;
  v77 = sub_29D7BB5B4(v73, v74, v76);
  sub_29D8C8CE0();
  v78 = v77;
  v79 = sub_29D9365D8();
  v80 = qword_2A17B0D68;
  v81 = v79;
  v109 = v18;
  if (v80 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v82 = sub_29D939D28();

  [v81 setTitle_];

  static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243D990);
  swift_arrayDestroy();
  v83 = sub_29D939D28();

  [v81 setAccessibilityIdentifier_];

  (v63[1])(v65, v62);
  v84 = *(v112 + 8);
  v84(v110, v109);
  sub_29D69417C(&aBlock);
  [v105 showViewController:v81 sender:0];
  type metadata accessor for HypertensionNotificationRoomInteractionEvent();
  v85 = swift_allocObject();
  *(v85 + 16) = 1286;
  *(v85 + 18) = 2;
  v86 = HKLogHeartRateCategory();
  result = sub_29D936738();
  v87 = v116;
  if (v116)
  {
    v88 = sub_29D693E2C(&aBlock, v116);
    v89 = *(v87 - 1);
    MEMORY[0x2A1C7C4A8](v88, v88);
    v91 = &v96 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v89 + 16))(v91);
    v92 = sub_29D936588();
    (*(v89 + 8))(v91, v87);
    v93 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v86 healthDataSource:v92];

    sub_29D69417C(&aBlock);
    v94 = swift_allocObject();
    *(v94 + 16) = v108;
    v117 = sub_29D8D04E0;
    v118 = v94;
    aBlock = MEMORY[0x29EDCA5F8];
    v114 = 1107296256;
    v115 = sub_29D8E44F0;
    v116 = &unk_2A244D368;
    v95 = _Block_copy(&aBlock);

    [v93 submitEvent:v85 completion:v95];
    _Block_release(v95);

    return (v84)(v111, v109);
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_29D8D0488(uint64_t a1)
{
  if (!qword_2A1A24720)
  {
    sub_29D9349A8();
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24720);
    }
  }
}

uint64_t sub_29D8D04E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D8D0500(uint64_t a1, uint64_t a2)
{
  sub_29D8D0488(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8D0564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D8D0630@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1760];
  v3 = sub_29D9346E8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D8D06A4(uint64_t a1)
{
  swift_getObjectType();
  sub_29D8D0F88(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_2A17B78C8 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_29D92F7AC();
  v7 = sub_29D934C58();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = sub_29D934C48();
  (*(v8 + 8))(a1, v7);
  return v9;
}

uint64_t sub_29D8D0934(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_2A17B78C8;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D936978();
}

void (*sub_29D8D09A0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17B78C8;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D705FAC;
}

void (*sub_29D8D0A48(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_29D936958();
  return sub_29D69F0C0;
}

uint64_t sub_29D8D0AD0@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v2 = sub_29D9346E8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ElectrocardiogramRecordingHealthChecklistFeedItemProvider();
  swift_initStackObject();
  sub_29D907334(0, 0xE000000000000000);
  (*(v3 + 104))(v6, *MEMORY[0x29EDC1760], v2);
  sub_29D935E88();
  sub_29D9347C8();
  sub_29D9347A8();
  (*(v3 + 8))(v6, v2);
  sub_29D92F7C4();
  sub_29D9368C8();

  v7 = sub_29D9368F8();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

id sub_29D8D0CA0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = sub_29D934C58();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = objc_allocWithZone(type metadata accessor for ElectrocardiogramSpecifierDataSource(0));
  v9 = sub_29D8D06A4(v7);
  sub_29D8D0F30();
  v10 = v9;
  v11 = sub_29D9365D8();
  sub_29D92F7E0();
  v12 = sub_29D939D28();

  [v11 setTitle_];

  (*(v4 + 8))(a1, v3);
  return v11;
}

id sub_29D8D0EE8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_29D8D0F30()
{
  result = qword_2A17B78F0;
  if (!qword_2A17B78F0)
  {
    type metadata accessor for ElectrocardiogramSpecifierDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B78F0);
  }

  return result;
}

void sub_29D8D0F88(uint64_t a1)
{
  if (!qword_2A17B1FF0)
  {
    sub_29D934C58();
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1FF0);
    }
  }
}

uint64_t sub_29D8D0FE0(uint64_t a1, char a2, void *a3)
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

    return swift_continuation_throwingResume();
  }
}

id sub_29D8D10A0(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *(v1 + 32);
  }

  else
  {
    v4 = HKLogHeartRateCategory();
    v5 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v4 healthDataSource:*(v1 + 16)];

    v6 = *(v1 + 32);
    *(v1 + 32) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_29D8D1130(char a1, char a2, int a3, uint64_t a4, int a5, int a6)
{
  v31 = a5;
  v32 = a6;
  v30 = a3;
  v10 = *v6;
  v11 = MEMORY[0x29EDC9C68];
  sub_29D8D5AD4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v15);
  v17 = &v29[-v16];
  sub_29D8D5AD4(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], v11);
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v21 = &v29[-v20];
  v22 = sub_29D93A028();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  sub_29D6A0A20(a4, v17);
  v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_29D6B1204(v17, v25 + v23);
  v26 = v25 + v24;
  *v26 = v6;
  *(v26 + 8) = a1;
  *(v26 + 9) = a2;
  v27 = v31;
  *(v26 + 10) = v30;
  *(v26 + 11) = v27;
  *(v26 + 12) = v32;
  *(v25 + ((v24 + 20) & 0xFFFFFFFFFFFFFFF8)) = v10;

  sub_29D6BEBA4(0, 0, v21, &unk_29D953F88, v25);
}

uint64_t sub_29D8D13A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v8 + 168) = a5;
  *(v8 + 176) = v13;
  *(v8 + 412) = v12;
  *(v8 + 411) = a8;
  *(v8 + 410) = a7;
  *(v8 + 409) = a6;
  *(v8 + 160) = a4;
  v9 = sub_29D9339F8();
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_29D8D5AD4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  *(v8 + 224) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D8D14F8, 0, 0);
}

uint64_t sub_29D8D14F8()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  v4 = sub_29D939D68();
  v6 = v5;
  v7 = *MEMORY[0x29EDBA360];
  v0[29] = *MEMORY[0x29EDBA360];
  v8 = [v7 integerValue];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v9 = v0[28];
    v10 = v0[23];
    v11 = v0[24];
    v12 = v0[20];

    v4 = sub_29D8D29EC(v12);
    v6 = v13;
    sub_29D9339A8();
    (*(v11 + 56))(v9, 0, 1, v10);
    v8 = sub_29D8D4270(v9, v12);
    sub_29D6A0D34(v9);
  }

  v0[30] = v8;
  v0[31] = v6;
  v14 = v0[21];
  v0[32] = v4;
  v0[33] = *(v14 + 40);
  v15 = swift_task_alloc();
  v0[34] = v15;
  *v15 = v0;
  v15[1] = sub_29D8D1678;

  return sub_29D6B41B0();
}

uint64_t sub_29D8D1678(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = v2;

  if (v2)
  {

    v5 = sub_29D8D2368;
  }

  else
  {
    v5 = sub_29D8D1798;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D8D1798(uint64_t a1)
{
  sub_29D9339E8();
  v2 = swift_task_alloc();
  *(v1 + 304) = v2;
  *v2 = v1;
  v2[1] = sub_29D8D1830;

  return sub_29D6B4650();
}

uint64_t sub_29D8D1830(uint64_t a1)
{
  v3 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  if (v1)
  {
    (*(v3[24] + 8))(v3[27], v3[23]);

    v4 = sub_29D8D1ACC;
  }

  else
  {
    v4 = sub_29D8D197C;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D8D197C()
{
  v1 = *(v0 + 312);
  if (v1)
  {
    v3 = *(v0 + 208);
    v2 = *(v0 + 216);
    v4 = *(v0 + 184);
    v5 = *(v0 + 192);
    v6 = [*(v0 + 312) startDate];
    sub_29D933998();

    v7 = sub_29D6B4DEC(v2, v3);
    v8 = *(v5 + 8);
    v9 = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v3, v4);
  }

  else
  {
    v10 = *(v0 + 192);
    v7 = [*(v0 + 232) integerValue];
    v8 = *(v10 + 8);
    v9 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  *(v0 + 328) = v8;
  *(v0 + 336) = v7;
  v11 = *(v0 + 216);
  v12 = *(v0 + 184);
  *(v0 + 344) = v9;
  v8(v11, v12);
  v13 = swift_task_alloc();
  *(v0 + 352) = v13;
  *v13 = v0;
  v13[1] = sub_29D8D1CF0;

  return sub_29D8D5158();
}

uint64_t sub_29D8D1ACC()
{
  v17 = v0;
  v1 = *(v0 + 320);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2C008);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136446466;
    v9 = sub_29D93AF08();
    v11 = sub_29D6C2364(v9, v10, &v16);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] [Logging Analytics] Failed to submit analytics with error: %@", v6, 0x16u);
    sub_29D6ACA3C(v7);
    MEMORY[0x29ED6BE30](v7, -1, -1);
    sub_29D69417C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_29D8D1CF0(char a1)
{
  v2 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 144) = v1;

  return MEMORY[0x2A1C73D48](sub_29D8D1DF4, 0, 0);
}

uint64_t sub_29D8D1DF4(uint64_t a1)
{
  sub_29D9339E8();
  v2 = swift_task_alloc();
  *(v1 + 360) = v2;
  *v2 = v1;
  v2[1] = sub_29D8D1E94;
  v3 = *(v1 + 200);

  return sub_29D8D4938(v3);
}

uint64_t sub_29D8D1E94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    (*(v4 + 328))(*(v4 + 200), *(v4 + 184));

    v5 = sub_29D8D258C;
  }

  else
  {
    v6 = *(v4 + 152);
    v7 = *(v4 + 328);
    v8 = *(v4 + 200);
    v9 = *(v4 + 184);
    *(v4 + 376) = a1;
    *(v4 + 414) = v6;
    v7(v8, v9);
    v5 = sub_29D8D2000;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D8D2000()
{
  v1 = v0;
  v16 = *(v0 + 414);
  v17 = v0 + 16;
  v18 = v0 + 408;
  v15 = *(v0 + 376);
  v2 = *(v0 + 336);
  v14 = *(v0 + 280);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);
  v6 = *(v0 + 412);
  v7 = *(v0 + 411);
  v8 = *(v1 + 409);
  type metadata accessor for BloodPressureJournalLoggingAnalyticsEvent();
  v9 = swift_allocObject();
  *(v1 + 384) = v9;
  *(v9 + 16) = v8;
  *(v9 + 18) = v7;
  *(v9 + 24) = v4;
  *(v9 + 32) = v3;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 50) = v16;
  *(v9 + 56) = v14;
  *(v9 + 72) = v2;
  *(v9 + 80) = v15;
  v10 = sub_29D8D10A0(v9);
  *(v1 + 392) = v10;
  *(v1 + 16) = v1;
  *(v1 + 56) = v18;
  *(v1 + 24) = sub_29D8D21C4;
  v11 = swift_continuation_init();
  sub_29D6ACB00(0);
  *(v1 + 136) = v12;
  *(v1 + 80) = MEMORY[0x29EDCA5F8];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_29D8D0FE0;
  *(v1 + 104) = &unk_2A244D3D0;
  *(v1 + 112) = v11;
  [v10 submitEvent:v9 completion:?];

  return MEMORY[0x2A1C73CC0](v17);
}

uint64_t sub_29D8D21C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_29D8D27B0;
  }

  else
  {
    v2 = sub_29D8D22D4;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D8D22D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D8D2368()
{
  v17 = v0;
  v1 = *(v0 + 296);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2C008);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136446466;
    v9 = sub_29D93AF08();
    v11 = sub_29D6C2364(v9, v10, &v16);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] [Logging Analytics] Failed to submit analytics with error: %@", v6, 0x16u);
    sub_29D6ACA3C(v7);
    MEMORY[0x29ED6BE30](v7, -1, -1);
    sub_29D69417C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_29D8D258C()
{
  v17 = v0;
  v1 = *(v0 + 368);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2C008);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136446466;
    v9 = sub_29D93AF08();
    v11 = sub_29D6C2364(v9, v10, &v16);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] [Logging Analytics] Failed to submit analytics with error: %@", v6, 0x16u);
    sub_29D6ACA3C(v7);
    MEMORY[0x29ED6BE30](v7, -1, -1);
    sub_29D69417C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_29D8D27B0(uint64_t a1)
{
  v19 = v1;
  v2 = v1[49];
  swift_willThrow();

  v3 = v1[50];
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = v3;
  v6 = sub_29D937878();
  v7 = sub_29D93A288();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v3;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] [Logging Analytics] Failed to submit analytics with error: %@", v8, 0x16u);
    sub_29D6ACA3C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    sub_29D69417C(v10);
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  else
  {
  }

  v16 = v1[1];

  return v16();
}

uint64_t sub_29D8D29EC(uint64_t a1)
{
  v2 = v1;
  v188 = *v2;
  v201 = sub_29D933B68();
  v207 = *(v201 - 8);
  MEMORY[0x2A1C7C4A8](v201, v4);
  v200 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_29D933BA8();
  v210 = *(v199 - 8);
  MEMORY[0x2A1C7C4A8](v199, v6);
  v198 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_29D933B28();
  v206 = *(v209 - 8);
  MEMORY[0x2A1C7C4A8](v209, v8);
  v197 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D933CE8();
  v208 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v196 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x29EDC9C68];
  sub_29D8D5AD4(0, &qword_2A17B3428, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v194 = &v157 - v16;
  sub_29D8D5AD4(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18], v13);
  MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v193 = &v157 - v19;
  v195 = sub_29D933318();
  v202 = *(v195 - 8);
  MEMORY[0x2A1C7C4A8](v195, v20);
  v205 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8D5AD4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], v13);
  v24 = MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v184 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v29 = &v157 - v28;
  v31 = MEMORY[0x2A1C7C4A8](v27, v30);
  v33 = &v157 - v32;
  v35 = MEMORY[0x2A1C7C4A8](v31, v34);
  v189 = &v157 - v36;
  MEMORY[0x2A1C7C4A8](v35, v37);
  v39 = &v157 - v38;
  v40 = sub_29D9339F8();
  v41 = *(v40 - 8);
  v43 = MEMORY[0x2A1C7C4A8](v40, v42);
  v183 = &v157 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x2A1C7C4A8](v43, v45);
  v185 = &v157 - v47;
  v49 = MEMORY[0x2A1C7C4A8](v46, v48);
  v51 = &v157 - v50;
  v53 = MEMORY[0x2A1C7C4A8](v49, v52);
  v204 = &v157 - v54;
  v56 = MEMORY[0x2A1C7C4A8](v53, v55);
  v58 = &v157 - v57;
  MEMORY[0x2A1C7C4A8](v56, v59);
  v203 = &v157 - v60;
  sub_29D6A0A20(a1, v39);
  v191 = *(v41 + 48);
  v192 = v41 + 48;
  if (v191(v39, 1, v40) != 1)
  {
    v159 = v33;
    v157 = v29;
    v160 = v51;
    v182 = v58;
    v190 = v41;
    v61 = *(v41 + 32);
    v181 = v41 + 32;
    v180 = v61;
    v61(v203, v39, v40);
    v62 = *(v208 + 56);
    v179 = v208 + 56;
    v178 = v62;
    v62(v193, 1, 1, v10);
    v63 = sub_29D933D38();
    v64 = *(v63 - 8);
    v65 = *(v64 + 56);
    v177 = v63;
    v176 = v65;
    v175 = v64 + 56;
    (v65)(v194, 1, 1);
    sub_29D933308();
    sub_29D9332D8();
    sub_29D9332F8();
    v66 = v196;
    sub_29D933C88();
    sub_29D933AD8();
    v67 = *MEMORY[0x29EDB9C80];
    v186 = v10;
    v68 = v206;
    v69 = *(v206 + 104);
    v70 = v197;
    v173 = v67;
    v174 = v206 + 104;
    v172 = v69;
    v69(v197);
    v71 = *(v210 + 104);
    v72 = v198;
    v170 = *MEMORY[0x29EDB9C98];
    v73 = v199;
    v171 = v210 + 104;
    v169 = v71;
    v71(v198);
    v74 = *MEMORY[0x29EDB9C90];
    v75 = v207;
    v76 = *(v207 + 104);
    v187 = v40;
    v77 = v200;
    v167 = v74;
    v78 = v201;
    v168 = v207 + 104;
    v166 = v76;
    v76(v200);
    v79 = v189;
    v80 = v205;
    sub_29D933C98();
    v81 = *(v75 + 8);
    v82 = v77;
    v83 = v187;
    v207 = v75 + 8;
    v165 = v81;
    v81(v82, v78);
    v84 = *(v210 + 8);
    v210 += 8;
    v164 = v84;
    v84(v72, v73);
    v85 = *(v68 + 8);
    v86 = v208;
    v206 = v68 + 8;
    v163 = v85;
    v85(v70, v209);
    v87 = v186;
    v88 = v190 + 8;
    v89 = *(v190 + 8);
    v89(v204, v83);
    v91 = *(v86 + 8);
    v90 = v86 + 8;
    v162 = v91;
    v91(v66, v87);
    v93 = v202 + 8;
    v92 = *(v202 + 8);
    v92(v80, v195);
    v94 = v79;
    if (v191(v79, 1, v83) == 1)
    {
      v95 = v203;
    }

    else
    {
      v180(v182, v79, v83);
      v208 = v90;
      v161 = v89;
      v158 = v92;
      v178(v193, 1, 1, v87);
      v176(v194, 1, 1, v177);
      v96 = v205;
      sub_29D933308();
      v190 = v88;
      sub_29D9332D8();
      sub_29D9332F8();
      v97 = v196;
      sub_29D933C88();
      v98 = v204;
      sub_29D933AD8();
      v202 = v93;
      v99 = v197;
      v172(v197, v173, v209);
      v100 = v198;
      v101 = v199;
      v169(v198, v170, v199);
      v102 = v200;
      v103 = v201;
      v166(v200, v167, v201);
      v104 = v159;
      sub_29D933C98();
      v105 = v102;
      v83 = v187;
      v165(v105, v103);
      v106 = v100;
      v107 = v186;
      v108 = v104;
      v164(v106, v101);
      v163(v99, v209);
      v161(v98, v83);
      v162(v97, v107);
      v158(v96, v195);
      if (v191(v104, 1, v83) == 1)
      {
        v95 = v203;
        v89 = v161;
        v161(v182, v83);
      }

      else
      {
        v180(v160, v104, v83);
        v178(v193, 1, 1, v107);
        v176(v194, 1, 1, v177);
        v109 = v205;
        sub_29D933308();
        sub_29D9332D8();
        sub_29D9332F8();
        v110 = v196;
        sub_29D933C88();
        v111 = v204;
        sub_29D933AD8();
        v112 = v197;
        v172(v197, v173, v209);
        v113 = v198;
        v114 = v199;
        v169(v198, v170, v199);
        v115 = v200;
        v116 = v201;
        v166(v200, v167, v201);
        v117 = v157;
        sub_29D933C98();
        v118 = v115;
        v83 = v187;
        v165(v118, v116);
        v164(v113, v114);
        v163(v112, v209);
        v119 = v111;
        v120 = v186;
        v89 = v161;
        v161(v119, v83);
        v121 = v110;
        v122 = v158;
        v162(v121, v120);
        v122(v109, v195);
        if (v191(v117, 1, v83) == 1)
        {
          v95 = v203;
          v123 = v117;
        }

        else
        {
          v180(v185, v117, v83);
          v178(v193, 1, 1, v120);
          v176(v194, 1, 1, v177);
          v124 = v205;
          sub_29D933308();
          sub_29D9332D8();
          sub_29D9332F8();
          v125 = v196;
          sub_29D933C88();
          v126 = v204;
          sub_29D933AD8();
          v127 = v197;
          v172(v197, v173, v209);
          v129 = v198;
          v128 = v199;
          v169(v198, v170, v199);
          v131 = v200;
          v130 = v201;
          v166(v200, v167, v201);
          v132 = v184;
          sub_29D933C98();
          v133 = v131;
          v83 = v187;
          v165(v133, v130);
          v134 = v128;
          v135 = v161;
          v164(v129, v134);
          v163(v127, v209);
          v135(v126, v83);
          v136 = v125;
          v123 = v132;
          v162(v136, v186);
          v158(v124, v195);
          if (v191(v132, 1, v83) != 1)
          {
            v147 = v135;
            v148 = v183;
            v180(v183, v123, v83);
            v149 = v203;
            v150 = v182;
            v151 = sub_29D933968();
            v152 = v160;
            if ((v151 & 1) != 0 && (sub_29D702F18(), (sub_29D939CB8() & 1) == 0))
            {
              v147(v148, v83);
              v147(v185, v83);
              v147(v152, v83);
              v147(v150, v83);
              v147(v149, v83);
              v156 = 1852993389;
            }

            else
            {
              v153 = sub_29D933968();
              v154 = v185;
              if (v153)
              {
                sub_29D702F18();
                if ((sub_29D939CB8() & 1) == 0)
                {
                  v147(v148, v83);
                  v147(v154, v83);
                  v147(v152, v83);
                  v147(v150, v83);
                  v147(v149, v83);
                  return 0x6F6F6E7265746661;
                }
              }

              if (sub_29D933968() & 1) == 0 || (sub_29D702F18(), (sub_29D939CB8()))
              {
                if ((sub_29D933968() & 1) != 0 && (sub_29D702F18(), (sub_29D939CB8() & 1) == 0))
                {
                  v147(v148, v83);
                  v147(v154, v83);
                  v147(v152, v83);
                  v147(v150, v83);
                  v147(v149, v83);
                  return 0x746867696ELL;
                }

                else
                {
                  v155 = sub_29D939D68();
                  v147(v148, v83);
                  v147(v154, v83);
                  v147(v152, v83);
                  v147(v150, v83);
                  v147(v149, v83);
                  return v155;
                }
              }

              v147(v148, v83);
              v147(v154, v83);
              v147(v152, v83);
              v147(v150, v83);
              v147(v149, v83);
              v156 = 1852143205;
            }

            return v156 | 0x676E6900000000;
          }

          v95 = v203;
          v135(v185, v83);
          v89 = v135;
        }

        v137 = v182;
        v89(v160, v83);
        v108 = v123;
        v89(v137, v83);
      }

      v94 = v108;
    }

    v89(v95, v83);
    v39 = v94;
  }

  sub_29D6A0D34(v39);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v138 = sub_29D937898();
  sub_29D69C6C0(v138, qword_2A1A2C008);
  v139 = sub_29D937878();
  v140 = sub_29D93A288();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v211 = v142;
    *v141 = 136446210;
    v143 = sub_29D93AF08();
    v145 = sub_29D6C2364(v143, v144, &v211);

    *(v141 + 4) = v145;
    _os_log_impl(&dword_29D677000, v139, v140, "[%{public}s] [Logging Analytics] Failed to create dates for window type calculations", v141, 0xCu);
    sub_29D69417C(v142);
    MEMORY[0x29ED6BE30](v142, -1, -1);
    MEMORY[0x29ED6BE30](v141, -1, -1);
  }

  return sub_29D939D68();
}

uint64_t sub_29D8D4270(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v54 = *v2;
  v4 = sub_29D933CE8();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D933318();
  v57 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8D5AD4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v13 = MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v52 - v17;
  v19 = sub_29D9339F8();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v58 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = &v52 - v25;
  sub_29D6A0A20(a1, v18);
  v27 = *(v20 + 48);
  if (v27(v18, 1, v19) == 1)
  {
    v15 = v18;
LABEL_5:
    sub_29D6A0D34(v15);
    return [*MEMORY[0x29EDBA360] integerValue];
  }

  v53 = v8;
  v28 = *(v20 + 32);
  v28(v26, v18, v19);
  sub_29D6A0A20(v60, v15);
  if (v27(v15, 1, v19) == 1)
  {
    (*(v20 + 8))(v26, v19);
    goto LABEL_5;
  }

  v30 = v58;
  v28(v58, v15, v19);
  v31 = v30;
  sub_29D933C88();
  sub_29D8D5AD4(0, &qword_2A17B1A90, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v32 = sub_29D933CC8();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_29D93DDB0;
  (*(v33 + 104))(v35 + v34, *MEMORY[0x29EDB9CC8], v32);
  sub_29D6E3748(v35);
  swift_setDeallocating();
  (*(v33 + 8))(v35 + v34, v32);
  swift_deallocClassInstance();
  v36 = v59;
  sub_29D933B38();

  (*(v55 + 8))(v7, v56);
  v37 = sub_29D9332C8();
  if ((v38 & 1) == 0)
  {
    v50 = v37;
    (*(v57 + 8))(v36, v53);
    v51 = *(v20 + 8);
    v20 += 8;
    v51(v31, v19);
    v51(v26, v19);
    result = v50;
    if ((v50 & 0x8000000000000000) == 0)
    {
      return result;
    }

    result = -v50;
    if (!__OFSUB__(0, v50))
    {
      return result;
    }

    __break(1u);
    goto LABEL_16;
  }

  v34 = v53;
  if (qword_2A1A25718 != -1)
  {
LABEL_16:
    swift_once();
  }

  v39 = sub_29D937898();
  sub_29D69C6C0(v39, qword_2A1A2C008);
  v40 = sub_29D937878();
  v41 = sub_29D93A288();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v61 = v43;
    *v42 = 136446210;
    v44 = sub_29D93AF08();
    v46 = sub_29D6C2364(v44, v45, &v61);

    *(v42 + 4) = v46;
    v31 = v58;
    _os_log_impl(&dword_29D677000, v40, v41, "[%{public}s] [Logging Analytics] Failed to compute difference in hours", v42, 0xCu);
    sub_29D69417C(v43);
    v47 = v43;
    v36 = v59;
    MEMORY[0x29ED6BE30](v47, -1, -1);
    MEMORY[0x29ED6BE30](v42, -1, -1);
  }

  v48 = [*MEMORY[0x29EDBA360] integerValue];
  (*(v57 + 8))(v36, v34);
  v49 = *(v20 + 8);
  v49(v31, v19);
  v49(v26, v19);
  return v48;
}

uint64_t sub_29D8D4938(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_29D9339F8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_29D8D5A00(0, &qword_2A17B2908, &unk_2A17B37A0, 0x29EDBAD60, MEMORY[0x29EDBA238]);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_29D8D5A00(0, &qword_2A17B2918, &unk_2A17B37A0, 0x29EDBAD60, MEMORY[0x29EDBA210]);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D8D4B08, 0, 0);
}

uint64_t sub_29D8D4B08()
{
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  v1 = [swift_getObjCClassFromMetadata() hypertensionEventType];
  if (v1)
  {
    v3 = v1;
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[10];
    v14 = v0[3];
    sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
    sub_29D939AB8();

    sub_29D8D5A68(0, &qword_2A17B2910, &qword_2A17B2918, MEMORY[0x29EDBA210]);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_29D93DDB0;
    (*(v5 + 16))(v8 + v7, v4, v6);
    v9 = MEMORY[0x29EDB9980];
    sub_29D8D5A68(0, &qword_2A17B2920, &qword_2A17B2928, MEMORY[0x29EDB9980]);
    sub_29D8D5A00(0, &qword_2A17B2928, &unk_2A17B37A0, 0x29EDBAD60, v9);
    *(swift_allocObject() + 16) = xmmword_29D93DDB0;
    KeyPath = swift_getKeyPath();
    MEMORY[0x29ED63750](KeyPath, 1);
    sub_29D939B28();
    v11 = *(v14 + 16);
    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_29D8D4DB8;
    v2 = v0[7];
    v1 = v11;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2A1C5B578](v1, v2);
}

uint64_t sub_29D8D4DB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_29D8D5098;
  }

  else
  {
    v4 = sub_29D8D4ECC;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D8D4ECC()
{
  v1 = v0[14];
  if (v1 >> 62)
  {
    result = sub_29D93A928();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v9 = [*MEMORY[0x29EDBA360] integerValue];
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x29ED6AE30](0, v0[14]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[14] + 32);
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  v8 = [v3 startDate];
  sub_29D933998();

  v9 = sub_29D6B4DEC(v7, v4);
  (*(v5 + 8))(v4, v6);
LABEL_9:
  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v11 + 8))(v10, v12);

  v13 = v0[1];

  return v13(v9);
}

uint64_t sub_29D8D5098()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D8D5158()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_29D8D5A00(0, &qword_2A17B2908, &unk_2A17B37A0, 0x29EDBAD60, MEMORY[0x29EDBA238]);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D8D526C, 0, 0);
}

uint64_t sub_29D8D526C()
{
  v1 = MEMORY[0x29EDBA210];
  sub_29D8D5A68(0, &qword_2A17B2910, &qword_2A17B2918, MEMORY[0x29EDBA210]);
  sub_29D8D5A00(0, &qword_2A17B2918, &unk_2A17B37A0, 0x29EDBAD60, v1);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  v2 = [swift_getObjCClassFromMetadata() bloodPressureType];
  if (v2)
  {
    v4 = v2;
    v5 = v0[2];
    sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
    sub_29D939AB8();

    v6 = MEMORY[0x29EDB9980];
    sub_29D8D5A68(0, &qword_2A17B2920, &qword_2A17B2928, MEMORY[0x29EDB9980]);
    sub_29D8D5A00(0, &qword_2A17B2928, &unk_2A17B37A0, 0x29EDBAD60, v6);
    *(swift_allocObject() + 16) = xmmword_29D93DDB0;
    KeyPath = swift_getKeyPath();
    MEMORY[0x29ED63750](KeyPath, 1);
    sub_29D939B28();
    v8 = *(v5 + 16);
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_29D8D5560;
    v3 = v0[4];
    v2 = v8;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2A1C5B578](v2, v3);
}

uint64_t sub_29D8D5560(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_29D8D573C;
  }

  else
  {
    v4 = sub_29D8D5674;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D8D5674()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    v2 = sub_29D93A928();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6(v2 == 0);
}

uint64_t sub_29D8D573C()
{
  v24 = v0;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2C008);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  if (v6)
  {
    v22 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 136446466;
    v14 = sub_29D93AF08();
    v21 = v8;
    v16 = sub_29D6C2364(v14, v15, &v23);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] [Logging Analytics] Failed to fetch latest blood pressure sample: %@", v11, 0x16u);
    sub_29D6ACA3C(v12);
    MEMORY[0x29ED6BE30](v12, -1, -1);
    sub_29D69417C(v13);
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);

    (*(v9 + 8))(v21, v22);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v19 = v0[1];

  return v19(2);
}

void sub_29D8D597C(id *a1)
{
  v1 = [*a1 endDate];
  sub_29D933998();
}

void sub_29D8D5A00(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D69567C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D8D5A68(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D8D5A00(255, a3, &unk_2A17B37A0, 0x29EDBAD60, a4);
    v5 = sub_29D93AD48();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D8D5AD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8D5B38(uint64_t a1)
{
  sub_29D8D5AD4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = *(v1 + 24);
  v13 = *(v1 + 16);
  v6 = v1 + ((*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 10);
  v9 = *(v6 + 9);
  v10 = *(v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29D6AC948;

  return sub_29D8D13A4(a1, v13, v5, v1 + v4, v7, v10, v9, v8);
}

void sub_29D8D5CEC()
{
  ObjectType = swift_getObjectType();
  v2 = (v0 + OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context);
  swift_beginAccess();
  v3 = v2[3];
  if (v3)
  {
    v4 = sub_29D693E2C(v2, v2[3]);
    v5 = *(v3 - 8);
    MEMORY[0x2A1C7C4A8](v4, v4);
    v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_29D9365B8();
    v10 = v9;
    (*(v5 + 8))(v7, v3);
    if (v10 >> 60 == 15)
    {
      if (qword_2A1A24660 != -1)
      {
        swift_once();
      }

      v11 = sub_29D937898();
      sub_29D69C6C0(v11, qword_2A1A2BF28);
      v12 = sub_29D937878();
      v13 = sub_29D93A298();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v31 = v15;
        *v14 = 136446210;
        v32 = ObjectType;
        swift_getMetatypeMetadata();
        v16 = sub_29D939DA8();
        v18 = sub_29D6C2364(v16, v17, &v31);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s] No user data found, expected related sample types cache object", v14, 0xCu);
        sub_29D69417C(v15);
        MEMORY[0x29ED6BE30](v15, -1, -1);
        MEMORY[0x29ED6BE30](v14, -1, -1);
      }
    }

    else
    {
      if (qword_2A1A24660 != -1)
      {
        swift_once();
      }

      v19 = sub_29D937898();
      sub_29D69C6C0(v19, qword_2A1A2BF28);
      v20 = sub_29D937878();
      v21 = sub_29D93A2A8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v30 = v8;
        v24 = v23;
        v31 = v23;
        *v22 = 136446210;
        v32 = ObjectType;
        swift_getMetatypeMetadata();
        v25 = sub_29D939DA8();
        v27 = sub_29D6C2364(v25, v26, &v31);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s] Cache object set, decoding", v22, 0xCu);
        sub_29D69417C(v24);
        v28 = v24;
        v8 = v30;
        MEMORY[0x29ED6BE30](v28, -1, -1);
        MEMORY[0x29ED6BE30](v22, -1, -1);
      }

      sub_29D9330D8();
      swift_allocObject();
      sub_29D9330C8();
      sub_29D8D747C();
      sub_29D9330B8();

      sub_29D8D6278(v32);
      sub_29D71847C(v8, v10);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29D8D6278(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_cacheObject;
  *(v1 + OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_cacheObject) = a1;

  v3 = *(v1 + OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_tileView);
  if (v3)
  {
    v4 = *(v1 + v2);
    if (v4)
    {
      v5 = v3;
      sub_29D935E88();
      v6 = sub_29D84195C();
      sub_29D784264(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_29D8D6338(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_cacheObject] = 0;
  *&v3[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_tileView] = 0;
  if (a2)
  {
    v6 = sub_29D939D28();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for AFibBurdenLifeFactorsTileViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id sub_29D8D6448(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_cacheObject] = 0;
  *&v1[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_tileView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AFibBurdenLifeFactorsTileViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_29D8D6508()
{
  v1 = *&v0[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_cacheObject];
  if (v1)
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context;
    swift_beginAccess();
    sub_29D718208(v2 + v3, v16);
    v4 = v17;
    if (v17)
    {
      v5 = sub_29D693E2C(v16, v17);
      v6 = *(v4 - 8);
      MEMORY[0x2A1C7C4A8](v5, v5);
      v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v6 + 16))(v8);
      sub_29D935E88();
      v9 = sub_29D936588();
      (*(v6 + 8))(v8, v4);
      v10 = objc_allocWithZone(type metadata accessor for AFibBurdenLifeFactorsTileView());
      v11 = v2;
      v12 = sub_29D8D74D0(v1, v9, v11, v10);
      sub_29D69417C(v16);
      v13 = *&v11[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_tileView];
      *&v11[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_tileView] = v12;
      v14 = v12;

      [v11 setView_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_29D8D6718(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AFibBurdenLifeFactorsTileViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D8D67CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context;
  swift_beginAccess();
  return sub_29D718208(v1 + v3, a1);
}

uint64_t sub_29D8D6824(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context;
  swift_beginAccess();
  sub_29D718124(a1, v1 + v3);
  swift_endAccess();
  sub_29D8D5CEC();
  return sub_29D822AD8(a1);
}

void (*sub_29D8D6890(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D8D68F4;
}

void sub_29D8D68F4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_29D8D5CEC();
  }
}

void sub_29D8D6928()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context;
  swift_beginAccess();
  sub_29D718208(v0 + v2, v24);
  v3 = v25;
  if (!v25)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = sub_29D693E2C(v24, v25);
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v4, v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = sub_29D936588();
  (*(v5 + 8))(v7, v3);
  v9 = [v8 displayTypeController];

  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_29D6AA400();
  v10 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  v11 = [v9 displayTypeForObjectType_];

  sub_29D69417C(v24);
  if (v11)
  {
    v12 = [v11 displayCategory];
    [v12 color];
  }

  else
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v13 = sub_29D937898();
    sub_29D69C6C0(v13, qword_2A1A2BF28);
    v14 = sub_29D937878();
    v15 = sub_29D93A298();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136446210;
      v24[0] = ObjectType;
      swift_getMetatypeMetadata();
      v18 = sub_29D939DA8();
      v20 = sub_29D6C2364(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s] No display type found for burden quantity type", v16, 0xCu);
      sub_29D69417C(v17);
      MEMORY[0x29ED6BE30](v17, -1, -1);
      MEMORY[0x29ED6BE30](v16, -1, -1);
    }

    v21 = [objc_opt_self() blueColor];
  }
}

uint64_t sub_29D8D6D78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60E48](a1, WitnessTable);
}

uint64_t sub_29D8D6E78(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_29D715528(v20);
  type metadata accessor for AFibBurdenLifeFactorDescriptionDataSource(0);
  swift_allocObject();
  v4 = sub_29D7C7DE4(v20);
  sub_29D8D7A5C(v20);
  v19[0] = v4;
  v19[1] = MEMORY[0x29EDC1E78];
  v19[2] = sub_29D8D7044(a2);
  v19[3] = v5;
  result = sub_29D8D734C(v3, a2);
  v7 = 0;
  v19[4] = result;
  v19[5] = v8;
  v9 = MEMORY[0x29EDCA190];
LABEL_2:
  if (v7 <= 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10 + 1;
  v12 = &v19[2 * v7];
  while (1)
  {
    if (v7 == 3)
    {
      sub_29D8D7AB0(0, &qword_2A17B7928, &qword_2A17B1090, MEMORY[0x29EDC2040], 0);
      swift_arrayDestroy();
      sub_29D935F88();
      swift_allocObject();
      return sub_29D935F98();
    }

    if (v11 == ++v7)
    {
      break;
    }

    v13 = v12 + 2;
    v14 = *v12;
    v12 += 2;
    if (v14)
    {
      v15 = *(v13 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29D68FDBC(0, v9[2] + 1, 1, v9);
        v9 = result;
      }

      v17 = v9[2];
      v16 = v9[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_29D68FDBC((v16 > 1), v17 + 1, 1, v9);
        v9 = result;
      }

      v9[2] = v17 + 1;
      v18 = &v9[2 * v17];
      v18[4] = v14;
      v18[5] = v15;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D8D7044(uint64_t a1)
{
  v24 = sub_29D936018();
  v2 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D697F20(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D936378();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 24);
  v16 = sub_29D933E88();
  v17 = sub_29D933E78();
  v27 = v16;
  v28 = MEMORY[0x29EDC3640];
  v26 = v17;
  v18 = [v15 profileIdentifier];
  v19 = sub_29D9350C8();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  MEMORY[0x29ED658D0](v18, v9);

  sub_29D782E90(v9);
  sub_29D6945AC(a1 + 32, v25);
  sub_29D93A3C8();
  sub_29D936328();
  v20 = *(a1 + 16);
  if (v20 == 1)
  {
    sub_29D934528();
    sub_29D9344E8();
  }

  else
  {
    sub_29D73439C(v20);
  }

  sub_29D935FF8();
  v21 = sub_29D936008();
  (*(v2 + 8))(v5, v24);
  (*(v11 + 8))(v14, v10);
  swift_getOpaqueTypeConformance2();
  return v21;
}

uint64_t sub_29D8D734C(unsigned __int8 a1, uint64_t a2)
{
  sub_29D93A388();
  sub_29D693E2C(v8, v8[3]);
  sub_29D933EC8();
  v4 = objc_allocWithZone(type metadata accessor for AFibBurdenLifeFactorAppRecommendationsFetchedResultsControllerDataSource(0));
  v4[qword_2A17B5030] = a1;
  *&v4[qword_2A17B5038] = a2;

  sub_29D73439C(a1);
  sub_29D8D7B10();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D93DDB0;
  *(v5 + 32) = sub_29D933FE8();
  v6 = sub_29D936F38();
  sub_29D69417C(v8);
  sub_29D8D7B60(&qword_2A17B7930, 255, type metadata accessor for AFibBurdenLifeFactorAppRecommendationsFetchedResultsControllerDataSource, MEMORY[0x29EDC2988]);
  return v6;
}

unint64_t sub_29D8D747C()
{
  result = qword_2A17B7920;
  if (!qword_2A17B7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7920);
  }

  return result;
}

char *sub_29D8D74D0(uint64_t a1, void *a2, void *a3, char *a4)
{
  *&a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel] = 0;
  *&a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___horizontalRule] = 0;
  *&a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___contentView] = 0;
  v8 = &a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_contentViewDelegate];
  *&a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_contentViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_baseIdentifier];
  v25 = sub_29D6C3970(261);
  v26 = v10;
  MEMORY[0x29ED6A240](0x656C69542ELL, 0xE500000000000000);
  v11 = v26;
  *v9 = v25;
  *(v9 + 1) = v11;
  *&a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_cacheObject] = a1;
  *&a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_healthStore] = a2;
  *(v8 + 1) = &off_2A244D3F8;
  swift_unknownObjectWeakAssign();
  v24.receiver = a4;
  v24.super_class = type metadata accessor for AFibBurdenLifeFactorsTileView();
  v12 = a2;
  v13 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = sub_29D8416B8();
  [v13 addSubview_];

  v15 = sub_29D84188C();
  [v13 addSubview_];

  v16 = sub_29D84195C();
  [v13 addSubview_];

  sub_29D841B18();
  v17 = *&v13[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_baseIdentifier];
  v18 = *&v13[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_baseIdentifier + 8];
  sub_29D935E88();
  v19 = sub_29D939D28();
  [v13 setAccessibilityIdentifier_];

  v20 = *&v13[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel];
  v25 = v17;
  v26 = v18;
  sub_29D935E88();
  v21 = v20;
  MEMORY[0x29ED6A240](0x706972637365442ELL, 0xEC0000006E6F6974);
  v22 = sub_29D939D28();

  [v21 setAccessibilityIdentifier_];

  return v13;
}

void sub_29D8D7740(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context;
  swift_beginAccess();
  sub_29D718208(v1 + v4, v23);
  v5 = v24;
  if (v24)
  {
    v6 = sub_29D693E2C(v23, v24);
    v7 = *(v5 - 8);
    MEMORY[0x2A1C7C4A8](v6, v6);
    v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_29D936588();
    (*(v7 + 8))(v9, v5);
    sub_29D718208(v2 + v4, v21);
    v11 = v22;
    if (v22)
    {
      v12 = sub_29D693E2C(v21, v22);
      v13 = *(v11 - 8);
      MEMORY[0x2A1C7C4A8](v12, v12);
      v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v15);
      sub_29D9365A8();
      (*(v13 + 8))(v15, v11);
      type metadata accessor for AFibBurdenLifeFactorDetailViewModel();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v16 + 16) = a1;
      *(v16 + 24) = v10;
      sub_29D6959E8(v20, v16 + 32);
      swift_unknownObjectWeakAssign();
      sub_29D69417C(v21);
      sub_29D69417C(v23);
      sub_29D8D6E78(a1, v16);
      v17 = objc_allocWithZone(type metadata accessor for AFibBurdenLifeFactorDetailViewController(0));

      v18 = sub_29D936D88();
      swift_unknownObjectWeakAssign();
      v19 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
      [v2 hk:v19 presentModalCardViewController:0 fullScreen:1 animated:0 completion:?];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29D8D7AB0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  if (!*a2)
  {
    sub_29D695734(255, a3, a4, a5 & 1);
    v6 = sub_29D93A7F8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D8D7B10()
{
  if (!qword_2A17B50A8)
  {
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B50A8);
    }
  }
}

uint64_t sub_29D8D7B60(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_29D8D7BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_29D9339F8();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v6 = sub_29D9331D8();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = sub_29D9372B8();
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D8D7D90, 0, 0);
}

uint64_t sub_29D8D7D90(uint64_t a1)
{
  v1[28] = sub_29D933BB8();
  sub_29D9372A8();
  v2 = swift_task_alloc();
  v1[29] = v2;
  *v2 = v1;
  v2[1] = sub_29D8D7E44;
  v3 = v1[7];

  return MEMORY[0x2A1C63A68](v3);
}

uint64_t sub_29D8D7E44(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_29D8D87D0;
  }

  else
  {
    v4 = sub_29D8D7F58;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D8D7F58()
{
  v93 = v0;
  v1 = v0[30];
  sub_29D6AA400();
  v2 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  v3 = v2;
  if (*(v1 + 16) && (v4 = sub_29D690AEC(v2), (v5 & 1) != 0))
  {
    v6 = v0[23];
    v7 = v0[21];
    v89 = v0[20];
    v9 = v0[18];
    v8 = v0[19];
    v11 = v0[10];
    v10 = v0[11];
    (*(v7 + 16))(v6, *(v0[30] + 56) + *(v7 + 72) * v4);

    sub_29D9331A8();
    sub_29D9331C8();
    v85 = *(v10 + 16);
    v85(v9, v8, v11);
    sub_29D933198();
    v12 = *(v10 + 8);
    v12(v8, v11);
    (*(v7 + 8))(v6, v89);
    v13 = v12;
  }

  else
  {
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[17];
    v17 = v0[10];
    v18 = v0[11];
    v19 = v0[8];

    v19();
    v20 = *(v18 + 16);
    v20(v15, v14, v17);
    v85 = v20;
    v20(v16, v14, v17);
    sub_29D933188();
    v13 = *(v18 + 8);
    v13(v14, v17);
  }

  v21 = v0[28];
  v22 = v0[19];
  v79 = v0[15];
  v80 = v0[14];
  v23 = v0[10];
  v24 = sub_29D933AF8();
  sub_29D9331A8();
  v25 = sub_29D933958();
  v13(v22, v23);
  v26 = [v21 hk:v24 startOfWeekWithFirstWeekday:v25 beforeDate:0 addingWeeks:?];

  sub_29D933998();
  v27 = sub_29D933AF8();
  sub_29D933178();
  v28 = sub_29D933958();
  v88 = v13;
  v13(v22, v23);
  v29 = [v21 hk:v27 startOfWeekWithFirstWeekday:v28 beforeDate:1 addingWeeks:?];

  sub_29D933998();
  v30 = v85;
  v85(v80, v79, v23);
  if (sub_29D9339B8() == -1)
  {
    v82 = v0[21];
    v78 = (v0[11] + 40);
    v31 = MEMORY[0x29EDCA190];
    v84 = v0;
    while (1)
    {
      v41 = v0[28];
      v30(v0[13], v0[14], v0[10]);
      v42 = sub_29D933958();
      v43 = [v41 dateByAddingUnit:0x2000 value:-26 toDate:v42 options:0];

      if (!v43)
      {
        break;
      }

      v44 = v0[19];
      v45 = v0;
      v46 = v31;
      v47 = v45[18];
      v49 = v45[12];
      v48 = v45[13];
      v50 = v45[10];
      sub_29D933998();

      v30(v44, v49, v50);
      v30(v47, v48, v50);
      v31 = v46;
      sub_29D933188();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_29D690144(0, v46[2] + 1, 1, v46);
      }

      v52 = v31[2];
      v51 = v31[3];
      v0 = v84;
      if (v52 >= v51 >> 1)
      {
        v31 = sub_29D690144((v51 > 1), v52 + 1, 1, v31);
      }

      v53 = v84[22];
      v54 = v84[20];
      v55 = v84[14];
      v56 = v84[12];
      v57 = v84[10];
      v88(v84[13], v57);
      v31[2] = v52 + 1;
      (*(v82 + 32))(v31 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v52, v53, v54);
      (*v78)(v55, v56, v57);
      v30 = v85;
      if (sub_29D9339B8() != -1)
      {
        goto LABEL_7;
      }
    }

    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v58 = sub_29D937898();
    sub_29D69C6C0(v58, qword_2A1A2BF28);
    v59 = sub_29D937878();
    v60 = sub_29D93A298();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v0[28];
    if (v61)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v92 = v64;
      *v63 = 136446467;
      v0[5] = &type metadata for AFibBurdenPDFChartDateIntervalProvider;
      sub_29D8D88F4();
      v65 = sub_29D939DA8();
      v67 = sub_29D6C2364(v65, v66, &v92);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2085;
      swift_beginAccess();
      v68 = sub_29D933918();
      v70 = sub_29D6C2364(v68, v69, &v92);

      *(v63 + 14) = v70;
      _os_log_impl(&dword_29D677000, v59, v60, "[%{public}s] Hitting critical error while trying to add -26 weeks to: %{sensitive}s", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v64, -1, -1);
      MEMORY[0x29ED6BE30](v63, -1, -1);
    }

    v71 = v0[26];
    v91 = v0[27];
    v72 = v0[24];
    v87 = v0[25];
    v74 = v0[20];
    v73 = v0[21];
    v76 = v0[15];
    v75 = v0[16];
    v83 = v0[14];
    v77 = v0[10];
    v88(v0[13], v77);
    v88(v76, v77);
    v88(v75, v77);
    (*(v73 + 8))(v72, v74);
    (*(v71 + 8))(v91, v87);
    v88(v83, v77);
    v31 = MEMORY[0x29EDCA190];
  }

  else
  {
    v31 = MEMORY[0x29EDCA190];
LABEL_7:
    v90 = v0[27];
    v32 = v0[26];
    v86 = v0[25];
    v33 = v0[24];
    v35 = v0[20];
    v34 = v0[21];
    v37 = v0[15];
    v36 = v0[16];
    v81 = v0[14];
    v38 = v0[10];

    v88(v37, v38);
    v88(v36, v38);
    (*(v34 + 8))(v33, v35);
    (*(v32 + 8))(v90, v86);
    v88(v81, v38);
  }

  v39 = v0[1];

  return v39(v31);
}

uint64_t sub_29D8D87D0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_29D8D88F4()
{
  result = qword_2A17B7938;
  if (!qword_2A17B7938)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B7938);
  }

  return result;
}

uint64_t type metadata accessor for BloodPressureJournalSettingsViewController(uint64_t a1)
{
  result = qword_2A17B7960;
  if (!qword_2A17B7960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8D8A08()
{
  v1 = *(v0 + qword_2A17B7950);
  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v2 = swift_allocObject();
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = v1;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = 0;
  v2[3] = v3;
  v4 = *(v0 + qword_2A17B7958);
  v5 = v1;
  sub_29D6AA594(v4, 7);
}

void sub_29D8D8AAC(void *a1)
{
  v1 = a1;
  sub_29D8D8A08();
}

void sub_29D8D8AF4(uint64_t a1)
{
  v2 = qword_2A17B7940;
  sub_29D933F18();
  *(a1 + v2) = sub_29D933F08();
  *(a1 + qword_2A17B7948) = 0;
  sub_29D93AB28();
  __break(1u);
}

uint64_t sub_29D8D8B84()
{
  v1 = v0;
  sub_29D8D9740(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v16 - v4;
  sub_29D8D95AC(0);
  v17 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D933EE8();
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v11 = sub_29D93A468();
  v18 = v11;
  v12 = sub_29D93A448();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_29D8D9678(0);
  sub_29D8D96F0(&qword_2A17B7988, sub_29D8D9678, MEMORY[0x29EDB8AD8]);
  sub_29D706380();
  sub_29D938538();
  sub_29D7339C0(v5);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D8D96F0(&qword_2A17B7990, sub_29D8D95AC, MEMORY[0x29EDB89E8]);
  v13 = v17;
  v14 = sub_29D938588();

  (*(v7 + 8))(v10, v13);
  *(v1 + qword_2A17B7948) = v14;
}

void *sub_29D8D8E74(void **a1, uint64_t a2)
{
  v3 = type metadata accessor for BloodPressureJournalSettingsView(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_29D938D18();

    sub_29D8D9740(0, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
    sub_29D939848();
    sub_29D8D9550(v6);
    v10 = v16;
    v11 = [v7 authorizationStatus];
    if (((v11 == 1) ^ *(v10 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__notificationsAreDisabled)))
    {
      v12 = v11 == 1;
      KeyPath = swift_getKeyPath();
      MEMORY[0x2A1C7C4A8](KeyPath, v14);
      *&v15[-16] = v10;
      v15[-8] = v12;
      v16 = v10;
      sub_29D8D96F0(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
      sub_29D933E08();
    }

    else
    {
      *(v10 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__notificationsAreDisabled) = v11 == 1;
    }
  }

  return result;
}

void sub_29D8D908C(void *a1)
{
  v1 = a1;
  sub_29D8D8B84();
}

void sub_29D8D9134()
{

  v1 = *(v0 + qword_2A17B7950);
}

id sub_29D8D9184()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalSettingsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D8D91BC(uint64_t a1)
{

  v2 = *(a1 + qword_2A17B7950);
}

id sub_29D8D9220(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v7 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v8 = (v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v29[-v14];
  v16 = qword_2A17B7940;
  sub_29D933F18();
  *(v3 + v16) = sub_29D933F08();
  *(v3 + qword_2A17B7948) = 0;
  type metadata accessor for BloodPressureJournalSettingsViewModel(0);
  sub_29D8D96F0(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);

  sub_29D939868();
  v17 = &v15[v8[7]];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v15[v8[8]];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v15[v8[9]];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v15[v8[10]];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v15[v8[11]];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v15[v8[12]];
  *v22 = 0;
  v22[1] = 0;
  *&v15[v8[13]] = 0x4020000000000000;
  *&v15[v8[14]] = 0x4030000000000000;
  *&v15[v8[15]] = 0x4028000000000000;
  *&v15[v8[16]] = 0x4051800000000000;
  *&v15[v8[17]] = 0x4018000000000000;
  *&v15[v8[18]] = 0x4024000000000000;
  *&v15[v8[19]] = 0x4024000000000000;
  *&v15[v8[20]] = 0x4054000000000000;
  *&v15[v8[21]] = 0x4041000000000000;
  v23 = &v15[v8[22]];
  v29[15] = 0;
  sub_29D939688();
  v24 = v30;
  *v23 = v29[16];
  *(v23 + 1) = v24;
  *(v4 + qword_2A17B7958) = a2;
  *(v4 + qword_2A17B7950) = a3;
  sub_29D8D94EC(v15, v12);
  v25 = a3;
  v26 = sub_29D938CF8();
  sub_29D8D8B84();
  v27 = [objc_opt_self() defaultCenter];
  [v27 addObserver:v26 selector:sel_fetchNotificationAuthorizationStatus name:*MEMORY[0x29EDC8030] object:0];

  sub_29D8D9550(v15);
  return v26;
}

uint64_t sub_29D8D94EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressureJournalSettingsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8D9550(uint64_t a1)
{
  v2 = type metadata accessor for BloodPressureJournalSettingsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D8D95AC(uint64_t a1)
{
  if (!qword_2A17B7970)
  {
    sub_29D8D9678(255);
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D8D96F0(&qword_2A17B7988, sub_29D8D9678, MEMORY[0x29EDB8AD8]);
    sub_29D706380();
    v1 = sub_29D9381E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7970);
    }
  }
}

void sub_29D8D9678(uint64_t a1)
{
  if (!qword_2A17B7978)
  {
    sub_29D69567C(255, &qword_2A17B7980, 0x29EDBCCE0);
    v1 = sub_29D938358();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7978);
    }
  }
}

uint64_t sub_29D8D96F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D8D9740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8D97C4@<X0>(uint64_t a1@<X8>)
{
  sub_29D8DB580(0);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___featureStatus;
  swift_beginAccess();
  sub_29D8DBC08(v1 + v11, v10, sub_29D8DB580);
  sub_29D6B805C(0);
  v13 = v12;
  v14 = *(v12 - 8);
  if ((*(v14 + 48))(v10, 1, v12) != 1)
  {
    return sub_29D8DBCD4(v10, a1, sub_29D6B805C);
  }

  sub_29D8DBBA8(v10, sub_29D8DB580);
  sub_29D8D99E0(v1, a1);
  sub_29D8DBC08(a1, v7, sub_29D6B805C);
  (*(v14 + 56))(v7, 0, 1, v13);
  swift_beginAccess();
  sub_29D8DBC70(v7, v1 + v11);
  return swift_endAccess();
}

uint64_t sub_29D8D99E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D693E2C(a1 + 3, a1[6]);
  sub_29D937238();
  v3 = sub_29D9371A8();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_29D8D9BC0()
{
  v1 = OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___showBridgeLink;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___showBridgeLink);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_29D8D9C04();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

id sub_29D8D9C04()
{
  sub_29D6B805C(0);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D9371A8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8D97C4(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_29D8DBBA8(v3, sub_29D6B805C);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v9 = sub_29D9371B8();
    v10 = [v9 areAllRequirementsSatisfied];

    if (v10)
    {
      v11 = sub_29D9371B8();
      v12 = [v11 areAllRequirementsSatisfied];

      (*(v5 + 8))(v8, v4);
      return v12;
    }

    (*(v5 + 8))(v8, v4);
  }

  return 0;
}

id sub_29D8D9DF8()
{
  v1 = objc_opt_self();
  v2 = *(v0 + 16);
  result = [v1 sharedInstanceForHealthStore_];
  if (result)
  {
    v4 = result;
    v5 = sub_29D93A138();
    v6 = [v4 displayTypeWithIdentifier_];

    if (v6)
    {
      v7 = [objc_allocWithZone(MEMORY[0x29EDC47D8]) initWithDisplayType:v6 healthStore:v2 shouldEmbedInScrollView:0];

      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_29D8D9EC0@<X0>(uint64_t *a1@<X8>)
{
  sub_29D8DB5B4(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v37 - v5;
  v7 = [*(v1 + 16) profileIdentifier];
  v8 = [v7 type];

  if (v8 == 1 && (sub_29D8D9BC0() & 1) != 0)
  {
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v9 = sub_29D9334A8();
    v11 = v10;
    v12 = sub_29D8DB9C4(0xD00000000000001ELL, 0x800000029D96D500, 0, 0xE000000000000000);
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      *a1 = v9;
      a1[1] = v11;
      a1[2] = v12;
      a1[3] = v13;
      v15 = sub_29D939D68();
      v41 = 0xD000000000000040;
      v42 = 0x800000029D96D520;
      v39 = v15;
      v40 = v16;
      v39 = sub_29D939E88();
      v40 = v17;
      sub_29D939E38();
      v18 = v40;
      a1[4] = v39;
      a1[5] = v18;
      sub_29D9336E8();
      v19 = sub_29D9336F8();
      v20 = *(v19 - 8);
      result = (*(v20 + 48))(v6, 1, v19);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        sub_29D6EA34C(0, v22);
        v24 = *(v23 + 80);
        (*(v20 + 32))(a1 + v24, v6, v19);
        v25 = *MEMORY[0x29EDC15C0];
        v26 = sub_29D934538();
        (*(*(v26 - 8) + 104))(a1 + v24, v25, v26);
        v27 = *MEMORY[0x29EDC15E8];
        v28 = sub_29D934548();
        v29 = *(v28 - 8);
        (*(v29 + 104))(a1, v27, v28);
        return (*(v29 + 56))(a1, 0, 1, v28);
      }

      return result;
    }

    *a1 = v9;
    a1[1] = v11;
    *(a1 + 16) = 0;
    v35 = *MEMORY[0x29EDC1630];
    v36 = sub_29D934548();
    v38 = *(v36 - 8);
    (*(v38 + 104))(a1, v35, v36);
    v31 = *(v38 + 56);
    v33 = a1;
    v34 = 0;
    v32 = v36;
  }

  else
  {
    v30 = sub_29D934548();
    v31 = *(*(v30 - 8) + 56);
    v32 = v30;
    v33 = a1;
    v34 = 1;
  }

  return v31(v33, v34, 1, v32);
}

void sub_29D8DA344()
{
  v1 = sub_29D934548();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6E9F00(0);
  v106 = v6;
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v15 = &v103 - v14;
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = (&v103 - v17);
  v19 = *(v2 + 56);
  v19(&v103 - v17, 1, 1, v1);
  v107 = v0;
  v20 = sub_29D8D9DF8();
  if (v20)
  {
    v21 = v20;
    sub_29D8DBBA8(v18, sub_29D6E9F00);
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *v18 = sub_29D6EA5AC;
    v18[1] = v22;
    (*(v2 + 104))(v18, *MEMORY[0x29EDC15A0], v1);
    v19(v18, 0, 1, v1);
  }

  v113 = v19;
  v117 = v2 + 56;
  v108 = v18;
  v120 = v11;
  sub_29D8DB5B4(0, &qword_2A17B20F8, sub_29D6E9F00, MEMORY[0x29EDC9E90]);
  v23 = *(v7 + 72);
  v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v25 = swift_allocObject();
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v119 = v5;
  v26 = qword_2A1A2C038;
  v27 = sub_29D939D28();
  v28 = [objc_opt_self() imageNamed:v27 inBundle:v26];

  v115 = v26;
  if (v28)
  {
    v105 = v25;
    v29 = v25 + v24;
    v116 = v29;
    *v29 = v28;
    *(v29 + 8) = 0;
    v30 = *MEMORY[0x29EDC1608];
    v118 = v2;
    v31 = *(v2 + 104);
    v31(v29, v30, v1);
    v121 = (v2 + 104);
    v32 = v113;
    v113(v29, 0, 1, v1);
    v33 = (v29 + v23);
    v114 = "low_cardio_fitness_article_hero";
    *v33 = sub_29D9334A8();
    v33[1] = v34;
    v31(v29 + v23, *MEMORY[0x29EDC1610], v1);
    v32((v29 + v23), 0, 1, v1);
    v35 = v116 + 2 * v23;
    v111 = 0xD000000000000013;
    *v35 = sub_29D9334A8();
    *(v35 + 8) = v36;
    *(v35 + 16) = 0;
    v110 = *MEMORY[0x29EDC1630];
    (v31)(v35);
    v32(v35, 0, 1, v1);
    v37 = v116;
    v38 = (v116 + 3 * v23);
    *v38 = sub_29D9334A8();
    v38[1] = v39;
    v38[2] = 0;
    v109 = *MEMORY[0x29EDC15D0];
    (v31)(v37 + 3 * v23);
    v112 = v31;
    v40 = v113;
    v113((v37 + 3 * v23), 0, 1, v1);
    v104 = 4 * v23;
    v41 = v37 + 4 * v23;
    *v41 = sub_29D9334A8();
    *(v41 + 8) = v42;
    *(v41 + 16) = 0;
    v43 = v110;
    v31(v41, v110, v1);
    v40(v41, 0, 1, v1);
    v44 = v116;
    v45 = v116 + v104 + v23;
    *v45 = sub_29D9334A8();
    *(v45 + 8) = v46;
    *(v45 + 16) = 0;
    v112(v45, v43, v1);
    v40(v45, 0, 1, v1);
    v47 = (v44 + 6 * v23);
    *v47 = sub_29D9334A8();
    v47[1] = v48;
    v47[2] = 0;
    v49 = v109;
    v50 = v112;
    v112(v47, v109, v1);
    v40(v47, 0, 1, v1);
    sub_29D8DBC08(v108, v44 + 7 * v23, sub_29D6E9F00);
    v51 = (v44 + 8 * v23);
    *v51 = sub_29D9334A8();
    v51[1] = v52;
    v51[2] = 0;
    v50(v51, v49, v1);
    v113(v51, 0, 1, v1);
    v53 = v44 + 9 * v23;
    *v53 = sub_29D9334A8();
    *(v53 + 8) = v54;
    *(v53 + 16) = 0;
    v55 = v110;
    v56 = v112;
    v112(v53, v110, v1);
    v57 = v113;
    v113(v53, 0, 1, v1);
    v58 = v116;
    v59 = v116 + 10 * v23;
    *v59 = sub_29D9334A8();
    *(v59 + 8) = v60;
    *(v59 + 16) = 0;
    v56(v58 + 10 * v23, v55, v1);
    v57((v58 + 10 * v23), 0, 1, v1);
    v61 = (v58 + 11 * v23);
    *v61 = sub_29D9334A8();
    v61[1] = v62;
    v61[2] = 0;
    v112(v61, v109, v1);
    v57(v61, 0, 1, v1);
    v63 = (v58 + 12 * v23);
    v64 = sub_29D9334A8();
    v103 = v65;
    v104 = v64;
    sub_29D8DBB58(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_29D943EA0;
    *(v66 + 32) = sub_29D9334A8();
    *(v66 + 40) = v67;
    *(v66 + 48) = sub_29D9334A8();
    *(v66 + 56) = v68;
    *(v66 + 64) = sub_29D9334A8();
    *(v66 + 72) = v69;
    v70 = v103;
    *v63 = v104;
    v63[1] = v70;
    v63[2] = v66;
    v71 = v112;
    v112(v63, *MEMORY[0x29EDC15F0], v1);
    v72 = v113;
    v113(v63, 0, 1, v1);
    v73 = v116;
    sub_29D8D9EC0((v116 + 13 * v23));
    v74 = (v73 + 14 * v23);
    *v74 = sub_29D9334A8();
    v74[1] = v75;
    v74[2] = 0;
    v71(v74, v109, v1);
    v72(v74, 0, 1, v1);
    v107 = 16 * v23;
    v76 = v116;
    v77 = v116 + 15 * v23;
    *v77 = sub_29D9334A8();
    *(v77 + 8) = v78;
    *(v77 + 16) = 0;
    v71(v76 + 15 * v23, v110, v1);
    v79 = v113;
    v113((v76 + 15 * v23), 0, 1, v1);
    v80 = (v76 + v107);
    *v80 = sub_29D9334A8();
    v80[1] = v81;
    v80[2] = 0;
    v71(v80, v109, v1);
    v79(v80, 0, 1, v1);
    v82 = v116;
    v83 = v116 + v107 + v23;
    *v83 = sub_29D9334A8();
    *(v83 + 8) = v84;
    *(v83 + 16) = 0;
    v85 = v110;
    v86 = v112;
    v112(v83, v110, v1);
    v79(v83, 0, 1, v1);
    v87 = v82 + 18 * v23;
    *v87 = sub_29D9334A8();
    *(v87 + 8) = v88;
    *(v87 + 16) = 0;
    v89 = v85;
    v90 = v121;
    v86(v87, v89, v1);
    v79(v87, 0, 1, v1);
    v91 = (v90 - 7);
    v121 = v90 - 9;
    v92 = MEMORY[0x29EDCA190];
    v93 = 19;
    v94 = v82;
    v95 = v119;
    v96 = v120;
    do
    {
      sub_29D8DBC08(v94, v15, sub_29D6E9F00);
      sub_29D8DBCD4(v15, v96, sub_29D6E9F00);
      if ((*v91)(v96, 1, v1) == 1)
      {
        sub_29D8DBBA8(v96, sub_29D6E9F00);
      }

      else
      {
        v97 = v23;
        v98 = v15;
        v99 = *v121;
        (*v121)(v95, v96, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_29D68FA8C(0, v92[2] + 1, 1, v92);
        }

        v101 = v92[2];
        v100 = v92[3];
        if (v101 >= v100 >> 1)
        {
          v92 = sub_29D68FA8C((v100 > 1), v101 + 1, 1, v92);
        }

        v92[2] = v101 + 1;
        v102 = v92 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v101;
        v95 = v119;
        v99(v102, v119, v1);
        v96 = v120;
        v15 = v98;
        v23 = v97;
      }

      v94 += v23;
      --v93;
    }

    while (v93);
    sub_29D8DBBA8(v108, sub_29D6E9F00);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D8DB3F4()
{
  sub_29D69417C((v0 + 24));
  sub_29D8DBBA8(v0 + OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___featureStatus, sub_29D8DB580);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LowCardioFitnessArticleDataProvider(uint64_t a1)
{
  result = qword_2A1A23980;
  if (!qword_2A1A23980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8DB4D0(uint64_t a1)
{
  sub_29D8DB580(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_29D8DB5B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8DB698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D8DB740()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

void sub_29D8DB7E0()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;
  v1 = sub_29D939D28();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_29D8DB8A4()
{
  sub_29D8DBB58(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D9403F0;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA970]);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA908]);
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 48) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA490]);
  v1 = sub_29D7AF2C4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_29D8DB9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_opt_self();
  v5 = sub_29D939D28();
  v6 = [v4 modelSpecificLocalizedStringKeyForKey_];

  if (v6)
  {
    sub_29D939D68();

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v7 = sub_29D9334A8();

    return v7;
  }

  else
  {
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    return sub_29D9334A8();
  }
}

void sub_29D8DBB58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D8DBBA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D8DBC08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8DBC70(uint64_t a1, uint64_t a2)
{
  sub_29D8DB580(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8DBCD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8DBD3C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_29D9331D8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_29D8DBF10@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BloodPressureMinMaxCoordinate(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_29D8E2028(v13, v11, type metadata accessor for BloodPressureMinMaxCoordinate);
      v15 = a1(v11);
      if (v3)
      {
        return sub_29D8E2110(v11, type metadata accessor for BloodPressureMinMaxCoordinate);
      }

      if (v15)
      {
        break;
      }

      sub_29D8E2110(v11, type metadata accessor for BloodPressureMinMaxCoordinate);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_29D8E2458(v11, v19, type metadata accessor for BloodPressureMinMaxCoordinate);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_29D8DC0DC(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D9339F8();
  sub_29D8E24C0(&qword_2A17B1360, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29D939C98();
  sub_29D9331D8();
  sub_29D8E24C0(&qword_2A17B1EF0, MEMORY[0x29EDB98E8], MEMORY[0x29EDB98F8]);
  sub_29D939C98();
  MEMORY[0x29ED6B260](*(v1 + *(a1 + 24)));
  return sub_29D93AE98();
}

uint64_t sub_29D8DC1DC(uint64_t a1, uint64_t a2)
{
  sub_29D9339F8();
  sub_29D8E24C0(&qword_2A17B1360, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29D939C98();
  sub_29D9331D8();
  sub_29D8E24C0(&qword_2A17B1EF0, MEMORY[0x29EDB98E8], MEMORY[0x29EDB98F8]);
  sub_29D939C98();
  return MEMORY[0x29ED6B260](*(v2 + *(a2 + 24)));
}

uint64_t sub_29D8DC2CC(uint64_t a1, uint64_t a2)
{
  sub_29D93AE58();
  sub_29D9339F8();
  sub_29D8E24C0(&qword_2A17B1360, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29D939C98();
  sub_29D9331D8();
  sub_29D8E24C0(&qword_2A17B1EF0, MEMORY[0x29EDB98E8], MEMORY[0x29EDB98F8]);
  sub_29D939C98();
  MEMORY[0x29ED6B260](*(v2 + *(a2 + 24)));
  return sub_29D93AE98();
}

uint64_t sub_29D8DC430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = sub_29D9339F8();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = sub_29D9331D8();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D8DC584, 0, 0);
}

uint64_t sub_29D8DC584()
{
  v25 = v0;
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[12];
    v2 = v0[13];
    v4 = v0[10];
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];
    v23 = v0[11];
    v22 = v0[4];
    v8 = v0[3];
    v9 = sub_29D8DF704(v1);
    v10 = *(v6 + 16);
    v10(v4, v8, v7);
    v10(v5, v22, v7);
    sub_29D933188();
    v11 = sub_29D8DC9D0(v9, v2);

    (*(v3 + 8))(v2, v23);
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v12 = sub_29D937898();
    sub_29D69C6C0(v12, qword_2A1A2BF10);
    v13 = sub_29D937878();
    v14 = sub_29D93A2A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136446210;
      v17 = sub_29D93AF08();
      v19 = sub_29D6C2364(v17, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s] Could not find or compute pregnancy/post-pregnancy windows. Returning single general interval.", v15, 0xCu);
      sub_29D69417C(v16);
      MEMORY[0x29ED6BE30](v16, -1, -1);
      MEMORY[0x29ED6BE30](v15, -1, -1);
    }

    v11 = sub_29D8E1D28(v0[3], v0[4]);
  }

  v20 = v0[1];

  return v20(v11);
}

uint64_t sub_29D8DC7EC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v17 - v11;
  v13 = sub_29D9331A8();
  a3(v13);
  v14 = sub_29D933988();
  v15 = *(v5 + 8);
  v15(v9, v4);
  v15(v12, v4);
  return v14 & 1;
}

void sub_29D8DC928(uint64_t *a1)
{
  v2 = *(type metadata accessor for BloodPressurePDFSampleInterval(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_29D8DF6DC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_29D8DDD60(v5);
  *a1 = v3;
}

uint64_t sub_29D8DC9D0(uint64_t a1, char *a2)
{
  v150 = sub_29D9331D8();
  v4 = *(v150 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v150, v5);
  v142 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v144 = &v123 - v9;
  v10 = type metadata accessor for BloodPressurePDFSampleInterval(0);
  v149 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10, v11);
  v133 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v135 = &v123 - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v134 = &v123 - v19;
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v137 = &v123 - v22;
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v143 = &v123 - v25;
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v138 = &v123 - v28;
  v30 = MEMORY[0x2A1C7C4A8](v27, v29);
  v136 = &v123 - v31;
  v33 = MEMORY[0x2A1C7C4A8](v30, v32);
  v139 = &v123 - v34;
  v36 = MEMORY[0x2A1C7C4A8](v33, v35);
  v148 = &v123 - v37;
  MEMORY[0x2A1C7C4A8](v36, v38);
  v40 = &v123 - v39;
  v41 = sub_29D9339F8();
  v151 = *(v41 - 8);
  v43 = MEMORY[0x2A1C7C4A8](v41, v42);
  v145 = &v123 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x2A1C7C4A8](v43, v45);
  v147 = &v123 - v47;
  v49 = MEMORY[0x2A1C7C4A8](v46, v48);
  v51 = &v123 - v50;
  v53 = MEMORY[0x2A1C7C4A8](v49, v52);
  v56 = &v123 - v55;
  v57 = *(a1 + 16);
  if (v57 == 1)
  {
    v141 = v4;
    v131 = *(v149 + 80);
    v132 = (v131 + 32) & ~v131;
    sub_29D8E2028(a1 + v132, v40, type metadata accessor for BloodPressurePDFSampleInterval);
    v146 = v10;
    sub_29D9331A8();
    sub_29D9331A8();
    sub_29D8E24C0(&qword_2A17B4730, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
    v69 = sub_29D939CB8();
    v140 = a2;
    v70 = *(v151 + 8);
    v70(v51, v41);
    v70(v56, v41);
    if ((v69 & 1) == 0)
    {
      sub_29D933178();
      sub_29D933178();
      v71 = sub_29D939CB8();
      v70(v51, v41);
      v70(v56, v41);
      if ((v71 & 1) == 0)
      {
        sub_29D8E2248(0, &qword_2A17B10E0, type metadata accessor for BloodPressurePDFSampleInterval, MEMORY[0x29EDC9E90]);
        v119 = v132;
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_29D93DDB0;
        v150 = v67 + v119;
        sub_29D9331A8();
        sub_29D933178();
        LODWORD(v149) = v40[*(v146 + 24)];
        v120 = *(v151 + 16);
        v120(v150, v56, v41);
        v120(v147, v56, v41);
        v120(v145, v51, v41);
        v121 = v146;
        v122 = v150;
        sub_29D933188();
        v70(v51, v41);
        v70(v56, v41);
        *(v122 + *(v121 + 24)) = v149;
        sub_29D8E2110(v40, type metadata accessor for BloodPressurePDFSampleInterval);
        return v67;
      }
    }

    v53 = sub_29D8E2110(v40, type metadata accessor for BloodPressurePDFSampleInterval);
    a2 = v140;
    v4 = v141;
    v10 = v146;
  }

  else if (!v57)
  {
    if (qword_2A1A24658 == -1)
    {
LABEL_4:
      v58 = sub_29D937898();
      sub_29D69C6C0(v58, qword_2A1A2BF10);
      v59 = sub_29D937878();
      v60 = sub_29D93A2A8();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v152[0] = v62;
        *v61 = 136446210;
        v63 = sub_29D93AF08();
        v65 = sub_29D6C2364(v63, v64, v152);

        *(v61 + 4) = v65;
        _os_log_impl(&dword_29D677000, v59, v60, "[%{public}s] Expected at least 1 input window, found 0 windows. Returning single general interval.", v61, 0xCu);
        sub_29D69417C(v62);
        MEMORY[0x29ED6BE30](v62, -1, -1);
        MEMORY[0x29ED6BE30](v61, -1, -1);
      }

      v66 = v151;
      sub_29D9331A8();
      sub_29D933178();
      v67 = sub_29D8E1D28(v56, v51);
      v68 = *(v66 + 8);
      v68(v51, v41);
      v68(v56, v41);
      return v67;
    }

LABEL_34:
    swift_once();
    goto LABEL_4;
  }

  MEMORY[0x2A1C7C4A8](v53, v54);
  *(&v123 - 2) = a2;
  sub_29D935E88();
  v72 = sub_29D92976C(sub_29D8DDCDC, (&v123 - 4), a1);
  v73 = v72;
  v152[0] = MEMORY[0x29EDCA190];
  if (!*(v72 + 16))
  {

    return MEMORY[0x29EDCA190];
  }

  v129 = *(v72 + 16);
  v132 = (*(v149 + 80) + 32) & ~*(v149 + 80);
  v124 = v72 + v132;
  v74 = v148;
  sub_29D8E2028(v72 + v132, v148, type metadata accessor for BloodPressurePDFSampleInterval);
  v75 = *(v10 + 20);
  v141 = v4;
  v76 = *(v4 + 16);
  v126 = v4 + 16;
  v125 = v76;
  v76(v144, &v74[v75], v150);
  sub_29D9331A8();
  sub_29D9331A8();
  LOBYTE(v74) = sub_29D933978();
  v146 = v10;
  v67 = v56;
  v77 = v51;
  v51 = (v151 + 8);
  v78 = *(v151 + 8);
  v78(v77, v41);
  v131 = v78;
  v78(v67, v41);
  v140 = a2;
  v128 = v77;
  v130 = v73;
  if (v74)
  {
    sub_29D9331A8();
    sub_29D9331A8();
    v79 = *(v151 + 16);
    v80 = v139;
    v79(v139, v67, v41);
    v79(v147, v67, v41);
    v127 = v79;
    v79(v145, v77, v41);
    v81 = v146;
    sub_29D933188();
    v82 = v131;
    (v131)(v77, v41);
    v56 = v82;
    v138 = v51;
    (v82)(v67, v41);
    *(v80 + *(v81 + 24)) = 0;
    v83 = v136;
    sub_29D8E2028(v80, v136, type metadata accessor for BloodPressurePDFSampleInterval);
    v84 = sub_29D690110(0, 1, 1, MEMORY[0x29EDCA190]);
    v86 = v84[2];
    v85 = v84[3];
    if (v86 >= v85 >> 1)
    {
      v84 = sub_29D690110((v85 > 1), v86 + 1, 1, v84);
    }

    v87 = v143;
    v89 = v148;
    v88 = v149;
    v84[2] = v86 + 1;
    sub_29D8E2458(v83, v84 + v132 + *(v88 + 72) * v86, type metadata accessor for BloodPressurePDFSampleInterval);
    v152[0] = v84;
    v90 = v130;
    v91 = sub_29D935E88();
    sub_29D88BF3C(v91);
    sub_29D8E2110(v139, type metadata accessor for BloodPressurePDFSampleInterval);
    v92 = *(v141 + 8);
    (v92)(v144, v150);
    sub_29D8E2110(v89, type metadata accessor for BloodPressurePDFSampleInterval);
    v93 = v56;
    v51 = v138;
  }

  else
  {
    v94 = sub_29D935E88();
    sub_29D88BF3C(v94);
    sub_29D9331A8();
    sub_29D933178();
    v95 = v146;
    LODWORD(v139) = v148[*(v146 + 24)];
    v96 = *(v151 + 16);
    v97 = v138;
    v96(v138, v67, v41);
    v96(v147, v67, v41);
    v96(v145, v77, v41);
    sub_29D933188();
    v93 = v131;
    (v131)(v77, v41);
    v93(v67, v41);
    *(v97 + *(v95 + 24)) = v139;
    v98 = v152[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v127 = v96;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v98 = sub_29D702CAC(v98);
    }

    v87 = v143;
    v92 = *(v141 + 8);
    (v92)(v144, v150);
    sub_29D8E2110(v148, type metadata accessor for BloodPressurePDFSampleInterval);
    v56 = v132;
    v100 = v140;
    v90 = v130;
    if (!v98[2])
    {
      __break(1u);
      goto LABEL_36;
    }

    sub_29D8DDCFC(v138, v98 + v132);
    v152[0] = v98;
  }

  if (v129 > *(v90 + 16))
  {
    __break(1u);
    goto LABEL_34;
  }

  v148 = v92;
  v149 = *(v149 + 72);
  v101 = v137;
  sub_29D8E2028(v124 + v149 * (v129 - 1), v137, type metadata accessor for BloodPressurePDFSampleInterval);

  sub_29D8E2458(v101, v87, type metadata accessor for BloodPressurePDFSampleInterval);
  v102 = v146;
  v125(v142, v87 + *(v146 + 20), v150);
  sub_29D933178();
  v103 = v41;
  v104 = v128;
  sub_29D933178();
  LOBYTE(v101) = sub_29D933968();
  v93(v104, v103);
  v93(v67, v103);
  if (v101)
  {
    sub_29D933178();
    sub_29D933178();
    v100 = v134;
    v105 = v127;
    v127(v134, v67, v103);
    v105(v147, v67, v103);
    v105(v145, v104, v103);
    sub_29D933188();
    v106 = v104;
    v107 = v131;
    (v131)(v106, v103);
    v107(v67, v103);
    *(v100 + *(v102 + 24)) = 0;
    v92 = v135;
    sub_29D8E2028(v100, v135, type metadata accessor for BloodPressurePDFSampleInterval);
    v67 = v152[0];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_23:
      v108 = v132;
      v110 = *(v67 + 16);
      v109 = *(v67 + 24);
      v111 = v143;
      if (v110 >= v109 >> 1)
      {
        v67 = sub_29D690110((v109 > 1), v110 + 1, 1, v67);
      }

      sub_29D8E2110(v100, type metadata accessor for BloodPressurePDFSampleInterval);
      (v148)(v142, v150);
      sub_29D8E2110(v111, type metadata accessor for BloodPressurePDFSampleInterval);
      *(v67 + 16) = v110 + 1;
      sub_29D8E2458(v92, v67 + v108 + v110 * v149, type metadata accessor for BloodPressurePDFSampleInterval);
      return v67;
    }

LABEL_36:
    v67 = sub_29D690110(0, *(v67 + 16) + 1, 1, v67);
    goto LABEL_23;
  }

  sub_29D9331A8();
  sub_29D933178();
  LODWORD(v144) = *(v87 + *(v102 + 24));
  v112 = v133;
  v113 = v127;
  v127(v133, v67, v103);
  v113(v147, v67, v103);
  v113(v145, v104, v103);
  sub_29D933188();
  v114 = v104;
  v115 = v131;
  (v131)(v114, v103);
  v115(v67, v103);
  *(v112 + *(v102 + 24)) = v144;
  v67 = v152[0];
  v116 = *(v152[0] + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v67 = sub_29D702CAC(v67);
  }

  v117 = v132;
  (v148)(v142, v150);
  result = sub_29D8E2110(v143, type metadata accessor for BloodPressurePDFSampleInterval);
  if (v116)
  {
    if (v116 <= *(v67 + 16))
    {
      sub_29D8DDCFC(v112, v67 + v117 + (v116 - 1) * v149);
      return v67;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D8DDB24()
{
  v0 = sub_29D9339F8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BloodPressurePDFSampleInterval(0);
  sub_29D9331A8();
  v5 = sub_29D9331B8();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    sub_29D933178();
    v7 = sub_29D9331B8();
    v6(v4, v0);
  }

  return v7 & 1;
}

uint64_t type metadata accessor for BloodPressurePDFSampleInterval(uint64_t a1)
{
  result = qword_2A17B7998;
  if (!qword_2A17B7998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8DDCFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressurePDFSampleInterval(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29D8DDD60(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_29D93AD28();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x29EDCA190];
      }

      else
      {
        type metadata accessor for BloodPressurePDFSampleInterval(0);
        v6 = sub_29D939F98();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for BloodPressurePDFSampleInterval(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_29D8DE1FC(v8, v9, a1, v4);
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
    sub_29D8DDE8C(0, v2, 1, a1);
  }
}

uint64_t sub_29D8DDE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v55 = sub_29D9339F8();
  v8 = *(v55 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v55, v9);
  v54 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v53 = &v39 - v13;
  v14 = type metadata accessor for BloodPressurePDFSampleInterval(0);
  v16 = MEMORY[0x2A1C7C4A8](v14, v15);
  v48 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v52 = &v39 - v20;
  result = MEMORY[0x2A1C7C4A8](v19, v21);
  v51 = &v39 - v24;
  v41 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v26 = *(v23 + 72);
    v49 = (v8 + 8);
    v50 = v14;
    v27 = v25 + v26 * (a3 - 1);
    v46 = -v26;
    v47 = v25;
    v28 = a1 - a3;
    v40 = v26;
    v29 = v25 + v26 * a3;
LABEL_5:
    v44 = v27;
    v45 = a3;
    v42 = v29;
    v43 = v28;
    v56 = v28;
    while (1)
    {
      v30 = v51;
      sub_29D8E2028(v29, v51, type metadata accessor for BloodPressurePDFSampleInterval);
      v31 = v52;
      sub_29D8E2028(v27, v52, type metadata accessor for BloodPressurePDFSampleInterval);
      v32 = v53;
      sub_29D9331A8();
      v33 = v54;
      sub_29D9331A8();
      v57 = sub_29D933978();
      v34 = *v49;
      v35 = v33;
      v36 = v55;
      (*v49)(v35, v55);
      v34(v32, v36);
      sub_29D8E2110(v31, type metadata accessor for BloodPressurePDFSampleInterval);
      result = sub_29D8E2110(v30, type metadata accessor for BloodPressurePDFSampleInterval);
      if ((v57 & 1) == 0)
      {
LABEL_4:
        a3 = v45 + 1;
        v27 = v44 + v40;
        v28 = v43 - 1;
        v29 = v42 + v40;
        if (v45 + 1 == v41)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v47)
      {
        break;
      }

      v37 = v48;
      sub_29D8E2458(v29, v48, type metadata accessor for BloodPressurePDFSampleInterval);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_29D8E2458(v37, v27, type metadata accessor for BloodPressurePDFSampleInterval);
      v27 += v46;
      v29 += v46;
      if (__CFADD__(v56++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_29D8DE1FC(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v134 = a1;
  v153 = sub_29D9339F8();
  v8 = *(v153 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v153, v9);
  v152 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v151 = &v130 - v13;
  v14 = type metadata accessor for BloodPressurePDFSampleInterval(0);
  v143 = *(v14 - 1);
  v16 = MEMORY[0x2A1C7C4A8](v14, v15);
  v138 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v147 = &v130 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v150 = &v130 - v23;
  MEMORY[0x2A1C7C4A8](v22, v24);
  v154 = &v130 - v25;
  v26 = *(a3 + 1);
  if (v26 < 1)
  {
    v28 = MEMORY[0x29EDCA190];
    v29 = a3;
LABEL_96:
    v14 = *v134;
    if (!*v134)
    {
      goto LABEL_134;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_98:
      v157 = v28;
      v124 = *(v28 + 2);
      if (v124 >= 2)
      {
        do
        {
          v125 = *v29;
          if (!*v29)
          {
            goto LABEL_132;
          }

          v126 = v28;
          v28 = v29;
          v29 = (v124 - 1);
          v127 = *&v126[16 * v124];
          v128 = *&v126[16 * v124 + 24];
          sub_29D8DED74((v125 + *(v143 + 72) * v127), (v125 + *(v143 + 72) * *&v126[16 * v124 + 16]), v125 + *(v143 + 72) * v128, v14);
          if (v5)
          {
            break;
          }

          if (v128 < v127)
          {
            goto LABEL_121;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_29D8DF4A0(v126);
          }

          if (v124 - 2 >= *(v126 + 2))
          {
            goto LABEL_122;
          }

          v129 = &v126[16 * v124];
          *v129 = v127;
          *(v129 + 1) = v128;
          v157 = v126;
          sub_29D8DF414(v29);
          v124 = *(v157 + 2);
          v29 = v28;
          v28 = v157;
        }

        while (v124 > 1);
      }

LABEL_106:

      return;
    }

LABEL_128:
    v28 = sub_29D8DF4A0(v28);
    goto LABEL_98;
  }

  v131 = a4;
  v27 = 0;
  v149 = (v8 + 8);
  v28 = MEMORY[0x29EDCA190];
  v148 = v14;
  v29 = a3;
  v132 = a3;
  while (1)
  {
    v136 = v28;
    if (v27 + 1 >= v26)
    {
      v42 = v27 + 1;
    }

    else
    {
      v144 = v26;
      v133 = v5;
      v30 = *v29;
      v31 = *v29 + *(v143 + 72) * (v27 + 1);
      v146 = *(v143 + 72);
      v32 = v146;
      v33 = v30;
      v156 = v30;
      v34 = v31;
      sub_29D8E2028(v31, v154, type metadata accessor for BloodPressurePDFSampleInterval);
      v35 = v150;
      sub_29D8E2028(v33 + v32 * v27, v150, type metadata accessor for BloodPressurePDFSampleInterval);
      v135 = v27;
      v36 = v151;
      sub_29D9331A8();
      v37 = v152;
      sub_29D9331A8();
      LODWORD(v145) = sub_29D933978();
      v38 = *v149;
      v39 = v153;
      (*v149)(v37, v153);
      v142 = v38;
      v38(v36, v39);
      sub_29D8E2110(v35, type metadata accessor for BloodPressurePDFSampleInterval);
      sub_29D8E2110(v154, type metadata accessor for BloodPressurePDFSampleInterval);
      v40 = v135 + 2;
      v41 = v156 + v146 * (v135 + 2);
      while (1)
      {
        v42 = v144;
        if (v144 == v40)
        {
          break;
        }

        v156 = v40;
        sub_29D8E2028(v41, v154, type metadata accessor for BloodPressurePDFSampleInterval);
        v43 = v150;
        sub_29D8E2028(v34, v150, type metadata accessor for BloodPressurePDFSampleInterval);
        v44 = v151;
        sub_29D9331A8();
        v45 = v152;
        sub_29D9331A8();
        LOBYTE(v155) = sub_29D933978() & 1;
        LODWORD(v155) = v155;
        v46 = v28;
        v47 = v153;
        v48 = v142;
        v142(v45, v153);
        v49 = v47;
        v28 = v46;
        v48(v44, v49);
        sub_29D8E2110(v43, type metadata accessor for BloodPressurePDFSampleInterval);
        sub_29D8E2110(v154, type metadata accessor for BloodPressurePDFSampleInterval);
        v40 = v156 + 1;
        v41 += v146;
        v34 += v146;
        if ((v145 & 1) != v155)
        {
          v42 = v156;
          break;
        }
      }

      v14 = v148;
      v5 = v133;
      v29 = v132;
      v27 = v135;
      if (v145)
      {
        if (v42 < v135)
        {
          goto LABEL_125;
        }

        if (v135 < v42)
        {
          v50 = v146 * (v42 - 1);
          v51 = v42 * v146;
          v144 = v42;
          v52 = v42;
          v53 = v135;
          v54 = v135 * v146;
          do
          {
            if (v53 != --v52)
            {
              v55 = *v29;
              if (!*v29)
              {
                goto LABEL_131;
              }

              sub_29D8E2458(v55 + v54, v138, type metadata accessor for BloodPressurePDFSampleInterval);
              if (v54 < v50 || v55 + v54 >= (v55 + v51))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v50)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_29D8E2458(v138, v55 + v50, type metadata accessor for BloodPressurePDFSampleInterval);
              v28 = v136;
            }

            ++v53;
            v50 -= v146;
            v51 -= v146;
            v54 += v146;
          }

          while (v53 < v52);
          v5 = v133;
          v27 = v135;
          v42 = v144;
        }
      }
    }

    v56 = *(v29 + 1);
    if (v42 >= v56)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v42, v27))
    {
      goto LABEL_124;
    }

    if (v42 - v27 >= v131)
    {
LABEL_32:
      v58 = v42;
      if (v42 < v27)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v27, v131))
    {
      goto LABEL_126;
    }

    if (v27 + v131 >= v56)
    {
      v57 = *(v29 + 1);
    }

    else
    {
      v57 = v27 + v131;
    }

    if (v57 < v27)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v42 == v57)
    {
      goto LABEL_32;
    }

    v133 = v5;
    v107 = *v29;
    v108 = *(v143 + 72);
    v109 = *v29 + v108 * (v42 - 1);
    v145 = -v108;
    v135 = v27;
    v110 = v27 - v42;
    v146 = v107;
    v137 = v108;
    v111 = v107 + v42 * v108;
    v139 = v57;
LABEL_87:
    v144 = v42;
    v140 = v111;
    v141 = v110;
    v112 = v111;
    v113 = v110;
    v142 = v109;
LABEL_88:
    v155 = v113;
    v114 = v154;
    sub_29D8E2028(v112, v154, type metadata accessor for BloodPressurePDFSampleInterval);
    v115 = v150;
    sub_29D8E2028(v109, v150, type metadata accessor for BloodPressurePDFSampleInterval);
    v116 = v151;
    sub_29D9331A8();
    v117 = v152;
    sub_29D9331A8();
    LODWORD(v156) = sub_29D933978();
    v118 = *v149;
    v119 = v117;
    v120 = v153;
    (*v149)(v119, v153);
    v118(v116, v120);
    sub_29D8E2110(v115, type metadata accessor for BloodPressurePDFSampleInterval);
    sub_29D8E2110(v114, type metadata accessor for BloodPressurePDFSampleInterval);
    if (v156)
    {
      break;
    }

    v14 = v148;
LABEL_86:
    v42 = v144 + 1;
    v109 = v142 + v137;
    v110 = v141 - 1;
    v58 = v139;
    v111 = v140 + v137;
    if (v144 + 1 != v139)
    {
      goto LABEL_87;
    }

    v5 = v133;
    v29 = v132;
    v28 = v136;
    v27 = v135;
    if (v139 < v135)
    {
      goto LABEL_123;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_29D68FFE8(0, *(v28 + 2) + 1, 1, v28);
    }

    v60 = *(v28 + 2);
    v59 = *(v28 + 3);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      v28 = sub_29D68FFE8((v59 > 1), v60 + 1, 1, v28);
    }

    *(v28 + 2) = v61;
    v62 = &v28[16 * v60];
    *(v62 + 4) = v27;
    *(v62 + 5) = v58;
    v63 = *v134;
    if (!*v134)
    {
      goto LABEL_133;
    }

    v139 = v58;
    if (v60)
    {
      v64 = v63;
      while (1)
      {
        v65 = v61 - 1;
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v66 = *(v28 + 4);
          v67 = *(v28 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_53:
          if (v69)
          {
            goto LABEL_112;
          }

          v82 = &v28[16 * v61];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_115;
          }

          v88 = &v28[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_119;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v61 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v92 = &v28[16 * v61];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_67:
        if (v87)
        {
          goto LABEL_114;
        }

        v95 = &v28[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_117;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_74:
        v103 = v65 - 1;
        if (v65 - 1 >= v61)
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

        if (!*v29)
        {
          goto LABEL_130;
        }

        v104 = *&v28[16 * v103 + 32];
        v105 = *&v28[16 * v65 + 40];
        sub_29D8DED74((*v29 + *(v143 + 72) * v104), (*v29 + *(v143 + 72) * *&v28[16 * v65 + 32]), *v29 + *(v143 + 72) * v105, v64);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v105 < v104)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_29D8DF4A0(v28);
        }

        if (v103 >= *(v28 + 2))
        {
          goto LABEL_109;
        }

        v106 = &v28[16 * v103];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        v157 = v28;
        sub_29D8DF414(v65);
        v28 = v157;
        v61 = *(v157 + 2);
        if (v61 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v28[16 * v61 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_110;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_111;
      }

      v77 = &v28[16 * v61];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_113;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_116;
      }

      if (v81 >= v73)
      {
        v99 = &v28[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_120;
        }

        if (v68 < v102)
        {
          v65 = v61 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v26 = *(v29 + 1);
    v27 = v139;
    if (v139 >= v26)
    {
      goto LABEL_96;
    }
  }

  v121 = v155;
  if (v146)
  {
    v122 = v147;
    sub_29D8E2458(v112, v147, type metadata accessor for BloodPressurePDFSampleInterval);
    v14 = v148;
    swift_arrayInitWithTakeFrontToBack();
    sub_29D8E2458(v122, v109, type metadata accessor for BloodPressurePDFSampleInterval);
    v109 += v145;
    v112 += v145;
    v123 = __CFADD__(v121, 1);
    v113 = v121 + 1;
    if (v123)
    {
      goto LABEL_86;
    }

    goto LABEL_88;
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

uint64_t sub_29D8DED74(char *a1, char *a2, unint64_t a3, char *a4)
{
  v66 = a4;
  v61 = sub_29D9339F8();
  v7 = *(v61 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v61, v8);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v59 = &v50 - v12;
  v65 = type metadata accessor for BloodPressurePDFSampleInterval(0);
  v14 = MEMORY[0x2A1C7C4A8](v65, v13);
  v58 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v14, v16);
  v63 = &v50 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_61;
  }

  v22 = (a2 - a1) / v20;
  v69 = a1;
  v68 = v66;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (v66 < a2 || &a2[v24] <= v66)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v66 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v55 = a2;
    v38 = &v66[v24];
    if (v24 >= 1)
    {
      v39 = -v20;
      v53 = (v7 + 8);
      v54 = -v20;
      v40 = v38;
      v64 = a1;
      v41 = v59;
      do
      {
        v51 = v38;
        v42 = v55;
        v55 += v39;
        v56 = v42;
        while (1)
        {
          if (v42 <= a1)
          {
            v69 = v42;
            v67 = v51;
            goto LABEL_58;
          }

          v43 = a3;
          v52 = v38;
          v62 = a3 + v39;
          v44 = v40 + v39;
          sub_29D8E2028(v40 + v39, v63, type metadata accessor for BloodPressurePDFSampleInterval);
          v45 = v58;
          sub_29D8E2028(v55, v58, type metadata accessor for BloodPressurePDFSampleInterval);
          sub_29D9331A8();
          v46 = v60;
          sub_29D9331A8();
          LODWORD(v57) = sub_29D933978();
          v47 = *v53;
          v48 = v46;
          v49 = v61;
          (*v53)(v48, v61);
          v47(v41, v49);
          sub_29D8E2110(v45, type metadata accessor for BloodPressurePDFSampleInterval);
          sub_29D8E2110(v63, type metadata accessor for BloodPressurePDFSampleInterval);
          if (v57)
          {
            break;
          }

          v38 = v40 + v39;
          a3 = v62;
          if (v43 < v40 || v62 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v64;
          }

          else
          {
            a1 = v64;
            if (v43 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v40 += v39;
          v39 = v54;
          v42 = v56;
          if (v44 <= v66)
          {
            v55 = v56;
            goto LABEL_57;
          }
        }

        a3 = v62;
        if (v43 < v56 || v62 >= v56)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v64;
          v38 = v52;
          v39 = v54;
        }

        else
        {
          a1 = v64;
          v38 = v52;
          v39 = v54;
          if (v43 != v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v40 > v66);
    }

LABEL_57:
    v69 = v55;
    v67 = v38;
  }

  else
  {
    v23 = v22 * v20;
    if (v66 < a1 || &a1[v23] <= v66)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v66 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = &v66[v23];
    v67 = &v66[v23];
    v62 = a3;
    if (v23 >= 1 && a2 < a3)
    {
      v55 = (v7 + 8);
      v56 = v20;
      v26 = v58;
      do
      {
        v64 = a1;
        v27 = v63;
        sub_29D8E2028(a2, v63, type metadata accessor for BloodPressurePDFSampleInterval);
        sub_29D8E2028(v66, v26, type metadata accessor for BloodPressurePDFSampleInterval);
        v28 = a2;
        v29 = v59;
        sub_29D9331A8();
        v30 = v60;
        sub_29D9331A8();
        v31 = sub_29D933978();
        v32 = *v55;
        v33 = v30;
        v34 = v61;
        (*v55)(v33, v61);
        v32(v29, v34);
        sub_29D8E2110(v26, type metadata accessor for BloodPressurePDFSampleInterval);
        sub_29D8E2110(v27, type metadata accessor for BloodPressurePDFSampleInterval);
        if (v31)
        {
          v35 = v56;
          a2 = &v56[v28];
          v36 = v64;
          if (v64 < v28 || v64 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v64 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v35 = v56;
          v37 = &v56[v66];
          v36 = v64;
          if (v64 < v66 || v64 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v28;
          }

          else
          {
            a2 = v28;
            if (v64 != v66)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v68 = v37;
          v66 = v37;
        }

        a1 = &v35[v36];
        v69 = a1;
      }

      while (v66 < v57 && a2 < v62);
    }
  }

LABEL_58:
  sub_29D8DF4CC(&v69, &v68, &v67, type metadata accessor for BloodPressurePDFSampleInterval);
  return 1;
}

uint64_t sub_29D8DF414(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_29D8DF4A0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_29D8DF4CC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_29D8DF5B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D8E2248(0, &qword_2A17B10E8, sub_29D6944A4, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_29D8DF704(uint64_t a1)
{
  v2 = type metadata accessor for BloodPressurePDFSampleInterval(0);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v331 = &v315 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v330 = &v315 - v9;
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = &v315 - v12;
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v319 = &v315 - v16;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v343 = &v315 - v18;
  v19 = MEMORY[0x29EDC9C68];
  sub_29D8E2248(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v22 = MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v342 = &v315 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v27 = &v315 - v26;
  v29 = MEMORY[0x2A1C7C4A8](v25, v28);
  v318 = &v315 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v327 = &v315 - v33;
  v35 = MEMORY[0x2A1C7C4A8](v32, v34);
  v328 = &v315 - v36;
  MEMORY[0x2A1C7C4A8](v35, v37);
  v341 = &v315 - v38;
  sub_29D8E2248(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], v19);
  MEMORY[0x2A1C7C4A8](v39 - 8, v40);
  v344 = &v315 - v41;
  v366 = sub_29D9339F8();
  v42 = *(v366 - 8);
  v44 = MEMORY[0x2A1C7C4A8](v366, v43);
  v350 = &v315 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x2A1C7C4A8](v44, v46);
  v349 = &v315 - v48;
  v50 = MEMORY[0x2A1C7C4A8](v47, v49);
  v322 = &v315 - v51;
  v53 = MEMORY[0x2A1C7C4A8](v50, v52);
  v55 = &v315 - v54;
  v57 = MEMORY[0x2A1C7C4A8](v53, v56);
  v356 = &v315 - v58;
  v60 = MEMORY[0x2A1C7C4A8](v57, v59);
  v372 = &v315 - v61;
  MEMORY[0x2A1C7C4A8](v60, v62);
  v376 = &v315 - v63;
  v377 = sub_29D9331D8();
  v64 = *(v377 - 8);
  v66 = MEMORY[0x2A1C7C4A8](v377, v65);
  v339 = &v315 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x2A1C7C4A8](v66, v68);
  v347 = &v315 - v70;
  v72 = MEMORY[0x2A1C7C4A8](v69, v71);
  v317 = &v315 - v73;
  v75 = MEMORY[0x2A1C7C4A8](v72, v74);
  v316 = &v315 - v76;
  v78 = MEMORY[0x2A1C7C4A8](v75, v77);
  v320 = &v315 - v79;
  v81 = MEMORY[0x2A1C7C4A8](v78, v80);
  v325 = &v315 - v82;
  v84 = MEMORY[0x2A1C7C4A8](v81, v83);
  v324 = &v315 - v85;
  v87 = MEMORY[0x2A1C7C4A8](v84, v86);
  v323 = &v315 - v88;
  v90 = MEMORY[0x2A1C7C4A8](v87, v89);
  v326 = &v315 - v91;
  v93 = MEMORY[0x2A1C7C4A8](v90, v92);
  v338 = &v315 - v94;
  v96 = MEMORY[0x2A1C7C4A8](v93, v95);
  v337 = &v315 - v97;
  v99 = MEMORY[0x2A1C7C4A8](v96, v98);
  v329 = &v315 - v100;
  v102 = MEMORY[0x2A1C7C4A8](v99, v101);
  v334 = &v315 - v103;
  v105 = MEMORY[0x2A1C7C4A8](v102, v104);
  v333 = &v315 - v106;
  v108 = MEMORY[0x2A1C7C4A8](v105, v107);
  v332 = &v315 - v109;
  v111 = MEMORY[0x2A1C7C4A8](v108, v110);
  v345 = &v315 - v112;
  v114 = MEMORY[0x2A1C7C4A8](v111, v113);
  v321 = &v315 - v115;
  v117 = MEMORY[0x2A1C7C4A8](v114, v116);
  v355 = &v315 - v118;
  v120 = MEMORY[0x2A1C7C4A8](v117, v119);
  v354 = &v315 - v121;
  v123 = MEMORY[0x2A1C7C4A8](v120, v122);
  v364 = &v315 - v124;
  MEMORY[0x2A1C7C4A8](v123, v125);
  v363 = &v315 - v126;
  v362 = type metadata accessor for PregnancyModel(0);
  MEMORY[0x2A1C7C4A8](v362, v127);
  v130 = &v315 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = *(a1 + 16);
  result = MEMORY[0x29EDCA190];
  if (!v131)
  {
    return result;
  }

  v348 = v3;
  v335 = v55;
  v336 = v27;
  v340 = v13;
  v358 = v2;
  v379 = MEMORY[0x29EDCA190];
  v133 = a1 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
  v370 = (v42 + 16);
  v374 = (v64 + 16);
  v368 = v64 + 32;
  v353 = *(v128 + 72);
  v352 = v42 + 48;
  v346 = (v42 + 32);
  v357 = v64;
  v371 = (v64 + 8);
  v367 = (v42 + 8);
  v365 = MEMORY[0x29EDCA190];
  v359 = MEMORY[0x29EDCA190];
  v134 = v366;
  v135 = v344;
  do
  {
    sub_29D8E2028(v133, v130, type metadata accessor for PregnancyModel);
    v137 = *v370;
    (*v370)(v376, v130, v134);
    v138 = *(v362 + 20);
    v369 = v137;
    v137(v372, &v130[v138], v134);
    v139 = v363;
    sub_29D933188();
    v375 = *v374;
    v375(v364, v139, v377);
    v140 = v365;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v140 = sub_29D690144(0, (v140[2] + 1), 1, v140);
    }

    v142 = v140[2];
    v141 = v140[3];
    if (v142 >= v141 >> 1)
    {
      v140 = sub_29D690144((v141 > 1), v142 + 1, 1, v140);
    }

    v140[2] = (v142 + 1);
    v361 = (*(v357 + 80) + 32) & ~*(v357 + 80);
    v365 = v140;
    v373 = *(v357 + 72);
    v351 = v140 + v361;
    v143 = v140 + v361 + v373 * v142;
    v144 = *(v357 + 32);
    v145 = v377;
    v144(v143, v364, v377);
    sub_29D8E2090(&v130[*(v362 + 24)], v135, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    v134 = v366;
    if ((*v352)(v135, 1, v366) == 1)
    {
      v136 = *v371;
      (*v371)(v363, v145);
      sub_29D8E2110(v130, type metadata accessor for PregnancyModel);
      sub_29D8E2170(v135, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    }

    else
    {
      v360 = v144;
      v146 = v356;
      (*v346)(v356, v135, v134);
      v147 = v369;
      v369(v376, &v130[v138], v134);
      v147(v372, v146, v134);
      v148 = v354;
      sub_29D933188();
      v375(v355, v148, v377);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v359 = sub_29D690144(0, v359[2] + 1, 1, v359);
      }

      v150 = v359[2];
      v149 = v359[3];
      if (v150 >= v149 >> 1)
      {
        v359 = sub_29D690144((v149 > 1), v150 + 1, 1, v359);
      }

      v151 = *v371;
      v152 = v377;
      (*v371)(v354, v377);
      (*v367)(v356, v134);
      v151(v363, v152);
      v136 = v151;
      sub_29D8E2110(v130, type metadata accessor for PregnancyModel);
      v153 = v359;
      v359[2] = v150 + 1;
      v154 = v152;
      v144 = v360;
      v360(&v153[v361 + v150 * v373], v355, v154);
      v135 = v344;
    }

    v133 += v353;
    --v131;
  }

  while (v131);
  v155 = v365;
  if (!v365[2])
  {

    return MEMORY[0x29EDCA190];
  }

  v156 = v321;
  v157 = v377;
  v375(v321, v351, v377);
  v158 = v322;
  sub_29D9331A8();
  v159 = v157;
  v364 = v136;
  (v136)(v156, v157);
  v160 = v335;
  v363 = *v346;
  (v363)(v335, v158, v134);
  v161 = v155[2];
  v360 = v144;
  if (v161)
  {
    v162 = v155 + v361;
    v356 = MEMORY[0x29EDCA190];
    do
    {
      v164 = v345;
      v375(v345, v162, v159);
      v165 = v376;
      v166 = v159;
      sub_29D933178();
      sub_29D8E24C0(&qword_2A17B4730, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
      v167 = sub_29D939CB8();
      v168 = *v367;
      (*v367)(v165, v134);
      if (v167)
      {
        sub_29D9331A8();
        v169 = sub_29D933978();
        v168(v165, v134);
        if (v169)
        {
          v369(v165, v160, v134);
          sub_29D933178();
          v170 = v332;
          sub_29D933188();
          v375(v333, v170, v377);
          v171 = v356;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v171 = sub_29D690144(0, *(v171 + 2) + 1, 1, v171);
          }

          v173 = *(v171 + 2);
          v172 = *(v171 + 3);
          v174 = v173 + 1;
          if (v173 >= v172 >> 1)
          {
            v171 = sub_29D690144((v172 > 1), v173 + 1, 1, v171);
          }

          v175 = v377;
          v176 = v364;
          (v364)(v332, v377);
          v177 = v333;
        }

        else
        {
          v375(v334, v164, v377);
          v171 = v356;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v171 = sub_29D690144(0, *(v171 + 2) + 1, 1, v171);
          }

          v173 = *(v171 + 2);
          v178 = *(v171 + 3);
          v174 = v173 + 1;
          if (v173 >= v178 >> 1)
          {
            v171 = sub_29D690144((v178 > 1), v173 + 1, 1, v171);
          }

          v177 = v334;
          v175 = v377;
          v176 = v364;
        }

        *(v171 + 2) = v174;
        v356 = v171;
        v179 = &v171[v361];
        v163 = v373;
        v360(&v179[v173 * v373], v177, v175);
        v180 = v376;
        v181 = v345;
        sub_29D933178();
        v176(v181, v175);
        v160 = v335;
        v168(v335, v134);
        (v363)(v160, v180, v134);
        v159 = v175;
      }

      else
      {
        (v364)(v164, v166);
        v159 = v166;
        v163 = v373;
      }

      v162 += v163;
      --v161;
    }

    while (v161);

    v144 = v360;
    v182 = v356;
  }

  else
  {

    v182 = MEMORY[0x29EDCA190];
  }

  v183 = v341;
  v184 = v357;
  v362 = *(v357 + 56);
  v363 = (v357 + 56);
  (v362)(v341, 1, 1, v159);
  v185 = *(v182 + 2);
  v186 = v329;
  v356 = v182;
  if (!v185)
  {
    sub_29D935E88();

    v351 = 0;
    v235 = MEMORY[0x29EDCA190];
    v185 = v340;
    v186 = v336;
    v234 = v375;
    goto LABEL_67;
  }

  v187 = &v182[v361];
  v365 = (v184 + 48);
  sub_29D935E88();
  v353 = 0;
  v354 = MEMORY[0x29EDCA190];
  v346 = v187;
  v188 = v187;
  v351 = v185;
  v189 = v328;
  do
  {
    v375(v186, v188, v159);
    sub_29D8E2090(v183, v189, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
    v355 = *v365;
    if ((v355)(v189, 1, v159) == 1)
    {
      v190 = MEMORY[0x29EDB98E8];
      sub_29D8E2170(v183, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
      v191 = v190;
      v159 = v377;
      sub_29D8E2170(v189, &qword_2A17B3A18, v191);
LABEL_39:
      v144(v183, v186, v159);
      (v362)(v183, 0, 1, v159);
      goto LABEL_40;
    }

    v192 = v186;
    v193 = v337;
    v144(v337, v189, v159);
    v194 = v159;
    sub_29D933178();
    sub_29D9331A8();
    v195 = v338;
    sub_29D933188();
    v196 = sub_29D9331C8();
    if (v198 != 0.0)
    {
      MEMORY[0x2A1C7C4A8](v196, v197);
      *(&v315 - 2) = v195;
      v200 = v327;
      v201 = v353;
      sub_29D8DBD3C(sub_29D8E2214, v359, v327);
      v353 = v201;
      if ((v355)(v200, 1, v194) == 1)
      {
        v202 = v194;
        v203 = v364;
        (v364)(v337, v202);
        v204 = MEMORY[0x29EDB98E8];
        sub_29D8E2170(v341, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
        v205 = v204;
        v159 = v377;
        sub_29D8E2170(v200, &qword_2A17B3A18, v205);
        v144 = v360;
        v186 = v329;
      }

      else
      {
        v206 = v326;
        v360(v326, v200, v194);
        v207 = v376;
        sub_29D933178();
        v208 = v372;
        sub_29D933178();
        v209 = sub_29D933968();
        v210 = v134;
        v211 = *v367;
        (*v367)(v208, v210);
        v211(v207, v210);
        v186 = v329;
        if (v209)
        {
          sub_29D9331A8();
          sub_29D933178();
          v212 = v323;
          sub_29D933188();
          v375(v324, v212, v377);
          v213 = v354;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v213 = sub_29D690144(0, v213[2] + 1, 1, v213);
          }

          v144 = v360;
          v354 = v213;
          v215 = v213[2];
          v214 = v213[3];
          v216 = v215 + 1;
          v217 = v215;
          if (v215 >= v214 >> 1)
          {
            v354 = sub_29D690144((v214 > 1), v215 + 1, 1, v354);
          }

          v218 = v377;
          v203 = v364;
          (v364)(v323, v377);
          v203(v326, v218);
          v203(v337, v218);
          sub_29D8E2170(v341, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
          v219 = v354;
          *(v354 + 2) = v216;
          v159 = v218;
          v220 = v219 + v361 + v217 * v373;
          v221 = &v356;
        }

        else
        {
          v375(v325, v206, v377);
          v222 = v354;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v222 = sub_29D690144(0, v222[2] + 1, 1, v222);
          }

          v144 = v360;
          v223 = v337;
          v354 = v222;
          v225 = v222[2];
          v224 = v222[3];
          v226 = v225 + 1;
          v352 = v225;
          if (v225 >= v224 >> 1)
          {
            v354 = sub_29D690144((v224 > 1), v225 + 1, 1, v354);
          }

          v218 = v377;
          v203 = v364;
          (v364)(v206, v377);
          v203(v223, v218);
          sub_29D8E2170(v341, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
          v227 = v354;
          *(v354 + 2) = v226;
          v159 = v218;
          v220 = v227 + v361 + v352 * v373;
          v221 = &v357;
        }

        v144(v220, *(v221 - 32), v218);
        v134 = v366;
      }

      v203(v338, v159);
      v189 = v328;
      v183 = v341;
      goto LABEL_39;
    }

    v199 = v364;
    (v364)(v193, v194);
    v199(v192, v194);
    v199(v195, v194);
    v159 = v194;
    v144 = v360;
    v186 = v192;
    v183 = v341;
LABEL_40:
    v188 += v373;
    --v185;
  }

  while (v185);
  if (v351 > *(v356 + 2))
  {
    __break(1u);
LABEL_102:
    v188 = sub_29D690144(0, *(v188 + 2) + 1, 1, v188);
    goto LABEL_64;
  }

  v228 = v320;
  v229 = v375;
  v230 = (v375)(v320, v346 + (v351 - 1) * v373, v159);
  MEMORY[0x2A1C7C4A8](v230, v231);
  *(&v315 - 2) = v228;
  v232 = v318;
  v233 = v353;
  sub_29D8DBD3C(sub_29D8E21E0, v359, v318);
  v351 = v233;

  if ((v355)(v232, 1, v159) == 1)
  {
    sub_29D8E2170(v232, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
    (v364)(v228, v159);
    v185 = v340;
    v186 = v336;
    v234 = v229;
    v182 = v356;
    v235 = v354;
    goto LABEL_67;
  }

  v189 = v316;
  v144(v316, v232, v159);
  v134 = v317;
  v229(v317, v189, v159);
  v188 = v354;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v185 = v340;
  v186 = v336;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_64:
  v238 = *(v188 + 2);
  v237 = *(v188 + 3);
  v239 = v188;
  if (v238 >= v237 >> 1)
  {
    v239 = sub_29D690144((v237 > 1), v238 + 1, 1, v188);
  }

  v240 = v189;
  v241 = v377;
  v242 = v364;
  (v364)(v240, v377);
  v239[2] = v238 + 1;
  v235 = v239;
  v144(v239 + v361 + v238 * v373, v134, v241);
  v242(v320, v241);
  v234 = v375;
  v182 = v356;
LABEL_67:
  v243 = *(v182 + 2);
  v244 = v343;
  v354 = v235;
  if (v243)
  {
    v378[0] = MEMORY[0x29EDCA190];
    sub_29D935E88();
    v365 = v243;
    sub_29D7EE660(0, v243, 0);
    v245 = v377;
    v246 = v378[0];
    v247 = &v182[v361];
    v248 = v372;
    do
    {
      v249 = v347;
      v234(v347, v247, v245);
      v250 = v376;
      sub_29D9331A8();
      sub_29D933178();
      v251 = v366;
      v252 = v369;
      v369(v244, v250, v366);
      v252(v349, v250, v251);
      v252(v350, v248, v251);
      v244 = v343;
      v253 = v358;
      sub_29D933188();
      v254 = *v367;
      (*v367)(v248, v251);
      v254(v250, v251);
      v245 = v377;
      (v364)(v249, v377);
      *(v244 + *(v253 + 24)) = 1;
      v378[0] = v246;
      v256 = v246[2];
      v255 = v246[3];
      if (v256 >= v255 >> 1)
      {
        sub_29D7EE660((v255 > 1), v256 + 1, 1);
        v245 = v377;
        v246 = v378[0];
      }

      v246[2] = v256 + 1;
      sub_29D8E2458(v244, v246 + ((*(v348 + 80) + 32) & ~*(v348 + 80)) + *(v348 + 72) * v256, type metadata accessor for BloodPressurePDFSampleInterval);
      v247 += v373;
      v365 = (v365 - 1);
      v234 = v375;
    }

    while (v365);
    v359 = v246;
    v185 = v340;
    v186 = v336;
    v235 = v354;
  }

  else
  {
    sub_29D935E88();
    v359 = MEMORY[0x29EDCA190];
  }

  v257 = v235[2];
  v258 = MEMORY[0x29EDCA190];
  v259 = v341;
  if (v257)
  {
    v378[0] = MEMORY[0x29EDCA190];
    sub_29D7EE660(0, v257, 0);
    v260 = v377;
    v258 = v378[0];
    v261 = v235 + v361;
    v262 = v319;
    v263 = v375;
    do
    {
      v365 = v258;
      v264 = v347;
      v263(v347, v261, v260);
      sub_29D9331A8();
      v265 = v372;
      sub_29D933178();
      v266 = v366;
      v267 = v369;
      v369(v262, v376, v366);
      v267(v349, v376, v266);
      v267(v350, v265, v266);
      v268 = v358;
      sub_29D933188();
      v269 = *v367;
      v270 = v265;
      v271 = v376;
      (*v367)(v270, v266);
      v269(v271, v266);
      v260 = v377;
      v272 = v264;
      v258 = v365;
      (v364)(v272, v377);
      *(v262 + *(v268 + 24)) = 2;
      v378[0] = v258;
      v274 = *(v258 + 16);
      v273 = *(v258 + 24);
      if (v274 >= v273 >> 1)
      {
        sub_29D7EE660((v273 > 1), v274 + 1, 1);
        v262 = v319;
        v260 = v377;
        v258 = v378[0];
      }

      *(v258 + 16) = v274 + 1;
      sub_29D8E2458(v262, v258 + ((*(v348 + 80) + 32) & ~*(v348 + 80)) + *(v348 + 72) * v274, type metadata accessor for BloodPressurePDFSampleInterval);
      v261 += v373;
      --v257;
      v263 = v375;
    }

    while (v257);
    v185 = v340;
    v186 = v336;
    v259 = v341;
  }

  sub_29D88BF3C(v359);
  sub_29D88BF3C(v258);
  v275 = v379;
  v276 = swift_isUniquelyReferenced_nonNull_native();
  v277 = v358;
  v278 = v348;
  if ((v276 & 1) == 0)
  {
    v275 = sub_29D702CAC(v275);
  }

  v279 = v377;
  v352 = v275;
  v280 = v275[2];
  v353 = (*(v278 + 80) + 32) & ~*(v278 + 80);
  v281 = v275 + v353;
  v378[0] = v275 + v353;
  v378[1] = v280;
  v282 = v351;
  sub_29D8DDD60(v378);
  v351 = v282;
  v283 = v352;
  (v362)(v186, 1, 1, v279);
  v284 = v283[2];
  if (!v284)
  {
    v310 = v283;
    goto LABEL_98;
  }

  v285 = *(v278 + 72);
  v365 = (v357 + 48);
  sub_29D935E88();
  v359 = v283;
  v286 = v375;
  v355 = v285;
  while (2)
  {
    v373 = v281;
    sub_29D8E2028(v281, v185, type metadata accessor for BloodPressurePDFSampleInterval);
    v291 = v342;
    sub_29D8E2090(v186, v342, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
    if ((*v365)(v291, 1, v279) == 1)
    {
      v287 = MEMORY[0x29EDB98E8];
      sub_29D8E2170(v186, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
      v288 = v287;
      v279 = v377;
      sub_29D8E2170(v291, &qword_2A17B3A18, v288);
      v289 = v277;
LABEL_85:
      v290 = v373;
      goto LABEL_86;
    }

    v361 = v284;
    v292 = v339;
    v360(v339, v291, v279);
    v293 = v376;
    v294 = v279;
    sub_29D933178();
    v295 = v372;
    sub_29D9331A8();
    v296 = sub_29D933978();
    v297 = v366;
    v298 = *v367;
    (*v367)(v295, v366);
    v298(v293, v297);
    if ((v296 & 1) == 0)
    {
      (v364)(v292, v294);
      v186 = v336;
      sub_29D8E2170(v336, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
      v289 = v358;
      v185 = v340;
      v279 = v294;
      v286 = v375;
      v284 = v361;
      v285 = v355;
      goto LABEL_85;
    }

    sub_29D933178();
    sub_29D9331A8();
    v299 = v330;
    v300 = v369;
    v369(v330, v293, v297);
    v300(v349, v293, v297);
    v300(v350, v372, v297);
    v301 = v358;
    v302 = v372;
    sub_29D933188();
    v298(v302, v297);
    v298(v293, v297);
    *(v299 + *(v301 + 24)) = 0;
    sub_29D8E2028(v299, v331, type metadata accessor for BloodPressurePDFSampleInterval);
    v303 = v359;
    v304 = swift_isUniquelyReferenced_nonNull_native();
    v185 = v340;
    v290 = v373;
    if ((v304 & 1) == 0)
    {
      v303 = sub_29D690110(0, v303[2] + 1, 1, v303);
    }

    v306 = v303[2];
    v305 = v303[3];
    v186 = v336;
    v307 = v339;
    v286 = v375;
    if (v306 >= v305 >> 1)
    {
      v359 = sub_29D690110((v305 > 1), v306 + 1, 1, v303);
    }

    else
    {
      v359 = v303;
    }

    sub_29D8E2110(v330, type metadata accessor for BloodPressurePDFSampleInterval);
    v308 = v377;
    (v364)(v307, v377);
    sub_29D8E2170(v186, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
    v309 = v359;
    v359[2] = v306 + 1;
    v279 = v308;
    v285 = v355;
    sub_29D8E2458(v331, v309 + v353 + v306 * v355, type metadata accessor for BloodPressurePDFSampleInterval);
    v289 = v358;
    v284 = v361;
LABEL_86:
    v277 = v289;
    v286(v186, v185 + *(v289 + 20), v279);
    sub_29D8E2110(v185, type metadata accessor for BloodPressurePDFSampleInterval);
    (v362)(v186, 0, 1, v279);
    v281 = &v285[v290];
    if (--v284)
    {
      continue;
    }

    break;
  }

  v259 = v341;
  v310 = v359;
LABEL_98:
  v378[0] = v310;
  sub_29D935E88();
  v311 = v351;
  sub_29D8DC928(v378);
  v313 = v366;
  v312 = v367;
  if (v311)
  {

    __break(1u);
  }

  else
  {
    v314 = MEMORY[0x29EDB98E8];
    sub_29D8E2170(v186, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
    sub_29D8E2170(v259, &qword_2A17B3A18, v314);
    (*v312)(v335, v313);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return v378[0];
  }

  return result;
}

uint64_t sub_29D8E1D28(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v29 = a1;
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v5, v8);
  v11 = &v29 - v10;
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v15 = &v29 - v14;
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v29 - v17;
  v19 = type metadata accessor for BloodPressurePDFSampleInterval(0);
  v20 = v19 - 8;
  v30 = *(v19 - 8);
  v32 = v30;
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v3 + 16);
  v24(v18, v29, v2);
  v24(v15, v31, v2);
  v24(v23, v18, v2);
  v24(v11, v18, v2);
  v24(v7, v15, v2);
  sub_29D933188();
  v25 = *(v3 + 8);
  v25(v15, v2);
  v25(v18, v2);
  v23[*(v20 + 32)] = 0;
  sub_29D8E2248(0, &qword_2A17B10E0, type metadata accessor for BloodPressurePDFSampleInterval, MEMORY[0x29EDC9E90]);
  v26 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29D93DDB0;
  sub_29D8E2458(v23, v27 + v26, type metadata accessor for BloodPressurePDFSampleInterval);
  return v27;
}

uint64_t sub_29D8E2028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8E2090(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D8E2248(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D8E2110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D8E2170(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D8E2248(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D8E2248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8E22D4(uint64_t a1)
{
  result = sub_29D9339F8();
  if (v2 <= 0x3F)
  {
    result = sub_29D9331D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29D8E2374()
{
  result = qword_2A17B79A8;
  if (!qword_2A17B79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B79A8);
  }

  return result;
}

uint64_t sub_29D8E2458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8E24C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_29D8E2508(void *a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  v3 = qword_2A1A24658;
  v4 = a1;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A1A2BF10);
  v6 = sub_29D937878();
  v7 = sub_29D93A268();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] Initializing CurrentClassificationGuidelinesPublisherWithInitialValue", v8, 0xCu);
    sub_29D69417C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  return v2;
}

uint64_t sub_29D8E2694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _s59CurrentClassificationGuidelinesSubscriptionWithInitialValueCMa(0, a2, a3, a4);
  v7 = *(v4 + 16);
  v10 = sub_29D8E4030(a1, v7, v8, v9);

  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v11 = sub_29D937898();
  sub_29D69C6C0(v11, qword_2A1A2BF10);
  v12 = sub_29D937878();
  v13 = sub_29D93A268();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21[0] = v20;
    *v14 = 136446210;
    v15 = sub_29D93AF08();
    v17 = v10;
    v18 = sub_29D6C2364(v15, v16, v21);

    *(v14 + 4) = v18;
    v10 = v17;
    _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s] Received subscriber, creating subscription", v14, 0xCu);
    sub_29D69417C(v20);
    MEMORY[0x29ED6BE30](v20, -1, -1);
    MEMORY[0x29ED6BE30](v14, -1, -1);
  }

  v21[3] = v6;
  v21[4] = swift_getWitnessTable();
  v21[0] = v10;
  sub_29D9381F8();
  return sub_29D69417C(v21);
}

uint64_t sub_29D8E28D4(uint64_t a1)
{
  result = sub_29D93A7F8();
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

uint64_t sub_29D8E29A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  v4 = sub_29D93A7F8();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_29D8E2A60(uint64_t a1)
{
  v3 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  v4 = sub_29D93A7F8();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void sub_29D8E2BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v51 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D93A7F8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = v49 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v53 = v11;
    v54 = v9;
    v50 = a1;
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v18 = sub_29D937898();
    v52 = sub_29D69C6C0(v18, qword_2A1A2BF10);
    v19 = sub_29D937878();
    v20 = sub_29D93A268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49[0] = a5;
      v23 = v22;
      v56 = v22;
      *v21 = 136446466;
      v24 = sub_29D93AF08();
      v26 = sub_29D6C2364(v24, v25, &v56);
      v49[1] = a3;
      v27 = v26;

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      v55 = v50;
      v28 = sub_29D93AD38();
      v30 = sub_29D6C2364(v28, v29, &v56);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_29D677000, v19, v20, "[%{public}s] Received initial guidelines: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v23, -1, -1);
      MEMORY[0x29ED6BE30](v21, -1, -1);
    }

    v31 = v53;
    sub_29D8E29A0(v15);
    v32 = v54;
    if ((*(v54 + 48))(v15, 1, a4))
    {
      (*(v12 + 8))(v15, v31);
    }

    else
    {
      v41 = v51;
      (*(v32 + 16))(v51, v15, a4);
      (*(v12 + 8))(v15, v31);
      v56 = v50;
      sub_29D938208();
      (*(v32 + 8))(v41, a4);
    }

    *(v17 + *((*MEMORY[0x29EDCA1E8] & *v17) + 0x70)) = 1;
    v42 = sub_29D937878();
    v43 = sub_29D93A268();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v56 = v45;
      *v44 = 136446210;
      v46 = sub_29D93AF08();
      v48 = sub_29D6C2364(v46, v47, &v56);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_29D677000, v42, v43, "[%{public}s] Sent initial guidelines and set hasSentInitialValue to true", v44, 0xCu);
      sub_29D69417C(v45);
      MEMORY[0x29ED6BE30](v45, -1, -1);
      MEMORY[0x29ED6BE30](v44, -1, -1);
    }
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v33 = sub_29D937898();
    sub_29D69C6C0(v33, qword_2A1A2BF10);
    v34 = sub_29D937878();
    v35 = sub_29D93A288();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v56 = v37;
      *v36 = 136446210;
      v38 = sub_29D93AF08();
      v40 = sub_29D6C2364(v38, v39, &v56);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_29D677000, v34, v35, "[%{public}s] Self is nil, cannot send initial guidelines", v36, 0xCu);
      sub_29D69417C(v37);
      MEMORY[0x29ED6BE30](v37, -1, -1);
      MEMORY[0x29ED6BE30](v36, -1, -1);
    }
  }
}

void sub_29D8E315C()
{
  swift_getObjectType();
  v1 = *v0;
  v2 = MEMORY[0x29EDCA1E8];
  v3 = *MEMORY[0x29EDCA1E8];
  v4 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x50);
  v5 = sub_29D93A7F8();
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v20 - v7;
  v9 = *(v0 + *((v3 & v1) + 0x68));
  if (v9)
  {
    [v9 stopObserving_];
    (*(*(v4 - 8) + 56))(v8, 1, 1, v4);
    sub_29D8E2A60(v8);
    v10 = *((*v2 & *v0) + 0x68);
    v11 = *(v0 + v10);
    *(v0 + v10) = 0;

    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v12 = sub_29D937898();
    sub_29D69C6C0(v12, qword_2A1A2BF10);
    v13 = sub_29D937878();
    v14 = sub_29D93A2A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      v17 = sub_29D93AF08();
      v19 = sub_29D6C2364(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s] Subscription cancelled, stopped observing", v15, 0xCu);
      sub_29D69417C(v16);
      MEMORY[0x29ED6BE30](v16, -1, -1);
      MEMORY[0x29ED6BE30](v15, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29D8E33B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v51 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D93A7F8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = v49 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v50 = a1;
    v53 = v9;
    v49[1] = a5;
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v18 = sub_29D937898();
    v52 = sub_29D69C6C0(v18, qword_2A1A2BF10);
    v19 = sub_29D937878();
    v20 = sub_29D93A268();
    v21 = os_log_type_enabled(v19, v20);
    v49[2] = a3;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49[0] = v17;
      v24 = v23;
      v55 = v23;
      *v22 = 136446466;
      v25 = sub_29D93AF08();
      v27 = sub_29D6C2364(v25, v26, &v55);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2080;
      v54 = v50;
      v28 = sub_29D93AD38();
      v30 = sub_29D6C2364(v28, v29, &v55);

      *(v22 + 14) = v30;
      _os_log_impl(&dword_29D677000, v19, v20, "[%{public}s] Received updated guidelines: %s", v22, 0x16u);
      swift_arrayDestroy();
      v31 = v24;
      v17 = v49[0];
      MEMORY[0x29ED6BE30](v31, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);
    }

    sub_29D8E29A0(v15);
    v32 = v53;
    if ((*(v53 + 48))(v15, 1, a4))
    {
      (*(v12 + 8))(v15, v11);
    }

    else
    {
      v41 = v51;
      (*(v32 + 16))(v51, v15, a4);
      (*(v12 + 8))(v15, v11);
      v55 = v50;
      sub_29D938208();
      (*(v32 + 8))(v41, a4);
    }

    v42 = sub_29D937878();
    v43 = sub_29D93A268();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v55 = v45;
      *v44 = 136446210;
      v46 = sub_29D93AF08();
      v48 = sub_29D6C2364(v46, v47, &v55);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_29D677000, v42, v43, "[%{public}s] Sent updated guidelines", v44, 0xCu);
      sub_29D69417C(v45);
      MEMORY[0x29ED6BE30](v45, -1, -1);
      MEMORY[0x29ED6BE30](v44, -1, -1);
    }
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v33 = sub_29D937898();
    sub_29D69C6C0(v33, qword_2A1A2BF10);
    v34 = sub_29D937878();
    v35 = sub_29D93A288();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v55 = v37;
      *v36 = 136446210;
      v38 = sub_29D93AF08();
      v40 = sub_29D6C2364(v38, v39, &v55);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_29D677000, v34, v35, "[%{public}s] Self is nil, cannot send updated guidelines", v36, 0xCu);
      sub_29D69417C(v37);
      MEMORY[0x29ED6BE30](v37, -1, -1);
      MEMORY[0x29ED6BE30](v36, -1, -1);
    }
  }
}

void sub_29D8E3934(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D8E407C();
}

id sub_29D8E39D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s59CurrentClassificationGuidelinesSubscriptionWithInitialValueCMa(0, *((*MEMORY[0x29EDCA1E8] & *v4) + 0x50), *((*MEMORY[0x29EDCA1E8] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_29D8E3A44(char *a1)
{
  v2 = MEMORY[0x29EDCA1E8];
  v3 = *((*MEMORY[0x29EDCA1E8] & *a1) + 0x60);
  v4 = sub_29D93A7F8();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *&a1[*((*v2 & *a1) + 0x68)];
}

id sub_29D8E3BB0(uint64_t a1, void *a2)
{
  v40 = a2;
  v37 = a1;
  ObjectType = swift_getObjectType();
  v3 = *MEMORY[0x29EDCA1E8];
  v4 = MEMORY[0x29EDCA1E8];
  v5 = *MEMORY[0x29EDCA1E8] & *v2;
  v39 = *v2;
  v6 = *(v5 + 80);
  v38 = sub_29D93A7F8();
  v7 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38, v8);
  v10 = &v36 - v9;
  v11 = *((v3 & v39) + 0x60);
  v12 = *(v6 - 8);
  v13 = *(v12 + 56);
  v13(&v2[v11], 1, 1, v6);
  v14 = v4;
  v15 = *((*v4 & *v2) + 0x68);
  *&v2[v15] = 0;
  v2[*((*v14 & *v2) + 0x70)] = 0;
  (*(v12 + 16))(v10, v37, v6);
  v13(v10, 0, 1, v6);
  swift_beginAccess();
  (*(v7 + 40))(&v2[v11], v10, v38);
  swift_endAccess();
  v16 = *&v2[v15];
  v17 = v40;
  *&v2[v15] = v40;
  v18 = v17;

  v19 = *((v3 & v39) + 0x58);
  v40 = v6;
  v21 = _s59CurrentClassificationGuidelinesSubscriptionWithInitialValueCMa(0, v6, v19, v20);
  v43.receiver = v2;
  v43.super_class = v21;
  v22 = objc_msgSendSuper2(&v43, sel_init);
  [v18 startObserving_];
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v23 = sub_29D937898();
  sub_29D69C6C0(v23, qword_2A1A2BF10);
  v24 = sub_29D937878();
  v25 = sub_29D93A268();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136446210;
    v28 = ObjectType;
    v29 = sub_29D93AF08();
    v31 = sub_29D6C2364(v29, v30, aBlock);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_29D677000, v24, v25, "[%{public}s] Starting to observe classification manager", v26, 0xCu);
    sub_29D69417C(v27);
    MEMORY[0x29ED6BE30](v27, -1, -1);
    MEMORY[0x29ED6BE30](v26, -1, -1);
  }

  else
  {

    v28 = ObjectType;
  }

  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  v33[2] = v40;
  v33[3] = v19;
  v33[4] = v32;
  v33[5] = v28;
  aBlock[4] = sub_29D8E44DC;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D83C0B4;
  aBlock[3] = &unk_2A244D6C0;
  v34 = _Block_copy(aBlock);

  [v18 currentClassificationGuidelinesWithCompletionHandler_];
  _Block_release(v34);

  return v22;
}

void sub_29D8E407C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = MEMORY[0x29EDCA1E8];
  v4 = (*MEMORY[0x29EDCA1E8] & *v0);
  if (*(v0 + v4[14]) == 1)
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v5 = sub_29D937898();
    sub_29D69C6C0(v5, qword_2A1A2BF10);
    v6 = sub_29D937878();
    v7 = sub_29D93A268();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock[0] = v9;
      *v8 = 136446210;
      v10 = sub_29D93AF08();
      v12 = sub_29D6C2364(v10, v11, aBlock);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] Preferred guidelines updated, fetching new guidelines", v8, 0xCu);
      sub_29D69417C(v9);
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);
    }

    v13 = *(v1 + *((*v3 & *v1) + 0x68));
    if (v13)
    {
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      v15[2] = v4[10];
      v15[3] = v4[11];
      v15[4] = v14;
      v15[5] = ObjectType;
      aBlock[4] = sub_29D8E44B8;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D83C0B4;
      aBlock[3] = &unk_2A244D670;
      v16 = _Block_copy(aBlock);
      v17 = v13;

      [v17 currentClassificationGuidelinesWithCompletionHandler_];
      _Block_release(v16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v18 = sub_29D937898();
    sub_29D69C6C0(v18, qword_2A1A2BF10);
    oslog = sub_29D937878();
    v19 = sub_29D93A268();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136446210;
      v22 = sub_29D93AF08();
      v24 = sub_29D6C2364(v22, v23, aBlock);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_29D677000, oslog, v19, "[%{public}s] Preferred guidelines updated, but initial value not yet sent, skipping", v20, 0xCu);
      sub_29D69417C(v21);
      MEMORY[0x29ED6BE30](v21, -1, -1);
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_29D8E44C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D8E44F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_29D8E45D0(char a1, uint64_t a2, uint64_t (*a3)(), uint64_t a4)
{
  v5 = v4;
  v62 = a4;
  v63 = a3;
  swift_getObjectType();
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v58 - v10;
  v12 = sub_29D9336F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v58 - v19;
  sub_29D6D962C(a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_29D742868(v11, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v21 = sub_29D937898();
    sub_29D69C6C0(v21, qword_2A1A2C008);
    v22 = sub_29D937878();
    v23 = sub_29D93A2A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136446466;
      v26 = sub_29D93AF08();
      v28 = sub_29D6C2364(v26, v27, &aBlock);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
      _os_log_impl(&dword_29D677000, v22, v23, "[%{public}s.%{public}s]: Dismissing onboarding and landing back where user was before", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v25, -1, -1);
      MEMORY[0x29ED6BE30](v24, -1, -1);
    }

    if (v63)
    {
      v68 = v63;
      v69 = v62;
      aBlock = MEMORY[0x29EDCA5F8];
      v65 = 1107296256;
      v66 = sub_29D6C1F10;
      v67 = &unk_2A244D7B8;
      v29 = _Block_copy(&aBlock);
    }

    else
    {
      v29 = 0;
    }

    [v5 dismissViewControllerAnimated:1 completion:v29];
    _Block_release(v29);
  }

  else
  {
    v61 = v5;
    v30 = *(v13 + 32);
    v30(v20, v11, v12);
    if ((a1 & 1) != 0 && *(v61 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_navigateToDetailRoomUponOnboardingCompletion) == 1)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v31 = sub_29D937898();
      sub_29D69C6C0(v31, qword_2A1A2C008);
      v32 = sub_29D937878();
      v33 = sub_29D93A2A8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v59 = v33;
        v35 = v34;
        v60 = swift_slowAlloc();
        aBlock = v60;
        *v35 = 136446466;
        v36 = sub_29D93AF08();
        v38 = sub_29D6C2364(v36, v37, &aBlock);
        v58 = v32;
        v39 = v38;

        *(v35 + 4) = v39;
        *(v35 + 12) = 2082;
        *(v35 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
        v40 = v58;
        _os_log_impl(&dword_29D677000, v58, v59, "[%{public}s.%{public}s]: Dismissing onboarding and navigating to Hypertension Notifications room", v35, 0x16u);
        v41 = v60;
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v41, -1, -1);
        MEMORY[0x29ED6BE30](v35, -1, -1);
      }

      else
      {
      }

      (*(v13 + 16))(v17, v20, v12);
      v53 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v54 = swift_allocObject();
      v30((v54 + v53), v17, v12);
      v55 = (v54 + ((v14 + v53 + 7) & 0xFFFFFFFFFFFFFFF8));
      v56 = v62;
      v57 = v63;
      *v55 = v63;
      v55[1] = v56;
      v68 = sub_29D8E81F0;
      v69 = v54;
      aBlock = MEMORY[0x29EDCA5F8];
      v65 = 1107296256;
      v66 = sub_29D6C1F10;
      v67 = &unk_2A244D830;
      v52 = _Block_copy(&aBlock);
      sub_29D695554(v57, v56);

      [v61 dismissViewControllerAnimated:1 completion:v52];
    }

    else
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v42 = sub_29D937898();
      sub_29D69C6C0(v42, qword_2A1A2C008);
      v43 = sub_29D937878();
      v44 = sub_29D93A2A8();
      v45 = os_log_type_enabled(v43, v44);
      v46 = v61;
      if (v45)
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        aBlock = v48;
        *v47 = 136446466;
        v49 = sub_29D93AF08();
        v51 = sub_29D6C2364(v49, v50, &aBlock);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2082;
        *(v47 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
        _os_log_impl(&dword_29D677000, v43, v44, "[%{public}s.%{public}s]: Dismissing onboarding and landing back where user was before", v47, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v48, -1, -1);
        MEMORY[0x29ED6BE30](v47, -1, -1);
      }

      if (v63)
      {
        v68 = v63;
        v69 = v62;
        aBlock = MEMORY[0x29EDCA5F8];
        v65 = 1107296256;
        v66 = sub_29D6C1F10;
        v67 = &unk_2A244D7E0;
        v52 = _Block_copy(&aBlock);
      }

      else
      {
        v52 = 0;
      }

      [v46 dismissViewControllerAnimated:1 completion:v52];
    }

    _Block_release(v52);
    (*(v13 + 8))(v20, v12);
  }
}

void sub_29D8E4E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedApplication];
  v6 = sub_29D9336B8();
  sub_29D73F168(MEMORY[0x29EDCA190]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_29D8AF604(&qword_2A17B3700, type metadata accessor for OpenExternalURLOptionsKey, &unk_29D93F538);
  v7 = sub_29D939C58();

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_29D82D6B4;
  v10[5] = v8;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29D73C804;
  v10[3] = &unk_2A244D880;
  v9 = _Block_copy(v10);
  sub_29D695554(a2, a3);

  [v5 openURL:v6 options:v7 completionHandler:v9];
  _Block_release(v9);
}

void sub_29D8E50C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1107296256;
    v8[2] = sub_29D6C1F10;
    v8[3] = &unk_2A244D8A8;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 presentViewController:a1 animated:a2 & 1 completion:v7];
  _Block_release(v7);
}

void sub_29D8E51A0(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 1107296256;
    v6[2] = sub_29D6C1F10;
    v6[3] = &unk_2A244D790;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 dismissViewControllerAnimated:a1 & 1 completion:v5];
  _Block_release(v5);
}

uint64_t sub_29D8E5270(char a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for HypertensionNotificationsOnboardingEvent();
  v8 = swift_allocObject();
  v8[16] = a1;
  v8[17] = a2;
  v8[18] = 4;
  v8[19] = a3;
  v9 = *(v3 + OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_eventSubmissionManager);
  v10 = swift_allocObject();
  *(v10 + 16) = ObjectType;
  v13[4] = sub_29D8E81D0;
  v13[5] = v10;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29D8E44F0;
  v13[3] = &unk_2A244D768;
  v11 = _Block_copy(v13);

  [v9 submitEvent:v8 completion:v11];
  _Block_release(v11);
}

void sub_29D8E53B0()
{
  v1 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsConfirmDetailsViewController(0));
  v11 = sub_29D6A0E48();
  *&v11[qword_2A17B18B8 + 8] = &off_2A244D6E8;
  swift_unknownObjectWeakAssign();
  v2 = v0 + OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_rootViewController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29D940030;
    *(v5 + 32) = v11;
    v6 = *(v3 + 24);
    v7 = v11;
    v6(v5, 0, ObjectType, v3);

    sub_29D936978();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v2 + 8);
    v9 = swift_getObjectType();
    v10 = (*(v8 + 8))(v9, v8);
    sub_29D936978();
    if (v10)
    {
      [v10 setDelegate_];
    }
  }
}

id sub_29D8E557C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HypertensionNotificationsOnboardingCoordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D8E5640(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a2;
  swift_getObjectType();
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v29 - v11;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v13 = sub_29D937898();
  sub_29D69C6C0(v13, qword_2A1A2C008);
  v14 = sub_29D937878();
  v15 = sub_29D93A268();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = a3;
    v17 = a4;
    v18 = v16;
    v19 = swift_slowAlloc();
    v32 = v19;
    *v18 = 136446466;
    v20 = sub_29D93AF08();
    v22 = sub_29D6C2364(v20, v21, &v32);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D966690, &v32);
    _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s.%{public}s]: Onboarding finished", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v19, -1, -1);
    v23 = v18;
    a4 = v17;
    a3 = v30;
    MEMORY[0x29ED6BE30](v23, -1, -1);
  }

  if (a1)
  {
    v24 = v5 + OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 8);
      ObjectType = swift_getObjectType();
      v27 = HKHRHypertensionNotificationsDetailRoomBaseLink();
      sub_29D9336D8();

      v28 = sub_29D9336F8();
      (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
      (*(v25 + 40))(v31 & 1, v12, a3, a4, ObjectType, v25);
      sub_29D936978();
      sub_29D742868(v12, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
    }
  }
}

uint64_t sub_29D8E597C(char a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v10 = sub_29D939968();
  v30 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29D939998();
  v14 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v18 = sub_29D93A468();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  v21 = v27;
  v20 = v28;
  *(v19 + 40) = a4;
  *(v19 + 48) = v21;
  *(v19 + 56) = v20;
  aBlock[4] = sub_29D8E8280;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A244D8F8;
  v22 = _Block_copy(aBlock);
  v23 = a2;
  v24 = a4;
  sub_29D939988();
  v31 = MEMORY[0x29EDCA190];
  sub_29D8AF604(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D742804(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v17, v13, v22);
  _Block_release(v22);

  (*(v30 + 8))(v13, v10);
  (*(v14 + 8))(v17, v29);
}

void sub_29D8E5C8C(int a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a1 == 6)
  {
    v9 = a3;
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = v9;
    v11 = a2;
    sub_29D8E64D0(a4, a5, sub_29D8E8298, v10);
  }

  else if (a1 == 5)
  {
    sub_29D8E5F9C(a3, 0, 0);
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v12 = sub_29D937898();
    sub_29D69C6C0(v12, qword_2A1A2C008);
    v13 = a4;
    v14 = sub_29D937878();
    v15 = sub_29D93A2A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136446978;
      v18 = sub_29D93AF08();
      v20 = sub_29D6C2364(v18, v19, &v29);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_29D6C2364(0xD00000000000001ALL, 0x800000029D9694F0, &v29);
      *(v16 + 22) = 2080;
      ObjectType = swift_getObjectType();
      (*(a5 + 8))(ObjectType, a5);
      v22 = sub_29D939DA8();
      v24 = sub_29D6C2364(v22, v23, &v29);

      *(v16 + 24) = v24;
      *(v16 + 32) = 2080;
      v25 = sub_29D939DA8();
      v27 = sub_29D6C2364(v25, v26, &v29);

      *(v16 + 34) = v27;
      _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s.%{public}s]: Unable to proceed to next stage from %s due to reason: %s", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v17, -1, -1);
      MEMORY[0x29ED6BE30](v16, -1, -1);
    }

    sub_29D8E6B8C(a1, v13, a5);
  }
}

void sub_29D8E5F9C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  if (a1 <= 2u)
  {
    if (a1 == 1)
    {
      v8 = 2;
    }

    else
    {
      v8 = 4;
    }

    if (a1)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_12;
  }

  if (a1 == 3)
  {
    v9 = 5;
    goto LABEL_12;
  }

  if (a1 == 4)
  {
    v9 = 3;
LABEL_12:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v10 = sub_29D937898();
    sub_29D69C6C0(v10, qword_2A1A2C008);
    v11 = sub_29D937878();
    v12 = sub_29D93A268();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v47[0] = v46;
      *v13 = 136446978;
      v14 = sub_29D93AF08();
      v16 = sub_29D6C2364(v14, v15, v47);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_29D6C2364(0xD000000000000027, 0x800000029D9698D0, v47);
      *(v13 + 22) = 2080;
      v48 = a1;
      v17 = sub_29D939DA8();
      v19 = v4;
      v20 = a1;
      v21 = sub_29D6C2364(v17, v18, v47);

      *(v13 + 24) = v21;
      a1 = v20;
      v4 = v19;
      *(v13 + 32) = 2080;
      v48 = v9;
      v22 = sub_29D939DA8();
      v24 = sub_29D6C2364(v22, v23, v47);

      *(v13 + 34) = v24;
      _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s.%{public}s]: Transitioning from %s to %s", v13, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v46, -1, -1);
      MEMORY[0x29ED6BE30](v13, -1, -1);
    }

    v25 = sub_29D71C528(v9);
    v27 = v26;
    ObjectType = swift_getObjectType();
    v29 = *(v27 + 24);
    v30 = swift_unknownObjectRetain();
    v29(v30, &off_2A244D6E8, ObjectType, v27);
    v31 = v4 + OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = *(v31 + 8);
      swift_getObjectType();
      memset(v47, 0, sizeof(v47));
      v33 = *(v32 + 32);
      v34 = v25;
      v33();
      sub_29D936978();

      sub_29D742868(v47, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D6C5040);
    }

    else
    {
    }

    sub_29D8E5270(a1, 1, 5);
    return;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v35 = sub_29D937898();
  sub_29D69C6C0(v35, qword_2A1A2C008);
  v36 = sub_29D937878();
  v37 = sub_29D93A2A8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v47[0] = v39;
    *v38 = 136446722;
    v40 = sub_29D93AF08();
    v42 = sub_29D6C2364(v40, v41, v47);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2082;
    *(v38 + 14) = sub_29D6C2364(0xD000000000000027, 0x800000029D9698D0, v47);
    *(v38 + 22) = 2080;
    v48 = 5;
    v43 = sub_29D939DA8();
    v45 = sub_29D6C2364(v43, v44, v47);

    *(v38 + 24) = v45;
    _os_log_impl(&dword_29D677000, v36, v37, "[%{public}s.%{public}s]: No stage after %s, finishing", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v39, -1, -1);
    MEMORY[0x29ED6BE30](v38, -1, -1);
  }

  sub_29D8E5270(5, 3, 5);
  sub_29D8E5640(1, 1, a2, a3);
}