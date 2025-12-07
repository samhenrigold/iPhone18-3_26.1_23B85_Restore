uint64_t sub_2623EB46C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2623EB4B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2623EB518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RulesValidity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2623EB5C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RulesValidity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2623EB668(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2623EB688@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2623EB758()
{
  if (*v0)
  {
    return 0x7475706E69;
  }

  else
  {
    return 0x736C6562616CLL;
  }
}

uint64_t sub_2623EB794()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2623EB7DC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2623EB814()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2623EB85C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2623EB8A0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2623EB8D8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_2623EB910()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2623EB950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RulesValidity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2623EB9FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RulesValidity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2623EBC1C()
{
  if (*v0)
  {
    return 0x737475706E69;
  }

  else
  {
    return 0x6E6F697369636564;
  }
}

uint64_t sub_2623EBC58()
{
  if (*v0)
  {
    return 0x737475706E69;
  }

  else
  {
    return 0x6E6F697369636564;
  }
}

uint64_t sub_2623EBCA0()
{

  sub_2623F98B8(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2623EBCEC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2623EBD3C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v1 = *(v0 + 88);
  if (v1 != 255)
  {
    sub_2623F98B8(*(v0 + 72), *(v0 + 80), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_2623EBD90()
{

  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_2623F98B8(*(v0 + 48), *(v0 + 56), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2623EBDE4()
{

  sub_2623F98B8(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2623EBE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RulesValidity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2623EBEF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RulesValidity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2623EBFBC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2623EC004()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2623EC044()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2623EC084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RulesValidity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2623EC130(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RulesValidity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2623EC2B8()
{
  sub_262426F78(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_2623EC3CC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2623EC404()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2623EC44C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2623EC484()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2623EC4C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2623EC4F8()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2623EC530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RulesValidity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2623EC5DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RulesValidity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2623EC69C()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2623EC6FC()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2623EC754()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_2623EC95C()
{
  if (*v0)
  {
    return 0x427475706E69;
  }

  else
  {
    return 0x417475706E69;
  }
}

uint64_t sub_2623EC990(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262445A88(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623EC9C8(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262447FC0(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623ECA00()
{
  if (*v0)
  {
    return 0x6E497265626D756ELL;
  }

  else
  {
    return 0x75706E497473696CLL;
  }
}

uint64_t sub_2623ECA4C()
{
  if (*v0)
  {
    return 0x49737265626D756ELL;
  }

  else
  {
    return 0x75706E497473696CLL;
  }
}

uint64_t sub_2623ECA98(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244A17C(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623ECAD0(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244C9A0(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623ECB08()
{
  if (*v0)
  {
    return 0x6E49676E69727473;
  }

  else
  {
    return 0x75706E497473696CLL;
  }
}

uint64_t sub_2623ECB54()
{
  if (*v0)
  {
    return 0x4973676E69727473;
  }

  else
  {
    return 0x75706E497473696CLL;
  }
}

uint64_t sub_2623ECBA0(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244ECD0(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623ECBD8(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244FB08(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623ECC10()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2623ECC48()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2623ECC94()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_2623ECCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RulesValidity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2623ECD78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RulesValidity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2623ECEF4()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_2623ECF24(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65756C6176;
    v6 = 0x746C7561666564;
    if (a1 != 2)
    {
      v6 = 1701667182;
    }

    if (a1)
    {
      v5 = 0x6D614E646C656966;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6369676F6CLL;
    v2 = 0xD000000000000013;
    if (a1 == 7)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x6C615673656C7572;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2623ED050@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2623F18CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2623ED090(uint64_t a1)
{
  v2 = sub_2623EDB6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623ED0CC(uint64_t a1)
{
  v2 = sub_2623EDB6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623ED108@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C450, &qword_262463320);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2623EDB6C();
  result = sub_262462D88();
  if (!v2)
  {
    v10 = sub_262462BC8();
    if (*(v10 + 16))
    {
      v11 = *(v10 + 32);

      v12 = *(sub_262462BC8() + 16);

      if (v12 == 1 || (sub_262409DB8() & 1) != 0)
      {
        if (v11 <= 2)
        {
          sub_2623F3CA4(a1, v27);
          if ((v11 - 1) >= 2)
          {
            v25 = sub_2623F1EAC(v27);
            a2[3] = &type metadata for NumberListValue;
            a2[4] = sub_2623F2300();
            *a2 = v25;
          }

          else
          {
            v20 = sub_2623F20E0(v27);
            v22 = v21;
            v24 = v23;
            a2[3] = &type metadata for NumberListField;
            a2[4] = sub_2623F22AC();
            *a2 = v20;
            a2[1] = v22;
            a2[2] = v24;
          }

          return (*(v6 + 8))(v8, v5);
        }

        if ((v11 - 3) < 4)
        {
          sub_2623F3CA4(a1, v27);
          a2[3] = type metadata accessor for NumberListRule(0);
          a2[4] = sub_2623F3444(&qword_27FF0C488, type metadata accessor for NumberListRule, &unk_262463984);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
          sub_2623ED588(v27, boxed_opaque_existential_1);
          return (*(v6 + 8))(v8, v5);
        }

        if (v11 == 7)
        {
          LOBYTE(v27[0]) = 7;
          a2[3] = &type metadata for NumberListReplaceFailure;
          a2[4] = sub_2623F1D54();
          *a2 = swift_allocObject();
          sub_2623F1DA8();
          sub_262462BB8();
          return (*(v6 + 8))(v8, v5);
        }

        LOBYTE(v27[0]) = 8;
        a2[3] = &type metadata for NumberListMatchCase;
        a2[4] = sub_2623F1C10();
        *a2 = swift_allocObject();
        sub_2623F1CB0();
        sub_262462BB8();
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
    *(v18 + 16) = 0xD000000000000014;
    *(v18 + 24) = 0x80000002624632C0;
    v19 = v27[1];
    *(v18 + 32) = v27[0];
    *(v18 + 48) = v19;
    *(v18 + 64) = 3;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_2623ED588@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4E8, &qword_262463350);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v30 - v4;
  v5 = type metadata accessor for RulesValidity(0);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4F0, &qword_262463358);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for NumberListRule(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2623F24DC();
  v14 = v39;
  sub_262462D88();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v7;
  v15 = v36;
  v16 = v37;
  LOBYTE(v41[0]) = 0;
  v17 = v10;
  v19 = v13;
  *v13 = sub_262462B88();
  v13[1] = v20;
  v33 = v20;
  v13[2] = sub_2623EE61C(v17, 1u);
  LOBYTE(v41[0]) = 2;
  sub_2623F3444(&qword_2813BDBE8, type metadata accessor for RulesValidity, &unk_262470FBC);
  v21 = v16;
  v22 = v15;
  v32 = 0;
  sub_262462B78();
  v31 = v17;
  v23 = v35 + 48;
  v24 = *(v35 + 48);
  if (v24(v21, 1, v22) == 1)
  {
    v35 = v23;
    v25 = v39;
    *v39 = 0;
    swift_storeEnumTagMultiPayload();
    v26 = v24(v21, 1, v22) == 1;
    v27 = v21;
    v28 = v34;
    if (!v26)
    {
      sub_2623F39E0(v27, &qword_27FF0C4E8, &qword_262463350);
    }
  }

  else
  {
    v25 = v39;
    sub_2623F2530(v21, v39);
    v28 = v34;
  }

  sub_2623F2530(v25, v19 + *(v11 + 24));
  v42 = 3;
  sub_262462B58();
  v29 = v38;
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v40, v41);
  __swift_destroy_boxed_opaque_existential_1(v40);
  (*(v29 + 8))(v31, v8);
  sub_2623EB668(v41, v19 + *(v11 + 28));
  sub_2623F2594(v19, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2623F25F8(v19, type metadata accessor for NumberListRule);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2623EDB6C()
{
  result = qword_27FF0C458;
  if (!qword_27FF0C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C458);
  }

  return result;
}

uint64_t sub_2623EDBC8()
{
  sub_262462CF8();
  MEMORY[0x2667289D0](0);
  return sub_262462D38();
}

uint64_t sub_2623EDC0C(uint64_t a1)
{
  sub_262462CF8();
  MEMORY[0x2667289D0](0);
  return sub_262462D38();
}

uint64_t sub_2623EDC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_2623EDCE4(uint64_t a1)
{
  v2 = sub_2623F2354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623EDD20(uint64_t a1)
{
  v2 = sub_2623F2354();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623EDD5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B0, &qword_262463330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4A0, &qword_262463328);
  sub_2623F3B90(&qword_27FF0C4C0, MEMORY[0x277D83A30], MEMORY[0x277D83978]);
  sub_262462BB8();
  if (v1)
  {
    MEMORY[0x266728D50](v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4C8, &qword_262463340);
    sub_2623F23F0();
    result = sub_262462BB8();
    v25 = v2;
    v5 = *(v27 + 16);
    if (!v5)
    {
      v4 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

    v6 = 0;
    v7 = v27 + 40;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = (v7 + 16 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= *(v27 + 16))
        {
          __break(1u);
          return result;
        }

        v10 = *(v8 - 1);
        v11 = *v8;
        MEMORY[0x28223BE20](result);
        if ((v11 & 0x1000000000000000) == 0)
        {
          if ((v11 & 0x2000000000000000) != 0)
          {
            *(&v27 + 1) = v11 & 0xFFFFFFFFFFFFFFLL;

            if (v10 >= 0x21u || ((0x100003E01uLL >> v10) & 1) == 0)
            {
              v13 = _swift_stdlib_strtod_clocale();
              if (v13)
              {
LABEL_18:
                v26 = *v13 == 0;
                goto LABEL_20;
              }
            }

            goto LABEL_19;
          }

          if ((v10 & 0x1000000000000000) != 0)
          {
            v12 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

            if (v12 >= 0x21 || ((0x100003E01uLL >> v12) & 1) == 0)
            {
              v13 = _swift_stdlib_strtod_clocale();
              if (v13)
              {
                goto LABEL_18;
              }
            }

LABEL_19:
            v26 = 0;
            goto LABEL_20;
          }
        }

        sub_262462A18();
LABEL_20:

        if (v26)
        {
          break;
        }

        ++v9;
        v8 += 2;
        if (v5 == v9)
        {
          goto LABEL_31;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26243C488(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_26243C488((v14 > 1), v15 + 1, 1, v4);
        v4 = result;
      }

      v6 = v9 + 1;
      *(v4 + 16) = v15 + 1;
      *(v4 + 8 * v15 + 32) = 0;
      v7 = v27 + 40;
      if (v5 - 1 == v9)
      {
LABEL_31:
        v16 = *(v4 + 16);
        v17 = *(v27 + 16);

        if (v16 != v17)
        {

          if (sub_262462BE8())
          {
            return 0;
          }

          else
          {
            v18 = sub_262462B48();
            v19 = sub_262427A60(v18);
            v4 = v20;

            *&v27 = v25;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B8, &qword_262463338);
            v21 = sub_262462728();
            v23 = v22;
            sub_2623F1BBC();
            swift_allocError();
            *v24 = v19;
            *(v24 + 8) = v4;
            *(v24 + 16) = 0x65756C6176;
            *(v24 + 24) = 0xE500000000000000;
            *(v24 + 32) = v21;
            *(v24 + 40) = v23;
            *(v24 + 48) = v27;
            *(v24 + 64) = 4;
            swift_willThrow();
          }
        }

        return v4;
      }
    }
  }

  return v27;
}

uint64_t sub_2623EE194(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B0, &qword_262463330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4D8, &qword_262463348);
  sub_2623F3B90(&qword_27FF0C4C0, MEMORY[0x277D83A30], MEMORY[0x277D83978]);
  sub_262462BB8();
  if (v2)
  {
    MEMORY[0x266728D50](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4C8, &qword_262463340);
    sub_2623F23F0();
    result = sub_262462BB8();
    v29 = v4;
    v30 = a2;
    v7 = *(v32 + 16);
    if (!v7)
    {
      v6 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

    v8 = 0;
    v9 = v32 + 40;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = (v9 + 16 * v8);
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v32 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 - 1);
        v13 = *v10;
        MEMORY[0x28223BE20](result);
        if ((v13 & 0x1000000000000000) == 0)
        {
          if ((v13 & 0x2000000000000000) != 0)
          {
            *(&v32 + 1) = v13 & 0xFFFFFFFFFFFFFFLL;

            if (v12 >= 0x21u || ((0x100003E01uLL >> v12) & 1) == 0)
            {
              v15 = _swift_stdlib_strtod_clocale();
              if (v15)
              {
LABEL_18:
                v31 = *v15 == 0;
                goto LABEL_20;
              }
            }

            goto LABEL_19;
          }

          if ((v12 & 0x1000000000000000) != 0)
          {
            v14 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

            if (v14 >= 0x21 || ((0x100003E01uLL >> v14) & 1) == 0)
            {
              v15 = _swift_stdlib_strtod_clocale();
              if (v15)
              {
                goto LABEL_18;
              }
            }

LABEL_19:
            v31 = 0;
            goto LABEL_20;
          }
        }

        sub_262462A18();
LABEL_20:

        if (v31)
        {
          break;
        }

        ++v11;
        v10 += 2;
        if (v7 == v11)
        {
          goto LABEL_31;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26243C488(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v9 = v32 + 40;
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_26243C488((v16 > 1), v17 + 1, 1, v6);
        v6 = result;
      }

      v8 = v11 + 1;
      *(v6 + 16) = v17 + 1;
      *(v6 + 8 * v17 + 32) = 0;
      if (v7 - 1 == v11)
      {
LABEL_31:
        v18 = *(v6 + 16);
        v19 = *(v32 + 16);

        if (v18 != v19)
        {

          if (sub_262462BE8())
          {
            return 0;
          }

          else
          {
            v20 = sub_262462B48();
            v21 = sub_262427A60(v20);
            v6 = v22;

            if (v30)
            {
              v23 = 0x746C7561666564;
            }

            else
            {
              v23 = 0x6D614E646C656966;
            }

            if (v30)
            {
              v24 = 0xE700000000000000;
            }

            else
            {
              v24 = 0xE900000000000065;
            }

            *&v32 = v29;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B8, &qword_262463338);
            v25 = sub_262462728();
            v27 = v26;
            sub_2623F1BBC();
            swift_allocError();
            *v28 = v21;
            *(v28 + 8) = v6;
            *(v28 + 16) = v23;
            *(v28 + 24) = v24;
            *(v28 + 32) = v25;
            *(v28 + 40) = v27;
            *(v28 + 48) = v32;
            *(v28 + 64) = 4;
            swift_willThrow();
          }
        }

        return v6;
      }
    }
  }

  return v32;
}

uint64_t sub_2623EE61C(uint64_t a1, unsigned __int8 a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B0, &qword_262463330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4F0, &qword_262463358);
  sub_2623F3B90(&qword_27FF0C4C0, MEMORY[0x277D83A30], MEMORY[0x277D83978]);
  sub_262462BB8();
  if (v2)
  {
    MEMORY[0x266728D50](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4C8, &qword_262463340);
    sub_2623F23F0();
    result = sub_262462BB8();
    v29 = a2;
    v30 = v4;
    v7 = *(v32 + 16);
    if (!v7)
    {
      v6 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

    v8 = 0;
    v9 = v32 + 40;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = (v9 + 16 * v8);
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v32 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 - 1);
        v13 = *v10;
        MEMORY[0x28223BE20](result);
        if ((v13 & 0x1000000000000000) == 0)
        {
          if ((v13 & 0x2000000000000000) != 0)
          {
            *(&v32 + 1) = v13 & 0xFFFFFFFFFFFFFFLL;

            if (v12 >= 0x21u || ((0x100003E01uLL >> v12) & 1) == 0)
            {
              v15 = _swift_stdlib_strtod_clocale();
              if (v15)
              {
LABEL_18:
                v31 = *v15 == 0;
                goto LABEL_20;
              }
            }

            goto LABEL_19;
          }

          if ((v12 & 0x1000000000000000) != 0)
          {
            v14 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

            if (v14 >= 0x21 || ((0x100003E01uLL >> v14) & 1) == 0)
            {
              v15 = _swift_stdlib_strtod_clocale();
              if (v15)
              {
                goto LABEL_18;
              }
            }

LABEL_19:
            v31 = 0;
            goto LABEL_20;
          }
        }

        sub_262462A18();
LABEL_20:

        if (v31)
        {
          break;
        }

        ++v11;
        v10 += 2;
        if (v7 == v11)
        {
          goto LABEL_31;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26243C488(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_26243C488((v16 > 1), v17 + 1, 1, v6);
        v6 = result;
      }

      v8 = v11 + 1;
      *(v6 + 16) = v17 + 1;
      *(v6 + 8 * v17 + 32) = 0;
      v9 = v32 + 40;
      if (v7 - 1 == v11)
      {
LABEL_31:
        v18 = *(v6 + 16);
        v19 = *(v32 + 16);

        if (v18 != v19)
        {

          if (sub_262462BE8())
          {
            return 0;
          }

          else
          {
            v20 = sub_262462B48();
            v21 = sub_262427A60(v20);
            v23 = v22;

            if (v29 > 1u)
            {
              if (v29 == 2)
              {
                v6 = 0xED00007974696469;
                v24 = 0x6C615673656C7572;
              }

              else
              {
                v6 = 0xE500000000000000;
                v24 = 0x6369676F6CLL;
              }
            }

            else if (v29)
            {
              v6 = 0x80000002624717E0;
              v24 = 0xD000000000000010;
            }

            else
            {
              v6 = 0xE400000000000000;
              v24 = 1701667182;
            }

            *&v32 = v30;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B8, &qword_262463338);
            v25 = sub_262462728();
            v27 = v26;
            sub_2623F1BBC();
            swift_allocError();
            *v28 = v21;
            *(v28 + 8) = v23;
            *(v28 + 16) = v24;
            *(v28 + 24) = v6;
            *(v28 + 32) = v25;
            *(v28 + 40) = v27;
            *(v28 + 48) = v32;
            *(v28 + 64) = 4;
            swift_willThrow();
          }
        }

        return v6;
      }
    }
  }

  return v32;
}

uint64_t sub_2623EEAD8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B0, &qword_262463330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5E0, &qword_262463A88);
  sub_2623F3B90(&qword_27FF0C4C0, MEMORY[0x277D83A30], MEMORY[0x277D83978]);
  sub_262462BB8();
  if (v2)
  {
    MEMORY[0x266728D50](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4C8, &qword_262463340);
    sub_2623F23F0();
    result = sub_262462BB8();
    v29 = v4;
    v30 = a2;
    v7 = *(v32 + 16);
    if (!v7)
    {
      v6 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

    v8 = 0;
    v9 = v32 + 40;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = (v9 + 16 * v8);
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v32 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 - 1);
        v13 = *v10;
        MEMORY[0x28223BE20](result);
        if ((v13 & 0x1000000000000000) == 0)
        {
          if ((v13 & 0x2000000000000000) != 0)
          {
            *(&v32 + 1) = v13 & 0xFFFFFFFFFFFFFFLL;

            if (v12 >= 0x21u || ((0x100003E01uLL >> v12) & 1) == 0)
            {
              v15 = _swift_stdlib_strtod_clocale();
              if (v15)
              {
LABEL_18:
                v31 = *v15 == 0;
                goto LABEL_20;
              }
            }

            goto LABEL_19;
          }

          if ((v12 & 0x1000000000000000) != 0)
          {
            v14 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

            if (v14 >= 0x21 || ((0x100003E01uLL >> v14) & 1) == 0)
            {
              v15 = _swift_stdlib_strtod_clocale();
              if (v15)
              {
                goto LABEL_18;
              }
            }

LABEL_19:
            v31 = 0;
            goto LABEL_20;
          }
        }

        sub_262462A18();
LABEL_20:

        if (v31)
        {
          break;
        }

        ++v11;
        v10 += 2;
        if (v7 == v11)
        {
          goto LABEL_31;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26243C488(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v9 = v32 + 40;
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_26243C488((v16 > 1), v17 + 1, 1, v6);
        v6 = result;
      }

      v8 = v11 + 1;
      *(v6 + 16) = v17 + 1;
      *(v6 + 8 * v17 + 32) = 0;
      if (v7 - 1 == v11)
      {
LABEL_31:
        v18 = *(v6 + 16);
        v19 = *(v32 + 16);

        if (v18 != v19)
        {

          if (sub_262462BE8())
          {
            return 0;
          }

          else
          {
            v20 = sub_262462B48();
            v21 = sub_262427A60(v20);
            v6 = v22;

            if (v30)
            {
              v23 = 0xD000000000000010;
            }

            else
            {
              v23 = 0x7475706E69;
            }

            if (v30)
            {
              v24 = 0x8000000262471840;
            }

            else
            {
              v24 = 0xE500000000000000;
            }

            *&v32 = v29;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B8, &qword_262463338);
            v25 = sub_262462728();
            v27 = v26;
            sub_2623F1BBC();
            swift_allocError();
            *v28 = v21;
            *(v28 + 8) = v6;
            *(v28 + 16) = v23;
            *(v28 + 24) = v24;
            *(v28 + 32) = v25;
            *(v28 + 40) = v27;
            *(v28 + 48) = v32;
            *(v28 + 64) = 4;
            swift_willThrow();
          }
        }

        return v6;
      }
    }
  }

  return v32;
}

uint64_t sub_2623EEF5C(uint64_t *a1, uint64_t a2)
{
  *a1 = *v2;
}

uint64_t sub_2623EEF94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2623F1EAC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2623EEFC0()
{
  if (*v0)
  {
    return 0x746C7561666564;
  }

  else
  {
    return 0x6D614E646C656966;
  }
}

uint64_t sub_2623EF000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000)
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

uint64_t sub_2623EF0E4(uint64_t a1)
{
  v2 = sub_2623F2488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623EF120(uint64_t a1)
{
  v2 = sub_2623F2488();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2623EF15C(unint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v6 = v4;
  v7 = a4;
  if (!a4)
  {
    memset(v105, 0, 40);

    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }

LABEL_5:
    v11 = sub_2624414FC(a2, a3);
    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

    v13 = a1;
    sub_2623F3970(*(a1 + 56) + 40 * v11, &v99);
    v102 = v99;
    v103 = v100;
    v104 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
    v14 = sub_262462918();
    v15 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

    swift_unknownObjectRelease();
    if (v14 != v15)
    {
      sub_2623F3970(&v102, &v99);
      if (*(&v100 + 1))
      {
        sub_2623F39E0(&v102, &qword_27FF0C5F0, &qword_262463A90);
        v106 = v99;
        v107 = v100;
        v16 = v101;
        goto LABEL_15;
      }

      sub_2623F39E0(&v99, &qword_27FF0C5F0, &qword_262463A90);
    }

    sub_2623F3970(v105, &v96);
    if (!*(&v97 + 1))
    {
      sub_2623F39E0(&v96, &qword_27FF0C5F0, &qword_262463A90);
      sub_2623F1BBC();
      swift_allocError();
      *v49 = a2;
      *(v49 + 8) = a3;
      v50 = v101;
      v51 = v100;
      *(v49 + 16) = v99;
      *(v49 + 32) = v51;
      *(v49 + 48) = v50;
      *(v49 + 64) = 5;
      swift_willThrow();
      sub_2623F39E0(&v102, &qword_27FF0C5F0, &qword_262463A90);
      goto LABEL_63;
    }

    sub_2623F39E0(&v102, &qword_27FF0C5F0, &qword_262463A90);
    v106 = v96;
    v107 = v97;
    v16 = v98;
LABEL_15:
    v108 = v16;
    a1 = v13;
    goto LABEL_16;
  }

  *&v99 = a4;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B0, &qword_262463330);
  sub_2623F3B90(&qword_27FF0C618, MEMORY[0x277D83A18], MEMORY[0x277D83950]);
  sub_2624629E8();
  if (*(a1 + 16))
  {
    goto LABEL_5;
  }

LABEL_9:
  sub_2623F3970(v105, &v102);
  if (!*(&v103 + 1))
  {
    sub_2623F39E0(&v102, &qword_27FF0C5F0, &qword_262463A90);
    sub_2623F1BBC();
    swift_allocError();
    *v17 = a2;
    *(v17 + 8) = a3;
    v18 = v101;
    v19 = v100;
    *(v17 + 16) = v99;
    *(v17 + 32) = v19;
    *(v17 + 48) = v18;
    *(v17 + 64) = 6;
    swift_willThrow();
LABEL_63:

    sub_2623F39E0(v105, &qword_27FF0C5F0, &qword_262463A90);
    return;
  }

  v106 = v102;
  v107 = v103;
  v108 = v104;
LABEL_16:
  sub_2623F39E0(v105, &qword_27FF0C5F0, &qword_262463A90);
  sub_2623F3A40(&v106, &v99);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B0, &qword_262463330);
  if (swift_dynamicCast())
  {
    goto LABEL_67;
  }

  sub_2623F3A40(&v106, &v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F8, &qword_262463A98);
  if (swift_dynamicCast())
  {
    v95 = v4;

    a3 = v105[0];
    v6 = *(v105[0] + 16);
    if (v6)
    {
      v94 = a1;
      v105[0] = MEMORY[0x277D84F90];
      sub_26243CD40(0, v6, 0);
      v21 = 0;
      v7 = v105[0];
      v22 = (a3 + 32);
      while (v21 < *(a3 + 16))
      {
        sub_2623F3CA4(v22, &v99);
        v23 = *(&v100 + 1);
        a2 = v101;
        v24 = __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
        MEMORY[0x28223BE20](v24);
        v5 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v26 + 16))(v5);
        v27 = sub_2623F01A0(v5, v23, a2);
        if (v28)
        {
          __break(1u);
          goto LABEL_117;
        }

        a2 = v27;
        __swift_destroy_boxed_opaque_existential_1(&v99);
        v105[0] = v7;
        v30 = v7[2];
        v29 = v7[3];
        v5 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          sub_26243CD40((v29 > 1), v30 + 1, 1);
          v7 = v105[0];
        }

        v21 = (v21 + 1);
        v7[2] = v5;
        v7[v30 + 4] = a2;
        v22 += 5;
        if (v6 == v21)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    goto LABEL_64;
  }

  sub_2623F3A40(&v106, &v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C600, qword_262463AA0);
  if (swift_dynamicCast())
  {
    v95 = v4;

    v6 = v105[0];
    a3 = *(v105[0] + 16);
    if (a3)
    {
      v94 = a1;
      *&v102 = MEMORY[0x277D84F90];
      sub_26243CD40(0, a3, 0);
      v31 = 0;
      v7 = v102;
      v22 = (v6 + 4);
      while (1)
      {
        if (v31 >= v6[2])
        {
          goto LABEL_109;
        }

        sub_2623F3CA4(v22, &v99);
        v5 = v101;
        v32 = __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
        a2 = &v89;
        MEMORY[0x28223BE20](v32);
        (*(v34 + 16))(&v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
        sub_2623F3B3C();
        v23 = MEMORY[0x277D839F8];
        sub_262462658();
        if (v105[1])
        {
          break;
        }

        v35 = v105[0];
        __swift_destroy_boxed_opaque_existential_1(&v99);
        *&v102 = v7;
        v37 = v7[2];
        v36 = v7[3];
        v5 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          sub_26243CD40((v36 > 1), v37 + 1, 1);
          v7 = v102;
        }

        ++v31;
        v7[2] = v5;
        v7[v37 + 4] = v35;
        v22 += 5;
        if (a3 == v31)
        {
LABEL_25:
          sub_2623F3A9C(&v106);

          goto LABEL_99;
        }
      }

LABEL_119:
      __break(1u);
LABEL_120:
      for (i = MEMORY[0x266728730](1, v23); ; i = *(v23 + 40))
      {
        v22 = i;

        v77 = sub_2624628D8();
        v78 = sub_2624628E8();

        if ((v78 & 1) == 0)
        {
LABEL_96:

          goto LABEL_97;
        }

        do
        {
LABEL_82:

          v66 = [v5 count];
          if ((v66 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_114:
            __break(1u);
            goto LABEL_115;
          }

          if (v66)
          {
            v67 = v66;
            v7 = sub_262462868();
            v7[2] = v67;
            bzero(v7 + 4, 8 * v67);
          }

          else
          {
            v7 = MEMORY[0x277D84F90];
          }

          v84 = [v5 count];
          if ((v84 & 0x8000000000000000) != 0)
          {
            goto LABEL_114;
          }

          v85 = v84;
          v95 = v6;
          if (!v84)
          {
LABEL_107:

            sub_2623F3A9C(&v106);
            goto LABEL_99;
          }

          a3 = 0;
          v6 = &off_279B32000;
          v22 = &off_279B32000;
          while (1)
          {
            v86 = [v5 objectAtIndexedSubscript_];
            [v86 doubleValue];
            v88 = v87;

            if (a3 >= v7[2])
            {
              break;
            }

            v7[a3++ + 4] = v88;
            if (v85 == a3)
            {
              goto LABEL_107;
            }
          }

LABEL_111:
          __break(1u);
LABEL_112:
          v65 = sub_262462AD8();
LABEL_81:
        }

        while (v65 == 1);
        v68 = [v5 v22[38]];
        v69 = sub_262462848();

        if (!(v69 >> 62))
        {
          v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_87;
        }

LABEL_115:
        v70 = sub_262462AD8();
LABEL_87:

        if (v70 != 2)
        {
          goto LABEL_96;
        }

        v71 = [v5 v22[38]];
        v23 = sub_262462848();

        if ((v23 & 0xC000000000000001) == 0)
        {
          if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v72 = *(v23 + 32);
            goto LABEL_91;
          }

          __break(1u);
          goto LABEL_119;
        }

LABEL_117:
        v72 = MEMORY[0x266728730](0, v23);
LABEL_91:
        v22 = v72;

        v73 = sub_2624628D8();
        v74 = sub_2624628E8();

        if (v74)
        {
          goto LABEL_82;
        }

        v75 = [v5 shape];
        v23 = sub_262462848();

        if ((v23 & 0xC000000000000001) != 0)
        {
          goto LABEL_120;
        }

        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          break;
        }
      }

      __break(1u);
      return;
    }

LABEL_64:

    sub_2623F3A9C(&v106);
    goto LABEL_99;
  }

  sub_2623F3A40(&v106, &v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4C8, &qword_262463340);
  isUniquelyReferenced_nonNull_native = swift_dynamicCast();
  v92 = a2;
  v91 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_69;
  }

  v94 = a1;
  v95 = v4;
  a2 = v105[0];
  v39 = *(v105[0] + 16);
  if (!v39)
  {
    v93 = MEMORY[0x277D84F90];
    goto LABEL_66;
  }

  v40 = 0;
  v41 = v105[0] + 40;
  v89 = (v39 - 1);
  v93 = MEMORY[0x277D84F90];
  v90 = v105[0] + 40;
  do
  {
    v6 = (v41 + 16 * v40);
    v22 = v40;
    while (1)
    {
      if (v22 >= a2[2])
      {
        goto LABEL_110;
      }

      v42 = *(v6 - 1);
      v5 = *v6;
      v105[0] = 0;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          *&v99 = v42;
          *(&v99 + 1) = v5 & 0xFFFFFFFFFFFFFFLL;

          if (v42 >= 0x21u || ((0x100003E01uLL >> v42) & 1) == 0)
          {
            v44 = _swift_stdlib_strtod_clocale();
            if (v44)
            {
LABEL_50:
              LOBYTE(v102) = *v44 == 0;
              goto LABEL_52;
            }
          }

          goto LABEL_51;
        }

        if ((v42 & 0x1000000000000000) != 0)
        {
          v43 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v43 >= 0x21 || ((0x100003E01uLL >> v43) & 1) == 0)
          {
            v44 = _swift_stdlib_strtod_clocale();
            if (v44)
            {
              goto LABEL_50;
            }
          }

LABEL_51:
          LOBYTE(v102) = 0;
          goto LABEL_52;
        }
      }

      sub_262462A18();
LABEL_52:

      if (v102)
      {
        break;
      }

      v22 = (v22 + 1);
      v6 += 2;
      if (v39 == v22)
      {
        goto LABEL_66;
      }
    }

    v45 = v105[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_26243C488(0, *(v93 + 2) + 1, 1, v93);
      v93 = isUniquelyReferenced_nonNull_native;
    }

    v41 = v90;
    v47 = *(v93 + 2);
    v46 = *(v93 + 3);
    if (v47 >= v46 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_26243C488((v46 > 1), v47 + 1, 1, v93);
      v93 = isUniquelyReferenced_nonNull_native;
    }

    v40 = (v22 + 1);
    v48 = v93;
    *(v93 + 2) = v47 + 1;
    *&v48[8 * v47 + 32] = v45;
  }

  while (v89 != v22);
LABEL_66:
  v52 = *(v93 + 2);
  v53 = a2[2];

  if (v52 == v53)
  {
    goto LABEL_67;
  }

  v6 = v95;
  a1 = v94;
LABEL_69:
  v54 = sub_2624629D8();
  objc_opt_self();
  v55 = swift_dynamicCastObjCClass();
  if (!v55 || (v56 = [v55 sequenceValue]) == 0)
  {
    v57 = v54;
LABEL_76:

    goto LABEL_77;
  }

  v57 = v56;
  if ([v56 type] != 1)
  {

    goto LABEL_76;
  }

  v58 = [v57 int64Values];
  sub_2623F3AF0();
  v59 = sub_262462848();

  v60 = sub_2623F0330(v59);

  if (v60)
  {
LABEL_67:

    sub_2623F3A9C(&v106);
    goto LABEL_99;
  }

LABEL_77:
  a2 = sub_2624629D8();
  objc_opt_self();
  v61 = swift_dynamicCastObjCClass();
  if (v61)
  {
    v62 = [v61 multiArrayValue];
    if (v62)
    {
      v5 = v62;
      v94 = a1;
      v22 = &off_279B32000;
      v63 = [v62 shape];
      sub_2623F3AF0();
      v64 = sub_262462848();

      if (v64 >> 62)
      {
        goto LABEL_112;
      }

      v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_81;
    }
  }

LABEL_97:

  if (v7)
  {

    sub_2623F3A9C(&v106);
LABEL_99:
  }

  else
  {
    *&v99 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B8, &qword_262463338);
    v79 = sub_262462728();
    v81 = v80;
    sub_2623F1BBC();
    swift_allocError();
    *v82 = v92;
    *(v82 + 8) = a3;
    *(v82 + 16) = v79;
    *(v82 + 24) = v81;
    v83 = v100;
    *(v82 + 32) = v99;
    *(v82 + 48) = v83;
    *(v82 + 64) = 7;
    swift_willThrow();
    sub_2623F3A9C(&v106);
  }
}

uint64_t sub_2623F01A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_262462978() > 64)
  {
    sub_2623F3B3C();
    sub_2623F3BFC();
    v5 = sub_262462678();
    (*(*(a2 - 8) + 8))(a1, a2);
    if (v5)
    {
      v6 = v11;
      return *&v6;
    }

    return 0;
  }

  v7 = sub_262462988();
  v8 = sub_262462968();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if ((v7 & 1) == 0)
  {
    v6 = v8;
    if (v8 < 1.84467441e19 && v8 == v8)
    {
      return *&v6;
    }

    return 0;
  }

  v6 = v8;
  if (v8 >= 9.22337204e18)
  {
    return 0;
  }

  if (v6 <= -9.22337204e18)
  {
    __break(1u);
    return result;
  }

  if (v8 != v6)
  {
    return 0;
  }

  return *&v6;
}

uint64_t sub_2623F0330(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_262462AD8())
  {
    v15 = MEMORY[0x277D84F90];
    sub_26243CD40(0, i & ~(i >> 63), 0);
    v4 = v15;
    if (v2)
    {
      break;
    }

    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x266728730](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = 0;
      v14 = 1;
      MEMORY[0x266728550](v6, &v13);

      if (v14)
      {

        return 0;
      }

      v9 = v13;
      v15 = v4;
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_26243CD40((v10 > 1), v11 + 1, 1);
        v4 = v15;
      }

      *(v4 + 16) = v11 + 1;
      *(v4 + 8 * v11 + 32) = v9;
      if (v8 == v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v2 = sub_262462AD8();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t sub_2623F04C0(void *a1, unint64_t a2)
{
  sub_2623EF15C(a2, *v2, *(v2 + 8), *(v2 + 16));
  v6 = v5;
  result = v7;
  if (!v3)
  {
    *a1 = v6;
  }

  return result;
}

uint64_t sub_2623F0504@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2623F20E0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_2623F0534()
{
  v1 = 1701667182;
  v2 = 0x6C615673656C7572;
  if (*v0 != 2)
  {
    v2 = 0x6369676F6CLL;
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

uint64_t sub_2623F05B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2623F3800(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2623F05E8(uint64_t a1)
{
  v2 = sub_2623F24DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F0624(uint64_t a1)
{
  v2 = sub_2623F24DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F0660(uint64_t a1)
{
  v4 = type metadata accessor for NumberListRule(0);
  sub_2623F3CA4(v1 + *(v4 + 28), v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C628, &qword_262468F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C630, &unk_262463AE0);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v6, v8);
    sub_26240C974(v7, a1, *v1, v1[1], v1[2], v1 + *(v4 + 24), v8);
    result = __swift_destroy_boxed_opaque_existential_1(v8);
    if (!v2)
    {
      return v7[0];
    }
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_2623F075C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2623F0660(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623F07AC()
{
  v1 = *v0;
  sub_262462CF8();
  MEMORY[0x2667289D0](v1);
  return sub_262462D38();
}

uint64_t sub_2623F07F4(uint64_t a1)
{
  v2 = *v1;
  sub_262462CF8();
  MEMORY[0x2667289D0](v2);
  return sub_262462D38();
}

uint64_t sub_2623F0838()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7475706E69;
  }
}

uint64_t sub_2623F0874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000262471840 == a2)
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

uint64_t sub_2623F0954(uint64_t a1)
{
  v2 = sub_2623F3744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F0990(uint64_t a1)
{
  v2 = sub_2623F3744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F09CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5E0, &qword_262463A88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2623F3744();
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
  v9 = sub_2623EEAD8(v8, 1);
  (*(v6 + 8))(v8, v5);
  v14 = v9;
  sub_2623F3798(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2623F37D0(v13);
}

uint64_t sub_2623F0BC0(uint64_t a1)
{
  sub_2623F3CA4(v1, &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C628, &qword_262468F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C630, &unk_262463AE0);
  if (!swift_dynamicCast())
  {

    return 0;
  }

  sub_2623EB668(v12, v20);
  v4 = *(v1 + 40);
  v5 = v21;
  v6 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v7 = *(v6 + 24);

  v7(&v23, a1, v5, v6);
  if (!v2)
  {

    goto LABEL_7;
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
    v23 = v4;
    v10[2] = v16;
    v10[3] = v17;
    v11 = v18;
    v10[0] = v14;
    v10[1] = v15;
    sub_262427BA0(a1, v10);
    sub_2623F3C50(v12);
    MEMORY[0x266728D50](v19);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v23;
  }

  MEMORY[0x266728D50](v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_2623F0DAC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2623F0BC0(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623F0DFC()
{
  v1 = 0x7365736163;
  if (*v0 != 1)
  {
    v1 = 0x746C7561666564;
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

uint64_t sub_2623F0E50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2623F41B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2623F0E78(uint64_t a1)
{
  v2 = sub_2623F3634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F0EB4(uint64_t a1)
{
  v2 = sub_2623F3634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F0EF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5C0, &qword_262467DD0);
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5C8, &qword_262463A80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2623F3634();
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
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v50, v51);
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
    sub_2623F36DC(v52, v46);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return sub_2623F3714(v52);
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

    sub_2623ED108(v50, v51);
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
        sub_2624615B4();
        if (v30)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_26245FCCC(v29, isUniquelyReferenced_nonNull_native);
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

uint64_t sub_2623F1614(uint64_t a1)
{
  v4 = sub_26240D23C(v1[5]);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  sub_2623F3CA4((v1 + 6), &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C628, &qword_262468F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C630, &unk_262463AE0);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_6:

    return 0;
  }

  sub_2623EB668(v20, v25);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v8 = (*(*(v7 + 8) + 24))(&v21, a1, v6);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v9 = v8;
    v10 = v22;
    if (v22 && *(v5 + 16) && (v11 = v21, , v12 = sub_2624414FC(v11, v10), v14 = v13, , (v14 & 1) != 0))
    {
      sub_2623F3CA4(*(v5 + 56) + 40 * v12, v20);
      sub_2623EB668(v20, &v21);
      v15 = v23;
      v16 = v24;
      __swift_project_boxed_opaque_existential_1(&v21, v23);
      (*(v16 + 24))(&v28, v9, v15, v16);

      __swift_destroy_boxed_opaque_existential_1(&v21);
    }

    else
    {
      v17 = v26;
      v18 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v18 + 24))(&v28, v9, v17, v18);
    }

    __swift_destroy_boxed_opaque_existential_1(v25);
    return v28;
  }
}

uint64_t sub_2623F187C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2623F1614(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2623F18CC(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000018 && 0x8000000262463360 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000262463340 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_262462C58();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_2623F1BBC()
{
  result = qword_27FF0C460;
  if (!qword_27FF0C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C460);
  }

  return result;
}

unint64_t sub_2623F1C10()
{
  result = qword_27FF0C468;
  if (!qword_27FF0C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C468);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_2623F1CB0()
{
  result = qword_27FF0C470;
  if (!qword_27FF0C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C470);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x266728E90);
  }

  return result;
}

unint64_t sub_2623F1D54()
{
  result = qword_27FF0C478;
  if (!qword_27FF0C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C478);
  }

  return result;
}

unint64_t sub_2623F1DA8()
{
  result = qword_27FF0C480;
  if (!qword_27FF0C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C480);
  }

  return result;
}

uint64_t type metadata accessor for NumberListRule(uint64_t a1)
{
  result = qword_27FF0C500;
  if (!qword_27FF0C500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2623F1EAC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4A0, &qword_262463328);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2623F2354();
  sub_262462D88();
  if (!v1)
  {
    v8 = sub_2623EDD5C(v7);
    v2 = v8;
    if (v8)
    {
      (*(v5 + 8))(v7, v4);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v2;
    }

    v10 = sub_262462B48();
    v2 = sub_262427A60(v10);
    v12 = v11;

    *&v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B0, &qword_262463330);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4B8, &qword_262463338);
    v13 = sub_262462728();
    v15 = v14;
    sub_2623F1BBC();
    swift_allocError();
    *v16 = v2;
    *(v16 + 8) = v12;
    *(v16 + 16) = 0x65756C6176;
    *(v16 + 24) = 0xE500000000000000;
    *(v16 + 32) = v13;
    *(v16 + 40) = v15;
    *(v16 + 48) = v17;
    *(v16 + 64) = 4;
    swift_willThrow();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_2623F20E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4D8, &qword_262463348);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_2623F2488();
  sub_262462D88();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_262462B88();
    sub_2623EE194(v6, 1);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_2623F22AC()
{
  result = qword_27FF0C490;
  if (!qword_27FF0C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C490);
  }

  return result;
}

unint64_t sub_2623F2300()
{
  result = qword_27FF0C498;
  if (!qword_27FF0C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C498);
  }

  return result;
}

unint64_t sub_2623F2354()
{
  result = qword_27FF0C4A8;
  if (!qword_27FF0C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C4A8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2623F23F0()
{
  result = qword_27FF0C4D0;
  if (!qword_27FF0C4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0C4C8, &qword_262463340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C4D0);
  }

  return result;
}

unint64_t sub_2623F2488()
{
  result = qword_27FF0C4E0;
  if (!qword_27FF0C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C4E0);
  }

  return result;
}

unint64_t sub_2623F24DC()
{
  result = qword_27FF0C4F8;
  if (!qword_27FF0C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C4F8);
  }

  return result;
}

uint64_t sub_2623F2530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RulesValidity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2623F2594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NumberListRule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2623F25F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for NumberListRule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NumberListRule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NumberListValue.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NumberListValue.CodingKeys(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2623F28D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2623F2920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2623F2998(uint64_t a1)
{
  sub_2623F2A44(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RulesValidity(319);
    if (v2 <= 0x3F)
    {
      sub_2623F2AA8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2623F2A44(uint64_t a1)
{
  if (!qword_27FF0C510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0C4B0, &qword_262463330);
    v1 = sub_262462928();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF0C510);
    }
  }
}

unint64_t sub_2623F2AA8()
{
  result = qword_27FF0C518;
  if (!qword_27FF0C518)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FF0C518);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2623F2B20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2623F2B68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2623F2BE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2623F2C30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NumberListExpressionDecoder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NumberListExpressionDecoder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2623F2DE8()
{
  result = qword_27FF0C520;
  if (!qword_27FF0C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C520);
  }

  return result;
}

unint64_t sub_2623F2E3C(uint64_t a1)
{
  result = sub_2623F1CB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F2E64(uint64_t a1)
{
  result = sub_2623F1DA8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2623F2E8C(uint64_t a1)
{
  result = sub_2623F3444(&qword_27FF0C528, type metadata accessor for NumberListRule, &unk_262463568);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F2EE4(uint64_t a1)
{
  result = sub_2623F2F0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F2F0C()
{
  result = qword_27FF0C530;
  if (!qword_27FF0C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C530);
  }

  return result;
}

unint64_t sub_2623F2F60(uint64_t a1)
{
  result = sub_2623F2F88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F2F88()
{
  result = qword_27FF0C538;
  if (!qword_27FF0C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C538);
  }

  return result;
}

unint64_t sub_2623F2FE0()
{
  result = qword_27FF0C540;
  if (!qword_27FF0C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C540);
  }

  return result;
}

unint64_t sub_2623F3038()
{
  result = qword_27FF0C548;
  if (!qword_27FF0C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C548);
  }

  return result;
}

unint64_t sub_2623F3090()
{
  result = qword_27FF0C550;
  if (!qword_27FF0C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C550);
  }

  return result;
}

unint64_t sub_2623F30E8()
{
  result = qword_27FF0C558;
  if (!qword_27FF0C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C558);
  }

  return result;
}

unint64_t sub_2623F3140()
{
  result = qword_27FF0C560;
  if (!qword_27FF0C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C560);
  }

  return result;
}

unint64_t sub_2623F3198()
{
  result = qword_27FF0C568;
  if (!qword_27FF0C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C568);
  }

  return result;
}

unint64_t sub_2623F31F0()
{
  result = qword_27FF0C570;
  if (!qword_27FF0C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C570);
  }

  return result;
}

unint64_t sub_2623F3248()
{
  result = qword_27FF0C578;
  if (!qword_27FF0C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C578);
  }

  return result;
}

unint64_t sub_2623F32A0()
{
  result = qword_27FF0C580;
  if (!qword_27FF0C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C580);
  }

  return result;
}

unint64_t sub_2623F32F4(uint64_t a1)
{
  result = sub_2623F331C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F331C()
{
  result = qword_27FF0C588;
  if (!qword_27FF0C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C588);
  }

  return result;
}

unint64_t sub_2623F3370(uint64_t a1)
{
  result = sub_2623F3398();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F3398()
{
  result = qword_27FF0C590;
  if (!qword_27FF0C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C590);
  }

  return result;
}

uint64_t sub_2623F33EC(uint64_t a1)
{
  result = sub_2623F3444(&qword_27FF0C598, type metadata accessor for NumberListRule, &unk_262463590);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2623F3444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2623F348C(uint64_t a1)
{
  result = sub_2623F34B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F34B4()
{
  result = qword_27FF0C5A0;
  if (!qword_27FF0C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C5A0);
  }

  return result;
}

unint64_t sub_2623F3508(uint64_t a1)
{
  result = sub_2623F3530();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2623F3530()
{
  result = qword_27FF0C5A8;
  if (!qword_27FF0C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C5A8);
  }

  return result;
}

unint64_t sub_2623F3588()
{
  result = qword_27FF0C5B0;
  if (!qword_27FF0C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C5B0);
  }

  return result;
}

unint64_t sub_2623F35E0()
{
  result = qword_27FF0C5B8;
  if (!qword_27FF0C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C5B8);
  }

  return result;
}

unint64_t sub_2623F3634()
{
  result = qword_27FF0C5D0;
  if (!qword_27FF0C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C5D0);
  }

  return result;
}

unint64_t sub_2623F3688()
{
  result = qword_27FF0C5D8;
  if (!qword_27FF0C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C5D8);
  }

  return result;
}

unint64_t sub_2623F3744()
{
  result = qword_27FF0C5E8;
  if (!qword_27FF0C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C5E8);
  }

  return result;
}

uint64_t sub_2623F3800(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002624717E0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C615673656C7572 && a2 == 0xED00007974696469 || (sub_262462C58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6369676F6CLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_262462C58();

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

uint64_t sub_2623F3970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2623F39E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2623F3AF0()
{
  result = qword_27FF0C608;
  if (!qword_27FF0C608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF0C608);
  }

  return result;
}

unint64_t sub_2623F3B3C()
{
  result = qword_27FF0C610;
  if (!qword_27FF0C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C610);
  }

  return result;
}

uint64_t sub_2623F3B90(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0C4B0, &qword_262463330);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2623F3BFC()
{
  result = qword_27FF0C620;
  if (!qword_27FF0C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C620);
  }

  return result;
}

uint64_t sub_2623F3CA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for Decision.RateLimitCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Decision.RateLimitCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NumberListMatchCase.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NumberListMatchCase.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2623F3FAC()
{
  result = qword_27FF0C640;
  if (!qword_27FF0C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C640);
  }

  return result;
}

unint64_t sub_2623F4004()
{
  result = qword_27FF0C648;
  if (!qword_27FF0C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C648);
  }

  return result;
}

unint64_t sub_2623F405C()
{
  result = qword_27FF0C650;
  if (!qword_27FF0C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C650);
  }

  return result;
}

unint64_t sub_2623F40B4()
{
  result = qword_27FF0C658;
  if (!qword_27FF0C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C658);
  }

  return result;
}

unint64_t sub_2623F410C()
{
  result = qword_27FF0C660;
  if (!qword_27FF0C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C660);
  }

  return result;
}

unint64_t sub_2623F4164()
{
  result = qword_27FF0C668;
  if (!qword_27FF0C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C668);
  }

  return result;
}

uint64_t sub_2623F41B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365736163 && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000)
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

uint64_t Decision.rawValue.getter()
{
  v1 = sub_262462718();
  MEMORY[0x28223BE20](v1 - 8);
  v15[1] = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_262462438();
  MEMORY[0x28223BE20](v3);
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  sub_262462478();
  swift_allocObject();
  sub_262462468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C670, &qword_262463D30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_262463D10;
  sub_262462428();
  v16 = v7;
  sub_2623F4584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C678, &qword_262463D38);
  sub_2623F45DC();
  sub_2624629A8();
  sub_262462448();
  v16 = v4;
  v17 = v5;
  v18 = v6;
  sub_2623F4640();
  v9 = sub_262462458();
  v11 = v10;
  sub_262462708();
  v12 = sub_2624626F8();
  v14 = v13;
  sub_2623F4694(v9, v11);

  if (v14)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2623F4584()
{
  result = qword_2813BDC30;
  if (!qword_2813BDC30)
  {
    sub_262462438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDC30);
  }

  return result;
}

unint64_t sub_2623F45DC()
{
  result = qword_2813BD3E8;
  if (!qword_2813BD3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0C678, &qword_262463D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD3E8);
  }

  return result;
}

unint64_t sub_2623F4640()
{
  result = qword_2813BD450;
  if (!qword_2813BD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD450);
  }

  return result;
}

uint64_t sub_2623F4694(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t Decision.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_262462418();
  swift_allocObject();
  sub_262462408();
  v6 = sub_2623F47D4(a1, a2);
  v8 = v7;
  sub_2623F4CF4();
  sub_2624623F8();
  sub_2623F4694(v6, v8);

  *a3 = v10;
  *(a3 + 16) = v11;
  return result;
}

uint64_t sub_2623F47D4(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C8, &qword_262464BB0);
  if (swift_dynamicCast())
  {
    sub_2623EB668(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_262462528();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2623F39E0(__src, &qword_27FF0C7D0, &qword_262464BB8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_262462A98();
  }

  sub_2623F8F14(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2623FAE50(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_2623F8FDC(sub_2623FB430, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_2624625C8();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2623F9534(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_2624627A8();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_2624627D8();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_262462A98();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2623F9534(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_2624627B8();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_2624625D8();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_2624625D8();
    sub_2623FB4EC(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_2623FB4EC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_2623FB498(*&__src[0], *(&__src[0] + 1));

  sub_2623F4694(v32, *(&v32 + 1));
  return v32;
}

unint64_t sub_2623F4CF4()
{
  result = qword_2813BD448;
  if (!qword_2813BD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD448);
  }

  return result;
}

uint64_t sub_2623F4D48(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6973696365446F4ELL;
    v7 = 0x6E6F697369636544;
    if (a1 != 10)
    {
      v7 = 0x6D6F74737543;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x5652504F5441;
    v9 = 0x6F677261626D45;
    if (a1 != 7)
    {
      v9 = 0x66666F6B636142;
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
    v1 = 0x747065636341;
    v2 = 0x65726F6E6749;
    v3 = 0x726F6C6F43;
    if (a1 != 4)
    {
      v3 = 0x696D694C65746152;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x7463656A6552;
    if (a1 != 1)
    {
      v4 = 0x776569766552;
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

uint64_t sub_2623F4EC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2623FAFF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2623F4EF8(uint64_t a1)
{
  v2 = sub_2623F688C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F4F34(uint64_t a1)
{
  v2 = sub_2623F688C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F4F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
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

uint64_t sub_2623F5008(uint64_t a1)
{
  v2 = sub_2623F9848();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F5044(uint64_t a1)
{
  v2 = sub_2623F9848();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F5080()
{
  if (*v0)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_2623F50B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

uint64_t sub_2623F5190(uint64_t a1)
{
  v2 = sub_2623F97F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F51CC(uint64_t a1)
{
  v2 = sub_2623F97F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F521C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
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

uint64_t sub_2623F52A0(uint64_t a1)
{
  v2 = sub_2623F97A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F52DC(uint64_t a1)
{
  v2 = sub_2623F97A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79616C6564 && a2 == 0xE500000000000000)
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

uint64_t sub_2623F53B0(uint64_t a1)
{
  v2 = sub_2623F974C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F53EC(uint64_t a1)
{
  v2 = sub_2623F974C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F5440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697369636564 && a2 == 0xE800000000000000)
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

uint64_t sub_2623F54C8(uint64_t a1)
{
  v2 = sub_2623F96F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F5504(uint64_t a1)
{
  v2 = sub_2623F96F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Decision.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v106 = sub_262462A88();
  v99[0] = *(v106 - 8);
  v3 = MEMORY[0x28223BE20](v106);
  v99[2] = v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v99[1] = v99 - v5;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C680, &qword_262463D40);
  v103 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v114 = v99 - v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C688, &qword_262463D48);
  v102 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v112 = v99 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C690, &qword_262463D50);
  v101 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v111 = v99 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C698, &qword_262463D58);
  v104 = *(v9 - 8);
  v105 = v9;
  MEMORY[0x28223BE20](v9);
  v113 = v99 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6A0, &qword_262463D60);
  v100 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v12 = v99 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6A8, &qword_262463D68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v99 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6B0, &unk_262463D70);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v99 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2623F688C();
  v20 = v116;
  sub_262462D88();
  if (v20)
  {
    MEMORY[0x266728D50](v20);
    (*(v17 + 56))(v15, 1, 1, v16);
    sub_2623F39E0(v15, &qword_27FF0C6A8, &qword_262463D68);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v21 = sub_262462D78();
    v22 = sub_262427A60(v21);
    v24 = v23;

    sub_2623F1BBC();
    swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v24;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0xE000000000000000;
    *(v25 + 32) = 0x6E6F697369636544;
    *(v25 + 40) = 0xE800000000000000;
    *(v25 + 48) = v117;
    *(v25 + 64) = 4;
    swift_willThrow();
    v26 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v116 = v12;
  v27 = v115;
  v26 = a1;
  (*(v17 + 56))(v15, 0, 1, v16);
  (*(v17 + 32))(v19, v15, v16);
  v28 = sub_262462BC8();
  v29 = v17;
  if (!*(v28 + 16))
  {

    v32 = v16;
LABEL_11:
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v37 = sub_262462D78();
    v38 = sub_262427A60(v37);
    v40 = v39;

    sub_2623F1BBC();
    swift_allocError();
    *v41 = v38;
    *(v41 + 8) = v40;
    *(v41 + 16) = 0x6E6F697369636544;
    *(v41 + 24) = 0xE800000000000000;
    v42 = v118;
    *(v41 + 32) = v117;
    *(v41 + 48) = v42;
    *(v41 + 64) = 2;
    swift_willThrow();
    (*(v29 + 8))(v19, v32);
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v30 = *(v28 + 32);

  v31 = *(sub_262462BC8() + 16);

  v32 = v16;
  if (v31 != 1)
  {
    goto LABEL_11;
  }

  if (v30 <= 5)
  {
    v33 = v27;
    if (v30 <= 2)
    {
      if (v30)
      {
        (*(v29 + 8))(v19, v32);
        if (v30 == 1)
        {
          v34 = 0;
          v35 = 5;
          v36 = 1;
        }

        else
        {
          v34 = 0;
          v35 = 5;
          v36 = 2;
        }

        goto LABEL_30;
      }

      (*(v29 + 8))(v19, v32);
      v36 = 0;
      v34 = 0;
      goto LABEL_28;
    }

    if (v30 == 3)
    {
      (*(v29 + 8))(v19, v32);
      v34 = 0;
      v35 = 5;
      v36 = 3;
      goto LABEL_30;
    }

    if (v30 == 4)
    {
      LOBYTE(v117) = 4;
      sub_2623F9848();
      v47 = v116;
      sub_262462B38();
      v36 = sub_262462B88();
      v34 = v65;
      (*(v100 + 8))(v47, v109);
      (*(v29 + 8))(v19, v32);
      v35 = 0;
      goto LABEL_30;
    }

    LOBYTE(v117) = 5;
    sub_2623F97F4();
    v51 = v113;
    sub_262462B38();
    v52 = COERCE_DOUBLE(sub_2623F68E0(v51, 0));
    v112 = v19;
    v75 = v105;
    if ((v53 & 1) != 0 || (v90 = v52, v52 <= -9.22337204e18) || v52 >= 9.22337204e18 || trunc(v52) != v52)
    {
      v76 = v113;
      v77 = sub_262462B48();
      v78 = sub_262427A60(v77);
      v80 = v79;

      *&v117 = MEMORY[0x277D83B88];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6D0, &qword_26246AEB0);
      v81 = sub_262462728();
      v83 = v82;
      sub_2623F1BBC();
      swift_allocError();
      *v84 = v78;
      *(v84 + 8) = v80;
      v85 = 0x746E756F63;
      v86 = 0xE500000000000000;
    }

    else
    {
      v91 = COERCE_DOUBLE(sub_2623F68E0(v113, 1));
      if ((v92 & 1) == 0 && v91 > -9.22337204e18 && v91 < 9.22337204e18 && trunc(v91) == v91)
      {
        v36 = v90;
        v98 = v91;
        (*(v104 + 8))(v113, v105);
        (*(v29 + 8))(v112, v32);
        v34 = v98;
        v35 = 1;
        goto LABEL_30;
      }

      v75 = v105;
      v76 = v113;
      v93 = sub_262462B48();
      v94 = sub_262427A60(v93);
      v96 = v95;

      *&v117 = MEMORY[0x277D83B88];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6D0, &qword_26246AEB0);
      v81 = sub_262462728();
      v83 = v97;
      sub_2623F1BBC();
      swift_allocError();
      *v84 = v94;
      *(v84 + 8) = v96;
      v85 = 0x6E6F697461727564;
      v86 = 0xE800000000000000;
    }

    *(v84 + 16) = v85;
    *(v84 + 24) = v86;
    *(v84 + 32) = v81;
    *(v84 + 40) = v83;
    *(v84 + 48) = v117;
    *(v84 + 64) = 4;
    swift_willThrow();
    (*(v104 + 8))(v76, v75);
LABEL_41:
    (*(v29 + 8))(v112, v32);
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v33 = v27;
  if (v30 > 8)
  {
    if (v30 != 9)
    {
      if (v30 == 10)
      {
        (*(v29 + 8))(v19, v32);
        v34 = 0;
        v35 = 5;
        v36 = 6;
      }

      else
      {
        LOBYTE(v117) = 11;
        sub_2623F96F8();
        v54 = v114;
        sub_262462B38();
        v36 = sub_262462B88();
        v34 = v87;
        (*(v103 + 8))(v54, v110);
        (*(v29 + 8))(v19, v32);
        v35 = 4;
      }

      goto LABEL_30;
    }

    (*(v29 + 8))(v19, v32);
    v34 = 0;
    v36 = 5;
LABEL_28:
    v35 = 5;
    goto LABEL_30;
  }

  if (v30 == 6)
  {
    (*(v29 + 8))(v19, v32);
    v34 = 0;
    v35 = 5;
    v36 = 4;
    goto LABEL_30;
  }

  if (v30 == 7)
  {
    LOBYTE(v117) = 7;
    sub_2623F97A0();
    v44 = v111;
    sub_262462B38();
    v45 = COERCE_DOUBLE(sub_2623F6EE8(v44, &qword_27FF0C690, &qword_262463D50, 0x6874676E656CLL, 0xE600000000000000));
    if ((v46 & 1) == 0)
    {
      v88 = v45;
      if (v45 > -9.22337204e18 && v45 < 9.22337204e18 && trunc(v45) == v45)
      {
        (*(v101 + 8))(v111, v107);
        (*(v29 + 8))(v19, v32);
        v34 = 0;
        v36 = v88;
        v35 = 2;
        goto LABEL_30;
      }
    }

    v55 = v111;
    v56 = sub_262462B48();
    v57 = sub_262427A60(v56);
    v112 = v19;
    v58 = v57;
    v60 = v59;

    *&v117 = MEMORY[0x277D83B88];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6D0, &qword_26246AEB0);
    v61 = sub_262462728();
    v63 = v62;
    sub_2623F1BBC();
    swift_allocError();
    *v64 = v58;
    *(v64 + 8) = v60;
    *(v64 + 16) = 0x6874676E656CLL;
    *(v64 + 24) = 0xE600000000000000;
    *(v64 + 32) = v61;
    *(v64 + 40) = v63;
    *(v64 + 48) = v117;
    *(v64 + 64) = 4;
    swift_willThrow();
    (*(v101 + 8))(v55, v107);
    goto LABEL_41;
  }

  LOBYTE(v117) = 8;
  sub_2623F974C();
  v48 = v112;
  sub_262462B38();
  v49 = COERCE_DOUBLE(sub_2623F6EE8(v48, &qword_27FF0C688, &qword_262463D48, 0x79616C6564, 0xE500000000000000));
  if ((v50 & 1) != 0 || (v89 = v49, v49 <= -9.22337204e18) || v49 >= 9.22337204e18 || trunc(v49) != v49)
  {
    v66 = v112;
    v67 = sub_262462B48();
    v68 = sub_262427A60(v67);
    v70 = v69;

    *&v117 = MEMORY[0x277D83B88];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6D0, &qword_26246AEB0);
    v71 = sub_262462728();
    v115 = v32;
    v73 = v72;
    sub_2623F1BBC();
    swift_allocError();
    *v74 = v68;
    *(v74 + 8) = v70;
    *(v74 + 16) = 0x79616C6564;
    *(v74 + 24) = 0xE500000000000000;
    *(v74 + 32) = v71;
    *(v74 + 40) = v73;
    *(v74 + 48) = v117;
    *(v74 + 64) = 4;
    swift_willThrow();
    (*(v102 + 8))(v66, v108);
    (*(v29 + 8))(v19, v115);
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  (*(v102 + 8))(v112, v108);
  (*(v29 + 8))(v19, v32);
  v34 = 0;
  v36 = v89;
  v35 = 3;
LABEL_30:
  *v33 = v36;
  *(v33 + 8) = v34;
  *(v33 + 16) = v35;
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

unint64_t sub_2623F688C()
{
  result = qword_2813BD510;
  if (!qword_2813BD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD510);
  }

  return result;
}

uint64_t sub_2623F68E0(uint64_t a1, char a2)
{
  v20 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C698, &qword_262463D58);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  *&v19 = 0;
  v8 = sub_2623F95B0(v5, v7, &v19);

  if (v8)
  {
    return v19;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2)
  {
    v13 = 0x6E6F697461727564;
  }

  else
  {
    v13 = 0x746E756F63;
  }

  if (a2)
  {
    v14 = 0xE800000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v13;
  *(v18 + 24) = v14;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F6AC4(uint64_t a1, char a2)
{
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C810, &qword_2624659F0);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  *&v19 = 0;
  v8 = sub_2623F95B0(v5, v7, &v19);

  if (v8)
  {
    return v19;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xE500000000000000;
      v14 = 0x7472617473;
    }

    else
    {
      v13 = 0xE300000000000000;
      v14 = 6581861;
    }
  }

  else
  {
    v13 = 0xEB00000000747570;
    v14 = 0x6E49676E69727473;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v14;
  *(v18 + 24) = v13;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F6CC4(uint64_t a1, char a2)
{
  v20 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C808, qword_262464BF0);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  *&v19 = 0;
  v8 = sub_2623F95B0(v5, v7, &v19);

  if (v8)
  {
    return v19;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2)
  {
    v13 = 0x7865646E69;
  }

  else
  {
    v13 = 0x6E49676E69727473;
  }

  if (a2)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xEB00000000747570;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v13;
  *(v18 + 24) = v14;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F6EE8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_262462BA8();
  if (!v5)
  {
    return v8;
  }

  MEMORY[0x266728D50](v5);
  v9 = sub_262462B88();
  *&v21 = 0;
  v12 = sub_2623F95B0(v9, v11, &v21);

  if (v12)
  {
    return v21;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v13 = sub_262462B48();
  v14 = sub_262427A60(v13);
  v16 = v15;

  *&v21 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v17 = sub_262462728();
  v19 = v18;
  sub_2623F1BBC();
  swift_allocError();
  *v20 = v14;
  *(v20 + 8) = v16;
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;
  *(v20 + 48) = v21;
  *(v20 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F7084(uint64_t a1, char a2)
{
  v20 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7E0, &unk_26246A0E0);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  *&v19 = 0;
  v8 = sub_2623F95B0(v5, v7, &v19);

  if (v8)
  {
    return v19;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2)
  {
    v13 = 0x746C7561666564;
  }

  else
  {
    v13 = 0x6D614E646C656966;
  }

  if (a2)
  {
    v14 = 0xE700000000000000;
  }

  else
  {
    v14 = 0xE900000000000065;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v13;
  *(v18 + 24) = v14;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F7270(uint64_t a1, unsigned __int8 a2)
{
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7E8, &qword_262464BD0);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  *&v19 = 0;
  v8 = sub_2623F95B0(v5, v7, &v19);

  if (v8)
  {
    return v19;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xED00007974696469;
      v14 = 0x6C615673656C7572;
    }

    else
    {
      v13 = 0xE500000000000000;
      v14 = 0x6369676F6CLL;
    }
  }

  else if (a2)
  {
    v13 = 0x80000002624717E0;
    v14 = 0xD000000000000010;
  }

  else
  {
    v13 = 0xE400000000000000;
    v14 = 1701667182;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v14;
  *(v18 + 24) = v13;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F7498(uint64_t a1, char a2)
{
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C800, &qword_262464BE8);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  *&v19 = 0;
  v8 = sub_2623F95B0(v5, v7, &v19);

  if (v8)
  {
    return v19;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xE500000000000000;
      v14 = 0x7472617473;
    }

    else
    {
      v13 = 0xE300000000000000;
      v14 = 6581861;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    v14 = 0x7475706E69;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v14;
  *(v18 + 24) = v13;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F768C(uint64_t a1, char a2)
{
  v20 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7F8, &qword_262464BE0);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  *&v19 = 0;
  v8 = sub_2623F95B0(v5, v7, &v19);

  if (v8)
  {
    return v19;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2)
  {
    v13 = 0xD000000000000010;
  }

  else
  {
    v13 = 0x7475706E69;
  }

  if (a2)
  {
    v14 = 0x8000000262471840;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v13;
  *(v18 + 24) = v14;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t sub_2623F7874(uint64_t a1, char a2)
{
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7F0, &qword_262464BD8);
  sub_262462BA8();
  if (!v2)
  {
    return v4;
  }

  MEMORY[0x266728D50](v2);
  v5 = sub_262462B88();
  *&v19 = 0;
  v8 = sub_2623F95B0(v5, v7, &v19);

  if (v8)
  {
    return v19;
  }

  if (sub_262462BE8())
  {
    return 0;
  }

  v9 = sub_262462B48();
  v10 = sub_262427A60(v9);
  v12 = v11;

  if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xEA00000000006C65;
      v14 = 0x62614C65736C6166;
    }

    else
    {
      v13 = 0xE500000000000000;
      v14 = 0x7475706E69;
    }
  }

  else
  {
    v13 = 0xE90000000000006CLL;
    v14 = 0x6562614C65757274;
  }

  *&v19 = MEMORY[0x277D839F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
  v15 = sub_262462728();
  v17 = v16;
  sub_2623F1BBC();
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v12;
  *(v18 + 16) = v14;
  *(v18 + 24) = v13;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v19;
  *(v18 + 64) = 4;
  return swift_willThrow();
}

uint64_t Decision.isSameType(as:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      if (v4 != 3)
      {
        goto LABEL_15;
      }
    }

    else if (v7 == 4)
    {

      if (v4 != 4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v5 <= 2)
      {
        if (!(v5 | v6))
        {
          if (v4 == 5 && !(v3 | v2))
          {
            goto LABEL_43;
          }

          goto LABEL_15;
        }

        if (v5 ^ 1 | v6)
        {
          if (v4 != 5 || v2 != 2)
          {
            goto LABEL_15;
          }
        }

        else if (v4 != 5 || v2 != 1)
        {
          goto LABEL_15;
        }
      }

      else if (v5 > 4)
      {
        if (v5 ^ 5 | v6)
        {
          if (v4 != 5 || v2 != 6)
          {
            goto LABEL_15;
          }
        }

        else if (v4 != 5 || v2 != 5)
        {
          goto LABEL_15;
        }
      }

      else if (v5 ^ 3 | v6)
      {
        if (v4 != 5 || v2 != 4)
        {
          goto LABEL_15;
        }
      }

      else if (v4 != 5 || v2 != 3)
      {
        goto LABEL_15;
      }

      if (v3)
      {
        goto LABEL_15;
      }
    }

LABEL_43:
    v8 = 1;
    goto LABEL_44;
  }

  if (!*(v1 + 16))
  {

    if (!v4)
    {
      goto LABEL_43;
    }

    goto LABEL_15;
  }

  if (v7 != 1)
  {
    if (v4 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

  if (v4 == 1)
  {
    goto LABEL_43;
  }

LABEL_15:
  v8 = 0;
LABEL_44:
  sub_2623F989C(v2, v3, v4);
  sub_2623F98B8(v5, v6, v7);
  sub_2623F98B8(v2, v3, v4);
  return v8;
}

uint64_t sub_2623F7C48(uint64_t a1)
{
  v2 = sub_2623F9DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F7C84(uint64_t a1)
{
  v2 = sub_2623F9DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F7CC0(uint64_t a1)
{
  v2 = sub_2623F9EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F7CFC(uint64_t a1)
{
  v2 = sub_2623F9EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F7D38(uint64_t a1)
{
  v2 = sub_2623F9D00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F7D74(uint64_t a1)
{
  v2 = sub_2623F9D00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F7DB0(uint64_t a1)
{
  v2 = sub_2623F9DFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F7DEC(uint64_t a1)
{
  v2 = sub_2623F9DFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F7E28(uint64_t a1)
{
  v2 = sub_2623F9D54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F7E64(uint64_t a1)
{
  v2 = sub_2623F9D54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F7EA0(uint64_t a1)
{
  v2 = sub_2623F9EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F7EDC(uint64_t a1)
{
  v2 = sub_2623F9EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623F7F18(uint64_t a1)
{
  v2 = sub_2623F9E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623F7F54(uint64_t a1)
{
  v2 = sub_2623F9E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Decision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6F0, &qword_262463D90);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v48 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6F8, &qword_262463D98);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v48 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C700, &qword_262463DA0);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C708, &qword_262463DA8);
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C710, &qword_262463DB0);
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x28223BE20](v9);
  v72 = &v48 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C718, &qword_262463DB8);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C720, &qword_262463DC0);
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x28223BE20](v12);
  v69 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C728, &qword_262463DC8);
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C730, &qword_262463DD0);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v48 - v17;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C738, &qword_262463DD8);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v48 - v18;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C740, &qword_262463DE0);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C748, &qword_262463DE8);
  v49 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C750, &qword_262463DF0);
  v82 = *(v24 - 8);
  v83 = v24;
  MEMORY[0x28223BE20](v24);
  v25 = *v1;
  *&v81 = v1[1];
  *(&v81 + 1) = v25;
  v26 = *(v1 + 16);
  v27 = a1[3];
  v28 = a1;
  v30 = &v48 - v29;
  __swift_project_boxed_opaque_existential_1(v28, v27);
  sub_2623F688C();
  sub_262462D98();
  if (v26 <= 2)
  {
    if (v26)
    {
      v31 = v26 == 1;
      v33 = v83;
      v32 = v84;
      if (!v31)
      {
        v85[27] = 7;
        sub_2623F97A0();
        v35 = v72;
        sub_262462BF8();
        v36 = v74;
        sub_262462C18();
        v37 = v73;
LABEL_20:
        (*(v37 + 8))(v35, v36);
        return (*(v82 + 8))(v30, v33);
      }

      v85[25] = 5;
      sub_2623F97F4();
      v35 = v69;
      sub_262462BF8();
      v85[24] = 0;
      v36 = v71;
      sub_262462C18();
      if (!v32)
      {
        v85[7] = 1;
        sub_262462C18();
        v37 = v70;
        goto LABEL_20;
      }

      (*(v70 + 8))(v35, v36);
    }

    else
    {
      v85[6] = 4;
      sub_2623F9848();
      v33 = v83;
      sub_262462BF8();
      v34 = v68;
      sub_262462C08();
      (*(v67 + 8))(v16, v34);
    }

    return (*(v82 + 8))(v30, v33);
  }

  if (v26 == 3)
  {
    v85[28] = 8;
    sub_2623F974C();
    v35 = v75;
    v33 = v83;
    sub_262462BF8();
    v36 = v77;
    sub_262462C18();
    v37 = v76;
    goto LABEL_20;
  }

  if (v26 == 4)
  {
    v85[31] = 11;
    sub_2623F96F8();
    v35 = v78;
    v33 = v83;
    sub_262462BF8();
    v36 = v80;
    sub_262462C08();
    v37 = v79;
    goto LABEL_20;
  }

  if (*(&v81 + 1) > 2uLL)
  {
    if (*(&v81 + 1) > 4uLL)
    {
      v33 = v83;
      if (*(&v81 + 1) ^ 5 | v81)
      {
        v85[30] = 10;
        sub_2623F9D00();
        v47 = v64;
        sub_262462BF8();
        (*(v65 + 8))(v47, v66);
      }

      else
      {
        v85[29] = 9;
        sub_2623F9D54();
        v44 = v61;
        sub_262462BF8();
        (*(v62 + 8))(v44, v63);
      }
    }

    else
    {
      v33 = v83;
      if (*(&v81 + 1) ^ 3 | v81)
      {
        v85[26] = 6;
        sub_2623F9DA8();
        v46 = v58;
        sub_262462BF8();
        (*(v59 + 8))(v46, v60);
      }

      else
      {
        v85[5] = 3;
        sub_2623F9DFC();
        v38 = v55;
        sub_262462BF8();
        (*(v56 + 8))(v38, v57);
      }
    }

    return (*(v82 + 8))(v30, v33);
  }

  if (v81 == 0)
  {
    v85[2] = 0;
    sub_2623F9EF8();
    v39 = v83;
    sub_262462BF8();
    (*(v49 + 8))(v23, v21);
  }

  else
  {
    if (*(&v81 + 1) ^ 1 | v81)
    {
      v85[4] = 2;
      sub_2623F9E50();
      v45 = v52;
      v39 = v83;
      sub_262462BF8();
      v40 = *(v53 + 8);
      v41 = v45;
      v42 = v85;
    }

    else
    {
      v85[3] = 1;
      sub_2623F9EA4();
      v39 = v83;
      sub_262462BF8();
      v40 = *(v50 + 8);
      v41 = v20;
      v42 = &v82;
    }

    v40(v41, *(v42 - 32));
  }

  return (*(v82 + 8))(v30, v39);
}

uint64_t Decision.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v8 = 8;
      goto LABEL_14;
    }

    if (v4 != 4)
    {
      if (v2 <= 2)
      {
        if (v2 | v3)
        {
          if (v2 ^ 1 | v3)
          {
            v5 = 2;
          }

          else
          {
            v5 = 1;
          }
        }

        else
        {
          v5 = 0;
        }
      }

      else if (v2 > 4)
      {
        if (v2 ^ 5 | v3)
        {
          v5 = 10;
        }

        else
        {
          v5 = 9;
        }
      }

      else if (v2 ^ 3 | v3)
      {
        v5 = 6;
      }

      else
      {
        v5 = 3;
      }

      return MEMORY[0x2667289D0](v5);
    }

    v6 = 11;
  }

  else
  {
    if (*(v1 + 16))
    {
      if (v4 == 1)
      {
        MEMORY[0x2667289D0](5);
        MEMORY[0x2667289D0](v2);
        v5 = v3;
        return MEMORY[0x2667289D0](v5);
      }

      v8 = 7;
LABEL_14:
      MEMORY[0x2667289D0](v8);
      v5 = v2;
      return MEMORY[0x2667289D0](v5);
    }

    v6 = 4;
  }

  MEMORY[0x2667289D0](v6);

  return sub_262462778();
}

uint64_t Decision.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_262462CF8();
  Decision.hash(into:)(v3);
  return sub_262462D38();
}

uint64_t sub_2623F8DEC()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_262462CF8();
  Decision.hash(into:)(v3);
  return sub_262462D38();
}

uint64_t sub_2623F8E44(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_262462CF8();
  Decision.hash(into:)(v4);
  return sub_262462D38();
}

_BYTE *sub_2623F8E98@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t *sub_2623F8F14@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_2623FAD98(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_2624624E8();
      swift_allocObject();
      v8 = sub_262462498();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_2624625B8();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_2623F8FDC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_2623F4694(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_2623F4694(v7, v6);
    *v4 = xmmword_262463D20;
    sub_2623F4694(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2624624A8() && __OFSUB__(v7, sub_2624624D8()))
      {
LABEL_26:
        __break(1u);
      }

      sub_2624624E8();
      swift_allocObject();
      v14 = sub_262462488();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_2623F9480(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_2623F4694(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_262463D20;
    sub_2623F4694(0, 0xC000000000000000);
    sub_2624625A8();
    result = sub_2623F9480(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_2623F9380@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2623FAD98(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2623FAEF0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2623FAF6C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2623F9414(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2623F9480(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_2624624A8();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2624624D8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_2624624C8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_2623F9534(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2624627F8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x266728490](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_2623F95B0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_262462A18();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_2623F96A8@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_262462A38();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
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

unint64_t sub_2623F96F8()
{
  result = qword_27FF0C6B8;
  if (!qword_27FF0C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C6B8);
  }

  return result;
}

unint64_t sub_2623F974C()
{
  result = qword_27FF0C6C8;
  if (!qword_27FF0C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C6C8);
  }

  return result;
}

unint64_t sub_2623F97A0()
{
  result = qword_27FF0C6D8;
  if (!qword_27FF0C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C6D8);
  }

  return result;
}

unint64_t sub_2623F97F4()
{
  result = qword_27FF0C6E0;
  if (!qword_27FF0C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C6E0);
  }

  return result;
}

unint64_t sub_2623F9848()
{
  result = qword_27FF0C6E8;
  if (!qword_27FF0C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C6E8);
  }

  return result;
}

uint64_t sub_2623F989C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 4) == 4)
  {
  }

  return result;
}

uint64_t sub_2623F98B8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 4) == 4)
  {
  }

  return result;
}

BOOL _s5Rules8DecisionO2eeoiySbAC_ACtFZ_0(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 2)
  {
    if (*(a1 + 16))
    {
      if (v4 == 1)
      {
        if (v7 == 1)
        {
          sub_2623F98B8(*a1, v3, 1u);
          sub_2623F98B8(v5, v6, 1u);
          return v2 == v5 && v3 == v6;
        }

        goto LABEL_67;
      }

      if (v7 == 2)
      {
        sub_2623F98B8(*a1, v3, 2u);
        v13 = v5;
        v14 = v6;
        v15 = 2;
        goto LABEL_23;
      }

LABEL_67:
      sub_2623F989C(v5, v6, v7);
      sub_2623F98B8(v2, v3, v4);
      sub_2623F98B8(v5, v6, v7);
      return 0;
    }

    if (*(a2 + 16))
    {
LABEL_18:

      goto LABEL_67;
    }

    v16 = *a1;
    if (v2 != v5 || v3 != v6)
    {
      v18 = sub_262462C58();
      sub_2623F989C(v5, v6, 0);
      sub_2623F989C(v2, v3, 0);
      sub_2623F98B8(v2, v3, 0);
      v19 = v5;
      v20 = v6;
      v21 = 0;
LABEL_48:
      sub_2623F98B8(v19, v20, v21);
      return v18 & 1;
    }

    sub_2623F989C(v16, v3, 0);
    sub_2623F989C(v2, v3, 0);
    sub_2623F98B8(v2, v3, 0);
    v10 = v2;
    v11 = v3;
    v12 = 0;
    goto LABEL_66;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      if (v7 != 4)
      {
        goto LABEL_18;
      }

      if (v2 != v5 || v3 != v6)
      {
        v18 = sub_262462C58();
        sub_2623F989C(v5, v6, 4u);
        sub_2623F989C(v2, v3, 4u);
        sub_2623F98B8(v2, v3, 4u);
        v19 = v5;
        v20 = v6;
        v21 = 4;
        goto LABEL_48;
      }

      sub_2623F989C(*a1, v3, 4u);
      sub_2623F989C(v2, v3, 4u);
      sub_2623F98B8(v2, v3, 4u);
      v10 = v2;
      v11 = v3;
      v12 = 4;
    }

    else
    {
      if (v2 <= 2)
      {
        if (v2 | v3)
        {
          if (!(v2 ^ 1 | v3))
          {
            if (v7 == 5 && v5 == 1 && !v6)
            {
              sub_2623F98B8(*a1, v3, 5u);
              v9 = 1;
              sub_2623F98B8(1, 0, 5u);
              return v9;
            }

            goto LABEL_67;
          }

          if (v7 != 5 || v5 != 2 || v6)
          {
            goto LABEL_67;
          }

          sub_2623F98B8(*a1, v3, 5u);
          v10 = 2;
        }

        else
        {
          if (v7 != 5 || v6 | v5)
          {
            goto LABEL_67;
          }

          sub_2623F98B8(*a1, v3, 5u);
          v10 = 0;
        }
      }

      else if (v2 > 4)
      {
        if (v2 ^ 5 | v3)
        {
          if (v7 != 5 || v5 != 6 || v6)
          {
            goto LABEL_67;
          }

          sub_2623F98B8(*a1, v3, 5u);
          v10 = 6;
        }

        else
        {
          if (v7 != 5 || v5 != 5 || v6)
          {
            goto LABEL_67;
          }

          sub_2623F98B8(*a1, v3, 5u);
          v10 = 5;
        }
      }

      else if (v2 ^ 3 | v3)
      {
        if (v7 != 5 || v5 != 4 || v6)
        {
          goto LABEL_67;
        }

        sub_2623F98B8(*a1, v3, 5u);
        v10 = 4;
      }

      else
      {
        if (v7 != 5 || v5 != 3 || v6)
        {
          goto LABEL_67;
        }

        sub_2623F98B8(*a1, v3, 5u);
        v10 = 3;
      }

      v11 = 0;
      v12 = 5;
    }

LABEL_66:
    sub_2623F98B8(v10, v11, v12);
    return 1;
  }

  if (v7 != 3)
  {
    goto LABEL_67;
  }

  sub_2623F98B8(*a1, v3, 3u);
  v13 = v5;
  v14 = v6;
  v15 = 3;
LABEL_23:
  sub_2623F98B8(v13, v14, v15);
  return v2 == v5;
}

unint64_t sub_2623F9D00()
{
  result = qword_27FF0C758;
  if (!qword_27FF0C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C758);
  }

  return result;
}

unint64_t sub_2623F9D54()
{
  result = qword_27FF0C760;
  if (!qword_27FF0C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C760);
  }

  return result;
}

unint64_t sub_2623F9DA8()
{
  result = qword_27FF0C768;
  if (!qword_27FF0C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C768);
  }

  return result;
}

unint64_t sub_2623F9DFC()
{
  result = qword_27FF0C770;
  if (!qword_27FF0C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C770);
  }

  return result;
}

unint64_t sub_2623F9E50()
{
  result = qword_27FF0C778;
  if (!qword_27FF0C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C778);
  }

  return result;
}

unint64_t sub_2623F9EA4()
{
  result = qword_2813BD4A8;
  if (!qword_2813BD4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4A8);
  }

  return result;
}

unint64_t sub_2623F9EF8()
{
  result = qword_27FF0C780;
  if (!qword_27FF0C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C780);
  }

  return result;
}

unint64_t sub_2623F9F50()
{
  result = qword_27FF0C788;
  if (!qword_27FF0C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C788);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Rules8DecisionO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2623F9FD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2623FA01C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2623FA060(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Decision.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Decision.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2623FA29C()
{
  result = qword_27FF0C790;
  if (!qword_27FF0C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C790);
  }

  return result;
}

unint64_t sub_2623FA2F4()
{
  result = qword_27FF0C798;
  if (!qword_27FF0C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C798);
  }

  return result;
}

unint64_t sub_2623FA34C()
{
  result = qword_27FF0C7A0;
  if (!qword_27FF0C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C7A0);
  }

  return result;
}

unint64_t sub_2623FA3A4()
{
  result = qword_27FF0C7A8;
  if (!qword_27FF0C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C7A8);
  }

  return result;
}

unint64_t sub_2623FA3FC()
{
  result = qword_27FF0C7B0;
  if (!qword_27FF0C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C7B0);
  }

  return result;
}

unint64_t sub_2623FA454()
{
  result = qword_27FF0C7B8;
  if (!qword_27FF0C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0C7B8);
  }

  return result;
}

unint64_t sub_2623FA4AC()
{
  result = qword_2813BD4D0;
  if (!qword_2813BD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4D0);
  }

  return result;
}

unint64_t sub_2623FA504()
{
  result = qword_2813BD4D8;
  if (!qword_2813BD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4D8);
  }

  return result;
}

unint64_t sub_2623FA55C()
{
  result = qword_2813BD498;
  if (!qword_2813BD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD498);
  }

  return result;
}

unint64_t sub_2623FA5B4()
{
  result = qword_2813BD4A0;
  if (!qword_2813BD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4A0);
  }

  return result;
}

unint64_t sub_2623FA60C()
{
  result = qword_2813BD488;
  if (!qword_2813BD488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD488);
  }

  return result;
}

unint64_t sub_2623FA664()
{
  result = qword_2813BD490;
  if (!qword_2813BD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD490);
  }

  return result;
}

unint64_t sub_2623FA6BC()
{
  result = qword_2813BD4B0;
  if (!qword_2813BD4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4B0);
  }

  return result;
}

unint64_t sub_2623FA714()
{
  result = qword_2813BD4B8;
  if (!qword_2813BD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4B8);
  }

  return result;
}

unint64_t sub_2623FA76C()
{
  result = qword_2813BD4E0;
  if (!qword_2813BD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4E0);
  }

  return result;
}

unint64_t sub_2623FA7C4()
{
  result = qword_2813BD4E8;
  if (!qword_2813BD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4E8);
  }

  return result;
}

unint64_t sub_2623FA81C()
{
  result = qword_2813BD528;
  if (!qword_2813BD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD528);
  }

  return result;
}

unint64_t sub_2623FA874()
{
  result = qword_2813BD530;
  if (!qword_2813BD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD530);
  }

  return result;
}

unint64_t sub_2623FA8CC()
{
  result = qword_2813BD518;
  if (!qword_2813BD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD518);
  }

  return result;
}

unint64_t sub_2623FA924()
{
  result = qword_2813BD520;
  if (!qword_2813BD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD520);
  }

  return result;
}

unint64_t sub_2623FA97C()
{
  result = qword_2813BD4F0;
  if (!qword_2813BD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4F0);
  }

  return result;
}

unint64_t sub_2623FA9D4()
{
  result = qword_2813BD4F8;
  if (!qword_2813BD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4F8);
  }

  return result;
}

unint64_t sub_2623FAA2C()
{
  result = qword_2813BD458;
  if (!qword_2813BD458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD458);
  }

  return result;
}

unint64_t sub_2623FAA84()
{
  result = qword_2813BD460;
  if (!qword_2813BD460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD460);
  }

  return result;
}

unint64_t sub_2623FAADC()
{
  result = qword_2813BD468;
  if (!qword_2813BD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD468);
  }

  return result;
}

unint64_t sub_2623FAB34()
{
  result = qword_2813BD470;
  if (!qword_2813BD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD470);
  }

  return result;
}

unint64_t sub_2623FAB8C()
{
  result = qword_2813BD478;
  if (!qword_2813BD478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD478);
  }

  return result;
}

unint64_t sub_2623FABE4()
{
  result = qword_2813BD480;
  if (!qword_2813BD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD480);
  }

  return result;
}

unint64_t sub_2623FAC3C()
{
  result = qword_2813BD4C0;
  if (!qword_2813BD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4C0);
  }

  return result;
}

unint64_t sub_2623FAC94()
{
  result = qword_2813BD4C8;
  if (!qword_2813BD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD4C8);
  }

  return result;
}

unint64_t sub_2623FACEC()
{
  result = qword_2813BD500;
  if (!qword_2813BD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD500);
  }

  return result;
}

unint64_t sub_2623FAD44()
{
  result = qword_2813BD508;
  if (!qword_2813BD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD508);
  }

  return result;
}

uint64_t sub_2623FAD98(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2623FAE50(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_2624624E8();
      swift_allocObject();
      sub_2624624B8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2624625B8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2623FAEF0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2624624E8();
  swift_allocObject();
  result = sub_262462498();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2624625B8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2623FAF6C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2624624E8();
  swift_allocObject();
  result = sub_262462498();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2623FAFF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747065636341 && a2 == 0xE600000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A6552 && a2 == 0xE600000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776569766552 && a2 == 0xE600000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F6E6749 && a2 == 0xE600000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F6C6F43 && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696D694C65746152 && a2 == 0xE900000000000074 || (sub_262462C58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5652504F5441 && a2 == 0xE600000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F677261626D45 && a2 == 0xE700000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x66666F6B636142 && a2 == 0xE700000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6973696365446F4ELL && a2 == 0xEA00000000006E6FLL || (sub_262462C58() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E6F697369636544 && a2 == 0xED0000726F727245 || (sub_262462C58() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6D6F74737543 && a2 == 0xE600000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_262462C58();

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

_BYTE *sub_2623FB3B0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

void *sub_2623FB430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2623F9414(sub_2623FB500, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2623FB498(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2623FB4EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2623F4694(result, a2);
  }

  return result;
}

uint64_t sub_2623FB53C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C818, &qword_262464C48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2623FC6D4();
  result = sub_262462D88();
  if (!v2)
  {
    v10 = sub_262462BC8();
    if (*(v10 + 16))
    {
      v11 = *(v10 + 32);

      v12 = *(sub_262462BC8() + 16);

      if (v12 == 1 || (sub_26240A094() & 1) != 0)
      {
        switch(v11)
        {
          case 1:
          case 2:
            sub_2623F3CA4(a1, v33);
            v20 = sub_262404BD4(v33);
            a2[3] = &type metadata for StringField;
            v21 = v20;
            v23 = v22;
            v25 = v24;
            v27 = v26;
            a2[4] = sub_262404F94();
            v28 = swift_allocObject();
            *a2 = v28;
            v28[2] = v21;
            v28[3] = v23;
            v28[4] = v25;
            v28[5] = v27;
            return (*(v6 + 8))(v8, v5);
          case 3:
          case 4:
          case 5:
          case 6:
            sub_2623F3CA4(a1, v33);
            a2[3] = type metadata accessor for StringRule(0);
            a2[4] = sub_262406384(&qword_27FF0C8E0, type metadata accessor for StringRule, &unk_2624655E0);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
            sub_2623FBF38(v33, boxed_opaque_existential_1);
            return (*(v6 + 8))(v8, v5);
          case 7:
            LOBYTE(v33[0]) = 7;
            a2[3] = &type metadata for StringRegexExtractor;
            a2[4] = sub_2624044C4();
            *a2 = swift_allocObject();
            sub_262404518();
            sub_262462BB8();
            return (*(v6 + 8))(v8, v5);
          case 8:
            LOBYTE(v33[0]) = 8;
            a2[3] = &type metadata for StringJSONExtractor;
            a2[4] = sub_26240441C();
            *a2 = swift_allocObject();
            sub_262404470();
            goto LABEL_27;
          case 9:
            LOBYTE(v33[0]) = 9;
            a2[3] = &type metadata for Substring;
            a2[4] = sub_262404374();
            *a2 = swift_allocObject();
            sub_2624043C8();
            goto LABEL_27;
          case 10:
            LOBYTE(v33[0]) = 10;
            a2[3] = &type metadata for CharAt;
            a2[4] = sub_2624042CC();
            *a2 = swift_allocObject();
            sub_262404320();
            goto LABEL_27;
          case 11:
            LOBYTE(v33[0]) = 11;
            a2[3] = &type metadata for StringListGetIndex;
            a2[4] = sub_2624041E4();
            *a2 = swift_allocObject();
            sub_262404278();
            goto LABEL_27;
          case 12:
            LOBYTE(v33[0]) = 12;
            a2[3] = &type metadata for StringListJoin;
            a2[4] = sub_26240413C();
            *a2 = swift_allocObject();
            sub_262404190();
            goto LABEL_27;
          case 13:
            LOBYTE(v33[0]) = 13;
            a2[3] = &type metadata for StringReplaceFailure;
            a2[4] = sub_262404094();
            *a2 = swift_allocObject();
            sub_2624040E8();
            goto LABEL_27;
          case 14:
            LOBYTE(v33[0]) = 14;
            a2[3] = &type metadata for StringMatchCase;
            a2[4] = sub_262403FEC();
            *a2 = swift_allocObject();
            sub_262404040();
            goto LABEL_27;
          case 15:
            LOBYTE(v33[0]) = 15;
            a2[3] = &type metadata for NumberToString;
            a2[4] = sub_262403F44();
            *a2 = swift_allocObject();
            sub_262403F98();
            goto LABEL_27;
          case 16:
            LOBYTE(v33[0]) = 16;
            a2[3] = &type metadata for LabelBoolean;
            a2[4] = sub_262403E9C();
            *a2 = swift_allocObject();
            sub_262403EF0();
            goto LABEL_27;
          case 17:
            LOBYTE(v33[0]) = 17;
            a2[3] = &type metadata for LabelString;
            a2[4] = sub_262403DB4();
            *a2 = swift_allocObject();
            sub_262403E48();
            goto LABEL_27;
          case 18:
            LOBYTE(v33[0]) = 18;
            a2[3] = &type metadata for LabelNumber;
            a2[4] = sub_262403D0C();
            *a2 = swift_allocObject();
            sub_262403D60();
LABEL_27:
            sub_262462BB8();
            return (*(v6 + 8))(v8, v5);
          default:
            sub_2623F3CA4(a1, v33);
            v29 = sub_262404894(v33);
            v31 = v30;
            a2[3] = &type metadata for StringValue;
            a2[4] = sub_262404FE8();
            *a2 = v29;
            a2[1] = v31;
            return (*(v6 + 8))(v8, v5);
        }
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
    *(v18 + 24) = 0x8000000262464BF0;
    v19 = v33[1];
    *(v18 + 32) = v33[0];
    *(v18 + 48) = v19;
    *(v18 + 64) = 3;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t sub_2623FBC44(char a1)
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
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x6E69727473627553;
      break;
    case 10:
      result = 0x744172616843;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x694C676E69727453;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0x614D676E69727453;
      break;
    case 15:
      result = 0x6F547265626D754ELL;
      break;
    case 16:
      result = 0x6F6F426C6562614CLL;
      break;
    case 17:
      result = 0x7274536C6562614CLL;
      break;
    case 18:
      result = 0x6D754E6C6562614CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2623FBE8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_262406A4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2623FBEC0(uint64_t a1)
{
  v2 = sub_2623FC6D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623FBEFC(uint64_t a1)
{
  v2 = sub_2623FC6D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623FBF38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v35 = sub_262462A88();
  v31 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4E8, &qword_262463350);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = v27 - v5;
  v32 = type metadata accessor for RulesValidity(0);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C908, &qword_262464C78);
  v36 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  v11 = type metadata accessor for StringRule(0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262405160();
  v14 = v37;
  sub_262462D88();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v7;
  v37 = v11;
  LOBYTE(v39[0]) = 0;
  *v13 = sub_262462B88();
  *(v13 + 1) = v16;
  v27[2] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C8F8, &qword_262464C60);
  LOBYTE(v38[0]) = 1;
  sub_2624050E4();
  sub_262462BB8();
  *(v13 + 1) = v39[0];
  LOBYTE(v39[0]) = 2;
  sub_262406384(&qword_2813BDBE8, type metadata accessor for RulesValidity, &unk_262470FBC);
  v17 = v32;
  v18 = v33;
  sub_262462B78();
  v19 = v37;
  v27[1] = 0;
  v35 = v10;
  v20 = v30 + 48;
  v21 = *(v30 + 48);
  if (v21(v18, 1, v17) == 1)
  {
    v30 = v20;
    v22 = v28;
    *v28 = 0;
    swift_storeEnumTagMultiPayload();
    v23 = v21(v18, 1, v17);
    v24 = v29;
    v25 = a1;
    if (v23 != 1)
    {
      sub_2623F39E0(v18, &qword_27FF0C4E8, &qword_262463350);
    }
  }

  else
  {
    v22 = v28;
    sub_2623F2530(v18, v28);
    v24 = v29;
    v25 = a1;
  }

  sub_2623F2530(v22, &v13[*(v19 + 24)]);
  v40 = 3;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v38, v39);
  v26 = v36;
  __swift_destroy_boxed_opaque_existential_1(v38);
  (*(v26 + 8))(v35, v8);
  sub_2623EB668(v39, &v13[*(v19 + 28)]);
  sub_2624051B4(v13, v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_262405218(v13, type metadata accessor for StringRule);
}

unint64_t sub_2623FC6D4()
{
  result = qword_2813BD798;
  if (!qword_2813BD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD798);
  }

  return result;
}

uint64_t sub_2623FC728(uint64_t a1)
{
  v2 = sub_26240503C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623FC764(uint64_t a1)
{
  v2 = sub_26240503C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623FC7A0(void *a1, uint64_t a2)
{
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

void *sub_2623FC7D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_262404894(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2623FC804(uint64_t a1)
{
  v2 = sub_262405090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623FC840(uint64_t a1)
{
  v2 = sub_262405090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623FC87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a5)
  {
    *&v35 = a4;
    *(&v35 + 1) = a5;
    swift_bridgeObjectRetain_n();

    sub_2624629E8();
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));

    if (!*(a1 + 16))
    {
LABEL_9:
      sub_2623F3970(v41, &v38);
      if (*(&v39 + 1))
      {
        v43 = v38;
        v44 = v39;
        v14 = v40;
        goto LABEL_15;
      }

      sub_2623F39E0(&v38, &qword_27FF0C5F0, &qword_262463A90);
      sub_2623F1BBC();
      swift_allocError();
      *v15 = a2;
      *(v15 + 8) = a3;
      v16 = v37;
      v17 = v36;
      *(v15 + 16) = v35;
      *(v15 + 32) = v17;
      *(v15 + 48) = v16;
      *(v15 + 64) = 6;
      swift_willThrow();
LABEL_26:

      sub_2623F39E0(v41, &qword_27FF0C5F0, &qword_262463A90);
      return v6;
    }
  }

  v10 = sub_2624414FC(a2, a3);
  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2623F3970(*(a1 + 56) + 40 * v10, &v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
  v12 = sub_262462918();
  v13 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

  swift_unknownObjectRelease();
  if (v12 != v13)
  {
    sub_2623F3970(&v38, &v35);
    if (*(&v36 + 1))
    {
      sub_2623F39E0(&v38, &qword_27FF0C5F0, &qword_262463A90);
      v43 = v35;
      v44 = v36;
      v14 = v37;
      goto LABEL_15;
    }

    sub_2623F39E0(&v35, &qword_27FF0C5F0, &qword_262463A90);
  }

  sub_2623F3970(v41, &v32);
  if (!*(&v33 + 1))
  {
    sub_2623F39E0(&v32, &qword_27FF0C5F0, &qword_262463A90);
    sub_2623F1BBC();
    swift_allocError();
    *v28 = a2;
    *(v28 + 8) = a3;
    v29 = v37;
    v30 = v36;
    *(v28 + 16) = v35;
    *(v28 + 32) = v30;
    *(v28 + 48) = v29;
    *(v28 + 64) = 5;
    swift_willThrow();
    sub_2623F39E0(&v38, &qword_27FF0C5F0, &qword_262463A90);
    goto LABEL_26;
  }

  sub_2623F39E0(&v38, &qword_27FF0C5F0, &qword_262463A90);
  v43 = v32;
  v44 = v33;
  v14 = v34;
LABEL_15:
  v45 = v14;
  sub_2623F39E0(v41, &qword_27FF0C5F0, &qword_262463A90);
  sub_2623F3A40(&v43, &v35);
  v18 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {

    sub_2623F3A9C(&v43);
    v6 = *&v41[0];
  }

  else
  {
    v19 = sub_2624629D8();
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20 && (v21 = v20, [v20 type] == 3))
    {

      v22 = [v21 stringValue];
      v6 = sub_2624626E8();
    }

    else
    {

      if (!a5)
      {
        *&v35 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6C0, &unk_262463D80);
        v23 = sub_262462728();
        v25 = v24;
        sub_2623F1BBC();
        swift_allocError();
        *v26 = a2;
        *(v26 + 8) = a3;
        *(v26 + 16) = v23;
        *(v26 + 24) = v25;
        v27 = v36;
        *(v26 + 32) = v35;
        *(v26 + 48) = v27;
        *(v26 + 64) = 7;
        swift_willThrow();
        sub_2623F3A9C(&v43);
        return v6;
      }
    }

    sub_2623F3A9C(&v43);
  }

  return v6;
}

uint64_t sub_2623FCD08(uint64_t *a1, uint64_t a2)
{
  v6 = sub_2623FC87C(a2, *v2, v2[1], v2[2], v2[3]);
  result = v7;
  if (!v3)
  {
    *a1 = v6;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_2623FCD4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_262404BD4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_2623FCD7C(uint64_t a1)
{
  v2 = sub_262405160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623FCDB8(uint64_t a1)
{
  v2 = sub_262405160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623FCDF4(uint64_t a1)
{
  v4 = type metadata accessor for StringRule(0);
  sub_2623F3CA4(v1 + *(v4 + 28), &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAB8, &unk_262465A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAC0, &qword_262468F30);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v6, v8);
    sub_26240C0D4(&v7, a1, *v1, v1[1], v1[2], v1[3], v1 + *(v4 + 24), v8);
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

uint64_t sub_2623FCEF4(uint64_t *a1, uint64_t a2)
{
  v5 = sub_2623FCDF4(a2);
  result = v6;
  if (!v2)
  {
    *a1 = v5;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_2623FCF44()
{
  if (*v0)
  {
    return 0x706E497865676572;
  }

  else
  {
    return 0x6E49676E69727473;
  }
}

uint64_t sub_2623FCF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E49676E69727473 && a2 == 0xEB00000000747570;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x706E497865676572 && a2 == 0xEA00000000007475)
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

uint64_t sub_2623FD074(uint64_t a1)
{
  v2 = sub_2624078BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2623FD0B0(uint64_t a1)
{
  v2 = sub_2624078BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2623FD0EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAA8, &unk_262465A00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624078BC();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  sub_2623FB53C(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_262407910(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262407948(v13);
}

uint64_t sub_2623FD338(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  v7 = __swift_project_boxed_opaque_existential_1(v3, v5);
  v8 = a1;
  v9 = v7;
  v10 = (*(*(v6 + 8) + 24))(&v43, v8, v5);
  if (v2)
  {
    return v9;
  }

  v11 = v43;
  v12 = v3[8];
  v13 = v3[9];
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(v3 + 5, v12);
  (*(*(v13 + 8) + 24))(&v43, v14, v12);

  v16 = *(&v43 + 1);
  if (!*(&v11 + 1) || !*(&v43 + 1))
  {

    return 0;
  }

  v17 = v43;
  v18 = HIBYTE(*(&v43 + 1)) & 0xFLL;
  if ((*(&v43 + 1) & 0x2000000000000000) == 0)
  {
    v18 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    sub_2623F1BBC();
    v9 = swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v16;
    *(v20 + 16) = 0xD000000000000012;
    *(v20 + 24) = 0x8000000262471940;
    v21 = v44;
    *(v20 + 32) = v43;
    *(v20 + 48) = v21;
    *(v20 + 64) = 8;
    swift_willThrow();
    return v9;
  }

  v19 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  swift_bridgeObjectRetain_n();
  v22 = sub_26244FF6C(v17, v16, 0);
  v23 = sub_2624626D8();
  v24 = sub_2624626D8();
  v42 = v23;
  v25 = [v22 matchesInString:v24 options:0 range:{0, objc_msgSend(v23, sel_length)}];

  v41 = v22;
  sub_2624079E4(0, &qword_27FF0CAC8, 0x277CCACC0);
  v26 = sub_262462848();

  if (!(v26 >> 62))
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

LABEL_27:

    goto LABEL_28;
  }

  result = sub_262462AD8();
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_14:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x266728730](0, v26);
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_31;
    }

    v27 = *(v26 + 32);
  }

  v28 = v27;

  if ([v28 numberOfRanges] < 2)
  {

LABEL_28:

    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_262462A28();
    MEMORY[0x266728460](0xD000000000000036, 0x8000000262471900);
    MEMORY[0x266728460](v11, *(&v11 + 1));

    MEMORY[0x266728460](32032, 0xE200000000000000);
    v38 = v43;
    sub_2623F1BBC();
    v9 = swift_allocError();
    *v39 = v17;
    *(v39 + 8) = v16;
    *(v39 + 16) = v38;
    v40 = v44;
    *(v39 + 32) = v43;
    *(v39 + 48) = v40;
    *(v39 + 64) = 8;
    swift_willThrow();

    return v9;
  }

  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  result = [v28 numberOfRanges];
  if (result >= 1)
  {
    if (result == 1)
    {

      v9 = 0;
    }

    else
    {
      v29 = result;
      v30 = 1;
      do
      {
        v31 = v30 + 1;
        v32 = [v28 rangeAtIndex_];
        v34 = [v42 substringWithRange_];
        v35 = sub_2624626E8();
        v37 = v36;

        MEMORY[0x266728460](v35, v37);

        v30 = v31;
      }

      while (v29 != v31);

      v9 = v43;
    }

    return v9;
  }

LABEL_31:
  __break(1u);
  return result;
}