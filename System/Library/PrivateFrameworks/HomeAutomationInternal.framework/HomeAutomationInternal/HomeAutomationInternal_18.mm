id sub_252A78618(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_252A78624(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 1701670760;
    v6 = 0x64756C6378457369;
    if (a1 != 10)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 1701736314;
    v8 = 0x70756F7267;
    if (a1 != 7)
    {
      v8 = 1836019570;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x69746E45656D6F68;
    v2 = 0x766544726574756FLL;
    v3 = 0x766544726574756FLL;
    if (a1 != 4)
    {
      v3 = 0x7954656369766564;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 0x7954797469746E65;
    }

    if (!a1)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_252A787C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252A79818(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252A787F0(uint64_t a1)
{
  v2 = sub_252A79604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A7882C(uint64_t a1)
{
  v2 = sub_252A79604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252A78868(void *a1)
{
  v3 = v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5421B0, &unk_252E43EB8);
  v5 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v7 = &v16 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A79604();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for CodableHomeFilter();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    v17 = 0;
    sub_252984B28(&qword_27F540920, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_252E37BE4();
    *(v1 + 16) = v18;

    LOBYTE(v18) = 1;
    *(v1 + 24) = sub_252E37BA4();
    *(v1 + 32) = v9;

    LOBYTE(v18) = 2;
    *(v1 + 40) = sub_252E37C44();
    LOBYTE(v18) = 3;
    *(v1 + 48) = sub_252E37C44();
    LOBYTE(v18) = 4;
    *(v1 + 56) = sub_252E37BA4();
    *(v1 + 64) = v10;

    LOBYTE(v18) = 5;
    *(v1 + 72) = sub_252E37C44();
    LOBYTE(v18) = 9;
    *(v1 + 80) = sub_252E37BA4();
    *(v1 + 88) = v11;

    LOBYTE(v18) = 6;
    *(v1 + 96) = sub_252E37BA4();
    *(v1 + 104) = v12;

    LOBYTE(v18) = 7;
    *(v1 + 112) = sub_252E37BA4();
    *(v1 + 120) = v13;

    LOBYTE(v18) = 8;
    *(v1 + 128) = sub_252E37BA4();
    *(v1 + 136) = v14;

    LOBYTE(v18) = 10;
    *(v1 + 144) = sub_252E37C14() & 1;
    LOBYTE(v18) = 11;
    v15 = sub_252E37C14();
    (*(v5 + 8))(v7, v16);
    *(v3 + 145) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_252A78CF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5421C0, &qword_252E43EC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A79604();
  sub_252E37F84();
  *&v10 = *(v3 + 16);
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540378, &unk_252E43ED0);
  sub_252A79658();
  sub_252E37D54();
  if (!v2)
  {
    v10 = *(v3 + 24);
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    sub_25292FA38();
    sub_252E37D54();
    LOBYTE(v10) = 2;
    sub_252E37D34();
    LOBYTE(v10) = 3;
    sub_252E37D34();
    v10 = *(v3 + 56);
    v11 = 4;
    sub_252E37D54();
    LOBYTE(v10) = 5;
    sub_252E37D34();
    v10 = *(v3 + 80);
    v11 = 9;
    sub_252E37D54();
    v10 = *(v3 + 96);
    v11 = 6;
    sub_252E37D54();
    v10 = *(v3 + 112);
    v11 = 7;
    sub_252E37D54();
    v10 = *(v3 + 128);
    v11 = 8;
    sub_252E37D54();
    LOBYTE(v10) = 10;
    sub_252E37D04();
    LOBYTE(v10) = 11;
    sub_252E37D04();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_252A79090()
{
  v1 = v0;
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  HomeFilter.Builder.init()();
  v3 = *(*v2 + 568);

  v5 = v3(v4);

  v6 = *(v0 + 24);
  v7 = *(v1 + 32);
  v8 = *(*v5 + 576);

  v9 = v8(v6, v7);

  v10 = sub_252E25BD0(*(v1 + 40));
  if (v11)
  {
    v10 = 0;
  }

  v12 = (*(*v9 + 592))(v10);

  v13 = sub_252E25FC4(*(v1 + 48));
  if (v14)
  {
    v13 = 0;
  }

  v15 = (*(*v12 + 600))(v13);

  v16 = *(v1 + 56);
  v17 = *(v1 + 64);
  v18 = *(*v15 + 608);

  v19 = v18(v16, v17);

  v20 = sub_252E25FC4(*(v1 + 72));
  if (v21)
  {
    v20 = 0;
  }

  v22 = (*(*v19 + 624))(v20);

  v23 = *(v1 + 80);
  v24 = *(v1 + 88);
  v25 = *(*v22 + 632);

  v26 = v25(v23, v24);

  v27 = *(v1 + 96);
  v28 = *(v1 + 104);
  v29 = *(*v26 + 648);

  v30 = v29(v27, v28);

  v31 = *(v1 + 112);
  v32 = *(v1 + 120);
  v33 = *(*v30 + 664);

  v34 = v33(v31, v32);

  v35 = *(v1 + 128);
  v36 = *(v1 + 136);
  v37 = *(*v34 + 680);

  v38 = v37(v35, v36);

  v39 = (*(*v38 + 728))(*(v1 + 144));

  v40 = (*(*v39 + 736))(*(v1 + 145));

  v42 = (*(*v40 + 760))(v41);

  return v42;
}

uint64_t sub_252A79588@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CodableHomeFilter();
  v5 = swift_allocObject();
  result = sub_252A78868(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_252A79604()
{
  result = qword_27F5421B8;
  if (!qword_27F5421B8)
  {
    result = swift_getWitnessTable(byte_252E43FA4, &type metadata for CodableHomeFilter.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5421B8);
  }

  return result;
}

unint64_t sub_252A79658()
{
  result = qword_27F5421C8;
  if (!qword_27F5421C8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540378, &unk_252E43ED0);
    v4[0] = sub_252984B28(&qword_27F540B18, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27F5421C8);
  }

  return result;
}

unint64_t sub_252A79714()
{
  result = qword_27F5421D0;
  if (!qword_27F5421D0)
  {
    result = swift_getWitnessTable(aMa, &type metadata for CodableHomeFilter.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5421D0);
  }

  return result;
}

unint64_t sub_252A7976C()
{
  result = qword_27F5421D8;
  if (!qword_27F5421D8)
  {
    result = swift_getWitnessTable(byte_252E43EEC, &type metadata for CodableHomeFilter.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5421D8);
  }

  return result;
}

unint64_t sub_252A797C4()
{
  result = qword_27F5421E0;
  if (!qword_27F5421E0)
  {
    result = swift_getWitnessTable(byte_252E43F14, &type metadata for CodableHomeFilter.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5421E0);
  }

  return result;
}

uint64_t sub_252A79818(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000252E6FD80 == a2;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69746E45656D6F68 && a2 == 0xEE00656D614E7974 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x766544726574756FLL && a2 == 0xEF65707954656369 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x766544726574756FLL && a2 == 0xEF656D614E656369 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701736314 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1836019570 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1701670760 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x64756C6378457369 && a2 == 0xEF7265746C694665 || (sub_252E37DB4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000252E66BA0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t getEnumTagSinglePayload for AttributeKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC5)
  {
    goto LABEL_17;
  }

  if (a2 + 59 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 59) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 59;
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

      return (*a1 | (v4 << 8)) - 59;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 59;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3C;
  v8 = v6 - 60;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributeKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 59 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 59) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC5)
  {
    v4 = 0;
  }

  if (a2 > 0xC4)
  {
    v5 = ((a2 - 197) >> 8) + 1;
    *result = a2 + 59;
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
    *result = a2 + 59;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A79D60()
{
  result = qword_27F5422C0;
  if (!qword_27F5422C0)
  {
    result = swift_getWitnessTable(byte_252E44128, &type metadata for AttributeKind, v0, v1);
    atomic_store(result, &qword_27F5422C0);
  }

  return result;
}

uint64_t sub_252A79DB4(char a1)
{
  result = 0x6D7575636176;
  switch(a1)
  {
    case 1:
      result = 7368557;
      break;
    case 2:
      result = 0x61656C4370656564;
      break;
    case 3:
      result = 1869903201;
      break;
    case 4:
      result = 0x7465697571;
      break;
    case 5:
      result = 0x6B63697571;
      break;
    case 6:
      result = 0x6573696F4E776F6CLL;
      break;
    case 7:
      result = 0x6772656E45776F6CLL;
      break;
    case 8:
      result = 0x6E6F697461636176;
      break;
    case 9:
      result = 0x746867696ELL;
      break;
    case 10:
      result = 7954788;
      break;
    case 11:
      result = 7235949;
      break;
    case 12:
      result = 7889261;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252A79EE4(char a1)
{
  result = 0x696C617551726961;
  switch(a1)
  {
    case 1:
    case 6:
    case 22:
    case 24:
      return 0xD000000000000012;
    case 2:
      return result;
    case 3:
      return 0x656E746867697262;
    case 4:
      return 0x4C79726574746162;
    case 7:
    case 8:
    case 32:
      return 0xD000000000000016;
    case 9:
    case 33:
      return 0xD000000000000013;
    case 10:
    case 15:
      return 0xD000000000000017;
    case 11:
      return 0x676E696772616863;
    case 12:
      return 0xD000000000000010;
    case 13:
      return 0x726F6C6F63;
    case 14:
      return 0x44746361746E6F63;
    case 16:
      return 0xD000000000000010;
    case 17:
      return 0xD000000000000010;
    case 18:
      return 0xD000000000000021;
    case 19:
      return 0x50746E6572727563;
    case 20:
      return 0x48746E6572727563;
    case 21:
      v4 = 10;
      return v4 | 0xD000000000000010;
    case 25:
      return 0x694C7265746C6966;
    case 26:
      return 0x6573556E69;
    case 27:
      return 0x657465446B61656CLL;
    case 28:
      return 0x6574746142776F6CLL;
    case 29:
      v5 = 0x4C746867696CLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x7665000000000000;
    case 30:
      return 0x65446E6F69746F6DLL;
    case 31:
      return 0x4C6C61727574616ELL;
    case 34:
    case 39:
    case 40:
      return 0xD000000000000011;
    case 35:
      v3 = 0x44656E6F7A6FLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
    case 36:
      return 0x736E654430316D70;
    case 37:
      v3 = 0x44355F326D70;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
    case 38:
      return 0x7265776F70;
    case 41:
      return 0x6E6F697461746F72;
    case 42:
      return 6518386;
    case 43:
      return 0x6572727543637672;
    case 44:
      return 0x4165636976726573;
    case 45:
      return 0x4D65636976726573;
    case 46:
      return 0x7461727544746573;
    case 47:
      return 0x746544656B6F6D73;
    case 49:
      return 0xD000000000000010;
    case 50:
      return 0x6F44746567726174;
    case 51:
      return 0xD000000000000029;
    case 52:
      return 0x7548746567726174;
    case 53:
      return 0x6F4C746567726174;
    case 54:
      return 0x6F50746567726174;
    case 55:
      v4 = 9;
      return v4 | 0xD000000000000010;
    case 56:
      v4 = 13;
      return v4 | 0xD000000000000010;
    case 57:
      return 0xD00000000000001ELL;
    case 58:
      v5 = 0x4C7265746177;
      return v5 & 0xFFFFFFFFFFFFLL | 0x7665000000000000;
    case 59:
      return 1701736302;
    default:
      v4 = 5;
      return v4 | 0xD000000000000010;
  }
}

uint64_t sub_252A7A514(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x65756C6176;
    v7 = 0x6E61527265776F6CLL;
    if (a1 != 10)
    {
      v7 = 0x6E61527265707075;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 6649192;
    v9 = 0x6974617275746173;
    if (a1 != 7)
    {
      v9 = 1701080941;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 12639;
    v2 = 0x646F4D6E61656C63;
    v3 = 0x444970616DLL;
    if (a1 != 4)
    {
      v3 = 0x73444961657261;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 12895;
    if (a1 != 1)
    {
      v4 = 0x65746174536E7572;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_252A7A6D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A8150C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_252A7A700@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252A79EE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252A7A72C()
{
  v0 = aAttributekind_3[0];

  return v0;
}

uint64_t sub_252A7A774(uint64_t a1)
{
  v2 = sub_252A81758();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7A7B0(uint64_t a1)
{
  v2 = sub_252A81758();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7A7EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A7AA24();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7A838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A81758();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7A89C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A7AA24();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_252A7A8EC()
{
  result = qword_27F5422C8;
  if (!qword_27F5422C8)
  {
    result = swift_getWitnessTable(byte_252E44170, &type metadata for AttributeKind, v0, v1);
    atomic_store(result, &qword_27F5422C8);
  }

  return result;
}

unint64_t sub_252A7A944()
{
  result = qword_27F5422D0;
  if (!qword_27F5422D0)
  {
    result = swift_getWitnessTable(aY_0, &type metadata for AttributeKind, v0, v1);
    atomic_store(result, &qword_27F5422D0);
  }

  return result;
}

unint64_t sub_252A7A9CC()
{
  result = qword_27F5422E8;
  if (!qword_27F5422E8)
  {
    result = swift_getWitnessTable(byte_252E441BC, &type metadata for AttributeKind, v0, v1);
    atomic_store(result, &qword_27F5422E8);
  }

  return result;
}

unint64_t sub_252A7AA24()
{
  result = qword_27F5422F0;
  if (!qword_27F5422F0)
  {
    result = swift_getWitnessTable(asc_252E4418C, &type metadata for AttributeKind, v0, v1);
    atomic_store(result, &qword_27F5422F0);
  }

  return result;
}

unint64_t sub_252A7AA7C()
{
  result = qword_27F5422F8;
  if (!qword_27F5422F8)
  {
    result = swift_getWitnessTable(byte_252E441F0, &type metadata for AttributeKind, v0, v1);
    atomic_store(result, &qword_27F5422F8);
  }

  return result;
}

unint64_t sub_252A7AAD4()
{
  result = qword_27F542300;
  if (!qword_27F542300)
  {
    result = swift_getWitnessTable(asc_252E44278, &type metadata for AttributeKind, v0, v1);
    atomic_store(result, &qword_27F542300);
  }

  return result;
}

unint64_t sub_252A7AB38()
{
  result = qword_27F542308;
  if (!qword_27F542308)
  {
    result = swift_getWitnessTable(byte_252E442F0, &type metadata for AttributeKind, v0, v1);
    atomic_store(result, &qword_27F542308);
  }

  return result;
}

unint64_t sub_252A7ABEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A82BF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_252A7AC1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252A7A514(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252A7AC48()
{
  v15 = sub_252E37F54();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[7] = &type metadata for Attribute;
  v4 = swift_allocObject();
  v18[4] = v4;
  v5 = *(v0 + 16);
  *(v4 + 16) = *v0;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 32);
  sub_252A84780(v0, &v16);
  sub_252E37F24();
  sub_252E37F44();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = sub_252E37A14();
  swift_getObjectType();
  if (v6 != sub_252E37A14())
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = sub_252E37A24();
  swift_unknownObjectRelease();
  if (v7)
  {
    swift_unknownObjectRelease();

    goto LABEL_6;
  }

  sub_252E37AF4();
  swift_unknownObjectRelease();

  v9 = v16;
  v8 = v17;
  __swift_destroy_boxed_opaque_existential_1(v18);
  if (!v8)
  {
LABEL_6:
    if (qword_27F53F568 == -1)
    {
LABEL_7:
      v12 = sub_252E36AD4();
      __swift_project_value_buffer(v12, qword_27F544EE0);
      sub_252CC4050(0xD000000000000029, 0x8000000252E760B0, 0xD000000000000078, 0x8000000252E75DE0, 0x6E65644965707974, 0xEE00726569666974, 212);
      v11 = 0x6E776F6E6B6E55;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  sub_252E37F34();
  v16 = sub_252E37FB4();
  v17 = v10;
  MEMORY[0x2530AD570](46, 0xE100000000000000);
  MEMORY[0x2530AD570](v9, v8);

  v11 = v16;
LABEL_8:
  (*(v1 + 8))(v3, v15);
  return v11;
}

uint64_t sub_252A7AF40()
{
  switch(*(v0 + 32) >> 2)
  {
    case 1:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A8472C();
      sub_252A84410();
      goto LABEL_23;
    case 2:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A846D8();
      sub_252A84410();
      goto LABEL_23;
    case 0xC:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C3C0;
      sub_252A84410();
      sub_252E366F4();
      goto LABEL_23;
    case 0xE:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A84684();
      sub_252A84410();
      goto LABEL_23;
    case 0xF:
    case 0x2F:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A8450C();
      sub_252A84410();
      goto LABEL_23;
    case 0x10:
    case 0x18:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A84630();
      sub_252A84410();
      goto LABEL_23;
    case 0x12:
    case 0x31:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A844B8();
      sub_252A84410();
      goto LABEL_23;
    case 0x14:
    case 0x33:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A84464();
      sub_252A84410();
      goto LABEL_23;
    case 0x16:
    case 0x34:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A822DC();
      sub_252A84410();
      goto LABEL_23;
    case 0x19:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C3C0;
      sub_252A84630();
      sub_252A84410();
      goto LABEL_16;
    case 0x1A:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C280;
      sub_252A84630();
      sub_252A84410();
      goto LABEL_18;
    case 0x27:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A845DC();
      sub_252A84410();
      goto LABEL_23;
    case 0x29:

      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3EF80;
      sub_252A65570();
      sub_252A84410();
      sub_252E366F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541FD8, &unk_252E42FD0);
      sub_252A655C4();
      sub_252E366F4();
      sub_252E366F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416D8, &qword_252E40998);
      sub_252A84560();
      goto LABEL_23;
    case 0x2A:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A6551C();
      sub_252A84410();
      goto LABEL_23;
    case 0x35:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C3C0;
      sub_252A822DC();
      sub_252A84410();
LABEL_16:
      sub_252E366F4();
      sub_252E366F4();
      goto LABEL_24;
    case 0x36:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C280;
      sub_252A822DC();
      sub_252A84410();
LABEL_18:
      sub_252E366F4();
      sub_252E366F4();
      goto LABEL_23;
    default:
      sub_252A7AC48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A84410();
LABEL_23:
      sub_252E366F4();
LABEL_24:
      sub_252E36564();
  }
}

double sub_252A7C140@<D0>(uint64_t a1@<X8>)
{
  sub_252A82C44(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_252A7C184(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_252A80760(v5, v7) & 1;
}

uint64_t sub_252A7C1D0(uint64_t a1)
{
  sub_252A82828();

  return sub_252E36514();
}

uint64_t sub_252A7C20C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A82828();

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_252A7C258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A82828();

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

uint64_t sub_252A7C2BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A82828();

  return MEMORY[0x28213DA60](a1, a2, v4);
}

uint64_t sub_252A7C308(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x3031657A6973;
  }

  else
  {
    v3 = 0x355F32657A6973;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x3031657A6973;
  }

  else
  {
    v5 = 0x355F32657A6973;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
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
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252A7C3AC()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7C42C(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252A7C498(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252A7C520(uint64_t *a1@<X8>)
{
  v2 = 0x355F32657A6973;
  if (*v1)
  {
    v2 = 0x3031657A6973;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252A7C55C()
{
  v0 = qword_27F5421F8;

  return v0;
}

uint64_t sub_252A7C5A4(uint64_t a1)
{
  v2 = sub_252A862B4();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7C5E0(uint64_t a1)
{
  v2 = sub_252A862B4();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7C61C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A84C34();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7C668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A862B4();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7C6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A84C34();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252A7C72C(uint64_t a1)
{
  sub_252E37044();
}

unint64_t sub_252A7C80C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A847B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252A7C83C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1919508838;
  v7 = 0xE800000000000000;
  v8 = 0x726F697265666E69;
  if (v2 != 4)
  {
    v8 = 1919905648;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000074;
  v10 = 0x6E656C6C65637865;
  if (v2 != 1)
  {
    v10 = 1685024615;
    v9 = 0xE400000000000000;
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

uint64_t sub_252A7C8E4()
{
  v0 = aAirquality_3[0];

  return v0;
}

uint64_t sub_252A7C92C(uint64_t a1)
{
  v2 = sub_252A86260();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7C968(uint64_t a1)
{
  v2 = sub_252A86260();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7C9A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A84E74();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7C9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A86260();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7CA54(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A84E74();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

id sub_252A7CAA0(char a1)
{
  v2 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setIntegerValue_];
  [v5 setUnit_];
  [v5 setType_];

  return v5;
}

uint64_t sub_252A7CB68()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7CC40(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252A7CD04(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252A7CDD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A84804(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252A7CE08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852141679;
  v5 = 0x676E696E65706FLL;
  v6 = 0x676E69736F6C63;
  if (v2 != 3)
  {
    v6 = 0x646570706F7473;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x6465736F6C63;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252A7CE9C()
{
  v0 = aPositionstate_0[0];

  return v0;
}

uint64_t sub_252A7CEE4(uint64_t a1)
{
  v2 = sub_252A86110();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7CF20(uint64_t a1)
{
  v2 = sub_252A86110();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7CF5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A852F4();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7CFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A86110();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7D00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A852F4();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

id sub_252A7D058(char a1)
{
  v1 = a1 == 1;
  v2 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setIntegerValue_];
  [v5 setUnit_];
  [v5 setType_];

  return v5;
}

uint64_t sub_252A7D11C()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7D1D8(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252A7D280(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252A7D338@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A84850(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252A7D368(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x64656B636F6C6E75;
  v4 = 0xE600000000000000;
  v5 = 0x64656D6D616ALL;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x64656B636F6CLL;
    v2 = 0xE600000000000000;
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

uint64_t sub_252A7D3E0()
{
  v0 = aLockstate_0[0];

  return v0;
}

uint64_t sub_252A7D428(uint64_t a1)
{
  v2 = sub_252A860BC();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7D464(uint64_t a1)
{
  v2 = sub_252A860BC();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7D4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A85774();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7D4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A860BC();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7D550(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A85774();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_252A7D5FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A8489C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_252A7D62C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252A79DB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252A7D658()
{
  v0 = qword_27F542238;

  return v0;
}

uint64_t sub_252A7D6A0(uint64_t a1)
{
  v2 = sub_252A84A6C();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7D6DC(uint64_t a1)
{
  v2 = sub_252A84A6C();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7D718(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A81F40();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7D764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A84A6C();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7D7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A81F40();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_252A7D814(char a1)
{
  result = 0x646570706F7473;
  switch(a1)
  {
    case 1:
      result = 0x676E696E6E7572;
      break;
    case 2:
      result = 0x646573756170;
      break;
    case 3:
      result = 0x726F727265;
      break;
    case 4:
      result = 0x43676E696B656573;
      break;
    case 5:
      result = 0x676E696772616863;
      break;
    case 6:
      result = 0x64656B636F64;
      break;
    case 7:
      result = 0x6B63757473;
      break;
    case 8:
      result = 0x6574746142776F6CLL;
      break;
    case 9:
      result = 0x4D6E694274737564;
      break;
    case 10:
      result = 0x466E694274737564;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6E61547265746177;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252A7DA00(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();
  }

  return v12 & 1;
}

uint64_t sub_252A7DAAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_252E37EC4();
  a3(v5);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7DB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_252E37044();
}

uint64_t sub_252A7DBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_252E37EC4();
  a4(v6);
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252A7DC08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A848E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_252A7DC38@<X0>(unint64_t *a1@<X8>)
{
  result = sub_252A7D814(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252A7DC64()
{
  v0 = qword_27F542248;

  return v0;
}

uint64_t sub_252A7DCAC(uint64_t a1)
{
  v2 = sub_252A827D4();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7DCE8(uint64_t a1)
{
  v2 = sub_252A827D4();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7DD24(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A81CA8();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7DD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A827D4();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7DDD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A81CA8();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252A7DE20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656D75736572;
  if (v2 != 1)
  {
    v3 = 0x6C65636E6163;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6573756170;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x656D75736572;
  if (*a2 != 1)
  {
    v6 = 0x6C65636E6163;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6573756170;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252A7DF10()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7DFA8(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252A7E02C(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252A7E0C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A84934(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252A7E0F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656D75736572;
  if (v2 != 1)
  {
    v4 = 0x6C65636E6163;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6573756170;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_252A7E144()
{
  v0 = qword_27F542258;

  return v0;
}

uint64_t sub_252A7E18C(uint64_t a1)
{
  v2 = sub_252A82780();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7E1C8(uint64_t a1)
{
  v2 = sub_252A82780();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7E204(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A82180();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7E250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A82780();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7E2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A82180();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

id sub_252A7E300(unsigned __int8 a1)
{
  type metadata accessor for HomeAttributeValue();
  if (a1 <= 1u)
  {
    if (!a1)
    {
      v2 = 0x4D5241534944;
      v3 = 0xE600000000000000;
      return HomeAttributeValue.__allocating_init(stringValue:unit:)(v2, v3, 0);
    }

    v2 = 0x4D52415F59415453;
LABEL_10:
    v3 = 0xE800000000000000;
    return HomeAttributeValue.__allocating_init(stringValue:unit:)(v2, v3, 0);
  }

  if (a1 == 2)
  {
    v2 = 0x4D52415F59415741;
    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v2 = 0x52415F544847494ELL;
    v3 = 0xE90000000000004DLL;
  }

  else
  {
    v2 = 0x52545F4D52414C41;
    v3 = 0xEF44455245474749;
  }

  return HomeAttributeValue.__allocating_init(stringValue:unit:)(v2, v3, 0);
}

uint64_t sub_252A7E3E0()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7E4AC(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252A7E564(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252A7E62C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A84980(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252A7E65C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6710895;
  v5 = 0xE400000000000000;
  v6 = 2036430689;
  v7 = 0xE500000000000000;
  v8 = 0x746867696ELL;
  if (v2 != 3)
  {
    v8 = 0x6572656767697274;
    v7 = 0xE900000000000064;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701670760;
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

uint64_t sub_252A7E6E4()
{
  v0 = qword_27F542268;

  return v0;
}

uint64_t sub_252A7E72C(uint64_t a1)
{
  v2 = sub_252A86068();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7E768(uint64_t a1)
{
  v2 = sub_252A86068();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7E7A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A859B4();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7E7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A86068();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7E854(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A859B4();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252A7E8A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542310, &qword_252E44318);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E419D0;
  *(inited + 32) = sub_252E36FA4();
  *(inited + 40) = v1;
  *(inited + 48) = 2;
  *(inited + 56) = sub_252E36FA4();
  *(inited + 64) = v2;
  *(inited + 72) = 3;
  *(inited + 80) = sub_252E36FA4();
  *(inited + 88) = v3;
  *(inited + 96) = 4;
  *(inited + 104) = sub_252E36FA4();
  *(inited + 112) = v4;
  *(inited + 120) = 1;
  *(inited + 128) = sub_252E36FA4();
  *(inited + 136) = v5;
  *(inited + 144) = 5;
  *(inited + 152) = sub_252E36FA4();
  *(inited + 160) = v6;
  *(inited + 168) = 3;
  *(inited + 176) = sub_252E36FA4();
  *(inited + 184) = v7;
  *(inited + 192) = 4;
  v8 = sub_252CC539C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542318, &qword_252E44320);
  result = swift_arrayDestroy();
  off_27F542288 = v8;
  return result;
}

void *sub_252A7EA18(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      type metadata accessor for HomeAttributeValue();
      v1 = 1413563720;
    }

    else if (a1 == 4)
    {
      type metadata accessor for HomeAttributeValue();
      v1 = 1280266051;
    }

    else
    {
      type metadata accessor for HomeAttributeValue();
      v1 = 1330926913;
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  if (a1 != 1)
  {
    type metadata accessor for HomeAttributeValue();
    v1 = 1162626121;
LABEL_12:
    v2 = 0xE400000000000000;
    goto LABEL_13;
  }

  type metadata accessor for HomeAttributeValue();
  v1 = 4605519;
  v2 = 0xE300000000000000;
LABEL_13:
  v4 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v1, v2, 0);
  v3 = sub_2529F8630(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_2529F8630((v5 > 1), v6 + 1, 1, v3);
  }

  v3[2] = v6 + 1;
  v7 = &v3[2 * v6];
  v7[4] = 14;
  v7[5] = v4;
  return v3;
}

void *sub_252A7EB54(unsigned __int8 a1, double a2)
{
  v4 = sub_252A7EA18(a1);
  if (a1 > 2u)
  {
    if (a1 == 3 || a1 == 4)
    {
      v5 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v6 = sub_252E36F04();
      v7 = [v5 initWithIdentifier:0 displayString:v6];

      v8 = v7;
      [v8 setDoubleValue_];
      [v8 setUnit_];
      [v8 setType_];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2529F8630(0, v4[2] + 1, 1, v4);
      }

      v10 = v4[2];
      v9 = v4[3];
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        v15 = sub_2529F8630((v9 > 1), v10 + 1, 1, v4);
        v11 = v10 + 1;
        v4 = v15;
      }

      v4[2] = v11;
      v12 = &v4[2 * v10];
      v12[4] = 6;
      v12[5] = v8;
    }

    else
    {
      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v13 = sub_252E36AD4();
      __swift_project_value_buffer(v13, qword_27F544EE0);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E75D90);
      sub_252E37374();
      sub_252CC4050(0, 0xE000000000000000, 0xD000000000000078, 0x8000000252E75DE0, 0xD000000000000021, 0x8000000252E75E60, 780);
    }
  }

  return v4;
}

void *sub_252A7EDA8(uint64_t a1, char a2, uint64_t a3, char a4, unsigned __int8 a5)
{
  v9 = sub_252A7EA18(a5);
  if ((a2 & 1) == 0)
  {
    v10 = *&a1;
    v11 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v12 = sub_252E36F04();
    v13 = [v11 initWithIdentifier:0 displayString:v12];

    v14 = v13;
    [v14 setDoubleValue_];
    [v14 setUnit_];
    [v14 setType_];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2529F8630(0, v9[2] + 1, 1, v9);
    }

    v16 = v9[2];
    v15 = v9[3];
    if (v16 >= v15 >> 1)
    {
      v9 = sub_2529F8630((v15 > 1), v16 + 1, 1, v9);
    }

    v9[2] = v16 + 1;
    v17 = &v9[2 * v16];
    v17[4] = 17;
    v17[5] = v14;
  }

  if ((a4 & 1) == 0)
  {
    v18 = *&a3;
    v19 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v20 = sub_252E36F04();
    v21 = [v19 initWithIdentifier:0 displayString:v20];

    v22 = v21;
    [v22 setDoubleValue_];
    [v22 setUnit_];
    [v22 setType_];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2529F8630(0, v9[2] + 1, 1, v9);
    }

    v24 = v9[2];
    v23 = v9[3];
    if (v24 >= v23 >> 1)
    {
      v9 = sub_2529F8630((v23 > 1), v24 + 1, 1, v9);
    }

    v9[2] = v24 + 1;
    v25 = &v9[2 * v24];
    v25[4] = 19;
    v25[5] = v22;
  }

  return v9;
}

uint64_t sub_252A7F000(uint64_t a1)
{
  sub_252E37044();
}

unint64_t sub_252A7F0C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A849CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252A7F0F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 1952540008;
  v6 = 1819242339;
  if (v2 != 4)
  {
    v6 = 1869903201;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v7 = 0xE300000000000000;
  v8 = 6710895;
  if (v2 != 1)
  {
    v8 = 28271;
    v7 = 0xE200000000000000;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_252A7F180()
{
  v0 = aThermostatmode_7[0];

  return v0;
}

uint64_t sub_252A7F1C8(uint64_t a1)
{
  v2 = sub_252A84A18();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7F204(uint64_t a1)
{
  v2 = sub_252A84A18();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7F240(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A8246C();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7F28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A84A18();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7F2F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A8246C();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252A7F33C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701602409;
  if (v2 != 1)
  {
    v4 = 0x657669746361;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6576697463616E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701602409;
  if (*a2 != 1)
  {
    v8 = 0x657669746361;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6576697463616E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A7F428()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A7F4C0(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252A7F544(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252A7F5D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A86308(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252A7F608(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701602409;
  if (v2 != 1)
  {
    v5 = 0x657669746361;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6576697463616E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252A7F65C()
{
  v0 = qword_27F542290;

  return v0;
}

uint64_t sub_252A7F6A4(uint64_t a1)
{
  v2 = sub_252A8620C();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A7F6E0(uint64_t a1)
{
  v2 = sub_252A8620C();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A7F71C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A850B4();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A7F768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A8620C();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A7F7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A850B4();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

void *sub_252A7F818(uint64_t a1, char a2, uint64_t a3, char a4, unsigned __int8 a5)
{
  if (a5 > 2u)
  {
    if (a5 == 3)
    {
      v13 = type metadata accessor for HomeAttributeValue();
      v38 = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4944494D55484544, 0xEA00000000005946, 0);
      result = sub_2529F8630(0, 1, 1, MEMORY[0x277D84F90]);
      v40 = result[2];
      v39 = result[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        result = sub_2529F8630((v39 > 1), v40 + 1, 1, result);
        v41 = v40 + 1;
      }

      result[2] = v41;
      v42 = &result[2 * v40];
      v42[4] = 24;
      v42[5] = v38;
      if (a2)
      {
        return result;
      }

      v30 = *&a1;
    }

    else
    {
      if (a5 != 4)
      {
        if (a2)
        {
          result = MEMORY[0x277D84F90];
          if (a4)
          {
            return result;
          }
        }

        else
        {
          v60 = a3;
          v62 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v63 = sub_252E36F04();
          v64 = [v62 initWithIdentifier:0 displayString:v63];

          v65 = v64;
          [v65 setDoubleValue_];
          [v65 setUnit_];
          [v65 setType_];

          result = sub_2529F8630(0, 1, 1, MEMORY[0x277D84F90]);
          v66 = result[2];
          v67 = result[3];
          v68 = v66 + 1;
          if (v66 >= v67 >> 1)
          {
            v77 = result[2];
            result = sub_2529F8630((v67 > 1), v68, 1, result);
            v66 = v77;
          }

          a3 = v60;
          result[2] = v68;
          v69 = &result[2 * v66];
          v69[4] = 23;
          v69[5] = v65;
          if (a4)
          {
            return result;
          }
        }

        v70 = *&a3;
        v71 = result;
        v72 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v73 = sub_252E36F04();
        v74 = [v72 initWithIdentifier:0 displayString:v73];

        v10 = v74;
        [v10 setDoubleValue_];
        [v10 setUnit_];
        [v10 setType_];

        v43 = v71;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_2529F8630(0, v71[2] + 1, 1, v71);
        }

LABEL_38:
        result = v43;
        v35 = v43[2];
        v75 = result[3];
        v36 = v35 + 1;
        if (v35 >= v75 >> 1)
        {
          result = sub_2529F8630((v75 > 1), v35 + 1, 1, result);
        }

        v37 = 24;
        goto LABEL_41;
      }

      v12 = a3;
      v13 = type metadata accessor for HomeAttributeValue();
      v14 = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
      result = sub_2529F8630(0, 1, 1, MEMORY[0x277D84F90]);
      v17 = result[2];
      v16 = result[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        result = sub_2529F8630((v16 > 1), v17 + 1, 1, result);
        v18 = v17 + 1;
      }

      v19 = a4;
      result[2] = v18;
      v20 = &result[2 * v17];
      v20[4] = 20;
      v20[5] = v14;
      if ((a2 & 1) == 0)
      {
        v21 = *&a1;
        v22 = result;
        v23 = objc_allocWithZone(v13);
        v24 = sub_252E36F04();
        v25 = [v23 initWithIdentifier:0 displayString:v24];

        v26 = v25;
        [v26 setDoubleValue_];
        [v26 setUnit_];
        [v26 setType_];

        result = v22;
        v27 = v22[2];
        v28 = result[3];
        if (v27 >= v28 >> 1)
        {
          result = sub_2529F8630((v28 > 1), v27 + 1, 1, result);
        }

        v19 = a4;
        result[2] = v27 + 1;
        v29 = &result[2 * v27];
        v29[4] = 23;
        v29[5] = v26;
      }

      if (v19)
      {
        return result;
      }

      v30 = *&v12;
    }

    v43 = result;
    v44 = objc_allocWithZone(v13);
    v45 = sub_252E36F04();
    v46 = [v44 initWithIdentifier:0 displayString:v45];

    v10 = v46;
    [v10 setDoubleValue_];
    [v10 setUnit_];
    [v10 setType_];

    goto LABEL_38;
  }

  if (!a5)
  {
    v31 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v32 = sub_252E36F04();
    v33 = [v31 initWithIdentifier:0 displayString:v32];

    v10 = v33;
    [v10 setBoolValue_];
    goto LABEL_16;
  }

  if (a5 == 1)
  {
    v7 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v8 = sub_252E36F04();
    v9 = [v7 initWithIdentifier:0 displayString:v8];

    v10 = v9;
    [v10 setBoolValue_];
LABEL_16:
    [v10 setType_];

    result = sub_2529F8630(0, 1, 1, MEMORY[0x277D84F90]);
    v35 = result[2];
    v34 = result[3];
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_2529F8630((v34 > 1), v35 + 1, 1, result);
    }

    v37 = 27;
LABEL_41:
    result[2] = v36;
    v76 = &result[2 * v35];
    v76[4] = v37;
    v76[5] = v10;
    return result;
  }

  v47 = type metadata accessor for HomeAttributeValue();
  v48 = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x59464944494D5548, 0xE800000000000000, 0);
  result = sub_2529F8630(0, 1, 1, MEMORY[0x277D84F90]);
  v50 = result[2];
  v49 = result[3];
  v51 = v50 + 1;
  if (v50 >= v49 >> 1)
  {
    result = sub_2529F8630((v49 > 1), v50 + 1, 1, result);
    v51 = v50 + 1;
  }

  result[2] = v51;
  v52 = &result[2 * v50];
  v52[4] = 20;
  v52[5] = v48;
  if ((a2 & 1) == 0)
  {
    v53 = *&a1;
    v54 = result;
    v55 = objc_allocWithZone(v47);
    v56 = sub_252E36F04();
    v57 = [v55 initWithIdentifier:0 displayString:v56];

    v10 = v57;
    [v10 setDoubleValue_];
    [v10 setUnit_];
    [v10 setType_];

    result = v54;
    v35 = v54[2];
    v58 = result[3];
    v36 = v35 + 1;
    if (v35 >= v58 >> 1)
    {
      result = sub_2529F8630((v58 > 1), v35 + 1, 1, result);
    }

    v37 = 23;
    goto LABEL_41;
  }

  return result;
}

uint64_t sub_252A7FFB0(uint64_t a1)
{
  sub_252E37044();
}

unint64_t sub_252A80088@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A86354(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252A800B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6710895;
  v5 = 0xEA00000000007966;
  v6 = 0x6964696D75686564;
  v7 = 1869903201;
  if (v2 != 4)
  {
    v7 = 1701736302;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0xE200000000000000;
  v9 = 28271;
  if (v2 != 1)
  {
    v9 = 0x79666964696D7568;
    v8 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_252A80158()
{
  v0 = qword_27F5422A0;

  return v0;
}

uint64_t sub_252A801A0(uint64_t a1)
{
  v2 = sub_252A861B8();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A801DC(uint64_t a1)
{
  v2 = sub_252A861B8();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A80218(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A85534();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A80264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A861B8();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A802C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A85534();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252A80314(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x7369776B636F6C63;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x8000000252E674D0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x7369776B636F6C63;
  }

  if (*a2)
  {
    v6 = 0x8000000252E674D0;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252A803C4()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A80450(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252A804C8(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252A8055C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000252E674D0;
  v3 = 0x7369776B636F6C63;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE900000000000065;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_252A805A4()
{
  v0 = qword_27F5422B0;

  return v0;
}

uint64_t sub_252A805EC(uint64_t a1)
{
  v2 = sub_252A86164();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A80628(uint64_t a1)
{
  v2 = sub_252A86164();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A80664(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A85BF4();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A806B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A86164();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A80714(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A85BF4();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252A80760(unsigned __int8 *a1, double *a2)
{
  v3 = *a1;
  v4 = *(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = a1[32];
  switch(v8 >> 2)
  {
    case 1u:
      if ((a2[4] & 0xFC) != 4)
      {
        goto LABEL_244;
      }

      v25 = (v3 & 1) == 0;
      if (v3)
      {
        v26 = 0x3031657A6973;
      }

      else
      {
        v26 = 0x355F32657A6973;
      }

      if (v25)
      {
        v27 = 0xE700000000000000;
      }

      else
      {
        v27 = 0xE600000000000000;
      }

      if (*a2)
      {
        v28 = 0x3031657A6973;
      }

      else
      {
        v28 = 0x355F32657A6973;
      }

      if (*a2)
      {
        v29 = 0xE600000000000000;
      }

      else
      {
        v29 = 0xE700000000000000;
      }

      if (v26 == v28 && v27 == v29)
      {
        goto LABEL_235;
      }

      goto LABEL_236;
    case 2u:
      if ((a2[4] & 0xFC) != 8)
      {
        goto LABEL_244;
      }

      v23 = *a2;

      return sub_252A0AB70(v3, v23);
    case 3u:
      if ((a2[4] & 0xFC) == 0xC)
      {
        goto LABEL_173;
      }

      goto LABEL_244;
    case 4u:
      if ((a2[4] & 0xFC) == 0x10)
      {
        goto LABEL_173;
      }

      goto LABEL_244;
    case 5u:
      if ((a2[4] & 0xFC) == 0x14)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 6u:
      if ((a2[4] & 0xFC) == 0x18)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 7u:
      if ((a2[4] & 0xFC) == 0x1C)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 8u:
      if ((a2[4] & 0xFC) == 0x20)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 9u:
      if ((a2[4] & 0xFC) == 0x24)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0xAu:
      if ((a2[4] & 0xFC) == 0x28)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0xBu:
      if ((a2[4] & 0xFC) == 0x2C)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0xCu:
      if ((a2[4] & 0xFC) != 0x30 || *a2 != COERCE_DOUBLE(v3 | (v4 << 8)))
      {
        goto LABEL_244;
      }

      v21 = a2[1] == *&v5;
      goto LABEL_183;
    case 0xDu:
      if ((a2[4] & 0xFC) == 0x34)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0xEu:
      if ((a2[4] & 0xFC) != 0x38)
      {
        goto LABEL_244;
      }

      v12 = 0x6576697463616E69;
      v13 = 0xE400000000000000;
      v14 = 1701602409;
      if (v3 != 1)
      {
        v14 = 0x657669746361;
        v13 = 0xE600000000000000;
      }

      v15 = v3 == 0;
      if (v3)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0x6576697463616E69;
      }

      if (v15)
      {
        v17 = 0xE800000000000000;
      }

      else
      {
        v17 = v13;
      }

      v18 = *a2;
      if (*a2)
      {
        if (v18 == 1)
        {
          v12 = 1701602409;
        }

        else
        {
          v12 = 0x657669746361;
        }

        if (v18 == 1)
        {
          v19 = 0xE400000000000000;
        }

        else
        {
          v19 = 0xE600000000000000;
        }
      }

      else
      {
        v19 = 0xE800000000000000;
      }

      goto LABEL_233;
    case 0xFu:
      if ((a2[4] & 0xFC) != 0x3C)
      {
        goto LABEL_244;
      }

      v24 = 1852141679;
      if (v3 <= 1)
      {
        v59 = v3 == 0;
        if (v3)
        {
          v16 = 0x6465736F6C63;
        }

        else
        {
          v16 = 1852141679;
        }

        if (v59)
        {
          v17 = 0xE400000000000000;
        }

        else
        {
          v17 = 0xE600000000000000;
        }
      }

      else if (v3 == 2)
      {
        v17 = 0xE700000000000000;
        v16 = 0x676E696E65706FLL;
      }

      else
      {
        if (v3 == 3)
        {
          v16 = 0x676E69736F6C63;
        }

        else
        {
          v16 = 0x646570706F7473;
        }

        v17 = 0xE700000000000000;
      }

      v54 = *a2;
      v55 = 0xE400000000000000;
      v56 = 0xE700000000000000;
      v57 = 0x676E696E65706FLL;
      v60 = 0x676E69736F6C63;
      if (v54 != 3)
      {
        v60 = 0x646570706F7473;
      }

      if (v54 != 2)
      {
        v57 = v60;
        v56 = 0xE700000000000000;
      }

      v58 = 1936682083;
      goto LABEL_225;
    case 0x10u:
      if ((a2[4] & 0xFC) == 0x40)
      {
        goto LABEL_70;
      }

      goto LABEL_244;
    case 0x11u:
      if ((a2[4] & 0xFC) == 0x44)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x12u:
      if ((a2[4] & 0xFC) != 0x48)
      {
        goto LABEL_244;
      }

      v24 = 0x64656B636F6C6E75;
      if (v3 > 1)
      {
        v53 = v3 == 2;
        if (v3 == 2)
        {
          v16 = 0x64656D6D616ALL;
        }

        else
        {
          v16 = 0x6E776F6E6B6E75;
        }

        if (v53)
        {
          v17 = 0xE600000000000000;
        }

        else
        {
          v17 = 0xE700000000000000;
        }
      }

      else
      {
        v39 = v3 == 0;
        if (v3)
        {
          v16 = 0x64656B636F6CLL;
        }

        else
        {
          v16 = 0x64656B636F6C6E75;
        }

        if (v39)
        {
          v17 = 0xE800000000000000;
        }

        else
        {
          v17 = 0xE600000000000000;
        }
      }

      v54 = *a2;
      v55 = 0xE800000000000000;
      v56 = 0xE600000000000000;
      v57 = 0x64656D6D616ALL;
      if (v54 != 2)
      {
        v57 = 0x6E776F6E6B6E75;
        v56 = 0xE700000000000000;
      }

      v58 = 1801678700;
LABEL_225:
      v61 = v58 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
      if (v54)
      {
        v24 = v61;
        v55 = 0xE600000000000000;
      }

      if (v54 <= 1)
      {
        v12 = v24;
      }

      else
      {
        v12 = v57;
      }

      if (v54 <= 1)
      {
        v19 = v55;
      }

      else
      {
        v19 = v56;
      }

LABEL_233:
      if (v16 == v12 && v17 == v19)
      {
        goto LABEL_235;
      }

      goto LABEL_236;
    case 0x13u:
      if ((a2[4] & 0xFC) == 0x4C)
      {
        goto LABEL_173;
      }

      goto LABEL_244;
    case 0x14u:
      if ((a2[4] & 0xFC) == 0x50)
      {
        goto LABEL_193;
      }

      goto LABEL_244;
    case 0x15u:
      if ((a2[4] & 0xFC) == 0x54)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x16u:
      if ((a2[4] & 0xFC) == 0x58)
      {
        goto LABEL_187;
      }

      goto LABEL_244;
    case 0x17u:
      if ((a2[4] & 0xFC) == 0x5C)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x18u:
      if ((a2[4] & 0xFC) != 0x60)
      {
        goto LABEL_244;
      }

LABEL_70:
      v22 = *a2;

      return sub_252A0AE98(v3, v22);
    case 0x19u:
      if ((a2[4] & 0xFC) == 0x64)
      {
        v9 = a2[1];
        if (sub_252A0AE98(v3, *a2))
        {
          goto LABEL_68;
        }
      }

      goto LABEL_244;
    case 0x1Au:
      if ((a2[4] & 0xFC) != 0x68)
      {
        goto LABEL_244;
      }

      v47 = a2[1];
      v46 = a2[2];
      v48 = sub_252A0AE98(v3, *a2);
      goto LABEL_178;
    case 0x1Bu:
      if ((a2[4] & 0xFC) == 0x6C)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x1Cu:
      if ((a2[4] & 0xFC) == 0x70)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x1Du:
      if ((a2[4] & 0xFC) == 0x74)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x1Eu:
      if ((a2[4] & 0xFC) == 0x78)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x1Fu:
      if ((a2[4] & 0xFC) == 0x7C)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x20u:
      if ((a2[4] & 0xFC) == 0x80)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x21u:
      if ((a2[4] & 0xFC) == 0x84)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x22u:
      if ((a2[4] & 0xFC) == 0x88)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x23u:
      if ((a2[4] & 0xFC) == 0x8C)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x24u:
      if ((a2[4] & 0xFC) == 0x90)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x25u:
      if ((a2[4] & 0xFC) == 0x94)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x26u:
      if ((a2[4] & 0xFC) == 0x98)
      {
        goto LABEL_173;
      }

      goto LABEL_244;
    case 0x27u:
      if ((a2[4] & 0xFC) != 0x9C)
      {
        goto LABEL_244;
      }

      v40 = (v3 & 1) == 0;
      if (v3)
      {
        v41 = 0xD000000000000010;
      }

      else
      {
        v41 = 0x7369776B636F6C63;
      }

      if (v40)
      {
        v42 = 0xE900000000000065;
      }

      else
      {
        v42 = 0x8000000252E674D0;
      }

      if (*a2)
      {
        v43 = 0xD000000000000010;
      }

      else
      {
        v43 = 0x7369776B636F6C63;
      }

      if (*a2)
      {
        v44 = 0x8000000252E674D0;
      }

      else
      {
        v44 = 0xE900000000000065;
      }

      if (v41 == v43 && v42 == v44)
      {
LABEL_235:

        LOBYTE(v49) = 1;
        return v49 & 1;
      }

LABEL_236:
      v62 = sub_252E37DB4();

      return v62 & 1;
    case 0x28u:
      if ((a2[4] & 0xFC) == 0xA0)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x29u:
      v31 = *(a2 + 32);
      if ((v31 & 0xFC) != 0xA4)
      {
        goto LABEL_244;
      }

      v32 = *(a2 + 2);
      v63 = *(a2 + 3);
      v33 = *(a2 + 1);
      v34 = *a2;
      v35 = sub_252A7D814(v3);
      v37 = v36;
      if (v35 == sub_252A7D814(v34) && v37 == v38)
      {
      }

      else
      {
        v52 = sub_252E37DB4();

        if ((v52 & 1) == 0)
        {
          goto LABEL_244;
        }
      }

      if ((sub_252AE7D40(v5, v33) & 1) == 0)
      {
        goto LABEL_244;
      }

      if (*&v6 == 0.0)
      {
        if (v32)
        {
          goto LABEL_244;
        }
      }

      else if (!v32 || (sub_252AE80B0(v6, v32) & 1) == 0)
      {
        goto LABEL_244;
      }

      if (v8)
      {
        if (v31)
        {
LABEL_243:
          LOBYTE(v49) = 1;
          return v49 & 1;
        }
      }

      else if ((v31 & 1) == 0 && v7 == v63)
      {
        goto LABEL_243;
      }

LABEL_244:
      LOBYTE(v49) = 0;
      return v49 & 1;
    case 0x2Au:
      if ((a2[4] & 0xFC) != 0xA8)
      {
        goto LABEL_244;
      }

      v45 = *a2;

      return sub_252A0B328(v3, v45);
    case 0x2Bu:
      if ((a2[4] & 0xFC) == 0xAC)
      {
        goto LABEL_191;
      }

      goto LABEL_244;
    case 0x2Cu:
      if ((a2[4] & 0xFC) == 0xB0)
      {
        goto LABEL_173;
      }

      goto LABEL_244;
    case 0x2Du:
      if ((a2[4] & 0xFC) == 0xB4)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x2Eu:
      if ((a2[4] & 0xFC) != 0xB8)
      {
        goto LABEL_244;
      }

LABEL_191:
      v49 = v3 ^ *a2 ^ 1;
      return v49 & 1;
    case 0x2Fu:
      if ((a2[4] & 0xFC) != 0xBC)
      {
        goto LABEL_244;
      }

      v10 = *a2;

      return sub_252A0AD2C(v3, v10);
    case 0x30u:
      if ((a2[4] & 0xFC) == 0xC0)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x31u:
      if ((a2[4] & 0xFC) != 0xC4)
      {
        goto LABEL_244;
      }

      v20 = *a2;

      return sub_252A0AA3C(v3, v20);
    case 0x32u:
      if ((a2[4] & 0xFC) != 0xC8)
      {
        goto LABEL_244;
      }

LABEL_173:
      v21 = (v3 | (v4 << 8)) == *a2;
      goto LABEL_183;
    case 0x33u:
      if ((a2[4] & 0xFC) != 0xCC)
      {
        goto LABEL_244;
      }

LABEL_193:
      v51 = *a2;

      return sub_252A0B044(v3, v51);
    case 0x34u:
      if ((a2[4] & 0xFC) != 0xD0)
      {
        goto LABEL_244;
      }

LABEL_187:
      v50 = *a2;

      return sub_252A0B1A8(v3, v50);
    case 0x35u:
      if ((a2[4] & 0xFC) != 0xD4)
      {
        goto LABEL_244;
      }

      v9 = a2[1];
      if ((sub_252A0B1A8(v3, *a2) & 1) == 0)
      {
        goto LABEL_244;
      }

LABEL_68:
      v21 = v9 == *&v5;
      goto LABEL_183;
    case 0x36u:
      if ((a2[4] & 0xFC) != 0xD8)
      {
        goto LABEL_244;
      }

      v47 = a2[1];
      v46 = a2[2];
      v48 = sub_252A0B1A8(v3, *a2);
LABEL_178:
      LOBYTE(v49) = 0;
      if ((v48 & 1) == 0 || v47 != *&v5)
      {
        return v49 & 1;
      }

      v21 = v46 == *&v6;
LABEL_183:
      LOBYTE(v49) = v21;
      return v49 & 1;
    case 0x37u:
      if ((a2[4] & 0xFC) == 0xDC)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    case 0x38u:
      if ((a2[4] & 0xFC) == 0xE0)
      {
        goto LABEL_182;
      }

      goto LABEL_244;
    default:
      if (*(a2 + 32) > 3u)
      {
        goto LABEL_244;
      }

LABEL_182:
      v21 = *a2 == COERCE_DOUBLE(v3 | (v4 << 8));
      goto LABEL_183;
  }
}

uint64_t sub_252A812C0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 6;
  }

  if (qword_27F53F308 != -1)
  {
    swift_once();
  }

  v2 = off_27F542288;
  v3 = sub_252E36FA4();
  if (v2[2])
  {
    v5 = sub_252A44A10(v3, v4);
    v7 = v6;

    if (v7)
    {
      return *(v2[7] + v5);
    }
  }

  else
  {
  }

  return 6;
}

uint64_t sub_252A81380(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4D5241534944 && a2 == 0xE600000000000000)
  {
    return 0;
  }

  if (sub_252E37DB4())
  {
    return 0;
  }

  if (a1 == 0x4D52415F59415453 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x4D52415F59415741 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x52415F544847494ELL && a2 == 0xE90000000000004DLL || (sub_252E37DB4() & 1) != 0)
  {
    return 3;
  }

  result = 4;
  if (a1 != 0x52545F4D52414C41 || a2 != 0xEF44455245474749)
  {
    if (sub_252E37DB4())
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

unint64_t sub_252A8150C(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37DE4();

  if (v2 >= 0x3C)
  {
    return 60;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252A81560(uint64_t a1, unint64_t a2)
{
  sub_252947DBC();
  v4 = sub_252E377D4();
  if (v4[2] == 2 && (v5 = v4, v6 = sub_252C5C010(v4[4], v4[5], v4[6], v4[7], 0xD00000000000001ALL, 0x8000000252E75EE0), v7 = v5, (v6 & 1) != 0))
  {
    v8 = v5[8];
    v9 = v7[9];
    v10 = v7[10];
    v11 = v7[11];

    v12 = MEMORY[0x2530AD4C0](v8, v9, v10, v11);
    v14 = v13;

    v15 = sub_252A8150C(v12, v14);
    if (v15 != 60)
    {
      v16 = v15;
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v17 = sub_252E36AD4();
  __swift_project_value_buffer(v17, qword_27F544EE0);
  sub_252E379F4();

  MEMORY[0x2530AD570](a1, a2);

  sub_252CC4050(0xD000000000000017, 0x8000000252E75E90, 0xD000000000000078, 0x8000000252E75DE0, 0xD000000000000023, 0x8000000252E75EB0, 131);
  v16 = 60;
LABEL_9:

  return v16;
}

unint64_t sub_252A81758()
{
  result = qword_27F542320;
  if (!qword_27F542320)
  {
    result = swift_getWitnessTable(aQ_3, &type metadata for AttributeKind, v0, v1);
    atomic_store(result, &qword_27F542320);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationIntent.HomeIntentFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationIntent.HomeIntentFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RobotVacuumCleanerRunState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RobotVacuumCleanerRunState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252A81A8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x48 && *(a1 + 33))
  {
    return (*a1 + 72);
  }

  v3 = ((*(a1 + 32) >> 2) & 0xFFFFFFBF | (((*(a1 + 32) >> 1) & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x47)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_252A81AE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x47)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 72;
    *(result + 8) = 0;
    if (a3 >= 0x48)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x48)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 & 0x40) != 0) - 2 * a2);
    }
  }

  return result;
}

unint64_t sub_252A81B70()
{
  result = qword_27F542328;
  if (!qword_27F542328)
  {
    result = swift_getWitnessTable(aI_1, &type metadata for Attribute, v0, v1);
    atomic_store(result, &qword_27F542328);
  }

  return result;
}

unint64_t sub_252A81BC8()
{
  result = qword_27F542330;
  if (!qword_27F542330)
  {
    result = swift_getWitnessTable(byte_252E447C0, &type metadata for RobotVacuumCleanerRunState, v0, v1);
    atomic_store(result, &qword_27F542330);
  }

  return result;
}

unint64_t sub_252A81C50()
{
  result = qword_27F542348;
  if (!qword_27F542348)
  {
    result = swift_getWitnessTable(byte_252E4483C, &type metadata for RobotVacuumCleanerRunState, v0, v1);
    atomic_store(result, &qword_27F542348);
  }

  return result;
}

unint64_t sub_252A81CA8()
{
  result = qword_27F542350;
  if (!qword_27F542350)
  {
    result = swift_getWitnessTable(byte_252E4480C, &type metadata for RobotVacuumCleanerRunState, v0, v1);
    atomic_store(result, &qword_27F542350);
  }

  return result;
}

unint64_t sub_252A81D00()
{
  result = qword_27F542358;
  if (!qword_27F542358)
  {
    result = swift_getWitnessTable(asc_252E44870, &type metadata for RobotVacuumCleanerRunState, v0, v1);
    atomic_store(result, &qword_27F542358);
  }

  return result;
}

unint64_t sub_252A81D58()
{
  result = qword_27F542360;
  if (!qword_27F542360)
  {
    result = swift_getWitnessTable(byte_252E448F8, &type metadata for RobotVacuumCleanerRunState, v0, v1);
    atomic_store(result, &qword_27F542360);
  }

  return result;
}

unint64_t sub_252A81DB0()
{
  result = qword_27F542368;
  if (!qword_27F542368)
  {
    result = swift_getWitnessTable(aYw, &type metadata for RobotVacuumCleanerRunState, v0, v1);
    atomic_store(result, &qword_27F542368);
  }

  return result;
}

unint64_t sub_252A81E08()
{
  result = qword_27F542370;
  if (!qword_27F542370)
  {
    result = swift_getWitnessTable(aQ_4, &type metadata for RobotVacuumCleanerCleanMode, v0, v1);
    atomic_store(result, &qword_27F542370);
  }

  return result;
}

unint64_t sub_252A81E60()
{
  result = qword_27F542378;
  if (!qword_27F542378)
  {
    result = swift_getWitnessTable(byte_252E44998, &type metadata for RobotVacuumCleanerCleanMode, v0, v1);
    atomic_store(result, &qword_27F542378);
  }

  return result;
}

unint64_t sub_252A81EE8()
{
  result = qword_27F542388;
  if (!qword_27F542388)
  {
    result = swift_getWitnessTable(byte_252E44A2C, &type metadata for RobotVacuumCleanerCleanMode, v0, v1);
    atomic_store(result, &qword_27F542388);
  }

  return result;
}

unint64_t sub_252A81F40()
{
  result = qword_27F542390;
  if (!qword_27F542390)
  {
    result = swift_getWitnessTable(byte_252E449FC, &type metadata for RobotVacuumCleanerCleanMode, v0, v1);
    atomic_store(result, &qword_27F542390);
  }

  return result;
}

unint64_t sub_252A81F98()
{
  result = qword_27F542398;
  if (!qword_27F542398)
  {
    result = swift_getWitnessTable(a1_7, &type metadata for RobotVacuumCleanerCleanMode, v0, v1);
    atomic_store(result, &qword_27F542398);
  }

  return result;
}

unint64_t sub_252A81FF0()
{
  result = qword_27F5423A0;
  if (!qword_27F5423A0)
  {
    result = swift_getWitnessTable(byte_252E44AE8, &type metadata for RobotVacuumCleanerCleanMode, v0, v1);
    atomic_store(result, &qword_27F5423A0);
  }

  return result;
}

unint64_t sub_252A82048()
{
  result = qword_27F5423A8;
  if (!qword_27F5423A8)
  {
    result = swift_getWitnessTable(aIu, &type metadata for RobotVacuumCleanerCleanMode, v0, v1);
    atomic_store(result, &qword_27F5423A8);
  }

  return result;
}

unint64_t sub_252A820A0()
{
  result = qword_27F5423B0;
  if (!qword_27F5423B0)
  {
    result = swift_getWitnessTable(byte_252E44B88, &type metadata for RobotVacuumBasicRunStateCommand, v0, v1);
    atomic_store(result, &qword_27F5423B0);
  }

  return result;
}

unint64_t sub_252A82128()
{
  result = qword_27F5423C8;
  if (!qword_27F5423C8)
  {
    result = swift_getWitnessTable(byte_252E44C04, &type metadata for RobotVacuumBasicRunStateCommand, v0, v1);
    atomic_store(result, &qword_27F5423C8);
  }

  return result;
}

unint64_t sub_252A82180()
{
  result = qword_27F5423D0;
  if (!qword_27F5423D0)
  {
    result = swift_getWitnessTable(byte_252E44BD4, &type metadata for RobotVacuumBasicRunStateCommand, v0, v1);
    atomic_store(result, &qword_27F5423D0);
  }

  return result;
}

unint64_t sub_252A821D8()
{
  result = qword_27F5423D8;
  if (!qword_27F5423D8)
  {
    result = swift_getWitnessTable(aY_1, &type metadata for RobotVacuumBasicRunStateCommand, v0, v1);
    atomic_store(result, &qword_27F5423D8);
  }

  return result;
}

unint64_t sub_252A82230()
{
  result = qword_27F5423E0;
  if (!qword_27F5423E0)
  {
    result = swift_getWitnessTable(byte_252E44CC0, &type metadata for RobotVacuumBasicRunStateCommand, v0, v1);
    atomic_store(result, &qword_27F5423E0);
  }

  return result;
}

unint64_t sub_252A82288()
{
  result = qword_27F5423E8;
  if (!qword_27F5423E8)
  {
    result = swift_getWitnessTable(byte_252E44D38, &type metadata for RobotVacuumBasicRunStateCommand, v0, v1);
    atomic_store(result, &qword_27F5423E8);
  }

  return result;
}

unint64_t sub_252A822DC()
{
  result = qword_27F5423F0;
  if (!qword_27F5423F0)
  {
    result = swift_getWitnessTable(byte_252E44D90, &type metadata for ThermostatMode, v0, v1);
    atomic_store(result, &qword_27F5423F0);
  }

  return result;
}

unint64_t sub_252A82334()
{
  result = qword_27F5423F8;
  if (!qword_27F5423F8)
  {
    result = swift_getWitnessTable(aY_2, &type metadata for ThermostatMode, v0, v1);
    atomic_store(result, &qword_27F5423F8);
  }

  return result;
}

unint64_t sub_252A8238C()
{
  result = qword_27F542400;
  if (!qword_27F542400)
  {
    result = swift_getWitnessTable(byte_252E44D60, &type metadata for ThermostatMode, v0, v1);
    atomic_store(result, &qword_27F542400);
  }

  return result;
}

unint64_t sub_252A82414()
{
  result = qword_27F542418;
  if (!qword_27F542418)
  {
    result = swift_getWitnessTable(byte_252E44E24, &type metadata for ThermostatMode, v0, v1);
    atomic_store(result, &qword_27F542418);
  }

  return result;
}

unint64_t sub_252A8246C()
{
  result = qword_27F542420;
  if (!qword_27F542420)
  {
    result = swift_getWitnessTable(byte_252E44DF4, &type metadata for ThermostatMode, v0, v1);
    atomic_store(result, &qword_27F542420);
  }

  return result;
}

unint64_t sub_252A824C4()
{
  result = qword_27F542428;
  if (!qword_27F542428)
  {
    result = swift_getWitnessTable(a9y, &type metadata for ThermostatMode, v0, v1);
    atomic_store(result, &qword_27F542428);
  }

  return result;
}

unint64_t sub_252A8251C()
{
  result = qword_27F542430;
  if (!qword_27F542430)
  {
    result = swift_getWitnessTable(byte_252E44EE0, &type metadata for ThermostatMode, v0, v1);
    atomic_store(result, &qword_27F542430);
  }

  return result;
}

unint64_t sub_252A82574()
{
  result = qword_27F542438;
  if (!qword_27F542438)
  {
    result = swift_getWitnessTable(aQq, &type metadata for ThermostatMode, v0, v1);
    atomic_store(result, &qword_27F542438);
  }

  return result;
}

unint64_t sub_252A825CC()
{
  result = qword_27F542440;
  if (!qword_27F542440)
  {
    result = swift_getWitnessTable(aA, &type metadata for Attribute, v0, v1);
    atomic_store(result, &qword_27F542440);
  }

  return result;
}

unint64_t sub_252A82624()
{
  result = qword_27F542448;
  if (!qword_27F542448)
  {
    result = swift_getWitnessTable(a1_8, &type metadata for Attribute, v0, v1);
    atomic_store(result, &qword_27F542448);
  }

  return result;
}

unint64_t sub_252A8267C()
{
  result = qword_27F542450;
  if (!qword_27F542450)
  {
    result = swift_getWitnessTable(asc_252E44724, &type metadata for Attribute, v0, v1);
    atomic_store(result, &qword_27F542450);
  }

  return result;
}

unint64_t sub_252A826D4()
{
  result = qword_27F542458;
  if (!qword_27F542458)
  {
    result = swift_getWitnessTable(aA_0, &type metadata for RobotVacuumCleanerRunState, v0, v1);
    atomic_store(result, &qword_27F542458);
  }

  return result;
}

unint64_t sub_252A8272C()
{
  result = qword_27F542460;
  if (!qword_27F542460)
  {
    result = swift_getWitnessTable(byte_252E44BB8, &type metadata for RobotVacuumBasicRunStateCommand, v0, v1);
    atomic_store(result, &qword_27F542460);
  }

  return result;
}

unint64_t sub_252A82780()
{
  result = qword_27F542468;
  if (!qword_27F542468)
  {
    result = swift_getWitnessTable(asc_252E44C70, &type metadata for RobotVacuumBasicRunStateCommand, v0, v1);
    atomic_store(result, &qword_27F542468);
  }

  return result;
}

unint64_t sub_252A827D4()
{
  result = qword_27F542470;
  if (!qword_27F542470)
  {
    result = swift_getWitnessTable(byte_252E448A8, &type metadata for RobotVacuumCleanerRunState, v0, v1);
    atomic_store(result, &qword_27F542470);
  }

  return result;
}

unint64_t sub_252A82828()
{
  result = qword_27F542478;
  if (!qword_27F542478)
  {
    result = swift_getWitnessTable(byte_252E44F80, &type metadata for Attribute, v0, v1);
    atomic_store(result, &qword_27F542478);
  }

  return result;
}

unint64_t sub_252A8287C(uint64_t a1, uint64_t a2)
{
  sub_252947DBC();
  v4 = sub_252E377D4();
  v5 = v4;
  v6 = v4[2];
  if (v6 == 2)
  {
    if (sub_252C5C010(v4[4], v4[5], v4[6], v4[7], 0x7475626972747441, 0xE900000000000065))
    {
      v7 = v5[8];
      v8 = v5[9];
      v9 = v5[10];
      v10 = v5[11];

      v11 = MEMORY[0x2530AD4C0](v7, v8, v9, v10);
      v13 = v12;

      v14 = sub_252A8150C(v11, v13);
      if (v14 != 60)
      {
        v20 = v14;

        return v20;
      }
    }

    v6 = v5[2];
  }

  if (v6 < 2)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_17;
  }

  v15 = v5[8];
  v16 = v5[9];
  v18 = v5[10];
  v17 = v5[11];

  if (sub_252C5C010(v15, v16, v18, v17, 0x74736F6D72656874, 0xEE0065646F4D7461) & 1) != 0 || (v5 = 0xD000000000000016, (sub_252C5C010(v15, v16, v18, v17, 0xD000000000000016, 0x8000000252E75FF0)) || (sub_252C5C010(v15, v16, v18, v17, 0xD000000000000016, 0x8000000252E76010))
  {

    return 56;
  }

  if (sub_252C5C010(v15, v16, v18, v17, 0xD00000000000001ALL, 0x8000000252E651D0) & 1) != 0 || (sub_252C5C010(v15, v16, v18, v17, 0xD000000000000022, 0x8000000252E76030))
  {

LABEL_14:

    return 51;
  }

  v21 = sub_252C5C010(v15, v16, v18, v17, 0xD000000000000022, 0x8000000252E76060);

  if (v21)
  {
    goto LABEL_14;
  }

  if (qword_27F53F568 != -1)
  {
    goto LABEL_19;
  }

LABEL_17:
  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544EE0);
  sub_252E379F4();

  MEMORY[0x2530AD570](a1, a2);

  sub_252CC4050(v5 + 1, 0x8000000252E75E90, v5 + 98, 0x8000000252E75DE0, v5 - 1, 0x8000000252E76090, 121);

  return 60;
}

unint64_t sub_252A82BF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

void *sub_252A82C44@<X0>(uint64_t a3@<X8>)
{
  sub_252E36584();
  __swift_project_boxed_opaque_existential_1(&v34, v36);
  v4 = sub_252E364C4();
  v6 = sub_252A8287C(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(&v34);
  switch(v6)
  {
    case 0:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      if (v35)
      {
        v12 = -2;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_180;
    case 1:
      sub_252A8472C();
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = v34 & 1;
      v13 = v34 == 2;
      v12 = 4;
      goto LABEL_170;
    case 2:
      sub_252A846D8();
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v13 = v34 == 6;
      if (v34 == 6)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 8;
      goto LABEL_170;
    case 3:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 12;
      goto LABEL_177;
    case 4:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 16;
      goto LABEL_177;
    case 5:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = v34 & 1;
      v13 = v34 == 2;
      v12 = 20;
      goto LABEL_170;
    case 6:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 24;
      goto LABEL_177;
    case 7:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 28;
      goto LABEL_177;
    case 8:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = v34 & 1;
      v13 = v34 == 2;
      v12 = 32;
      goto LABEL_170;
    case 9:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 36;
      goto LABEL_177;
    case 10:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 40;
      goto LABEL_177;
    case 12:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = v34 & 1;
      v13 = v34 == 2;
      v12 = 44;
      goto LABEL_170;
    case 13:
      sub_252A84410();
      sub_252E365A4();
      if ((v35 & 1) == 0)
      {
        v11 = v34;
        result = sub_252E365A4();
        if ((v35 & 1) == 0)
        {
          v9 = 0;
          v10 = 0;
          v8 = v34;
          v12 = 48;
          goto LABEL_180;
        }
      }

      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v21 = sub_252E36AD4();
      __swift_project_value_buffer(v21, qword_27F544EE0);
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E75FC0);
      sub_252E365B4();
      sub_252E37AE4();
      v17 = v34;
      v18 = v35;
      v19 = 416;
      goto LABEL_195;
    case 14:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = v34 & 1;
      v13 = v34 == 2;
      v12 = 52;
      goto LABEL_170;
    case 15:
      sub_252A84684();
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v13 = v34 == 3;
      if (v34 == 3)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 56;
      goto LABEL_170;
    case 16:
      sub_252A8450C();
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v13 = v34 == 5;
      if (v34 == 5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 60;
      goto LABEL_170;
    case 17:
      sub_252A844B8();
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v13 = v34 == 4;
      if (v34 == 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 72;
      goto LABEL_170;
    case 18:
      sub_252A84630();
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v13 = v34 == 6;
      if (v34 == 6)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 96;
      goto LABEL_170;
    case 19:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 76;
      goto LABEL_177;
    case 20:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 68;
      goto LABEL_177;
    case 21:
      sub_252A84464();
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v13 = v34 == 5;
      if (v34 == 5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 80;
      goto LABEL_170;
    case 22:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 84;
      goto LABEL_177;
    case 23:
      sub_252A822DC();
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v13 = v34 == 6;
      if (v34 == 6)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 88;
      goto LABEL_170;
    case 26:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = v34 & 1;
      v13 = v34 == 2;
      v12 = 92;
      goto LABEL_170;
    case 27:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = v34 & 1;
      v13 = v34 == 2;
      v12 = 108;
      goto LABEL_170;
    case 29:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 112;
      goto LABEL_177;
    case 30:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = v34 & 1;
      v13 = v34 == 2;
      v12 = 116;
      goto LABEL_170;
    case 31:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = v34 & 1;
      v13 = v34 == 2;
      v12 = 120;
      goto LABEL_170;
    case 32:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = 124;
      goto LABEL_177;
    case 33:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = v34 & 1;
      v13 = v34 == 2;
      v12 = 0x80;
      goto LABEL_170;
    case 34:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = v34 & 1;
      v13 = v34 == 2;
      v12 = -124;
      goto LABEL_170;
    case 35:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = -120;
      goto LABEL_177;
    case 36:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = -116;
      goto LABEL_177;
    case 37:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = -112;
      goto LABEL_177;
    case 38:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = v34 & 1;
      v13 = v34 == 2;
      v12 = -108;
      goto LABEL_170;
    case 39:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = -104;
      goto LABEL_177;
    case 40:
      sub_252A845DC();
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = v34 & 1;
      v13 = v34 == 2;
      v12 = -100;
      goto LABEL_170;
    case 41:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = -96;
      goto LABEL_177;
    case 42:
      sub_252A65570();
      sub_252A84410();
      sub_252E365A4();
      v11 = v34;
      if (v34 != 16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541FD8, &unk_252E42FD0);
        sub_252A655C4();
        sub_252E365A4();
        v8 = v34;
        if (v34)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416D8, &qword_252E40998);
          sub_252A84560();
          sub_252E365A4();
          v9 = v34;
          result = sub_252E365A4();
          v10 = v34;
          v12 = v35 | 0xA4;
          goto LABEL_180;
        }
      }

      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v25 = sub_252E36AD4();
      __swift_project_value_buffer(v25, qword_27F544EE0);
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E75F40);
      sub_252E365B4();
      sub_252E37AE4();
      v17 = v34;
      v18 = v35;
      v19 = 491;
      goto LABEL_195;
    case 43:
      sub_252A6551C();
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v13 = v34 == 3;
      if (v34 == 3)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = -88;
      goto LABEL_170;
    case 46:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = -80;
      goto LABEL_177;
    case 47:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = v34 & 1;
      v13 = v34 == 2;
      v12 = -84;
      goto LABEL_170;
    case 48:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = -76;
      goto LABEL_177;
    case 49:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = v34 & 1;
      v13 = v34 == 2;
      v12 = -72;
      goto LABEL_170;
    case 50:
      sub_252A8450C();
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v13 = v34 == 5;
      if (v34 == 5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = -68;
      goto LABEL_170;
    case 51:
      sub_252A84630();
      sub_252A84410();
      sub_252E365A4();
      v11 = v34;
      sub_252E365A4();
      v31 = v34;
      v29 = v35;
      sub_252E365A4();
      v8 = v34;
      v22 = v35;
      result = sub_252E365A4();
      if (v22 & 1) != 0 || (v35)
      {
        if (v11 != 6)
        {
          v9 = 0;
          v10 = 0;
          v20 = v29 == 0;
          if (v29)
          {
            v8 = 0;
          }

          else
          {
            v8 = v31;
          }

          v12 = 100;
          v23 = 96;
          goto LABEL_178;
        }
      }

      else if (v11 != 6)
      {
        v10 = 0;
        v9 = v34;
        v12 = 104;
        goto LABEL_180;
      }

      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v27 = sub_252E36AD4();
      __swift_project_value_buffer(v27, qword_27F544EE0);
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000004BLL, 0x8000000252E75F70);
      sub_252E365B4();
      sub_252E37AE4();
      v17 = v34;
      v18 = v35;
      v19 = 456;
      goto LABEL_195;
    case 52:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = -64;
      goto LABEL_177;
    case 53:
      sub_252A844B8();
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v13 = v34 == 4;
      if (v34 == 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = -60;
      goto LABEL_170;
    case 54:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = -56;
      goto LABEL_177;
    case 55:
      sub_252A84464();
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v13 = v34 == 5;
      if (v34 == 5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = -52;
LABEL_170:
      if (v13)
      {
        v12 = -2;
      }

      goto LABEL_180;
    case 56:
      sub_252A822DC();
      sub_252A84410();
      sub_252E365A4();
      v11 = v34;
      sub_252E365A4();
      v30 = v34;
      v28 = v35;
      sub_252E365A4();
      v8 = v34;
      v14 = v35;
      result = sub_252E365A4();
      if (v14 & 1) != 0 || (v35)
      {
        if (v11 != 6)
        {
          v9 = 0;
          v10 = 0;
          v20 = v28 == 0;
          if (v28)
          {
            v8 = 0;
          }

          else
          {
            v8 = v30;
          }

          v12 = -44;
          v23 = -48;
LABEL_178:
          if (!v20)
          {
            v12 = v23;
          }

          goto LABEL_180;
        }
      }

      else if (v11 != 6)
      {
        v10 = 0;
        v9 = v34;
        v12 = -40;
        goto LABEL_180;
      }

      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v26 = sub_252E36AD4();
      __swift_project_value_buffer(v26, qword_27F544EE0);
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E75F00);
      sub_252E365B4();
      sub_252E37AE4();
      v17 = v34;
      v18 = v35;
      v19 = 532;
LABEL_195:
      sub_252CC4050(v17, v18, 0xD000000000000078, 0x8000000252E75DE0, 0xD000000000000010, 0x8000000252E6F060, v19);
LABEL_196:

      v11 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v12 = -2;
LABEL_180:
      *a3 = v11;
      *(a3 + 8) = v8;
      *(a3 + 16) = v9;
      *(a3 + 24) = v10;
      *(a3 + 32) = v12;
      return result;
    case 57:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = -36;
      goto LABEL_177;
    case 58:
      result = sub_252E36594();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v20 = v35 == 0;
      if (v35)
      {
        v11 = 0;
      }

      else
      {
        v11 = v34;
      }

      v12 = -32;
LABEL_177:
      v23 = -2;
      goto LABEL_178;
    case 60:
      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v15 = sub_252E36AD4();
      __swift_project_value_buffer(v15, qword_27F544EE0);
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_252E379F4();
      v32 = v34;
      v33 = v35;
      MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E74FD0);
      sub_252E36584();
      __swift_project_boxed_opaque_existential_1(&v34, v36);
      v16 = sub_252E364C4();
      MEMORY[0x2530AD570](v16);

      __swift_destroy_boxed_opaque_existential_1(&v34);
      v17 = v32;
      v18 = v33;
      v19 = 375;
      goto LABEL_195;
    default:
      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v24 = sub_252E36AD4();
      __swift_project_value_buffer(v24, qword_27F544EE0);
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E750A0);
      sub_252E37AE4();
      sub_252CC4050(v34, v35, 0xD000000000000078, 0x8000000252E75DE0, 0xD000000000000010, 0x8000000252E6F060, 540);
      goto LABEL_196;
  }
}

unint64_t sub_252A84410()
{
  result = qword_27F542480;
  if (!qword_27F542480)
  {
    result = swift_getWitnessTable(byte_252E46290, &type metadata for Attribute.Identifiers, v0, v1);
    atomic_store(result, &qword_27F542480);
  }

  return result;
}

unint64_t sub_252A84464()
{
  result = qword_27F542488;
  if (!qword_27F542488)
  {
    result = swift_getWitnessTable(byte_252E46248, &type metadata for SecuritySystemState, v0, v1);
    atomic_store(result, &qword_27F542488);
  }

  return result;
}

unint64_t sub_252A844B8()
{
  result = qword_27F542490;
  if (!qword_27F542490)
  {
    result = swift_getWitnessTable(asc_252E46200, &type metadata for LockState, v0, v1);
    atomic_store(result, &qword_27F542490);
  }

  return result;
}

unint64_t sub_252A8450C()
{
  result = qword_27F542498;
  if (!qword_27F542498)
  {
    result = swift_getWitnessTable(aQ_5, &type metadata for PositionState, v0, v1);
    atomic_store(result, &qword_27F542498);
  }

  return result;
}

unint64_t sub_252A84560()
{
  result = qword_27F5424A0;
  if (!qword_27F5424A0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5416D8, &qword_252E40998);
    v4[0] = MEMORY[0x277CEB170];
    result = swift_getWitnessTable(MEMORY[0x277CEB148], v3, v4);
    atomic_store(result, &qword_27F5424A0);
  }

  return result;
}

unint64_t sub_252A845DC()
{
  result = qword_27F5424A8;
  if (!qword_27F5424A8)
  {
    result = swift_getWitnessTable(byte_252E46170, &type metadata for RotationDirectionValue, v0, v1);
    atomic_store(result, &qword_27F5424A8);
  }

  return result;
}

unint64_t sub_252A84630()
{
  result = qword_27F5424B0;
  if (!qword_27F5424B0)
  {
    result = swift_getWitnessTable(byte_252E46128, &type metadata for HumidifierDehumidifierMode, v0, v1);
    atomic_store(result, &qword_27F5424B0);
  }

  return result;
}

unint64_t sub_252A84684()
{
  result = qword_27F5424B8;
  if (!qword_27F5424B8)
  {
    result = swift_getWitnessTable(aI_2, &type metadata for AirPurifierState, v0, v1);
    atomic_store(result, &qword_27F5424B8);
  }

  return result;
}

unint64_t sub_252A846D8()
{
  result = qword_27F5424C0;
  if (!qword_27F5424C0)
  {
    result = swift_getWitnessTable(byte_252E46098, &type metadata for AirQuality, v0, v1);
    atomic_store(result, &qword_27F5424C0);
  }

  return result;
}

unint64_t sub_252A8472C()
{
  result = qword_27F5424C8;
  if (!qword_27F5424C8)
  {
    result = swift_getWitnessTable(byte_252E46050, &type metadata for AirParticulateSize, v0, v1);
    atomic_store(result, &qword_27F5424C8);
  }

  return result;
}

unint64_t sub_252A847B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252A84804(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252A84850(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252A8489C(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252A848E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252A84934(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252A84980(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252A849CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252A84A18()
{
  result = qword_27F5424D0;
  if (!qword_27F5424D0)
  {
    result = swift_getWitnessTable(byte_252E44E90, &type metadata for ThermostatMode, v0, v1);
    atomic_store(result, &qword_27F5424D0);
  }

  return result;
}

unint64_t sub_252A84A6C()
{
  result = qword_27F5424D8;
  if (!qword_27F5424D8)
  {
    result = swift_getWitnessTable(byte_252E44A98, &type metadata for RobotVacuumCleanerCleanMode, v0, v1);
    atomic_store(result, &qword_27F5424D8);
  }

  return result;
}

unint64_t sub_252A84B54()
{
  result = qword_27F5424E0;
  if (!qword_27F5424E0)
  {
    result = swift_getWitnessTable(aE_3, &type metadata for AirParticulateSize, v0, v1);
    atomic_store(result, &qword_27F5424E0);
  }

  return result;
}

unint64_t sub_252A84BDC()
{
  result = qword_27F5424F8;
  if (!qword_27F5424F8)
  {
    result = swift_getWitnessTable(asc_252E451A8, &type metadata for AirParticulateSize, v0, v1);
    atomic_store(result, &qword_27F5424F8);
  }

  return result;
}

unint64_t sub_252A84C34()
{
  result = qword_27F542500;
  if (!qword_27F542500)
  {
    result = swift_getWitnessTable(asc_252E45178, &type metadata for AirParticulateSize, v0, v1);
    atomic_store(result, &qword_27F542500);
  }

  return result;
}

unint64_t sub_252A84C8C()
{
  result = qword_27F542508;
  if (!qword_27F542508)
  {
    result = swift_getWitnessTable(byte_252E451D8, &type metadata for AirParticulateSize, v0, v1);
    atomic_store(result, &qword_27F542508);
  }

  return result;
}

unint64_t sub_252A84CE4()
{
  result = qword_27F542510;
  if (!qword_27F542510)
  {
    result = swift_getWitnessTable(aAoH, &type metadata for AirParticulateSize, v0, v1);
    atomic_store(result, &qword_27F542510);
  }

  return result;
}

unint64_t sub_252A84D3C()
{
  result = qword_27F542518;
  if (!qword_27F542518)
  {
    result = swift_getWitnessTable(byte_252E452D8, &type metadata for AirParticulateSize, v0, v1);
    atomic_store(result, &qword_27F542518);
  }

  return result;
}

unint64_t sub_252A84D94()
{
  result = qword_27F542520;
  if (!qword_27F542520)
  {
    result = swift_getWitnessTable(aQ_6, &type metadata for AirQuality, v0, v1);
    atomic_store(result, &qword_27F542520);
  }

  return result;
}

unint64_t sub_252A84E1C()
{
  result = qword_27F542538;
  if (!qword_27F542538)
  {
    result = swift_getWitnessTable(aU_4, &type metadata for AirQuality, v0, v1);
    atomic_store(result, &qword_27F542538);
  }

  return result;
}

unint64_t sub_252A84E74()
{
  result = qword_27F542540;
  if (!qword_27F542540)
  {
    result = swift_getWitnessTable(aM_3, &type metadata for AirQuality, v0, v1);
    atomic_store(result, &qword_27F542540);
  }

  return result;
}

unint64_t sub_252A84ECC()
{
  result = qword_27F542548;
  if (!qword_27F542548)
  {
    result = swift_getWitnessTable(byte_252E453B0, &type metadata for AirQuality, v0, v1);
    atomic_store(result, &qword_27F542548);
  }

  return result;
}

unint64_t sub_252A84F24()
{
  result = qword_27F542550;
  if (!qword_27F542550)
  {
    result = swift_getWitnessTable(aImT, &type metadata for AirQuality, v0, v1);
    atomic_store(result, &qword_27F542550);
  }

  return result;
}

unint64_t sub_252A84F7C()
{
  result = qword_27F542558;
  if (!qword_27F542558)
  {
    result = swift_getWitnessTable(byte_252E454B0, &type metadata for AirQuality, v0, v1);
    atomic_store(result, &qword_27F542558);
  }

  return result;
}

unint64_t sub_252A84FD4()
{
  result = qword_27F542560;
  if (!qword_27F542560)
  {
    result = swift_getWitnessTable(byte_252E454D8, &type metadata for AirPurifierState, v0, v1);
    atomic_store(result, &qword_27F542560);
  }

  return result;
}

unint64_t sub_252A8505C()
{
  result = qword_27F542578;
  if (!qword_27F542578)
  {
    result = swift_getWitnessTable(asc_252E45554, &type metadata for AirPurifierState, v0, v1);
    atomic_store(result, &qword_27F542578);
  }

  return result;
}

unint64_t sub_252A850B4()
{
  result = qword_27F542580;
  if (!qword_27F542580)
  {
    result = swift_getWitnessTable(aU_5, &type metadata for AirPurifierState, v0, v1);
    atomic_store(result, &qword_27F542580);
  }

  return result;
}

unint64_t sub_252A8510C()
{
  result = qword_27F542588;
  if (!qword_27F542588)
  {
    result = swift_getWitnessTable(aR, &type metadata for AirPurifierState, v0, v1);
    atomic_store(result, &qword_27F542588);
  }

  return result;
}

unint64_t sub_252A85164()
{
  result = qword_27F542590;
  if (!qword_27F542590)
  {
    result = swift_getWitnessTable(byte_252E45610, &type metadata for AirPurifierState, v0, v1);
    atomic_store(result, &qword_27F542590);
  }

  return result;
}

unint64_t sub_252A851BC()
{
  result = qword_27F542598;
  if (!qword_27F542598)
  {
    result = swift_getWitnessTable(aAj, &type metadata for AirPurifierState, v0, v1);
    atomic_store(result, &qword_27F542598);
  }

  return result;
}

unint64_t sub_252A85214()
{
  result = qword_27F5425A0;
  if (!qword_27F5425A0)
  {
    result = swift_getWitnessTable(byte_252E456B0, &type metadata for PositionState, v0, v1);
    atomic_store(result, &qword_27F5425A0);
  }

  return result;
}

unint64_t sub_252A8529C()
{
  result = qword_27F5425B8;
  if (!qword_27F5425B8)
  {
    result = swift_getWitnessTable(byte_252E4572C, &type metadata for PositionState, v0, v1);
    atomic_store(result, &qword_27F5425B8);
  }

  return result;
}

unint64_t sub_252A852F4()
{
  result = qword_27F5425C0;
  if (!qword_27F5425C0)
  {
    result = swift_getWitnessTable(byte_252E456FC, &type metadata for PositionState, v0, v1);
    atomic_store(result, &qword_27F5425C0);
  }

  return result;
}

unint64_t sub_252A8534C()
{
  result = qword_27F5425C8;
  if (!qword_27F5425C8)
  {
    result = swift_getWitnessTable(a1p, &type metadata for PositionState, v0, v1);
    atomic_store(result, &qword_27F5425C8);
  }

  return result;
}

unint64_t sub_252A853A4()
{
  result = qword_27F5425D0;
  if (!qword_27F5425D0)
  {
    result = swift_getWitnessTable(byte_252E457E8, &type metadata for PositionState, v0, v1);
    atomic_store(result, &qword_27F5425D0);
  }

  return result;
}

unint64_t sub_252A853FC()
{
  result = qword_27F5425D8;
  if (!qword_27F5425D8)
  {
    result = swift_getWitnessTable(aIh, &type metadata for PositionState, v0, v1);
    atomic_store(result, &qword_27F5425D8);
  }

  return result;
}

unint64_t sub_252A85454()
{
  result = qword_27F5425E0;
  if (!qword_27F5425E0)
  {
    result = swift_getWitnessTable(byte_252E45888, &type metadata for HumidifierDehumidifierMode, v0, v1);
    atomic_store(result, &qword_27F5425E0);
  }

  return result;
}

unint64_t sub_252A854DC()
{
  result = qword_27F5425F8;
  if (!qword_27F5425F8)
  {
    result = swift_getWitnessTable(byte_252E45904, &type metadata for HumidifierDehumidifierMode, v0, v1);
    atomic_store(result, &qword_27F5425F8);
  }

  return result;
}

unint64_t sub_252A85534()
{
  result = qword_27F542600;
  if (!qword_27F542600)
  {
    result = swift_getWitnessTable(byte_252E458D4, &type metadata for HumidifierDehumidifierMode, v0, v1);
    atomic_store(result, &qword_27F542600);
  }

  return result;
}

unint64_t sub_252A8558C()
{
  result = qword_27F542608;
  if (!qword_27F542608)
  {
    result = swift_getWitnessTable("YN?/", &type metadata for HumidifierDehumidifierMode, v0, v1);
    atomic_store(result, &qword_27F542608);
  }

  return result;
}

unint64_t sub_252A855E4()
{
  result = qword_27F542610;
  if (!qword_27F542610)
  {
    result = swift_getWitnessTable(byte_252E459C0, &type metadata for HumidifierDehumidifierMode, v0, v1);
    atomic_store(result, &qword_27F542610);
  }

  return result;
}

unint64_t sub_252A8563C()
{
  result = qword_27F542618;
  if (!qword_27F542618)
  {
    result = swift_getWitnessTable(byte_252E45A38, &type metadata for HumidifierDehumidifierMode, v0, v1);
    atomic_store(result, &qword_27F542618);
  }

  return result;
}

unint64_t sub_252A85694()
{
  result = qword_27F542620;
  if (!qword_27F542620)
  {
    result = swift_getWitnessTable(byte_252E45A60, &type metadata for LockState, v0, v1);
    atomic_store(result, &qword_27F542620);
  }

  return result;
}

unint64_t sub_252A8571C()
{
  result = qword_27F542638;
  if (!qword_27F542638)
  {
    result = swift_getWitnessTable(byte_252E45ADC, &type metadata for LockState, v0, v1);
    atomic_store(result, &qword_27F542638);
  }

  return result;
}

unint64_t sub_252A85774()
{
  result = qword_27F542640;
  if (!qword_27F542640)
  {
    result = swift_getWitnessTable(byte_252E45AAC, &type metadata for LockState, v0, v1);
    atomic_store(result, &qword_27F542640);
  }

  return result;
}

unint64_t sub_252A857CC()
{
  result = qword_27F542648;
  if (!qword_27F542648)
  {
    result = swift_getWitnessTable(byte_252E45B10, &type metadata for LockState, v0, v1);
    atomic_store(result, &qword_27F542648);
  }

  return result;
}

unint64_t sub_252A85824()
{
  result = qword_27F542650;
  if (!qword_27F542650)
  {
    result = swift_getWitnessTable(aF, &type metadata for LockState, v0, v1);
    atomic_store(result, &qword_27F542650);
  }

  return result;
}

unint64_t sub_252A8587C()
{
  result = qword_27F542658;
  if (!qword_27F542658)
  {
    result = swift_getWitnessTable(byte_252E45C10, &type metadata for LockState, v0, v1);
    atomic_store(result, &qword_27F542658);
  }

  return result;
}

unint64_t sub_252A858D4()
{
  result = qword_27F542660;
  if (!qword_27F542660)
  {
    result = swift_getWitnessTable(a9, &type metadata for SecuritySystemState, v0, v1);
    atomic_store(result, &qword_27F542660);
  }

  return result;
}

unint64_t sub_252A8595C()
{
  result = qword_27F542678;
  if (!qword_27F542678)
  {
    result = swift_getWitnessTable(byte_252E45CB4, &type metadata for SecuritySystemState, v0, v1);
    atomic_store(result, &qword_27F542678);
  }

  return result;
}

unint64_t sub_252A859B4()
{
  result = qword_27F542680;
  if (!qword_27F542680)
  {
    result = swift_getWitnessTable(byte_252E45C84, &type metadata for SecuritySystemState, v0, v1);
    atomic_store(result, &qword_27F542680);
  }

  return result;
}

unint64_t sub_252A85A0C()
{
  result = qword_27F542688;
  if (!qword_27F542688)
  {
    result = swift_getWitnessTable(byte_252E45CE8, &type metadata for SecuritySystemState, v0, v1);
    atomic_store(result, &qword_27F542688);
  }

  return result;
}

unint64_t sub_252A85A64()
{
  result = qword_27F542690;
  if (!qword_27F542690)
  {
    result = swift_getWitnessTable(a1d, &type metadata for SecuritySystemState, v0, v1);
    atomic_store(result, &qword_27F542690);
  }

  return result;
}

unint64_t sub_252A85ABC()
{
  result = qword_27F542698;
  if (!qword_27F542698)
  {
    result = swift_getWitnessTable(byte_252E45DE8, &type metadata for SecuritySystemState, v0, v1);
    atomic_store(result, &qword_27F542698);
  }

  return result;
}

unint64_t sub_252A85B14()
{
  result = qword_27F5426A0;
  if (!qword_27F5426A0)
  {
    result = swift_getWitnessTable(aA_1, &type metadata for RotationDirectionValue, v0, v1);
    atomic_store(result, &qword_27F5426A0);
  }

  return result;
}

unint64_t sub_252A85B9C()
{
  result = qword_27F5426B8;
  if (!qword_27F5426B8)
  {
    result = swift_getWitnessTable(aE_4, &type metadata for RotationDirectionValue, v0, v1);
    atomic_store(result, &qword_27F5426B8);
  }

  return result;
}

unint64_t sub_252A85BF4()
{
  result = qword_27F5426C0;
  if (!qword_27F5426C0)
  {
    result = swift_getWitnessTable(asc_252E45E5C, &type metadata for RotationDirectionValue, v0, v1);
    atomic_store(result, &qword_27F5426C0);
  }

  return result;
}

unint64_t sub_252A85C4C()
{
  result = qword_27F5426C8;
  if (!qword_27F5426C8)
  {
    result = swift_getWitnessTable(byte_252E45EC0, &type metadata for RotationDirectionValue, v0, v1);
    atomic_store(result, &qword_27F5426C8);
  }

  return result;
}

unint64_t sub_252A85CA4()
{
  result = qword_27F5426D0;
  if (!qword_27F5426D0)
  {
    result = swift_getWitnessTable(aYb, &type metadata for RotationDirectionValue, v0, v1);
    atomic_store(result, &qword_27F5426D0);
  }

  return result;
}

unint64_t sub_252A85CFC()
{
  result = qword_27F5426D8;
  if (!qword_27F5426D8)
  {
    result = swift_getWitnessTable(aA_2, &type metadata for RotationDirectionValue, v0, v1);
    atomic_store(result, &qword_27F5426D8);
  }

  return result;
}

unint64_t sub_252A85D54()
{
  result = qword_27F5426E0;
  if (!qword_27F5426E0)
  {
    result = swift_getWitnessTable(byte_252E46028, &type metadata for Attribute.Identifiers, v0, v1);
    atomic_store(result, &qword_27F5426E0);
  }

  return result;
}

unint64_t sub_252A85DAC()
{
  result = qword_27F5426E8;
  if (!qword_27F5426E8)
  {
    result = swift_getWitnessTable(byte_252E4515C, &type metadata for AirParticulateSize, v0, v1);
    atomic_store(result, &qword_27F5426E8);
  }

  return result;
}

unint64_t sub_252A85E04()
{
  result = qword_27F5426F0;
  if (!qword_27F5426F0)
  {
    result = swift_getWitnessTable(asc_252E45330, &type metadata for AirQuality, v0, v1);
    atomic_store(result, &qword_27F5426F0);
  }

  return result;
}

unint64_t sub_252A85E5C()
{
  result = qword_27F5426F8;
  if (!qword_27F5426F8)
  {
    result = swift_getWitnessTable(aI_3, &type metadata for AirPurifierState, v0, v1);
    atomic_store(result, &qword_27F5426F8);
  }

  return result;
}

unint64_t sub_252A85EB4()
{
  result = qword_27F542700;
  if (!qword_27F542700)
  {
    result = swift_getWitnessTable(byte_252E458B8, &type metadata for HumidifierDehumidifierMode, v0, v1);
    atomic_store(result, &qword_27F542700);
  }

  return result;
}

unint64_t sub_252A85F0C()
{
  result = qword_27F542708;
  if (!qword_27F542708)
  {
    result = swift_getWitnessTable(byte_252E45E40, &type metadata for RotationDirectionValue, v0, v1);
    atomic_store(result, &qword_27F542708);
  }

  return result;
}

unint64_t sub_252A85F64()
{
  result = qword_27F542710;
  if (!qword_27F542710)
  {
    result = swift_getWitnessTable(aQ_7, &type metadata for PositionState, v0, v1);
    atomic_store(result, &qword_27F542710);
  }

  return result;
}

unint64_t sub_252A85FBC()
{
  result = qword_27F542718;
  if (!qword_27F542718)
  {
    result = swift_getWitnessTable(byte_252E45A90, &type metadata for LockState, v0, v1);
    atomic_store(result, &qword_27F542718);
  }

  return result;
}

unint64_t sub_252A86014()
{
  result = qword_27F542720;
  if (!qword_27F542720)
  {
    result = swift_getWitnessTable(byte_252E45C68, &type metadata for SecuritySystemState, v0, v1);
    atomic_store(result, &qword_27F542720);
  }

  return result;
}

unint64_t sub_252A86068()
{
  result = qword_27F542728;
  if (!qword_27F542728)
  {
    result = swift_getWitnessTable(aY_3, &type metadata for SecuritySystemState, v0, v1);
    atomic_store(result, &qword_27F542728);
  }

  return result;
}

unint64_t sub_252A860BC()
{
  result = qword_27F542730;
  if (!qword_27F542730)
  {
    result = swift_getWitnessTable(a1_9, &type metadata for LockState, v0, v1);
    atomic_store(result, &qword_27F542730);
  }

  return result;
}

unint64_t sub_252A86110()
{
  result = qword_27F542738;
  if (!qword_27F542738)
  {
    result = swift_getWitnessTable(byte_252E45798, &type metadata for PositionState, v0, v1);
    atomic_store(result, &qword_27F542738);
  }

  return result;
}

unint64_t sub_252A86164()
{
  result = qword_27F542740;
  if (!qword_27F542740)
  {
    result = swift_getWitnessTable(byte_252E45EF8, &type metadata for RotationDirectionValue, v0, v1);
    atomic_store(result, &qword_27F542740);
  }

  return result;
}

unint64_t sub_252A861B8()
{
  result = qword_27F542748;
  if (!qword_27F542748)
  {
    result = swift_getWitnessTable(asc_252E45970, &type metadata for HumidifierDehumidifierMode, v0, v1);
    atomic_store(result, &qword_27F542748);
  }

  return result;
}

unint64_t sub_252A8620C()
{
  result = qword_27F542750;
  if (!qword_27F542750)
  {
    result = swift_getWitnessTable(byte_252E455C0, &type metadata for AirPurifierState, v0, v1);
    atomic_store(result, &qword_27F542750);
  }

  return result;
}

unint64_t sub_252A86260()
{
  result = qword_27F542758;
  if (!qword_27F542758)
  {
    result = swift_getWitnessTable(byte_252E453E8, &type metadata for AirQuality, v0, v1);
    atomic_store(result, &qword_27F542758);
  }

  return result;
}

unint64_t sub_252A862B4()
{
  result = qword_27F542760;
  if (!qword_27F542760)
  {
    result = swift_getWitnessTable(aI_4, &type metadata for AirParticulateSize, v0, v1);
    atomic_store(result, &qword_27F542760);
  }

  return result;
}

unint64_t sub_252A86308(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252A86354(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t INHomeAttributeType.toCustom()(unint64_t result)
{
  if (result >= 0x43)
  {
    return 0;
  }

  return result;
}

uint64_t Array<A>.toCustom()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2529AA360(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 32);
    v5 = *(v11 + 16);
    do
    {
      v6 = *v4++;
      v7 = INHomeAttributeType.toCustom()(v6);
      v8 = *(v11 + 24);
      if (v5 >= v8 >> 1)
      {
        v9 = v7;
        sub_2529AA360((v8 > 1), v5 + 1, 1);
        v7 = v9;
      }

      *(v11 + 16) = v5 + 1;
      *(v11 + 8 * v5++ + 32) = v7;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_252A864D4()
{
  v1 = [v0 taskType];
  v2 = INHomeAttributeType.toCustom()([v0 attribute]);
  v3 = [v0 value];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252A0A354();
  }

  else
  {
    v5 = 0;
  }

  if (v1 >= 7)
  {
    v1 = 0;
  }

  v6 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v7 = v5;
  v8 = sub_252E36F04();
  v9 = [v6 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setTaskType_];
  [v10 setAttribute_];
  [v10 setValue_];

  return v10;
}

void *sub_252A86604(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[11] = 0;
  v2[12] = 0;
  v2[13] = 0;
  v2[7] = a1;
  v6 = sub_252A907DC(a1);
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
  swift_beginAccess();
  v8 = *(v7 + 23);

  v3[8] = v8;
  v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v9);
  sub_252929E74((v10 + 136), v14);

  sub_252927BEC(v14, (v3 + 2));
  v3[9] = a2;

  sub_252B680FC(v11);
  v12 = sub_252B631FC();

  sub_252A8B32C(a1);

  v3[10] = v12;
  return v3;
}

uint64_t sub_252A8670C()
{
  v1 = *(v0[14] + 56);
  v0[15] = v1;
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 == 2)
    {
      if (qword_27F53F490 != -1)
      {
        swift_once();
      }

      v6 = sub_252E36AD4();
      __swift_project_value_buffer(v6, qword_27F544C58);
      sub_252CC3D90(0xD000000000000023, 0x8000000252E76810, 0xD000000000000093, 0x8000000252E76340);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
      v7 = swift_allocObject();
      *(v7 + 32) = 0x656C62616E457369;
      *(v7 + 40) = 0xEF74736575716552;
      *(v7 + 72) = MEMORY[0x277D839B0];
      v8 = MEMORY[0x277D55C70];
      *(v7 + 48) = v1 & 1;
      v14 = (v8 + *v8);
      v0[20] = v7;
      *(v7 + 16) = xmmword_252E3C290;
      v9 = swift_task_alloc();
      v0[21] = v9;
      *v9 = v0;
      v9[1] = sub_252A86CF8;

      return v14(0xD00000000000002DLL, 0x8000000252E76840, v7);
    }

    else
    {
      v12 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
      v13 = swift_task_alloc();
      v0[18] = v13;
      *v13 = v0;
      v13[1] = sub_252A86BDC;

      return sub_252A89088(v12);
    }
  }

  else
  {
    if (v2)
    {
      v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
      v10 = swift_task_alloc();
      v0[16] = v10;
      *v10 = v0;
      v11 = sub_252A86AC0;
    }

    else
    {
      v3 = v1;
      if (sub_252C4BEB8())
      {
        v4 = swift_task_alloc();
        v0[23] = v4;
        *v4 = v0;
        v4[1] = sub_252A86F1C;

        return sub_252A89D0C(v3);
      }

      v10 = swift_task_alloc();
      v0[25] = v10;
      *v10 = v0;
      v11 = sub_252A870A0;
    }

    v10[1] = v11;

    return sub_252A875E0(v3);
  }
}

uint64_t sub_252A86AC0(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[17] = v1;

  if (v1)
  {
    v4 = sub_252A8728C;
  }

  else
  {
    v4 = sub_252A86EB4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A86BDC(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[19] = v1;

  if (v1)
  {
    v4 = sub_252A873B8;
  }

  else
  {
    v4 = sub_252A87224;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A86CF8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252A86E50, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252A86E50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252A86EB4()
{
  sub_252A8B32C(v0[15]);
  v1 = v0[3];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_252A86F1C(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[24] = v1;

  if (v1)
  {
    v4 = sub_252A872F0;
  }

  else
  {
    v4 = sub_252A87038;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A87038()
{
  sub_252A8B32C(v0[15]);
  v1 = v0[9];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_252A870A0(uint64_t a1)
{
  v3 = *v2;
  v3[11] = v2;
  v3[12] = a1;
  v3[13] = v1;
  v3[26] = v1;

  if (v1)
  {
    v4 = sub_252A87354;
  }

  else
  {
    v4 = sub_252A871BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A871BC()
{
  sub_252A8B32C(v0[15]);
  v1 = v0[12];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_252A87224()
{
  sub_252A8B32C(v0[15]);
  v1 = v0[6];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_252A8728C()
{
  sub_252A8B32C(*(v0 + 120));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252A872F0()
{
  sub_252A8B32C(*(v0 + 120));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252A87354()
{
  sub_252A8B32C(*(v0 + 120));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252A873B8()
{
  sub_252A8B32C(*(v0 + 120));
  v1 = *(v0 + 8);

  return v1();
}

void sub_252A8741C(void *a1@<X8>)
{
  if (!v1[11])
  {
    v2 = v1[7];
    v3 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v3 == 2)
      {
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
        return;
      }

      v2 &= 0x3FFFFFFFFFFFFFFFuLL;
      v4 = a1;
    }

    else
    {
      v4 = a1;
      if (v3)
      {
        v5 = (v2 & 0x3FFFFFFFFFFFFFFFLL);
LABEL_9:
        sub_252A874E0(v5, &v13);
        v6 = v14;
        v7 = v1[11];
        v8 = v1[12];
        v9 = v1[13];
        *(v1 + 11) = v13;
        v1[13] = v6;
        sub_252A8B35C(v7, v8, v9);
        a1 = v4;
        goto LABEL_10;
      }
    }

    v5 = v2;
    goto LABEL_9;
  }

LABEL_10:
  v10 = v1[11];
  v11 = v1[12];
  v12 = v1[13];
  *a1 = v10;
  a1[1] = v11;
  a1[2] = v12;

  sub_252A90FE4(v10, v11, v12);
}

void *sub_252A874E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = [v3 filters];
  if (!v4)
  {
    goto LABEL_10;
  }

  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    v4 = 0;
    goto LABEL_10;
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x2530ADF00](0, v5);
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_7:
    v4 = v7;

LABEL_10:
    type metadata accessor for IconsManager();
    result = swift_allocObject();
    result[2] = 0;
    result[3] = 0;
    result[4] = v3;
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_252A875E0(uint64_t a1)
{
  v2[264] = v1;
  v2[263] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2[265] = swift_task_alloc();
  v2[266] = swift_task_alloc();
  v2[267] = swift_task_alloc();
  v2[268] = swift_task_alloc();
  v2[269] = swift_task_alloc();
  v2[270] = swift_task_alloc();
  v2[271] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A876C8, 0, 0);
}

uint64_t sub_252A876C8()
{
  v70 = v0;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544C58);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E767C0, 0xD000000000000093, 0x8000000252E76340);
  sub_252A8741C(__dst);
  v2 = __dst[0];
  v3 = __dst[1];
  v0[272] = __dst[0];
  v0[273] = v3;
  v4 = __dst[2];
  v0[274] = __dst[2];
  v6 = sub_252B680FC(v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 504 * v8 - 472);
    memcpy(v0 + 128, v9, 0x1F8uLL);
    memmove(v0 + 65, v9, 0x1F8uLL);
    GEOLocationCoordinate2DMake();
    sub_2529353AC((v0 + 128), (v0 + 191));

    memcpy(v0 + 2, v0 + 65, 0x1F8uLL);
  }

  else
  {

    sub_25293DEE0((v0 + 2));
  }

  v10 = v0[263];
  memcpy(__dst, v0 + 2, 0x1F8uLL);
  v11 = v10;
  v68 = sub_252953488(v10, __dst, 0);
  v0[275] = v68;

  v12 = v0[271];
  if (v2)
  {
    v13 = v0[270];
    __dst[0] = v2;
    __dst[1] = v3;
    __dst[2] = v4;
    sub_252A88574(v12);
    __dst[0] = v2;
    __dst[1] = v3;
    __dst[2] = v4;
    sub_252A88744(v13);
    v14 = sub_252E36324();
    v15 = *(v14 - 8);
    v64 = *(v15 + 48);
    v16 = v64(v13, 1, v14);
    v17 = v0[270];
    v61 = v3;
    if (v16 == 1)
    {
      sub_25293847C(v17, &qword_27F540298, &unk_252E3C270);
      v62 = 0;
    }

    else
    {
      v58 = v0[270];
      v59 = v2;
      v22 = v15;
      v23 = v0[269];
      (*(v22 + 16))(v23, v17, v14);
      v24 = *(v22 + 56);
      v24(v23, 0, 1, v14);
      type metadata accessor for HomeAutomationHomeLocation.Builder(0);
      v25 = swift_allocObject();
      v26 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
      v24(v25 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v14);
      swift_beginAccess();
      sub_2529D032C(v23, v25 + v26, &qword_27F540298, &unk_252E3C270);
      swift_endAccess();
      v27 = v23;
      v15 = v22;
      v2 = v59;
      sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
      type metadata accessor for HomeAutomationHomeLocation(0);
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      v62 = v28;
      sub_252938414(v25 + v26, v28 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, &qword_27F540298, &unk_252E3C270);
      swift_setDeallocating();
      v3 = v61;
      sub_25293847C(v25 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
      swift_deallocClassInstance();
      (*(v15 + 8))(v58, v14);
    }

    v29 = v0[268];
    __dst[0] = v2;
    __dst[1] = v3;
    __dst[2] = v4;
    sub_252A88B84(v29);
    if (v64(v29, 1, v14) == 1)
    {
      sub_25293847C(v0[268], &qword_27F540298, &unk_252E3C270);
      v60 = 0;
    }

    else
    {
      v30 = v0[269];
      v66 = v0[268];
      (*(v15 + 16))(v30);
      v31 = *(v15 + 56);
      v31(v30, 0, 1, v14);
      type metadata accessor for HomeAutomationHomeLocation.Builder(0);
      v32 = swift_allocObject();
      v33 = v15;
      v34 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
      v31(v32 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v14);
      swift_beginAccess();
      sub_2529D032C(v30, v32 + v34, &qword_27F540298, &unk_252E3C270);
      swift_endAccess();
      sub_25293847C(v30, &qword_27F540298, &unk_252E3C270);
      type metadata accessor for HomeAutomationHomeLocation(0);
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      v60 = v35;
      sub_252938414(v32 + v34, v35 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, &qword_27F540298, &unk_252E3C270);
      swift_setDeallocating();
      sub_25293847C(v32 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
      v3 = v61;
      swift_deallocClassInstance();
      (*(v33 + 8))(v66, v14);
    }

    v36 = v0[267];
    __dst[0] = v2;
    __dst[1] = v3;
    __dst[2] = v4;
    v37 = v3;

    v38 = v2;
    v65 = sub_252A88D8C();

    __dst[0] = v38;
    __dst[1] = v3;
    __dst[2] = v4;
    sub_252A8CA20(v36);
    v21 = v62;
    v20 = v60;
  }

  else
  {
    v18 = v0[267];
    v14 = sub_252E36324();
    v19 = *(*(v14 - 8) + 56);
    v19(v12, 1, 1, v14);
    v19(v18, 1, 1, v14);
    v20 = 0;
    v21 = 0;
    v65 = MEMORY[0x277D84F90];
  }

  v0[277] = v21;
  v0[276] = v20;
  v39 = v0[271];
  v40 = v0[266];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v41 = swift_allocObject();
  v0[278] = v41;
  *(v41 + 16) = xmmword_252E3F1F0;
  *(v41 + 32) = 0xD000000000000013;
  *(v41 + 40) = 0x8000000252E76480;
  sub_252938414(v39, v40, &qword_27F540298, &unk_252E3C270);
  sub_252E36324();
  v42 = *(v14 - 8);
  v63 = *(v42 + 48);
  v43 = v63(v40, 1, v14);
  v44 = v0[266];
  if (v43 == 1)
  {
    sub_25293847C(v0[266], &qword_27F540298, &unk_252E3C270);
    *(v41 + 48) = 0u;
    *(v41 + 64) = 0u;
  }

  else
  {
    *(v41 + 72) = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v41 + 48));
    (*(v42 + 32))(boxed_opaque_existential_0, v44, v14);
  }

  strcpy((v41 + 80), "candidateName");
  *(v41 + 94) = -4864;
  if (v21)
  {
    v46 = type metadata accessor for HomeAutomationHomeLocation(0);
    v47 = v21;
  }

  else
  {
    v47 = 0;
    v46 = 0;
    *(v41 + 104) = 0;
    *(v41 + 112) = 0;
  }

  *(v41 + 96) = v47;
  *(v41 + 120) = v46;
  *(v41 + 128) = 0x656D614E656D6F68;
  *(v41 + 136) = 0xE800000000000000;
  if (v20)
  {
    v48 = type metadata accessor for HomeAutomationHomeLocation(0);
    v49 = v20;
  }

  else
  {
    v49 = 0;
    v48 = 0;
    *(v41 + 152) = 0;
    *(v41 + 160) = 0;
  }

  v50 = v0[267];
  v51 = v0[265];
  *(v41 + 144) = v49;
  *(v41 + 168) = v48;
  *(v41 + 176) = 0xD000000000000011;
  *(v41 + 184) = 0x8000000252E764A0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v41 + 192) = v65;
  *(v41 + 216) = v52;
  *(v41 + 224) = 0xD000000000000010;
  *(v41 + 232) = 0x8000000252E764C0;
  sub_252938414(v50, v51, &qword_27F540298, &unk_252E3C270);
  v53 = v63(v51, 1, v14);
  v54 = v0[265];
  if (v53 == 1)
  {

    sub_25293847C(v54, &qword_27F540298, &unk_252E3C270);
    *(v41 + 240) = 0u;
    *(v41 + 256) = 0u;
  }

  else
  {
    *(v41 + 264) = v14;
    v55 = __swift_allocate_boxed_opaque_existential_0((v41 + 240));
    (*(v42 + 32))(v55, v54, v14);
  }

  strcpy((v41 + 272), "intentContext");
  *(v41 + 286) = -4864;
  *(v41 + 312) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v41 + 288) = v68;
  v67 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v56 = swift_task_alloc();
  v0[279] = v56;
  *v56 = v0;
  v56[1] = sub_252A8817C;

  return v67(0xD00000000000001CLL, 0x8000000252E767F0, v41);
}

uint64_t sub_252A8817C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2240) = v1;

  if (v1)
  {

    v5 = sub_252A88424;
  }

  else
  {
    v6 = v4[271];
    v7 = v4[267];

    v4[281] = a1;

    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    v5 = sub_252A88328;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A88328()
{
  v1 = v0[274];
  v2 = v0[273];
  v3 = v0[272];

  sub_252A8B35C(v3, v2, v1);

  v4 = v0[1];
  v5 = v0[281];

  return v4(v5);
}

uint64_t sub_252A88424()
{
  v1 = v0[274];
  v2 = v0[273];
  v3 = v0[272];
  v4 = v0[271];
  v5 = v0[267];

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  sub_252A8B35C(v3, v2, v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_252A88574@<X0>(uint64_t a1@<X8>)
{
  sub_252A8C8BC();
  sub_252E37024();

  v2 = sub_252E36324();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_252A88744@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_252E36324();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E36AD4();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = *v1;
  v15 = v1[1];
  v16 = v1[2];
  v34 = v3;
  v35 = v4;
  v17 = *(v4 + 56);
  v18 = v17(a1, 1, 1, v3);
  sub_252B680FC(v18);
  LOBYTE(v3) = sub_252B63638();

  if (v3)
  {
    v39 = v14;
    v40 = v15;
    v41 = v16;
    sub_252A8CA20(v13);
    sub_252A909F4(v13, a1, &qword_27F540298, &unk_252E3C270);
    v20 = v37;
    v19 = v38;
    v22 = v35;
    v21 = v36;
    v23 = v34;
  }

  else
  {
    if (v15)
    {
      v39 = v14;
      v40 = v15;
      v41 = v16;
      v24 = sub_252A8C8BC();
      sub_252A218E0(v24, v11);
      v20 = v37;
      v19 = v38;
      v22 = v35;
      v21 = v36;
      v23 = v34;
    }

    else
    {
      v23 = v34;
      v17(v11, 1, 1, v34);
      v20 = v37;
      v19 = v38;
      v22 = v35;
      v21 = v36;
    }

    sub_252A909F4(v11, a1, &qword_27F540298, &unk_252E3C270);
  }

  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v19, qword_27F544C58);
  (*(v20 + 16))(v21, v25, v19);
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_252E379F4();

  v39 = 0xD00000000000001CLL;
  v40 = 0x8000000252E76530;
  v26 = 0;
  v27 = 0;
  if (!(*(v22 + 48))(a1, 1, v23))
  {
    v28 = v33;
    (*(v22 + 16))(v33, a1, v23);
    v26 = sub_252E36304();
    v27 = v29;
    (*(v22 + 8))(v28, v23);
  }

  v42 = v26;
  v43 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v30 = sub_252E36F94();
  MEMORY[0x2530AD570](v30);

  MEMORY[0x2530AD570](46, 0xE100000000000000);
  sub_252CC3D90(v39, v40, 0xD000000000000093, 0x8000000252E76340);

  return (*(v20 + 8))(v21, v19);
}

uint64_t sub_252A88B84@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = *(v1 + 8);
  if (v9)
  {
    v10 = sub_252E36324();
    v11 = *(*(v10 - 8) + 56);
    v12 = 1;
    v11(v8, 1, 1, v10);
    v13 = [v9 homeName];
    if (v13)
    {
      v14 = v13;
      sub_252E36F34();

      sub_252E37024();

      v12 = 0;
    }

    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    v11(v6, v12, 1, v10);
    sub_2529439A0(v6, v8);
    return sub_2529439A0(v8, a1);
  }

  else
  {
    v16 = sub_252E36324();
    v17 = *(*(v16 - 8) + 56);

    return v17(a1, 1, 1, v16);
  }
}

char *sub_252A88D8C()
{
  v1 = sub_252E36324();
  v26 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = [*v0 filters];
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = v6;
  type metadata accessor for HomeFilter();
  v8 = sub_252E37264();

  if (v8 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v10 = 0;
    v27 = v8 & 0xFFFFFFFFFFFFFF8;
    v28 = v8 & 0xC000000000000001;
    v11 = (v26 + 32);
    v12 = MEMORY[0x277D84F90];
    v23 = v8;
    v24 = i;
    while (1)
    {
      if (v28)
      {
        v13 = MEMORY[0x2530ADF00](v10, v8);
      }

      else
      {
        if (v10 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v13 = *(v8 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v16 = [v13 homeEntityName];
      if (v16)
      {
        v17 = v16;
        sub_252E36F34();

        v18 = v25;
        sub_252E37024();

        v19 = *v11;
        (*v11)(v5, v18, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2529F7F74(0, *(v12 + 2) + 1, 1, v12);
        }

        v21 = *(v12 + 2);
        v20 = *(v12 + 3);
        if (v21 >= v20 >> 1)
        {
          v12 = sub_2529F7F74((v20 > 1), v21 + 1, 1, v12);
        }

        *(v12 + 2) = v21 + 1;
        v19(&v12[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21], v5, v1);
        v8 = v23;
        i = v24;
      }

      else
      {
      }

      ++v10;
      if (v15 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_23:

  return v12;
}

uint64_t sub_252A89088(uint64_t a1)
{
  *(v2 + 2096) = v1;
  *(v2 + 2088) = a1;
  return MEMORY[0x2822009F8](sub_252A890AC, 0, 0);
}

uint64_t sub_252A890AC()
{
  v85 = v0;
  if (qword_27F53F490 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v1 = *(v0 + 2088);
    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544C58);
    sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E76750, 0xD000000000000093, 0x8000000252E76340);
    v3 = sub_252A90A5C(v1);
    v4 = v3;
    __dst[0] = MEMORY[0x277D84F90];
    v5 = v3 >> 62 ? sub_252E378C4() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = MEMORY[0x277D84F90];
    v83 = v0;
    if (!v5)
    {
      break;
    }

    v7 = 0;
    v0 = v4 & 0xFFFFFFFFFFFFFF8;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v7, v4);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_72;
      }

LABEL_11:
      v10 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v11 = [*(v8 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v12 = sub_252E36F34();
      v14 = v13;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v15 = off_27F546230;
      if (*(off_27F546230 + 2) && (v16 = sub_252A44A10(v12, v14), (v17 & 1) != 0))
      {
        v18 = *(v15[7] + 8 * v16);

        if (v18 == 3)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      v19 = [*(v8 + v10) serviceType];
      v20 = sub_252E36F34();
      v22 = v21;

      if (!v15[2] || (v23 = sub_252A44A10(v20, v22), (v24 & 1) == 0))
      {

LABEL_23:

        goto LABEL_7;
      }

      v25 = *(v15[7] + 8 * v23);

      if (v25 != 29)
      {
        goto LABEL_23;
      }

LABEL_6:
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_7:
      ++v7;
      if (v9 == v5)
      {
        v0 = v83;
        v6 = __dst[0];
        goto LABEL_28;
      }
    }

    if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_73;
    }

    v8 = *(v4 + 8 * v7 + 32);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_11;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

LABEL_28:
  v26 = *(v0 + 2088);

  v27 = [v26 userTask];
  if (v27 && (v28 = v27, v29 = [v27 value], v28, v29))
  {
    [v29 doubleValue];
    v31 = v30;

    v32 = 0;
    v33 = v31;
  }

  else
  {
    v33 = 0.0;
    v32 = 1;
  }

  v34 = *(v0 + 2088);
  v35 = MEMORY[0x277D84F90];
  *(v0 + 2072) = MEMORY[0x277D84F90];
  *(v0 + 2080) = v35;
  v36 = sub_252C6E240(v34);
  v37 = v36;
  if ((v32 & 1) == 0 && v36 == 2)
  {
    v32 = 0;
    v33 = round((v33 + -32.0) * 5.0 / 9.0 * 100.0) / 100.0;
  }

  sub_252E379F4();

  __dst[0] = 0xD00000000000001ALL;
  __dst[1] = 0x8000000252E76780;
  *(v0 + 2056) = v33;
  *(v0 + 2064) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540740, &unk_252E40560);
  v38 = sub_252E36F94();
  MEMORY[0x2530AD570](v38);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000093, 0x8000000252E76340);

  v39 = v6;
  if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    result = sub_252E378C4();
    v39 = v6;
  }

  else
  {
    result = *(v6 + 16);
  }

  if (result)
  {
    if (result >= 1)
    {
      v41 = 0;
      v77 = (v0 + 2072);
      v82 = (v0 + 2080);
      v78 = v39 & 0xC000000000000001;
      v79 = result;
      v75 = MEMORY[0x277D84F90];
      v76 = MEMORY[0x277D84F90];
      v80 = v37;
      v81 = v39;
      while (1)
      {
        if (v78)
        {
          v42 = MEMORY[0x2530ADF00](v41);
        }

        else
        {
          v42 = *(v39 + 8 * v41 + 32);
        }

        v43 = *(v0 + 2088);
        type metadata accessor for ServiceTemperatureThresholdHandler();
        swift_allocObject();

        v44 = v43;
        v45 = v33;
        v46 = v32;
        v47 = sub_252A90C4C(v44, v42, *&v33, v32);

        v48 = *(v47 + 80);
        v49 = *(v47 + 88);
        v50 = *(v47 + 96);
        v51 = *(v47 + 104);
        v52 = *(v47 + 48);
        v53 = *(v47 + 56);
        v54 = *(v47 + 64);
        v55 = *(v47 + 72);
        v56 = sub_252C6E240(v44);
        v57 = v82;
        if (v56 != 2)
        {
          goto LABEL_53;
        }

        if (v49)
        {
          if (v51)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v48 = round((v48 * 9.0 / 5.0 + 32.0) * 100.0) / 100.0;
          if (v51)
          {
LABEL_49:
            if ((v53 & 1) == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_50;
          }
        }

        v50 = round((v50 * 9.0 / 5.0 + 32.0) * 100.0) / 100.0;
        if ((v53 & 1) == 0)
        {
LABEL_62:
          v52 = round((v52 * 9.0 / 5.0 + 32.0) * 100.0) / 100.0;
          if (v55)
          {
            goto LABEL_52;
          }

LABEL_51:
          v54 = round((v54 * 9.0 / 5.0 + 32.0) * 100.0) / 100.0;
          goto LABEL_52;
        }

LABEL_50:
        if ((v55 & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_52:
        *(v47 + 80) = v48;
        *(v47 + 88) = v49;
        *(v47 + 96) = v50;
        *(v47 + 104) = v51;
        *(v47 + 48) = v52;
        *(v47 + 56) = v53;
        *(v47 + 64) = v54;
        *(v47 + 72) = v55;
LABEL_53:
        type metadata accessor for TargetTemperatureConfirmationResponse();
        swift_allocObject();
        sub_252A90D3C(v42, v47, v80, 0);

        v58 = sub_252A8BA2C();
        v60 = v59;

        if (v58 && v60)
        {

          MEMORY[0x2530AD700](v61);
          if (*((*v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
            v57 = v82;
          }

          sub_252E372D4();
          v76 = *v57;

          MEMORY[0x2530AD700](v62);
          if (*((*v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();

          v75 = *v77;
        }

        else
        {
        }

        ++v41;
        v0 = v83;
        v39 = v81;
        v32 = v46;
        v33 = v45;
        if (v79 == v41)
        {
          goto LABEL_66;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v75 = MEMORY[0x277D84F90];
    v76 = MEMORY[0x277D84F90];
LABEL_66:

    v64 = sub_252B680FC(v63);
    swift_beginAccess();
    v65 = *(v64 + 16);
    v66 = *(v65 + 16);
    if (v66)
    {
      v67 = (v65 + 504 * v66 - 472);
      memcpy((v0 + 1024), v67, 0x1F8uLL);
      memmove((v0 + 520), v67, 0x1F8uLL);
      GEOLocationCoordinate2DMake();
      sub_2529353AC(v0 + 1024, v0 + 1528);

      memcpy((v0 + 16), (v0 + 520), 0x1F8uLL);
    }

    else
    {

      sub_25293DEE0(v0 + 16);
    }

    v68 = MEMORY[0x277D84F90];
    v69 = *(v0 + 2088);
    memcpy(__dst, (v0 + 16), 0x1F8uLL);
    v70 = v69;
    v71 = sub_252953488(v69, __dst, 0);
    *(v0 + 2104) = v71;

    sub_252A90E4C(v75);
    type metadata accessor for HomeAutomationAbstractMeasurements.Builder();
    *(swift_allocObject() + 16) = v68;
    type metadata accessor for HomeAutomationAbstractMeasurements();
    v72 = swift_allocObject();
    *(v0 + 2112) = v72;
    *(v72 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v72 + 24) = v75;
    type metadata accessor for HomeAutomationEntityResponses.Builder();
    *(swift_allocObject() + 16) = v68;
    type metadata accessor for HomeAutomationEntityResponses();
    v73 = swift_allocObject();
    *(v0 + 2120) = v73;
    *(v73 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v73 + 24) = v76;

    v74 = swift_task_alloc();
    *(v0 + 2128) = v74;
    *v74 = v0;
    v74[1] = sub_252A89ADC;

    return sub_252D27674(v71, v72, v73);
  }

  return result;
}

uint64_t sub_252A89ADC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2136) = v1;

  if (v1)
  {
    v5 = sub_252A89C8C;
  }

  else
  {

    *(v4 + 2144) = a1;
    v5 = sub_252A89C24;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A89C24()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 2144);

  return v1(v2);
}

uint64_t sub_252A89C8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252A89D0C(uint64_t a1)
{
  v2[261] = v1;
  v2[260] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2[262] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A89DAC, 0, 0);
}

uint64_t sub_252A89DAC()
{
  v25 = v0;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544C58);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E766F0, 0xD000000000000093, 0x8000000252E76340);
  v3 = sub_252B680FC(v2);
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 504 * v5 - 472);
    memcpy((v0 + 1024), v6, 0x1F8uLL);
    memmove((v0 + 520), v6, 0x1F8uLL);
    GEOLocationCoordinate2DMake();
    sub_2529353AC(v0 + 1024, v0 + 1528);

    memcpy((v0 + 16), (v0 + 520), 0x1F8uLL);
  }

  else
  {

    sub_25293DEE0(v0 + 16);
  }

  v7 = *(v0 + 2080);
  memcpy(__dst, (v0 + 16), 0x1F8uLL);
  v8 = v7;
  v9 = sub_252953488(v7, __dst, 0);
  *(v0 + 2104) = v9;

  type metadata accessor for HomeAutomationEntityResponses();
  v10 = MEMORY[0x277D84F90];
  sub_25299DDFC(MEMORY[0x277D84F90]);
  if (sub_252C4D664(5))
  {
    type metadata accessor for HomeAutomationEntityResponses.Builder();
    *(swift_allocObject() + 16) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_252E3C130;
    type metadata accessor for HomeAutomationEntityResponse.Builder(0);
    v11 = swift_allocObject();
    v12 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
    v13 = sub_252E36324();
    v14 = *(*(v13 - 8) + 56);
    v15 = 1;
    v14(v11 + v12, 1, 1, v13);
    v14(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v13);
    *(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
    *(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = v10;
    *(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
    v14(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v13);
    *(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v10;
    *(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v10;
    sub_252C4E214();
    if (v16)
    {
      sub_252E37024();

      v15 = 0;
    }

    v17 = *(v0 + 2096);
    v14(v17, v15, 1, v13);
    swift_beginAccess();
    sub_2529D032C(v17, v11 + v12, &qword_27F540298, &unk_252E3C270);
    swift_endAccess();
    sub_25293847C(v17, &qword_27F540298, &unk_252E3C270);
    type metadata accessor for HomeAutomationEntityResponse(0);
    swift_allocObject();
    v18 = sub_2529605C0(v11);
    swift_setDeallocating();
    sub_25295E9E4();
    swift_deallocClassInstance();
    *(v23 + 32) = v18;

    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v19 + 24) = v23;
  }

  else
  {
    v20 = sub_252A90A5C(*(v0 + 2080));
    v19 = sub_25299DDFC(v20);
  }

  *(v0 + 2112) = v19;

  v21 = swift_task_alloc();
  *(v0 + 2120) = v21;
  *v21 = v0;
  v21[1] = sub_252A8A2C4;

  return sub_252D2BD34(v9, v19);
}

uint64_t sub_252A8A2C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2128) = v1;

  if (v1)
  {
    v5 = sub_252A8A4AC;
  }

  else
  {
    *(v4 + 2136) = a1;
    v5 = sub_252A8A42C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A8A42C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 2136);

  return v1(v2);
}

uint64_t sub_252A8A4AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252A8A528(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_252A8A548, 0, 0);
}

uint64_t sub_252A8A548()
{
  v1 = v0[3];
  v2 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v3 = v1[9];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_252A8A644;
  v5 = v0[2];
  v6 = v0[3];

  return sub_252A1E544(v5, &unk_252E46558, v6, &unk_252E46560, 0, v3, 1, v2);
}

uint64_t sub_252A8A644()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252A8A778, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_252A8A790()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2529C8CCC;

  return sub_252A866EC();
}

uint64_t sub_252A8A820(uint64_t a1)
{
  v1[11] = a1;
  v2 = sub_252E36324();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_252E36AB4();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A8A980, 0, 0);
}

uint64_t sub_252A8A980()
{
  v1 = v0[19];
  v2 = type metadata accessor for IconConfiguration(0);
  v0[20] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[21] = v4;
  v0[22] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v5 = qword_27F544FD0;
  v0[23] = qword_27F544FD0;
  v6 = v5;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  v0[24] = v7;
  __swift_project_value_buffer(v7, qword_27F544EB0);
  v8 = sub_252E36AC4();
  v9 = sub_252E374C4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_252917000, v8, v9, "Building confirmation snippet model", v10, 2u);
    MEMORY[0x2530AED00](v10, -1, -1);
  }

  v0[25] = sub_252D15950(0);
  v11 = sub_252D15950(1);
  v0[26] = v11;
  v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v11);
  swift_beginAccess();
  v0[27] = *(v12 + 23);

  sub_252B680FC(v13);
  v14 = sub_252B631FC();
  v0[28] = v14;

  v15 = swift_task_alloc();
  v0[29] = v15;
  *v15 = v0;
  v15[1] = sub_252A8AC08;

  return sub_252D260EC(v14);
}

uint64_t sub_252A8AC08(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_252A8B1A4;
  }

  else
  {
    v4 = sub_252A8AD3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A8AD3C()
{
  v34 = *(v0 + 200);
  v35 = *(v0 + 208);
  v31 = *(v0 + 168);
  v27 = *(v0 + 152);
  v1 = *(v0 + 144);
  v28 = v1;
  v29 = *(v0 + 160);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  *(v0 + 256) = 0;
  sub_252E36374();
  sub_252E37024();

  v26 = sub_252E36304();
  v7 = v6;
  v8 = *(v3 + 8);
  v8(v2, v5);
  *(v0 + 257) = 1;
  sub_252E36374();
  sub_252E37024();

  v9 = sub_252E36304();
  v25 = v10;
  v8(v2, v5);
  sub_252938414(v27, v1, &qword_27F541B50, &unk_252E47970);
  v11 = type metadata accessor for ConfirmationSnippetModel(0);
  v12 = *(v11 + 44);
  v31(&v4[v12], 1, 1, v29);
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v0 + 40) = v26;
  *(v0 + 48) = v7;
  v13 = v34;
  v14 = v35;
  sub_252E330C4();
  *(v0 + 56) = v9;
  *(v0 + 64) = v25;
  sub_252E330C4();
  sub_252A75B60();
  v15 = v13;
  sub_252E33054();
  sub_252E33054();

  v4[*(v11 + 48)] = 0;
  sub_252A909F4(v28, &v4[v12], &qword_27F541B50, &unk_252E47970);
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 208);
  v17 = *(v0 + 200);
  v33 = *(v0 + 152);
  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v30 = *(v0 + 184);
  v32 = *(v0 + 120);
  v20 = *(v0 + 88);
  __swift_project_value_buffer(*(v0 + 192), qword_27F544C58);
  sub_252E379F4();
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E76410);
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 72), *(v0 + 80), 0xD000000000000072, 0x8000000252E72680);

  v21 = sub_252E375C4();
  sub_252E36A74(v21, &dword_252917000, v30, "buildSnippetModel", 17, 2, v18, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v19 + 8))(v18, v32);
  sub_25293847C(v33, &qword_27F541B50, &unk_252E47970);
  v22 = type metadata accessor for HomeAutomationSnippetModels(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v20, 0, 1, v22);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_252A8B1A4()
{
  v1 = v0[26];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];

  v8 = sub_252E375C4();
  v11 = 2;
  sub_252E36A74(v8, &dword_252917000, v3, "buildSnippetModel", 17, 2, v5, " enableTelemetry=YES ", 21, v11, MEMORY[0x277D84F90]);
  (*(v6 + 8))(v5, v7);
  sub_25293847C(v4, &qword_27F541B50, &unk_252E47970);

  v9 = v0[1];

  return v9();
}

void *BaseConfirmationHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_252A8B32C(*(v0 + 56));

  sub_252A8B35C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  return v0;
}

void sub_252A8B32C(unint64_t a1)
{
  v1 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v1 != 2)
    {
    }
  }

  else
  {
    if (v1)
    {
      a1 &= 0x3FFFFFFFFFFFFFFFuLL;
    }
  }
}

void sub_252A8B35C(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
  }
}

uint64_t sub_252A8B3F0()
{
  v1 = *(v0 + 24);
  v2 = sub_252BAC3A4();
  if (*(v2 + 2) && (v3 = *(v2 + 4), , v4 = sub_252BAC3B8(), *(v4 + 2)))
  {
    v5 = *(v4 + 4);

    if ((*(v0 + 40) & 1) == 0)
    {
      v7 = *(v0 + 32);
      if (qword_27F53F490 != -1)
      {
        swift_once();
      }

      v8 = sub_252E36AD4();
      __swift_project_value_buffer(v8, qword_27F544C58);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E76690);
      v9 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v10 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v11 = v9[1];

      MEMORY[0x2530AD570](v10, v11);

      MEMORY[0x2530AD570](8250, 0xE200000000000000);
      sub_252E37374();
      sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000093, 0x8000000252E76340);

      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E766C0);
      v12 = *v9;
      v13 = v9[1];

      MEMORY[0x2530AD570](v12, v13);

      MEMORY[0x2530AD570](8250, 0xE200000000000000);
      sub_252E37374();
      sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000093, 0x8000000252E76340);

      *(v0 + 43) = v7 < v3;
      *(v0 + 44) = v5 < v7;
      *(v0 + 80) = v3;
      *(v0 + 88) = 0;
      *(v0 + 96) = v5;
      *(v0 + 104) = 0;
    }
  }

  else
  {
  }

  return result;
}

void sub_252A8B6A8()
{
  v1 = v0;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C58);
  sub_252CC3D90(0xD000000000000016, 0x8000000252E76630, 0xD000000000000093, 0x8000000252E76340);
  *(v0 + 105) = 1;
  v3 = *(v0 + 16);
  v4 = [v3 userTask];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 value];

    if (v6)
    {
      v7 = [v6 rangeValue];

      if (v7)
      {
        [v7 lowerValue];
        v26 = v8;
        [v7 upperValue];
        v27 = v9;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E76650);
        sub_252E37374();
        sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000093, 0x8000000252E76340);

        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E76670);
        sub_252E37374();
        sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000093, 0x8000000252E76340);

        v10 = sub_252C6E240(v3);
        v11.f64[0] = v27;
        v11.f64[1] = v26;
        if (v10 == 2)
        {
          v12 = vaddq_f64(v11, vdupq_n_s64(0xC040000000000000));
          __asm { FMOV            V1.2D, #5.0 }

          v18 = vmulq_f64(v12, _Q1);
          __asm { FMOV            V1.2D, #9.0 }

          v20 = vdivq_f64(v18, _Q1);
          v21 = vdupq_n_s64(0x4059000000000000uLL);
          v28 = vdivq_f64(vrndaq_f64(vmulq_f64(v20, v21)), v21);
        }

        else
        {
          v28 = v11;
        }

        v22 = sub_252BAC3CC();
        if (*(v22 + 2) && (v23 = *(v22 + 4), , v24 = sub_252BAC3E0(), *(v24 + 2)))
        {
          v25 = *(v24 + 4);

          *(v1 + 41) = v28.f64[1] < v23;
          *(v1 + 42) = v25 < v28.f64[0];
          *(v1 + 48) = v23;
          *(v1 + 56) = 0;
          *(v1 + 64) = v25;
          *(v1 + 72) = 0;
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_252A8B9C8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252A8BA2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v27 = &v27 - v2;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  v29 = __swift_project_value_buffer(v3, qword_27F544C58);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E76550);
  v4 = v0[24];
  if (v4)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v0[24])
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v5, v6);

  MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E76590);
  v7 = v0[25];
  if (v7)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v0[25])
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v8, v9);

  MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E765D0);
  v10 = v0[26];
  if (v10)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v0[26])
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v11, v12);

  MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E76600);
  v28 = v0;
  v13 = v0[27];
  if (v0[27])
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v0[27])
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v14, v15);

  sub_252CC3D90(v30, v31, 0xD000000000000093, 0x8000000252E76340);

  if ((v4 & 1) != 0 || (v7 & 1) != 0 || (v10 & 1) != 0 || (result = 0, v13))
  {
    v17 = v28;
    type metadata accessor for HomeAutomationEntityResponse.Builder(0);
    v18 = swift_allocObject();
    v19 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
    v20 = sub_252E36324();
    v21 = *(*(v20 - 8) + 56);
    v21(v18 + v19, 1, 1, v20);
    v21(v18 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v20);
    *(v18 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
    v22 = MEMORY[0x277D84F90];
    *(v18 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
    *(v18 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
    v21(v18 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v20);
    *(v18 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v22;
    *(v18 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v22;
    v23 = v17;

    v24 = v27;
    sub_252E37024();

    v21(v24, 0, 1, v20);
    swift_beginAccess();
    sub_2529D032C(v24, v18 + v19, &qword_27F540298, &unk_252E3C270);
    swift_endAccess();
    sub_25293847C(v24, &qword_27F540298, &unk_252E3C270);
    sub_252CD941C();
    v25 = sub_252AD6F94();

    type metadata accessor for HomeAutomationEntityResponse(0);
    swift_allocObject();
    v26 = sub_2529605C0(v25);

    if (v23[105] == 1)
    {
      sub_252A8C33C();
    }

    else
    {
      sub_252A8BEB8();
    }

    return v26;
  }

  return result;
}

uint64_t *sub_252A8BEB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v33 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v33 - v9;
  v34 = *(v0 + 24);
  v11 = 64;
  if (v34)
  {
    v11 = 48;
  }

  v12 = 72;
  if (v34)
  {
    v12 = 56;
  }

  v13 = *(v0 + v12);
  v14 = *(v0 + v11);
  v15 = sub_252B680FC(v8);
  v16 = *(v0 + 16);
  v17 = *(v1 + 32);
  v18 = *(v1 + 40);
  type metadata accessor for TemperatureConfirmationEntity();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  *(v19 + 32) = v18;
  *(v19 + 40) = v14;
  *(v19 + 48) = v13;
  *(v19 + 56) = 0;
  *(v19 + 64) = 1;
  *(v19 + 72) = 0;
  *(v19 + 80) = 1;
  swift_beginAccess();

  MEMORY[0x2530AD700](v20);
  if (*((*(v15 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v33 = *((*(v15 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  type metadata accessor for HomeAutomationAbstractMeasurement.Builder(0);
  swift_allocObject();
  v21 = sub_252D857C4();
  *(v21 + 16) = v14;
  *(v21 + 24) = v13;
  if (v18)
  {
    v22 = 1;
  }

  else
  {
    sub_252E37024();

    v22 = 0;
  }

  v23 = sub_252E36324();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, v22, 1, v23);
  sub_2529439A0(v10, v7);
  v25 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
  swift_beginAccess();
  sub_252A909F4(v7, v21 + v25, &qword_27F540298, &unk_252E3C270);
  swift_endAccess();
  *(v21 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumTargetTemperatureThreshold) = v34;
  *(v21 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumTargetTemperatureThreshold) = *(v1 + 25);
  v26 = *(v1 + 56);
  v27 = v21 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumTargetTemperature;
  *v27 = *(v1 + 48);
  *(v27 + 8) = v26;
  v28 = *(v1 + 72);
  v29 = v21 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumTargetTemperature;
  *v29 = *(v1 + 64);
  *(v29 + 8) = v28;
  sub_252E37024();
  v24(v7, 0, 1, v23);
  v30 = v35;
  sub_2529439A0(v7, v35);
  v31 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType;
  swift_beginAccess();
  sub_252A909F4(v30, v21 + v31, &qword_27F540298, &unk_252E3C270);
  swift_endAccess();
  type metadata accessor for HomeAutomationAbstractMeasurement(0);
  swift_allocObject();
  return sub_252D859B8(v21);
}

uint64_t *sub_252A8C33C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v38 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v33 = v32 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v35 = v32 - v8;
  v9 = sub_252B680FC(v7);
  v10 = *(v0 + 16);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);
  v13 = *(v1 + 80);
  v14 = *(v1 + 88);
  v15 = *(v1 + 96);
  v16 = *(v1 + 104);
  type metadata accessor for TemperatureConfirmationEntity();
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = v11;
  v32[1] = v11;
  v34 = v12;
  *(v17 + 32) = v12;
  *(v17 + 40) = 0;
  v18 = 1;
  *(v17 + 48) = 1;
  v37 = v13;
  *(v17 + 56) = v13;
  v36 = v14;
  *(v17 + 64) = v14;
  v39 = v15;
  *(v17 + 72) = v15;
  v19 = v16;
  *(v17 + 80) = v16;
  *(v17 + 81) = 1;
  swift_beginAccess();

  MEMORY[0x2530AD700](v20);
  if (*((*(v9 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v32[0] = *((*(v9 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  type metadata accessor for HomeAutomationAbstractMeasurement.Builder(0);
  swift_allocObject();
  v21 = sub_252D857C4();
  *(v21 + 16) = 0;
  *(v21 + 24) = 1;
  v22 = v35;
  if ((v34 & 1) == 0)
  {
    sub_252E37024();

    v18 = 0;
  }

  v23 = sub_252E36324();
  v24 = *(*(v23 - 8) + 56);
  v24(v22, v18, 1, v23);
  v25 = v33;
  sub_2529439A0(v22, v33);
  v26 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
  swift_beginAccess();
  sub_252A909F4(v25, v21 + v26, &qword_27F540298, &unk_252E3C270);
  swift_endAccess();
  *(v21 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumHeatingThreshold) = *(v1 + 26);
  *(v21 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumCoolingThreshold) = *(v1 + 27);
  v27 = v21 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumHeatingTemperature;
  *v27 = v37;
  *(v27 + 8) = v36;
  v28 = v21 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumCoolingTemperature;
  *v28 = v39;
  *(v28 + 8) = v19;
  sub_252E37024();
  v24(v25, 0, 1, v23);
  v29 = v38;
  sub_2529439A0(v25, v38);
  v30 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType;
  swift_beginAccess();
  sub_252A909F4(v29, v21 + v30, &qword_27F540298, &unk_252E3C270);
  swift_endAccess();
  type metadata accessor for HomeAutomationAbstractMeasurement(0);
  swift_allocObject();
  return sub_252D859B8(v21);
}

uint64_t sub_252A8C7C8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252A8C824(uint64_t *a1, int a2)
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