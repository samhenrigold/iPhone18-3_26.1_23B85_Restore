uint64_t storeEnumTagSinglePayload for StringListExpressionDecoder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_262423F20()
{
  result = qword_27FF0D268;
  if (!qword_27FF0D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D268);
  }

  return result;
}

unint64_t sub_262423F74(uint64_t a1)
{
  result = sub_262422F70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262423F9C(uint64_t a1)
{
  result = sub_262423018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262423FC4(uint64_t a1)
{
  result = sub_2624230C0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_262423FEC(uint64_t a1)
{
  result = sub_2624245A4(&qword_27FF0D270, type metadata accessor for StringListRule, &unk_26246926C);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262424044(uint64_t a1)
{
  result = sub_26242406C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242406C()
{
  result = qword_27FF0D278;
  if (!qword_27FF0D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D278);
  }

  return result;
}

unint64_t sub_2624240C0(uint64_t a1)
{
  result = sub_2624240E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624240E8()
{
  result = qword_27FF0D280;
  if (!qword_27FF0D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D280);
  }

  return result;
}

unint64_t sub_262424140()
{
  result = qword_27FF0D288;
  if (!qword_27FF0D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D288);
  }

  return result;
}

unint64_t sub_262424198()
{
  result = qword_27FF0D290;
  if (!qword_27FF0D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D290);
  }

  return result;
}

unint64_t sub_2624241F0()
{
  result = qword_27FF0D298;
  if (!qword_27FF0D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D298);
  }

  return result;
}

unint64_t sub_262424248()
{
  result = qword_27FF0D2A0;
  if (!qword_27FF0D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2A0);
  }

  return result;
}

unint64_t sub_2624242A0()
{
  result = qword_27FF0D2A8;
  if (!qword_27FF0D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2A8);
  }

  return result;
}

unint64_t sub_2624242F8()
{
  result = qword_27FF0D2B0;
  if (!qword_27FF0D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2B0);
  }

  return result;
}

unint64_t sub_262424350()
{
  result = qword_27FF0D2B8;
  if (!qword_27FF0D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2B8);
  }

  return result;
}

unint64_t sub_2624243A8()
{
  result = qword_27FF0D2C0;
  if (!qword_27FF0D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2C0);
  }

  return result;
}

unint64_t sub_262424400()
{
  result = qword_27FF0D2C8;
  if (!qword_27FF0D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2C8);
  }

  return result;
}

unint64_t sub_262424454(uint64_t a1)
{
  result = sub_26242447C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242447C()
{
  result = qword_27FF0D2D0;
  if (!qword_27FF0D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2D0);
  }

  return result;
}

unint64_t sub_2624244D0(uint64_t a1)
{
  result = sub_2624244F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624244F8()
{
  result = qword_27FF0D2D8;
  if (!qword_27FF0D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2D8);
  }

  return result;
}

uint64_t sub_26242454C(uint64_t a1)
{
  result = sub_2624245A4(&qword_27FF0D2E0, type metadata accessor for StringListRule, &unk_262469294);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2624245A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2624245EC(uint64_t a1)
{
  result = sub_262424614();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262424614()
{
  result = qword_27FF0D2E8;
  if (!qword_27FF0D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2E8);
  }

  return result;
}

unint64_t sub_262424668(uint64_t a1)
{
  result = sub_262424690();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262424690()
{
  result = qword_27FF0D2F0;
  if (!qword_27FF0D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2F0);
  }

  return result;
}

unint64_t sub_2624246E4(uint64_t a1)
{
  result = sub_26242470C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242470C()
{
  result = qword_27FF0D2F8;
  if (!qword_27FF0D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2F8);
  }

  return result;
}

unint64_t sub_262424764()
{
  result = qword_27FF0D300;
  if (!qword_27FF0D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D300);
  }

  return result;
}

unint64_t sub_2624247BC()
{
  result = qword_27FF0D308;
  if (!qword_27FF0D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D308);
  }

  return result;
}

uint64_t sub_262424810(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002624717E0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C615673656C7572 && a2 == 0xED00007974696469 || (sub_262462C58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6369676F6CLL && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000262469020 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000262469000 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000262468FE0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_262462C58();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_262424B48()
{
  result = qword_27FF0D318;
  if (!qword_27FF0D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D318);
  }

  return result;
}

unint64_t sub_262424C04()
{
  result = qword_27FF0D328;
  if (!qword_27FF0D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D328);
  }

  return result;
}

unint64_t sub_262424CC0()
{
  result = qword_27FF0D338;
  if (!qword_27FF0D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D338);
  }

  return result;
}

uint64_t sub_262424D7C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0C4C8, &qword_262463340);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_262424DE8()
{
  result = qword_27FF0CAC8;
  if (!qword_27FF0CAC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF0CAC8);
  }

  return result;
}

unint64_t sub_262424E68()
{
  result = qword_27FF0D340;
  if (!qword_27FF0D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D340);
  }

  return result;
}

unint64_t sub_262424EC0()
{
  result = qword_27FF0D348;
  if (!qword_27FF0D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D348);
  }

  return result;
}

unint64_t sub_262424F18()
{
  result = qword_27FF0D350;
  if (!qword_27FF0D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D350);
  }

  return result;
}

unint64_t sub_262424F70()
{
  result = qword_27FF0D358;
  if (!qword_27FF0D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D358);
  }

  return result;
}

unint64_t sub_262424FC8()
{
  result = qword_27FF0D360;
  if (!qword_27FF0D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D360);
  }

  return result;
}

unint64_t sub_262425020()
{
  result = qword_27FF0D368;
  if (!qword_27FF0D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D368);
  }

  return result;
}

unint64_t sub_262425078()
{
  result = qword_27FF0D370;
  if (!qword_27FF0D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D370);
  }

  return result;
}

unint64_t sub_2624250D0()
{
  result = qword_27FF0D378;
  if (!qword_27FF0D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D378);
  }

  return result;
}

unint64_t sub_262425128()
{
  result = qword_27FF0D380;
  if (!qword_27FF0D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D380);
  }

  return result;
}

uint64_t sub_262425180(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_262462C58() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_262425210(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t NemesisError.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = *(v1 + 32);
  switch(*(v1 + 64))
  {
    case 1:
      v7 = 1;
      goto LABEL_29;
    case 2:
      v7 = 2;
      goto LABEL_29;
    case 3:
      v7 = 3;
      goto LABEL_29;
    case 4:
      MEMORY[0x2667289D0](4);
      sub_262462778();
      sub_262462778();
      goto LABEL_30;
    case 5:
      v8 = 5;
      goto LABEL_25;
    case 6:
      v8 = 6;
      goto LABEL_25;
    case 7:
      v7 = 7;
      goto LABEL_29;
    case 8:
      v7 = 8;
      goto LABEL_29;
    case 9:
      MEMORY[0x2667289D0](9);
      sub_262462778();
      MEMORY[0x2667289D0](*(v5 + 16));
      v11 = *(v5 + 16);
      if (v11)
      {
        v12 = v5 + 40;
        do
        {

          sub_262462778();

          v12 += 16;
          --v11;
        }

        while (v11);
      }

      goto LABEL_30;
    case 0xA:
      MEMORY[0x2667289D0](10);
      sub_262462778();
      v13 = v5;
      goto LABEL_34;
    case 0xB:
      MEMORY[0x2667289D0](11);
      sub_262462778();
      MEMORY[0x2667289D0](v5);
      if (v6)
      {
        result = sub_262462D18();
      }

      else
      {
        sub_262462D18();
        v13 = v4;
LABEL_34:
        result = MEMORY[0x2667289D0](v13);
      }

      break;
    case 0xC:
      MEMORY[0x2667289D0](12);
      MEMORY[0x2667289D0](v3);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = v2;
      }

      else
      {
        v10 = 0;
      }

      return MEMORY[0x2667289F0](v10);
    case 0xD:
      v8 = 13;
      goto LABEL_25;
    case 0xE:
      v8 = 14;
LABEL_25:
      MEMORY[0x2667289D0](v8);
      goto LABEL_30;
    case 0xF:
      v7 = 15;
      goto LABEL_29;
    case 0x10:
      v7 = 16;
      goto LABEL_29;
    case 0x11:
      MEMORY[0x2667289D0](17);
      sub_262462778();
      sub_262462778();
      sub_262462778();
      goto LABEL_30;
    case 0x12:
      v13 = 18;
      goto LABEL_34;
    default:
      v7 = 0;
LABEL_29:
      MEMORY[0x2667289D0](v7);
      sub_262462778();
LABEL_30:

      result = sub_262462778();
      break;
  }

  return result;
}

uint64_t NemesisError.hashValue.getter()
{
  sub_262462CF8();
  NemesisError.hash(into:)(v1);
  return sub_262462D38();
}

uint64_t sub_2624255A8()
{
  sub_262462CF8();
  NemesisError.hash(into:)(v1);
  return sub_262462D38();
}

uint64_t sub_2624255EC(uint64_t a1)
{
  sub_262462CF8();
  NemesisError.hash(into:)(v2);
  return sub_262462D38();
}

uint64_t NemesisError.metric.getter()
{
  v1 = sub_262462D68();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[3];
  v26 = v0[2];
  v27 = v5;
  v28 = *(v0 + 64);
  v6 = v0[1];
  v24 = *v0;
  v25 = v6;
  v20 = &type metadata for NemesisError;
  v7 = swift_allocObject();
  v19 = v7;
  v8 = v0[3];
  *(v7 + 48) = v0[2];
  *(v7 + 64) = v8;
  *(v7 + 80) = *(v0 + 64);
  v9 = v0[1];
  *(v7 + 16) = *v0;
  *(v7 + 32) = v9;
  sub_26242706C(&v24, v17);
  sub_262462D48();
  sub_262462D58();
  (*(v2 + 8))(v4, v1);
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = sub_262462A48();
  swift_getObjectType();
  result = sub_262462A48();
  if (v10 == result)
  {
    v12 = sub_262462A58();
    swift_unknownObjectRelease();
    if (v12)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_262462AB8();
      swift_unknownObjectRelease();

      v13 = v21;
      v14 = v22;
      __swift_destroy_boxed_opaque_existential_1(v23);
      if (v14)
      {
        goto LABEL_6;
      }
    }

    v21 = 0;
    v22 = 0xE000000000000000;
    v17[2] = v26;
    v17[3] = v27;
    v18 = v28;
    v17[1] = v25;
    v17[0] = v24;
    sub_262462AA8();

    v13 = v21;
    v14 = v22;
LABEL_6:
    v15 = v24;
    if (v28 > 0xEu)
    {
      if (v28 - 15 >= 2)
      {
        if (v28 != 17)
        {
          return v13;
        }

        v16 = v26;
        *&v17[0] = v13;
        *(&v17[0] + 1) = v14;
        MEMORY[0x266728460](46, 0xE100000000000000);
        MEMORY[0x266728460](v16, *(&v16 + 1));
        return *&v17[0];
      }
    }

    else if (v28 - 5 >= 3 && v28 >= 2u)
    {
      return v13;
    }

    *&v17[0] = v13;
    *(&v17[0] + 1) = v14;
    MEMORY[0x266728460](46, 0xE100000000000000);
    MEMORY[0x266728460](v15, *(&v15 + 1));

    return *&v17[0];
  }

  __break(1u);
  return result;
}

uint64_t NemesisError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33) | ((*(v0 + 37) | (*(v0 + 39) << 16)) << 32);
  v7 = v0[5];
  switch(*(v0 + 64))
  {
    case 1:
      sub_262462A28();
      MEMORY[0x266728460](0x736973656D656E5BLL, 0xE90000000000002ELL);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000014, 0x8000000262471F90);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000010, 0x8000000262471FB0);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 2:
      sub_262462A28();
      MEMORY[0x266728460](0xD000000000000021, 0x8000000262471EC0);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000031, 0x8000000262471F20);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](0x4B676E69646F432ELL, 0xED00002E27737965);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 3:
      sub_262462A28();
      MEMORY[0x266728460](0xD000000000000021, 0x8000000262471EC0);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000031, 0x8000000262471F20);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](0xD00000000000002BLL, 0x8000000262471F60);
      v17 = MEMORY[0x266728520](&unk_2874FBAB0, MEMORY[0x277D837D0]);
      MEMORY[0x266728460](v17);

      MEMORY[0x266728460](46, 0xE100000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 4:
      v12 = v5 | (v6 << 8);
      sub_262462A28();
      MEMORY[0x266728460](0xD000000000000021, 0x8000000262471EC0);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000022, 0x8000000262471EF0);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](0x7079742073612027, 0xEB00000000272065);
      MEMORY[0x266728460](v12, v7);
      MEMORY[0x266728460](11815, 0xE200000000000000);
      v13 = [objc_opt_self() mainBundle];
      goto LABEL_25;
    case 5:
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000002ELL, 0x8000000262471E60);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x756E207361772027, 0xEB000000002E6C6CLL);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 6:
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000002ELL, 0x8000000262471E60);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x727020746F6E2027, 0xEE002E746E657365);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 7:
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000002ELL, 0x8000000262471E60);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000023, 0x8000000262471E90);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](11815, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 8:
      sub_262462A28();
      MEMORY[0x266728460](0xD000000000000028, 0x8000000262471E30);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x727265207B202E27, 0xEB000000003D726FLL);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 9:
      v15 = v5 | (v6 << 8);
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000002BLL, 0x8000000262471E00);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x3D68746170202CLL, 0xE700000000000000);
      v16 = MEMORY[0x266728520](v4, MEMORY[0x277D837D0]);
      MEMORY[0x266728460](v16);

      MEMORY[0x266728460](0x3D726F727265202CLL, 0xE800000000000000);
      MEMORY[0x266728460](v3, v15);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v13 = [objc_opt_self() mainBundle];
      goto LABEL_25;
    case 0xA:
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000003BLL, 0x8000000262471DC0);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x3D7865646E69202CLL, 0xE800000000000000);
      v23 = sub_262462C28();
      MEMORY[0x266728460](v23);

      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 0xB:
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000003BLL, 0x8000000262471D80);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x3D7472617473202CLL, 0xE800000000000000);
      v9 = sub_262462C28();
      MEMORY[0x266728460](v9);

      MEMORY[0x266728460](0x3D646E65202CLL, 0xE600000000000000);
      if (v5)
      {
        v10 = 0xE400000000000000;
        v11 = 1701736270;
      }

      else
      {
        v11 = sub_262462C28();
        v10 = v24;
      }

      MEMORY[0x266728460](v11, v10);

      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 0xC:
      sub_262462A28();
      MEMORY[0x266728460](0xD000000000000037, 0x8000000262471D40);
      v14 = sub_262462C28();
      MEMORY[0x266728460](v14);

      MEMORY[0x266728460](0x3D7865646E69202CLL, 0xE800000000000000);
      sub_262462898();
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v13 = [objc_opt_self() mainBundle];
      goto LABEL_25;
    case 0xD:
      sub_262462A28();

      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 0xE:
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000003ALL, 0x8000000262471CD0);
      MEMORY[0x266728460](v1, v2);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 0xF:
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000003ALL, 0x8000000262471C90);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x3D726F727265202CLL, 0xE800000000000000);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 0x10:
      sub_262462A28();

      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](0x3D656C7572207B20, 0xE800000000000000);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 0x11:
      v19 = v0[6];
      v18 = v0[7];
      v20 = v5 | (v6 << 8);
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000003FLL, 0x8000000262471C50);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x3D656D616E202CLL, 0xE700000000000000);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](0x3D6469202CLL, 0xE500000000000000);
      MEMORY[0x266728460](v20, v7);
      MEMORY[0x266728460](0x6F727265207B202ELL, 0xEA00000000003D72);
      MEMORY[0x266728460](v19, v18);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v13 = [objc_opt_self() mainBundle];
      goto LABEL_25;
    case 0x12:
      v21 = [objc_opt_self() mainBundle];
      v22 = sub_262462538();

      return v22;
    default:
      sub_262462A28();
      MEMORY[0x266728460](0x736973656D656E5BLL, 0xE90000000000002ELL);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000017, 0x8000000262471FD0);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000010, 0x8000000262471FB0);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
LABEL_24:
      v13 = v8;
LABEL_25:
      v22 = sub_262462538();

      return v22;
  }
}

BOOL _s5Rules12NemesisErrorO2eeoiySbAC_ACtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v26 = a1[2];
  v27 = v3;
  v4 = a1[1];
  v24 = *a1;
  v25 = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  *&v30[16] = *(a2 + 32);
  v31 = v6;
  v7 = *(a2 + 16);
  v29 = *a2;
  *v30 = v7;
  v8 = a1[3];
  v33[2] = v26;
  v33[3] = v8;
  v33[0] = v24;
  v33[1] = v2;
  v36 = v5;
  v37 = *&v30[16];
  v38 = *(a2 + 48);
  v28 = *(a1 + 64);
  v32 = *(a2 + 64);
  v34 = *(a1 + 64);
  v39 = *(a2 + 64);
  v35 = v29;
  v9 = v25;
  v10 = v26;
  v11 = *(&v26 + 1) | ((*(&v26 + 5) | (BYTE7(v26) << 16)) << 32);
  switch(v28)
  {
    case 1:
      if (v32 != 1)
      {
        goto LABEL_77;
      }

      goto LABEL_5;
    case 2:
      if (v32 == 2)
      {
        goto LABEL_5;
      }

      goto LABEL_77;
    case 3:
      if (v32 == 3)
      {
        goto LABEL_5;
      }

      goto LABEL_77;
    case 4:
      if (v32 != 4)
      {
        goto LABEL_76;
      }

      if (v24 != *&v29 && (sub_262462C58() & 1) == 0 || v25 != *v30 && (sub_262462C58() & 1) == 0)
      {
        goto LABEL_54;
      }

      if (__PAIR128__(*(&v26 + 1), v26 | (v11 << 8)) != *&v30[16])
      {
        goto LABEL_63;
      }

      goto LABEL_61;
    case 5:
      if (v32 != 5)
      {
        goto LABEL_78;
      }

      goto LABEL_60;
    case 6:
      if (v32 == 6)
      {
        goto LABEL_60;
      }

      goto LABEL_78;
    case 7:
      if (v32 == 7)
      {
        goto LABEL_5;
      }

      goto LABEL_77;
    case 8:
      if (v32 == 8)
      {
        goto LABEL_5;
      }

      goto LABEL_77;
    case 9:
      if (v32 != 9)
      {
        goto LABEL_76;
      }

      if (v24 != *&v29 && (sub_262462C58() & 1) == 0 || (sub_262425180(v25, *v30) & 1) == 0)
      {
        goto LABEL_54;
      }

      if (__PAIR128__(v26 | (v11 << 8), *(&v25 + 1)) != *&v30[8])
      {
        goto LABEL_63;
      }

      goto LABEL_61;
    case 10:
      if (v32 != 10)
      {
        goto LABEL_78;
      }

      v19 = *v30;
      if (v24 == *&v29)
      {
        sub_26242706C(&v29, v23);
        sub_26242706C(&v24, v23);
        sub_26242721C(v33);
      }

      else
      {
        v21 = sub_262462C58();
        sub_26242706C(&v29, v23);
        sub_26242706C(&v24, v23);
        sub_26242721C(v33);
        if ((v21 & 1) == 0)
        {
          return 0;
        }
      }

      return v9 == v19;
    case 11:
      if (v32 != 11)
      {
        goto LABEL_78;
      }

      v12 = *v30;
      v13 = v30[16];
      if (v24 == *&v29)
      {
        sub_26242706C(&v29, v23);
        sub_26242706C(&v24, v23);
        sub_26242721C(v33);
        if (v9 != v12)
        {
          return 0;
        }
      }

      else
      {
        v20 = sub_262462C58();
        sub_26242706C(&v29, v23);
        sub_26242706C(&v24, v23);
        sub_26242721C(v33);
        result = 0;
        if ((v20 & 1) == 0 || v9 != v12)
        {
          return result;
        }
      }

      if (v10)
      {
        return (v13 & 1) != 0;
      }

      return (v13 & 1) == 0 && *(&v9 + 1) == *(&v12 + 1);
    case 12:
      if (v32 != 12)
      {
        goto LABEL_79;
      }

      sub_26242721C(v33);
      return *&v29.i64[1] == *(&v24 + 1) && v24 == v29.i64[0];
    case 13:
      if (v32 == 13)
      {
        goto LABEL_60;
      }

      goto LABEL_78;
    case 14:
      if (v32 != 14)
      {
        goto LABEL_78;
      }

LABEL_60:
      if (v24 == *&v29)
      {
        goto LABEL_61;
      }

      goto LABEL_63;
    case 15:
      if (v32 == 15)
      {
        goto LABEL_5;
      }

      goto LABEL_77;
    case 16:
      if (v32 == 16)
      {
        goto LABEL_5;
      }

      goto LABEL_77;
    case 17:
      if (v32 != 17)
      {

LABEL_76:

LABEL_77:

LABEL_78:

LABEL_79:
        v16 = &v29;
        goto LABEL_80;
      }

      *&v22 = v31.i64[1];
      *(&v22 + 1) = v31.i64[0];
      if (v24 != *&v29 && (sub_262462C58() & 1) == 0 || v25 != *v30 && (sub_262462C58() & 1) == 0 || __PAIR128__(*(&v26 + 1), v26 | (v11 << 8)) != *&v30[16] && (sub_262462C58() & 1) == 0)
      {
LABEL_54:
        sub_26242706C(&v29, v23);
        v16 = &v24;
LABEL_80:
        sub_26242706C(v16, v23);
        sub_26242721C(v33);
        return 0;
      }

      if (__PAIR128__(v27, *(&v27 + 1)) == v22)
      {
LABEL_61:
        sub_26242706C(&v29, v23);
        sub_26242706C(&v24, v23);
LABEL_62:
        sub_26242721C(v33);
        return 1;
      }

      else
      {
LABEL_63:
        v17 = sub_262462C58();
        sub_26242706C(&v29, v23);
        sub_26242706C(&v24, v23);
        sub_26242721C(v33);
        return v17 & 1;
      }

    case 18:
      if (v32 != 18)
      {
        goto LABEL_79;
      }

      v18 = vorrq_s8(vorrq_s8(v29, *&v30[16]), vorrq_s8(*v30, v31));
      if (vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)))
      {
        goto LABEL_79;
      }

      goto LABEL_62;
    default:
      if (v32)
      {
        goto LABEL_77;
      }

LABEL_5:
      if (v24 != *&v29 && (sub_262462C58() & 1) == 0)
      {
        goto LABEL_54;
      }

      if (v25 != *v30)
      {
        goto LABEL_63;
      }

      goto LABEL_61;
  }
}

uint64_t sub_262426F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  result = a2;
  if (a9 > 6u)
  {
    if (a9 > 0x11u)
    {
      goto LABEL_11;
    }

    if (((1 << a9) & 0x6C00) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << a9) & 0x18000) != 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    if (a9 == 17)
    {
    }

    else
    {
LABEL_11:
      if (a9 - 7 < 2)
      {
        goto LABEL_14;
      }

      if (a9 != 9)
      {
        return result;
      }
    }

LABEL_13:

    goto LABEL_14;
  }

  if (a9 < 4u)
  {
    goto LABEL_14;
  }

  if (a9 - 5 >= 2)
  {
    if (a9 != 4)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_15:
}

unint64_t sub_2624270A8()
{
  result = qword_2813BD958[0];
  if (!qword_2813BD958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813BD958);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Rules12NemesisErrorO(uint64_t a1)
{
  if ((*(a1 + 64) & 0x1Fu) <= 0x11)
  {
    return *(a1 + 64) & 0x1F;
  }

  else
  {
    return (*a1 + 18);
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_262427140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEE && *(a1 + 65))
  {
    return (*a1 + 238);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0x12)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_262427188(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xED)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 238;
    if (a3 >= 0xEE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEE)
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

uint64_t sub_2624271E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x12)
  {
    *result = a2 - 18;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 18;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t sub_26242721C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D388, &qword_262469EB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_2624272B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_2624272F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26242736C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 120) = a1;
  *(v3 + 128) = a3;
  sub_262462718();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = *a2;
  *(v3 + 160) = *(a2 + 16);
  *(v3 + 168) = *(a2 + 24);
  *(v3 + 184) = *(a2 + 40);
  *(v3 + 192) = *(a2 + 48);

  return MEMORY[0x2822009F8](sub_262427428, 0, 0);
}

uint64_t sub_262427428()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 120);
  v4 = sub_262462738();
  v6 = v5;
  *(v3 + 128) = v4;
  *(v3 + 136) = v5;
  v7 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v7 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v8 = *(v0 + 152);
  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = *(v0 + 144);
  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = *(v0 + 176);
  v11 = *(v0 + 184);
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = *(v0 + 192);
    v16 = *(v0 + 160);
    v15 = *(v0 + 168);
    v17 = *(v0 + 120);
    *v17 = v9;
    *(v17 + 8) = v8;
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;
    *(v17 + 32) = v12;
    *(v17 + 40) = v11;
    *(v17 + 48) = v14;
    sub_262462708();
    v18 = sub_2624626C8();
    v20 = v19;
    sub_262462418();
    swift_allocObject();
    sub_262462408();
    v21 = sub_2623F47D4(v18, v20);
    v23 = v22;
    sub_2624278F4();
    sub_2624623F8();
    v28 = *(v0 + 128);
    v29 = *(v0 + 120);
    v30 = sub_262462588();
    (*(*(v30 - 8) + 8))(v28, v30);
    sub_2623F4694(v21, v23);

    *(v29 + 56) = *(v0 + 16);
    v31 = *(v0 + 32);
    v32 = *(v0 + 48);
    v33 = *(v0 + 64);
    *(v29 + 120) = *(v0 + 80);
    *(v29 + 104) = v33;
    *(v29 + 88) = v32;
    *(v29 + 72) = v31;

    v34 = *(v0 + 8);
  }

  else
  {
LABEL_11:
    v24 = *(v0 + 128);

    sub_2623F1BBC();
    swift_allocError();
    *v25 = v4;
    *(v25 + 8) = v6;
    *(v25 + 16) = 0xD00000000000002BLL;
    *(v25 + 24) = 0x8000000262471FF0;
    *(v25 + 32) = v35;
    *(v25 + 48) = v36;
    *(v25 + 64) = 0;
    swift_willThrow();
    v26 = sub_262462588();
    (*(*(v26 - 8) + 8))(v24, v26);

    v34 = *(v0 + 8);
  }

  return v34();
}

uint64_t sub_2624277F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

uint64_t sub_262427854(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_262427874, 0, 0);
}

uint64_t sub_262427874()
{
  v1 = sub_26245E934(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_2624278F4()
{
  result = qword_2813BDB20;
  if (!qword_2813BDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDB20);
  }

  return result;
}

uint64_t sub_262427948@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_262427968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_262462C28();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_2624279C4(uint64_t a1)
{
  v2 = sub_2623F3688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262427A00(uint64_t a1)
{
  v2 = sub_2623F3688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262427A60(uint64_t a1)
{
  v17 = 0;
  v18 = 0xE000000000000000;
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_26243CD20(0, v1, 0);
    v2 = v16;
    v4 = a1 + 32;
    do
    {
      sub_2623F3CA4(v4, v15);
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      v5 = sub_262462DA8();
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_1(v15);
      v16 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_26243CD20((v8 > 1), v9 + 1, 1);
        v2 = v16;
      }

      *(v2 + 16) = v9 + 1;
      v10 = v2 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  v11 = MEMORY[0x266728520](v2, MEMORY[0x277D837D0]);
  v13 = v12;

  MEMORY[0x266728460](v11, v13);

  return v17;
}

uint64_t sub_262427BA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v3;
  v18 = *(a2 + 64);
  v4 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v4;
  v5 = *(a1 + 16);

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_2623F3970(*(a1 + 56) + 40 * v6, &v13);
  v11[0] = v13;
  v11[1] = v14;
  v12 = v15;
  if (!*(&v14 + 1))
  {
    sub_262427D98(v11);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
  if (!swift_dynamicCast())
  {
LABEL_7:
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_8;
  }

  v8 = v16;
LABEL_8:
  v16 = v8;
  sub_26242706C(v17, v11);
  sub_26243A4DC(v11, v17);
  sub_2623F3C50(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
  sub_262427D34();
  sub_2624629E8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_262461260(&v13, 0x45736973656D656ELL, 0xED000073726F7272, isUniquelyReferenced_nonNull_native);
  return a1;
}

unint64_t sub_262427D34()
{
  result = qword_2813BD3C0;
  if (!qword_2813BD3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0D390, "Η");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD3C0);
  }

  return result;
}

uint64_t sub_262427D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_262427E14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_262427E5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_262427EB4()
{
  result = qword_27FF0D398;
  if (!qword_27FF0D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D398);
  }

  return result;
}

unint64_t sub_262427F0C()
{
  result = qword_27FF0D3A0;
  if (!qword_27FF0D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3A0);
  }

  return result;
}

uint64_t sub_262427F88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CEB0, &qword_262467DA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262428EB4();
  result = sub_262462D88();
  if (!v2)
  {
    v10 = sub_262462BC8();
    if (*(v10 + 16))
    {
      v11 = *(v10 + 32);

      v12 = *(sub_262462BC8() + 16);

      if (v12 == 1 || (sub_26240A818() & 1) != 0)
      {
        switch(v11)
        {
          case 1:
          case 2:
            sub_2623F3CA4(a1, v30);
            v20 = sub_26242F3F0(v30);
            v22 = v21;
            v24 = v23;
            v26 = v25;
            a2[3] = &type metadata for NumberField;
            a2[4] = sub_26242F5C8();
            v27 = swift_allocObject();
            *a2 = v27;
            *(v27 + 16) = v20;
            *(v27 + 24) = v22;
            *(v27 + 32) = v24;
            *(v27 + 40) = v26 & 1;
            return (*(v6 + 8))(v8, v5);
          case 3:
          case 4:
          case 5:
          case 6:
            sub_2623F3CA4(a1, v30);
            a2[3] = type metadata accessor for NumberRule(0);
            a2[4] = sub_26243056C(&qword_27FF0D480, type metadata accessor for NumberRule, &unk_26246AA70);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
            sub_26242898C(v30, boxed_opaque_existential_1);
            return (*(v6 + 8))(v8, v5);
          case 7:
            LOBYTE(v30[0]) = 7;
            a2[3] = &type metadata for Ratio;
            a2[4] = sub_26242F0D0();
            *a2 = swift_allocObject();
            sub_26242F124();
            sub_262462BB8();
            return (*(v6 + 8))(v8, v5);
          case 8:
            LOBYTE(v30[0]) = 8;
            a2[3] = &type metadata for Max;
            a2[4] = sub_26242F028();
            sub_26242F07C();
            goto LABEL_26;
          case 9:
            LOBYTE(v30[0]) = 9;
            a2[3] = &type metadata for GetIntegerBits;
            a2[4] = sub_26242EF80();
            *a2 = swift_allocObject();
            sub_26242EFD4();
            goto LABEL_26;
          case 10:
            LOBYTE(v30[0]) = 10;
            a2[3] = &type metadata for NumberListGetIndex;
            a2[4] = sub_26242EED8();
            *a2 = swift_allocObject();
            sub_26242EF2C();
            goto LABEL_26;
          case 11:
            LOBYTE(v30[0]) = 11;
            a2[3] = &type metadata for NumberListLength;
            a2[4] = sub_26242EE30();
            *a2 = swift_allocObject();
            sub_26242EE84();
            goto LABEL_26;
          case 12:
            LOBYTE(v30[0]) = 12;
            a2[3] = &type metadata for StringListLength;
            a2[4] = sub_26242ED88();
            *a2 = swift_allocObject();
            sub_26242EDDC();
            goto LABEL_26;
          case 13:
            LOBYTE(v30[0]) = 13;
            a2[3] = &type metadata for StringLength;
            a2[4] = sub_26242ECE0();
            *a2 = swift_allocObject();
            sub_26242ED34();
            goto LABEL_26;
          case 14:
            LOBYTE(v30[0]) = 14;
            a2[3] = &type metadata for NumberReplaceFailure;
            a2[4] = sub_26242EC38();
            *a2 = swift_allocObject();
            sub_26242EC8C();
            goto LABEL_26;
          case 15:
            LOBYTE(v30[0]) = 15;
            a2[3] = &type metadata for NumberMatchCase;
            a2[4] = sub_26242EB90();
            *a2 = swift_allocObject();
            sub_26242EBE4();
            goto LABEL_26;
          case 16:
            LOBYTE(v30[0]) = 16;
            a2[3] = &type metadata for ToNumber;
            a2[4] = sub_26242EAE8();
            *a2 = swift_allocObject();
            sub_26242EB3C();
            goto LABEL_26;
          case 17:
            LOBYTE(v30[0]) = 17;
            a2[3] = &type metadata for NumberBooleanLabel;
            a2[4] = sub_26242EA40();
            *a2 = swift_allocObject();
            sub_26242EA94();
            goto LABEL_26;
          case 18:
            LOBYTE(v30[0]) = 18;
            a2[3] = &type metadata for NumberStringLabel;
            a2[4] = sub_26242E998();
            *a2 = swift_allocObject();
            sub_26242E9EC();
            goto LABEL_26;
          case 19:
            LOBYTE(v30[0]) = 19;
            a2[3] = &type metadata for NumberNumberLabel;
            a2[4] = sub_26242E8F0();
            *a2 = swift_allocObject();
            sub_26242E944();
LABEL_26:
            sub_262462BB8();
            break;
          default:
            sub_2623F3CA4(a1, v30);
            v28 = sub_26242F1C4(v30);
            a2[3] = &type metadata for NumberValue;
            a2[4] = sub_26242F61C();
            *a2 = v28;
            break;
        }

        return (*(v6 + 8))(v8, v5);
      }
    }

    else
    {
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = sub_262462D78();
    v15 = sub_262427A60(v14);
    v17 = v16;

    sub_2623F1BBC();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    *(v18 + 16) = 0xD000000000000010;
    *(v18 + 24) = 0x800000026246A080;
    v19 = v30[1];
    *(v18 + 32) = v30[0];
    *(v18 + 48) = v19;
    *(v18 + 64) = 3;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t sub_2624286CC(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x6D614E646C656966;
      break;
    case 2:
      result = 0x746C7561666564;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6C615673656C7572;
      break;
    case 6:
      result = 0x6369676F6CLL;
      break;
    case 7:
      result = 0x6F69746152;
      break;
    case 8:
      result = 7889229;
      break;
    case 9:
      result = 0x6765746E49746547;
      break;
    case 10:
    case 17:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x654C676E69727453;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x614D7265626D754ELL;
      break;
    case 16:
      result = 0x7265626D754E6F54;
      break;
    case 18:
    case 19:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2624288E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_262430CB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_262428914(uint64_t a1)
{
  v2 = sub_262428EB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262428950(uint64_t a1)
{
  v2 = sub_262428EB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242898C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4E8, &qword_262463350);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = v31 - v4;
  v5 = type metadata accessor for RulesValidity(0);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7E8, &qword_262464BD0);
  v36 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  v11 = type metadata accessor for NumberRule(0);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26242F718();
  v14 = v37;
  sub_262462D88();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v7;
  v15 = v34;
  v16 = v35;
  LOBYTE(v39[0]) = 0;
  v17 = v10;
  v19 = v13;
  *v13 = sub_262462B88();
  *(v13 + 1) = v20;
  v31[1] = v20;
  *(v13 + 2) = sub_2623F7270(v17, 1u);
  v13[24] = v21 & 1;
  LOBYTE(v39[0]) = 2;
  sub_26243056C(&qword_2813BDBE8, type metadata accessor for RulesValidity, &unk_262470FBC);
  v22 = v16;
  v23 = v15;
  sub_262462B78();
  v31[0] = v17;
  v24 = v33 + 48;
  v25 = *(v33 + 48);
  if (v25(v22, 1, v23) == 1)
  {
    v33 = v24;
    v26 = v37;
    *v37 = 0;
    swift_storeEnumTagMultiPayload();
    v27 = v25(v22, 1, v23) == 1;
    v28 = v22;
    v29 = v32;
    if (!v27)
    {
      sub_2623F39E0(v28, &qword_27FF0C4E8, &qword_262463350);
    }
  }

  else
  {
    v26 = v37;
    sub_2623F2530(v22, v37);
    v29 = v32;
  }

  sub_2623F2530(v26, v19 + *(v11 + 24));
  v40 = 3;
  sub_262462B58();
  v30 = v36;
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v38, v39);
  __swift_destroy_boxed_opaque_existential_1(v38);
  (*(v30 + 8))(v31[0], v8);
  sub_2623EB668(v39, v19 + *(v11 + 28));
  sub_26242F76C(v19, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26242F7D0(v19, type metadata accessor for NumberRule);
}

unint64_t sub_262428EB4()
{
  result = qword_27FF0D3A8;
  if (!qword_27FF0D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3A8);
  }

  return result;
}

uint64_t sub_262428F08(uint64_t a1)
{
  v2 = sub_26242F670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262428F44(uint64_t a1)
{
  v2 = sub_26242F670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262428F80(uint64_t a1, uint64_t a2)
{
  *a1 = *v2;
  *(a1 + 8) = 0;

  return a2;
}

void sub_262428FB8(void *a1@<X0>, double *a2@<X8>)
{
  v4 = sub_26242F1C4(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_262428FE4(uint64_t a1)
{
  v2 = sub_26242F6C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262429020(uint64_t a1)
{
  v2 = sub_26242F6C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242905C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *&a4;
  if (a5)
  {
    v59 = 0;
    memset(v58, 0, sizeof(v58));

    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    *&v52 = a4;

    sub_2624629E8();
    if (!*(a1 + 16))
    {
LABEL_9:
      sub_2623F3970(v58, &v55);
      if (*(&v56 + 1))
      {
        v60 = v55;
        v61 = v56;
        v14 = v57;
        goto LABEL_15;
      }

      sub_2623F39E0(&v55, &qword_27FF0C5F0, &qword_262463A90);
      sub_2623F1BBC();
      swift_allocError();
      *v15 = a2;
      *(v15 + 8) = a3;
      v17 = v53;
      v16 = v54;
      *(v15 + 16) = v52;
      *(v15 + 32) = v17;
      *(v15 + 48) = v16;
      *(v15 + 64) = 6;
      swift_willThrow();
LABEL_29:
      sub_2623F39E0(v58, &qword_27FF0C5F0, &qword_262463A90);
      return *&v6;
    }
  }

  v10 = sub_2624414FC(a2, a3);
  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2623F3970(*(a1 + 56) + 40 * v10, &v52);
  v55 = v52;
  v56 = v53;
  v57 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
  v12 = sub_262462918();
  v13 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

  swift_unknownObjectRelease();
  if (v12 != v13)
  {
    sub_2623F3970(&v55, &v52);
    if (*(&v53 + 1))
    {
      sub_2623F39E0(&v55, &qword_27FF0C5F0, &qword_262463A90);
      v60 = v52;
      v61 = v53;
      v14 = v54;
      goto LABEL_15;
    }

    sub_2623F39E0(&v52, &qword_27FF0C5F0, &qword_262463A90);
  }

  sub_2623F3970(v58, &v49);
  if (!*(&v50 + 1))
  {
    sub_2623F39E0(&v49, &qword_27FF0C5F0, &qword_262463A90);
    sub_2623F1BBC();
    swift_allocError();
    *v31 = a2;
    *(v31 + 8) = a3;
    v33 = v53;
    v32 = v54;
    *(v31 + 16) = v52;
    *(v31 + 32) = v33;
    *(v31 + 48) = v32;
    *(v31 + 64) = 5;
    swift_willThrow();
    sub_2623F39E0(&v55, &qword_27FF0C5F0, &qword_262463A90);
    goto LABEL_29;
  }

  sub_2623F39E0(&v55, &qword_27FF0C5F0, &qword_262463A90);
  v60 = v49;
  v61 = v50;
  v14 = v51;
LABEL_15:
  v62 = v14;
  sub_2623F39E0(v58, &qword_27FF0C5F0, &qword_262463A90);
  sub_2623F3A40(&v60, &v52);
  v18 = MEMORY[0x277D839F8];
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2623F3A40(&v60, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D680, &qword_26246AED0);
    if (swift_dynamicCast())
    {

      sub_2623EB668(&v55, &v52);
      v19 = *(&v53 + 1);
      v20 = __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
      v21 = *(v19 - 8);
      MEMORY[0x28223BE20](v20);
      v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v23);
      if (sub_262462978() < 65)
      {
        v28 = sub_262462988();
        v29 = sub_262462968();
        (*(v21 + 8))(v23, v19);
        sub_2623F3A9C(&v60);
        if (v28)
        {
          v24 = v29;
        }

        else
        {
          v24 = v29;
        }
      }

      else
      {
        sub_2623F3B3C();
        sub_2623F3BFC();
        sub_262462678();
        (*(v21 + 8))(v23, v19);
        sub_2623F3A9C(&v60);
        v24 = *v58;
      }

      v6 = v24;
    }

    else
    {
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      sub_2623F39E0(&v55, &qword_27FF0D688, &qword_26246AED8);
      sub_2623F3A40(&v60, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D690, &qword_26246AEE0);
      if (!swift_dynamicCast())
      {
        v57 = 0;
        v55 = 0u;
        v56 = 0u;
        sub_2623F39E0(&v55, &qword_27FF0D698, &qword_26246AEE8);
        sub_2623F3A40(&v60, &v52);
        if ((swift_dynamicCast() & 1) != 0 && (*&v52 = 0, v30 = sub_2623F95B0(*&v58[0], *(&v58[0] + 1), &v52), , v30))
        {

          v6 = *&v52;
        }

        else
        {
          v34 = sub_2624629D8();
          objc_opt_self();
          v35 = swift_dynamicCastObjCClass();
          if (v35)
          {
            v36 = v35;
            if ([v35 type] == 2)
            {

              [v36 doubleValue];
              v38 = v37;

              sub_2623F3A9C(&v60);
              v6 = v38;
              goto LABEL_17;
            }
          }

          v39 = sub_2624629D8();
          objc_opt_self();
          v40 = swift_dynamicCastObjCClass();
          if (v40)
          {
            v41 = v40;
            if ([v40 type] == 1)
            {

              v42 = [v41 int64Value];

              sub_2623F3A9C(&v60);
              v6 = v42;
              goto LABEL_17;
            }
          }

          if (a5)
          {
            *&v52 = v18;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
            v44 = sub_262462728();
            v46 = v45;
            sub_2623F1BBC();
            swift_allocError();
            *v47 = a2;
            *(v47 + 8) = a3;
            *(v47 + 16) = v44;
            *(v47 + 24) = v46;
            v48 = v53;
            *(v47 + 32) = v52;
            *(v47 + 48) = v48;
            *(v47 + 64) = 7;
            swift_willThrow();
            sub_2623F3A9C(&v60);
            return *&v6;
          }
        }

        sub_2623F3A9C(&v60);
        goto LABEL_17;
      }

      sub_2623EB668(&v55, &v52);
      v25 = __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
      MEMORY[0x28223BE20](v25);
      (*(v27 + 16))(&v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2623F3B3C();
      sub_262462668();
      sub_2623F3A9C(&v60);
      v6 = *v58;
    }

    __swift_destroy_boxed_opaque_existential_1(&v52);
    return *&v6;
  }

  sub_2623F3A9C(&v60);
  v6 = *v58;
LABEL_17:

  return *&v6;
}

uint64_t sub_262429934(uint64_t a1, uint64_t a2)
{
  v6 = sub_26242905C(a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  result = v7;
  if (!v3)
  {
    *a1 = v6;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_262429984@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26242F3F0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_2624299BC(uint64_t a1)
{
  v2 = sub_26242F718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624299F8(uint64_t a1)
{
  v2 = sub_26242F718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262429A34(uint64_t a1)
{
  v4 = type metadata accessor for NumberRule(0);
  sub_2623F3CA4(v1 + *(v4 + 28), &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D170, &qword_262468F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D178, &unk_26246E150);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v6, v8);
    sub_26240C544(&v7, a1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), v1 + *(v4 + 24), v8);
    result = __swift_destroy_boxed_opaque_existential_1(v8);
    if (!v2)
    {
      return v7;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_262429B3C(uint64_t a1, uint64_t a2)
{
  v5 = sub_262429A34(a2);
  result = v6;
  if (!v2)
  {
    *a1 = v5;
    *(a1 + 8) = v4 & 1;
  }

  return result;
}

uint64_t sub_262429B94()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6F746172656D756ELL;
  }
}

uint64_t sub_262429BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F746172656D756ELL && a2 == 0xEE007475706E4972;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002624721C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

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

uint64_t sub_262429CCC(uint64_t a1)
{
  v2 = sub_262431CA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262429D08(uint64_t a1)
{
  v2 = sub_262431CA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262429D44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D670, &unk_26246AEC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262431CA0();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  sub_262427F88(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_262431CF4(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262431D2C(v13);
}

uint64_t sub_262429F90(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  *&result = COERCE_DOUBLE((*(*(v6 + 8) + 24))(&v13, a1, v5));
  if (!v2)
  {
    v8 = v13;
    v9 = v14;
    v10 = v3[8];
    v11 = v3[9];
    v12 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v10);
    (*(*(v11 + 8) + 24))(&v13, v12, v10);

    if ((v9 | v14))
    {
      *&result = 0.0;
    }

    else
    {
      *&result = v8 / v13;
    }
  }

  return result;
}

uint64_t sub_26242A0EC(uint64_t a1)
{
  v2 = sub_262431C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242A128(uint64_t a1)
{
  v2 = sub_262431C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242A164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);

  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = a2 + 32;
    v9 = a1;
    do
    {
      sub_2623F3CA4(v8, v22);
      v11 = v23;
      v10 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v12 = (*(*(v10 + 8) + 24))(&v20, v9, v11);
      if (v3)
      {

        __swift_destroy_boxed_opaque_existential_1(v22);
        return v10;
      }

      v13 = v12;
      if (v21)
      {
      }

      else
      {
        v14 = v20;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D6A0, &unk_26246AEF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_262463D10;
        *(inited + 32) = v14;
        v16 = *(v7 + 16);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0 || (v18 = *(v7 + 24) >> 1, v18 <= v16))
        {
          result = sub_26243C488(result, v16 + 1, 1, v7);
          v7 = result;
          v18 = *(result + 24) >> 1;
        }

        v19 = *(v7 + 16);
        if (v18 <= v19)
        {
          __break(1u);
          return result;
        }

        *(v7 + 8 * v19 + 32) = *(inited + 32);

        ++*(v7 + 16);
        v9 = v13;
      }

      __swift_destroy_boxed_opaque_existential_1(v22);
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  v10 = sub_26241807C(v7);

  return v10;
}

uint64_t sub_26242A358(uint64_t a1, uint64_t a2)
{
  v6 = sub_26242A164(a2, *v2);
  result = v7;
  if (!v3)
  {
    *a1 = v6;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

void *sub_26242A3A0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26243196C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_26242A3CC()
{
  v1 = 0x7472617473;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7475706E69;
  }
}

uint64_t sub_26242A418@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_262432B94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26242A440(uint64_t a1)
{
  v2 = sub_2624318B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242A47C(uint64_t a1)
{
  v2 = sub_2624318B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242A4B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C800, &qword_262464BE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624318B0();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36[7] = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v37, v38);
  __swift_destroy_boxed_opaque_existential_1(v37);
  sub_2623EB668(v38, v39);
  v10 = COERCE_DOUBLE(sub_2623F7498(v8, 1));
  if ((v11 & 1) != 0 || ((v12 = trunc(v10), v10 > -9.22337204e18) ? (v13 = v10 < 9.22337204e18) : (v13 = 0), v13 ? (v14 = v12 == v10) : (v14 = 0), !v14))
  {
    v15 = sub_262462B48();
    v16 = sub_262427A60(v15);
    v18 = v17;

    *&v38[0] = MEMORY[0x277D83B88];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6D0, &qword_26246AEB0);
    v19 = sub_262462728();
    v21 = v20;
    sub_2623F1BBC();
    swift_allocError();
    *v22 = v16;
    *(v22 + 8) = v18;
    v23 = 0x7472617473;
    v24 = 0xE500000000000000;
LABEL_13:
    *(v22 + 16) = v23;
    *(v22 + 24) = v24;
    *(v22 + 32) = v19;
    *(v22 + 40) = v21;
    *(v22 + 48) = v38[0];
    *(v22 + 64) = 4;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
    a1 = v39;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = v10;
  v25 = COERCE_DOUBLE(sub_2623F7498(v8, 2));
  if ((v27 & 1) != 0 || ((v28 = v25, v26.n128_f64[0] = trunc(v25), v25 > -9.22337204e18) ? (v29 = v25 < 9.22337204e18) : (v29 = 0), v29 ? (v30 = v26.n128_f64[0] == v25) : (v30 = 0), !v30))
  {
    v31 = sub_262462B48();
    v32 = sub_262427A60(v31);
    v34 = v33;

    *&v38[0] = MEMORY[0x277D83B88];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6D0, &qword_26246AEB0);
    v19 = sub_262462728();
    v21 = v35;
    sub_2623F1BBC();
    swift_allocError();
    *v22 = v32;
    *(v22 + 8) = v34;
    v23 = 6581861;
    v24 = 0xE300000000000000;
    goto LABEL_13;
  }

  (*(v6 + 8))(v8, v5, v26);
  v41 = v28;
  sub_262431904(v39, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26243193C(v39);
}

void sub_26242A884(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  (*(*(v6 + 8) + 24))(v26, a1, v5);
  if (!v2)
  {
    v8 = v3[5];
    v7 = v3[6];
    if (v7 < v8)
    {

      *&v26[0] = 0;
      *(&v26[0] + 1) = 0xE000000000000000;
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000001CLL, 0x8000000262472180);
      v9 = sub_262462C28();
      MEMORY[0x266728460](v9);

      MEMORY[0x266728460](0xD000000000000014, 0x80000002624721A0);
LABEL_4:
      v10 = sub_262462C28();
      MEMORY[0x266728460](v10);

      v11 = 11817;
      v12 = 0xE200000000000000;
LABEL_13:
      MEMORY[0x266728460](v11, v12);
      v20 = v26[0];
      sub_2623F1BBC();
      swift_allocError();
      *v21 = v20;
      v23 = v26[1];
      v22 = v26[2];
      *(v21 + 16) = v26[0];
      *(v21 + 32) = v23;
      *(v21 + 48) = v22;
      *(v21 + 64) = 13;
      swift_willThrow();
      return;
    }

    if (v8 < 0 || v7 >= 65)
    {

      *&v26[0] = 0;
      *(&v26[0] + 1) = 0xE000000000000000;
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000001CLL, 0x8000000262472120);
      v17 = sub_262462C28();
      MEMORY[0x266728460](v17);

      MEMORY[0x266728460](0xD000000000000019, 0x8000000262472140);
      v18 = sub_262462C28();
      MEMORY[0x266728460](v18);

      v19 = ") is less than 0 or end (";
      v11 = 0xD000000000000015;
    }

    else
    {
      if (BYTE8(v26[0]))
      {
        return;
      }

      v13 = sub_262462878();
      v14 = sub_262462CD8();

      if ((v14 & 0x100000000) == 0)
      {
        if (v7 >= 33)
        {

          *&v26[0] = 0;
          *(&v26[0] + 1) = 0xE000000000000000;
          sub_262462A28();
          MEMORY[0x266728460](0xD00000000000001ALL, 0x80000002624720B0);
          v15 = sub_262462C28();
          MEMORY[0x266728460](v15);

          MEMORY[0x266728460](0xD000000000000026, 0x80000002624720D0);
          v16 = sub_262462C28();
          MEMORY[0x266728460](v16);

          MEMORY[0x266728460](0xD000000000000011, 0x8000000262472100);
          goto LABEL_4;
        }

        MEMORY[0x2667285C0](2);
        sub_262462598();
        v24 = sub_262462908();
        v25 = sub_262462CD8();

        if ((v25 & 0x100000000) == 0)
        {
          if (!__OFSUB__(v25, 1))
          {
            return;
          }

          __break(1u);
        }

        __break(1u);
        return;
      }

      *&v26[0] = 0;
      *(&v26[0] + 1) = 0xE000000000000000;
      sub_262462A28();
      MEMORY[0x266728460](0xD000000000000017, 0x8000000262472070);
      sub_262462898();
      v19 = "Invalid Input: Number (";
      v11 = 0xD00000000000001BLL;
    }

    v12 = v19 | 0x8000000000000000;
    goto LABEL_13;
  }
}

uint64_t sub_26242AD50(uint64_t a1, uint64_t a2)
{
  sub_26242A884(a2);
  v6 = v5;
  result = v7;
  if (!v2)
  {
    *a1 = v6;
    *(a1 + 8) = v4 & 1;
  }

  return result;
}

uint64_t sub_26242ADA8(uint64_t a1)
{
  v2 = sub_2624317F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242ADE4(uint64_t a1)
{
  v2 = sub_2624317F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242AE20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D648, &unk_26246AEA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624317F4();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_262431848(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262431880(v13);
}

uint64_t sub_26242B078(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  v7 = (*(*(v6 + 8) + 24))(v21, a1, v5);
  if (!v2)
  {
    v8 = *&v21[0];
    v5 = v3[8];
    v9 = v3[9];
    v10 = v7;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v5);
    (*(*(v9 + 8) + 24))(v21, v10, v5);

    if (v8)
    {
      if (BYTE8(v21[0]))
      {
        v5 = 0;
      }

      else
      {
        v12 = *&v21[0];
        v13 = trunc(*v21);
        v15 = *v21 > -9.22337204e18 && *v21 < 9.22337204e18 && *v21 == v13;
        if (!v15 || (v16 = *v21, *v21 < 0) || *(v8 + 16) <= v16)
        {

          v17 = *(v8 + 16);

          sub_2623F1BBC();
          swift_allocError();
          *v18 = v17;
          *(v18 + 8) = v12;
          v20 = v21[1];
          v19 = v21[2];
          *(v18 + 16) = v21[0];
          *(v18 + 32) = v20;
          *(v18 + 48) = v19;
          *(v18 + 64) = 12;
          swift_willThrow();
          return v5;
        }

        v5 = *(v8 + 8 * v16 + 32);
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_26242B28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = a5(a2);
  result = v9;
  if (!v5)
  {
    *a1 = v8;
    *(a1 + 8) = v7 & 1;
  }

  return result;
}

uint64_t sub_26242B304(uint64_t a1)
{
  v2 = sub_2624317A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242B340(uint64_t a1)
{
  v2 = sub_2624317A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242B37C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D638, &qword_26246AE98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624317A0();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for NumberListExpressionDecoder();
    sub_2623ED108(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v12);
    (*(v6 + 8))(v8, v5);
    sub_2623EB668(v13, v14);
    v9 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26242B550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x75706E497473696CLL && a2 == 0xE900000000000074)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262462C58();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26242B5E0(uint64_t a1)
{
  v2 = sub_26243174C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242B61C(uint64_t a1)
{
  v2 = sub_26243174C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242B658@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D628, &qword_26246AE90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26243174C();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for StringListExpressionDecoder();
    sub_26241FE98(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v12);
    (*(v6 + 8))(v8, v5);
    sub_2623EB668(v13, v14);
    v9 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26242B814(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  result = (*(*(v7 + 8) + 24))(&v13, a2, v6);
  if (!v3)
  {
    v9 = v13;
    if (v13)
    {
      v10 = *(v13 + 16);
      v11 = result;

      result = v11;
      v12 = v10;
    }

    else
    {
      v12 = 0.0;
    }

    *a1 = v12;
    *(a1 + 8) = v9 == 0;
  }

  return result;
}

uint64_t sub_26242B900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7475706E69 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262462C58();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26242B984(uint64_t a1)
{
  v2 = sub_2624316F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242B9C0(uint64_t a1)
{
  v2 = sub_2624316F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242B9FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D618, &qword_26246AE88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624316F8();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for StringExpressionDecoder();
    sub_2623FB53C(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v12);
    (*(v6 + 8))(v8, v5);
    sub_2623EB668(v13, v14);
    v9 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26242BBB8(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  *&result = COERCE_DOUBLE((*(*(v5 + 8) + 24))(v8, a1, v4));
  if (!v2)
  {
    if (v8[1])
    {

      v7 = sub_2624627E8();
      swift_bridgeObjectRelease_n();
      *&result = v7;
    }

    else
    {
      *&result = 0.0;
    }
  }

  return result;
}

uint64_t sub_26242BD08(uint64_t a1)
{
  v2 = sub_26243163C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242BD44(uint64_t a1)
{
  v2 = sub_26243163C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242BD80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7F8, &qword_262464BE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26243163C();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_2623EB668(v15, v16);
  v9 = sub_2623F768C(v8, 1);
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v17 = v9;
  v18 = v11 & 1;
  sub_262431690(v16, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624316C8(v16);
}

uint64_t sub_26242BF98(uint64_t a1)
{
  sub_2623F3CA4(v1, &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D170, &qword_262468F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D178, &unk_26246E150);
  if (!swift_dynamicCast())
  {

    return 0;
  }

  sub_2623EB668(v12, v22);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = v23;
  v7 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v7 + 24))(&v20, a1, v6, v7);
  if (!v2)
  {
    goto LABEL_6;
  }

  v19 = v2;
  v8 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
  if (swift_dynamicCast())
  {
    MEMORY[0x266728D50](v2);
    v12[2] = v16;
    v12[3] = v17;
    v13 = v18;
    v12[0] = v14;
    v12[1] = v15;
    v20 = v4;
    v21 = v5;
    v10[2] = v16;
    v10[3] = v17;
    v11 = v18;
    v10[0] = v14;
    v10[1] = v15;
    sub_262427BA0(a1, v10);
    sub_2623F3C50(v12);
    MEMORY[0x266728D50](v19);
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v20;
  }

  MEMORY[0x266728D50](v19);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_26242C168(uint64_t a1, uint64_t a2)
{
  v5 = sub_26242BF98(a2);
  result = v6;
  if (!v2)
  {
    *a1 = v5;
    *(a1 + 8) = v4 & 1;
  }

  return result;
}

uint64_t sub_26242C1C0(uint64_t a1)
{
  v2 = sub_262431580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242C1FC(uint64_t a1)
{
  v2 = sub_262431580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242C238@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5C0, &qword_262467DD0);
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D600, &unk_26246AE78);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_262431580();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v45 = v6;
  LOBYTE(v48[0]) = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v50, v51);
  __swift_destroy_boxed_opaque_existential_1(v50);
  sub_2623EB668(v51, v52);
  LOBYTE(v48[0]) = 2;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v50, v51);
  __swift_destroy_boxed_opaque_existential_1(v50);
  sub_2623EB668(v51, &v54);
  LOBYTE(v51[0]) = 1;
  sub_2623F3688();
  sub_262462B38();
  v40 = v4;
  v13 = sub_262462BC8();
  v39 = *(v13 + 16);
  if (!v39)
  {
    v16 = MEMORY[0x277D84F98];
LABEL_20:

    (*(v47 + 8))(v45, v40);
    (*(v8 + 8))(v10, v7);
    v53 = v16;
    sub_2624315D4(v52, v46);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return sub_26243160C(v52);
  }

  v14 = 0;
  v15 = (v13 + 56);
  v16 = MEMORY[0x277D84F98];
  v38 = v13;
  while (1)
  {
    v44 = v16;
    if (v14 >= *(v13 + 16))
    {
      break;
    }

    v18 = *(v15 - 3);
    v19 = *(v15 - 2);
    v20 = *v15;
    v43 = v15;
    v21 = *(v15 - 1);
    v22 = v18;
    v48[0] = v18;
    v48[1] = v19;
    v48[2] = v21;
    v49 = v20;
    swift_bridgeObjectRetain_n();
    sub_262462B58();

    sub_262427F88(v50, v51);
    v41 = v14;
    __swift_destroy_boxed_opaque_existential_1(v50);
    sub_2623EB668(v51, v50);
    v23 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = v23;
    v24 = v19;
    v26 = sub_2624414FC(v22, v19);
    v27 = v23[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_22;
    }

    v30 = v25;
    if (v23[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v25)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_262461AD4();
        if (v30)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_262460574(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_2624414FC(v22, v24);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_24;
      }

      v26 = v31;
      if (v30)
      {
LABEL_5:

        v16 = v48[0];
        v17 = (*(v48[0] + 56) + 40 * v26);
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_2623EB668(v50, v17);
        goto LABEL_6;
      }
    }

    v33 = v22;
    v16 = v48[0];
    *(v48[0] + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v34 = (v16[6] + 16 * v26);
    *v34 = v33;
    v34[1] = v24;
    sub_2623EB668(v50, v16[7] + 40 * v26);
    v35 = v16[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_23;
    }

    v16[2] = v37;
LABEL_6:
    v13 = v38;
    v14 = v41 + 1;
    v15 = v43 + 32;
    if (v39 == v41 + 1)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_262462C78();
  __break(1u);
  return result;
}

uint64_t sub_26242C95C(uint64_t a1)
{
  v4 = sub_26240DE0C(v1[5]);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  sub_2623F3CA4((v1 + 6), &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D170, &qword_262468F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D178, &unk_26246E150);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_6:

    return 0;
  }

  sub_2623EB668(v21, v26);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v8 = (*(*(v7 + 8) + 24))(&v22, a1, v6);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v9 = v8;
    v10 = v23;
    if (v23 && *(v5 + 16) && (v11 = v22, , v12 = sub_2624414FC(v11, v10), v14 = v13, , (v14 & 1) != 0))
    {
      sub_2623F3CA4(*(v5 + 56) + 40 * v12, v21);
      sub_2623EB668(v21, &v22);
      v15 = v24;
      v16 = v25;
      __swift_project_boxed_opaque_existential_1(&v22, v24);
      (*(v16 + 24))(&v20, v9, v15, v16);

      __swift_destroy_boxed_opaque_existential_1(&v22);
    }

    else
    {
      v17 = v27;
      v18 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      (*(v18 + 24))(&v20, v9, v17, v18);
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
    return v20;
  }
}

uint64_t sub_26242CBCC(uint64_t a1, uint64_t a2)
{
  v5 = sub_26242C95C(a2);
  result = v6;
  if (!v2)
  {
    *a1 = v5;
    *(a1 + 8) = v4 & 1;
  }

  return result;
}

uint64_t sub_26242CC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E49676E69727473 && a2 == 0xEB00000000747570)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262462C58();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26242CCD0(uint64_t a1)
{
  v2 = sub_26243152C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242CD0C(uint64_t a1)
{
  v2 = sub_26243152C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242CD48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D5F0, &qword_26246AE70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26243152C();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for StringExpressionDecoder();
    sub_2623FB53C(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v12);
    (*(v6 + 8))(v8, v5);
    sub_2623EB668(v13, v14);
    v9 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *sub_26242CF04(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(*(v5 + 8) + 24))(&v11, a1, v4);
  if (!v2)
  {
    v7 = v12;
    if (v12)
    {
      v8 = v11;
      v11 = 0;

      v9 = sub_2623F95B0(v8, v7, &v11);

      if (v9)
      {
        v6 = v11;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_26242D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = a5(a2);
  result = v9;
  if (!v5)
  {
    *a1 = v8;
    *(a1 + 8) = v7 & 1;
  }

  return result;
}

uint64_t sub_26242D07C(uint64_t a1)
{
  v2 = sub_262431470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242D0B8(uint64_t a1)
{
  v2 = sub_262431470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242D0F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7F0, &qword_262464BD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262431470();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32[55] = 2;
  sub_262462B58();
  type metadata accessor for BooleanExpressionDecoder();
  sub_262441880(v29, v30);
  __swift_destroy_boxed_opaque_existential_1(v29);
  sub_2623EB668(v30, v32);
  v10 = sub_2623F7874(v8, 0);
  if (v11)
  {
    v12 = sub_262462B48();
    v28 = sub_262427A60(v12);
    v14 = v13;

    *&v30[0] = MEMORY[0x277D839F8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
    v15 = sub_262462728();
    v17 = v16;
    sub_2623F1BBC();
    swift_allocError();
    *v18 = v28;
    *(v18 + 8) = v14;
    v19 = 0x6562614C65757274;
    v20 = 0xE90000000000006CLL;
LABEL_6:
    *(v18 + 16) = v19;
    *(v18 + 24) = v20;
    *(v18 + 32) = v15;
    *(v18 + 40) = v17;
    *(v18 + 48) = v30[0];
    *(v18 + 64) = 4;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31[0] = v10;
  v21 = sub_2623F7874(v8, 1);
  if (v22)
  {
    v23 = sub_262462B48();
    v28 = sub_262427A60(v23);
    v25 = v24;

    *&v30[0] = MEMORY[0x277D839F8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
    v15 = sub_262462728();
    v17 = v26;
    sub_2623F1BBC();
    swift_allocError();
    *v18 = v28;
    *(v18 + 8) = v25;
    v19 = 0x62614C65736C6166;
    v20 = 0xEA00000000006C65;
    goto LABEL_6;
  }

  v27 = v21;
  (*(v6 + 8))(v8, v5);
  v31[1] = v27;
  sub_2624314C4(v31, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624314FC(v31);
}

uint64_t sub_26242D490(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = v4[5];
  v8 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v7);
  result = (*(*(v8 + 8) + 24))(&v10, a2, v7);
  if (!v3)
  {
    if (v10 == 2 || (v10 & 1) == 0)
    {
      ++v4;
    }

    *a1 = *v4;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_26242D550(uint64_t a1)
{
  v2 = sub_2624313B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242D58C(uint64_t a1)
{
  v2 = sub_2624313B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242D5C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5C0, &qword_262467DD0);
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D5D8, &unk_26246AE60);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  v11 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2624313B4();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v52 = v6;
  v51 = v4;
  v57 = 1;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v58, &v59);
  v12 = v8;
  __swift_destroy_boxed_opaque_existential_1(v58);
  sub_2623EB668(&v59, v63);
  LOBYTE(v59) = 0;
  sub_2623F3688();
  v13 = v52;
  sub_262462B38();
  v46 = v10;
  v47 = v12;
  v48 = v7;
  v15 = v51;
  v16 = sub_262462BC8();
  v49 = *(v16 + 16);
  if (!v49)
  {
    v19 = MEMORY[0x277D84F98];
    v38 = v54;
    v37 = v55;
LABEL_20:

    (*(v37 + 8))(v13, v15);
    (*(v47 + 8))(v46, v48);
    v62 = v19;
    sub_262431408(&v62, v38);
    __swift_destroy_boxed_opaque_existential_1(v56);
    return sub_262431440(&v62);
  }

  v45 = v63;
  v17 = 0;
  v18 = (v16 + 56);
  v19 = MEMORY[0x277D84F98];
  while (v17 < *(v16 + 16))
  {
    v20 = v16;
    v21 = *(v18 - 2);
    v22 = *v18;
    v23 = *(v18 - 1);
    v50 = *(v18 - 3);
    *&v59 = v50;
    *(&v59 + 1) = v21;
    v60 = v23;
    v61 = v22;
    v53 = v21;

    sub_262462BA8();
    v25 = v24;
    v26 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v59 = v19;
    v28 = v50;
    v30 = sub_2624414FC(v50, v53);
    v31 = v26[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_22;
    }

    v34 = v29;
    if (v26[3] >= v33)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v38 = v54;
        v37 = v55;
        if (v29)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_262461AFC();
        v38 = v54;
        v37 = v55;
        if (v34)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_26246059C(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_2624414FC(v28, v53);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_24;
      }

      v30 = v35;
      v38 = v54;
      v37 = v55;
      if (v34)
      {
LABEL_5:

        v19 = v59;
        *(*(v59 + 56) + 8 * v30) = v25;
        goto LABEL_6;
      }
    }

    v39 = v28;
    v19 = v59;
    *(v59 + 8 * (v30 >> 6) + 64) |= 1 << v30;
    v40 = (v19[6] + 16 * v30);
    v41 = v53;
    *v40 = v39;
    v40[1] = v41;
    *(v19[7] + 8 * v30) = v25;
    v42 = v19[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_23;
    }

    v19[2] = v44;
LABEL_6:
    v15 = v51;
    v13 = v52;
    v16 = v20;
    ++v17;
    v18 += 32;
    if (v49 == v17)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_262462C78();
  __break(1u);
  return result;
}

void *sub_26242DDAC(uint64_t a1)
{
  v3 = v1;
  v5 = v3[4];
  v6 = v3[5];
  v7 = __swift_project_boxed_opaque_existential_1(v3 + 1, v5);
  v8 = a1;
  v9 = v7;
  (*(*(v6 + 8) + 24))(&v17, v8, v5);
  if (!v2)
  {
    v10 = v18;
    if (v18)
    {
      v11 = *v3;
      if (*(*v3 + 16) && (v12 = v17, , v13 = sub_2624414FC(v12, v10), v15 = v14, , (v15 & 1) != 0))
      {
        v9 = *(*(v11 + 56) + 8 * v13);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t sub_26242DEFC(uint64_t a1)
{
  v2 = sub_2624312F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242DF38(uint64_t a1)
{
  v2 = sub_2624312F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242DF74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5C0, &qword_262467DD0);
  v64 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v53 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D5C8, &qword_26246AE58);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - v9;
  v11 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2624312F8();
  sub_262462D88();
  if (v2)
  {
    v12 = v65;
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v71[79] = 1;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v66, &v67);
  __swift_destroy_boxed_opaque_existential_1(v66);
  v57 = v71;
  sub_2623EB668(&v67, v71);
  LOBYTE(v67) = 0;
  sub_2623F3688();
  sub_262462B38();
  v54 = v10;
  v55 = v7;
  v56 = v8;
  v14 = v4;
  v61 = v6;
  v15 = sub_262462BC8();
  v59 = *(v15 + 16);
  if (!v59)
  {
    v18 = MEMORY[0x277D84F98];
    v20 = v63;
    v19 = v64;
LABEL_23:

    (*(v19 + 8))(v61, v14);
    (*(v56 + 8))(v54, v55);
    v70 = v18;
    sub_26243134C(&v70, v20);
    __swift_destroy_boxed_opaque_existential_1(v65);
    return sub_262431384(&v70);
  }

  v16 = 0;
  v17 = (v15 + 56);
  v18 = MEMORY[0x277D84F98];
  v62 = v14;
  v60 = v15;
  while (v16 < *(v15 + 16))
  {
    v21 = v16;
    v23 = *(v17 - 3);
    v22 = *(v17 - 2);
    v24 = *(v17 - 1);
    v25 = *v17;
    *&v67 = 0;
    swift_bridgeObjectRetain_n();
    v26 = v22;
    LOBYTE(v22) = sub_2623F95B0(v23, v22, &v67);

    v58 = v23;
    if ((v22 & 1) == 0)
    {

      v42 = v56;
      v43 = v62;
      v44 = v61;
      v45 = v55;
      v46 = sub_262462B48();
      v63 = sub_262427A60(v46);
      v48 = v47;

      *&v67 = MEMORY[0x277D839F8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
      v49 = sub_262462728();
      v51 = v50;
      sub_2623F1BBC();
      swift_allocError();
      *v52 = v63;
      *(v52 + 8) = v48;
      *(v52 + 16) = v58;
      *(v52 + 24) = v26;
      *(v52 + 32) = v49;
      *(v52 + 40) = v51;
      *(v52 + 48) = v67;
      *(v52 + 64) = 4;
      swift_willThrow();
      (*(v64 + 8))(v44, v43);
      (*(v42 + 8))(v54, v45);
      __swift_destroy_boxed_opaque_existential_1(v65);
      v12 = v57;
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    v27 = *&v67;
    *&v67 = v23;
    *(&v67 + 1) = v26;
    v68 = v24;
    v69 = v25;
    sub_262462BA8();
    v29 = v28;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v67 = v18;
    v32 = sub_262441574(v27);
    v33 = v18[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_26;
    }

    v36 = v31;
    if (v18[3] >= v35)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v18 = v67;
        if (v31)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_262461C64();
        v18 = v67;
        if (v36)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_262460840(v35, isUniquelyReferenced_nonNull_native);
      v37 = sub_262441574(v27);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_28;
      }

      v32 = v37;
      v18 = v67;
      if (v36)
      {
LABEL_7:
        *(v18[7] + 8 * v32) = v29;
        goto LABEL_8;
      }
    }

    v18[(v32 >> 6) + 8] |= 1 << v32;
    *(v18[6] + 8 * v32) = v27;
    *(v18[7] + 8 * v32) = v29;
    v39 = v18[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_27;
    }

    v18[2] = v41;
LABEL_8:
    v14 = v62;
    v20 = v63;
    v19 = v64;
    v16 = v21 + 1;
    v17 += 32;
    v15 = v60;
    if (v59 == v21 + 1)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_262462C78();
  __break(1u);
  return result;
}

uint64_t sub_26242E780(uint64_t a1)
{
  v3 = v1;
  v5 = v3[4];
  v6 = v3[5];
  __swift_project_boxed_opaque_existential_1(v3 + 1, v5);
  result = (*(*(v6 + 8) + 24))(&v11, a1, v5);
  if (!v2)
  {
    result = *&v11;
    if ((v12 & 1) == 0)
    {
      v8 = *v3;
      if (*(*v3 + 16))
      {
        v9 = sub_262441574(v11);
        if (v10)
        {
          return *(*(v8 + 56) + 8 * v9);
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26242E894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = a5(a2);
  result = v9;
  if (!v5)
  {
    *a1 = v8;
    *(a1 + 8) = v7 & 1;
  }

  return result;
}

unint64_t sub_26242E8F0()
{
  result = qword_27FF0D3B0;
  if (!qword_27FF0D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3B0);
  }

  return result;
}

unint64_t sub_26242E944()
{
  result = qword_27FF0D3B8;
  if (!qword_27FF0D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3B8);
  }

  return result;
}

unint64_t sub_26242E998()
{
  result = qword_27FF0D3C0;
  if (!qword_27FF0D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3C0);
  }

  return result;
}

unint64_t sub_26242E9EC()
{
  result = qword_27FF0D3C8;
  if (!qword_27FF0D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3C8);
  }

  return result;
}

unint64_t sub_26242EA40()
{
  result = qword_27FF0D3D0;
  if (!qword_27FF0D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3D0);
  }

  return result;
}

unint64_t sub_26242EA94()
{
  result = qword_27FF0D3D8;
  if (!qword_27FF0D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3D8);
  }

  return result;
}

unint64_t sub_26242EAE8()
{
  result = qword_27FF0D3E0;
  if (!qword_27FF0D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3E0);
  }

  return result;
}

unint64_t sub_26242EB3C()
{
  result = qword_27FF0D3E8;
  if (!qword_27FF0D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3E8);
  }

  return result;
}

unint64_t sub_26242EB90()
{
  result = qword_27FF0D3F0;
  if (!qword_27FF0D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3F0);
  }

  return result;
}

unint64_t sub_26242EBE4()
{
  result = qword_27FF0D3F8;
  if (!qword_27FF0D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3F8);
  }

  return result;
}

unint64_t sub_26242EC38()
{
  result = qword_27FF0D400;
  if (!qword_27FF0D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D400);
  }

  return result;
}

unint64_t sub_26242EC8C()
{
  result = qword_27FF0D408;
  if (!qword_27FF0D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D408);
  }

  return result;
}

unint64_t sub_26242ECE0()
{
  result = qword_27FF0D410;
  if (!qword_27FF0D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D410);
  }

  return result;
}

unint64_t sub_26242ED34()
{
  result = qword_27FF0D418;
  if (!qword_27FF0D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D418);
  }

  return result;
}

unint64_t sub_26242ED88()
{
  result = qword_27FF0D420;
  if (!qword_27FF0D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D420);
  }

  return result;
}

unint64_t sub_26242EDDC()
{
  result = qword_27FF0D428;
  if (!qword_27FF0D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D428);
  }

  return result;
}

unint64_t sub_26242EE30()
{
  result = qword_27FF0D430;
  if (!qword_27FF0D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D430);
  }

  return result;
}

unint64_t sub_26242EE84()
{
  result = qword_27FF0D438;
  if (!qword_27FF0D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D438);
  }

  return result;
}

unint64_t sub_26242EED8()
{
  result = qword_27FF0D440;
  if (!qword_27FF0D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D440);
  }

  return result;
}

unint64_t sub_26242EF2C()
{
  result = qword_27FF0D448;
  if (!qword_27FF0D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D448);
  }

  return result;
}

unint64_t sub_26242EF80()
{
  result = qword_27FF0D450;
  if (!qword_27FF0D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D450);
  }

  return result;
}

unint64_t sub_26242EFD4()
{
  result = qword_27FF0D458;
  if (!qword_27FF0D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D458);
  }

  return result;
}

unint64_t sub_26242F028()
{
  result = qword_27FF0D460;
  if (!qword_27FF0D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D460);
  }

  return result;
}

unint64_t sub_26242F07C()
{
  result = qword_27FF0D468;
  if (!qword_27FF0D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D468);
  }

  return result;
}

unint64_t sub_26242F0D0()
{
  result = qword_27FF0D470;
  if (!qword_27FF0D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D470);
  }

  return result;
}

unint64_t sub_26242F124()
{
  result = qword_27FF0D478;
  if (!qword_27FF0D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D478);
  }

  return result;
}

uint64_t type metadata accessor for NumberRule(uint64_t a1)
{
  result = qword_27FF0D4B0;
  if (!qword_27FF0D4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_26242F1C4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7D8, &unk_262464BC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26242F670();
  sub_262462D88();
  if (!v1)
  {
    v8 = sub_2623F6EB0(v7);
    if ((v9 & 1) == 0)
    {
      v2 = *&v8;
      (*(v5 + 8))(v7, v4);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v2;
    }

    v10 = sub_262462B48();
    v11 = sub_262427A60(v10);
    v13 = v12;

    *&v19 = MEMORY[0x277D839F8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
    v14 = sub_262462728();
    v16 = v15;
    sub_2623F1BBC();
    swift_allocError();
    *v17 = v11;
    *(v17 + 8) = v13;
    *(v17 + 16) = 0x65756C6176;
    *(v17 + 24) = 0xE500000000000000;
    *(v17 + 32) = v14;
    *(v17 + 40) = v16;
    *(v17 + 48) = v19;
    *(v17 + 64) = 4;
    swift_willThrow();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_26242F3F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7E0, &unk_26246A0E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_26242F6C4();
  sub_262462D88();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_262462B88();
    sub_2623F7084(v6, 1);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_26242F5C8()
{
  result = qword_27FF0D488;
  if (!qword_27FF0D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D488);
  }

  return result;
}

unint64_t sub_26242F61C()
{
  result = qword_27FF0D490;
  if (!qword_27FF0D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D490);
  }

  return result;
}

unint64_t sub_26242F670()
{
  result = qword_27FF0D498;
  if (!qword_27FF0D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D498);
  }

  return result;
}

unint64_t sub_26242F6C4()
{
  result = qword_27FF0D4A0;
  if (!qword_27FF0D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D4A0);
  }

  return result;
}

unint64_t sub_26242F718()
{
  result = qword_27FF0D4A8;
  if (!qword_27FF0D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D4A8);
  }

  return result;
}

uint64_t sub_26242F76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NumberRule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26242F7D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26242F8A8(uint64_t a1)
{
  sub_26242F954();
  if (v1 <= 0x3F)
  {
    type metadata accessor for RulesValidity(319);
    if (v2 <= 0x3F)
    {
      sub_26242F9A4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26242F954()
{
  if (!qword_27FF0D4C0)
  {
    v0 = sub_262462928();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF0D4C0);
    }
  }
}

unint64_t sub_26242F9A4()
{
  result = qword_27FF0D4C8;
  if (!qword_27FF0D4C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FF0D4C8);
  }

  return result;
}

uint64_t sub_26242FA78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_26242FAC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26242FB40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26242FB88(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for NumberExpressionDecoder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NumberExpressionDecoder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26242FD58()
{
  result = qword_27FF0D4D0;
  if (!qword_27FF0D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D4D0);
  }

  return result;
}

unint64_t sub_26242FDAC(uint64_t a1)
{
  result = sub_26242E944();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FDD4(uint64_t a1)
{
  result = sub_26242E9EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FDFC(uint64_t a1)
{
  result = sub_26242EA94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FE24(uint64_t a1)
{
  result = sub_26242EB3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FE4C(uint64_t a1)
{
  result = sub_26242EBE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FE74(uint64_t a1)
{
  result = sub_26242EC8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FE9C(uint64_t a1)
{
  result = sub_26242ED34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FEC4(uint64_t a1)
{
  result = sub_26242EDDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FEEC(uint64_t a1)
{
  result = sub_26242EE84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FF14(uint64_t a1)
{
  result = sub_26242EF2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FF3C(uint64_t a1)
{
  result = sub_26242EFD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FF64(uint64_t a1)
{
  result = sub_26242F07C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FF8C(uint64_t a1)
{
  result = sub_26242F124();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26242FFB4(uint64_t a1)
{
  result = sub_26243056C(&qword_27FF0D4D8, type metadata accessor for NumberRule, &unk_26246A654);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26243000C(uint64_t a1)
{
  result = sub_262430034();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430034()
{
  result = qword_27FF0D4E0;
  if (!qword_27FF0D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D4E0);
  }

  return result;
}

unint64_t sub_262430088(uint64_t a1)
{
  result = sub_2624300B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624300B0()
{
  result = qword_27FF0D4E8;
  if (!qword_27FF0D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D4E8);
  }

  return result;
}

unint64_t sub_262430108()
{
  result = qword_27FF0D4F0;
  if (!qword_27FF0D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D4F0);
  }

  return result;
}

unint64_t sub_262430160()
{
  result = qword_27FF0D4F8;
  if (!qword_27FF0D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D4F8);
  }

  return result;
}

unint64_t sub_2624301B8()
{
  result = qword_27FF0D500;
  if (!qword_27FF0D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D500);
  }

  return result;
}

unint64_t sub_262430210()
{
  result = qword_27FF0D508;
  if (!qword_27FF0D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D508);
  }

  return result;
}

unint64_t sub_262430268()
{
  result = qword_27FF0D510;
  if (!qword_27FF0D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D510);
  }

  return result;
}

unint64_t sub_2624302C0()
{
  result = qword_27FF0D518;
  if (!qword_27FF0D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D518);
  }

  return result;
}

unint64_t sub_262430318()
{
  result = qword_27FF0D520;
  if (!qword_27FF0D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D520);
  }

  return result;
}

unint64_t sub_262430370()
{
  result = qword_27FF0D528;
  if (!qword_27FF0D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D528);
  }

  return result;
}

unint64_t sub_2624303C8()
{
  result = qword_27FF0D530;
  if (!qword_27FF0D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D530);
  }

  return result;
}

unint64_t sub_26243041C(uint64_t a1)
{
  result = sub_262430444();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430444()
{
  result = qword_27FF0D538;
  if (!qword_27FF0D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D538);
  }

  return result;
}

unint64_t sub_262430498(uint64_t a1)
{
  result = sub_2624304C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624304C0()
{
  result = qword_27FF0D540;
  if (!qword_27FF0D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D540);
  }

  return result;
}

uint64_t sub_262430514(uint64_t a1)
{
  result = sub_26243056C(&qword_27FF0D548, type metadata accessor for NumberRule, &unk_26246A67C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26243056C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2624305B4(uint64_t a1)
{
  result = sub_2624305DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624305DC()
{
  result = qword_27FF0D550;
  if (!qword_27FF0D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D550);
  }

  return result;
}

unint64_t sub_262430630(uint64_t a1)
{
  result = sub_262430658();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430658()
{
  result = qword_27FF0D558;
  if (!qword_27FF0D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D558);
  }

  return result;
}

unint64_t sub_2624306AC(uint64_t a1)
{
  result = sub_2624306D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624306D4()
{
  result = qword_27FF0D560;
  if (!qword_27FF0D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D560);
  }

  return result;
}

unint64_t sub_262430728(uint64_t a1)
{
  result = sub_262430750();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430750()
{
  result = qword_27FF0D568;
  if (!qword_27FF0D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D568);
  }

  return result;
}

unint64_t sub_2624307A4(uint64_t a1)
{
  result = sub_2624307CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624307CC()
{
  result = qword_27FF0D570;
  if (!qword_27FF0D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D570);
  }

  return result;
}

unint64_t sub_262430820(uint64_t a1)
{
  result = sub_262430848();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430848()
{
  result = qword_27FF0D578;
  if (!qword_27FF0D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D578);
  }

  return result;
}

unint64_t sub_26243089C(uint64_t a1)
{
  result = sub_2624308C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624308C4()
{
  result = qword_27FF0D580;
  if (!qword_27FF0D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D580);
  }

  return result;
}

unint64_t sub_262430918(uint64_t a1)
{
  result = sub_262430940();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430940()
{
  result = qword_27FF0D588;
  if (!qword_27FF0D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D588);
  }

  return result;
}

unint64_t sub_262430994(uint64_t a1)
{
  result = sub_2624309BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624309BC()
{
  result = qword_27FF0D590;
  if (!qword_27FF0D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D590);
  }

  return result;
}

unint64_t sub_262430A10(uint64_t a1)
{
  result = sub_262430A38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430A38()
{
  result = qword_27FF0D598;
  if (!qword_27FF0D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D598);
  }

  return result;
}

unint64_t sub_262430A8C(uint64_t a1)
{
  result = sub_262430AB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430AB4()
{
  result = qword_27FF0D5A0;
  if (!qword_27FF0D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5A0);
  }

  return result;
}

unint64_t sub_262430B08(uint64_t a1)
{
  result = sub_262430B30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430B30()
{
  result = qword_27FF0D5A8;
  if (!qword_27FF0D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5A8);
  }

  return result;
}

unint64_t sub_262430B84(uint64_t a1)
{
  result = sub_262430BAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430BAC()
{
  result = qword_27FF0D5B0;
  if (!qword_27FF0D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5B0);
  }

  return result;
}

unint64_t sub_262430C04()
{
  result = qword_27FF0D5B8;
  if (!qword_27FF0D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5B8);
  }

  return result;
}

unint64_t sub_262430C5C()
{
  result = qword_27FF0D5C0;
  if (!qword_27FF0D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5C0);
  }

  return result;
}

uint64_t sub_262430CB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002624717E0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C615673656C7572 && a2 == 0xED00007974696469 || (sub_262462C58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6369676F6CLL && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F69746152 && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7889229 && a2 == 0xE300000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6765746E49746547 && a2 == 0xEE00737469427265 || (sub_262462C58() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026246A190 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026246A170 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026246A150 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x654C676E69727453 && a2 == 0xEC0000006874676ELL || (sub_262462C58() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026246A130 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x614D7265626D754ELL && a2 == 0xEF65736143686374 || (sub_262462C58() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x7265626D754E6F54 && a2 == 0xE800000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026246A110 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026246A0F0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026246A0D0 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_262462C58();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

unint64_t sub_2624312F8()
{
  result = qword_27FF0D5D0;
  if (!qword_27FF0D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5D0);
  }

  return result;
}

unint64_t sub_2624313B4()
{
  result = qword_27FF0D5E0;
  if (!qword_27FF0D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5E0);
  }

  return result;
}

unint64_t sub_262431470()
{
  result = qword_27FF0D5E8;
  if (!qword_27FF0D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5E8);
  }

  return result;
}

unint64_t sub_26243152C()
{
  result = qword_27FF0D5F8;
  if (!qword_27FF0D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5F8);
  }

  return result;
}

unint64_t sub_262431580()
{
  result = qword_27FF0D608;
  if (!qword_27FF0D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D608);
  }

  return result;
}

unint64_t sub_26243163C()
{
  result = qword_27FF0D610;
  if (!qword_27FF0D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D610);
  }

  return result;
}

unint64_t sub_2624316F8()
{
  result = qword_27FF0D620;
  if (!qword_27FF0D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D620);
  }

  return result;
}

unint64_t sub_26243174C()
{
  result = qword_27FF0D630;
  if (!qword_27FF0D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D630);
  }

  return result;
}

unint64_t sub_2624317A0()
{
  result = qword_27FF0D640;
  if (!qword_27FF0D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D640);
  }

  return result;
}

unint64_t sub_2624317F4()
{
  result = qword_27FF0D650;
  if (!qword_27FF0D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D650);
  }

  return result;
}

unint64_t sub_2624318B0()
{
  result = qword_27FF0D658;
  if (!qword_27FF0D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D658);
  }

  return result;
}

void *sub_26243196C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D660, &qword_26246AEB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_262431C4C();
  sub_262462D88();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_262462B28();
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = sub_262462C48();
    v7 = MEMORY[0x277D84F90];
    if ((v9 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
        sub_262462C38();
        type metadata accessor for NumberExpressionDecoder();
        sub_262427F88(v13, v14);
        __swift_destroy_boxed_opaque_existential_1(v13);
        sub_2623F3CA4(v14, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_26243C81C(0, v7[2] + 1, 1, v7);
        }

        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          v7 = sub_26243C81C((v10 > 1), v11 + 1, 1, v7);
        }

        __swift_destroy_boxed_opaque_existential_1(v14);
        v7[2] = v11 + 1;
        sub_2623EB668(v13, &v7[5 * v11 + 4]);
        __swift_project_boxed_opaque_existential_1(v15, v16);
      }

      while ((sub_262462C48() & 1) == 0);
    }

    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_262431C4C()
{
  result = qword_27FF0D668;
  if (!qword_27FF0D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D668);
  }

  return result;
}

unint64_t sub_262431CA0()
{
  result = qword_27FF0D678;
  if (!qword_27FF0D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D678);
  }

  return result;
}

unint64_t sub_262431E30()
{
  result = qword_27FF0D6A8;
  if (!qword_27FF0D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6A8);
  }

  return result;
}

unint64_t sub_262431E88()
{
  result = qword_27FF0D6B0;
  if (!qword_27FF0D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6B0);
  }

  return result;
}

unint64_t sub_262431EE0()
{
  result = qword_27FF0D6B8;
  if (!qword_27FF0D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6B8);
  }

  return result;
}

unint64_t sub_262431F38()
{
  result = qword_27FF0D6C0;
  if (!qword_27FF0D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6C0);
  }

  return result;
}

unint64_t sub_262431F90()
{
  result = qword_27FF0D6C8;
  if (!qword_27FF0D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6C8);
  }

  return result;
}

unint64_t sub_262431FE8()
{
  result = qword_27FF0D6D0;
  if (!qword_27FF0D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6D0);
  }

  return result;
}

unint64_t sub_262432040()
{
  result = qword_27FF0D6D8;
  if (!qword_27FF0D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6D8);
  }

  return result;
}

unint64_t sub_262432098()
{
  result = qword_27FF0D6E0;
  if (!qword_27FF0D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6E0);
  }

  return result;
}

unint64_t sub_2624320F0()
{
  result = qword_27FF0D6E8;
  if (!qword_27FF0D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6E8);
  }

  return result;
}

unint64_t sub_262432148()
{
  result = qword_27FF0D6F0;
  if (!qword_27FF0D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6F0);
  }

  return result;
}

unint64_t sub_2624321A0()
{
  result = qword_27FF0D6F8;
  if (!qword_27FF0D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6F8);
  }

  return result;
}

unint64_t sub_2624321F8()
{
  result = qword_27FF0D700;
  if (!qword_27FF0D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D700);
  }

  return result;
}

unint64_t sub_262432250()
{
  result = qword_27FF0D708;
  if (!qword_27FF0D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D708);
  }

  return result;
}

unint64_t sub_2624322A8()
{
  result = qword_27FF0D710;
  if (!qword_27FF0D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D710);
  }

  return result;
}

unint64_t sub_262432300()
{
  result = qword_27FF0D718;
  if (!qword_27FF0D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D718);
  }

  return result;
}

unint64_t sub_262432358()
{
  result = qword_27FF0D720;
  if (!qword_27FF0D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D720);
  }

  return result;
}

unint64_t sub_2624323B0()
{
  result = qword_27FF0D728;
  if (!qword_27FF0D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D728);
  }

  return result;
}

unint64_t sub_262432408()
{
  result = qword_27FF0D730;
  if (!qword_27FF0D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D730);
  }

  return result;
}

unint64_t sub_262432460()
{
  result = qword_27FF0D738;
  if (!qword_27FF0D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D738);
  }

  return result;
}

unint64_t sub_2624324B8()
{
  result = qword_27FF0D740;
  if (!qword_27FF0D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D740);
  }

  return result;
}

unint64_t sub_262432510()
{
  result = qword_27FF0D748;
  if (!qword_27FF0D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D748);
  }

  return result;
}

unint64_t sub_262432568()
{
  result = qword_27FF0D750;
  if (!qword_27FF0D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D750);
  }

  return result;
}

unint64_t sub_2624325C0()
{
  result = qword_27FF0D758;
  if (!qword_27FF0D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D758);
  }

  return result;
}

unint64_t sub_262432618()
{
  result = qword_27FF0D760;
  if (!qword_27FF0D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D760);
  }

  return result;
}

unint64_t sub_262432670()
{
  result = qword_27FF0D768;
  if (!qword_27FF0D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D768);
  }

  return result;
}

unint64_t sub_2624326C8()
{
  result = qword_27FF0D770;
  if (!qword_27FF0D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D770);
  }

  return result;
}

unint64_t sub_262432720()
{
  result = qword_27FF0D778;
  if (!qword_27FF0D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D778);
  }

  return result;
}

unint64_t sub_262432778()
{
  result = qword_27FF0D780;
  if (!qword_27FF0D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D780);
  }

  return result;
}

unint64_t sub_2624327D0()
{
  result = qword_27FF0D788;
  if (!qword_27FF0D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D788);
  }

  return result;
}

unint64_t sub_262432828()
{
  result = qword_27FF0D790;
  if (!qword_27FF0D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D790);
  }

  return result;
}

unint64_t sub_262432880()
{
  result = qword_27FF0D798;
  if (!qword_27FF0D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D798);
  }

  return result;
}

unint64_t sub_2624328D8()
{
  result = qword_27FF0D7A0;
  if (!qword_27FF0D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7A0);
  }

  return result;
}

unint64_t sub_262432930()
{
  result = qword_27FF0D7A8;
  if (!qword_27FF0D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7A8);
  }

  return result;
}

unint64_t sub_262432988()
{
  result = qword_27FF0D7B0;
  if (!qword_27FF0D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7B0);
  }

  return result;
}

unint64_t sub_2624329E0()
{
  result = qword_27FF0D7B8;
  if (!qword_27FF0D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7B8);
  }

  return result;
}

unint64_t sub_262432A38()
{
  result = qword_27FF0D7C0;
  if (!qword_27FF0D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7C0);
  }

  return result;
}

unint64_t sub_262432A90()
{
  result = qword_27FF0D7C8;
  if (!qword_27FF0D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7C8);
  }

  return result;
}

unint64_t sub_262432AE8()
{
  result = qword_27FF0D7D0;
  if (!qword_27FF0D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7D0);
  }

  return result;
}

unint64_t sub_262432B40()
{
  result = qword_27FF0D7D8;
  if (!qword_27FF0D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7D8);
  }

  return result;
}

uint64_t sub_262432B94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_262462C58();

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

uint64_t sub_262432CC8(uint64_t a1)
{
  v2 = sub_2624629B8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_26243E250(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_262432D44(uint64_t a1)
{
  v2 = sub_2624629B8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_26243DF24(v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_262432DB4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_262432E60(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = v6;
      v9 = *(v7 - 1);
      v10 = *v7;
      v13 = *(v7 - 2);
      v14 = v9;
      v15 = v10;
      sub_2623F989C(v13, v9, v10);
      v11 = a1(&v13);
      sub_2623F98B8(v13, v14, v15);
      LOBYTE(v4) = (v3 != 0) | v11;
      if ((v3 != 0) | v11 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 24;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_262432F18(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = v6;
      v9 = *(v7 - 1);
      v10 = *v7;
      v13 = *(v7 - 2);
      v14 = v9;
      v15 = v10;
      sub_262419944(v13, v9, v10);
      v11 = a1(&v13);
      sub_262419958(v13, v14, v15);
      LOBYTE(v4) = (v3 != 0) | v11;
      if ((v3 != 0) | v11 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 24;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_262432FD0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 2);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v8;
      v14[3] = v9;

      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      v12 = v6-- == 0;
      v7 += 4;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_262433094(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_262432CC8(a2);
    v8[0] = result;
    v8[1] = v6;
    if (v6)
    {
      MEMORY[0x28223BE20](result);
      v7[2] = v8;
      v3 = sub_262432DB4(sub_26243FDD8, v7, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return sub_26243A920(a1, a2);
  }

  return result;
}

uint64_t sub_262433174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_262432D44(a2);
    v10[0] = result;
    v10[1] = v6;
    v10[2] = v7;
    v10[3] = v8;
    if (v6)
    {
      MEMORY[0x28223BE20](result);
      v9[2] = v10;
      v3 = sub_262432FD0(sub_26243FFB8, v9, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return sub_26243AAA0(a1, a2);
  }

  return result;
}

uint64_t LogicGraphAsset.init(with:and:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 1096) = a3;
  *(v3 + 1088) = a1;
  sub_262462718();
  *(v3 + 1104) = swift_task_alloc();
  v5 = sub_262462558();
  *(v3 + 1112) = v5;
  *(v3 + 1120) = *(v5 - 8);
  *(v3 + 1128) = swift_task_alloc();
  v6 = sub_262462588();
  *(v3 + 1136) = v6;
  *(v3 + 1144) = *(v6 - 8);
  *(v3 + 1152) = swift_task_alloc();
  *(v3 + 1160) = swift_task_alloc();
  *(v3 + 1168) = swift_task_alloc();
  *(v3 + 1176) = swift_task_alloc();
  *(v3 + 1184) = swift_task_alloc();
  *(v3 + 1192) = *a2;
  *(v3 + 1208) = *(a2 + 16);
  *(v3 + 1216) = *(a2 + 24);
  *(v3 + 1232) = *(a2 + 40);
  *(v3 + 689) = *(a2 + 48);

  return MEMORY[0x2822009F8](sub_26243340C, 0, 0);
}

uint64_t sub_26243340C()
{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1208);
  *(v0 + 1056) = sub_262462738();
  *(v0 + 1064) = v3;
  *(v0 + 1240) = v3;
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v5 = *(v0 + 1200);
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 1192) & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  if (v6 && ((v7 = *(v0 + 1232), (v7 & 0x2000000000000000) != 0) ? (v8 = HIBYTE(v7) & 0xF) : (v8 = *(v0 + 1224) & 0xFFFFFFFFFFFFLL), v8))
  {
    v9 = *(v0 + 1128);
    v10 = *(v0 + 1120);
    v11 = *(v0 + 1112);
    strcpy((v0 + 1008), "metadata.json");
    *(v0 + 1022) = -4864;
    *(v0 + 692) = *MEMORY[0x277CC91D8];
    v12 = *(v10 + 104);
    *(v0 + 1248) = v12;
    *(v0 + 1256) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v12(v9);
    *(v0 + 1264) = sub_262436704();
    sub_262462578();
    v13 = *(v10 + 8);
    *(v0 + 1272) = v13;
    *(v0 + 1280) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v9, v11);
    sub_262462708();
    v14 = sub_2624626C8();
    v16 = v15;
    sub_262462418();
    swift_allocObject();
    sub_262462408();
    v17 = sub_2623F47D4(v14, v16);
    v19 = v18;
    sub_262436758();
    sub_2624623F8();
    sub_2623F4694(v17, v19);

    result = *(v0 + 944);
    *(v0 + 1288) = result;
    v29 = *(v0 + 952);
    *(v0 + 1296) = v29;
    v30 = *(result + 16);
    *(v0 + 1304) = v30;
    if (v30)
    {
      *(v0 + 1320) = MEMORY[0x277D84F90];
      *(v0 + 1312) = 0;
      if (*(result + 16))
      {
        v91 = *(v0 + 1272);
        v87 = *(v0 + 1248);
        v86 = *(v0 + 692);
        v31 = *(v0 + 1128);
        v32 = *(v0 + 1112);
        v33 = *(result + 32);
        v34 = *(result + 40);
        *(v0 + 1328) = v34;
        v36 = *(result + 48);
        v35 = *(result + 56);
        *(v0 + 1336) = v35;
        v37 = *(result + 72);
        v85 = *(result + 64);
        *(v0 + 1344) = v37;
        v38 = *(result + 80);
        v84 = v33;
        *(v0 + 1024) = v33;
        *(v0 + 1032) = v34;
        swift_bridgeObjectRetain_n();

        MEMORY[0x266728460](47, 0xE100000000000000);

        MEMORY[0x266728460](v36, v35);

        MEMORY[0x266728460](1954051118, 0xE400000000000000);
        v39 = *(v0 + 1032);
        *(v0 + 1040) = *(v0 + 1024);
        *(v0 + 1048) = v39;
        v87(v31, v86, v32);
        sub_262462578();
        v91(v31, v32);

        v40 = *(v0 + 1176);
        v41 = *(v0 + 1144);
        v42 = *(v0 + 1136);
        if (v38)
        {
          if (v38 == 1)
          {
            v43 = *(v0 + 1160);
            *(v0 + 696) = v84;
            *(v0 + 704) = v34;
            *(v0 + 712) = v36;
            *(v0 + 720) = v35;
            *(v0 + 728) = v85;
            *(v0 + 736) = v37;
            *(v0 + 744) = 1;
            (*(v41 + 16))(v43, v40, v42);

            v44 = swift_task_alloc();
            *(v0 + 1368) = v44;
            *v44 = v0;
            v44[1] = sub_262434A78;
            v45 = *(v0 + 1160);

            return sub_26243FFEC(v0 + 480, v0 + 696, v45);
          }

          else
          {
            v54 = *(v0 + 1152);
            *(v0 + 640) = v84;
            *(v0 + 648) = v34;
            *(v0 + 656) = v36;
            *(v0 + 664) = v35;
            *(v0 + 672) = v85;
            *(v0 + 680) = v37;
            *(v0 + 688) = 2;
            (*(v41 + 16))(v54, v40, v42);

            v55 = swift_task_alloc();
            *(v0 + 1384) = v55;
            *v55 = v0;
            v55[1] = sub_262435530;
            v56 = *(v0 + 1152);

            return LogicGraphAsset.init(with:and:)(v0 + 304, v0 + 640, v56);
          }
        }

        else
        {
          v51 = *(v0 + 1168);
          *(v0 + 752) = v84;
          *(v0 + 760) = v34;
          *(v0 + 768) = v36;
          *(v0 + 776) = v35;
          *(v0 + 784) = v85;
          *(v0 + 792) = v37;
          *(v0 + 800) = 0;
          (*(v41 + 16))(v51, v40, v42);

          v52 = swift_task_alloc();
          *(v0 + 1352) = v52;
          *v52 = v0;
          v52[1] = sub_262433FC0;
          v53 = *(v0 + 1168);

          return sub_26242736C(v0 + 16, v0 + 752, v53);
        }
      }

LABEL_46:
      __break(1u);
      return result;
    }

    v46 = 0;
    v47 = *(v29 + 16);
    v48 = v29 + 32;
    while (v47 != v46)
    {
      v49 = *(v48 + 8 * v46++);
      if (*(v49 + 16) != 2)
      {

        sub_2623F1BBC();
        swift_allocError();
        *v50 = 0x6172676369676F6CLL;
        *(v50 + 8) = 0xEA00000000006870;
        *(v50 + 16) = 0xD00000000000004ALL;
        *(v50 + 24) = 0x8000000262472240;
        *(v50 + 32) = v94;
        *(v50 + 48) = v96;
        *(v50 + 64) = 0;
        swift_willThrow();
        v20 = *(v0 + 1184);
        v21 = *(v0 + 1136);
        v22 = *(*(v0 + 1144) + 8);
        v22(*(v0 + 1096), v21);
        v22(v20, v21);

        goto LABEL_13;
      }
    }

    if (v47)
    {
      v95 = MEMORY[0x277D84F90];
      result = sub_26243CDC0(0, v47, 0);
      v57 = v95;
      while (1)
      {
        v58 = *v48;
        v59 = *(*v48 + 16);
        if (!v59)
        {
          break;
        }

        if (v59 == 1)
        {
          goto LABEL_45;
        }

        v60 = v58[5];
        v61 = v58[7];
        v89 = v58[6];
        v90 = v58[4];
        v62 = v58[9];
        v88 = v58[8];
        v63 = v58[11];
        v65 = *(v95 + 16);
        v64 = *(v95 + 24);
        v92 = v58[10];
        v93 = v65 + 1;

        if (v65 >= v64 >> 1)
        {
          result = sub_26243CDC0((v64 > 1), v93, 1);
        }

        *(v95 + 16) = v93;
        v66 = (v95 + (v65 << 6));
        v66[4] = v90;
        v66[5] = v60;
        v66[6] = v89;
        v66[7] = v61;
        v66[8] = v88;
        v66[9] = v62;
        v48 += 8;
        v66[10] = v92;
        v66[11] = v63;
        if (!--v47)
        {
          v67 = *(v0 + 1184);
          v68 = *(v0 + 1144);
          v69 = *(v0 + 1136);
          v70 = *(v0 + 1096);

          v71 = *(v68 + 8);
          v71(v70, v69);
          v71(v67, v69);
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v72 = *(v0 + 1184);
    v73 = *(v0 + 1144);
    v74 = *(v0 + 1136);
    v75 = *(v0 + 1096);

    v76 = *(v73 + 8);
    v76(v75, v74);
    v76(v72, v74);
    v57 = MEMORY[0x277D84F90];
LABEL_43:
    v77 = *(v0 + 1240);
    v78 = *(v0 + 1056);
    v79 = *(v0 + 689);
    v80 = *(v0 + 1232);
    v81 = *(v0 + 1224);
    v82 = *(v0 + 1208);
    v83 = *(v0 + 1088);
    *v83 = *(v0 + 1192);
    *(v83 + 16) = v82;
    *(v83 + 32) = v81;
    *(v83 + 40) = v80;
    *(v83 + 48) = v79;
    *(v83 + 56) = MEMORY[0x277D84F90];
    *(v83 + 64) = v57;
    *(v83 + 72) = v78;
    *(v83 + 80) = v77;

    v27 = *(v0 + 8);
  }

  else
  {
LABEL_12:
    v23 = *(v0 + 1144);
    v24 = *(v0 + 1136);
    v25 = *(v0 + 1096);

    sub_2623F1BBC();
    swift_allocError();
    *v26 = 0x6172676369676F6CLL;
    *(v26 + 8) = 0xEA00000000006870;
    *(v26 + 16) = 0xD00000000000002BLL;
    *(v26 + 24) = 0x8000000262471FF0;
    *(v26 + 32) = v94;
    *(v26 + 48) = v96;
    *(v26 + 64) = 0;
    swift_willThrow();
    (*(v23 + 8))(v25, v24);
LABEL_13:

    v27 = *(v0 + 8);
  }

  return v27();
}

uint64_t sub_262433FC0()
{
  *(*v1 + 1360) = v0;

  if (v0)
  {

    v2 = sub_262435FFC;
  }

  else
  {
    v2 = sub_2624340F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2624340F4()
{
  sub_26243CDE0(v0 + 16, v0 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 1320);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_26243CBD8((v3 > 1), v4 + 1, 1, v2, &qword_27FF0D870, &qword_26246BE58, &qword_27FF0D878, &qword_26246BE60);
    }

    v5 = *(v0 + 1176);
    v6 = *(v0 + 1144);
    v7 = *(v0 + 1136);

    sub_26243CE3C(v0 + 16);
    (*(v6 + 8))(v5, v7);
    *(v0 + 912) = &type metadata for RuleAsset;
    *(v0 + 920) = &off_281EC4F60;
    v8 = swift_allocObject();
    *(v0 + 888) = v8;
    sub_26243CDE0(v0 + 160, v8 + 16);
    v2[2] = v4 + 1;
    sub_2623EB668((v0 + 888), &v2[5 * v4 + 4]);
    result = sub_26243CE3C(v0 + 160);
    v10 = *(v0 + 1312) + 1;
    if (v10 != *(v0 + 1304))
    {
      break;
    }

    v11 = *(v0 + 1296);

    v12 = 0;
    v13 = *(v11 + 16);
    v14 = v11 + 32;
    while (v13 != v12)
    {
      v15 = *(v14 + 8 * v12++);
      if (*(v15 + 16) != 2)
      {

        sub_2623F1BBC();
        swift_allocError();
        *v16 = 0x6172676369676F6CLL;
        *(v16 + 8) = 0xEA00000000006870;
        *(v16 + 16) = 0xD00000000000004ALL;
        *(v16 + 24) = 0x8000000262472240;
        *(v16 + 32) = v87;
        *(v16 + 48) = v88;
        *(v16 + 64) = 0;
        swift_willThrow();
        v17 = *(v0 + 1184);
        v18 = *(v0 + 1136);
        v19 = *(*(v0 + 1144) + 8);
        v19(*(v0 + 1096), v18);
        v19(v17, v18);

        v20 = *(v0 + 8);
LABEL_31:

        return v20();
      }
    }

    v81 = v2;
    if (!v13)
    {
      v64 = *(v0 + 1184);
      v65 = *(v0 + 1144);
      v66 = *(v0 + 1136);
      v67 = *(v0 + 1096);

      v68 = *(v65 + 8);
      v68(v67, v66);
      v68(v64, v66);
      v38 = MEMORY[0x277D84F90];
LABEL_30:
      v69 = *(v0 + 1240);
      v70 = *(v0 + 1056);
      v71 = *(v0 + 689);
      v72 = *(v0 + 1232);
      v73 = *(v0 + 1224);
      v74 = *(v0 + 1208);
      v75 = *(v0 + 1088);
      *v75 = *(v0 + 1192);
      *(v75 + 16) = v74;
      *(v75 + 32) = v73;
      *(v75 + 40) = v72;
      *(v75 + 48) = v71;
      *(v75 + 56) = v81;
      *(v75 + 64) = v38;
      *(v75 + 72) = v70;
      *(v75 + 80) = v69;

      v20 = *(v0 + 8);
      goto LABEL_31;
    }

    v80 = v0;
    *&v87 = MEMORY[0x277D84F90];
    sub_26243CDC0(0, v13, 0);
    v38 = v87;
    while (1)
    {
      v39 = *v14;
      v40 = *(*v14 + 16);
      if (!v40)
      {
        break;
      }

      if (v40 == 1)
      {
        goto LABEL_35;
      }

      v41 = v39[5];
      v42 = v39[7];
      v83 = v39[6];
      v85 = v39[4];
      v43 = v39[9];
      v82 = v39[8];
      v44 = v39[11];
      v86 = v39[10];
      *&v87 = v38;
      v0 = *(v38 + 16);
      v45 = *(v38 + 24);
      v2 = (v0 + 1);

      if (v0 >= v45 >> 1)
      {
        sub_26243CDC0((v45 > 1), v0 + 1, 1);
      }

      *(v38 + 16) = v2;
      v46 = (v38 + (v0 << 6));
      v46[4] = v85;
      v46[5] = v41;
      v46[6] = v83;
      v46[7] = v42;
      v46[8] = v82;
      v46[9] = v43;
      v14 += 8;
      v46[10] = v86;
      v46[11] = v44;
      if (!--v13)
      {
        v0 = v80;
        v59 = v80[148];
        v60 = v80[143];
        v61 = v80[142];
        v62 = v80[137];

        v63 = *(v60 + 8);
        v63(v62, v61);
        v63(v59, v61);
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v2 = sub_26243CBD8(0, v2[2] + 1, 1, v2, &qword_27FF0D870, &qword_26246BE58, &qword_27FF0D878, &qword_26246BE60);
  }

  *(v0 + 1320) = v2;
  *(v0 + 1312) = v10;
  v21 = *(v0 + 1288);
  if (v10 >= *(v21 + 16))
  {
    __break(1u);
  }

  else
  {
    v84 = *(v0 + 1272);
    v79 = *(v0 + 1248);
    v78 = *(v0 + 692);
    v22 = *(v0 + 1128);
    v23 = *(v0 + 1112);
    v24 = v21 + 56 * v10;
    v25 = *(v24 + 32);
    v26 = *(v24 + 40);
    *(v0 + 1328) = v26;
    v28 = *(v24 + 48);
    v27 = *(v24 + 56);
    *(v0 + 1336) = v27;
    v29 = *(v24 + 72);
    v77 = *(v24 + 64);
    *(v0 + 1344) = v29;
    v30 = *(v24 + 80);
    v76 = v25;
    *(v0 + 1024) = v25;
    *(v0 + 1032) = v26;
    swift_bridgeObjectRetain_n();

    MEMORY[0x266728460](47, 0xE100000000000000);

    MEMORY[0x266728460](v28, v27);

    MEMORY[0x266728460](1954051118, 0xE400000000000000);
    v31 = *(v0 + 1032);
    *(v0 + 1040) = *(v0 + 1024);
    *(v0 + 1048) = v31;
    v79(v22, v78, v23);
    sub_262462578();
    v84(v22, v23);

    if (v30)
    {
      if (v30 == 1)
      {
        v32 = *(v0 + 1176);
        v33 = *(v0 + 1160);
        v34 = *(v0 + 1144);
        v35 = *(v0 + 1136);
        *(v0 + 696) = v76;
        *(v0 + 704) = v26;
        *(v0 + 712) = v28;
        *(v0 + 720) = v27;
        *(v0 + 728) = v77;
        *(v0 + 736) = v29;
        *(v0 + 744) = 1;
        (*(v34 + 16))(v33, v32, v35);

        v36 = swift_task_alloc();
        *(v0 + 1368) = v36;
        *v36 = v0;
        v36[1] = sub_262434A78;
        v37 = *(v0 + 1160);

        return sub_26243FFEC(v0 + 480, v0 + 696, v37);
      }

      else
      {
        v53 = *(v0 + 1176);
        v54 = *(v0 + 1152);
        v55 = *(v0 + 1144);
        v56 = *(v0 + 1136);
        *(v0 + 640) = v76;
        *(v0 + 648) = v26;
        *(v0 + 656) = v28;
        *(v0 + 664) = v27;
        *(v0 + 672) = v77;
        *(v0 + 680) = v29;
        *(v0 + 688) = 2;
        (*(v55 + 16))(v54, v53, v56);

        v57 = swift_task_alloc();
        *(v0 + 1384) = v57;
        *v57 = v0;
        v57[1] = sub_262435530;
        v58 = *(v0 + 1152);

        return LogicGraphAsset.init(with:and:)(v0 + 304, v0 + 640, v58);
      }
    }

    else
    {
      v47 = *(v0 + 1176);
      v48 = *(v0 + 1168);
      v49 = *(v0 + 1144);
      v50 = *(v0 + 1136);
      *(v0 + 752) = v76;
      *(v0 + 760) = v26;
      *(v0 + 768) = v28;
      *(v0 + 776) = v27;
      *(v0 + 784) = v77;
      *(v0 + 792) = v29;
      *(v0 + 800) = 0;
      (*(v49 + 16))(v48, v47, v50);

      v51 = swift_task_alloc();
      *(v0 + 1352) = v51;
      *v51 = v0;
      v51[1] = sub_262433FC0;
      v52 = *(v0 + 1168);

      return sub_26242736C(v0 + 16, v0 + 752, v52);
    }
  }

  return result;
}

uint64_t sub_262434A78()
{
  *(*v1 + 1376) = v0;

  if (v0)
  {

    v2 = sub_262436254;
  }

  else
  {
    v2 = sub_262434BAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_262434BAC()
{
  v1 = *(v0 + 528);
  *(v0 + 592) = *(v0 + 512);
  *(v0 + 608) = v1;
  *(v0 + 624) = *(v0 + 544);
  v2 = *(v0 + 496);
  *(v0 + 560) = *(v0 + 480);
  *(v0 + 576) = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 1320);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_26243CBD8((v5 > 1), v6 + 1, 1, v4, &qword_27FF0D870, &qword_26246BE58, &qword_27FF0D878, &qword_26246BE60);
    }

    v7 = *(v0 + 1176);
    v8 = *(v0 + 1144);
    v9 = *(v0 + 1136);

    (*(v8 + 8))(v7, v9);
    *(v0 + 872) = &type metadata for MLModelAsset;
    *(v0 + 880) = &off_281EC5388;
    v10 = swift_allocObject();
    *(v0 + 848) = v10;
    v11 = *(v0 + 608);
    v10[3] = *(v0 + 592);
    v10[4] = v11;
    v10[5] = *(v0 + 624);
    v12 = *(v0 + 576);
    v10[1] = *(v0 + 560);
    v10[2] = v12;
    v4[2] = v6 + 1;
    result = sub_2623EB668((v0 + 848), &v4[5 * v6 + 4]);
    v14 = *(v0 + 1312) + 1;
    if (v14 != *(v0 + 1304))
    {
      break;
    }

    v15 = *(v0 + 1296);

    v16 = 0;
    v17 = *(v15 + 16);
    v18 = v15 + 32;
    while (v17 != v16)
    {
      v19 = *(v18 + 8 * v16++);
      if (*(v19 + 16) != 2)
      {

        sub_2623F1BBC();
        swift_allocError();
        *v20 = 0x6172676369676F6CLL;
        *(v20 + 8) = 0xEA00000000006870;
        *(v20 + 16) = 0xD00000000000004ALL;
        *(v20 + 24) = 0x8000000262472240;
        *(v20 + 32) = v91;
        *(v20 + 48) = v92;
        *(v20 + 64) = 0;
        swift_willThrow();
        v21 = *(v0 + 1184);
        v22 = *(v0 + 1136);
        v23 = *(*(v0 + 1144) + 8);
        v23(*(v0 + 1096), v22);
        v23(v21, v22);

        v24 = *(v0 + 8);
LABEL_31:

        return v24();
      }
    }

    v85 = v4;
    if (!v17)
    {
      v68 = *(v0 + 1184);
      v69 = *(v0 + 1144);
      v70 = *(v0 + 1136);
      v71 = *(v0 + 1096);

      v72 = *(v69 + 8);
      v72(v71, v70);
      v72(v68, v70);
      v42 = MEMORY[0x277D84F90];
LABEL_30:
      v73 = *(v0 + 1240);
      v74 = *(v0 + 1056);
      v75 = *(v0 + 689);
      v76 = *(v0 + 1232);
      v77 = *(v0 + 1224);
      v78 = *(v0 + 1208);
      v79 = *(v0 + 1088);
      *v79 = *(v0 + 1192);
      *(v79 + 16) = v78;
      *(v79 + 32) = v77;
      *(v79 + 40) = v76;
      *(v79 + 48) = v75;
      *(v79 + 56) = v85;
      *(v79 + 64) = v42;
      *(v79 + 72) = v74;
      *(v79 + 80) = v73;

      v24 = *(v0 + 8);
      goto LABEL_31;
    }

    v84 = v0;
    *&v91 = MEMORY[0x277D84F90];
    sub_26243CDC0(0, v17, 0);
    v42 = v91;
    while (1)
    {
      v43 = *v18;
      v44 = *(*v18 + 16);
      if (!v44)
      {
        break;
      }

      if (v44 == 1)
      {
        goto LABEL_35;
      }

      v45 = v43[5];
      v46 = v43[7];
      v87 = v43[6];
      v89 = v43[4];
      v47 = v43[9];
      v86 = v43[8];
      v48 = v43[11];
      v90 = v43[10];
      *&v91 = v42;
      v0 = *(v42 + 16);
      v49 = *(v42 + 24);
      v4 = (v0 + 1);

      if (v0 >= v49 >> 1)
      {
        sub_26243CDC0((v49 > 1), v0 + 1, 1);
      }

      *(v42 + 16) = v4;
      v50 = (v42 + (v0 << 6));
      v50[4] = v89;
      v50[5] = v45;
      v50[6] = v87;
      v50[7] = v46;
      v50[8] = v86;
      v50[9] = v47;
      v18 += 8;
      v50[10] = v90;
      v50[11] = v48;
      if (!--v17)
      {
        v0 = v84;
        v63 = v84[148];
        v64 = v84[143];
        v65 = v84[142];
        v66 = v84[137];

        v67 = *(v64 + 8);
        v67(v66, v65);
        v67(v63, v65);
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v4 = sub_26243CBD8(0, v4[2] + 1, 1, v4, &qword_27FF0D870, &qword_26246BE58, &qword_27FF0D878, &qword_26246BE60);
  }

  *(v0 + 1320) = v4;
  *(v0 + 1312) = v14;
  v25 = *(v0 + 1288);
  if (v14 >= *(v25 + 16))
  {
    __break(1u);
  }

  else
  {
    v88 = *(v0 + 1272);
    v83 = *(v0 + 1248);
    v82 = *(v0 + 692);
    v26 = *(v0 + 1128);
    v27 = *(v0 + 1112);
    v28 = v25 + 56 * v14;
    v29 = *(v28 + 32);
    v30 = *(v28 + 40);
    *(v0 + 1328) = v30;
    v32 = *(v28 + 48);
    v31 = *(v28 + 56);
    *(v0 + 1336) = v31;
    v33 = *(v28 + 72);
    v81 = *(v28 + 64);
    *(v0 + 1344) = v33;
    v34 = *(v28 + 80);
    v80 = v29;
    *(v0 + 1024) = v29;
    *(v0 + 1032) = v30;
    swift_bridgeObjectRetain_n();

    MEMORY[0x266728460](47, 0xE100000000000000);

    MEMORY[0x266728460](v32, v31);

    MEMORY[0x266728460](1954051118, 0xE400000000000000);
    v35 = *(v0 + 1032);
    *(v0 + 1040) = *(v0 + 1024);
    *(v0 + 1048) = v35;
    v83(v26, v82, v27);
    sub_262462578();
    v88(v26, v27);

    if (v34)
    {
      if (v34 == 1)
      {
        v36 = *(v0 + 1176);
        v37 = *(v0 + 1160);
        v38 = *(v0 + 1144);
        v39 = *(v0 + 1136);
        *(v0 + 696) = v80;
        *(v0 + 704) = v30;
        *(v0 + 712) = v32;
        *(v0 + 720) = v31;
        *(v0 + 728) = v81;
        *(v0 + 736) = v33;
        *(v0 + 744) = 1;
        (*(v38 + 16))(v37, v36, v39);

        v40 = swift_task_alloc();
        *(v0 + 1368) = v40;
        *v40 = v0;
        v40[1] = sub_262434A78;
        v41 = *(v0 + 1160);

        return sub_26243FFEC(v0 + 480, v0 + 696, v41);
      }

      else
      {
        v57 = *(v0 + 1176);
        v58 = *(v0 + 1152);
        v59 = *(v0 + 1144);
        v60 = *(v0 + 1136);
        *(v0 + 640) = v80;
        *(v0 + 648) = v30;
        *(v0 + 656) = v32;
        *(v0 + 664) = v31;
        *(v0 + 672) = v81;
        *(v0 + 680) = v33;
        *(v0 + 688) = 2;
        (*(v59 + 16))(v58, v57, v60);

        v61 = swift_task_alloc();
        *(v0 + 1384) = v61;
        *v61 = v0;
        v61[1] = sub_262435530;
        v62 = *(v0 + 1152);

        return LogicGraphAsset.init(with:and:)(v0 + 304, v0 + 640, v62);
      }
    }

    else
    {
      v51 = *(v0 + 1176);
      v52 = *(v0 + 1168);
      v53 = *(v0 + 1144);
      v54 = *(v0 + 1136);
      *(v0 + 752) = v80;
      *(v0 + 760) = v30;
      *(v0 + 768) = v32;
      *(v0 + 776) = v31;
      *(v0 + 784) = v81;
      *(v0 + 792) = v33;
      *(v0 + 800) = 0;
      (*(v53 + 16))(v52, v51, v54);

      v55 = swift_task_alloc();
      *(v0 + 1352) = v55;
      *v55 = v0;
      v55[1] = sub_262433FC0;
      v56 = *(v0 + 1168);

      return sub_26242736C(v0 + 16, v0 + 752, v56);
    }
  }

  return result;
}

uint64_t sub_262435530()
{
  *(*v1 + 1392) = v0;

  if (v0)
  {

    v2 = sub_2624364AC;
  }

  else
  {
    v2 = sub_262435664;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_262435664()
{
  v1 = v0 + 392;
  v2 = *(v0 + 352);
  *(v0 + 424) = *(v0 + 336);
  *(v0 + 440) = v2;
  *(v0 + 456) = *(v0 + 368);
  *(v0 + 472) = *(v0 + 384);
  v3 = *(v0 + 320);
  *(v0 + 392) = *(v0 + 304);
  *(v0 + 408) = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 1320);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v7 = v5[2];
    v6 = v5[3];
    if (v7 >= v6 >> 1)
    {
      v5 = sub_26243CBD8((v6 > 1), v7 + 1, 1, v5, &qword_27FF0D870, &qword_26246BE58, &qword_27FF0D878, &qword_26246BE60);
    }

    v8 = *(v0 + 1176);
    v9 = *(v0 + 1144);
    v10 = *(v0 + 1136);

    (*(v9 + 8))(v8, v10);
    *(v0 + 832) = &type metadata for LogicGraphAsset;
    *(v0 + 840) = &off_281EC5350;
    v11 = swift_allocObject();
    *(v0 + 808) = v11;
    v12 = *(v1 + 48);
    *(v11 + 48) = *(v1 + 32);
    *(v11 + 64) = v12;
    *(v11 + 80) = *(v1 + 64);
    *(v11 + 96) = *(v1 + 80);
    v13 = *(v1 + 16);
    *(v11 + 16) = *v1;
    *(v11 + 32) = v13;
    v5[2] = v7 + 1;
    result = sub_2623EB668((v0 + 808), &v5[5 * v7 + 4]);
    v15 = *(v0 + 1312) + 1;
    if (v15 != *(v0 + 1304))
    {
      break;
    }

    v16 = *(v0 + 1296);

    v17 = 0;
    v18 = *(v16 + 16);
    v19 = v16 + 32;
    while (v18 != v17)
    {
      v20 = *(v19 + 8 * v17++);
      if (*(v20 + 16) != 2)
      {

        sub_2623F1BBC();
        swift_allocError();
        *v21 = 0x6172676369676F6CLL;
        *(v21 + 8) = 0xEA00000000006870;
        *(v21 + 16) = 0xD00000000000004ALL;
        *(v21 + 24) = 0x8000000262472240;
        *(v21 + 32) = v90;
        *(v21 + 48) = v91;
        *(v21 + 64) = 0;
        swift_willThrow();
        v22 = *(v0 + 1184);
        v23 = *(v0 + 1136);
        v24 = *(*(v0 + 1144) + 8);
        v24(*(v0 + 1096), v23);
        v24(v22, v23);

        v25 = *(v0 + 8);
LABEL_31:

        return v25();
      }
    }

    v84 = v5;
    if (!v18)
    {
      v67 = *(v0 + 1184);
      v68 = *(v0 + 1144);
      v69 = *(v0 + 1136);
      v70 = *(v0 + 1096);

      v71 = *(v68 + 8);
      v71(v70, v69);
      v71(v67, v69);
      v5 = MEMORY[0x277D84F90];
LABEL_30:
      v72 = *(v0 + 1240);
      v73 = *(v0 + 1056);
      v74 = *(v0 + 689);
      v75 = *(v0 + 1232);
      v76 = *(v0 + 1224);
      v77 = *(v0 + 1208);
      v78 = *(v0 + 1088);
      *v78 = *(v0 + 1192);
      *(v78 + 16) = v77;
      *(v78 + 32) = v76;
      *(v78 + 40) = v75;
      *(v78 + 48) = v74;
      *(v78 + 56) = v84;
      *(v78 + 64) = v5;
      *(v78 + 72) = v73;
      *(v78 + 80) = v72;

      v25 = *(v0 + 8);
      goto LABEL_31;
    }

    v83 = v0;
    *&v90 = MEMORY[0x277D84F90];
    sub_26243CDC0(0, v18, 0);
    v5 = v90;
    while (1)
    {
      v43 = *v19;
      v44 = *(*v19 + 16);
      if (!v44)
      {
        break;
      }

      if (v44 == 1)
      {
        goto LABEL_35;
      }

      v45 = v43[5];
      v1 = v43[7];
      v86 = v43[6];
      v88 = v43[4];
      v46 = v43[9];
      v85 = v43[8];
      v47 = v43[11];
      v89 = v43[10];
      *&v90 = v5;
      v0 = v5[2];
      v48 = v5[3];

      if (v0 >= v48 >> 1)
      {
        sub_26243CDC0((v48 > 1), v0 + 1, 1);
      }

      v5[2] = v0 + 1;
      v49 = &v5[8 * v0];
      v49[4] = v88;
      v49[5] = v45;
      v49[6] = v86;
      v49[7] = v1;
      v49[8] = v85;
      v49[9] = v46;
      v19 += 8;
      v49[10] = v89;
      v49[11] = v47;
      if (!--v18)
      {
        v0 = v83;
        v62 = v83[148];
        v63 = v83[143];
        v64 = v83[142];
        v65 = v83[137];

        v66 = *(v63 + 8);
        v66(v65, v64);
        v66(v62, v64);
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v5 = sub_26243CBD8(0, v5[2] + 1, 1, v5, &qword_27FF0D870, &qword_26246BE58, &qword_27FF0D878, &qword_26246BE60);
  }

  *(v0 + 1320) = v5;
  *(v0 + 1312) = v15;
  v26 = *(v0 + 1288);
  if (v15 >= *(v26 + 16))
  {
    __break(1u);
  }

  else
  {
    v87 = *(v0 + 1272);
    v82 = *(v0 + 1248);
    v81 = *(v0 + 692);
    v27 = *(v0 + 1128);
    v28 = *(v0 + 1112);
    v29 = v26 + 56 * v15;
    v30 = *(v29 + 32);
    v31 = *(v29 + 40);
    *(v0 + 1328) = v31;
    v33 = *(v29 + 48);
    v32 = *(v29 + 56);
    *(v0 + 1336) = v32;
    v34 = *(v29 + 72);
    v80 = *(v29 + 64);
    *(v0 + 1344) = v34;
    v35 = *(v29 + 80);
    v79 = v30;
    *(v0 + 1024) = v30;
    *(v0 + 1032) = v31;
    swift_bridgeObjectRetain_n();

    MEMORY[0x266728460](47, 0xE100000000000000);

    MEMORY[0x266728460](v33, v32);

    MEMORY[0x266728460](1954051118, 0xE400000000000000);
    v36 = *(v0 + 1032);
    *(v0 + 1040) = *(v0 + 1024);
    *(v0 + 1048) = v36;
    v82(v27, v81, v28);
    sub_262462578();
    v87(v27, v28);

    if (v35)
    {
      if (v35 == 1)
      {
        v37 = *(v0 + 1176);
        v38 = *(v0 + 1160);
        v39 = *(v0 + 1144);
        v40 = *(v0 + 1136);
        *(v0 + 696) = v79;
        *(v0 + 704) = v31;
        *(v0 + 712) = v33;
        *(v0 + 720) = v32;
        *(v0 + 728) = v80;
        *(v0 + 736) = v34;
        *(v0 + 744) = 1;
        (*(v39 + 16))(v38, v37, v40);

        v41 = swift_task_alloc();
        *(v0 + 1368) = v41;
        *v41 = v0;
        v41[1] = sub_262434A78;
        v42 = *(v0 + 1160);

        return sub_26243FFEC(v0 + 480, v0 + 696, v42);
      }

      else
      {
        v56 = *(v0 + 1176);
        v57 = *(v0 + 1152);
        v58 = *(v0 + 1144);
        v59 = *(v0 + 1136);
        *(v0 + 640) = v79;
        *(v0 + 648) = v31;
        *(v0 + 656) = v33;
        *(v0 + 664) = v32;
        *(v0 + 672) = v80;
        *(v0 + 680) = v34;
        *(v0 + 688) = 2;
        (*(v58 + 16))(v57, v56, v59);

        v60 = swift_task_alloc();
        *(v0 + 1384) = v60;
        *v60 = v0;
        v60[1] = sub_262435530;
        v61 = *(v0 + 1152);

        return LogicGraphAsset.init(with:and:)(v0 + 304, v0 + 640, v61);
      }
    }

    else
    {
      v50 = *(v0 + 1176);
      v51 = *(v0 + 1168);
      v52 = *(v0 + 1144);
      v53 = *(v0 + 1136);
      *(v0 + 752) = v79;
      *(v0 + 760) = v31;
      *(v0 + 768) = v33;
      *(v0 + 776) = v32;
      *(v0 + 784) = v80;
      *(v0 + 792) = v34;
      *(v0 + 800) = 0;
      (*(v52 + 16))(v51, v50, v53);

      v54 = swift_task_alloc();
      *(v0 + 1352) = v54;
      *v54 = v0;
      v54[1] = sub_262433FC0;
      v55 = *(v0 + 1168);

      return sub_26242736C(v0 + 16, v0 + 752, v55);
    }
  }

  return result;
}

uint64_t sub_262435FFC()
{
  v1 = v0[147];
  v2 = v0[143];
  v3 = v0[142];

  (*(v2 + 8))(v1, v3);
  v4 = v0[170];
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  sub_262462A28();
  MEMORY[0x266728460](0xD00000000000002FLL, 0x8000000262472210);
  swift_getErrorValue();
  v5 = sub_262462C88();
  MEMORY[0x266728460](v5);

  MEMORY[0x266728460](32032, 0xE200000000000000);
  sub_2623F1BBC();
  swift_allocError();
  *v6 = 0x6172676369676F6CLL;
  *(v6 + 8) = 0xEA00000000006870;
  *(v6 + 16) = v12;
  *(v6 + 32) = v12;
  *(v6 + 48) = v13;
  *(v6 + 64) = 0;
  swift_willThrow();
  MEMORY[0x266728D50](v4);
  v7 = v0[148];
  v8 = v0[142];
  v9 = *(v0[143] + 8);
  v9(v0[137], v8);
  v9(v7, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_262436254()
{
  v1 = v0[147];
  v2 = v0[143];
  v3 = v0[142];

  (*(v2 + 8))(v1, v3);
  v4 = v0[172];
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  sub_262462A28();
  MEMORY[0x266728460](0xD00000000000002FLL, 0x8000000262472210);
  swift_getErrorValue();
  v5 = sub_262462C88();
  MEMORY[0x266728460](v5);

  MEMORY[0x266728460](32032, 0xE200000000000000);
  sub_2623F1BBC();
  swift_allocError();
  *v6 = 0x6172676369676F6CLL;
  *(v6 + 8) = 0xEA00000000006870;
  *(v6 + 16) = v12;
  *(v6 + 32) = v12;
  *(v6 + 48) = v13;
  *(v6 + 64) = 0;
  swift_willThrow();
  MEMORY[0x266728D50](v4);
  v7 = v0[148];
  v8 = v0[142];
  v9 = *(v0[143] + 8);
  v9(v0[137], v8);
  v9(v7, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2624364AC()
{
  v1 = v0[147];
  v2 = v0[143];
  v3 = v0[142];

  (*(v2 + 8))(v1, v3);
  v4 = v0[174];
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  sub_262462A28();
  MEMORY[0x266728460](0xD00000000000002FLL, 0x8000000262472210);
  swift_getErrorValue();
  v5 = sub_262462C88();
  MEMORY[0x266728460](v5);

  MEMORY[0x266728460](32032, 0xE200000000000000);
  sub_2623F1BBC();
  swift_allocError();
  *v6 = 0x6172676369676F6CLL;
  *(v6 + 8) = 0xEA00000000006870;
  *(v6 + 16) = v12;
  *(v6 + 32) = v12;
  *(v6 + 48) = v13;
  *(v6 + 64) = 0;
  swift_willThrow();
  MEMORY[0x266728D50](v4);
  v7 = v0[148];
  v8 = v0[142];
  v9 = *(v0[143] + 8);
  v9(v0[137], v8);
  v9(v7, v8);

  v10 = v0[1];

  return v10();
}

unint64_t sub_262436704()
{
  result = qword_2813BD400;
  if (!qword_2813BD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD400);
  }

  return result;
}

unint64_t sub_262436758()
{
  result = qword_2813BD8D8;
  if (!qword_2813BD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8D8);
  }

  return result;
}

uint64_t LogicGraphAsset.execute(for:)(uint64_t a1)
{
  v4 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v4;
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = *(v1 + 80);
  v5 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v5;
  v6 = swift_task_alloc();
  *(v2 + 104) = v6;
  *v6 = v2;
  v6[1] = sub_26243686C;
  v7 = MEMORY[0x277D84F90];

  return sub_2624369C0(a1, v7);
}

uint64_t sub_26243686C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 112) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2624369A8, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_2624369C0(uint64_t a1, uint64_t a2)
{
  *(v3 + 1480) = v2;
  *(v3 + 1472) = a2;
  *(v3 + 1464) = a1;
  v4 = *(v2 + 48);
  *(v3 + 400) = *(v2 + 32);
  *(v3 + 416) = v4;
  *(v3 + 432) = *(v2 + 64);
  *(v3 + 448) = *(v2 + 80);
  v5 = *(v2 + 16);
  *(v3 + 368) = *v2;
  *(v3 + 384) = v5;
  return MEMORY[0x2822009F8](sub_262436A08, 0, 0);
}

uint64_t sub_262436A08()
{
  v84 = v0;
  v2 = sub_262438894();
  v3 = v2;
  v4 = *(v2 + 16);
  v5 = MEMORY[0x277D84F90];
  v6 = 0;
  if (v4)
  {
    v7 = 0;
    v8 = (v0 + 1384);
    v9 = v2 + 32;
    v10 = MEMORY[0x277D84F90];
    v76 = v0;
    while (v7 < *(v3 + 16))
    {
      v11 = *(v0 + 1472);
      sub_26243F8A4(v9, v0 + 16);
      v12 = *(v0 + 32);
      v13 = *(v0 + 40);
      *(v0 + 1384) = *(v0 + 16);
      *(v0 + 1400) = v12;
      *(v0 + 1408) = v13;
      v14 = swift_task_alloc();
      *(v14 + 16) = v8;
      v1 = sub_262432FD0(sub_26243F8DC, v14, v11);

      if ((v1 & 1) != 0 || (v15 = *(v0 + 1472), v16 = , v17 = v6, v18 = v10, v19 = v3, v20 = v4, v21 = v8, v22 = sub_26243E47C(v16), , v1 = sub_262433174(v15, v22), v8 = v21, v4 = v20, v3 = v19, v10 = v18, v6 = v17, v0 = v76, , (v1 & 1) == 0))
      {
        sub_26243F8FC(v0 + 16);
      }

      else
      {
        v23 = *(v76 + 64);
        v79 = *(v76 + 48);
        v80 = v23;
        v81 = *(v76 + 80);
        v82 = *(v76 + 96);
        v24 = *(v76 + 32);
        v77 = *(v76 + 16);
        v78 = v24;
        v83[0] = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26243CF44(0, *(v10 + 16) + 1, 1);
          v10 = v83[0];
        }

        v26 = *(v10 + 16);
        v25 = *(v10 + 24);
        v1 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          sub_26243CF44((v25 > 1), v26 + 1, 1);
          v10 = v83[0];
        }

        *(v10 + 16) = v1;
        v27 = v10 + 88 * v26;
        v28 = v78;
        *(v27 + 32) = v77;
        *(v27 + 48) = v28;
        v29 = v79;
        v30 = v80;
        v31 = v81;
        *(v27 + 112) = v82;
        *(v27 + 80) = v30;
        *(v27 + 96) = v31;
        *(v27 + 64) = v29;
      }

      ++v7;
      v9 += 88;
      if (v4 == v7)
      {
        v5 = MEMORY[0x277D84F90];
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_15:
  *(v0 + 1488) = v10;

  *(v0 + 1432) = MEMORY[0x277D84FA0];
  v33 = *(v10 + 16);
  *(v0 + 1496) = v33;
  if (v33)
  {
    *(v0 + 1512) = v5;
    *(v0 + 1504) = 0;
    v34 = *(v0 + 1488);
    if (*(v34 + 16))
    {
      sub_26243F8A4(v34 + 32, v0 + 280);
      sub_26243F92C(v0 + 312, v0 + 960);
      sub_26243F8FC(v0 + 280);
      sub_2623F3CA4(v0 + 960, v0 + 1184);
      sub_26243F964(v0 + 960);
      v35 = *(v0 + 1208);
      v36 = *(v0 + 1216);
      __swift_project_boxed_opaque_existential_1((v0 + 1184), v35);
      v74 = (*(v36 + 48) + **(v36 + 48));
      v37 = swift_task_alloc();
      *(v0 + 1520) = v37;
      *v37 = v0;
      v37[1] = sub_262437348;
      v38 = *(v0 + 1464);

      return v74(v38, v35, v36);
    }

LABEL_58:
    __break(1u);
    return result;
  }

  v39 = *(v0 + 1464);
  v83[0] = v39;
  v40 = v5[2];

  if (v40)
  {
    *&v77 = v5[4];

    sub_26243934C(v83, &v77);

    if (v40 != 1)
    {
      v41 = v5 + 5;
      v42 = 1;
      while (v42 < v5[2])
      {
        *&v77 = *v41;

        sub_26243934C(v83, &v77);

        ++v42;
        ++v41;
        if (v40 == v42)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_25:
    v39 = v83[0];
  }

  v1 = 0xED000073726F7272;
  if (*(v39 + 16))
  {
    v43 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
    if (v44)
    {
      sub_26243FAE0(*(v39 + 56) + 40 * v43, v0 + 1264, &qword_27FF0C5F0, &qword_262463A90);
      *(v0 + 1256) = *(v0 + 1296);
      v45 = *(v0 + 1280);
      *(v0 + 1224) = *(v0 + 1264);
      *(v0 + 1240) = v45;
      if (*(v0 + 1248))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
        if (swift_dynamicCast())
        {
          v46 = *(v0 + 1456);
          goto LABEL_33;
        }
      }

      else
      {
        sub_2623F39E0(v0 + 1224, &qword_27FF0C5F0, &qword_262463A90);
      }
    }
  }

  v46 = MEMORY[0x277D84FA0];
LABEL_33:
  v47 = *(v0 + 1488);
  *(v0 + 1424) = sub_262439AA4(*(v0 + 1432), v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
  sub_26243F994(&qword_2813BD3C0, &qword_27FF0D390, "Η");
  sub_2624629E8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v83[0] = v39;
  sub_262461260(&v77, 0x45736973656D656ELL, 0xED000073726F7272, isUniquelyReferenced_nonNull_native);
  v7 = v83[0];
  *(v0 + 1544) = v83[0];
  v49 = *(v47 + 16);
  v50 = *(v0 + 1488);
  if (v49)
  {
    v75 = v7;
    *&v77 = v5;
    sub_26243CF84(0, v49, 0);
    v51 = v77;
    v52 = v50 + 32;
    do
    {
      sub_26243F8A4(v52, v0 + 192);
      v54 = *(v0 + 192);
      v53 = *(v0 + 200);
      v55 = *(v0 + 208);
      v56 = *(v0 + 216);

      sub_26243F8FC(v0 + 192);
      *&v77 = v51;
      v58 = *(v51 + 16);
      v57 = *(v51 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_26243CF84((v57 > 1), v58 + 1, 1);
        v51 = v77;
      }

      *(v51 + 16) = v58 + 1;
      v59 = (v51 + 32 * v58);
      v59[4] = v54;
      v59[5] = v53;
      v59[6] = v55;
      v59[7] = v56;
      v52 += 88;
      --v49;
    }

    while (v49);

    v1 = 0xED000073726F7272;
    v7 = v75;
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

  v60 = *(v0 + 1496);
  *&v77 = *(v0 + 1472);

  sub_26243DD7C(v51);
  v61 = v77;
  *(v0 + 1552) = v77;
  if (v60)
  {
    v62 = *(v0 + 416);
    *(v0 + 136) = *(v0 + 400);
    *(v0 + 152) = v62;
    *(v0 + 168) = *(v0 + 432);
    *(v0 + 184) = *(v0 + 448);
    v63 = *(v0 + 384);
    *(v0 + 104) = *(v0 + 368);
    *(v0 + 120) = v63;
    v64 = swift_task_alloc();
    *(v0 + 1560) = v64;
    *v64 = v0;
    v64[1] = sub_262437C68;

    return sub_2624369C0(v7, v61);
  }

  v65 = *(v61 + 16);

  v66 = *(sub_262438894() + 16);

  v6 = 0x45736973656D656ELL;
  if (v65 != v66)
  {
    v8 = (v0 + 1440);
    if (!*(v7 + 16))
    {
      goto LABEL_52;
    }

    v67 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
    if ((v68 & 1) == 0)
    {
      goto LABEL_52;
    }

    v10 = v0 + 1304;
    sub_26243FAE0(*(v7 + 56) + 40 * v67, v0 + 1344, &qword_27FF0C5F0, &qword_262463A90);
    *(v0 + 1336) = *(v0 + 1376);
    v69 = *(v0 + 1360);
    *(v0 + 1304) = *(v0 + 1344);
    *(v0 + 1320) = v69;
    if (*(v0 + 1328))
    {
      if (swift_dynamicCast())
      {
        v70 = *(v0 + 1448);
LABEL_53:
        v71 = sub_26243EFD4(&unk_2874FBB30, v70);
        sub_2623F3C50(&unk_2874FBB50);
        *v8 = v71;
        sub_2624629E8();
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v83[0] = v7;
        sub_262461260(&v77, v6, v1, v72);
        v7 = v83[0];
        goto LABEL_54;
      }

LABEL_52:
      v70 = MEMORY[0x277D84FA0];
      goto LABEL_53;
    }

LABEL_51:
    sub_2623F39E0(v10, &qword_27FF0C5F0, &qword_262463A90);
    goto LABEL_52;
  }

LABEL_54:
  v73 = *(v0 + 8);

  return v73(v7);
}

uint64_t sub_262437348(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1528) = a1;
  *(v3 + 1536) = v1;

  if (v1)
  {
    v4 = sub_262437E08;
  }

  else
  {
    v4 = sub_262437460;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_262437460()
{
  v58 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 1512);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26243CA80(0, v2[2] + 1, 1, *(v0 + 1512));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_26243CA80((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v55 + 1528);
  v2[2] = v4 + 1;
  v2[v4 + 4] = v5;
  v6 = *(v55 + 1536);
  v7 = *(v55 + 1496);
  v8 = *(v55 + 1504) + 1;
  result = __swift_destroy_boxed_opaque_existential_1((v55 + 1184));
  if (v8 == v7)
  {
    v10 = *(v55 + 1464);
    v57[0] = v10;
    v11 = v2[2];

    if (v11)
    {
      *&v56[0] = v2[4];

      sub_26243934C(v57, v56);
      if (v6)
      {
        MEMORY[0x266728D50](v6);
      }

      if (v11 != 1)
      {
        v18 = v2 + 5;
        v19 = 1;
        while (v19 < v2[2])
        {
          *&v56[0] = *v18;

          sub_26243934C(v57, v56);

          ++v19;
          ++v18;
          if (v11 == v19)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        goto LABEL_52;
      }

LABEL_19:
      v10 = v57[0];
    }

    if (*(v10 + 16))
    {
      v20 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
      if (v21)
      {
        sub_26243FAE0(*(v10 + 56) + 40 * v20, v55 + 1264, &qword_27FF0C5F0, &qword_262463A90);
        *(v55 + 1256) = *(v55 + 1296);
        v22 = *(v55 + 1280);
        *(v55 + 1224) = *(v55 + 1264);
        *(v55 + 1240) = v22;
        if (*(v55 + 1248))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
          if (swift_dynamicCast())
          {
            v23 = *(v55 + 1456);
            goto LABEL_27;
          }
        }

        else
        {
          sub_2623F39E0(v55 + 1224, &qword_27FF0C5F0, &qword_262463A90);
        }
      }
    }

    v23 = MEMORY[0x277D84FA0];
LABEL_27:
    v24 = *(v55 + 1488);
    *(v55 + 1424) = sub_262439AA4(*(v55 + 1432), v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
    sub_26243F994(&qword_2813BD3C0, &qword_27FF0D390, "Η");
    sub_2624629E8();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v57[0] = v10;
    sub_262461260(v56, 0x45736973656D656ELL, 0xED000073726F7272, v25);
    v26 = v57[0];
    *(v55 + 1544) = v57[0];
    v27 = *(v24 + 16);
    v28 = *(v55 + 1488);
    if (v27)
    {
      v53 = v26;
      *&v56[0] = MEMORY[0x277D84F90];
      sub_26243CF84(0, v27, 0);
      v29 = v55;
      v30 = *&v56[0];
      v31 = v28 + 32;
      do
      {
        sub_26243F8A4(v31, (v29 + 24));
        v33 = v29[24];
        v32 = v29[25];
        v34 = v29[26];
        v35 = v29[27];

        sub_26243F8FC((v29 + 24));
        *&v56[0] = v30;
        v37 = *(v30 + 16);
        v36 = *(v30 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_26243CF84((v36 > 1), v37 + 1, 1);
          v29 = v55;
          v30 = *&v56[0];
        }

        *(v30 + 16) = v37 + 1;
        v38 = (v30 + 32 * v37);
        v38[4] = v33;
        v38[5] = v32;
        v38[6] = v34;
        v38[7] = v35;
        v31 += 88;
        --v27;
      }

      while (v27);

      v26 = v53;
    }

    else
    {
      v29 = v55;

      v30 = MEMORY[0x277D84F90];
    }

    v39 = v29[187];
    *&v56[0] = v29[184];

    sub_26243DD7C(v30);
    v40 = *&v56[0];
    *(v55 + 1552) = *&v56[0];
    if (v39)
    {
      v41 = *(v55 + 416);
      *(v55 + 136) = *(v55 + 400);
      *(v55 + 152) = v41;
      *(v55 + 168) = *(v55 + 432);
      *(v55 + 184) = *(v55 + 448);
      v42 = *(v55 + 384);
      *(v55 + 104) = *(v55 + 368);
      *(v55 + 120) = v42;
      v43 = swift_task_alloc();
      *(v55 + 1560) = v43;
      *v43 = v55;
      v43[1] = sub_262437C68;

      return sub_2624369C0(v26, v40);
    }

    v44 = *(v40 + 16);

    v45 = *(sub_262438894() + 16);

    if (v44 == v45)
    {
      goto LABEL_47;
    }

    if (*(v26 + 16))
    {
      v46 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
      if (v47)
      {
        sub_26243FAE0(*(v26 + 56) + 40 * v46, v55 + 1344, &qword_27FF0C5F0, &qword_262463A90);
        *(v55 + 1336) = *(v55 + 1376);
        v48 = *(v55 + 1360);
        *(v55 + 1304) = *(v55 + 1344);
        *(v55 + 1320) = v48;
        if (*(v55 + 1328))
        {
          if (swift_dynamicCast())
          {
            v49 = *(v55 + 1448);
          }

          else
          {
            v49 = MEMORY[0x277D84FA0];
          }

          goto LABEL_46;
        }

        sub_2623F39E0(v55 + 1304, &qword_27FF0C5F0, &qword_262463A90);
      }
    }

    v49 = MEMORY[0x277D84FA0];
LABEL_46:
    v50 = sub_26243EFD4(&unk_2874FBB30, v49);
    sub_2623F3C50(&unk_2874FBB50);
    *(v55 + 1440) = v50;
    sub_2624629E8();
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v57[0] = v26;
    sub_262461260(v56, 0x45736973656D656ELL, 0xED000073726F7272, v51);
    v26 = v57[0];
LABEL_47:
    v52 = *(v55 + 8);

    return v52(v26);
  }

  v12 = *(v55 + 1504) + 1;
  *(v55 + 1512) = v2;
  *(v55 + 1504) = v12;
  v13 = *(v55 + 1488);
  if (v12 >= *(v13 + 16))
  {
LABEL_52:
    __break(1u);
    return result;
  }

  sub_26243F8A4(v13 + 88 * v12 + 32, v55 + 280);
  sub_26243F92C(v55 + 312, v55 + 960);
  sub_26243F8FC(v55 + 280);
  sub_2623F3CA4(v55 + 960, v55 + 1184);
  sub_26243F964(v55 + 960);
  v14 = *(v55 + 1208);
  v15 = *(v55 + 1216);
  __swift_project_boxed_opaque_existential_1((v55 + 1184), v14);
  v54 = (*(v15 + 48) + **(v15 + 48));
  v16 = swift_task_alloc();
  *(v55 + 1520) = v16;
  *v16 = v55;
  v16[1] = sub_262437348;
  v17 = *(v55 + 1464);

  return v54(v17, v14, v15);
}

uint64_t sub_262437C68(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1568) = v1;

  if (v1)
  {
    v5 = sub_262438830;
  }

  else
  {
    *(v4 + 1576) = a1;
    v5 = sub_262437DA0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_262437DA0()
{

  v1 = *(v0 + 1576);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_262437E08()
{
  v80 = v0;
  v1 = *(v0 + 1536);
  *(v0 + 1416) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
  if (swift_dynamicCast())
  {
    MEMORY[0x266728D50](*(v0 + 1536));
    v3 = *(v0 + 792);
    *(v0 + 560) = *(v0 + 776);
    *(v0 + 576) = v3;
    *(v0 + 592) = *(v0 + 808);
    v4 = *(v0 + 760);
    *(v0 + 528) = *(v0 + 744);
    *(v0 + 544) = v4;
    sub_26242706C(v0 + 528, v0 + 456);
    sub_26243A4DC(&v74, v0 + 528);
    v5 = v77;
    *(v0 + 920) = v76;
    *(v0 + 936) = v5;
    *(v0 + 952) = v78;
    v6 = v75;
    *(v0 + 888) = v74;
    *(v0 + 904) = v6;
    sub_2623F3C50(v0 + 888);
    v7 = *(v0 + 1208);
    v8 = *(v0 + 1216);
    __swift_project_boxed_opaque_existential_1((v0 + 1184), v7);
    (*(v8 + 16))(v7, v8);
    v71 = *(v0 + 1016);

    v9 = *(v0 + 1208);
    v10 = *(v0 + 1216);
    __swift_project_boxed_opaque_existential_1((v0 + 1184), v9);
    (*(v10 + 16))(v9, v10);
    v70 = *(v0 + 1088);

    v11 = *(v0 + 1208);
    v12 = *(v0 + 1216);
    __swift_project_boxed_opaque_existential_1((v0 + 1184), v11);
    (*(v12 + 16))(v11, v12);
    v13 = *(v0 + 1160);
    v14 = *(v0 + 1168);

    v15 = *(v0 + 576);
    *(v0 + 704) = *(v0 + 560);
    *(v0 + 720) = v15;
    *(v0 + 736) = *(v0 + 592);
    v16 = *(v0 + 544);
    *(v0 + 672) = *(v0 + 528);
    *(v0 + 688) = v16;
    sub_2623F1BBC();
    v17 = sub_262462C88();
    v19 = v18;
    sub_2623F3C50(v0 + 528);
    *(v0 + 600) = v71;
    *(v0 + 616) = v70;
    *(v0 + 632) = v13;
    *(v0 + 640) = v14;
    *(v0 + 648) = v17;
    *(v0 + 656) = v19;
    *(v0 + 664) = 17;
    sub_26243A4DC(&v74, v0 + 600);
    v20 = v77;
    *(v0 + 848) = v76;
    *(v0 + 864) = v20;
    *(v0 + 880) = v78;
    v21 = v75;
    *(v0 + 816) = v74;
    *(v0 + 832) = v21;
    sub_2623F3C50(v0 + 816);
    MEMORY[0x266728D50](*(v0 + 1416));
    v22 = *(v0 + 1512);
    v23 = *(v0 + 1496);
    v24 = *(v0 + 1504) + 1;
    result = __swift_destroy_boxed_opaque_existential_1((v0 + 1184));
    if (v24 == v23)
    {
      v72 = v0;
      v26 = *(v0 + 1464);
      v79 = v26;
      v27 = *(v22 + 16);

      if (v27)
      {
        v28 = 0;
        while (v28 < *(v22 + 16))
        {
          *&v74 = *(v22 + 32 + 8 * v28);

          sub_26243934C(&v79, &v74);

          if (v27 == ++v28)
          {
            v26 = v79;
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_47;
      }

LABEL_8:
      if (*(v26 + 16))
      {
        v29 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
        if (v30)
        {
          sub_26243FAE0(*(v26 + 56) + 40 * v29, v0 + 1264, &qword_27FF0C5F0, &qword_262463A90);
          *(v0 + 1256) = *(v0 + 1296);
          v31 = *(v0 + 1280);
          *(v0 + 1224) = *(v0 + 1264);
          *(v0 + 1240) = v31;
          if (*(v0 + 1248))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
            if (swift_dynamicCast())
            {
              v32 = *(v0 + 1456);
              goto LABEL_22;
            }
          }

          else
          {
            sub_2623F39E0(v0 + 1224, &qword_27FF0C5F0, &qword_262463A90);
          }
        }
      }

      v32 = MEMORY[0x277D84FA0];
LABEL_22:
      v40 = *(v0 + 1488);
      *(v72 + 1424) = sub_262439AA4(*(v72 + 1432), v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
      sub_26243F994(&qword_2813BD3C0, &qword_27FF0D390, "Η");
      sub_2624629E8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v26;
      sub_262461260(&v74, 0x45736973656D656ELL, 0xED000073726F7272, isUniquelyReferenced_nonNull_native);
      v42 = v79;
      *(v72 + 1544) = v79;
      v43 = *(v40 + 16);
      v44 = *(v72 + 1488);
      if (v43)
      {
        v69 = v42;
        *&v74 = MEMORY[0x277D84F90];
        sub_26243CF84(0, v43, 0);
        v45 = v72;
        v46 = v74;
        v47 = v44 + 32;
        do
        {
          sub_26243F8A4(v47, (v45 + 24));
          v49 = v45[24];
          v48 = v45[25];
          v50 = v45[26];
          v51 = v45[27];

          sub_26243F8FC((v45 + 24));
          *&v74 = v46;
          v53 = *(v46 + 16);
          v52 = *(v46 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_26243CF84((v52 > 1), v53 + 1, 1);
            v45 = v72;
            v46 = v74;
          }

          *(v46 + 16) = v53 + 1;
          v54 = (v46 + 32 * v53);
          v54[4] = v49;
          v54[5] = v48;
          v54[6] = v50;
          v54[7] = v51;
          v47 += 88;
          --v43;
        }

        while (v43);

        v42 = v69;
      }

      else
      {
        v45 = v72;

        v46 = MEMORY[0x277D84F90];
      }

      v55 = v45[187];
      *&v74 = v45[184];

      sub_26243DD7C(v46);
      v56 = v74;
      *(v72 + 1552) = v74;
      if (v55)
      {
        v57 = *(v72 + 416);
        *(v72 + 136) = *(v72 + 400);
        *(v72 + 152) = v57;
        *(v72 + 168) = *(v72 + 432);
        *(v72 + 184) = *(v72 + 448);
        v58 = *(v72 + 384);
        *(v72 + 104) = *(v72 + 368);
        *(v72 + 120) = v58;
        v59 = swift_task_alloc();
        *(v72 + 1560) = v59;
        *v59 = v72;
        v59[1] = sub_262437C68;

        return sub_2624369C0(v42, v56);
      }

      v60 = *(v56 + 16);

      v61 = *(sub_262438894() + 16);

      if (v60 == v61)
      {
        goto LABEL_42;
      }

      if (*(v42 + 16))
      {
        v62 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
        if (v63)
        {
          sub_26243FAE0(*(v42 + 56) + 40 * v62, v72 + 1344, &qword_27FF0C5F0, &qword_262463A90);
          *(v72 + 1336) = *(v72 + 1376);
          v64 = *(v72 + 1360);
          *(v72 + 1304) = *(v72 + 1344);
          *(v72 + 1320) = v64;
          if (*(v72 + 1328))
          {
            if (swift_dynamicCast())
            {
              v65 = *(v72 + 1448);
            }

            else
            {
              v65 = MEMORY[0x277D84FA0];
            }

            goto LABEL_41;
          }

          sub_2623F39E0(v72 + 1304, &qword_27FF0C5F0, &qword_262463A90);
        }
      }

      v65 = MEMORY[0x277D84FA0];
LABEL_41:
      v66 = sub_26243EFD4(&unk_2874FBB30, v65);
      sub_2623F3C50(&unk_2874FBB50);
      *(v72 + 1440) = v66;
      sub_2624629E8();
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v42;
      sub_262461260(&v74, 0x45736973656D656ELL, 0xED000073726F7272, v67);
      v42 = v79;
LABEL_42:
      v68 = *(v72 + 8);

      return v68(v42);
    }

    v34 = *(v0 + 1504) + 1;
    *(v0 + 1512) = v22;
    *(v0 + 1504) = v34;
    v35 = *(v0 + 1488);
    if (v34 >= *(v35 + 16))
    {
LABEL_47:
      __break(1u);
      return result;
    }

    sub_26243F8A4(v35 + 88 * v34 + 32, v0 + 280);
    sub_26243F92C(v0 + 312, v0 + 960);
    sub_26243F8FC(v0 + 280);
    sub_2623F3CA4(v0 + 960, v0 + 1184);
    sub_26243F964(v0 + 960);
    v36 = *(v0 + 1208);
    v37 = *(v0 + 1216);
    __swift_project_boxed_opaque_existential_1((v0 + 1184), v36);
    v73 = (*(v37 + 48) + **(v37 + 48));
    v38 = swift_task_alloc();
    *(v0 + 1520) = v38;
    *v38 = v0;
    v38[1] = sub_262437348;
    v39 = *(v0 + 1464);

    return v73(v39, v36, v37);
  }

  else
  {

    MEMORY[0x266728D50](*(v0 + 1416));
    __swift_destroy_boxed_opaque_existential_1((v0 + 1184));
    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_262438830()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_262438894()
{
  v120 = *(v0 + 56);

  v2 = sub_26243E76C(v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D838, &qword_26246BE20);
  v3 = sub_262462AE8();
  v4 = v3;
  v5 = 0;
  v6 = v2[8];
  v122 = v2 + 8;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v126 = v2;
  v128 = v3 + 64;
  v149 = v3;
  v124 = v10;
  if ((v8 & v6) != 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v5 >= v10)
    {
      break;
    }

    v13 = v122[v5];
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      while (2)
      {
        v14 = v11 | (v5 << 6);
        v15 = (v2[6] + 32 * v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[3];
        v146 = v15[2];
        v19 = *(v2[7] + 8 * v14);
        v20 = *(v19 + 16);
        if (v20)
        {
          v135 = *v15;
          v137 = v14;
          v140 = v9;
          v143 = v5;
          *&v160 = MEMORY[0x277D84F90];
          v133 = v17;
          v21 = v19;

          v130 = v18;

          sub_26243CF84(0, v20, 0);
          v22 = v160;
          v23 = (v21 + 56);
          do
          {
            v24 = *(v23 - 3);
            v25 = *(v23 - 2);
            v26 = *(v23 - 1);
            v27 = *v23;
            *&v160 = v22;
            v29 = *(v22 + 16);
            v28 = *(v22 + 24);

            if (v29 >= v28 >> 1)
            {
              sub_26243CF84((v28 > 1), v29 + 1, 1);
              v22 = v160;
            }

            *(v22 + 16) = v29 + 1;
            v30 = (v22 + 32 * v29);
            v30[4] = v24;
            v30[5] = v25;
            v30[6] = v26;
            v30[7] = v27;
            v23 += 8;
            --v20;
          }

          while (v20);

          v4 = v149;
          v10 = v124;
          v2 = v126;
          v9 = v140;
          v5 = v143;
          v16 = v135;
          v14 = v137;
          v31 = v130;
          v17 = v133;
        }

        else
        {

          v31 = v18;
          v22 = MEMORY[0x277D84F90];
        }

        *(v128 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        v32 = (v4[6] + 32 * v14);
        *v32 = v16;
        v32[1] = v17;
        v32[2] = v146;
        v32[3] = v31;
        *(v4[7] + 8 * v14) = v22;
        v33 = v4[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (!v34)
        {
          v4[2] = v35;
          if (!v9)
          {
            goto LABEL_5;
          }

LABEL_4:
          v11 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          continue;
        }

        break;
      }

LABEL_86:
      __break(1u);
      goto LABEL_87;
    }
  }

  v37 = sub_26243EA10(v36);

  v38 = sub_262462AE8();
  v39 = v38;
  v40 = 0;
  v41 = 1 << *(v37 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v37[8];
  v44 = (v41 + 63) >> 6;
  v125 = v37;
  v127 = v38 + 64;
  v147 = v38;
  v121 = v37 + 8;
  v123 = v44;
  if (v43)
  {
    goto LABEL_23;
  }

  while (2)
  {
    v46 = v40;
    while (2)
    {
      v40 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_79;
      }

      if (v40 >= v44)
      {

        v69 = *(v120 + 16);
        if (v69)
        {
          *&v166 = MEMORY[0x277D84F90];
          sub_26243CF64(0, v69, 0);
          v70 = v166;
          v71 = v120 + 32;
          while (1)
          {
            sub_2623F3CA4(v71, v151);
            v72 = v152;
            v73 = v153[0];
            __swift_project_boxed_opaque_existential_1(v151, v152);
            (*(v73 + 16))(&v160, v72, v73);
            v74 = v160;

            v75 = v152;
            v76 = v153[0];
            __swift_project_boxed_opaque_existential_1(v151, v152);
            (*(v76 + 16))(&v154, v75, v76);
            v77 = v155;

            sub_2623F3CA4(v151, &v160);
            if (v149[2] && (v78 = sub_2624415C0(v74, *(&v74 + 1), v77, *(&v77 + 1)), (v79 & 1) != 0))
            {
              v80 = *(v149[7] + 8 * v78);

              if (!v39[2])
              {
                goto LABEL_48;
              }
            }

            else
            {
              v80 = MEMORY[0x277D84F90];
              if (!v39[2])
              {
                goto LABEL_48;
              }
            }

            v81 = sub_2624415C0(v74, *(&v74 + 1), v77, *(&v77 + 1));
            if ((v82 & 1) == 0)
            {
LABEL_48:
              v83 = MEMORY[0x277D84F90];
              goto LABEL_49;
            }

            v83 = *(v39[7] + 8 * v81);

LABEL_49:
            sub_2623EB668(&v160, &v154);
            *(&v156 + 1) = v80;
            *&v163 = v83;
            v160 = v154;
            v161 = v155;
            v162 = v156;
            __swift_destroy_boxed_opaque_existential_1(v151);
            *&v166 = v70;
            v85 = *(v70 + 16);
            v84 = *(v70 + 24);
            if (v85 >= v84 >> 1)
            {
              sub_26243CF64((v84 > 1), v85 + 1, 1);
              v70 = v166;
            }

            *(v70 + 16) = v85 + 1;
            v86 = v70 + 88 * v85;
            *(v86 + 32) = v74;
            *(v86 + 48) = v77;
            v87 = v160;
            v88 = v161;
            v89 = v162;
            *(v86 + 112) = v163;
            *(v86 + 80) = v88;
            *(v86 + 96) = v89;
            *(v86 + 64) = v87;
            v71 += 40;
            --v69;
            v39 = v147;
            if (!v69)
            {

              if (*(v70 + 16))
              {
                goto LABEL_53;
              }

LABEL_55:
              v90 = MEMORY[0x277D84F98];
              goto LABEL_56;
            }
          }
        }

        if (!*(MEMORY[0x277D84F90] + 16))
        {
          goto LABEL_55;
        }

LABEL_53:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D840, &qword_26246BE28);
        v90 = sub_262462B08();
LABEL_56:
        *&v160 = v90;

        sub_26243DA2C(v91, 1, &v160);

        v92 = v160;
        v93 = *(v160 + 16);
        if (!v93)
        {

          return MEMORY[0x277D84F90];
        }

        v170 = MEMORY[0x277D84F90];
        sub_26243CF44(0, v93, 0);
        v150 = v170;
        v94 = v92 + 64;
        v95 = sub_2624629B8();
        v96 = 0;
        v97 = *(v92 + 36);
        v132 = v93;
        v134 = v97;
        while ((v95 & 0x8000000000000000) == 0 && v95 < 1 << *(v92 + 32))
        {
          v99 = v95 >> 6;
          if ((*(v94 + 8 * (v95 >> 6)) & (1 << v95)) == 0)
          {
            goto LABEL_81;
          }

          if (v97 != *(v92 + 36))
          {
            goto LABEL_82;
          }

          v139 = v96;
          v100 = (*(v92 + 48) + 32 * v95);
          v101 = *v100;
          v102 = v100[1];
          v103 = v100[2];
          v104 = v100[3];
          sub_26243F92C(*(v92 + 56) + 56 * v95, &v162);
          *&v154 = v101;
          *(&v154 + 1) = v102;
          *&v155 = v103;
          *(&v155 + 1) = v104;
          v156 = v162;
          v157 = v163;
          v158 = v164;
          v159 = v165;
          sub_26243FAE0(&v154, v151, &qword_27FF0D848, &qword_26246BE30);
          v105 = v151[0];
          v145 = v151[2];
          v148 = v151[1];
          v142 = v152;
          v166 = v156;
          v167 = v157;
          v168 = v158;
          v169 = v159;

          sub_26243F964(v153);
          v170 = v150;
          v107 = *(v150 + 16);
          v106 = *(v150 + 24);
          if (v107 >= v106 >> 1)
          {
            sub_26243CF44((v106 > 1), v107 + 1, 1);
            v150 = v170;
          }

          *(v150 + 16) = v107 + 1;
          v108 = v150 + 88 * v107;
          *(v108 + 32) = v105;
          *(v108 + 40) = v148;
          *(v108 + 48) = v145;
          *(v108 + 56) = v142;
          v109 = v166;
          v110 = v167;
          v111 = v168;
          *(v108 + 112) = v169;
          *(v108 + 80) = v110;
          *(v108 + 96) = v111;
          *(v108 + 64) = v109;
          v98 = 1 << *(v92 + 32);
          if (v95 >= v98)
          {
            goto LABEL_83;
          }

          v94 = v92 + 64;
          v112 = *(v92 + 64 + 8 * v99);
          if ((v112 & (1 << v95)) == 0)
          {
            goto LABEL_84;
          }

          v97 = v134;
          if (v134 != *(v92 + 36))
          {
            goto LABEL_85;
          }

          v113 = v112 & (-2 << (v95 & 0x3F));
          if (v113)
          {
            v98 = __clz(__rbit64(v113)) | v95 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v114 = v99 << 6;
            v115 = v99 + 1;
            v116 = (v92 + 72 + 8 * v99);
            while (v115 < (v98 + 63) >> 6)
            {
              v118 = *v116++;
              v117 = v118;
              v114 += 64;
              ++v115;
              if (v118)
              {
                sub_2624071A0(v95, v134, 0);
                v98 = __clz(__rbit64(v117)) + v114;
                goto LABEL_59;
              }
            }

            sub_2624071A0(v95, v134, 0);
          }

LABEL_59:
          v96 = v139 + 1;
          v95 = v98;
          if (v139 + 1 == v132)
          {

            return v150;
          }
        }

LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v47 = v121[v40];
      ++v46;
      if (!v47)
      {
        continue;
      }

      break;
    }

    v45 = __clz(__rbit64(v47));
    v43 = (v47 - 1) & v47;
LABEL_29:
    v48 = v45 | (v40 << 6);
    v49 = (v37[6] + 32 * v48);
    v51 = *v49;
    v50 = v49[1];
    v52 = v49[3];
    v144 = v49[2];
    v53 = *(*(v37[7] + 8 * v48) + 16);
    if (v53)
    {
      v136 = v48;
      v138 = v43;
      v141 = v40;
      v54 = *(v37[7] + 8 * v48);
      *&v160 = MEMORY[0x277D84F90];
      v131 = v50;

      v129 = v52;

      sub_26243CF84(0, v53, 0);
      v55 = v160;
      v56 = (v54 + 88);
      do
      {
        v58 = *(v56 - 3);
        v57 = *(v56 - 2);
        v59 = *(v56 - 1);
        v60 = *v56;
        *&v160 = v55;
        v61 = *(v55 + 16);
        v62 = *(v55 + 24);

        if (v61 >= v62 >> 1)
        {
          sub_26243CF84((v62 > 1), v61 + 1, 1);
          v55 = v160;
        }

        *(v55 + 16) = v61 + 1;
        v63 = (v55 + 32 * v61);
        v63[4] = v58;
        v63[5] = v57;
        v63[6] = v59;
        v63[7] = v60;
        v56 += 8;
        --v53;
      }

      while (v53);

      v39 = v147;
      v44 = v123;
      v37 = v125;
      v43 = v138;
      v40 = v141;
      v48 = v136;
      v64 = v129;
      v65 = v131;
    }

    else
    {
      v65 = v49[1];

      v64 = v52;
      v55 = MEMORY[0x277D84F90];
    }

    *(v127 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    v66 = (v39[6] + 32 * v48);
    *v66 = v51;
    v66[1] = v65;
    v66[2] = v144;
    v66[3] = v64;
    *(v39[7] + 8 * v48) = v55;
    v67 = v39[2];
    v34 = __OFADD__(v67, 1);
    v68 = v67 + 1;
    if (!v34)
    {
      v39[2] = v68;
      if (!v43)
      {
        continue;
      }

LABEL_23:
      v45 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      goto LABEL_29;
    }

    break;
  }

LABEL_87:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}