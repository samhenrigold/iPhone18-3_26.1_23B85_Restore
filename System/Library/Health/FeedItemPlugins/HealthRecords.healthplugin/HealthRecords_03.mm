void sub_29D4E3B38(uint64_t a1)
{
  if (!qword_2A1A19740)
  {
    sub_29D4E3BCC(255);
    sub_29D4E3D3C(&qword_2A1A19758, sub_29D4E3BCC, MEMORY[0x29EDB8AD8]);
    v1 = sub_29D5B3AAC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A19740);
    }
  }
}

void sub_29D4E3BCC(uint64_t a1)
{
  if (!qword_2A1A19750)
  {
    sub_29D4E3C34();
    v1 = sub_29D5B3A5C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A19750);
    }
  }
}

void sub_29D4E3C34()
{
  if (!qword_2A1A196E0)
  {
    v0 = sub_29D5B40BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A196E0);
    }
  }
}

uint64_t sub_29D4E3C84@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D5B148C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4E1638(v8, v9, v1 + v4, v7, v10, v11, a1);
}

uint64_t sub_29D4E3D3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D4E3D84()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D4E3E7C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + v7);
  v12 = *(v2 + v8);
  v13 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4E17F8(a1, a2, v9, v10, v2 + v6, v11, v12, v13);
}

uint64_t sub_29D4E3F44(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

void sub_29D4E3F84(uint64_t a1)
{
  v3 = *(sub_29D5B148C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_29D4E19E4(a1, v8, v1 + v4, v9, v10, v11, v12, v13);
}

void sub_29D4E404C(uint64_t a1)
{
  if (!qword_2A1A17358)
  {
    sub_29D5B1D6C();
    sub_29D4E4404(255, &qword_2A1A196C8, MEMORY[0x29EDC4108], MEMORY[0x29EDC9A40]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A17358);
    }
  }
}

void sub_29D4E40F0(uint64_t a1)
{
  if (!qword_2A1A161B0)
  {
    sub_29D5B23FC();
    sub_29D4B3AF4();
    v1 = sub_29D5B4DAC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A161B0);
    }
  }
}

uint64_t sub_29D4E4160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4E41C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D4E4214(uint64_t a1)
{
  sub_29D4E4404(0, &qword_2A1A17398, MEMORY[0x29EDC37D8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D4E42A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordKindFeedItemData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4E4304(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D4E43A4()
{
  result = qword_2A1A19650;
  if (!qword_2A1A19650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A19650);
  }

  return result;
}

void sub_29D4E4404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D4E447C(uint64_t a1)
{
  sub_29D4E4404(319, &qword_2A1A164F0, sub_29D4E43A4, MEMORY[0x29EDBA1D0]);
  if (v1 <= 0x3F)
  {
    sub_29D5B0E6C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_29D4E4530()
{
  result = qword_2A17A4398;
  if (!qword_2A17A4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4398);
  }

  return result;
}

uint64_t sub_29D4E4584(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D4E4404(255, &qword_2A1A164F0, sub_29D4E43A4, MEMORY[0x29EDBA1D0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D4E45F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D4E4530();
    v7 = a3(a1, &type metadata for RecordKindGeneratorData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RecordKindGeneratorData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordKindGeneratorData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29D4E47BC()
{
  result = qword_2A17A43A8;
  if (!qword_2A17A43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A43A8);
  }

  return result;
}

unint64_t sub_29D4E4814()
{
  result = qword_2A17A43B0;
  if (!qword_2A17A43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A43B0);
  }

  return result;
}

unint64_t sub_29D4E486C()
{
  result = qword_2A17A43B8;
  if (!qword_2A17A43B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A43B8);
  }

  return result;
}

uint64_t sub_29D4E48C0(uint64_t a1)
{
  v49 = a1;
  v50 = sub_29D5B0F8C();
  v1 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50, v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B0D0C();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4E4F18(0);
  v9 = sub_29D5B0F7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D5B8060;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x29EDB9CB8], v9);
  v15(v14 + v11, *MEMORY[0x29EDB9CC8], v9);
  v15(v14 + 2 * v11, *MEMORY[0x29EDB9CE0], v9);
  v15(v14 + 3 * v11, *MEMORY[0x29EDB9CE8], v9);
  sub_29D50BA94(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v16 = [objc_opt_self() currentCalendar];
  sub_29D5B0F4C();

  sub_29D5B0F2C();

  (*(v1 + 8))(v4, v50);
  v54 = 0;
  v55 = 0xE000000000000000;
  v17 = sub_29D5B0CEC();
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v53 = v19;
  v20 = sub_29D5B4C4C();
  MEMORY[0x29ED5E510](v20);

  MEMORY[0x29ED5E510](115, 0xE100000000000000);
  v22 = v54;
  v21 = v55;
  v54 = 0;
  v55 = 0xE000000000000000;
  v23 = sub_29D5B0CDC();
  if (v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v53 = v25;
  v26 = sub_29D5B4C4C();
  MEMORY[0x29ED5E510](v26);

  MEMORY[0x29ED5E510](109, 0xE100000000000000);

  MEMORY[0x29ED5E510](32, 0xE100000000000000);

  v50 = v22;
  MEMORY[0x29ED5E510](v22, v21);

  v28 = v54;
  v27 = v55;
  v54 = 0;
  v55 = 0xE000000000000000;
  v29 = sub_29D5B0CCC();
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  v53 = v31;
  v32 = sub_29D5B4C4C();
  MEMORY[0x29ED5E510](v32);

  MEMORY[0x29ED5E510](104, 0xE100000000000000);

  MEMORY[0x29ED5E510](32, 0xE100000000000000);

  MEMORY[0x29ED5E510](v28, v27);

  v33 = v54;
  v34 = v55;
  v54 = 0;
  v55 = 0xE000000000000000;
  v35 = sub_29D5B0CBC();
  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = v35;
  }

  v53 = v37;
  v38 = sub_29D5B4C4C();
  MEMORY[0x29ED5E510](v38);

  MEMORY[0x29ED5E510](100, 0xE100000000000000);

  MEMORY[0x29ED5E510](32, 0xE100000000000000);

  MEMORY[0x29ED5E510](v33, v34);

  v39 = v54;
  v40 = sub_29D5B0CBC();
  if ((v41 & 1) != 0 || v40 < 1)
  {

    v42 = sub_29D5B0CCC();
    if ((v43 & 1) != 0 || v42 < 1)
    {

      v44 = sub_29D5B0CDC();
      if ((v45 & 1) != 0 || v44 < 1)
      {

        v46 = sub_29D5B0CEC();
        if ((v47 & 1) != 0 || v46 < 1)
        {

          (*(v51 + 8))(v8, v52);
          return 7549244;
        }

        else
        {
          (*(v51 + 8))(v8, v52);
          return v50;
        }
      }

      else
      {
        (*(v51 + 8))(v8, v52);

        return v28;
      }
    }

    else
    {
      (*(v51 + 8))(v8, v52);

      return v33;
    }
  }

  else
  {
    (*(v51 + 8))(v8, v52);
  }

  return v39;
}

void sub_29D4E4F18(uint64_t a1)
{
  if (!qword_2A1A16220)
  {
    sub_29D5B0F7C();
    v1 = sub_29D5B4C5C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16220);
    }
  }
}

uint64_t type metadata accessor for CategoryFeedItemViewController(uint64_t a1)
{
  result = qword_2A1A1A438;
  if (!qword_2A1A1A438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D4E5014(char a1)
{
  v3 = sub_29D5B1BCC();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for CategoryFeedItemViewController(0);
  v16.receiver = v1;
  v16.super_class = v12;
  result = objc_msgSendSuper2(&v16, sel_viewDidAppear_, a1 & 1);
  v14 = *&v1[qword_2A1A1A450];
  if (v14)
  {
    (*(v4 + 16))(v8, v14 + *(*v14 + 88), v3);
    (*(v4 + 32))(v11, v8, v3);
    sub_29D5B1E5C();
    v15 = sub_29D5B1E4C();
    sub_29D5B1E3C();

    return (*(v4 + 8))(v11, v3);
  }

  return result;
}

void sub_29D4E51A4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_29D4E5014(a3);
}

id sub_29D4E51F8()
{
  sub_29D4E7A74(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = v15 - v3;
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    v6 = *&v0[qword_2A1A1A450];
    if (v6)
    {
      sub_29D4E7A74(0, &qword_2A1A194B8, MEMORY[0x29EDC3FB8], type metadata accessor for BrowseItem);
      v8 = v7;
      v9 = sub_29D4E793C();
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v15[2] = 0;
      v15[3] = 0;
    }

    v15[1] = v6;
    v15[4] = v8;
    v15[5] = v9;

    sub_29D5B2F8C();
    v10 = sub_29D5B410C();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    sub_29D5B40EC();
    v11 = v0;
    v12 = sub_29D5B40DC();
    v13 = swift_allocObject();
    v14 = MEMORY[0x29EDCA390];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    sub_29D57657C(0, 0, v4, &unk_29D5B80F0, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D4E53DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_29D5B40EC();
  v4[4] = sub_29D5B40DC();
  v6 = sub_29D5B40CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2A1C73D48](sub_29D4E5478, v6, v5);
}

uint64_t sub_29D4E5478()
{
  v1 = v0[2];
  v2 = qword_2A1A1A450;
  v0[7] = qword_2A1A1A450;
  v3 = *(v1 + v2);
  v0[8] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_29D4E5580;

    return sub_29D4E6BA4();
  }

  else
  {

    return MEMORY[0x2A1C73D48](sub_29D4E5698, 0, 0);
  }
}

uint64_t sub_29D4E5580()
{

  return MEMORY[0x2A1C73D48](sub_29D4E5698, 0, 0);
}

uint64_t sub_29D4E5698()
{
  *(v0 + 80) = sub_29D5B40DC();
  v2 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D4E5724, v2, v1);
}

uint64_t sub_29D4E5724()
{
  v1 = v0[7];
  v2 = v0[2];

  if (*(v2 + v1))
  {
    sub_29D4E7A74(0, &qword_2A1A194B8, MEMORY[0x29EDC3FB8], type metadata accessor for BrowseItem);
    sub_29D4E793C();
  }

  sub_29D5B2F8C();
  v3 = v0[5];
  v4 = v0[6];

  return MEMORY[0x2A1C73D48](sub_29D4E580C, v3, v4);
}

uint64_t sub_29D4E580C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_29D4E586C()
{
  v1 = v0;
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B1A2C();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B1BCC();
  v37 = *(v11 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11, v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v33 - v17;
  sub_29D5B2FAC();
  v19 = v39;
  if (v39)
  {
    v33[2] = v6;
    v34 = v11;
    v33[0] = v3;
    v33[1] = v2;
    v20 = sub_29D499EC0(v38, v39);
    v21 = v0;
    v22 = *(v19 - 8);
    MEMORY[0x2A1C7C4A8](v20, v20);
    v24 = v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v24);
    sub_29D4E7E04(v38, sub_29D4E79C4);
    v25 = sub_29D5B317C();
    v27 = v26;
    (*(v22 + 8))(v24, v19);
    v1 = v21;
    if (v27 >> 60 != 15)
    {
      sub_29D4E7EF8(&qword_2A1A19478, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FE0]);
      v28 = v34;
      sub_29D5B0BBC();
      v29 = v37;
      (*(v37 + 16))(v15, v18, v28);
      (*(v35 + 104))(v10, *MEMORY[0x29EDC3EC8], v36);
      sub_29D5B1F0C();
      v30 = sub_29D5B1EFC();
      v31 = sub_29D52BBBC(v15, v10, v30);

      sub_29D4A96BC(v25, v27);
      (*(v29 + 8))(v18, v28);
      *(v1 + qword_2A1A1A450) = v31;

      sub_29D4E51F8();
    }
  }

  else
  {
    sub_29D4E7E04(v38, sub_29D4E79C4);
  }

  *(v1 + qword_2A1A1A450) = 0;

  return sub_29D4E51F8();
}

void sub_29D4E5EB4(void *a1, uint64_t a2, void *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for CategoryFeedItemViewController(0);
  v4 = v6.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v6, sel_traitCollectionDidChange_, v5);
  if (*&v4[qword_2A1A1A450])
  {
    sub_29D4E7A74(0, &qword_2A1A194B8, MEMORY[0x29EDC3FB8], type metadata accessor for BrowseItem);
    sub_29D4E793C();
  }

  sub_29D5B2F8C();
}

void *sub_29D4E5F9C(uint64_t a1)
{
  v2 = v1;
  v70 = a1;
  v3 = sub_29D5B371C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v64 - v10;
  v12 = sub_29D5B1BCC();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v21 = &v64 - v20;
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v64 - v23;
  v25 = *&v2[qword_2A1A1A450];
  if (v25)
  {
    v69 = v4;
    (*(v13 + 16))(v21, v25 + *(*v25 + 88), v12);
    (*(v13 + 32))(v24, v21, v12);
    (*(v13 + 104))(v17, *MEMORY[0x29EDC3FA0], v12);
    sub_29D4E7EF8(&qword_2A1A17360, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD8]);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    v68 = v11;
    if (v73[0] == v71[0] && v73[1] == v71[1])
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_29D5B4C7C();
    }

    v38 = *(v13 + 8);
    v38(v17, v12);

    if (v26)
    {
      if (qword_2A1A19618 != -1)
      {
        swift_once();
      }

      v39 = qword_2A1A1A7C8;
      v40 = objc_allocWithZone(sub_29D5B2AEC());
      v41 = v39;
      v42 = sub_29D5B2ADC();
      sub_29D48F51C(0, &qword_2A17A43D8, 0x29EDBA088);
      v43 = sub_29D5B430C();
      [v43 addOperation_];

      return (v38)(v24, v12);
    }

    else
    {
      v67 = v38;
      v65 = v3;
      sub_29D5B21EC();
      v44 = sub_29D5B21DC();
      sub_29D5B1CBC();
      v45 = sub_29D5B1C8C();
      v66 = v2;
      result = sub_29D5B2FAC();
      v46 = v74;
      if (v74)
      {
        v47 = sub_29D499EC0(v73, v74);
        v48 = *(v46 - 8);
        MEMORY[0x2A1C7C4A8](v47, v47);
        v50 = &v64 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v48 + 16))(v50);
        v51 = sub_29D5B314C();
        (*(v48 + 8))(v50, v46);
        v52 = sub_29D5B1C9C();

        sub_29D48F668(v73);
        v53 = sub_29D5B21BC();

        if (v53)
        {
          sub_29D4E7F40(v70, v73, sub_29D4A63E4);
          v54 = v74;
          if (v74)
          {
            v55 = sub_29D499EC0(v73, v74);
            v56 = *(v54 - 8);
            MEMORY[0x2A1C7C4A8](v55, v55);
            v58 = &v64 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v56 + 16))(v58);
            v59 = sub_29D5B4C6C();
            (*(v56 + 8))(v58, v54);
            sub_29D48F668(v73);
          }

          else
          {
            v59 = 0;
          }

          [v66 showViewController:v53 sender:v59];

          swift_unknownObjectRelease();
        }

        else
        {
          v60 = v68;
          sub_29D5B36DC();
          v61 = sub_29D5B370C();
          v62 = sub_29D5B427C();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 0;
            _os_log_impl(&dword_29D48C000, v61, v62, "Unable to create category view controller.", v63, 2u);
            MEMORY[0x29ED5FB80](v63, -1, -1);
          }

          (*(v69 + 8))(v60, v65);
        }

        return v67(v24, v12);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_29D5B36DC();
    v27 = v2;
    v28 = sub_29D5B370C();
    v29 = sub_29D5B427C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v72 = v31;
      *v30 = 136446210;
      sub_29D5B2FAC();
      sub_29D4E7F40(v73, v71, sub_29D4E79C4);
      sub_29D4E79C4(0);
      sub_29D5B4CAC();
      v32 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v33 = sub_29D5B3E9C();
      v35 = v34;
      sub_29D4E7E04(v73, sub_29D4E79C4);
      v36 = sub_29D501890(v33, v35, &v72);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_29D48C000, v28, v29, "Unable to present category room: %{public}s", v30, 0xCu);
      sub_29D48F668(v31);
      MEMORY[0x29ED5FB80](v31, -1, -1);
      MEMORY[0x29ED5FB80](v30, -1, -1);
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_29D4E6804(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  sub_29D4E5F9C(v7);

  return sub_29D4E7E04(v7, sub_29D4A63E4);
}

char *sub_29D4E6888(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *&a1[qword_2A1A1A450] = 0;
  v8 = qword_2A1A1A448;
  sub_29D5B0BDC();
  swift_allocObject();
  v9 = a4;
  *&a1[v8] = sub_29D5B0BCC();
  if (v7)
  {
    v10 = sub_29D5B3E1C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = a1;
  v13.super_class = type metadata accessor for CategoryFeedItemViewController(0);
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, v9);

  return v11;
}

char *sub_29D4E6984(char *a1, uint64_t a2, void *a3)
{
  *&a1[qword_2A1A1A450] = 0;
  v5 = qword_2A1A1A448;
  sub_29D5B0BDC();
  swift_allocObject();
  v6 = a3;
  *&a1[v5] = sub_29D5B0BCC();
  v9.receiver = a1;
  v9.super_class = type metadata accessor for CategoryFeedItemViewController(0);
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v6);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_29D4E6A38()
{
}

id sub_29D4E6A78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CategoryFeedItemViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D4E6AB0(uint64_t a1)
{
}

uint64_t sub_29D4E6B28@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x29EDC22C0];
  v3 = sub_29D5B2F7C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D4E6BA4()
{
  v1[11] = v0;
  sub_29D4E7C80(0);
  v1[12] = v2;
  v1[13] = swift_task_alloc();
  v3 = sub_29D5B1A2C();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v4 = MEMORY[0x29EDC9C68];
  sub_29D4E7A74(0, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v5 = sub_29D5B19EC();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_29D4E7A74(0, &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8], v4);
  v1[25] = swift_task_alloc();
  v6 = sub_29D5B1BCC();
  v1[26] = v6;
  v1[27] = *(v6 - 8);
  v1[28] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D4E6E28, 0, 0);
}

uint64_t sub_29D4E6E28()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[11];
  v5 = *(*v4 + 96);
  swift_beginAccess();
  sub_29D4E7D84(v4 + v5, v3, &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8]);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_29D4E7D14(v0[25], &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[15];
    v8 = v0[16];
    v10 = v0[14];
    (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
    (*(v9 + 104))(v8, *MEMORY[0x29EDC3EC8], v10);
    v15 = (*MEMORY[0x29EDC40F8] + MEMORY[0x29EDC40F8]);
    v11 = swift_task_alloc();
    v0[29] = v11;
    *v11 = v0;
    v11[1] = sub_29D4E70A4;
    v12 = v0[28];
    v13 = v0[20];
    v14 = v0[16];

    return v15(v13, v12, v14);
  }
}

uint64_t sub_29D4E70A4()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2A1C73D48](sub_29D4E71FC, 0, 0);
}

uint64_t sub_29D4E71FC()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
    sub_29D4E7D14(v3, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
    goto LABEL_10;
  }

  v5 = v0[24];
  v6 = v0[19];
  v7 = v0[13];
  v8 = v0[11];
  v43 = *(v2 + 32);
  v44 = v0[12];
  v43(v5, v3, v1);
  v9 = v2;
  v10 = *(*v8 + 112);
  swift_beginAccess();
  (*(v9 + 16))(v6, v5, v1);
  v41 = *(v9 + 56);
  v41(v6, 0, 1, v1);
  v11 = *(v44 + 48);
  v12 = MEMORY[0x29EDC3EB0];
  v45 = v8;
  v42 = v10;
  v13 = v8 + v10;
  v14 = v11;
  sub_29D4E7D84(v13, v7, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
  sub_29D4E7D84(v6, v7 + v14, &unk_2A1A19488, v12);
  if (v4(v7, 1, v1) == 1)
  {
    v16 = v0[27];
    v15 = v0[28];
    v17 = v0[26];
    v18 = v0[21];
    sub_29D4E7D14(v0[19], &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
    (*(v16 + 8))(v15, v17);
    if (v4(v7 + v14, 1, v18) == 1)
    {
      v19 = v0[13];
      (*(v0[22] + 8))(v0[24], v0[21]);
      sub_29D4E7D14(v19, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v20 = v0[21];
  sub_29D4E7D84(v0[13], v0[18], &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
  v21 = v4(v7 + v14, 1, v20);
  v23 = v0[27];
  v22 = v0[28];
  v24 = v0[26];
  if (v21 == 1)
  {
    v25 = v0[21];
    v26 = v0[22];
    v27 = v0[18];
    sub_29D4E7D14(v0[19], &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
    (*(v23 + 8))(v22, v24);
    (*(v26 + 8))(v27, v25);
LABEL_8:
    sub_29D4E7E04(v0[13], sub_29D4E7C80);
LABEL_9:
    v28 = v0[21];
    v29 = v0[17];
    v43(v29, v0[24], v28);
    v41(v29, 0, 1, v28);
    swift_beginAccess();
    sub_29D4E7E64(v29, v45 + v42);
    swift_endAccess();
    goto LABEL_10;
  }

  v32 = v0[22];
  v33 = v0[23];
  v34 = v0[21];
  v38 = v0[18];
  v39 = v0[19];
  v40 = v0[13];
  v43(v33, v7 + v14, v34);
  sub_29D4E7EF8(&qword_2A17A43D0, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC3EB8]);
  v35 = sub_29D5B3E0C();
  v36 = *(v32 + 8);
  v36(v33, v34);
  v37 = MEMORY[0x29EDC3EB0];
  sub_29D4E7D14(v39, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
  (*(v23 + 8))(v22, v24);
  v36(v38, v34);
  sub_29D4E7D14(v40, &unk_2A1A19488, v37);
  if ((v35 & 1) == 0)
  {
    goto LABEL_9;
  }

  v36(v0[24], v0[21]);
LABEL_10:

  v30 = v0[1];

  return v30();
}

uint64_t sub_29D4E7784(void *a1)
{
  v3 = sub_29D5B1BCC();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v16 - v10;
  v16[3] = sub_29D48F51C(0, &qword_2A17A43C0, 0x29EDC7DA0);
  v16[0] = a1;
  v12 = a1;
  sub_29D4E5F9C(v16);
  result = sub_29D4E7E04(v16, sub_29D4A63E4);
  v14 = *(v1 + qword_2A1A1A450);
  if (v14)
  {
    (*(v4 + 16))(v8, v14 + *(*v14 + 88), v3);
    (*(v4 + 32))(v11, v8, v3);
    sub_29D5B1E5C();
    v15 = sub_29D5B1E4C();
    sub_29D5B1E3C();

    return (*(v4 + 8))(v11, v3);
  }

  return result;
}

unint64_t sub_29D4E793C()
{
  result = qword_2A1A194C0[0];
  if (!qword_2A1A194C0[0])
  {
    sub_29D4E7A74(255, &qword_2A1A194B8, MEMORY[0x29EDC3FB8], type metadata accessor for BrowseItem);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A194C0);
  }

  return result;
}

void sub_29D4E79C4(uint64_t a1)
{
  if (!qword_2A1A19460)
  {
    sub_29D4A02FC(255, &qword_2A1A19470, MEMORY[0x29EDC2808]);
    v1 = sub_29D5B472C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A19460);
    }
  }
}

unint64_t sub_29D4E7A2C()
{
  result = qword_2A17A43C8;
  if (!qword_2A17A43C8)
  {
    sub_29D5B1BCC();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17A43C8);
  }

  return result;
}

void sub_29D4E7A74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D4E7AD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29D4E7B8C;

  return sub_29D4E53DC(a1, v4, v5, v6);
}

uint64_t sub_29D4E7B8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_29D4E7C80(uint64_t a1)
{
  if (!qword_2A1A19480)
  {
    sub_29D4E7A74(255, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A19480);
    }
  }
}

uint64_t sub_29D4E7D14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D4E7A74(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D4E7D84(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D4E7A74(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D4E7E04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4E7E64(uint64_t a1, uint64_t a2)
{
  sub_29D4E7A74(0, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4E7EF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D4E7F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4E7FA8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_29D4B4660(v17))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 88 * (v9 | (v8 << 6));
    v11 = *(v10 + 16);
    v19[0] = *v10;
    v19[1] = v11;
    v13 = *(v10 + 48);
    v12 = *(v10 + 64);
    v14 = *(v10 + 32);
    v20 = *(v10 + 80);
    v19[3] = v13;
    v19[4] = v12;
    v19[2] = v14;
    sub_29D4B4604(v19, v17);
    sub_29D59B0A0(v15, v19);
    v17[3] = v15[3];
    v17[4] = v15[4];
    v18 = v16;
    v17[0] = v15[0];
    v17[1] = v15[1];
    v17[2] = v15[2];
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4E80E8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_29D59AD10(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_29D4E81EC(uint64_t a1, void *a2)
{
  sub_29D4F2FB0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F3050(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D4E84CC(a1, a2);
  v19[0] = sub_29D4E8F04(a1, a2);
  v19[1] = v16;
  sub_29D4B2D8C(0);
  sub_29D4F172C(&qword_2A1A16780, sub_29D4B2D8C, MEMORY[0x29EDB8A00]);
  sub_29D5B3B6C();
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D4F172C(&qword_2A1A172C0, sub_29D4F2FB0, MEMORY[0x29EDB8870]);
  sub_29D5B3B7C();
  (*(v6 + 8))(v9, v5);
  sub_29D4F172C(&qword_2A1A16EC0, sub_29D4F3050, MEMORY[0x29EDB8908]);
  v17 = sub_29D5B3B1C();

  (*(v12 + 8))(v15, v11);
  return v17;
}

uint64_t sub_29D4E84CC(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v3 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v79 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v80 = v5;
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_29D5B104C();
  v76 = *(v77 - 8);
  MEMORY[0x2A1C7C4A8](v77, v7);
  v75 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F35D0(0);
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v82 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F35F0(0);
  v87 = *(v12 - 8);
  v88 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v85 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F36DC(0);
  v93 = v15;
  v91 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v89 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F37AC(0);
  v19 = v18;
  v92 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v90 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D5B0EDC();
  v73 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22, v23);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D5B1AAC();
  v27 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B140C();
  (*(v27 + 104))(v30, *MEMORY[0x29EDC3F38], v26);
  v81 = a1;
  v31 = sub_29D5B143C();
  v32 = sub_29D5B10AC();
  v33 = sub_29D5B1A8C();
  v74 = v34;
  if (v32)
  {
    v94 = 0x656C69666F72505BLL;
    v95 = 0xE90000000000003ALL;
    v72 = v33;
    v32 = v32;
    v35 = [v32 identifier];
    sub_29D5B0EBC();

    v36 = sub_29D5B0E8C();
    v37 = v22;
    v38 = v31;
    v39 = v19;
    v40 = v36;
    v71 = v30;
    v41 = v27;
    v42 = v26;
    v43 = v6;
    v45 = v44;
    (*(v73 + 8))(v25, v37);
    v46 = v40;
    v19 = v39;
    v31 = v38;
    MEMORY[0x29ED5E510](v46, v45);
    v6 = v43;
    v26 = v42;
    v27 = v41;
    v30 = v71;

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v33 = v72;
    v47 = v94;
    v48 = v95;
  }

  else
  {
    v48 = 0x800000029D5BBCB0;
    v47 = 0xD000000000000013;
  }

  v94 = v47;
  v95 = v48;
  MEMORY[0x29ED5E510](v33, v74);

  v49 = v94;
  v50 = v95;
  (*(v27 + 8))(v30, v26);
  type metadata accessor for FeedItemContextChangeGenerator();
  v51 = swift_allocObject();
  sub_29D497868(v96, v51 + 16);
  *(v51 + 56) = v49;
  *(v51 + 64) = v50;
  v52 = v76;
  v53 = v75;
  v54 = v77;
  (*(v76 + 104))(v75, *MEMORY[0x29EDC3778], v77);
  v55 = sub_29D537A0C(v53);
  (*(v52 + 8))(v53, v54);
  *&v96[0] = v55;
  sub_29D4F3A64(v81, v6, type metadata accessor for HealthRecordsGeneratorContext);
  v56 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v57 = swift_allocObject();
  sub_29D4F45C0(v6, v57 + v56, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D4F31D4(0);
  sub_29D4B3AC0(0);
  v58 = MEMORY[0x29EDB8A00];
  sub_29D4F172C(&qword_2A1A16750, sub_29D4F31D4, MEMORY[0x29EDB8A00]);
  v59 = v82;
  sub_29D5B3BCC();

  sub_29D4B3A8C(0);
  v60 = MEMORY[0x29EDB8990];
  sub_29D4F172C(&qword_2A1A16C58, sub_29D4F35D0, MEMORY[0x29EDB8990]);
  sub_29D4F172C(&qword_2A1A167C0, sub_29D4B3A8C, v58);
  v61 = v84;
  v62 = v85;
  sub_29D5B3B8C();
  (*(v83 + 8))(v59, v61);
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  v63 = MEMORY[0x29EDB8928];
  sub_29D4F172C(&qword_2A1A16DE8, sub_29D4F35F0, MEMORY[0x29EDB8928]);

  v64 = v88;
  v65 = v89;
  sub_29D5B3BCC();

  (*(v87 + 8))(v62, v64);
  *(swift_allocObject() + 16) = v86;
  sub_29D4B2D8C(0);
  sub_29D4F172C(&qword_2A1A16BD8, sub_29D4F36DC, v60);
  sub_29D4F172C(&qword_2A1A16780, sub_29D4B2D8C, v58);
  v66 = v90;
  v67 = v93;
  sub_29D5B3B8C();

  (*(v91 + 8))(v65, v67);
  sub_29D4F172C(&qword_2A1A16D18, sub_29D4F37AC, v63);
  v68 = sub_29D5B3B1C();

  (*(v92 + 8))(v66, v19);
  return v68;
}

uint64_t sub_29D4E8F04(uint64_t a1, void *a2)
{
  v56[1] = a2;
  sub_29D4B37EC(0);
  v3 = v2;
  v67 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B371C();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B104C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F3120(0, &qword_2A1A16F18, MEMORY[0x29EDB8900]);
  v57 = *(v16 - 8);
  v58 = v16;
  MEMORY[0x2A1C7C4A8](v16, v17);
  v19 = v56 - v18;
  sub_29D4F32D0(0);
  v61 = v20;
  v59 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v21);
  v23 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F33A0(0);
  v62 = *(v24 - 8);
  v63 = v24;
  MEMORY[0x2A1C7C4A8](v24, v25);
  v60 = v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29D5B143C();
  v28 = v27;
  if (v27)
  {
    v56[0] = v27;
    if ([v56[0] type] == 1)
    {
      sub_29D5B140C();
      v29 = sub_29D5B3ECC();
      v31 = v30;
      type metadata accessor for FeedItemContextChangeGenerator();
      v32 = swift_allocObject();
      sub_29D497868(v68, v32 + 16);
      *(v32 + 56) = v29;
      *(v32 + 64) = v31;
      (*(v12 + 104))(v15, *MEMORY[0x29EDC3770], v11);
      v33 = sub_29D537A0C(v15);
      (*(v12 + 8))(v15, v11);
      *&v68[0] = v33;
      v34 = swift_allocObject();
      v35 = v64;
      *(v34 + 16) = v28;
      *(v34 + 24) = v35;
      sub_29D4F31D4(0);
      sub_29D4B3AC0(0);
      v67 = MEMORY[0x29EDB8A00];
      sub_29D4F172C(&qword_2A1A16750, sub_29D4F31D4, MEMORY[0x29EDB8A00]);
      sub_29D5B3B7C();

      sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);

      v36 = v58;
      sub_29D5B383C();

      (*(v57 + 8))(v19, v36);
      *(swift_allocObject() + 16) = v35;
      sub_29D4B2D8C(0);
      sub_29D4F172C(&qword_2A1A16C48, sub_29D4F32D0, MEMORY[0x29EDB8990]);
      sub_29D4F172C(&qword_2A1A16780, sub_29D4B2D8C, v67);
      v38 = v60;
      v37 = v61;
      sub_29D5B3B8C();

      (*(v59 + 8))(v23, v37);
      sub_29D4F172C(&qword_2A1A16DD8, sub_29D4F33A0, MEMORY[0x29EDB8928]);
      v39 = v63;
      v40 = sub_29D5B3B1C();

      (*(v62 + 8))(v38, v39);
      return v40;
    }
  }

  sub_29D5B36AC();
  v41 = v28;
  v42 = sub_29D5B370C();
  v43 = sub_29D5B427C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *&v68[0] = v64;
    *v44 = 136446466;
    v69 = sub_29D4F33DC(0);
    sub_29D4F33FC(0, &qword_2A17A43E0, sub_29D4F33DC);
    v45 = sub_29D5B3E7C();
    v47 = v6;
    v48 = v41;
    v49 = v3;
    v50 = sub_29D501890(v45, v46, v68);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2082;
    v51 = sub_29D5B10BC();
    v53 = sub_29D501890(v51, v52, v68);
    v3 = v49;
    v41 = v48;
    v6 = v47;

    *(v44 + 14) = v53;
    _os_log_impl(&dword_29D48C000, v42, v43, "[%{public}s] Sidebar feed item is not supported for non-primary profile: %{public}s", v44, 0x16u);
    v54 = v64;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v54, -1, -1);
    MEMORY[0x29ED5FB80](v44, -1, -1);
  }

  (*(v65 + 8))(v10, v66);
  *&v68[0] = MEMORY[0x29EDCA190];
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D4F172C(&qword_2A1A165D8, sub_29D4B37EC, MEMORY[0x29EDB8AB8]);
  v40 = sub_29D5B3B1C();

  (*(v67 + 8))(v6, v3);
  return v40;
}

uint64_t sub_29D4E97B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B371C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36EC();

  v9 = sub_29D5B370C();
  v10 = sub_29D5B426C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = v5;
    v12 = v11;
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136446466;
    v14 = MEMORY[0x29EDC3A38];
    v15 = MEMORY[0x29ED5E610](a1, MEMORY[0x29EDC3A38]);
    v17 = sub_29D501890(v15, v16, &v27);
    v25 = v4;
    v18 = v17;

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    v19 = MEMORY[0x29ED5E610](a2, v14);
    v21 = sub_29D501890(v19, v20, &v27);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_29D48C000, v9, v10, "Categories: %{public}s, Sidebars: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v13, -1, -1);
    MEMORY[0x29ED5FB80](v12, -1, -1);

    (*(v26 + 8))(v8, v25);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v27 = a1;

  sub_29D54F7FC(v22);
  return v27;
}

uint64_t sub_29D4E9A10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29D4E97B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D4E9A40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_29D5B143C();
  sub_29D4E9AE8(a1, v5, a2);

  if (!v2)
  {
    v6 = sub_29D5B134C();
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }
}

uint64_t sub_29D4E9AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v210 = a3;
  v188 = sub_29D5B104C();
  v186 = *(v188 - 8);
  MEMORY[0x2A1C7C4A8](v188, v5);
  v180 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_29D5B11BC();
  v187 = *(v189 - 8);
  MEMORY[0x2A1C7C4A8](v189, v7);
  v185 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_29D5B2BFC();
  v205 = *(v206 - 8);
  MEMORY[0x2A1C7C4A8](v206, v9);
  v204 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B1D6C();
  v219 = *(v11 - 8);
  v220 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v218 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_29D5B31CC();
  v197 = *(v198 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v198, v14);
  v184 = &v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v195 = &v175 - v18;
  v213 = sub_29D5B2FFC();
  v212 = *(v213 - 8);
  MEMORY[0x2A1C7C4A8](v213, v19);
  v214 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for RecordsCategoryIconProvider(0);
  MEMORY[0x2A1C7C4A8](v200, v21);
  v199 = &v175 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F326C(0, &qword_2A1A17320, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v23 - 8, v24);
  v211 = &v175 - v25;
  sub_29D4F39D0(0);
  v203 = v26;
  v202 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26, v27);
  v201 = &v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_29D5B134C();
  v193 = *(v194 - 8);
  v30 = MEMORY[0x2A1C7C4A8](v194, v29);
  v177 = &v175 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v30, v32);
  v182 = &v175 - v34;
  v36 = MEMORY[0x2A1C7C4A8](v33, v35);
  v181 = &v175 - v37;
  v39 = MEMORY[0x2A1C7C4A8](v36, v38);
  v183 = &v175 - v40;
  v42 = MEMORY[0x2A1C7C4A8](v39, v41);
  v179 = &v175 - v43;
  MEMORY[0x2A1C7C4A8](v42, v44);
  v190 = &v175 - v45;
  v208 = sub_29D5B0EDC();
  v216 = *(v208 - 8);
  MEMORY[0x2A1C7C4A8](v208, v46);
  v215 = &v175 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F3508(0);
  v50 = MEMORY[0x2A1C7C4A8](v48 - 8, v49);
  v178 = &v175 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x2A1C7C4A8](v50, v52);
  v196 = &v175 - v54;
  v56 = MEMORY[0x2A1C7C4A8](v53, v55);
  v58 = &v175 - v57;
  MEMORY[0x2A1C7C4A8](v56, v59);
  v61 = &v175 - v60;
  v230 = sub_29D5B2A7C();
  v227 = *(v230 - 8);
  MEMORY[0x2A1C7C4A8](v230, v62);
  v64 = &v175 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for HealthRecordsSidebarActionHandlerData(0);
  MEMORY[0x2A1C7C4A8](v217, v65);
  v67 = &v175 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_29D5B1BCC();
  v69 = *(v68 - 8);
  v71 = MEMORY[0x2A1C7C4A8](v68, v70);
  v192 = &v175 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x2A1C7C4A8](v71, v73);
  v226 = &v175 - v75;
  MEMORY[0x2A1C7C4A8](v74, v76);
  v78 = &v175 - v77;
  v209 = a2;
  v207 = sub_29D4DFDC4(a1, a2);
  v222 = v79;
  v235 = v69;
  v80 = *(v69 + 16);
  v228 = v78;
  v80(v78, a1, v68);
  v229 = v67;
  v233 = v68;
  v224 = v80;
  v225 = v69 + 16;
  v80(v67, a1, v68);
  v231 = v64;
  sub_29D5173F4(v64);
  v81 = sub_29D5B2A2C();
  v82 = *(v81 - 8);
  v83 = *(v82 + 56);
  v83(v61, 1, 1, v81);
  v232 = a1;
  v84 = v58;
  if (sub_29D5B1B6C())
  {
    sub_29D5B2A1C();
    sub_29D4F3474(v61, sub_29D4F3508);
    (*(v82 + 104))(v58, *MEMORY[0x29EDC17D0], v81);
    v83(v58, 0, 1, v81);
    sub_29D4F45C0(v58, v61, sub_29D4F3508);
  }

  v223 = v61;
  v85 = v226;
  v86 = v233;
  v224(v226, v232, v233);
  v87 = v235;
  v88 = v235 + 88;
  v89 = *(v235 + 88);
  v90 = v89(v85, v86);
  v170 = v90 == *MEMORY[0x29EDC3F80];
  v191 = v89;
  if (v170)
  {
    (*(v87 + 96))(v85, v86);
    (*(v219 + 32))(v218, v85, v220);
    v91 = sub_29D5B1D1C();
    if (v91)
    {
      v92 = v91;
      v93 = v204;
      sub_29D5B2BEC();
      sub_29D5B0C0C();
      swift_allocObject();
      sub_29D5B0BFC();
      sub_29D4F172C(&qword_2A1A18F78, type metadata accessor for HealthRecordsSidebarActionHandlerData, &unk_29D5B8340);
      v94 = v229;
      v95 = v221;
      v96 = sub_29D5B0BEC();
      v98 = v228;
      if (v95)
      {

        (*(v205 + 8))(v93, v206);
        (*(v219 + 8))(v218, v220);
        sub_29D4F3474(v223, sub_29D4F3508);
        (*(v227 + 8))(v231, v230);
        sub_29D4F3474(v94, type metadata accessor for HealthRecordsSidebarActionHandlerData);
        return (*(v235 + 8))(v98, v233);
      }

      v139 = v96;
      v140 = v97;
      v176 = v88;

      type metadata accessor for HealthRecordsSidebarActionHandler(0);
      sub_29D4F172C(&qword_2A1A18F98, type metadata accessor for HealthRecordsSidebarActionHandler, &unk_29D5B818C);
      v141 = v183;
      sub_29D5B11AC();
      v130 = v227;
      (*(v205 + 8))(v93, v206);
      sub_29D4A96D0(v139, v140);
      (*(v193 + 32))(v210, v141, v194);
      sub_29D5B127C();

      (*(v219 + 8))(v218, v220);
      v159 = v228;
      v160 = v229;
      goto LABEL_34;
    }

    v176 = v88;
    v226 = sub_29D5B1B0C();
    v123 = v223;
    v124 = v196;
    sub_29D4F3A64(v223, v196, sub_29D4F3508);
    sub_29D5B0C0C();
    swift_allocObject();
    sub_29D5B0BFC();
    sub_29D4F172C(&qword_2A1A18F78, type metadata accessor for HealthRecordsSidebarActionHandlerData, &unk_29D5B8340);
    v125 = v229;
    v126 = v221;
    v127 = sub_29D5B0BEC();
    v129 = v228;
    if (v126)
    {

      sub_29D4F3474(v124, sub_29D4F3508);
      (*(v219 + 8))(v218, v220);
      sub_29D4F3474(v123, sub_29D4F3508);
      (*(v227 + 8))(v231, v230);
      sub_29D4F3474(v125, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      return (*(v235 + 8))(v129, v233);
    }

    v145 = v127;
    v146 = v128;

    type metadata accessor for HealthRecordsSidebarActionHandler(0);
    sub_29D4F172C(&qword_2A1A18F98, type metadata accessor for HealthRecordsSidebarActionHandler, &unk_29D5B818C);
    v147 = v181;
    sub_29D5B118C();

    sub_29D4A96D0(v145, v146);

    sub_29D4F3474(v124, sub_29D4F3508);
    (*(v219 + 8))(v218, v220);
    (*(v193 + 32))(v210, v147, v194);
    goto LABEL_32;
  }

  v170 = v90 == *MEMORY[0x29EDC3FB0];
  v176 = v88;
  if (v170)
  {
    v100 = v226;
    (*(v87 + 96))(v226, v86);
    sub_29D4E019C(0);

    v219 = v84;
    v101 = v216;
    v102 = v215;
    v103 = v100;
    v104 = v208;
    (*(v216 + 32))(v215, v103, v208);
    v226 = sub_29D5B1B0C();
    v220 = v105;
    v106 = v227;
    v107 = v211;
    v108 = v230;
    (*(v227 + 16))(v211, v231, v230);
    (*(v106 + 56))(v107, 0, 1, v108);
    v83(v219, 1, 1, v81);
    (*(v101 + 16))(v199, v102, v104);
    v109 = v214;
    *v214 = 0;
    *(v109 + 1) = 0x3FE999999999999ALL;
    (*(v212 + 104))(v109, *MEMORY[0x29EDC24C8], v213);
    sub_29D4F172C(qword_2A1A190F8, type metadata accessor for RecordsCategoryIconProvider, &unk_29D5B8308);
    v110 = v201;
    sub_29D5B31DC();
    sub_29D5B0C0C();
    swift_allocObject();
    sub_29D5B0BFC();
    sub_29D4F172C(&qword_2A1A18F78, type metadata accessor for HealthRecordsSidebarActionHandlerData, &unk_29D5B8340);
    v111 = v229;
    v112 = v221;
    v113 = sub_29D5B0BEC();
    if (v112)
    {

      (*(v202 + 8))(v110, v203);
      (*(v216 + 8))(v215, v104);
      sub_29D4F3474(v223, sub_29D4F3508);
      (*(v227 + 8))(v231, v230);
LABEL_15:
      sub_29D4F3474(v111, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      return (*(v235 + 8))(v228, v233);
    }

    v142 = v113;
    v143 = v114;

    type metadata accessor for HealthRecordsSidebarActionHandler(0);
    v226 = sub_29D5B1B0C();
    sub_29D4F172C(&qword_2A1A18F98, type metadata accessor for HealthRecordsSidebarActionHandler, &unk_29D5B818C);
    sub_29D4F172C(&qword_2A17A4418, sub_29D4F39D0, MEMORY[0x29EDC2890]);
    v144 = v203;
    sub_29D5B119C();

    sub_29D4A96D0(v142, v143);

    (*(v202 + 8))(v110, v144);
    (*(v216 + 8))(v215, v208);
    (*(v193 + 32))(v210, v190, v194);
    goto LABEL_32;
  }

  if (v90 == *MEMORY[0x29EDC3FA8])
  {
LABEL_13:
    v226 = sub_29D5B1B0C();
    v115 = v227;
    v116 = v211;
    v117 = v230;
    (*(v227 + 16))(v211, v231, v230);
    (*(v115 + 56))(v116, 0, 1, v117);
    v83(v84, 1, 1, v81);
    v118 = v214;
    *v214 = 1;
    *(v118 + 1) = 0x3FF0000000000000;
    (*(v212 + 104))(v118, *MEMORY[0x29EDC24C8], v213);
    v119 = v195;
    sub_29D5B31BC();
    sub_29D5B0C0C();
    swift_allocObject();
    sub_29D5B0BFC();
    sub_29D4F172C(&qword_2A1A18F78, type metadata accessor for HealthRecordsSidebarActionHandlerData, &unk_29D5B8340);
    v111 = v229;
    v120 = v221;
    v121 = sub_29D5B0BEC();
    if (v120)
    {

      (*(v197 + 8))(v119, v198);
      sub_29D4F3474(v223, sub_29D4F3508);
      (*(v115 + 8))(v231, v230);
      goto LABEL_15;
    }

    v155 = v121;
    v156 = v122;

    type metadata accessor for HealthRecordsSidebarActionHandler(0);
    v226 = sub_29D5B1B0C();
    sub_29D4F172C(&qword_2A1A18F98, type metadata accessor for HealthRecordsSidebarActionHandler, &unk_29D5B818C);
    sub_29D4F172C(&qword_2A1A17318, MEMORY[0x29EDC2848], MEMORY[0x29EDC2840]);
    v157 = v198;
    v158 = v179;
    sub_29D5B119C();
    (*(v197 + 8))(v119, v157);

    sub_29D4A96D0(v155, v156);

    (*(v193 + 32))(v210, v158, v194);
LABEL_32:
    v159 = v228;
    v160 = v229;
LABEL_33:
    v130 = v227;
    goto LABEL_34;
  }

  if (v90 != *MEMORY[0x29EDC3FA0])
  {
    if (v90 != *MEMORY[0x29EDC3F78] && v90 != *MEMORY[0x29EDC3F90])
    {
      v220 = sub_29D5B1B0C();
      v148 = v223;
      v149 = v178;
      sub_29D4F3A64(v223, v178, sub_29D4F3508);
      sub_29D5B0C0C();
      swift_allocObject();
      sub_29D5B0BFC();
      sub_29D4F172C(&qword_2A1A18F78, type metadata accessor for HealthRecordsSidebarActionHandlerData, &unk_29D5B8340);
      v150 = v229;
      v151 = v221;
      v152 = sub_29D5B0BEC();
      if (v151)
      {

        sub_29D4F3474(v149, sub_29D4F3508);
        sub_29D4F3474(v148, sub_29D4F3508);
        (*(v227 + 8))(v231, v230);
        sub_29D4F3474(v150, type metadata accessor for HealthRecordsSidebarActionHandlerData);
        v154 = *(v235 + 8);
        v174 = v233;
        v154(v228, v233);
        return (v154)(v226, v174);
      }

      v172 = v152;
      v173 = v153;

      type metadata accessor for HealthRecordsSidebarActionHandler(0);
      sub_29D4F172C(&qword_2A1A18F98, type metadata accessor for HealthRecordsSidebarActionHandler, &unk_29D5B818C);
      sub_29D5B118C();
      v159 = v228;
      sub_29D4F3474(v149, sub_29D4F3508);
      sub_29D4A96D0(v172, v173);

      (*(v193 + 32))(v210, v177, v194);
      (*(v235 + 8))(v226, v233);
      v160 = v229;
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  (*(v187 + 104))(v185, *MEMORY[0x29EDC1B20], v189);
  sub_29D5B1B0C();
  v130 = v227;
  v131 = v211;
  v132 = v230;
  (*(v227 + 16))(v211, v231, v230);
  (*(v130 + 56))(v131, 0, 1, v132);
  sub_29D4F3A64(v223, v84, sub_29D4F3508);
  v133 = v214;
  *v214 = 0;
  *(v133 + 1) = 0x3FE999999999999ALL;
  (*(v212 + 104))(v133, *MEMORY[0x29EDC24C8], v213);
  sub_29D5B31BC();
  v134 = v180;
  (*(v186 + 104))(v180, *MEMORY[0x29EDC3778], v188);
  sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_29D5B5E20;
  *(v135 + 32) = 0x686372616553;
  *(v135 + 40) = 0xE600000000000000;
  *(v135 + 48) = sub_29D5B1B0C();
  *(v135 + 56) = v136;
  v137 = sub_29D5B401C();

  v138 = HKUIJoinStringsForAutomationIdentifier();

  if (v138)
  {
    sub_29D5B3E5C();
  }

  v159 = v228;
  sub_29D4F4160(0);
  type metadata accessor for ShowAllCategoryActionHandler(0);
  sub_29D4F172C(&qword_2A17A4408, sub_29D4F4160, MEMORY[0x29EDC2928]);
  sub_29D4F172C(&qword_2A17A4410, type metadata accessor for ShowAllCategoryActionHandler, &unk_29D5B9378);
  v161 = v185;
  v162 = v184;
  v163 = v221;
  sub_29D5B116C();
  if (v163)
  {

    (*(v186 + 8))(v134, v188);
    (*(v197 + 8))(v162, v198);
    (*(v187 + 8))(v161, v189);
    sub_29D4F3474(v223, sub_29D4F3508);
    (*(v130 + 8))(v231, v230);
    sub_29D4F3474(v229, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    return (*(v235 + 8))(v159, v233);
  }

  (*(v186 + 8))(v134, v188);
  (*(v197 + 8))(v162, v198);
  (*(v187 + 8))(v161, v189);
  (*(v193 + 32))(v210, v182, v194);
  v160 = v229;
LABEL_34:
  sub_29D5B1B0C();
  sub_29D5B124C();
  v164 = v232;
  v165 = sub_29D4F19AC(v232);
  v166 = sub_29D5B130C();
  sub_29D4E80E8(v165);
  v166(v234, 0);
  sub_29D4F3ACC(v164);
  sub_29D5B132C();
  sub_29D4F3E20(v164);
  sub_29D5B129C();
  v167 = v192;
  v168 = v233;
  v224(v192, v164, v233);
  v169 = v191(v167, v168);
  v170 = v169 == *MEMORY[0x29EDC3FA8] || v169 == *MEMORY[0x29EDC3F78];
  if (!v170 && v169 != *MEMORY[0x29EDC3F90])
  {
    (*(v235 + 8))(v167, v168);
  }

  sub_29D5B123C();
  sub_29D4F3474(v223, sub_29D4F3508);
  (*(v130 + 8))(v231, v230);
  sub_29D4F3474(v160, type metadata accessor for HealthRecordsSidebarActionHandlerData);
  return (*(v235 + 8))(v159, v168);
}

uint64_t sub_29D4EBE88@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4F326C(0, &qword_2A1A165E0, sub_29D4B3AC0, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v40 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v35 - v7;
  sub_29D4B3DC8(0);
  v10 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_29D5B371C();
  v14 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_29D5B36AC();
  v19 = v18;
  v20 = sub_29D5B370C();
  v21 = sub_29D5B427C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v10;
    v23 = v22;
    v24 = swift_slowAlloc();
    v36 = v5;
    v25 = v24;
    v43 = v24;
    *v23 = 136446210;
    v42 = v18;
    v26 = v18;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v27 = HKSensitiveLogItem();
    v38 = a2;
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v28 = sub_29D5B3E9C();
    v30 = sub_29D501890(v28, v29, &v43);

    *(v23 + 4) = v30;
    a2 = v38;
    _os_log_impl(&dword_29D48C000, v20, v21, "Error making feed item for category, hiding from UI: %{public}s", v23, 0xCu);
    sub_29D48F668(v25);
    v31 = v25;
    v5 = v36;
    MEMORY[0x29ED5FB80](v31, -1, -1);
    v32 = v23;
    v10 = v37;
    MEMORY[0x29ED5FB80](v32, -1, -1);
  }

  (*(v14 + 8))(v17, v39);
  v42 = MEMORY[0x29EDCA190];
  sub_29D4B3AC0(0);
  sub_29D5B3A2C();
  sub_29D4B3AF4();
  sub_29D5B39EC();
  (*(v40 + 8))(v8, v5);
  sub_29D4F172C(&qword_2A1A161C0, sub_29D4B3DC8, MEMORY[0x29EDB8B20]);
  v33 = sub_29D5B3B1C();
  result = (*(v41 + 8))(v13, v10);
  *a2 = v33;
  return result;
}

uint64_t sub_29D4EC2A0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char **a4@<X8>)
{
  v7 = sub_29D5B1BCC();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  (*(v8 + 104))(v11, *MEMORY[0x29EDC3F88], v7);
  sub_29D5768B4(v11, v12);
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v19 = MEMORY[0x29EDCA1A0];
  v15 = a2;
  v16 = sub_29D4F23EC(v12, (v14 & 1) == 0, a2, &v19);

  *a4 = v16;
}

uint64_t sub_29D4EC400@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v219 = a2;
  v238 = a1;
  v241 = a4;
  v5 = sub_29D5B371C();
  v239 = *(v5 - 8);
  v240 = v5;
  v7 = MEMORY[0x2A1C7C4A8](v5, v6);
  v236 = &v196 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v196 - v10;
  v211 = sub_29D5B2C9C();
  v210 = *(v211 - 8);
  MEMORY[0x2A1C7C4A8](v211, v12);
  v209 = &v196 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F34D4(0);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v220 = &v196 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_29D5B33CC();
  v222 = *(v227 - 8);
  MEMORY[0x2A1C7C4A8](v227, v17);
  v225 = &v196 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F3508(0);
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v22 = &v196 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D5B2A7C();
  MEMORY[0x2A1C7C4A8](v23 - 8, v24);
  v26 = &v196 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_29D5B34CC();
  v217 = *(v218 - 8);
  MEMORY[0x2A1C7C4A8](v218, v27);
  v224 = &v196 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29D5B2C7C();
  v30 = *(v29 - 8);
  v233 = v29;
  v234 = v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v232 = &v196 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x2A1C7C4A8](v32, v34);
  v215 = &v196 - v36;
  MEMORY[0x2A1C7C4A8](v35, v37);
  v213 = &v196 - v38;
  v237 = sub_29D5B1BCC();
  v39 = *(v237 - 8);
  v41 = MEMORY[0x2A1C7C4A8](v237, v40);
  v43 = &v196 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x2A1C7C4A8](v41, v44);
  v212 = &v196 - v46;
  v48 = MEMORY[0x2A1C7C4A8](v45, v47);
  v231 = &v196 - v49;
  v51 = MEMORY[0x2A1C7C4A8](v48, v50);
  v223 = &v196 - v52;
  v54 = MEMORY[0x2A1C7C4A8](v51, v53);
  v235 = &v196 - v55;
  MEMORY[0x2A1C7C4A8](v54, v56);
  v58 = &v196 - v57;
  v230 = sub_29D5B1D6C();
  v229 = *(v230 - 8);
  MEMORY[0x2A1C7C4A8](v230, v59);
  v228 = &v196 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_29D5B134C();
  v242 = *(v61 - 8);
  v243 = v61;
  v63 = MEMORY[0x2A1C7C4A8](v61, v62);
  v208 = &v196 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x2A1C7C4A8](v63, v65);
  v216 = &v196 - v67;
  v69 = MEMORY[0x2A1C7C4A8](v66, v68);
  v214 = &v196 - v70;
  v72 = MEMORY[0x2A1C7C4A8](v69, v71);
  v74 = &v196 - v73;
  MEMORY[0x2A1C7C4A8](v72, v75);
  v221 = &v196 - v76;
  v77 = type metadata accessor for HealthRecordsSidebarActionHandlerData(0);
  MEMORY[0x2A1C7C4A8](v77, v78);
  v80 = &v196 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    goto LABEL_7;
  }

  v226 = a3;
  v81 = a3;
  if ([v81 type] != 1)
  {

    a3 = v226;
LABEL_7:
    sub_29D5B36AC();
    v106 = a3;
    v107 = sub_29D5B370C();
    v108 = sub_29D5B427C();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v245[0] = v110;
      *v109 = 136446466;
      v244[0] = sub_29D4F355C(0);
      sub_29D4F33FC(0, &qword_2A17A43F0, sub_29D4F355C);
      v111 = sub_29D5B3E7C();
      v113 = sub_29D501890(v111, v112, v245);

      *(v109 + 4) = v113;
      *(v109 + 12) = 2082;
      v114 = sub_29D5B10BC();
      v116 = sub_29D501890(v114, v115, v245);

      *(v109 + 14) = v116;
      _os_log_impl(&dword_29D48C000, v107, v108, "[%{public}s] Sidebar feed item is not supported for non-primary profile: %{public}s", v109, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v110, -1, -1);
      MEMORY[0x29ED5FB80](v109, -1, -1);
    }

    (*(v239 + 8))(v11, v240);
    goto LABEL_12;
  }

  v201 = v26;
  v200 = v22;
  v202 = v43;
  v207 = v81;
  v83 = v39 + 16;
  v82 = *(v39 + 16);
  v84 = v238;
  v85 = v39;
  v86 = v237;
  v82(v80, v238, v237);
  sub_29D5B0C0C();
  swift_allocObject();
  sub_29D5B0BFC();
  sub_29D4F172C(&qword_2A1A18F78, type metadata accessor for HealthRecordsSidebarActionHandlerData, &unk_29D5B8340);
  v203 = v80;
  v87 = sub_29D5B0BEC();
  v204 = 0;
  v206 = v82;
  v205 = v85;
  v122 = v121;
  v199 = v87;

  v82(v58, v84, v86);
  v123 = *(v85 + 88);
  v198 = v85 + 88;
  v197 = v123;
  v124 = v123(v58, v86);
  v125 = v83;
  if (v124 != *MEMORY[0x29EDC3F80])
  {
    v213 = v122;
    (*(v85 + 8))(v58, v86);
    v130 = v201;
    v131 = v231;
LABEL_20:
    (*(v85 + 104))(v235, *MEMORY[0x29EDC3F88], v86);
    sub_29D4F172C(&qword_2A1A17360, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD8]);
    v140 = v238;
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v245[0] == v244[0] && v245[1] == v244[1])
    {
      v142 = 1;
    }

    else
    {
      v142 = sub_29D5B4C7C();
    }

    v144 = v205 + 8;
    v143 = *(v205 + 8);
    (v143)(v235, v86);

    if (v142)
    {
      v145 = v223;
      v206(v223, v140, v86);
      sub_29D5B1B0C();
      sub_29D5173F4(v130);
      v146 = sub_29D5B2A2C();
      (*(*(v146 - 8) + 56))(v200, 1, 1, v146);
      sub_29D5B34BC();
      (v143)(v145, v86);
      sub_29D5B1B8C();
      v148 = v233;
      v147 = v234;
      v149 = v215;
      (*(v234 + 104))(v215, *MEMORY[0x29EDC1E58], v233);
      v150 = v214;
      v151 = v149;
      v152 = v204;
      sub_29D5B114C();
      if (v152)
      {
        v138 = v152;

        sub_29D4A96D0(v199, v213);
        (*(v147 + 8))(v151, v148);
        (*(v217 + 8))(v224, v218);
        v139 = v236;
        v141 = v207;
        goto LABEL_4;
      }

      (*(v147 + 8))(v151, v148);
      (*(v217 + 8))(v224, v218);
      v163 = v221;
      v164 = v150;
      v165 = *(v242 + 32);
      (v165)(v221, v164, v243);
      v166 = v213;
      v136 = v199;
LABEL_44:
      v182 = sub_29D4F19AC(v140);
      v183 = sub_29D5B130C();
      sub_29D4E80E8(v182);
      v183(v245, 0);
      sub_29D5B1B0C();
      sub_29D5B124C();
      sub_29D4F207C(v140);
      sub_29D5B132C();

      sub_29D4A96D0(v136, v166);
      sub_29D4F3474(v203, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      v184 = v241;
      v185 = v243;
      (v165)(v241, v163, v243);
      v119 = v185;
      v118 = v184;
      v117 = 0;
      return (*(v242 + 56))(v118, v117, 1, v119);
    }

    v229 = v143;
    v230 = v144;
    v154 = v233;
    v153 = v234;
    v155 = *(v234 + 104);
    v155(v232, *MEMORY[0x29EDC1E58], v233);
    if (v219)
    {
      v206(v131, v140, v86);
      v156 = v197(v131, v86);
      v157 = v225;
      if (v156 == *MEMORY[0x29EDC3FB0])
      {
        v158 = *(v153 + 8);
        v159 = v232;
        v158(v232, v154);
        (*(v205 + 96))(v131, v86);
        sub_29D4E019C(0);

        v160 = sub_29D5B0EDC();
        (*(*(v160 - 8) + 8))(v131, v160);
      }

      else
      {
        if (v156 != *MEMORY[0x29EDC3F90])
        {
          (v229)(v131, v86);
          v161 = 0;
          v162 = v222;
          goto LABEL_38;
        }

        v168 = *(v153 + 8);
        v159 = v232;
        v168(v232, v154);
      }

      v155(v159, *MEMORY[0x29EDC1E60], v154);
      v161 = 2;
      v162 = v222;
    }

    else
    {
      v161 = 0;
      v162 = v222;
      v157 = v225;
    }

LABEL_38:
    v196 = v125;
    v169 = v223;
    v206(v223, v140, v86);
    sub_29D517AC4(v169, v161, v157);
    type metadata accessor for AccountSidebarContentConfigurationProvider(0);
    v170 = v220;
    v171 = v227;
    (*(v162 + 16))(v220, v157, v227);
    (*(v162 + 56))(v170, 0, 1, v171);
    v235 = sub_29D5B33AC();
    v172 = type metadata accessor for HealthRecordsSidebarActionHandler(0);
    v173 = v199;
    v166 = v213;
    sub_29D4F357C(v199, v213);
    v231 = sub_29D5B1B8C();
    sub_29D4F172C(&qword_2A1A17600, type metadata accessor for AccountSidebarContentConfigurationProvider, &unk_29D5B959C);
    sub_29D4F172C(&qword_2A1A19580, type metadata accessor for HealthRecordsSidebarActionHandler, &unk_29D5B8170);
    v174 = v170;
    v175 = v216;
    v176 = v162;
    v177 = v204;
    sub_29D5B113C();
    v138 = v177;
    if (v177)
    {
      sub_29D4A96D0(v173, v166);

      sub_29D4A96D0(v173, v166);
      sub_29D4F3474(v174, sub_29D4F34D4);
      (*(v176 + 8))(v225, v227);
      (*(v234 + 8))(v232, v233);
      v86 = v237;
      v140 = v238;
      v141 = v207;
      v139 = v236;
      goto LABEL_4;
    }

    v231 = v172;
    v178 = v227;
    v204 = 0;

    sub_29D4F3474(v174, sub_29D4F34D4);
    v163 = v221;
    v235 = *(v242 + 32);
    (v235)(v221, v175, v243);
    v179 = v212;
    v180 = v237;
    v206(v212, v238, v237);
    v181 = v197(v179, v180);
    if (v181 != *MEMORY[0x29EDC3FA8] && v181 != *MEMORY[0x29EDC3F78] && v181 != *MEMORY[0x29EDC3F90])
    {
      v136 = v199;
      sub_29D4A96D0(v199, v166);
      (*(v222 + 8))(v225, v178);
      (*(v234 + 8))(v232, v233);
      (v229)(v179, v237);
      v140 = v238;
      v165 = v235;
      goto LABEL_44;
    }

    sub_29D5B1B0C();
    sub_29D5173F4(v201);
    v186 = sub_29D5B2A2C();
    (*(*(v186 - 8) + 56))(v200, 1, 1, v186);
    v187 = v209;
    sub_29D5B2C8C();
    sub_29D5B1B8C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v189 = NSStringFromClass(ObjCClassFromMetadata);
    sub_29D5B3E5C();

    v190 = v208;
    v191 = v187;
    v192 = v232;
    v136 = v199;
    v193 = v204;
    sub_29D5B115C();
    v204 = v193;
    if (v193)
    {
      sub_29D4A96D0(v136, v166);

      sub_29D4A96D0(v136, v166);
      (*(v210 + 8))(v191, v211);
      (*(v222 + 8))(v225, v227);
      (*(v234 + 8))(v192, v233);
      (*(v242 + 8))(v221, v243);
      v139 = v236;
      v86 = v237;
      v140 = v238;
      v141 = v207;
      v138 = v204;
      goto LABEL_4;
    }

    sub_29D4A96D0(v136, v166);

    (*(v210 + 8))(v191, v211);
    (*(v222 + 8))(v225, v227);
    (*(v234 + 8))(v192, v233);
    v194 = v243;
    v163 = v221;
    (*(v242 + 8))(v221, v243);
    v195 = v190;
    v165 = v235;
    (v235)(v163, v195, v194);
    goto LABEL_33;
  }

  (*(v85 + 96))(v58, v86);
  v126 = v229;
  v127 = v228;
  v128 = v230;
  v229[4](v228, v58, v230);
  v129 = sub_29D5B1D1C();
  v130 = v201;
  v131 = v231;
  if (!v129)
  {
    v213 = v122;
    (v126[1])(v127, v128);
    v86 = v237;
    v85 = v205;
    goto LABEL_20;
  }

  v132 = v129;
  v196 = v125;
  type metadata accessor for HealthRecordsSidebarActionHandler(0);
  v134 = v233;
  v133 = v234;
  v135 = v213;
  (*(v234 + 104))(v213, *MEMORY[0x29EDC1E58], v233);
  v136 = v199;
  sub_29D4F357C(v199, v122);
  sub_29D4F172C(&qword_2A1A19580, type metadata accessor for HealthRecordsSidebarActionHandler, &unk_29D5B8170);
  v137 = v204;
  sub_29D5B112C();
  if (!v137)
  {
    sub_29D4A96D0(v136, v122);

    (*(v133 + 8))(v135, v134);
    (v229[1])(v228, v230);
    v163 = v221;
    v167 = v74;
    v165 = *(v242 + 32);
    (v165)(v221, v167, v243);
    v166 = v122;
LABEL_33:
    v140 = v238;
    goto LABEL_44;
  }

  v138 = v137;
  sub_29D4A96D0(v136, v122);

  sub_29D4A96D0(v136, v122);
  (*(v133 + 8))(v135, v134);
  (v229[1])(v228, v230);
  v139 = v236;
  v86 = v237;
  v140 = v238;
  v141 = v207;
LABEL_4:
  sub_29D5B36AC();
  v88 = v202;
  v206(v202, v140, v86);
  v89 = v138;
  v90 = sub_29D5B370C();
  v91 = sub_29D5B427C();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v238 = swift_slowAlloc();
    v244[0] = v238;
    *v92 = 136446722;
    v245[0] = sub_29D4F355C(0);
    sub_29D4F33FC(0, &qword_2A17A43F0, sub_29D4F355C);
    v93 = sub_29D5B3E7C();
    v95 = sub_29D501890(v93, v94, v244);

    *(v92 + 4) = v95;
    *(v92 + 12) = 2082;
    v96 = sub_29D5B1B0C();
    v98 = v97;
    (*(v205 + 8))(v88, v86);
    v99 = sub_29D501890(v96, v98, v244);

    *(v92 + 14) = v99;
    *(v92 + 22) = 2082;
    v245[0] = v138;
    v100 = v138;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v101 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v102 = sub_29D5B3E7C();
    v104 = sub_29D501890(v102, v103, v244);

    *(v92 + 24) = v104;
    _os_log_impl(&dword_29D48C000, v90, v91, "[%{public}s] Error making feed item for sidebar for %{public}s: %{public}s", v92, 0x20u);
    v105 = v238;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v105, -1, -1);
    MEMORY[0x29ED5FB80](v92, -1, -1);
  }

  else
  {

    (*(v205 + 8))(v88, v86);
  }

  (*(v239 + 8))(v139, v240);
  sub_29D4F3474(v203, type metadata accessor for HealthRecordsSidebarActionHandlerData);
LABEL_12:
  v117 = 1;
  v118 = v241;
  v119 = v243;
  return (*(v242 + 56))(v118, v117, 1, v119);
}

uint64_t sub_29D4EDFF8@<X0>(void **a1@<X0>, const char *a2@<X2>, uint64_t *a3@<X8>)
{
  v40 = a2;
  sub_29D4B37EC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B371C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_29D5B36AC();
  v17 = v16;
  v18 = sub_29D5B370C();
  v19 = sub_29D5B427C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v36 = v11;
    v23 = v22;
    v42 = v22;
    *v21 = 136446466;
    v41 = sub_29D4F33DC(0);
    sub_29D4F33FC(0, &qword_2A17A43E0, sub_29D4F33DC);
    v24 = sub_29D5B3E7C();
    v38 = v6;
    v26 = sub_29D501890(v24, v25, &v42);
    v39 = a3;
    v27 = v26;

    *(v21 + 4) = v27;
    *(v21 + 12) = 2082;
    v41 = v16;
    v28 = v16;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v29 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v30 = sub_29D5B3E7C();
    v32 = sub_29D501890(v30, v31, &v42);

    *(v21 + 14) = v32;
    a3 = v39;
    _os_log_impl(&dword_29D48C000, v18, v19, v40, v21, 0x16u);
    v6 = v38;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v23, -1, -1);
    v33 = v21;
    v7 = v37;
    MEMORY[0x29ED5FB80](v33, -1, -1);

    (*(v12 + 8))(v15, v36);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v41 = MEMORY[0x29EDCA190];
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D4F172C(&qword_2A1A165D8, sub_29D4B37EC, MEMORY[0x29EDB8AB8]);
  v34 = sub_29D5B3B1C();
  result = (*(v7 + 8))(v10, v6);
  *a3 = v34;
  return result;
}

uint64_t sub_29D4EE3C8()
{

  v1 = OBJC_IVAR____TtC13HealthRecords17CategoryGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D4F3474(v0 + OBJC_IVAR____TtC13HealthRecords17CategoryGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t sub_29D4EE518@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords17CategoryGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D4EE594(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_29D5B2FFC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_29D5B1A1C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_29D5B1A2C();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  sub_29D4F4538(0);
  v2[14] = swift_task_alloc();
  v6 = sub_29D5B1A6C();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D4EE7C0, 0, 0);
}

uint64_t sub_29D4EE7C0()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v1[11];
  v4 = v1[12];
  sub_29D5B208C();
  v1[18] = sub_29D5B207C();
  (*(v4 + 104))(v2, *MEMORY[0x29EDC3EC8], v3);
  v5 = swift_task_alloc();
  v1[19] = v5;
  *v5 = v1;
  v5[1] = sub_29D4EE8DC;
  v7 = v1[13];
  v6 = v1[14];
  v8 = v1[4];

  return MEMORY[0x2A1C65D58](v6, v8, v7);
}

uint64_t sub_29D4EE8DC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2A1C73D48](sub_29D4EEA84, 0, 0);
}

uint64_t sub_29D4EEA84()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[3];
    sub_29D4F3474(v3, sub_29D4F4538);
    v5 = sub_29D5B300C();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];
    (*(v2 + 32))(v0[17], v3, v1);
    sub_29D5B1A3C();
    v9 = (*(v7 + 88))(v6, v8);
    v10 = *MEMORY[0x29EDC3EC0];
    v11 = sub_29D5B1A5C();
    if (v9 == v10)
    {
      v0[2] = 0;
      v12 = v11;
      v13 = [v11 hr:v0 + 2 imageWithWhiteBackground:?];

      v14 = v0[2];
      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v20 = v14;
        v21 = sub_29D5B0D2C();

        swift_willThrow();
        v13 = sub_29D5B1A5C();
      }

      v19 = v13;
    }

    else
    {
      v16 = v0[10];
      v17 = v0[8];
      v18 = *(v0[9] + 8);
      v19 = v11;
      v18(v16, v17);
    }

    v22 = v9 == v10;
    v23 = v0[16];
    v33 = v0[17];
    v24 = v0[15];
    v25 = v0[6];
    v26 = v0[7];
    v27 = v0[5];
    v28 = v0[3];
    v29 = v19;
    sub_29D5B3C7C();
    *v26 = v22;
    (*(v25 + 104))(v26, *MEMORY[0x29EDC24C0], v27);
    sub_29D5B2FEC();

    (*(v23 + 8))(v33, v24);
    v30 = sub_29D5B300C();
    (*(*(v30 - 8) + 56))(v28, 0, 1, v30);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_29D4EEDAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_29D5B0EDC();
  v21 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F4628(0, &qword_2A17A4440, sub_29D4F456C, &type metadata for RecordsCategoryIconProvider.CodingKeys, MEMORY[0x29EDC9E80]);
  v7 = v6;
  v20 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RecordsCategoryIconProvider(0);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D4F456C();
  v15 = v23;
  sub_29D5B4DBC();
  if (!v15)
  {
    v16 = v20;
    v17 = v21;
    sub_29D4F172C(&qword_2A17A4030, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C28]);
    sub_29D5B4B6C();
    (*(v16 + 8))(v10, v7);
    (*(v17 + 32))(v14, v22, v3);
    sub_29D4F45C0(v14, v19, type metadata accessor for RecordsCategoryIconProvider);
  }

  return sub_29D48F668(a1);
}

uint64_t sub_29D4EF0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29D5B4C7C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29D4EF134(uint64_t a1)
{
  v2 = sub_29D4F456C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4EF170(uint64_t a1)
{
  v2 = sub_29D4F456C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4EF1AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29D4E7B8C;

  return sub_29D4EE594(a1);
}

uint64_t sub_29D4EF25C(void *a1)
{
  sub_29D4F4628(0, &qword_2A17A4450, sub_29D4F456C, &type metadata for RecordsCategoryIconProvider.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v9 - v6;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4F456C();
  sub_29D5B4DCC();
  sub_29D5B0EDC();
  sub_29D4F172C(&qword_2A1A193B8, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C10]);
  sub_29D5B4C0C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29D4EF408@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_29D5B1BCC();
  v21 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F4628(0, &qword_2A17A4438, sub_29D4F44E4, &type metadata for HealthRecordsSidebarActionHandlerData.CodingKeys, MEMORY[0x29EDC9E80]);
  v7 = v6;
  v20 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for HealthRecordsSidebarActionHandlerData(0);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D4F44E4();
  v15 = v23;
  sub_29D5B4DBC();
  if (!v15)
  {
    v16 = v20;
    v17 = v21;
    sub_29D4F172C(&qword_2A1A19478, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FE0]);
    sub_29D5B4B6C();
    (*(v16 + 8))(v10, v7);
    (*(v17 + 32))(v14, v22, v3);
    sub_29D4F45C0(v14, v19, type metadata accessor for HealthRecordsSidebarActionHandlerData);
  }

  return sub_29D48F668(a1);
}

uint64_t sub_29D4EF6E4()
{
  sub_29D5B4D4C();
  MEMORY[0x29ED5F330](0);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4EF728(uint64_t a1)
{
  sub_29D5B4D4C();
  MEMORY[0x29ED5F330](0);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4EF780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29D5B4C7C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29D4EF808(uint64_t a1)
{
  v2 = sub_29D4F44E4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4EF844(uint64_t a1)
{
  v2 = sub_29D4F44E4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4EF898(void *a1)
{
  sub_29D4F4628(0, &unk_2A1A16238, sub_29D4F44E4, &type metadata for HealthRecordsSidebarActionHandlerData.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v9 - v6;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4F44E4();
  sub_29D5B4DCC();
  sub_29D5B1BCC();
  sub_29D4F172C(&qword_2A1A19808, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FC0]);
  sub_29D5B4C0C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29D4EFA44()
{
  v1 = sub_29D5B371C();
  v117 = *(v1 - 1);
  v118 = v1;
  v3 = MEMORY[0x2A1C7C4A8](v1, v2);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v107 = &v97 - v7;
  v8 = sub_29D5B2C2C();
  v103 = *(v8 - 8);
  v104 = v8;
  v10 = MEMORY[0x2A1C7C4A8](v8, v9);
  v102 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v101 = &v97 - v13;
  v14 = sub_29D5B1BCC();
  v15 = *(v14 - 8);
  v115 = v14;
  v116 = v15;
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v105 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v106 = &v97 - v21;
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v108 = &v97 - v24;
  MEMORY[0x2A1C7C4A8](v23, v25);
  v114 = &v97 - v26;
  sub_29D4F424C(0);
  MEMORY[0x2A1C7C4A8](v27 - 8, v28);
  v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for HealthRecordsSidebarActionHandlerData(0);
  v32 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v113 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29D5B32CC();
  v36 = *(v35 - 8);
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v100 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x2A1C7C4A8](v38, v40);
  v109 = &v97 - v42;
  MEMORY[0x2A1C7C4A8](v41, v43);
  v45 = &v97 - v44;
  v111 = v0;
  sub_29D5B30DC();
  v46 = sub_29D5B329C();
  v48 = v47;
  v49 = *(v36 + 8);
  v112 = v35;
  v110 = v36 + 8;
  v49(v45, v35);
  if (v48 >> 60 != 15)
  {
    v99 = v49;
    sub_29D5B0BDC();
    swift_allocObject();
    sub_29D5B0BCC();
    sub_29D4F172C(&qword_2A17A4428, type metadata accessor for HealthRecordsSidebarActionHandlerData, &unk_29D5B82D8);
    sub_29D5B0BBC();
    v97 = v46;
    v98 = v48;

    (*(v32 + 56))(v30, 0, 1, v31);
    v54 = v113;
    sub_29D4F45C0(v30, v113, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    v55 = v115;
    v56 = v116;
    v57 = v114;
    (*(v116 + 16))(v114, v54, v115);
    sub_29D5B21EC();
    v58 = sub_29D5B21DC();
    sub_29D5B1CBC();
    v59 = sub_29D5B1C8C();
    v60 = v109;
    sub_29D5B30DC();
    sub_29D5B328C();
    v99(v60, v112);
    v61 = sub_29D5B2DEC();

    v62 = sub_29D5B1C9C();

    v63 = v57;
    v64 = sub_29D5B21BC();

    if (!v64)
    {
      v67 = v107;
      sub_29D5B36DC();
      v68 = sub_29D5B370C();
      v69 = sub_29D5B427C();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_29D48C000, v68, v69, "Unable to create category view controller.", v70, 2u);
        MEMORY[0x29ED5FB80](v70, -1, -1);
      }

      sub_29D4A96BC(v97, v98);

      (*(v117 + 8))(v67, v118);
      (*(v116 + 8))(v63, v55);
      return sub_29D4F3474(v113, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    }

    v118 = v64;
    v65 = *MEMORY[0x29EDC3F78];
    v117 = *(v56 + 104);
    (v117)(v108, v65, v55);
    sub_29D4F172C(&qword_2A1A17360, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD8]);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v121 == v119 && v122 == v120)
    {
      v66 = 1;
    }

    else
    {
      v66 = sub_29D5B4C7C();
    }

    v71 = v115;
    v73 = v116 + 8;
    v72 = *(v116 + 8);
    v72(v108, v115);

    if (v66)
    {
      goto LABEL_21;
    }

    v74 = v72;
    v116 = v73;
    v75 = v106;
    (v117)(v106, *MEMORY[0x29EDC3F90], v71);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v121 == v119 && v122 == v120)
    {
      v71 = v115;
      v72(v75, v115);
    }

    else
    {
      v76 = sub_29D5B4C7C();
      v71 = v115;
      v72(v75, v115);

      if (v76)
      {
        goto LABEL_21;
      }

      v80 = v105;
      (v117)(v105, *MEMORY[0x29EDC3FA8], v71);
      sub_29D5B3FFC();
      sub_29D5B3FFC();
      if (v121 != v119 || v122 != v120)
      {
        v81 = sub_29D5B4C7C();
        v71 = v115;
        v72(v80, v115);

        if ((v81 & 1) == 0)
        {
          v82 = v109;
          v83 = v111;
          sub_29D5B30DC();
          v84 = v101;
          sub_29D5B327C();
          v99(v82, v112);
          v86 = v103;
          v85 = v104;
          v87 = v102;
          (*(v103 + 104))(v102, *MEMORY[0x29EDC1D78], v104);
          v88 = sub_29D5B2C1C();
          v89 = *(v86 + 8);
          v89(v87, v85);
          v89(v84, v85);
          if (v88)
          {
            sub_29D5B30DC();
            v90 = sub_29D5B32AC();
            v99(v82, v112);
            v91 = v118;
            [v90 showDetailViewController:v118 sender:v83];
            sub_29D4A96BC(v97, v98);

            v74(v114, v115);
          }

          else
          {
            v92 = v100;
            sub_29D5B30DC();
            v93 = sub_29D5B32AC();
            v99(v92, v112);
            v94 = [v93 navigationController];

            v95 = v114;
            if (v94)
            {
              v96 = v118;
              [v94 pushViewController:v118 animated:1];
              sub_29D4A96BC(v97, v98);
            }

            else
            {
              sub_29D4A96BC(v97, v98);
            }

            v74(v95, v115);
          }

          return sub_29D4F3474(v113, type metadata accessor for HealthRecordsSidebarActionHandlerData);
        }

LABEL_21:
        v77 = v109;
        sub_29D5B30DC();
        v78 = sub_29D5B32AC();
        v99(v77, v112);
        v79 = v118;
        [v78 presentViewController:v118 animated:1 completion:0];
        sub_29D4A96BC(v97, v98);

        v72(v114, v71);
        return sub_29D4F3474(v113, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      }

      v71 = v115;
      v72(v80, v115);
    }

    goto LABEL_21;
  }

  sub_29D5B36DC();
  v50 = sub_29D5B370C();
  v51 = sub_29D5B427C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_29D48C000, v50, v51, "Unable to decode and find the correct health records category for sidebar item", v52, 2u);
    MEMORY[0x29ED5FB80](v52, -1, -1);
  }

  return (*(v117 + 8))(v5, v118);
}

id sub_29D4F074C()
{
  v1 = sub_29D5B371C();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F424C(0);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HealthRecordsSidebarActionHandlerData(0);
  v41 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B32CC();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v37 - v19;
  v39 = v0;
  sub_29D5B30DC();
  v21 = sub_29D5B329C();
  v23 = v22;
  v24 = *(v13 + 8);
  v24(v20, v12);
  if (v23 >> 60 == 15)
  {
    sub_29D5B36DC();
    v25 = sub_29D5B370C();
    v26 = sub_29D5B427C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_29D48C000, v25, v26, "Unable to decode and find the correct health records category for sidebar item", v27, 2u);
      MEMORY[0x29ED5FB80](v27, -1, -1);
    }

    (*(v42 + 8))(v4, v43);
    return [objc_allocWithZone(MEMORY[0x29EDC7DA8]) init];
  }

  else
  {
    v38 = v24;
    sub_29D5B0BDC();
    swift_allocObject();
    sub_29D5B0BCC();
    sub_29D4F172C(&qword_2A17A4428, type metadata accessor for HealthRecordsSidebarActionHandlerData, &unk_29D5B82D8);
    sub_29D5B0BBC();
    v42 = v21;
    v43 = v23;

    (*(v41 + 56))(v8, 0, 1, v9);
    v29 = v8;
    v30 = v40;
    sub_29D4F45C0(v29, v40, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    sub_29D5B21EC();
    v31 = sub_29D5B21DC();
    sub_29D5B1CBC();
    v32 = sub_29D5B1C8C();
    sub_29D5B30DC();
    sub_29D5B328C();
    v38(v17, v12);
    v33 = sub_29D5B2DEC();

    v34 = sub_29D5B1C9C();

    v35 = sub_29D5B21BC();
    if (v35)
    {
      sub_29D4F3474(v30, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      sub_29D4A96BC(v42, v43);
      return v35;
    }

    else
    {
      v36 = [objc_allocWithZone(MEMORY[0x29EDC7DA8]) init];
      sub_29D4A96BC(v42, v43);
      sub_29D4F3474(v30, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      return v36;
    }
  }
}

BOOL sub_29D4F0C84()
{
  v57 = sub_29D5B371C();
  v0 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57, v1);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D5B1BCC();
  v53 = *(v4 - 8);
  v54 = v4;
  v6 = MEMORY[0x2A1C7C4A8](v4, v5);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v51 = &v49 - v10;
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v52 = &v49 - v13;
  MEMORY[0x2A1C7C4A8](v12, v14);
  v56 = &v49 - v15;
  sub_29D4F424C(0);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HealthRecordsSidebarActionHandlerData(0);
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v55 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D5B32CC();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B30DC();
  v29 = sub_29D5B329C();
  v30 = v28;
  v32 = v31;
  (*(v25 + 8))(v30, v24);
  if (v32 >> 60 == 15)
  {
    sub_29D5B36DC();
    v33 = sub_29D5B370C();
    v34 = sub_29D5B427C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_29D48C000, v33, v34, "Unable to decode and find the correct health records category for sidebar item", v35, 2u);
      MEMORY[0x29ED5FB80](v35, -1, -1);
    }

    (*(v0 + 8))(v3, v57);
    return 1;
  }

  else
  {
    sub_29D5B0BDC();
    swift_allocObject();
    sub_29D5B0BCC();
    sub_29D4F172C(&qword_2A17A4428, type metadata accessor for HealthRecordsSidebarActionHandlerData, &unk_29D5B82D8);
    sub_29D5B0BBC();
    v49 = v29;
    v57 = v32;

    v37 = 1;
    (*(v21 + 56))(v19, 0, 1, v20);
    v38 = v55;
    sub_29D4F45C0(v19, v55, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    v39 = v53;
    v40 = v38;
    v41 = v54;
    (*(v53 + 16))(v56, v40, v54);
    v42 = *(v39 + 104);
    v43 = v52;
    v42(v52, *MEMORY[0x29EDC3F78], v41);
    sub_29D4F172C(&qword_2A1A17360, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD8]);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v60 != v58 || v61 != v59)
    {
      v37 = sub_29D5B4C7C();
    }

    v44 = *(v39 + 8);
    v44(v43, v41);

    if (v37)
    {
      goto LABEL_15;
    }

    v45 = v51;
    v42(v51, *MEMORY[0x29EDC3F90], v41);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v60 == v58 && v61 == v59)
    {
      v44(v45, v41);

LABEL_15:
      sub_29D4A96BC(v49, v57);
      v44(v56, v41);
      sub_29D4F3474(v55, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      return 0;
    }

    v46 = sub_29D5B4C7C();
    v44(v45, v41);

    if (v46)
    {
      goto LABEL_15;
    }

    v47 = v50;
    v42(v50, *MEMORY[0x29EDC3FA8], v41);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v60 == v58 && v61 == v59)
    {
      sub_29D4A96BC(v49, v57);
      v44(v47, v41);
      v44(v56, v41);
      sub_29D4F3474(v55, type metadata accessor for HealthRecordsSidebarActionHandlerData);

      return 0;
    }

    else
    {
      v48 = sub_29D5B4C7C();
      sub_29D4A96BC(v49, v57);
      v44(v47, v41);
      v44(v56, v41);
      sub_29D4F3474(v55, type metadata accessor for HealthRecordsSidebarActionHandlerData);

      return (v48 & 1) == 0;
    }
  }
}

uint64_t sub_29D4F14B8(uint64_t a1)
{
  v2 = sub_29D5B32CC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v6, a1, v2);
  v7 = sub_29D5B30FC();
  (*(v3 + 8))(a1, v2);
  return v7;
}

uint64_t sub_29D4F15C0()
{
  sub_29D5B310C();

  return swift_deallocClassInstance();
}

uint64_t sub_29D4F1644@<X0>(_BYTE *a1@<X8>)
{
  if (sub_29D4F0C84())
  {
    v2 = MEMORY[0x29EDC22C8];
  }

  else
  {
    *a1 = 1;
    v2 = MEMORY[0x29EDC22C0];
  }

  v3 = *v2;
  v4 = sub_29D5B2F7C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t sub_29D4F172C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D4F1774(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_29D59AD10(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_29D4F17E4(uint64_t a1)
{
  v2 = sub_29D5B16BC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v5, v8);
  v11 = &v18 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_29D59BD10(v11, v7);
      result = (*(v13 - 8))(v11, v2);
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_29D4F192C(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_29D59AD10(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_29D4F19AC(uint64_t a1)
{
  v2 = sub_29D5B1D6C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v49[-v9];
  v11 = sub_29D5B1BCC();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 16))(v15, a1, v11);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x29EDC3F80])
  {
    (*(v12 + 96))(v15, v11);
    (*(v3 + 32))(v10, v15, v2);
    v17 = sub_29D563D48();
    (*(v3 + 16))(v7, v10, v2);
    v18 = (*(v3 + 88))(v7, v2);
    v19 = *MEMORY[0x29EDC4078];
    v20 = *MEMORY[0x29EDC4080];
    sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v21 = (v3 + 8);
    if (v18 == v19 || v18 == v20)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29D5B62A0;
      *(inited + 32) = sub_29D5B15CC();
      *(inited + 40) = v24;
      v31 = sub_29D4F192C(inited, v17);
      swift_setDeallocating();
      sub_29D4B4B58(inited + 32);
      (*v21)(v10, v2);
    }

    else
    {
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_29D5B62A0;
      *(v29 + 32) = sub_29D5B15BC();
      *(v29 + 40) = v30;
      v31 = sub_29D4F192C(v29, v17);
      swift_setDeallocating();
      sub_29D4B4B58(v29 + 32);
      v32 = *v21;
      (*v21)(v10, v2);
      v32(v7, v2);
    }
  }

  else if (v16 == *MEMORY[0x29EDC3FB0])
  {
    (*(v12 + 96))(v15, v11);
    sub_29D4E019C(0);

    sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_29D5B6320;
    *(v25 + 32) = 0xD000000000000010;
    *(v25 + 40) = 0x800000029D5BCDE0;
    *(v25 + 48) = sub_29D5B151C();
    *(v25 + 56) = v26;
    *(v25 + 64) = sub_29D5B15AC();
    *(v25 + 72) = v27;
    v31 = sub_29D5959C4(v25);
    swift_setDeallocating();
    swift_arrayDestroy();
    v28 = sub_29D5B0EDC();
    (*(*(v28 - 8) + 8))(v15, v28);
  }

  else if (v16 == *MEMORY[0x29EDC3FA8] || v16 == *MEMORY[0x29EDC3FA0] || v16 == *MEMORY[0x29EDC3F70])
  {
    sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_29D5B5E20;
    *(v35 + 32) = sub_29D5B151C();
    *(v35 + 40) = v36;
    *(v35 + 48) = sub_29D5B15BC();
    *(v35 + 56) = v37;
    v31 = sub_29D5959C4(v35);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else if (v16 == *MEMORY[0x29EDC3F78] || v16 == *MEMORY[0x29EDC3F90])
  {
    sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_29D5B62A0;
    *(v39 + 32) = sub_29D5B15AC();
    *(v39 + 40) = v40;
    v31 = sub_29D5959C4(v39);
    swift_setDeallocating();
    sub_29D4B4B58(v39 + 32);
  }

  else
  {
    v41 = *MEMORY[0x29EDC3F98];
    v42 = v16;
    sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    if (v42 == v41)
    {
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_29D5B5E20;
      *(v43 + 32) = sub_29D5B154C();
      *(v43 + 40) = v44;
      *(v43 + 48) = sub_29D5B15CC();
      *(v43 + 56) = v45;
      v31 = sub_29D5959C4(v43);
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      v46 = swift_initStackObject();
      *(v46 + 16) = xmmword_29D5B62A0;
      *(v46 + 32) = sub_29D5B155C();
      *(v46 + 40) = v47;
      v31 = sub_29D5959C4(v46);
      swift_setDeallocating();
      sub_29D4B4B58(v46 + 32);
      (*(v12 + 8))(v15, v11);
    }
  }

  return v31;
}

uint64_t sub_29D4F207C(uint64_t a1)
{
  v2 = sub_29D5B1D6C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B1BCC();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x29EDC3F80])
  {
    (*(v8 + 96))(v11, v7);
    (*(v3 + 32))(v6, v11, v2);
    v13 = (*(v3 + 88))(v6, v2);
    if (v13 == *MEMORY[0x29EDC4078])
    {
      return 0x8000000000000000;
    }

    if (v13 == *MEMORY[0x29EDC4080])
    {
      return 0x8000000000000001;
    }

    (*(v3 + 8))(v6, v2);
    return 0x7FFFFFFFFFFFFFFDLL;
  }

  v15 = v12;
  if (v12 == *MEMORY[0x29EDC3FB0])
  {
    (*(v8 + 96))(v11, v7);
    sub_29D4E019C(0);

    v16 = sub_29D5B0EDC();
    (*(*(v16 - 8) + 8))(v11, v16);
    return 0x8000000000000003;
  }

  result = 0x8000000000000002;
  if (v15 == *MEMORY[0x29EDC3FA8])
  {
    return result;
  }

  if (v15 == *MEMORY[0x29EDC3FA0])
  {
    return 0x8000000000000003;
  }

  if (v15 == *MEMORY[0x29EDC3F70])
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v15 == *MEMORY[0x29EDC3F88])
  {
    return 0x8000000000000004;
  }

  if (v15 != *MEMORY[0x29EDC3F78] && v15 != *MEMORY[0x29EDC3F90])
  {
    if (v15 != *MEMORY[0x29EDC3F98])
    {
      (*(v8 + 8))(v11, v7);
      return 0x8000000000000000;
    }

    return 0x8000000000000001;
  }

  return result;
}

char *sub_29D4F23EC(uint64_t a1, int a2, void *a3, uint64_t *a4)
{
  LODWORD(v6) = a2;
  v70 = sub_29D5B371C();
  v8 = *(v70 - 8);
  MEMORY[0x2A1C7C4A8](v70, v9);
  v69 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4AD4(0);
  v13 = MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v15 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v87 = v63 - v18;
  MEMORY[0x2A1C7C4A8](v17, v19);
  v84 = v63 - v20;
  v21 = sub_29D5B134C();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v83 = v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v77 = v63 - v27;
  v82 = *(a1 + 16);
  if (v82)
  {
    v28 = 0;
    v29 = *(sub_29D5B1BCC() - 8);
    v86 = (v22 + 48);
    v74 = (v22 + 8);
    v68 = (v8 + 8);
    v67 = (v22 + 56);
    v75 = v22;
    v79 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v80 = (v22 + 32);
    v78 = *(v29 + 72);
    v85 = MEMORY[0x29EDCA190];
    *&v30 = 136446466;
    v63[0] = v30;
    v31 = v84;
    v72 = a4;
    v71 = a3;
    v81 = v6;
    v76 = v15;
    v73 = v21;
    while (1)
    {
      v32 = v87;
      sub_29D4EC400(v79 + v78 * v28, v6 & 1, a3, v87);
      sub_29D4F3A64(v32, v15, sub_29D4B4AD4);
      v33 = *v86;
      if ((*v86)(v15, 1, v21) == 1)
      {
        sub_29D4F3474(v15, sub_29D4B4AD4);
      }

      else
      {
        v6 = sub_29D5B126C();
        v35 = v34;
        (*v74)(v15, v21);
        v36 = *a4;
        if (*(*a4 + 16))
        {
          sub_29D5B4D4C();

          sub_29D5B3EFC();
          v37 = sub_29D5B4D9C();
          v38 = -1 << *(v36 + 32);
          v39 = v37 & ~v38;
          if ((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
          {
            v40 = ~v38;
            while (1)
            {
              v41 = (*(v36 + 48) + 16 * v39);
              v42 = *v41 == v6 && v41[1] == v35;
              if (v42 || (sub_29D5B4C7C() & 1) != 0)
              {
                break;
              }

              v39 = (v39 + 1) & v40;
              if (((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            v48 = v69;
            sub_29D5B36AC();

            v49 = sub_29D5B370C();
            v50 = sub_29D5B427C();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v89 = v66;
              *v51 = v63[0];
              v88[0] = sub_29D4F33DC(0);
              sub_29D4F33FC(0, &qword_2A17A43E0, sub_29D4F33DC);
              v52 = sub_29D5B3E7C();
              v65 = v49;
              v54 = sub_29D501890(v52, v53, &v89);
              v64 = v50;
              v55 = v54;

              *(v51 + 4) = v55;
              *(v51 + 12) = 2082;
              v88[0] = v6;
              v88[1] = v35;
              sub_29D5B4CAC();
              v56 = HKSensitiveLogItem();
              swift_unknownObjectRelease();
              sub_29D5B47BC();
              swift_unknownObjectRelease();
              v57 = sub_29D5B3E7C();
              v59 = sub_29D501890(v57, v58, &v89);

              *(v51 + 14) = v59;
              v60 = v65;
              _os_log_impl(&dword_29D48C000, v65, v64, "[%{public}s] Duplicated unique identifier for sidebar item found: %{public}s", v51, 0x16u);
              v61 = v66;
              swift_arrayDestroy();
              MEMORY[0x29ED5FB80](v61, -1, -1);
              MEMORY[0x29ED5FB80](v51, -1, -1);
            }

            else
            {
            }

            (*v68)(v48, v70);
            sub_29D4F3474(v87, sub_29D4B4AD4);
            a4 = v72;
            a3 = v71;
            LOBYTE(v6) = v81;
            v15 = v76;
            v31 = v84;
            (*v67)(v84, 1, 1, v21);
            goto LABEL_19;
          }

LABEL_16:

          a4 = v72;
          a3 = v71;
        }

        sub_29D59AD10(v88, v6, v35);

        LOBYTE(v6) = v81;
        v15 = v76;
        v31 = v84;
      }

      sub_29D4F45C0(v87, v31, sub_29D4B4AD4);
LABEL_19:
      if (v33(v31, 1, v21) == 1)
      {
        sub_29D4F3474(v31, sub_29D4B4AD4);
      }

      else
      {
        v43 = *v80;
        v44 = v77;
        (*v80)(v77, v31, v21);
        v43(v83, v44, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_29D515230(0, *(v85 + 2) + 1, 1, v85);
        }

        v46 = *(v85 + 2);
        v45 = *(v85 + 3);
        if (v46 >= v45 >> 1)
        {
          v85 = sub_29D515230((v45 > 1), v46 + 1, 1, v85);
        }

        v47 = v85;
        *(v85 + 2) = v46 + 1;
        v21 = v73;
        v43(&v47[((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v46], v83, v73);
        v31 = v84;
        LOBYTE(v6) = v81;
      }

      if (++v28 == v82)
      {
        return v85;
      }
    }
  }

  return MEMORY[0x29EDCA190];
}

uint64_t *sub_29D4F2C74(uint64_t a1, void *a2)
{
  v3 = v2;
  v22 = a1;
  v26 = *v3;
  v27 = a2;
  v25 = sub_29D5B13CC();
  v23 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D5B13EC();
  v8 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F3A64(a1, v3 + OBJC_IVAR____TtC13HealthRecords17CategoryGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D4F326C(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v12 = sub_29D5B104C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29D5B5E20;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v16 + v15, *MEMORY[0x29EDC3778], v12);
  v18(v17 + v14, *MEMORY[0x29EDC3770], v12);
  v19 = v22;
  sub_29D5B143C();
  (*(v23 + 104))(v7, *MEMORY[0x29EDC3898], v25);
  sub_29D5B13DC();
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC13HealthRecords17CategoryGenerator_domain, v11, v24);
  v20 = sub_29D4E81EC(v19, v27);
  sub_29D4F3474(v19, type metadata accessor for HealthRecordsGeneratorContext);
  v3[2] = v20;
  return v3;
}

void sub_29D4F2FB0(uint64_t a1)
{
  if (!qword_2A1A172B8)
  {
    sub_29D4B2D8C(255);
    sub_29D4F172C(&qword_2A1A16780, sub_29D4B2D8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B379C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A172B8);
    }
  }
}

void sub_29D4F3050(uint64_t a1)
{
  if (!qword_2A1A16EB8)
  {
    sub_29D4F2FB0(255);
    sub_29D4C1E70(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D4F172C(&qword_2A1A172C0, sub_29D4F2FB0, MEMORY[0x29EDB8870]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16EB8);
    }
  }
}

void sub_29D4F3120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D4F31D4(255);
    v7 = v6;
    sub_29D4B3AC0(255);
    v9 = v8;
    v10 = sub_29D4F172C(&qword_2A1A16750, sub_29D4F31D4, MEMORY[0x29EDB8A00]);
    v11 = a3(a1, v7, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29D4F31D4(uint64_t a1)
{
  if (!qword_2A1A16748)
  {
    sub_29D4F326C(255, &qword_2A1A16438, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC9A40]);
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16748);
    }
  }
}

void sub_29D4F326C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D4F32D0(uint64_t a1)
{
  if (!qword_2A1A16C40)
  {
    sub_29D4F31D4(255);
    sub_29D4C1E70(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D4F172C(&qword_2A1A16750, sub_29D4F31D4, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16C40);
    }
  }
}

uint64_t sub_29D4F33FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D4F3474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4F357C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_29D4F35F0(uint64_t a1)
{
  if (!qword_2A1A16DE0)
  {
    sub_29D4F35D0(255);
    sub_29D4B3A8C(255);
    sub_29D4F172C(&qword_2A1A16C58, sub_29D4F35D0, MEMORY[0x29EDB8990]);
    sub_29D4F172C(&qword_2A1A167C0, sub_29D4B3A8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16DE0);
    }
  }
}

void sub_29D4F36DC(uint64_t a1)
{
  if (!qword_2A1A16BD0)
  {
    sub_29D4F35F0(255);
    sub_29D4C1E70(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D4F172C(&qword_2A1A16DE8, sub_29D4F35F0, MEMORY[0x29EDB8928]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16BD0);
    }
  }
}

void sub_29D4F37E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D4B2D8C(255);
    sub_29D4F172C(a4, a5, MEMORY[0x29EDB8990]);
    sub_29D4F172C(&qword_2A1A16780, sub_29D4B2D8C, MEMORY[0x29EDB8A00]);
    v8 = sub_29D5B387C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_29D4F38CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v7 = *a1;
  v9[2] = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));
  result = sub_29D58BA18(sub_29D4F3994, v9, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_29D4F39D0(uint64_t a1)
{
  if (!qword_2A1A17310)
  {
    type metadata accessor for RecordsCategoryIconProvider(255);
    sub_29D4F172C(qword_2A1A190F8, type metadata accessor for RecordsCategoryIconProvider, &unk_29D5B8308);
    v1 = sub_29D5B31EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17310);
    }
  }
}

uint64_t sub_29D4F3A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4F3ACC(uint64_t a1)
{
  v2 = sub_29D5B1D6C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B1BCC();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x29EDC3F80])
  {
    (*(v8 + 96))(v11, v7);
    (*(v3 + 32))(v6, v11, v2);
    v13 = (*(v3 + 88))(v6, v2);
    if (v13 == *MEMORY[0x29EDC4078])
    {
      return 0x8000000000000000;
    }

    if (v13 == *MEMORY[0x29EDC4080])
    {
      return 0x8000000000000001;
    }

    (*(v3 + 8))(v6, v2);
    return 0x7FFFFFFFFFFFFFFDLL;
  }

  v15 = v12;
  if (v12 == *MEMORY[0x29EDC3FB0])
  {
    (*(v8 + 96))(v11, v7);
    sub_29D4E019C(0);

    v16 = sub_29D5B0EDC();
    (*(*(v16 - 8) + 8))(v11, v16);
    return 0x8000000000000003;
  }

  result = 0x8000000000000002;
  if (v15 == *MEMORY[0x29EDC3FA8])
  {
    return result;
  }

  if (v15 == *MEMORY[0x29EDC3FA0])
  {
    return 0x8000000000000003;
  }

  if (v15 == *MEMORY[0x29EDC3F70])
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v15 != *MEMORY[0x29EDC3F78] && v15 != *MEMORY[0x29EDC3F90])
  {
    if (v15 != *MEMORY[0x29EDC3F98])
    {
      (*(v8 + 8))(v11, v7);
      return 0x8000000000000000;
    }

    return 0x8000000000000001;
  }

  return result;
}

uint64_t sub_29D4F3E20(uint64_t a1)
{
  v2 = sub_29D5B1D6C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B1BCC();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x29EDC3F80])
  {
    (*(v8 + 96))(v11, v7);
    (*(v3 + 32))(v6, v11, v2);
    v13 = (*(v3 + 88))(v6, v2);
    if (v13 == *MEMORY[0x29EDC4078] || v13 == *MEMORY[0x29EDC4080])
    {
      return 8;
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      return 5;
    }
  }

  else if (v12 == *MEMORY[0x29EDC3FB0])
  {
    (*(v8 + 96))(v11, v7);
    sub_29D4E019C(0);

    v15 = sub_29D5B0EDC();
    (*(*(v15 - 8) + 8))(v11, v15);
    return 6;
  }

  else if (v12 == *MEMORY[0x29EDC3FA8] || v12 == *MEMORY[0x29EDC3FA0] || v12 == *MEMORY[0x29EDC3F70])
  {
    return 5;
  }

  else if (v12 == *MEMORY[0x29EDC3F78] || v12 == *MEMORY[0x29EDC3F90])
  {
    return 6;
  }

  else if (v12 == *MEMORY[0x29EDC3F98])
  {
    return 7;
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    return 13;
  }
}

void sub_29D4F4160(uint64_t a1)
{
  if (!qword_2A17A43F8)
  {
    sub_29D5B31CC();
    type metadata accessor for ShowAllCategoryActionHandler(255);
    sub_29D4F172C(&qword_2A1A17318, MEMORY[0x29EDC2848], MEMORY[0x29EDC2840]);
    sub_29D4F172C(&qword_2A17A4400, type metadata accessor for ShowAllCategoryActionHandler, &unk_29D5B9394);
    v1 = sub_29D5B326C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A43F8);
    }
  }
}

uint64_t sub_29D4F42D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_29D4F4358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_29D4F43E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29D4F44E4()
{
  result = qword_2A1A18F90;
  if (!qword_2A1A18F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A18F90);
  }

  return result;
}

unint64_t sub_29D4F456C()
{
  result = qword_2A17A4448;
  if (!qword_2A17A4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4448);
  }

  return result;
}

uint64_t sub_29D4F45C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D4F4628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for ClinicalSharingOnboardingTileViewController.ViewModel.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ClinicalSharingOnboardingTileViewController.ViewModel.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_29D4F4784()
{
  result = qword_2A17A4458;
  if (!qword_2A17A4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4458);
  }

  return result;
}

unint64_t sub_29D4F47DC()
{
  result = qword_2A17A4460;
  if (!qword_2A17A4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4460);
  }

  return result;
}

unint64_t sub_29D4F4834()
{
  result = qword_2A17A4468;
  if (!qword_2A17A4468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4468);
  }

  return result;
}

unint64_t sub_29D4F488C()
{
  result = qword_2A17A4470;
  if (!qword_2A17A4470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4470);
  }

  return result;
}

unint64_t sub_29D4F48E4()
{
  result = qword_2A1A18F80;
  if (!qword_2A1A18F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A18F80);
  }

  return result;
}

unint64_t sub_29D4F493C()
{
  result = qword_2A1A18F88;
  if (!qword_2A1A18F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A18F88);
  }

  return result;
}

uint64_t sub_29D4F49BC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

id sub_29D4F49F4()
{
  v85 = 0;
  v101 = *MEMORY[0x29EDCA608];
  v1 = sub_29D5B0E6C();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v1, v3);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v81 = &v80 - v8;
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v86 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
  v13 = v12;
  v14 = *(v12 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v96 = &v80 - v20;
  v21 = type metadata accessor for SharedConceptCodedValue(0);
  v23 = MEMORY[0x2A1C7C4A8](v21, v22);
  v26 = (&v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = v0;
  v27 = v0[5];
  v28 = MEMORY[0x29EDCA190];
  v100 = MEMORY[0x29EDCA190];
  v29 = *(v27 + 16);
  v82 = v2;
  v83 = v1;
  v80 = v6;
  if (v29)
  {
    v30 = 0;
    v95 = v27 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v31 = *(v23 + 20);
    v97 = (v14 + 8);
    v98 = v14 + 16;
    v93 = *(v24 + 72);
    v94 = v31;
    v87 = MEMORY[0x29EDCA190];
    v88 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v89 = v29;
    v90 = v14;
    v32 = v86;
    do
    {
      sub_29D4F55C4(v95 + v93 * v30, v26, type metadata accessor for SharedConceptCodedValue);
      sub_29D4F55C4(v26 + v94, v32, sub_29D4A05F4);
      sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
      v34 = v33;
      v35 = *(v33 - 8);
      if ((*(v35 + 48))(v32, 1, v33) == 1)
      {
        sub_29D4F562C(v32, sub_29D4A05F4);
        sub_29D4F562C(v26, type metadata accessor for SharedConceptCodedValue);
      }

      else
      {
        v92 = v30;
        v36 = sub_29D5B3CEC();
        (*(v35 + 8))(v32, v34);
        v37 = v36;
        v38 = [v36 currentValue];
        v39 = [v38 inspectableValue];

        if (v39 && (v40 = [v39 codedQuantityValue], v39, (v91 = v40) != 0))
        {
          v41 = *v26;
          v99[0] = v28;
          v42 = *(v41 + 16);
          if (v42)
          {
            v43 = v37;
            v44 = v41 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
            v45 = *(v14 + 72);
            v46 = *(v14 + 16);
            do
            {
              v46(v18, v44, v13);
              sub_29D5B3CEC();
              v47 = (*v97)(v18, v13);
              MEMORY[0x29ED5E5E0](v47);
              if (*((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_29D5B408C();
              }

              sub_29D5B40AC();
              v44 += v45;
              --v42;
            }

            while (v42);
            v32 = v86;
            v37 = v43;
          }

          v48 = [v37 lowValue];
          v49 = v37;
          v50 = [v48 codedQuantityValue];

          v51 = [v37 highValue];
          v52 = [v51 &off_29F351088];

          sub_29D48F51C(0, &qword_2A17A41A8, 0x29EDBAC38);
          v53 = sub_29D5B401C();

          v54 = objc_opt_self();
          v99[0] = 0;
          v55 = v91;
          v56 = [v54 chartableCodedQuantityWithCodings:v53 originalCodedQuantity:v91 originalRangeLowCodedQuantity:v50 originalRangeHighCodedQuantity:v52 error:v99];

          v26 = v88;
          if (v56)
          {
            v57 = v99[0];

            v58 = sub_29D4F562C(v26, type metadata accessor for SharedConceptCodedValue);
            MEMORY[0x29ED5E5E0](v58);
            if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_29D5B408C();
            }

            sub_29D5B40AC();
            v87 = v100;
          }

          else
          {
            v59 = v99[0];
            v85 = v49;
            v60 = v59;
            v61 = sub_29D5B0D2C();

            swift_willThrow();
            sub_29D4F562C(v26, type metadata accessor for SharedConceptCodedValue);
            v85 = 0;
          }

          v29 = v89;
          v14 = v90;
          v28 = MEMORY[0x29EDCA190];
        }

        else
        {
          sub_29D4F562C(v26, type metadata accessor for SharedConceptCodedValue);
        }

        v30 = v92;
      }

      ++v30;
    }

    while (v30 != v29);
  }

  else
  {
    v87 = MEMORY[0x29EDCA190];
  }

  v62 = *v84;
  v100 = v28;
  v63 = *(v62 + 16);
  if (v63)
  {
    v66 = *(v14 + 16);
    v65 = v14 + 16;
    v64 = v66;
    v67 = v62 + ((*(v65 + 64) + 32) & ~*(v65 + 64));
    v68 = *(v65 + 56);
    v69 = (v65 - 8);
    do
    {
      v70 = v96;
      v64(v96, v67, v13);
      sub_29D5B3CEC();
      v71 = (*v69)(v70, v13);
      MEMORY[0x29ED5E5E0](v71);
      if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v90 = v65;
        sub_29D5B408C();
        v65 = v90;
      }

      sub_29D5B40AC();
      v67 += v68;
      --v63;
    }

    while (v63);
    v28 = v100;
  }

  v72 = v81;
  sub_29D5B0E1C();
  sub_29D48F51C(0, &qword_2A17A4478, 0x29EDBAA80);
  v74 = v82;
  v73 = v83;
  v75 = v80;
  (*(v82 + 16))(v80, v72, v83);
  v76 = v85;
  v77 = sub_29D4F52E0(v28, v87, v75);
  if (v76)
  {

    v78 = 0;
  }

  else
  {
    v78 = v77;
  }

  (*(v74 + 8))(v72, v73);
  return v78;
}

id sub_29D4F52E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x29EDCA608];
  sub_29D48F51C(0, &qword_2A17A41A8, 0x29EDBAC38);
  v4 = sub_29D5B401C();

  sub_29D48F51C(0, &qword_2A17A4480, 0x29EDBAA78);
  v5 = sub_29D5B401C();

  v6 = sub_29D5B0DEC();
  v15[0] = 0;
  v7 = [swift_getObjCClassFromMetadata() setWithMedicalCodings:v4 quantities:v5 date:v6 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_29D5B0E6C();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a3, v9);
  }

  else
  {
    v12 = v15[0];
    sub_29D5B0D2C();

    swift_willThrow();
    v13 = sub_29D5B0E6C();
    (*(*(v13 - 8) + 8))(a3, v13);
  }

  return v7;
}

uint64_t sub_29D4F54B0()
{
  v0 = sub_29D5B211C();
  MEMORY[0x2A1C7C4A8](v0, v1);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDC4170]);

  return sub_29D5B240C();
}

uint64_t sub_29D4F55C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4F562C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_29D4F568C(uint64_t a1)
{
  v91 = *v1;
  v92 = v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v82 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v81 = v5;
  v83 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F7688(0);
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v78 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F78B8(0);
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v84 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F794C(0);
  v88 = *(v12 - 8);
  v89 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v85 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F7D54(0, &qword_2A1A164F0, sub_29D4E43A4, MEMORY[0x29EDBA1D0]);
  v73 = v15;
  v72 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v71 = &v71 - v17;
  sub_29D4F7D54(0, qword_2A1A18848, type metadata accessor for UDCSnippetGeneratorData, MEMORY[0x29EDC9C68]);
  v20 = MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v76 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v90 = &v71 - v23;
  v75 = sub_29D5B13CC();
  v24 = *(v75 - 8);
  MEMORY[0x2A1C7C4A8](v75, v25);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29D5B13EC();
  v29 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v32 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  sub_29D4F7CA0(a1, v1 + OBJC_IVAR____TtC13HealthRecords25UserDomainConceptPipeline_context, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D5B143C();
  sub_29D4F7D54(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v33 = sub_29D5B104C();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  v77 = xmmword_29D5B62A0;
  *(v36 + 16) = xmmword_29D5B62A0;
  (*(v34 + 104))(v36 + v35, *MEMORY[0x29EDC3730], v33);
  (*(v24 + 104))(v27, *MEMORY[0x29EDC3898], v75);
  sub_29D5B13DC();
  (*(v29 + 32))(v92 + OBJC_IVAR____TtC13HealthRecords25UserDomainConceptPipeline_domain, v32, v28);
  v37 = v74;
  v38 = v90;
  sub_29D4F6344(v90);
  sub_29D5B1CBC();
  v39 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(v94, v95);
  v40 = sub_29D5B136C();
  v41 = [v40 profileIdentifier];

  sub_29D5B1C6C();
  v42 = v76;
  sub_29D48F668(v94);
  sub_29D4F7A08(v38, v42);
  v43 = type metadata accessor for UDCSnippetGeneratorData(0);
  if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
  {
    sub_29D4F7DB8(v42, qword_2A1A18848, type metadata accessor for UDCSnippetGeneratorData);
    v44 = 0;
  }

  else
  {
    v45 = v72;
    v46 = v71;
    v47 = v73;
    (*(v72 + 16))(v71, v42, v73);
    sub_29D4F7BA0(v42, type metadata accessor for UDCSnippetGeneratorData);
    v44 = sub_29D5B3CEC();
    (*(v45 + 8))(v46, v47);
  }

  sub_29D4F7D54(0, &qword_2A1A161E8, MEMORY[0x29EDC4098], MEMORY[0x29EDC9E90]);
  v48 = sub_29D5B1D6C();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v77;
  (*(v49 + 104))(v51 + v50, *MEMORY[0x29EDC4068], v48);
  v52 = sub_29D5B260C();

  v53 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(v94, v95);
  v54 = sub_29D5B136C();
  v55 = [v54 profileIdentifier];

  sub_29D5B1C3C();
  sub_29D48F668(v94);
  v56 = sub_29D5B363C();

  v93 = v52;
  v94[0] = v56;
  sub_29D4F7770(0);
  sub_29D4F77D8(0);
  v57 = MEMORY[0x29EDB8A00];
  sub_29D4F7870(&qword_2A1A16800, sub_29D4F7770, MEMORY[0x29EDB8A00]);
  sub_29D4F7870(&qword_2A1A166A0, sub_29D4F77D8, v57);
  v58 = v78;
  sub_29D5B3B6C();

  sub_29D4F7870(&qword_2A1A172E0, sub_29D4F7688, MEMORY[0x29EDB8870]);
  v59 = v80;
  v60 = v84;
  sub_29D5B3B3C();
  (*(v79 + 8))(v58, v59);
  v61 = v83;
  sub_29D4F7CA0(v37, v83, type metadata accessor for HealthRecordsGeneratorContext);
  v62 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v63 = (v81 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  sub_29D499F90(v61, v64 + v62);
  *(v64 + v63) = v91;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_29D4F7A9C;
  *(v65 + 24) = v64;
  sub_29D4A02FC(0, &qword_2A1A19818, MEMORY[0x29EDC3C90]);
  sub_29D4F7870(&qword_2A1A170E8, sub_29D4F78B8, MEMORY[0x29EDB88B8]);
  v66 = v85;
  v67 = v87;
  sub_29D5B3B2C();

  (*(v86 + 8))(v60, v67);
  sub_29D4F7870(&qword_2A1A171B8, sub_29D4F794C, MEMORY[0x29EDB88A0]);
  v68 = v89;
  v69 = sub_29D5B3B1C();

  sub_29D4F7BA0(v37, type metadata accessor for HealthRecordsGeneratorContext);
  (*(v88 + 8))(v66, v68);
  sub_29D4F7DB8(v90, qword_2A1A18848, type metadata accessor for UDCSnippetGeneratorData);
  result = v92;
  v92[2] = v69;
  return result;
}

uint64_t sub_29D4F6344@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D5B371C();
  v37[3] = *(v2 - 8);
  v37[4] = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v37[2] = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F7D54(0, &qword_2A1A17398, MEMORY[0x29EDC37D8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v39 = v37 - v7;
  v8 = sub_29D5B1AAC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B0EDC();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D5B143C();
  v19 = sub_29D5B10AC();

  if (v19)
  {
    v38 = a1;
    v20 = [v19 identifier];

    sub_29D5B0EBC();
    v21 = sub_29D5B0E8C();
    v23 = v22;
    (*(v14 + 8))(v17, v13);
    sub_29D5B140C();
    v40 = 0;
    v41 = 0xE000000000000000;
    MEMORY[0x29ED5E510](v21, v23);

    MEMORY[0x29ED5E510](58, 0xE100000000000000);
    (*(v9 + 104))(v12, *MEMORY[0x29EDC3F28], v8);
    sub_29D5B49DC();
    (*(v9 + 8))(v12, v8);
    sub_29D499EC0(v42, v42[3]);
    v24 = v39;
    sub_29D5B137C();

    v25 = sub_29D5B109C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      sub_29D4F7DB8(v39, &qword_2A1A17398, MEMORY[0x29EDC37D8]);
      v27 = v38;
    }

    else
    {
      v31 = v39;
      v32 = sub_29D5B108C();
      v34 = v33;
      (*(v26 + 8))(v31, v25);
      v27 = v38;
      if (v34 >> 60 != 15)
      {
        sub_29D5B0BDC();
        swift_allocObject();
        sub_29D5B0BCC();
        v36 = type metadata accessor for UDCSnippetGeneratorData(0);
        sub_29D4F7870(&qword_2A1A18888, type metadata accessor for UDCSnippetGeneratorData, &unk_29D5B96B8);
        sub_29D5B0BBC();
        sub_29D4A96BC(v32, v34);

        (*(*(v36 - 8) + 56))(v27, 0, 1, v36);
        return sub_29D48F668(v42);
      }
    }

    v35 = type metadata accessor for UDCSnippetGeneratorData(0);
    (*(*(v35 - 8) + 56))(v27, 1, 1, v35);
    return sub_29D48F668(v42);
  }

  v28 = type metadata accessor for UDCSnippetGeneratorData(0);
  v29 = *(*(v28 - 8) + 56);

  return v29(a1, 1, 1, v28);
}

uint64_t sub_29D4F6ACC(uint64_t a1)
{
  v2 = sub_29D5B377C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B371C();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  sub_29D48F564(a1, v30);
  v12 = sub_29D5B370C();
  v13 = sub_29D5B429C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v7;
    v15 = v14;
    v26 = swift_slowAlloc();
    v29 = v26;
    *v15 = 136446466;
    v28 = type metadata accessor for UserDomainConceptPipeline(0);
    sub_29D4F7D08(0, qword_2A1A18478, type metadata accessor for UserDomainConceptPipeline);
    v16 = sub_29D5B3E7C();
    v18 = sub_29D501890(v16, v17, &v29);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    sub_29D499EC0(v30, v30[3]);
    sub_29D5B376C();
    sub_29D4F7870(&qword_2A1A172E8, MEMORY[0x29EDB8858], MEMORY[0x29EDB8860]);
    v19 = sub_29D5B4C4C();
    v21 = v20;
    (*(v3 + 8))(v6, v2);
    sub_29D48F668(v30);
    v22 = sub_29D501890(v19, v21, &v29);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_29D48C000, v12, v13, "[%{public}s] receivedSubscription %{public}s", v15, 0x16u);
    v23 = v26;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v23, -1, -1);
    MEMORY[0x29ED5FB80](v15, -1, -1);

    return (*(v8 + 8))(v11, v27);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    return sub_29D48F668(v30);
  }
}

uint64_t sub_29D4F6E24(uint64_t a1)
{
  sub_29D4F7C00(0);
  v3 = v2;
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v5, v8);
  v11 = &v36 - v10;
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v36 - v13;
  v15 = sub_29D5B371C();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  sub_29D4F7CA0(a1, v14, sub_29D4F7C00);
  v20 = sub_29D5B370C();
  v21 = sub_29D5B425C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = v21;
    v23 = v22;
    v39 = swift_slowAlloc();
    v41 = v39;
    *v23 = 136446466;
    v40 = type metadata accessor for UserDomainConceptPipeline(0);
    sub_29D4F7D08(0, qword_2A1A18478, type metadata accessor for UserDomainConceptPipeline);
    v24 = sub_29D5B3E7C();
    v37 = v15;
    v26 = sub_29D501890(v24, v25, &v41);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    sub_29D4F7CA0(v14, v11, sub_29D4F7C00);
    v27 = *(v3 + 48);
    v28 = *&v11[v27];
    v29 = sub_29D5B368C();
    (*(*(v29 - 8) + 32))(v7, v11, v29);
    *&v7[v27] = v28;
    v30 = sub_29D5B3E7C();
    v32 = v31;
    sub_29D4F7BA0(v14, sub_29D4F7C00);
    v33 = sub_29D501890(v30, v32, &v41);

    *(v23 + 14) = v33;
    _os_log_impl(&dword_29D48C000, v20, v38, "[%{public}s] receiveOutput: %{public}s", v23, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v34, -1, -1);
    MEMORY[0x29ED5FB80](v23, -1, -1);

    return (*(v16 + 8))(v19, v37);
  }

  else
  {

    sub_29D4F7BA0(v14, sub_29D4F7C00);
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_29D4F71B8@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for HealthRecordsGeneratorContext(0);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B371C();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v17 = sub_29D5B370C();
  v18 = sub_29D5B426C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v39 = a1;
    v22 = v21;
    v41 = v21;
    v42 = a3;
    *v20 = 136446466;
    swift_getMetatypeMetadata();
    v23 = sub_29D5B3E7C();
    v25 = sub_29D501890(v23, v24, &v41);
    v38 = v12;
    v26 = a2;
    v27 = v25;

    *(v20 + 4) = v27;
    *(v20 + 12) = 2082;
    v42 = type metadata accessor for UDCSnippetGenerator(0);
    sub_29D4F7D08(0, qword_2A1A18B20, type metadata accessor for UDCSnippetGenerator);
    v28 = sub_29D5B3E7C();
    v30 = sub_29D501890(v28, v29, &v41);
    a2 = v26;

    *(v20 + 14) = v30;
    _os_log_impl(&dword_29D48C000, v17, v18, "[%{public}s]: Emitting %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v31 = v22;
    a1 = v39;
    MEMORY[0x29ED5FB80](v31, -1, -1);
    v32 = v20;
    a4 = v40;
    MEMORY[0x29ED5FB80](v32, -1, -1);

    (*(v13 + 8))(v16, v38);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  sub_29D4F7CA0(a2, v11, type metadata accessor for HealthRecordsGeneratorContext);
  v33 = type metadata accessor for UDCSnippetGenerator(0);
  swift_allocObject();
  v34 = a1;
  v35 = sub_29D5235A4(v11, a1);

  a4[3] = v33;
  result = sub_29D4F7870(qword_2A1A18C00, type metadata accessor for UDCSnippetGenerator, &unk_29D5B9664);
  a4[4] = result;
  *a4 = v35;
  return result;
}

uint64_t sub_29D4F74F0()
{

  v1 = OBJC_IVAR____TtC13HealthRecords25UserDomainConceptPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D4F7BA0(v0 + OBJC_IVAR____TtC13HealthRecords25UserDomainConceptPipeline_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserDomainConceptPipeline(uint64_t a1)
{
  result = qword_2A1A18548;
  if (!qword_2A1A18548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4F760C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords25UserDomainConceptPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D4F7688(uint64_t a1)
{
  if (!qword_2A1A172D8)
  {
    sub_29D4F7770(255);
    sub_29D4F77D8(255);
    v1 = MEMORY[0x29EDB8A00];
    sub_29D4F7870(&qword_2A1A16800, sub_29D4F7770, MEMORY[0x29EDB8A00]);
    sub_29D4F7870(&qword_2A1A166A0, sub_29D4F77D8, v1);
    v2 = sub_29D5B379C();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A172D8);
    }
  }
}

void sub_29D4F7770(uint64_t a1)
{
  if (!qword_2A1A167F8)
  {
    sub_29D5B368C();
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A167F8);
    }
  }
}

void sub_29D4F77D8(uint64_t a1)
{
  if (!qword_2A1A16698)
  {
    sub_29D4F7D54(255, &qword_2A1A19648, sub_29D4E43A4, MEMORY[0x29EDC9C68]);
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16698);
    }
  }
}

uint64_t sub_29D4F7870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D4F78B8(uint64_t a1)
{
  if (!qword_2A1A170E0)
  {
    sub_29D4F7688(255);
    sub_29D4F7870(&qword_2A1A172E0, sub_29D4F7688, MEMORY[0x29EDB8870]);
    v1 = sub_29D5B37EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A170E0);
    }
  }
}

void sub_29D4F794C(uint64_t a1)
{
  if (!qword_2A1A171B0)
  {
    sub_29D4F78B8(255);
    sub_29D4A02FC(255, &qword_2A1A19818, MEMORY[0x29EDC3C90]);
    sub_29D4F7870(&qword_2A1A170E8, sub_29D4F78B8, MEMORY[0x29EDB88B8]);
    v1 = sub_29D5B37CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A171B0);
    }
  }
}

uint64_t sub_29D4F7A08(uint64_t a1, uint64_t a2)
{
  sub_29D4F7D54(0, qword_2A1A18848, type metadata accessor for UDCSnippetGeneratorData, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4F7A9C@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4F71B8(a1, v2 + v6, v7, a2);
}

uint64_t sub_29D4F7B50(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_29D4F7C00(0);
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_29D4F7BA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D4F7C00(uint64_t a1)
{
  if (!qword_2A1A172F8)
  {
    sub_29D5B368C();
    sub_29D4F7D54(255, &qword_2A1A19648, sub_29D4E43A4, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A172F8);
    }
  }
}

uint64_t sub_29D4F7CA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4F7D08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D4F7D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D4F7DB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D4F7D54(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for LabsOnboardingAppPluginViewController(uint64_t a1)
{
  result = qword_2A17A4488;
  if (!qword_2A17A4488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D4F7EB4(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for LabsOnboardingAppPluginViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D4F7F2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabsOnboardingAppPluginViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D4F7F6C(char a1)
{
  v3 = sub_29D5B371C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NewRecordsFeedItemViewController(0);
  v13.receiver = v1;
  v13.super_class = v8;
  objc_msgSendSuper2(&v13, sel_viewDidAppear_, a1 & 1);
  sub_29D5B36CC();
  v9 = sub_29D5B370C();
  v10 = sub_29D5B429C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_29D48C000, v9, v10, "New Records tile did appear", v11, 2u);
    MEMORY[0x29ED5FB80](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  sub_29D5B1E5C();
  v12 = sub_29D5B1E4C();
  sub_29D5B1E2C();
}

void sub_29D4F80FC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_29D4F7F6C(a3);
}

uint64_t sub_29D4F8150@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = qword_2A17A4498;
  swift_beginAccess();
  sub_29D4B9790(v1 + v4, &v9, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218]);
  if (v10)
  {
    return sub_29D497868(&v9, a1);
  }

  sub_29D4B9414(&v9);
  v6 = sub_29D5B21EC();
  v7 = sub_29D5B21DC();
  v8 = MEMORY[0x29EDC4178];
  a1[3] = v6;
  a1[4] = v8;
  *a1 = v7;
  sub_29D48F564(a1, &v9);
  swift_beginAccess();
  sub_29D4B9800(&v9, v2 + v4);
  return swift_endAccess();
}

void sub_29D4F8238(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_29D5B200C();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4FA52C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for NewRecordsFeedItemData(0);
  v12 = *(v11 - 1);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4FA52C(0, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v19 = &v38 - v18;
  sub_29D4FA52C(0, &qword_2A17A44C0, type metadata accessor for NewRecordsFeedItemViewData);
  MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v23 = &v38 - v22;
  sub_29D4FA6EC(a1, v19, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  if ((*(v12 + 48))(v19, 1, v11) == 1)
  {
    v24 = type metadata accessor for NewRecordsFeedItemViewData(0);
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  }

  else
  {
    sub_29D4FA5DC(v19, v15);
    v25 = v11[6];
    v26 = &v15[v11[5]];
    v27 = *(v26 + 1);
    v39 = *v26;
    v29 = *&v15[v25];
    v28 = *&v15[v25 + 8];
    v30 = type metadata accessor for NewRecordsFeedItemViewData(0);
    v31 = *(v30 + 24);
    v32 = sub_29D5B0EDC();
    (*(*(v32 - 8) + 16))(&v23[v31], v15, v32);
    v33 = *&v15[v11[7]];

    sub_29D4FA758(v15, type metadata accessor for NewRecordsFeedItemData);
    *v23 = v39;
    *(v23 + 1) = v27;
    *(v23 + 2) = v29;
    *(v23 + 3) = v28;
    *&v23[*(v30 + 28)] = v33;
    (*(*(v30 - 8) + 56))(v23, 0, 1, v30);
  }

  sub_29D52C65C(v23);
  sub_29D4FA580(v23, &qword_2A17A44C0, type metadata accessor for NewRecordsFeedItemViewData);
  v34 = sub_29D5B0EFC();
  (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v40 + 8))(v6, v41);
  sub_29D4FA580(v10, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  v35 = sub_29D5B3E1C();

  v36 = v43;
  [v43 setTitle_];

  v37 = sub_29D5B22DC();
  [v37 addTarget:v36 action:sel_didTapAction forControlEvents:64];
}

uint64_t sub_29D4F8750(void *a1)
{
  sub_29D5B1E5C();
  v2 = a1;
  v3 = sub_29D5B1E4C();
  sub_29D5B1E2C();

  memset(v5, 0, sizeof(v5));
  sub_29D4F92A4(v5);

  return sub_29D4FA758(v5, sub_29D4A63E4);
}

uint64_t sub_29D4F87E4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NewRecordsFeedItemData(0);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4FA52C(0, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v28 - v10;
  sub_29D4FA52C(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v28 - v14;
  v16 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  sub_29D4FA6EC(v1 + v16, v11, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_29D4FA580(v11, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
    v17 = sub_29D5B0E6C();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  else
  {
    sub_29D4FA640(v11, v7, type metadata accessor for NewRecordsFeedItemData);
    sub_29D4FA580(v11, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
    sub_29D4FA6EC(&v7[*(v3 + 32)], v15, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    sub_29D4FA758(v7, type metadata accessor for NewRecordsFeedItemData);
    v18 = sub_29D5B0E6C();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v15, 1, v18) != 1)
    {
      sub_29D4B971C(0);
      v25 = *(v24 + 48);
      (*(v19 + 32))(a1, v15, v18);
      v26 = *MEMORY[0x29EDC2188];
      v27 = sub_29D5B2E8C();
      (*(*(v27 - 8) + 104))(a1 + v25, v26, v27);
      v20 = MEMORY[0x29EDC2190];
      goto LABEL_5;
    }
  }

  v20 = MEMORY[0x29EDC2198];
LABEL_5:
  v21 = *v20;
  v22 = sub_29D5B2E9C();
  return (*(*(v22 - 8) + 104))(a1, v21, v22);
}

void sub_29D4F8BD8()
{
  v1 = v0;
  v2 = sub_29D5B371C();
  v30 = *(v2 - 8);
  v31 = v2;
  v4 = MEMORY[0x2A1C7C4A8](v2, v3);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v28 - v7;
  v9 = sub_29D5B2C2C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x70);
  swift_beginAccess();
  sub_29D4B9790(v1 + v14, v32, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  v15 = v33;
  if (v33)
  {
    v16 = sub_29D499EC0(v32, v33);
    v17 = *(v15 - 8);
    MEMORY[0x2A1C7C4A8](v16, v16);
    v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    sub_29D5B315C();
    (*(v17 + 8))(v19, v15);
    if ((*(v10 + 88))(v13, v9) == *MEMORY[0x29EDC1D20])
    {
      sub_29D48F668(v32);
      sub_29D5B36DC();
      v20 = sub_29D5B370C();
      v21 = sub_29D5B429C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_29D48C000, v20, v21, "User dismissed NewRecords tile", v22, 2u);
        MEMORY[0x29ED5FB80](v22, -1, -1);
      }

      (*(v30 + 8))(v8, v31);
      v32[0] = v1;
      type metadata accessor for NewRecordsFeedItemViewController(0);
      sub_29D4FA6A8(&unk_2A17A44C8, &unk_29D5B86F8);
      sub_29D5B212C();
      sub_29D5B1E5C();
      v23 = sub_29D5B1E4C();
      sub_29D5B1E2C();
    }

    else
    {
      (*(v10 + 8))(v13, v9);
      sub_29D48F668(v32);
      v24 = v29;
      sub_29D5B36DC();
      v25 = sub_29D5B370C();
      v26 = sub_29D5B427C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_29D48C000, v25, v26, "didTapDismis invoked for tile without a dismiss button!", v27, 2u);
        MEMORY[0x29ED5FB80](v27, -1, -1);
      }

      (*(v30 + 8))(v24, v31);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D4F905C()
{
  v1 = sub_29D5B2C2C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x70);
  swift_beginAccess();
  result = sub_29D4B9790(v0 + v6, v16, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  v8 = v17;
  if (v17)
  {
    v9 = sub_29D499EC0(v16, v17);
    v10 = *(v8 - 8);
    MEMORY[0x2A1C7C4A8](v9, v9);
    v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v12);
    sub_29D5B315C();
    (*(v10 + 8))(v12, v8);
    v13 = (*(v2 + 88))(v5, v1);
    v14 = *MEMORY[0x29EDC1D20];
    if (v13 != *MEMORY[0x29EDC1D20])
    {
      (*(v2 + 8))(v5, v1);
    }

    sub_29D48F668(v16);
    return v13 == v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D4F92A4(uint64_t a1)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_29D5B371C();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewRecordsFeedItemData(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4FA52C(0, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v49 - v14;
  v16 = sub_29D5B0EDC();
  v50 = *(v16 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v16, v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v51 = &v49 - v22;
  v23 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60);
  swift_beginAccess();
  sub_29D4FA6EC(v2 + v23, v15, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  if ((*(v8 + 48))(v15, 1, v7))
  {
    sub_29D4FA580(v15, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
    sub_29D5B36DC();
    v24 = sub_29D5B370C();
    v25 = sub_29D5B427C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_29D48C000, v24, v25, "Error tapping on NewRecords feed item without an accountId", v26, 2u);
      MEMORY[0x29ED5FB80](v26, -1, -1);
    }

    return (*(v52 + 8))(v6, v53);
  }

  else
  {
    sub_29D4FA640(v15, v11, type metadata accessor for NewRecordsFeedItemData);
    sub_29D4FA580(v15, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
    v28 = v50;
    (*(v50 + 16))(v20, v11, v16);
    sub_29D4FA758(v11, type metadata accessor for NewRecordsFeedItemData);
    v29 = v51;
    (*(v28 + 32))(v51, v20, v16);
    sub_29D5B1CBC();
    v30 = sub_29D5B1C8C();
    v31 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x70);
    swift_beginAccess();
    result = sub_29D4B9790(v2 + v31, v54, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
    v32 = v55;
    if (v55)
    {
      v33 = v16;
      v34 = sub_29D499EC0(v54, v55);
      v35 = *(v32 - 8);
      MEMORY[0x2A1C7C4A8](v34, v34);
      v37 = &v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v35 + 16))(v37);
      v38 = sub_29D5B314C();
      (*(v35 + 8))(v37, v32);
      v39 = sub_29D5B1C9C();

      sub_29D48F668(v54);
      sub_29D4F8150(v54);
      sub_29D499EC0(v54, v55);
      v40 = sub_29D5B24EC();
      sub_29D48F668(v54);
      sub_29D4FA640(v49, v54, sub_29D4A63E4);
      v41 = v55;
      if (v55)
      {
        v42 = sub_29D499EC0(v54, v55);
        v43 = v33;
        v44 = v28;
        v45 = *(v41 - 8);
        MEMORY[0x2A1C7C4A8](v42, v42);
        v47 = &v49 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v45 + 16))(v47);
        v48 = sub_29D5B4C6C();
        (*(v45 + 8))(v47, v41);
        v28 = v44;
        v33 = v43;
        v29 = v51;
        sub_29D48F668(v54);
      }

      else
      {
        v48 = 0;
      }

      [v2 showViewController:v40 sender:{v48, v49}];

      swift_unknownObjectRelease();
      return (*(v28 + 8))(v29, v33);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

_BYTE *sub_29D4F9998(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29D5B3E5C();
    v6 = &a1[qword_2A17A4498];
    *v6 = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 4) = 0;
    v7 = qword_2A17ABEF8;
    v8 = *MEMORY[0x29EDC1E68];
    v9 = sub_29D5B2CAC();
    (*(*(v9 - 8) + 104))(&a1[v7], v8, v9);
    a1[qword_2A17ABF00] = 1;
    v10 = a4;
    v11 = sub_29D5B3E1C();
  }

  else
  {
    v12 = &a1[qword_2A17A4498];
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 4) = 0;
    v13 = qword_2A17ABEF8;
    v14 = *MEMORY[0x29EDC1E68];
    v15 = sub_29D5B2CAC();
    (*(*(v15 - 8) + 104))(&a1[v13], v14, v15);
    a1[qword_2A17ABF00] = 1;
    v16 = a4;
    v11 = 0;
  }

  v19.receiver = a1;
  v19.super_class = type metadata accessor for NewRecordsFeedItemViewController(0);
  v17 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, v11, a4);

  return v17;
}

_BYTE *sub_29D4F9B34(_BYTE *a1, uint64_t a2, void *a3)
{
  v5 = &a1[qword_2A17A4498];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = qword_2A17ABEF8;
  v7 = *MEMORY[0x29EDC1E68];
  v8 = sub_29D5B2CAC();
  (*(*(v8 - 8) + 104))(&a1[v6], v7, v8);
  a1[qword_2A17ABF00] = 1;
  v12.receiver = a1;
  v12.super_class = type metadata accessor for NewRecordsFeedItemViewController(0);
  v9 = a3;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, v9);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_29D4F9C28()
{
  sub_29D4B9414(v0 + qword_2A17A4498);
  v1 = qword_2A17ABEF8;
  v2 = sub_29D5B2CAC();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_29D4F9CA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewRecordsFeedItemViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D4F9CD8(uint64_t a1)
{
  sub_29D4B9414(a1 + qword_2A17A4498);
  v2 = qword_2A17ABEF8;
  v3 = sub_29D5B2CAC();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t type metadata accessor for NewRecordsFeedItemViewController(uint64_t a1)
{
  result = qword_2A17A44A0;
  if (!qword_2A17A44A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4F9DA0(uint64_t a1)
{
  result = sub_29D5B2CAC();
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

uint64_t sub_29D4F9E54@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_2A17ABEF8;
  v5 = sub_29D5B2CAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D4F9EF4@<X0>(char *a1@<X8>)
{
  v38 = a1;
  v2 = sub_29D5B371C();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NewRecordsFeedItemData(0);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4FA52C(0, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v34 - v11;
  v13 = sub_29D5B0EDC();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v34 - v20;
  v22 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  sub_29D4FA6EC(v1 + v22, v12, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  if ((*(v6 + 48))(v12, 1, v5))
  {
    v23 = v38;
    sub_29D4FA580(v12, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
    v24 = v35;
    sub_29D5B36BC();
    v25 = sub_29D5B370C();
    v26 = sub_29D5B427C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_29D48C000, v25, v26, "NewRecordsFeedItemViewController - Error accessing NewRecordsFeedItemData.accountId", v27, 2u);
      MEMORY[0x29ED5FB80](v27, -1, -1);
    }

    (*(v36 + 8))(v24, v37);
    v28 = v23;
    sub_29D5B0ECC();
  }

  else
  {
    v29 = v34;
    sub_29D4FA640(v12, v34, type metadata accessor for NewRecordsFeedItemData);
    sub_29D4FA580(v12, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
    (*(v14 + 16))(v18, v29, v13);
    sub_29D4FA758(v29, type metadata accessor for NewRecordsFeedItemData);
    v30 = *(v14 + 32);
    v30(v21, v18, v13);
    v28 = v38;
    v30(v38, v21, v13);
  }

  v31 = *MEMORY[0x29EDC41D0];
  v32 = sub_29D5B23CC();
  return (*(*(v32 - 8) + 104))(v28, v31, v32);
}

uint64_t sub_29D4FA380()
{
  v1 = *v0;
  v2 = *((*MEMORY[0x29EDCA1E8] & **v0) + 0x70);
  swift_beginAccess();
  result = sub_29D4B9790(v1 + v2, v11, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  v4 = v12;
  if (v12)
  {
    v5 = sub_29D499EC0(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x2A1C7C4A8](v5, v5);
    v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v8);
    v9 = sub_29D5B314C();
    (*(v6 + 8))(v8, v4);
    sub_29D48F668(v11);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D4FA52C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D4FA580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D4FA52C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D4FA5DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewRecordsFeedItemData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4FA640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4FA6A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NewRecordsFeedItemViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4FA6EC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D4FA52C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D4FA758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4FA7B8()
{
  v0 = sub_29D5B200C();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D3710(0);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B0EFC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_29D5B1FDC();
  v10 = sub_29D5B2A0C();
  v12 = v11;
  (*(v1 + 8))(v4, v0);
  result = sub_29D4A24B4(v8);
  qword_2A1A1A580 = v10;
  *algn_2A1A1A588 = v12;
  return result;
}

uint64_t sub_29D4FA964()
{
  v0 = sub_29D5B200C();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D3710(0);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B0EFC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_29D5B1FDC();
  v10 = sub_29D5B2A0C();
  v12 = v11;
  (*(v1 + 8))(v4, v0);
  result = sub_29D4A24B4(v8);
  qword_2A17ABF08 = v10;
  unk_2A17ABF10 = v12;
  return result;
}

uint64_t sub_29D4FAB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29D5B4C7C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29D4FABA8(uint64_t a1)
{
  v2 = sub_29D4FC544();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4FABE4(uint64_t a1)
{
  v2 = sub_29D4FC544();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4FAC20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4FC598(0, &qword_2A1A16248, MEMORY[0x29EDC9E80]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v15 - v9;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4FC544();
  sub_29D5B4DBC();
  if (v2)
  {
    return sub_29D48F668(a1);
  }

  v11 = sub_29D5B4B2C();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  result = sub_29D48F668(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_29D4FADAC(void *a1)
{
  sub_29D4FC598(0, &qword_2A1A16228, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v9 - v6;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4FC544();
  sub_29D5B4DCC();
  sub_29D5B4BCC();
  return (*(v4 + 8))(v7, v3);
}

void sub_29D4FAEF8()
{
  sub_29D5B324C();
  sub_29D5B323C();
  qword_2A1A19370 = v0;
}

uint64_t sub_29D4FAF2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___factory;
  swift_beginAccess();
  sub_29D4B9790(v1 + v4, &v9, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218]);
  if (v10)
  {
    return sub_29D497868(&v9, a1);
  }

  sub_29D4A0598(&v9, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218]);
  v6 = sub_29D5B21EC();
  v7 = sub_29D5B21DC();
  v8 = MEMORY[0x29EDC4178];
  a1[3] = v6;
  a1[4] = v8;
  *a1 = v7;
  sub_29D48F564(a1, &v9);
  swift_beginAccess();
  sub_29D4B9800(&v9, v2 + v4);
  return swift_endAccess();
}

id sub_29D4FB02C()
{
  v1 = OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___label);
  }

  else
  {
    v4 = v0;
    sub_29D5B2D5C();
    sub_29D48F51C(0, &unk_2A1A19440, 0x29EDC76B0);
    sub_29D5B458C();
    v5 = [objc_opt_self() linkColor];
    v6 = sub_29D5B461C();
    [v6 setLineBreakMode_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];

    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_29D4FB148()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for ClinicalSharingOnboardingTileViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  v3 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v2 setBackgroundColor_];

  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = sub_29D4FB02C();
  [v4 addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [result heightAnchor];

  v8 = [v7 constraintGreaterThanOrEqualToConstant_];
  [v8 setActive_];

  v9 = *&v0[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___label];
  v10 = [v0 view];
  if (qword_2A1A19360 != -1)
  {
    swift_once();
  }

  sub_29D5B451C();
  [v9 hk:v10 alignConstraintsWithView:? insets:?];

  return sub_29D4FB4BC();
}

void sub_29D4FB384(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v5 = sub_29D5B3E1C();
    [v2 setAccessibilityIdentifier_];

    v6 = sub_29D4FB02C();
    sub_29D4FC460();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_29D5B5E20;
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    *(v7 + 48) = 0x656C746954;
    *(v7 + 56) = 0xE500000000000000;
    v8 = sub_29D5B401C();

    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v6 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v9 = sub_29D4FB02C();
    [v9 setAccessibilityIdentifier_];
  }
}

uint64_t sub_29D4FB4BC()
{
  v1 = v0;
  v24[1] = swift_getObjectType();
  v2 = sub_29D5B371C();
  v24[2] = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v3);
  v4 = OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_context;
  swift_beginAccess();
  result = sub_29D4B9790(v0 + v4, &v25, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  v6 = v26;
  if (!v26)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = sub_29D499EC0(&v25, v26);
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v7, v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10);
  v11 = sub_29D5B317C();
  v13 = v12;
  (*(v8 + 8))(v10, v6);
  result = sub_29D48F668(&v25);
  if (v13 >> 60 == 15)
  {
    return result;
  }

  sub_29D5B0BDC();
  swift_allocObject();
  sub_29D5B0BCC();
  sub_29D4FC40C();
  sub_29D5B0BBC();

  v14 = sub_29D4FB02C();

  v15 = sub_29D5B3E1C();

  [v14 setText_];

  result = sub_29D4B9790(v1 + v4, &v25, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  if (!v26)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v16 = v26;
  v17 = sub_29D499EC0(&v25, v26);
  v18 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v17, v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20);
  v21 = sub_29D5B316C();
  v23 = v22;
  (*(v18 + 8))(v20, v16);
  sub_29D4FB384(v21, v23);
  sub_29D4A96BC(v11, v13);

  return sub_29D48F668(&v25);
}

void sub_29D4FB99C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_29D5B20DC();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 navigationController];
  if (!v8 || (v9 = v8, v10 = [v8 topViewController], v9, !v10) || (sub_29D4FAF2C(v14), sub_29D499EC0(v14, v15), v11 = sub_29D5B24FC(), v10, sub_29D48F668(v14), (v11 & 1) == 0))
  {
    sub_29D4FAF2C(v14);
    sub_29D499EC0(v14, v15);
    (*(v4 + 104))(v7, *MEMORY[0x29EDC4148], v3);
    v12 = sub_29D5B24DC();
    (*(v4 + 8))(v7, v3);
    sub_29D48F668(v14);
    [v2 showViewController:v12 sender:v2];
  }
}

id sub_29D4FBC04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_context];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = &v3[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_baseIdentifier];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___factory];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_profile;
  sub_29D5B1CBC();
  v11 = sub_29D5B1C8C();
  v12 = sub_29D5B1C5C();

  *&v4[v10] = v12;
  *&v4[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___label] = 0;
  if (a2)
  {
    v13 = sub_29D5B3E1C();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v4;
  v16.super_class = type metadata accessor for ClinicalSharingOnboardingTileViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

id sub_29D4FBD78(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_context];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = &v1[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_baseIdentifier];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___factory];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_profile;
  sub_29D5B1CBC();
  v8 = sub_29D5B1C8C();
  v9 = sub_29D5B1C5C();

  *&v2[v7] = v9;
  *&v2[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___label] = 0;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for ClinicalSharingOnboardingTileViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id sub_29D4FBE88(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClinicalSharingOnboardingTileViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D4FBF90@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_context;
  swift_beginAccess();
  return sub_29D4B9790(v1 + v3, a1, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
}

uint64_t sub_29D4FC000(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_context;
  swift_beginAccess();
  sub_29D4A92B4(a1, v1 + v3);
  swift_endAccess();
  sub_29D4FB4BC();
  return sub_29D4A0598(a1, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
}

uint64_t (*sub_29D4FC084(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D4FC0E8;
}

uint64_t sub_29D4FC0E8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29D4FB4BC();
  }

  return result;
}

void sub_29D4FC11C()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x29EDC42A0]) initWithContext:6 onboardingOptions:1 sourceIdentifier:0 profile:*(*v0 + OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_profile) existingAccount:0];
  [v2 setOnboardingDelegate_];
  [v1 presentViewController:v2 animated:1 completion:0];
}

uint64_t sub_29D4FC1C0()
{
  v1 = (*v0 + OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_29D4FC21C(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_29D4FC2E8(char a1)
{
  v3 = [*v1 view];
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      sub_29D48F51C(0, &unk_2A1A19430, 0x29EDC7A00);
      v5 = sub_29D5B45FC();
    }

    else
    {
      v5 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    }

    v6 = v5;
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_29D4FC3B8()
{
  result = qword_2A1A17498;
  if (!qword_2A1A17498)
  {
    type metadata accessor for ClinicalSharingOnboardingTileViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A17498);
  }

  return result;
}

unint64_t sub_29D4FC40C()
{
  result = qword_2A1A174A0;
  if (!qword_2A1A174A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A174A0);
  }

  return result;
}

void sub_29D4FC460()
{
  if (!qword_2A1A1A398)
  {
    v0 = sub_29D5B4C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1A398);
    }
  }
}

uint64_t sub_29D4FC4B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_29D4FC4F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D4FC544()
{
  result = qword_2A1A194B0;
  if (!qword_2A1A194B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A194B0);
  }

  return result;
}

void sub_29D4FC598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D4FC544();
    v7 = a3(a1, &type metadata for ClinicalSharingOnboardingTileViewController.ViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D4FC610()
{
  result = qword_2A17A4580;
  if (!qword_2A17A4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4580);
  }

  return result;
}

unint64_t sub_29D4FC668()
{
  result = qword_2A1A19498;
  if (!qword_2A1A19498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A19498);
  }

  return result;
}

unint64_t sub_29D4FC6C0()
{
  result = qword_2A1A194A0;
  if (!qword_2A1A194A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A194A0);
  }

  return result;
}

uint64_t static ConceptSharableModelVersioning.stringIdentifier(for:)(uint64_t a1, double a2)
{
  swift_getMetatypeMetadata();
  v2 = sub_29D5B3E7C();
  MEMORY[0x29ED5E510](v2);

  MEMORY[0x29ED5E510](3815994, 0xE300000000000000);

  sub_29D5B414C();
  return 0;
}

uint64_t static ConceptSharableModelVersioning.version(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getMetatypeMetadata();
  v12 = sub_29D5B3E7C();
  v13 = v5;
  MEMORY[0x29ED5E510](3815994, 0xE300000000000000);

  v6 = sub_29D5B3F9C();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v12 = a1;
  v13 = a2;
  sub_29D4B343C();
  v7 = sub_29D5B476C();

  if (v7[2] != 2)
  {

    return 0;
  }

  v8 = v7[6];
  v9 = v7[7];

  v12 = 0;
  v10 = sub_29D4FC938(v8, v9, &v12);

  if (v10)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

BOOL sub_29D4FC938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_29D5B493C();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_29D4FCA30@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_29D4FCAB0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29D4FEF8C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4FF400(0);
  v21[0] = v9;
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = ObjectType;
  v15 = MEMORY[0x29EDB8AD0];
  sub_29D4FF4C8(0, &qword_2A1A16598, MEMORY[0x29EDB8AD0]);
  sub_29D4FF040(&qword_2A1A165A0, &qword_2A1A16598, v15, sub_29D4FF4C8);
  v16 = v1;
  sub_29D5B3A9C();
  sub_29D4FF09C(&qword_2A1A16520, sub_29D4FEF8C, MEMORY[0x29EDB8AE8]);
  v17 = sub_29D5B3B1C();
  (*(v5 + 8))(v8, v4);
  v21[1] = v17;
  sub_29D4FF4C8(0, &qword_2A1A16728, MEMORY[0x29EDB89F8]);
  sub_29D4FF56C(0, &qword_2A1A16408, sub_29D4CF538, MEMORY[0x29EDC9A40]);
  sub_29D4FF5D0();
  sub_29D5B3B7C();

  sub_29D4FF09C(&qword_2A1A16F10, sub_29D4FF400, MEMORY[0x29EDB8908]);
  v18 = v21[0];
  v19 = sub_29D5B3B1C();
  (*(v10 + 8))(v13, v18);
  return v19;
}

uint64_t sub_29D4FCE00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  sub_29D4FF4C8(0, &qword_2A1A16598, MEMORY[0x29EDB8AD0]);
  swift_allocObject();
  v4 = a1;
  result = sub_29D5B3A6C();
  *a2 = result;
  return result;
}

void sub_29D4FCEA4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_29D4FF74C;
  *(v7 + 24) = v6;
  v9[4] = sub_29D4FEF84;
  v9[5] = v7;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1107296256;
  v9[2] = sub_29D4FD03C;
  v9[3] = &unk_2A2428D80;
  v8 = _Block_copy(v9);

  [a3 fetchAllAccountsWithCompletion_];
  _Block_release(v8);
}

void sub_29D4FCFB4(void *a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else
  {
    if (!a1)
    {
      a1 = MEMORY[0x29EDCA190];
    }

    a3(a1, 0);
  }
}

uint64_t sub_29D4FD03C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_29D48F51C(0, &qword_2A1A19640, 0x29EDC3E08);
    v4 = sub_29D5B402C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_29D4FD0E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  sub_29D4FF2F4(0, &qword_2A1A165A8, sub_29D4FF370, MEMORY[0x29EDB8AD0]);
  swift_allocObject();
  v4 = a1;
  result = sub_29D5B3A6C();
  *a2 = result;
  return result;
}

void sub_29D4FD198(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_29D4FF3F4;
  *(v7 + 24) = v6;
  v9[4] = sub_29D4FF3F8;
  v9[5] = v7;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1107296256;
  v9[2] = sub_29D4FD03C;
  v9[3] = &unk_2A2428F88;
  v8 = _Block_copy(v9);

  [a3 fetchAllAccountsWithCompletion_];
  _Block_release(v8);
}

void sub_29D4FD2A8(unint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  v3 = a3;
  if (a2)
  {
    v5 = a2;
    v3(a2, 1);
  }

  else if (a1)
  {
    v13 = MEMORY[0x29EDCA190];
    if (a1 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D5B485C())
    {
      v12 = v3;
      v8 = 0;
      v3 = &off_29F351000;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x29ED5EF30](v8, a1);
        }

        else
        {
          if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v9 = *(a1 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ([v9 isSharingToProvider])
        {
          sub_29D5B498C();
          sub_29D5B49BC();
          sub_29D5B49CC();
          sub_29D5B499C();
        }

        else
        {
        }

        ++v8;
        if (v11 == i)
        {
          v12(v13, 0);
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v3(MEMORY[0x29EDCA190], 0);
LABEL_24:
  }

  else
  {
    a3(MEMORY[0x29EDCA190], 0);
  }
}

uint64_t sub_29D4FD49C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29D4FEF8C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = ObjectType;
  v10 = MEMORY[0x29EDB8AD0];
  sub_29D4FF4C8(0, &qword_2A1A16598, MEMORY[0x29EDB8AD0]);
  sub_29D4FF040(&qword_2A1A165A0, &qword_2A1A16598, v10, sub_29D4FF4C8);
  v11 = v1;
  sub_29D5B3A9C();
  sub_29D4FF09C(&qword_2A1A16520, sub_29D4FEF8C, MEMORY[0x29EDB8AE8]);
  v12 = sub_29D5B3B1C();
  (*(v5 + 8))(v8, v4);
  return v12;
}

uint64_t sub_29D4FD660@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  sub_29D4FF56C(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v35 - v5;
  v7 = sub_29D5B359C();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v44 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF538(0);
  v42 = *(v11 - 8);
  v43 = v11;
  v13 = MEMORY[0x2A1C7C4A8](v11, v12);
  v41 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x2A1C7C4A8](v13, v15);
  v46 = &v35 - v17;
  v18 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_19;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19)
  {
    do
    {
      v20 = 0;
      v21 = v18 & 0xC000000000000001;
      v45 = v18 & 0xFFFFFFFFFFFFFF8;
      v22 = (v8 + 48);
      v38 = (v8 + 32);
      v23 = MEMORY[0x29EDCA190];
      v39 = v18 & 0xC000000000000001;
      v40 = v19;
      v37 = v18;
      while (1)
      {
        if (v21)
        {
          v24 = MEMORY[0x29ED5EF30](v20, v18);
        }

        else
        {
          if (v20 >= *(v45 + 16))
          {
            goto LABEL_18;
          }

          v24 = *(v18 + 8 * v20 + 32);
        }

        v8 = v24;
        v25 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        sub_29D5B438C();
        if ((*v22)(v6, 1, v7) == 1)
        {

          result = sub_29D4FF644(v6);
        }

        else
        {
          v26 = *v38;
          v27 = v44;
          (*v38)(v44);
          v28 = *(v43 + 48);
          v29 = v7;
          v30 = v41;
          *v41 = v8;
          v31 = v27;
          v32 = v29;
          (v26)(v30 + v28, v31);
          sub_29D4FF6D0(v30, v46);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_29D515584(0, v23[2] + 1, 1, v23);
          }

          v34 = v23[2];
          v33 = v23[3];
          v8 = (v34 + 1);
          v7 = v32;
          if (v34 >= v33 >> 1)
          {
            v23 = sub_29D515584((v33 > 1), v34 + 1, 1, v23);
          }

          v18 = v37;
          v23[2] = v8;
          result = sub_29D4FF6D0(v46, v23 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v34);
          v21 = v39;
          v19 = v40;
        }

        ++v20;
        if (v25 == v19)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      result = sub_29D5B485C();
      v19 = result;
    }

    while (result);
  }

  v23 = MEMORY[0x29EDCA190];
LABEL_21:
  *v36 = v23;
  return result;
}

uint64_t sub_29D4FDA2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_29D4FF4C8(0, &qword_2A1A16598, MEMORY[0x29EDB8AD0]);
  swift_allocObject();
  v7 = a1;
  result = sub_29D5B3A6C();
  *a3 = result;
  return result;
}

void sub_29D4FDAD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = sub_29D4FF74C;
  v9[3] = v8;
  v9[4] = a4;
  v11[4] = sub_29D4FF0EC;
  v11[5] = v9;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1107296256;
  v11[2] = sub_29D4FD03C;
  v11[3] = &unk_2A2428E48;
  v10 = _Block_copy(v11);

  [a3 fetchAllAccountsWithCompletion_];
  _Block_release(v10);
}

void sub_29D4FDBF4(uint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else if (a1)
  {
    sub_29D5B255C();
    swift_allocObject();

    sub_29D5B254C();
    v6 = sub_29D5B253C();

    a3(v6, 0);
  }

  else
  {
    a3(MEMORY[0x29EDCA190], 0);
  }
}

uint64_t sub_29D4FDCFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  v4 = MEMORY[0x29EDB8AD0];
  sub_29D4FF27C(0, &qword_2A1A16568, MEMORY[0x29EDB8AD0]);
  swift_allocObject();
  v5 = a1;
  sub_29D5B3A6C();
  sub_29D4FF040(&qword_2A1A16570, &qword_2A1A16568, v4, sub_29D4FF27C);
  v6 = sub_29D5B3B1C();

  *a2 = v6;
  return result;
}

uint64_t sub_29D4FDE10(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29D4FF56C(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_29D5B410C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = sub_29D4FF174;
  v12[6] = v10;

  v13 = a3;
  sub_29D57657C(0, 0, v9, &unk_29D5B8B20, v12);
}

uint64_t sub_29D4FDF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x2A1C73D48](sub_29D4FDFA8, 0, 0);
}

uint64_t sub_29D4FDFA8()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_29D4FE0D4;
  v2 = swift_continuation_init();
  sub_29D4FF27C(0, &qword_2A1A16390, MEMORY[0x29EDCA3C8]);
  v0[17] = v3;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D4FE230;
  v0[13] = &unk_2A2428EE8;
  v0[14] = v2;
  [v1 shouldShowHealthRecordsSectionWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D4FE0D4()
{

  return MEMORY[0x2A1C73D48](sub_29D4FE1B4, 0, 0);
}

uint64_t sub_29D4FE1B4()
{
  if (*(v0 + 169))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  (*(v0 + 152))(v1 | *(v0 + 168));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29D4FE230(uint64_t a1, char a2, char a3)
{
  v5 = *(*(*sub_29D499EC0((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v5 = a2;
  v5[1] = a3;

  return MEMORY[0x2A1C73CD0]();
}

uint64_t sub_29D4FE294(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = swift_getObjectType();
  v3 = sub_29D5B371C();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D4FE378, 0, 0);
}

uint64_t sub_29D4FE378()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29D4FE4B8;
  v2 = swift_continuation_init();
  sub_29D4FF2F4(0, qword_2A17A4588, type metadata accessor for HKFailableBooleanResult, MEMORY[0x29EDCA3C8]);
  v0[17] = v3;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D4FEDC4;
  v0[13] = &unk_2A2428CE0;
  v0[14] = v2;
  [v1 deviceConfigurationSupportsHealthRecords_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D4FE4B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_29D4FE820;
  }

  else
  {
    v2 = sub_29D4FE5C8;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D4FE5C8(uint64_t a1)
{
  v23 = v1;
  v2 = v1[18];
  if (!v2)
  {
    sub_29D5B36CC();
    v3 = sub_29D5B370C();
    v4 = sub_29D5B428C();
    v16 = os_log_type_enabled(v3, v4);
    v6 = v1[26];
    v7 = v1[22];
    v8 = v1[23];
    if (v16)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      v17 = sub_29D5B4DFC();
      v19 = sub_29D501890(v17, v18, &v22);

      *(v9 + 4) = v19;
      v14 = "%s got an error response from deviceConfigurationSupportsHealthRecords(), which should have thrown";
      goto LABEL_9;
    }

LABEL_10:

    (*(v8 + 8))(v6, v7);
    goto LABEL_11;
  }

  if (v2 == 1)
  {
    v15 = 1;
    goto LABEL_12;
  }

  if (v2 != 2)
  {
    sub_29D5B36CC();
    v3 = sub_29D5B370C();
    v4 = sub_29D5B427C();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v1[25];
    v7 = v1[22];
    v8 = v1[23];
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      v11 = sub_29D5B4DFC();
      v13 = sub_29D501890(v11, v12, &v22);

      *(v9 + 4) = v13;
      v14 = "%s got unknown response from deviceConfigurationSupportsHealthRecords()";
LABEL_9:
      _os_log_impl(&dword_29D48C000, v3, v4, v14, v9, 0xCu);
      sub_29D48F668(v10);
      MEMORY[0x29ED5FB80](v10, -1, -1);
      MEMORY[0x29ED5FB80](v9, -1, -1);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_11:
  v15 = 0;
LABEL_12:

  v20 = v1[1];

  return v20(v15);
}

uint64_t sub_29D4FE820()
{
  v28 = v0;
  v1 = *(v0 + 216);
  swift_willThrow();
  sub_29D5B36CC();
  v2 = v1;
  v3 = sub_29D5B370C();
  v4 = sub_29D5B427C();

  if (!os_log_type_enabled(v3, v4))
  {
    v21 = *(v0 + 184);
    v20 = *(v0 + 192);
    v22 = *(v0 + 176);

    (*(v21 + 8))(v20, v22);
    v15 = *(v0 + 152);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_10;
  }

  v5 = *(v0 + 216);
  v6 = *(v0 + 184);
  v25 = *(v0 + 176);
  v26 = *(v0 + 192);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v27 = v9;
  *v7 = 136315394;
  v10 = sub_29D5B4DFC();
  v12 = sub_29D501890(v10, v11, &v27);

  *(v7 + 4) = v12;
  *(v7 + 12) = 2112;
  v13 = v5;
  v14 = _swift_stdlib_bridgeErrorToNSError();
  *(v7 + 14) = v14;
  *v8 = v14;
  _os_log_impl(&dword_29D48C000, v3, v4, "%s failed calling into deviceConfigurationSupportsHealthRecords(): %@", v7, 0x16u);
  sub_29D4FEE8C(v8);
  MEMORY[0x29ED5FB80](v8, -1, -1);
  sub_29D48F668(v9);
  MEMORY[0x29ED5FB80](v9, -1, -1);
  MEMORY[0x29ED5FB80](v7, -1, -1);

  (*(v6 + 8))(v26, v25);
  v15 = *(v0 + 152);
  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_3:
  v16 = objc_opt_self();
  v17 = v15;
  if ([v16 isAppleInternalInstall])
  {
    *(v0 + 224) = objc_opt_self();
    *(v0 + 232) = sub_29D5B3E1C();
    *(v0 + 240) = sub_29D5B3E1C();
    *(v0 + 248) = sub_29D5B0D1C();
    *(v0 + 256) = sub_29D5B40EC();
    *(v0 + 264) = sub_29D5B40DC();
    v19 = sub_29D5B40CC();

    return MEMORY[0x2A1C73D48](sub_29D4FEB74, v19, v18);
  }

LABEL_10:

  v23 = *(v0 + 8);

  return v23(0);
}

uint64_t sub_29D4FEB74()
{
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];

  v0[34] = [v4 basicAlertControllerWithTitle:v3 message:v1 internalError:v2];

  return MEMORY[0x2A1C73D48](sub_29D4FEC20, 0, 0);
}

uint64_t sub_29D4FEC20()
{
  *(v0 + 280) = sub_29D5B40DC();
  v2 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D4FECAC, v2, v1);
}

uint64_t sub_29D4FECAC()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 152);

  [v2 presentViewController:v1 animated:1 completion:0];

  return MEMORY[0x2A1C73D48](sub_29D4FED34, 0, 0);
}

uint64_t sub_29D4FED34()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_29D4FEDC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_29D499EC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29D4B3AF4();
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x2A1C73CE0](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x2A1C73CD8](v5);
  }
}

uint64_t sub_29D4FEE8C(uint64_t a1)
{
  sub_29D4FEF1C(0, &qword_2A1A16270, &qword_2A1A16278, 0x29EDC9738, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D4FEF1C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D48F51C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D4FEF8C(uint64_t a1)
{
  if (!qword_2A1A16518)
  {
    v1 = MEMORY[0x29EDB8AD0];
    sub_29D4FF4C8(255, &qword_2A1A16598, MEMORY[0x29EDB8AD0]);
    sub_29D4FF040(&qword_2A1A165A0, &qword_2A1A16598, v1, sub_29D4FF4C8);
    v2 = sub_29D5B3AAC();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A16518);
    }
  }
}

uint64_t sub_29D4FF040(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    a4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4FF09C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D4FF0F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D4FF118()
{
  if (!qword_2A1A16398)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A16398);
    }
  }
}

uint64_t sub_29D4FF174(int a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  v5 = BYTE2(a1) & 1;
  return v2(&v4);
}

uint64_t sub_29D4FF1B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D4E7B8C;

  return sub_29D4FDF84(a1, v4, v5, v6, v7, v8);
}

void sub_29D4FF27C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_29D4FF118();
    v7 = a3(a1, v6, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D4FF2F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D4B3AF4();
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D4FF370(uint64_t a1)
{
  if (!qword_2A1A16410)
  {
    sub_29D4FEF1C(255, &qword_2A1A16420, &qword_2A1A19640, 0x29EDC3E08, MEMORY[0x29EDC9A40]);
    v1 = sub_29D5B472C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16410);
    }
  }
}

void sub_29D4FF400(uint64_t a1)
{
  if (!qword_2A1A16F08)
  {
    sub_29D4FF4C8(255, &qword_2A1A16728, MEMORY[0x29EDB89F8]);
    sub_29D4FF56C(255, &qword_2A1A16408, sub_29D4CF538, MEMORY[0x29EDC9A40]);
    sub_29D4FF5D0();
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16F08);
    }
  }
}

void sub_29D4FF4C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_29D4FEF1C(255, &qword_2A1A16420, &qword_2A1A19640, 0x29EDC3E08, MEMORY[0x29EDC9A40]);
    v7 = v6;
    v8 = sub_29D4B3AF4();
    v9 = a3(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D4FF56C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D4FF5D0()
{
  result = qword_2A1A16730;
  if (!qword_2A1A16730)
  {
    sub_29D4FF4C8(255, &qword_2A1A16728, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16730);
  }

  return result;
}

uint64_t sub_29D4FF644(uint64_t a1)
{
  sub_29D4FF56C(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D4FF6D0(uint64_t a1, uint64_t a2)
{
  sub_29D4CF538(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BaseFeedItemViewController.feedItemData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  v4 = sub_29D5B472C();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t BaseFeedItemViewController.feedItemData.setter(uint64_t a1)
{
  sub_29D502000(a1);
  v2 = sub_29D5B472C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*BaseFeedItemViewController.feedItemData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = MEMORY[0x29EDCA1E8];
  v7 = *MEMORY[0x29EDCA1E8];
  v8 = sub_29D5B472C();
  v5[4] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v5[5] = v9;
  v11 = *(v9 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
    v7 = *v6;
  }

  else
  {
    v5[6] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v5[7] = v12;
  v13 = *((v7 & *v1) + 0x60);
  swift_beginAccess();
  v14 = *(v10 + 16);
  v5[8] = v14;
  v5[9] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v12, &v1[v13], v8);
  return sub_29D4FFA50;
}

void sub_29D4FFA50(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_29D502000(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_29D502000(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t BaseFeedItemViewController.decoder.getter()
{
  v1 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x68);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v3 = v0;
    sub_29D5B0BDC();
    swift_allocObject();
    v2 = sub_29D5B0BCC();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t BaseFeedItemViewController.context.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  return sub_29D4A9434(v1 + v3, a1);
}

uint64_t BaseFeedItemViewController.context.setter(uint64_t a1)
{
  sub_29D500D10();
  v3 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  sub_29D4A92B4(a1, v1 + v3);
  swift_endAccess();
  sub_29D500F18();
  return sub_29D4A93AC(a1);
}

void (*BaseFeedItemViewController.context.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  sub_29D4A9434(v1 + v5, v4);
  return sub_29D4FFD78;
}

void sub_29D4FFD78(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_29D4A9434(*a1, v2 + 40);
    BaseFeedItemViewController.context.setter(v2 + 40);
    sub_29D4A93AC(v2);
  }

  else
  {
    BaseFeedItemViewController.context.setter(*a1);
  }

  free(v2);
}

uint64_t BaseFeedItemViewController.reloadData()()
{
  v1 = *v0;
  v2 = *MEMORY[0x29EDCA1E8];
  v24[4] = *MEMORY[0x29EDCA1E8] & v1;
  v3 = sub_29D5B371C();
  v24[1] = *(v3 - 8);
  v24[2] = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v24[3] = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *((v2 & v1) + 0x50);
  v7 = sub_29D5B472C();
  v25 = *(v7 - 8);
  v26 = v7;
  v9 = MEMORY[0x2A1C7C4A8](v7, v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = v24 - v13;
  result = BaseFeedItemViewController.context.getter(v27);
  v16 = v28;
  if (v28)
  {
    v17 = sub_29D499EC0(v27, v28);
    v18 = *(v16 - 8);
    MEMORY[0x2A1C7C4A8](v17, v17);
    v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v20);
    v21 = sub_29D5B317C();
    v23 = v22;
    (*(v18 + 8))(v20, v16);
    sub_29D48F668(v27);
    if (v23 >> 60 == 15)
    {
      (*(*(v6 - 8) + 56))(v11, 1, 1, v6);
      sub_29D502000(v11);
      return (*(v25 + 8))(v11, v26);
    }

    else
    {
      BaseFeedItemViewController.decoder.getter();
      sub_29D5B0BBC();

      (*(*(v6 - 8) + 56))(v14, 0, 1, v6);
      sub_29D502000(v14);
      (*(v25 + 8))(v14, v26);
      return sub_29D4A96BC(v21, v23);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BaseFeedItemViewController.deselectionBehavior(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC22C8];
  v3 = sub_29D5B2F7C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t BaseFeedItemViewController.didTapTile(sender:)()
{
  v1 = *MEMORY[0x29EDCA1E8] & *v0;
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36DC();
  v7 = v0;
  v8 = sub_29D5B370C();
  v9 = sub_29D5B426C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    ObjectType = swift_getObjectType();
    type metadata accessor for BaseFeedItemViewController(255, *(v1 + 80), *(v1 + 88), v12);
    swift_getMetatypeMetadata();
    v13 = sub_29D5B3E7C();
    v15 = sub_29D501890(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_29D48C000, v8, v9, "didTapTile: %{public}s", v10, 0xCu);
    sub_29D48F668(v11);
    MEMORY[0x29ED5FB80](v11, -1, -1);
    MEMORY[0x29ED5FB80](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_29D500654()
{
  v1 = *MEMORY[0x29EDCA1E8] & *v0;
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 200))(v5);
  sub_29D5B36DC();
  v8 = v0;
  v9 = sub_29D5B370C();
  v10 = sub_29D5B426C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    ObjectType = swift_getObjectType();
    type metadata accessor for BaseFeedItemViewController(255, *(v1 + 80), *(v1 + 88), v13);
    swift_getMetatypeMetadata();
    v14 = sub_29D5B3E7C();
    v16 = sub_29D501890(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_29D48C000, v9, v10, "dataDidUpdate: %{public}s", v11, 0xCu);
    sub_29D48F668(v12);
    MEMORY[0x29ED5FB80](v12, -1, -1);
    MEMORY[0x29ED5FB80](v11, -1, -1);
  }

  return (*(v3 + 8))(v7, v2);
}

Swift::Void __swiftcall BaseFeedItemViewController.viewDidLoad()()
{
  v1 = *v0;
  v2 = MEMORY[0x29EDCA1E8];
  v3 = *MEMORY[0x29EDCA1E8];
  v4 = sub_29D5B371C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BaseFeedItemViewController(0, *((v3 & v1) + 0x50), *((v3 & v1) + 0x58), v9);
  v22.receiver = v0;
  v22.super_class = v10;
  v11 = objc_msgSendSuper2(&v22, sel_viewDidLoad);
  (*((*v2 & *v0) + 0xC8))(v11);
  sub_29D5B36DC();
  v12 = v0;
  v13 = sub_29D5B370C();
  v14 = sub_29D5B426C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136446210;
    ObjectType = swift_getObjectType();
    swift_getMetatypeMetadata();
    v17 = sub_29D5B3E7C();
    v19 = sub_29D501890(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_29D48C000, v13, v14, "viewDidLoad: %{public}s", v15, 0xCu);
    sub_29D48F668(v16);
    MEMORY[0x29ED5FB80](v16, -1, -1);
    MEMORY[0x29ED5FB80](v15, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
}

void sub_29D500ABC(void *a1)
{
  v1 = a1;
  BaseFeedItemViewController.viewDidLoad()();
}

Swift::Void __swiftcall BaseFeedItemViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x29EDCA1E8];
  v5 = sub_29D5B371C();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = type metadata accessor for BaseFeedItemViewController(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v10);
  v19.receiver = v1;
  v19.super_class = v11;
  objc_msgSendSuper2(&v19, sel_viewDidAppear_, a1);
  BaseFeedItemViewController.context.getter(v17);
  v12 = v18;
  sub_29D4A93AC(v17);
  if (!v12)
  {
    sub_29D5B36DC();
    v13 = sub_29D5B370C();
    v14 = sub_29D5B427C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_29D48C000, v13, v14, "FeedItemViewControllerContext should be set before the tile appears", v15, 2u);
      MEMORY[0x29ED5FB80](v15, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }
}

void sub_29D500CBC(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  BaseFeedItemViewController.viewDidAppear(_:)(a3);
}

uint64_t sub_29D500D10()
{
  v1 = *MEMORY[0x29EDCA1E8] & *v0;
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36DC();
  v7 = v0;
  v8 = sub_29D5B370C();
  v9 = sub_29D5B426C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    ObjectType = swift_getObjectType();
    type metadata accessor for BaseFeedItemViewController(255, *(v1 + 80), *(v1 + 88), v12);
    swift_getMetatypeMetadata();
    v13 = sub_29D5B3E7C();
    v15 = sub_29D501890(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_29D48C000, v8, v9, "contextWillUpdate: %{public}s", v10, 0xCu);
    sub_29D48F668(v11);
    MEMORY[0x29ED5FB80](v11, -1, -1);
    MEMORY[0x29ED5FB80](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_29D500F18()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x29EDCA1E8];
  v4 = *MEMORY[0x29EDCA1E8] & *v0;
  v5 = sub_29D5B371C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v29 - v12;
  v14 = *((v3 & v2) + 0x70);
  swift_beginAccess();
  sub_29D4A9434(v1 + v14, v30);
  v15 = v30[3];
  sub_29D4A93AC(v30);
  if (!v15)
  {
    sub_29D5B36DC();
    v16 = sub_29D5B370C();
    v17 = sub_29D5B427C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_29D48C000, v16, v17, "FeedItemViewControllerContext should never be null", v18, 2u);
      MEMORY[0x29ED5FB80](v18, -1, -1);
    }

    (*(v6 + 8))(v13, v5);
  }

  BaseFeedItemViewController.reloadData()();
  sub_29D5B36DC();
  v19 = v1;
  v20 = sub_29D5B370C();
  v21 = sub_29D5B426C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30[0] = v23;
    *v22 = 136446210;
    v29[1] = swift_getObjectType();
    type metadata accessor for BaseFeedItemViewController(255, *(v4 + 80), *(v4 + 88), v24);
    swift_getMetatypeMetadata();
    v25 = sub_29D5B3E7C();
    v27 = sub_29D501890(v25, v26, v30);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_29D48C000, v20, v21, "contextDidUpdate: %{public}s", v22, 0xCu);
    sub_29D48F668(v23);
    MEMORY[0x29ED5FB80](v23, -1, -1);
    MEMORY[0x29ED5FB80](v22, -1, -1);
  }

  return (*(v6 + 8))(v10, v5);
}

id BaseFeedItemViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_29D5B3E1C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id BaseFeedItemViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = MEMORY[0x29EDCA1E8];
  v7 = (*MEMORY[0x29EDCA1E8] & *v3);
  v8 = v7[10];
  (*(*(v8 - 8) + 56))(&v3[v7[12]], 1, 1, v8);
  *&v3[*((*v6 & *v3) + 0x68)] = 0;
  v10 = &v3[*((*v6 & *v3) + 0x70)];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  if (a2)
  {
    v11 = sub_29D5B3E1C();
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for BaseFeedItemViewController(0, v8, v7[11], v9);
  v15.receiver = v3;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v11, a3);

  return v13;
}

id sub_29D501424(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return BaseFeedItemViewController.init(nibName:bundle:)(v5, v7, a4);
}

id BaseFeedItemViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BaseFeedItemViewController.init(coder:)(void *a1)
{
  v3 = MEMORY[0x29EDCA1E8];
  v4 = *v1;
  v5 = *MEMORY[0x29EDCA1E8];
  v6 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x50);
  (*(*(v6 - 8) + 56))(&v1[*((*MEMORY[0x29EDCA1E8] & *v1) + 0x60)], 1, 1, v6);
  *&v1[*((*v3 & *v1) + 0x68)] = 0;
  v7 = &v1[*((*v3 & *v1) + 0x70)];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v9 = type metadata accessor for BaseFeedItemViewController(0, v6, *((v5 & v4) + 0x58), v8);
  v12.receiver = v1;
  v12.super_class = v9;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id BaseFeedItemViewController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for BaseFeedItemViewController(0, *((*MEMORY[0x29EDCA1E8] & *v4) + 0x50), *((*MEMORY[0x29EDCA1E8] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_29D5016A8(char *a1)
{
  v2 = MEMORY[0x29EDCA1E8];
  v3 = *((*MEMORY[0x29EDCA1E8] & *a1) + 0x60);
  v4 = sub_29D5B472C();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  v5 = &a1[*((*v2 & *a1) + 0x70)];

  return sub_29D4A93AC(v5);
}

uint64_t (*sub_29D50179C(uint64_t **a1))()
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
  v2[4] = BaseFeedItemViewController.context.modify(v2);
  return sub_29D50180C;
}

void sub_29D50180C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_29D501890(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29D50195C(v11, 0, 0, 1, a1, a2);
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
    sub_29D4A7420(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29D48F668(v11);
  return v7;
}

unint64_t sub_29D50195C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29D501A68(a5, a6);
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
    result = sub_29D5B497C();
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

void *sub_29D501A68(uint64_t a1, unint64_t a2)
{
  v3 = sub_29D501AB4(a1, a2);
  sub_29D501BE4(&unk_2A24276F8);
  return v3;
}

void *sub_29D501AB4(uint64_t a1, unint64_t a2)
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

  v6 = sub_29D515C58(v5, 0);
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

  result = sub_29D5B497C();
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
        v10 = sub_29D5B3F4C();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29D515C58(v10, 0);
        result = sub_29D5B492C();
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

uint64_t sub_29D501BE4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_29D501CD0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_29D501CD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D502718(0, &qword_2A1A161C8, MEMORY[0x29EDCA018], MEMORY[0x29EDC9E90]);
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

uint64_t sub_29D501DF4(const char *a1, ...)
{
  v3 = *MEMORY[0x29EDCA1E8] & *v1;
  v4 = sub_29D5B371C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36DC();
  v9 = v1;
  v10 = sub_29D5B370C();
  v11 = sub_29D5B426C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446210;
    ObjectType = swift_getObjectType();
    type metadata accessor for BaseFeedItemViewController(255, *(v3 + 80), *(v3 + 88), v15);
    swift_getMetatypeMetadata();
    v16 = sub_29D5B3E7C();
    v18 = sub_29D501890(v16, v17, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_29D48C000, v10, v11, v21, v13, 0xCu);
    sub_29D48F668(v14);
    MEMORY[0x29ED5FB80](v14, -1, -1);
    MEMORY[0x29ED5FB80](v13, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_29D502000(uint64_t a1)
{
  v3 = MEMORY[0x29EDCA1E8];
  sub_29D501DF4("dataWillUpdate: %{public}s");
  v4 = *((*v3 & *v1) + 0x60);
  swift_beginAccess();
  v5 = sub_29D5B472C();
  (*(*(v5 - 8) + 24))(&v1[v4], a1, v5);
  swift_endAccess();
  return sub_29D500654();
}

uint64_t _s13HealthRecords26BaseFeedItemViewControllerC13didSelectCell_2inySo6UIViewC_So0lG0CtF_0(void *a1)
{
  v2 = v1;
  v4 = *MEMORY[0x29EDCA1E8] & *v1;
  v5 = *(v4 + 0x50);
  v6 = sub_29D5B472C();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = v45 - v8;
  v48 = sub_29D5B371C();
  v10 = *(v48 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v48, v11);
  v47 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = v45 - v15;
  sub_29D5B36DC();
  v17 = v2;
  v18 = a1;
  v19 = sub_29D5B370C();
  v20 = sub_29D5B426C();

  v46 = v20;
  v21 = os_log_type_enabled(v19, v20);
  v51 = v10;
  v52 = v4;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v45[1] = v2;
    v24 = v23;
    v54[0] = v23;
    *v22 = 136446466;
    ObjectType = swift_getObjectType();
    type metadata accessor for BaseFeedItemViewController(255, v5, *(v4 + 88), v25);
    swift_getMetatypeMetadata();
    v26 = sub_29D5B3E7C();
    v28 = sub_29D501890(v26, v27, v54);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2082;
    ObjectType = v18;
    sub_29D5026CC();
    v29 = v18;
    v30 = sub_29D5B3E9C();
    v32 = sub_29D501890(v30, v31, v54);

    *(v22 + 14) = v32;
    _os_log_impl(&dword_29D48C000, v19, v46, "didSelectCell: %{public}s %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v24, -1, -1);
    MEMORY[0x29ED5FB80](v22, -1, -1);

    v33 = v51;
  }

  else
  {

    v33 = v10;
  }

  v34 = *(v33 + 8);
  v35 = v48;
  v34(v16, v48);
  BaseFeedItemViewController.feedItemData.getter(v9);
  v36 = (*(*(v5 - 8) + 48))(v9, 1, v5);
  (*(v49 + 8))(v9, v50);
  if (v36 == 1)
  {
    v38 = v47;
    sub_29D5B36DC();
    v39 = sub_29D5B370C();
    v40 = sub_29D5B427C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_29D48C000, v39, v40, "User tapped tile before its data was available", v41, 2u);
      MEMORY[0x29ED5FB80](v41, -1, -1);
    }

    v34(v38, v35);
  }

  v54[3] = type metadata accessor for BaseFeedItemViewController(0, v5, *(v52 + 88), v37);
  v54[0] = v17;
  v42 = *((*MEMORY[0x29EDCA1E8] & *v17) + 0xD0);
  v43 = v17;
  v42(v54);
  return sub_29D502648(v54);
}

uint64_t sub_29D5025A0(uint64_t a1)
{
  result = sub_29D5B472C();
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

uint64_t sub_29D502648(uint64_t a1)
{
  sub_29D502718(0, &qword_2A17A4DA0, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D5026CC()
{
  result = qword_2A17A43C0;
  if (!qword_2A17A43C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17A43C0);
  }

  return result;
}

void sub_29D502718(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for RecordKindFeedItemViewController(uint64_t a1)
{
  result = qword_2A17A4628;
  if (!qword_2A17A4628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}