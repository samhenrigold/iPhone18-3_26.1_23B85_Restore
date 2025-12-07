uint64_t sub_21DEA36C8()
{
  v1 = 7889268;
  if (*v0 != 1)
  {
    v1 = 7367028;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73746E656D656C65;
  }
}

uint64_t sub_21DEA3714@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DEA7628(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DEA373C(uint64_t a1)
{
  v2 = sub_21DEA7740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA3778(uint64_t a1)
{
  v2 = sub_21DEA7740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA37B4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A20, &unk_21DED3650);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7740();
  sub_21DEC77E0();
  if (v1 == 0.0)
  {
    v18 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE946E8, &qword_21DED0F80);
    v16[15] = 0;
    sub_21DE9A774();
    sub_21DEC74E0();
    v2 = v17;
    if (v17 == 0.0)
    {
      v2 = MEMORY[0x277D84F90];
    }

    else
    {
      v18 = v17;
    }

    LOBYTE(v17) = 1;
    *&v8 = COERCE_DOUBLE(sub_21DEC74C0());
    if ((v9 & 1) == 0)
    {
      v10 = *&v8;
      type metadata accessor for TransactionElement();
      TransactionElement.__allocating_init(quantity:itemDescription:totalPrice:)(1, 7889236, 0xE300000000000000, v10);
      MEMORY[0x223D4B3E0]();
      if (*((*&v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DEC7080();
      }

      sub_21DEC70A0();
      v2 = v18;
    }

    LOBYTE(v17) = 2;
    v11 = sub_21DEC74A0();
    if (v12 && (v17 = 0.0, v14 = sub_21DEA6D68(v11, v12, &v17), , v14))
    {
      v15 = v17;
      type metadata accessor for TransactionElement();
      TransactionElement.__allocating_init(quantity:itemDescription:totalPrice:)(1, 7366996, 0xE300000000000000, v15);
      MEMORY[0x223D4B3E0]();
      if (*((*&v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DEC7080();
      }

      sub_21DEC70A0();
      (*(v5 + 8))(v7, v4);
      v2 = v18;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  return *&v2;
}

uint64_t sub_21DEA3B38()
{
  v1 = 0x61437463656A626FLL;
  v2 = 0x79726F6765746163;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    v1 = 0x6F4C7463656A626FLL;
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

uint64_t sub_21DEA3BCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DEA7794(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DEA3BF4(uint64_t a1)
{
  v2 = sub_21DEA7908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA3C30(uint64_t a1)
{
  v2 = sub_21DEA7908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA3C6C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A30, &qword_21DED3660);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7908();
  result = sub_21DEC77E0();
  if (!v2)
  {
    v17[15] = 2;
    v10 = sub_21DEC74A0();
    if (v11)
    {
      if (v10 == 0xD000000000000013 && v11 == 0x800000021DEDA3E0)
      {

        result = (*(v6 + 8))(v8, v5);
      }

      else
      {
        v13 = sub_21DEC7610();

        result = (*(v6 + 8))(v8, v5);
        if ((v13 & 1) == 0)
        {
          v14 = 12;
LABEL_13:
          *a2 = v14;
          return result;
        }
      }

      v14 = 8;
      goto LABEL_13;
    }

    v17[14] = 0;
    v15 = sub_21DEC74A0();
    if (v16)
    {
      SceneObject.Category.init(rawValue:)(*&v15);
      return (*(v6 + 8))(v8, v5);
    }

    else
    {
      result = (*(v6 + 8))(v8, v5);
      *a2 = 12;
    }
  }

  return result;
}

double sub_21DEA3EBC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A30, &qword_21DED3660);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-2] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7908();
  sub_21DEC77E0();
  if (!v2)
  {
    v14 = 3;
    sub_21DE6FFB8();
    sub_21DEC74E0();
    if (v17)
    {
      LOBYTE(v15) = 1;
      sub_21DEC74E0();
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v10 = *(v6 + 8);
      v12 = v16;
      *v13 = v15;
      v10(v8, v5);
      v11 = v12;
      result = v13[0];
      *a2 = *v13;
      *(a2 + 16) = v11;
      *(a2 + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_21DEA40B8()
{
  if (*v0)
  {
    return 0x6A624F656E656373;
  }

  else
  {
    return 0x70614374726F6873;
  }
}

uint64_t sub_21DEA4104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x70614374726F6873 && a2 == 0xEC0000006E6F6974;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6A624F656E656373 && a2 == 0xEC00000073746365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DEA41E8(uint64_t a1)
{
  v2 = sub_21DEA795C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA4224(uint64_t a1)
{
  v2 = sub_21DEA795C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA4260(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A40, &unk_21DED3668);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA795C();
  result = sub_21DEC77E0();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE942D8, &qword_21DED01A0);
    v8[15] = 1;
    sub_21DEA79B0();
    sub_21DEC74E0();
    (*(v4 + 8))(v6, v3);
    return v9;
  }

  return result;
}

void *sub_21DEA43DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A40, &unk_21DED3668);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA795C();
  sub_21DEC77E0();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_21DEC74A0();
    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

uint64_t sub_21DEA4530()
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEA45E4(uint64_t a1)
{
  sub_21DEC6E90();
}

uint64_t sub_21DEA4684(uint64_t a1)
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

unint64_t sub_21DEA4734@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21DEA7A64(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21DEA4764(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1766222167;
  v4 = 0xE700000000000000;
  v5 = 0x676E696B726150;
  if (*v1 != 2)
  {
    v5 = 0x726568744FLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x72656B636F4CLL;
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

uint64_t sub_21DEA4894()
{
  v1 = 0x54746E756F636361;
  v2 = 0x50746E756F636361;
  if (*v0 != 2)
  {
    v2 = 0x626D754E6D657469;
  }

  if (*v0)
  {
    v1 = 0x4E746E756F636361;
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

uint64_t sub_21DEA4928@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DEA7AB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DEA4950(uint64_t a1)
{
  v2 = sub_21DEA7C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA498C(uint64_t a1)
{
  v2 = sub_21DEA7C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA49C8()
{
  v1 = OBJC_IVAR____TtC17SceneIntelligence14Identification_accountType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21DEA4A0C(char a1)
{
  v3 = OBJC_IVAR____TtC17SceneIntelligence14Identification_accountType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL sub_21DEA4C24()
{
  if ((*(*v0 + 120))() > 2u)
  {

    return 0;
  }

  else
  {
    v1 = sub_21DEC7610();

    result = 0;
    if ((v1 & 1) == 0)
    {
      v3 = (*(*v0 + 144))(0);
      v5 = v4;

      v7 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v7 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        return 1;
      }

      v8 = (*(*v0 + 168))(v6);
      v10 = v9;

      v12 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v12 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        return 1;
      }

      else
      {
        v13 = (*(*v0 + 192))(v11);
        v15 = v14;

        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = v13 & 0xFFFFFFFFFFFFLL;
        }

        return v16 != 0;
      }
    }
  }

  return result;
}

uint64_t sub_21DEA4DE0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  sub_21DEC6940();
  *(v14 + OBJC_IVAR____TtC17SceneIntelligence14Identification_accountType) = a1;
  v15 = (v14 + OBJC_IVAR____TtC17SceneIntelligence14Identification_accountName);
  *v15 = a2;
  v15[1] = a3;
  v16 = (v14 + OBJC_IVAR____TtC17SceneIntelligence14Identification_accountPassword);
  *v16 = a4;
  v16[1] = a5;
  v17 = (v14 + OBJC_IVAR____TtC17SceneIntelligence14Identification_itemNumber);
  *v17 = a6;
  v17[1] = a7;
  return v14;
}

uint64_t sub_21DEA4EC0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A50, &qword_21DED3678);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  v40 = OBJC_IVAR____TtC17SceneIntelligence14Identification_id;
  sub_21DEC6940();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7C34();
  sub_21DEC77E0();
  if (v2)
  {
    v18 = sub_21DEC6950();
    (*(*(v18 - 8) + 8))(v1 + v40, v18);
    type metadata accessor for Identification(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v38 = v6;
    v39 = 0;
    v9 = sub_21DEC74A0();
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v13 = sub_21DEA7A64(v11, v12);
    v14 = v13;
    if (v13 == 4)
    {
      v15 = 3;
    }

    else
    {
      v15 = v13;
    }

    *(v1 + OBJC_IVAR____TtC17SceneIntelligence14Identification_accountType) = v15;
    v39 = 1;
    v16 = sub_21DEC74A0();
    if (v17)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0;
    }

    v21 = 0xE000000000000000;
    if (v17)
    {
      v21 = v17;
    }

    v22 = (v1 + OBJC_IVAR____TtC17SceneIntelligence14Identification_accountName);
    *v22 = v20;
    v22[1] = v21;
    v39 = 2;
    v23 = sub_21DEC74A0();
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    v27 = (v1 + OBJC_IVAR____TtC17SceneIntelligence14Identification_accountPassword);
    *v27 = v25;
    v27[1] = v26;
    v39 = 3;
    v28 = sub_21DEC74A0();
    if (v29)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    v32 = (v1 + OBJC_IVAR____TtC17SceneIntelligence14Identification_itemNumber);
    *v32 = v30;
    v32[1] = v31;
    if (v14 == 4)
    {
      v33 = v11 == 0x20676E696B726150;
      v34 = v38;
      if (v33 && v12 == 0xEC000000746F7053)
      {

        (*(v34 + 8))(v8, v5);
        v35 = 2;
      }

      else
      {
        v36 = sub_21DEC7610();

        (*(v34 + 8))(v8, v5);
        if (v36)
        {
          v35 = 2;
        }

        else
        {
          v35 = 3;
        }
      }

      v37 = OBJC_IVAR____TtC17SceneIntelligence14Identification_accountType;
      swift_beginAccess();
      *(v3 + v37) = v35;
    }

    else
    {

      (*(v38 + 8))(v8, v5);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_21DEA534C()
{
  v1 = OBJC_IVAR____TtC17SceneIntelligence14Identification_id;
  v2 = sub_21DEC6950();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21DEA5424@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 232))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DEA5460()
{
  if (*v0)
  {
    return 0x73746E656D656C65;
  }

  else
  {
    return 0x656C756465686373;
  }
}

uint64_t sub_21DEA54A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C756465686373 && a2 == 0xED0000656C746954;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DEA558C(uint64_t a1)
{
  v2 = sub_21DEA7C88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA55C8(uint64_t a1)
{
  v2 = sub_21DEA7C88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA56C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17SceneIntelligence8Schedule_elements;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_21DEA577C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_21DEC6940();
  v7 = (v6 + OBJC_IVAR____TtC17SceneIntelligence8Schedule_scheduleTitle);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtC17SceneIntelligence8Schedule_elements;
  *(v6 + OBJC_IVAR____TtC17SceneIntelligence8Schedule_elements) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *v7 = a1;
  v7[1] = a2;
  swift_beginAccess();
  *(v6 + v8) = a3;
  return v6;
}

uint64_t sub_21DEA5868(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A60, &qword_21DED3680);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  sub_21DEC6940();
  v8 = (v1 + OBJC_IVAR____TtC17SceneIntelligence8Schedule_scheduleTitle);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = OBJC_IVAR____TtC17SceneIntelligence8Schedule_elements;
  *(v1 + OBJC_IVAR____TtC17SceneIntelligence8Schedule_elements) = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7C88();
  sub_21DEC77E0();
  if (v2)
  {
  }

  else
  {
    v20 = v9;
    v10 = v21;
    v24 = 0;
    v11 = sub_21DEC74A0();
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    swift_beginAccess();
    *v8 = v13;
    v8[1] = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A70, &qword_21DED3688);
    v25 = 1;
    v15 = v22;
    sub_21DEA7CDC();
    sub_21DEC74E0();
    if (v23)
    {
      v17 = v23;
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    (*(v10 + 8))(v7, v15);
    v18 = v20;
    swift_beginAccess();
    *(v3 + v18) = v17;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_21DEA5AEC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A88, &qword_21DED3690);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7C88();
  v9 = sub_21DEC7810();
  v10 = (*(*v3 + 104))(v9);
  v22 = 0;
  sub_21DE6C7C8(v10, v11);
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  v14 = *(*v3 + 128);
  v15 = v14(v13);
  if (v15 >> 62)
  {
    v19 = v15;
    v18 = sub_21DEC7400();

    if (!v18)
    {
      return (*(v6 + 8))(v8, v5);
    }

    goto LABEL_5;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v16)
  {
LABEL_5:
    v21 = v14(v17);
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A70, &qword_21DED3688);
    sub_21DEA7DB0();
    sub_21DEC75D0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21DEA5D54()
{
  v1 = OBJC_IVAR____TtC17SceneIntelligence8Schedule_id;
  v2 = sub_21DEC6950();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21DEA5E14@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 160))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DEA5E94()
{
  v1 = 0x6D69547472617473;
  if (*v0 != 1)
  {
    v1 = 0x656D6954646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7961646B656577;
  }
}

uint64_t sub_21DEA5EF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DEA7E64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DEA5F1C(uint64_t a1)
{
  v2 = sub_21DEA7F84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA5F58(uint64_t a1)
{
  v2 = sub_21DEA7F84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA5F94()
{
  (*(*v0 + 120))(v12);
  v1 = SubEvent.DateTimeElement.Recurrence.Weekday.rawValue.getter();
  v12[0] = sub_21DEBCAD8(0x7961446B656577, 0xE700000000000000, v1, v2);
  v12[1] = v3;
  v4 = (*(*v0 + 144))();
  v6 = sub_21DEBCAD8(0x6D69547472617473, 0xE900000000000065, v4, v5);
  MEMORY[0x223D4B2A0](v6);

  v8 = (*(*v0 + 168))(v7);
  v10 = sub_21DEBCAD8(0x656D6954646E65, 0xE700000000000000, v8, v9);
  MEMORY[0x223D4B2A0](v10);

  return v12[0];
}

uint64_t sub_21DEA60D8@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_weekday;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_21DEA612C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_weekday;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_21DEA6260(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_21DEA62C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_21DEA637C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *a1;
  sub_21DEC6940();
  v12 = OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_weekday;
  *(v10 + OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_weekday) = 0;
  v13 = (v10 + OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_startTime);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v10 + OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_endTime);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  swift_beginAccess();
  *(v10 + v12) = v11;
  swift_beginAccess();
  *v13 = a2;
  v13[1] = a3;
  swift_beginAccess();
  *v14 = a4;
  v14[1] = a5;
  return v10;
}

uint64_t sub_21DEA64A8(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t sub_21DEA6500(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94AA0, &qword_21DED3698);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  sub_21DEC6940();
  v8 = OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_weekday;
  *(v3 + OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_weekday) = 0;
  v9 = (v3 + OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_startTime);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v3 + OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_endTime);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_21DEA7F84();
  sub_21DEC77E0();
  if (v2)
  {
  }

  else
  {
    v25 = v10;
    v12 = v26;
    v29 = 0;
    sub_21DE9957C();
    v13 = v27;
    sub_21DEC74E0();
    if (v30 == 7)
    {
      v15 = 0;
    }

    else
    {
      v15 = v30;
    }

    swift_beginAccess();
    *(v3 + v8) = v15;
    v29 = 1;
    v16 = sub_21DEC74A0();
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    swift_beginAccess();
    *v9 = v18;
    v9[1] = v19;

    v28 = 2;
    v20 = sub_21DEC74A0();
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    (*(v12 + 8))(v7, v13);
    v24 = v25;
    swift_beginAccess();
    *v24 = v22;
    v24[1] = v23;
  }

  __swift_destroy_boxed_opaque_existential_0(v31);
  return v3;
}

uint64_t sub_21DEA67D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94AB0, qword_21DED36A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7F84();
  v9 = sub_21DEC7810();
  (*(*v3 + 120))(&v18, v9);
  v17[14] = 0;
  sub_21DE99624();
  v10 = sub_21DEC75D0();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = (*(*v3 + 144))(v10);
  v17[13] = 1;
  sub_21DE6C7C8(v12, v13);

  v15 = (*(*v3 + 168))(v14);
  v17[12] = 2;
  sub_21DE6C7C8(v15, v16);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_21DEA6A3C()
{
  v1 = OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_id;
  v2 = sub_21DEC6950();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21DEA6B00@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 200))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

char *sub_21DEA6B80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C18, &unk_21DED47A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_21DEA6C74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE949B8, &qword_21DED3618);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

BOOL sub_21DEA6D68(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_21DEC72E0();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_21DEA6E60(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEC77C0();
  if (v1)
  {
LABEL_3:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v3;
  }

  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94448, &qword_21DED0E80);
  sub_21DE83418();
  sub_21DEC7660();
  v3 = v22;
  v5 = v22 + 64;
  v6 = 1 << *(v22 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v22 + 64);
  v9 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v24 = MEMORY[0x277D84F90];
  while (v8)
  {
LABEL_13:
    v8 &= v8 - 1;

    v12 = sub_21DEC7470();

    if (v12)
    {
      if (v12 == 1)
      {
        v13 = 1;
        goto LABEL_17;
      }
    }

    else
    {
      v13 = 0;
LABEL_17:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21DEA6B80(0, *(v24 + 2) + 1, 1, v24);
        v24 = result;
      }

      v15 = *(v24 + 2);
      v14 = *(v24 + 3);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        result = sub_21DEA6B80((v14 > 1), v15 + 1, 1, v24);
        v16 = v15 + 1;
        v24 = result;
      }

      v17 = v24;
      *(v24 + 2) = v16;
      v17[v15 + 32] = v13;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_13;
    }
  }

  v18 = v24;
  if (!*(v24 + 2))
  {

    v19 = *(v3 + 16);
    if (v19)
    {
      v20 = sub_21DE987FC(*(v3 + 16), 0);
      v3 = sub_21DE98A98(&v22, v20 + 4, v19, v3);
      sub_21DE98BF0(v22);
      if (v3 == v19)
      {
LABEL_29:
        sub_21DEA8038();
        swift_allocError();
        *v21 = v20;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_0(v23);
        goto LABEL_3;
      }

      __break(1u);
    }

    v20 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  if (*(v18 + 2))
  {
    v3 = v18[32];

    __swift_destroy_boxed_opaque_existential_0(v23);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v3;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_21DEA7184()
{
  result = qword_27CE949A0;
  if (!qword_27CE949A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE949A0);
  }

  return result;
}

uint64_t sub_21DEA7218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21DEA7260()
{
  result = qword_27CE949C8;
  if (!qword_27CE949C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE949C8);
  }

  return result;
}

unint64_t sub_21DEA72B4()
{
  result = qword_27CE949D8;
  if (!qword_27CE949D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE949D8);
  }

  return result;
}

uint64_t sub_21DEA7308(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F6261 && a2 == 0xE500000000000000;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021DEDA3C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21DEC7610();

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

unint64_t sub_21DEA7478()
{
  result = qword_27CE949E8;
  if (!qword_27CE949E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE949E8);
  }

  return result;
}

unint64_t sub_21DEA74CC()
{
  result = qword_27CE949F8;
  if (!qword_27CE949F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE949F0, &qword_21DED3638);
    sub_21DEA7218(&qword_27CE94570, type metadata accessor for SubEvent.DateTimeElement, &protocol conformance descriptor for SubEvent.DateTimeElement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE949F8);
  }

  return result;
}

unint64_t sub_21DEA7580()
{
  result = qword_27CE94A08;
  if (!qword_27CE94A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A08);
  }

  return result;
}

unint64_t sub_21DEA75D4()
{
  result = qword_27CE94A18;
  if (!qword_27CE94A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A18);
  }

  return result;
}

uint64_t sub_21DEA7628(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7889268 && a2 == 0xE300000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7367028 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

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

unint64_t sub_21DEA7740()
{
  result = qword_27CE94A28;
  if (!qword_27CE94A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A28);
  }

  return result;
}

uint64_t sub_21DEA7794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61437463656A626FLL && a2 == 0xEE0079726F676574;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4C7463656A626FLL && a2 == 0xEE006E6F69746163 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_21DEC7610();

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

unint64_t sub_21DEA7908()
{
  result = qword_27CE94A38;
  if (!qword_27CE94A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A38);
  }

  return result;
}

unint64_t sub_21DEA795C()
{
  result = qword_27CE94A48;
  if (!qword_27CE94A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A48);
  }

  return result;
}

unint64_t sub_21DEA79B0()
{
  result = qword_27CE942E0;
  if (!qword_27CE942E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE942D8, &qword_21DED01A0);
    sub_21DEA7218(&qword_27CE942E8, type metadata accessor for SceneObject, &protocol conformance descriptor for SceneObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE942E0);
  }

  return result;
}

unint64_t sub_21DEA7A64(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DEC7470();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DEA7AB0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x54746E756F636361 && a2 == 0xEB00000000657079 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E746E756F636361 && a2 == 0xEB00000000656D61 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50746E756F636361 && a2 == 0xEF64726F77737361 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x626D754E6D657469 && a2 == 0xEA00000000007265)
  {

    return 3;
  }

  else
  {
    v5 = sub_21DEC7610();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_21DEA7C34()
{
  result = qword_27CE94A58;
  if (!qword_27CE94A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A58);
  }

  return result;
}

unint64_t sub_21DEA7C88()
{
  result = qword_27CE94A68;
  if (!qword_27CE94A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A68);
  }

  return result;
}

unint64_t sub_21DEA7CDC()
{
  result = qword_27CE94A78;
  if (!qword_27CE94A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94A70, &qword_21DED3688);
    sub_21DEA7218(&qword_27CE94A80, type metadata accessor for ScheduleElement, &unk_21DED4648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A78);
  }

  return result;
}

unint64_t sub_21DEA7DB0()
{
  result = qword_27CE94A90;
  if (!qword_27CE94A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94A70, &qword_21DED3688);
    sub_21DEA7218(&qword_27CE94A98, type metadata accessor for ScheduleElement, &unk_21DED4670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A90);
  }

  return result;
}

uint64_t sub_21DEA7E64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7961646B656577 && a2 == 0xE700000000000000;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

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

unint64_t sub_21DEA7F84()
{
  result = qword_27CE94AA8;
  if (!qword_27CE94AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AA8);
  }

  return result;
}

unint64_t sub_21DEA8038()
{
  result = qword_27CE94AB8;
  if (!qword_27CE94AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AB8);
  }

  return result;
}

unint64_t sub_21DEA8090()
{
  result = qword_27CE94AC0;
  if (!qword_27CE94AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AC0);
  }

  return result;
}

unint64_t sub_21DEA80E8()
{
  result = qword_27CE94AC8;
  if (!qword_27CE94AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AC8);
  }

  return result;
}

unint64_t sub_21DEA8140()
{
  result = qword_27CE94AD0;
  if (!qword_27CE94AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AD0);
  }

  return result;
}

unint64_t sub_21DEA8198()
{
  result = qword_27CE94AD8;
  if (!qword_27CE94AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AD8);
  }

  return result;
}

unint64_t sub_21DEA8220()
{
  result = qword_27CE94AF0;
  if (!qword_27CE94AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AF0);
  }

  return result;
}

unint64_t sub_21DEA8278()
{
  result = qword_27CE94AF8;
  if (!qword_27CE94AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AF8);
  }

  return result;
}

unint64_t sub_21DEA82D0()
{
  result = qword_27CE94B00;
  if (!qword_27CE94B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B00);
  }

  return result;
}

unint64_t sub_21DEA8328()
{
  result = qword_27CE94B08;
  if (!qword_27CE94B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B08);
  }

  return result;
}

unint64_t sub_21DEA8380()
{
  result = qword_27CE94B10;
  if (!qword_27CE94B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B10);
  }

  return result;
}

unint64_t sub_21DEA83D8()
{
  result = qword_27CE94B18;
  if (!qword_27CE94B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B18);
  }

  return result;
}

unint64_t sub_21DEA8430()
{
  result = qword_27CE94B20;
  if (!qword_27CE94B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B20);
  }

  return result;
}

unint64_t sub_21DEA8488()
{
  result = qword_27CE94B28;
  if (!qword_27CE94B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B28);
  }

  return result;
}

unint64_t sub_21DEA84E0()
{
  result = qword_27CE94B30;
  if (!qword_27CE94B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B30);
  }

  return result;
}

unint64_t sub_21DEA8538()
{
  result = qword_27CE94B38;
  if (!qword_27CE94B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B38);
  }

  return result;
}

unint64_t sub_21DEA8590()
{
  result = qword_27CE94B40;
  if (!qword_27CE94B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B40);
  }

  return result;
}

unint64_t sub_21DEA85E8()
{
  result = qword_27CE94B48;
  if (!qword_27CE94B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B48);
  }

  return result;
}

unint64_t sub_21DEA8640()
{
  result = qword_27CE94B50;
  if (!qword_27CE94B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B50);
  }

  return result;
}

unint64_t sub_21DEA8698()
{
  result = qword_27CE94B58;
  if (!qword_27CE94B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B58);
  }

  return result;
}

unint64_t sub_21DEA86F0()
{
  result = qword_27CE94B60;
  if (!qword_27CE94B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B60);
  }

  return result;
}

unint64_t sub_21DEA8748()
{
  result = qword_27CE94B68;
  if (!qword_27CE94B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B68);
  }

  return result;
}

unint64_t sub_21DEA87A0()
{
  result = qword_27CE94B70;
  if (!qword_27CE94B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B70);
  }

  return result;
}

unint64_t sub_21DEA87F8()
{
  result = qword_27CE94B78;
  if (!qword_27CE94B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B78);
  }

  return result;
}

unint64_t sub_21DEA8850()
{
  result = qword_27CE94B80;
  if (!qword_27CE94B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B80);
  }

  return result;
}

unint64_t sub_21DEA88A8()
{
  result = qword_27CE94B88;
  if (!qword_27CE94B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B88);
  }

  return result;
}

unint64_t sub_21DEA8900()
{
  result = qword_27CE94B90;
  if (!qword_27CE94B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B90);
  }

  return result;
}

unint64_t sub_21DEA8958()
{
  result = qword_27CE94B98;
  if (!qword_27CE94B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B98);
  }

  return result;
}

unint64_t sub_21DEA89B0()
{
  result = qword_27CE94BA0;
  if (!qword_27CE94BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BA0);
  }

  return result;
}

unint64_t sub_21DEA8A08()
{
  result = qword_27CE94BA8;
  if (!qword_27CE94BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BA8);
  }

  return result;
}

unint64_t sub_21DEA8A60()
{
  result = qword_27CE94BB0;
  if (!qword_27CE94BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BB0);
  }

  return result;
}

uint64_t sub_21DEA8AE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21DEA8B3C()
{
  result = qword_27CE94BC8;
  if (!qword_27CE94BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BC8);
  }

  return result;
}

unint64_t sub_21DEA8B94()
{
  result = qword_27CE94BD0;
  if (!qword_27CE94BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BD0);
  }

  return result;
}

unint64_t sub_21DEA8BEC()
{
  result = qword_27CE94BD8;
  if (!qword_27CE94BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BD8);
  }

  return result;
}

unint64_t sub_21DEA8C44()
{
  result = qword_27CE94BE0;
  if (!qword_27CE94BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BE0);
  }

  return result;
}

unint64_t sub_21DEA8C9C()
{
  result = qword_27CE94BE8;
  if (!qword_27CE94BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BE8);
  }

  return result;
}

unint64_t sub_21DEA8CF4()
{
  result = qword_27CE94BF0;
  if (!qword_27CE94BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BF0);
  }

  return result;
}

unint64_t sub_21DEA8D4C()
{
  result = qword_27CE94BF8;
  if (!qword_27CE94BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BF8);
  }

  return result;
}

unint64_t sub_21DEA8DA4()
{
  result = qword_27CE94C00;
  if (!qword_27CE94C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94C00);
  }

  return result;
}

unint64_t sub_21DEA8DFC()
{
  result = qword_27CE94C08;
  if (!qword_27CE94C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94C08);
  }

  return result;
}

uint64_t sub_21DEA8F08(uint64_t a1)
{
  result = sub_21DEC6950();
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

uint64_t sub_21DEA8FD8(uint64_t a1)
{
  result = sub_21DEC6950();
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

uint64_t sub_21DEA9098(uint64_t a1)
{
  result = sub_21DEC6950();
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

unint64_t sub_21DEA914C()
{
  result = qword_27CE94C10;
  if (!qword_27CE94C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94C10);
  }

  return result;
}

_BYTE *sub_21DEA91A0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

SceneIntelligence::JSONSchemaName_optional __swiftcall JSONSchemaName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC7470();

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

uint64_t JSONSchemaName.rawValue.getter()
{
  if (*v0)
  {
    return 1667459446;
  }

  else
  {
    return 0x7275746375727473;
  }
}

uint64_t sub_21DEA92F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1667459446;
  }

  else
  {
    v3 = 0x7275746375727473;
  }

  if (v2)
  {
    v4 = 0xEE00747865546465;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1667459446;
  }

  else
  {
    v5 = 0x7275746375727473;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEE00747865546465;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DEC7610();
  }

  return v8 & 1;
}

uint64_t sub_21DEA93A4()
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEA942C(uint64_t a1)
{
  sub_21DEC6E90();
}

uint64_t sub_21DEA94A0(uint64_t a1)
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEA9524@<X0>(char *a2@<X8>)
{
  v3 = sub_21DEC7470();

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

  *a2 = v5;
  return result;
}

void sub_21DEA9584(uint64_t *a1@<X8>)
{
  v2 = 1667459446;
  if (!*v1)
  {
    v2 = 0x7275746375727473;
  }

  v3 = 0xEE00747865546465;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t NamedJSONSchema.Error.errorDescription.getter()
{
  v1 = *v0;
  sub_21DEC72F0();

  if (v1)
  {
    v2 = 1667459446;
  }

  else
  {
    v2 = 0x7275746375727473;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xEE00747865546465;
  }

  MEMORY[0x223D4B2A0](v2, v3);

  MEMORY[0x223D4B2A0](0x7373696D20736920, 0xEB00000000676E69);
  return 0xD000000000000018;
}

uint64_t sub_21DEA96B0()
{
  type metadata accessor for NamedJSONSchema();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  qword_27CEA2F88 = result;
  return result;
}

uint64_t sub_21DEA96E8()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t *sub_21DEA9718()
{
  if (qword_27CEA2F80 != -1)
  {
    swift_once();
  }

  return &qword_27CEA2F88;
}

uint64_t static NamedJSONSchema.shared.getter()
{
  if (qword_27CEA2F80 != -1)
  {
    swift_once();
  }
}

void sub_21DEA97C4(char *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C20, &qword_21DED47C0);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v35 - v6;
  v7 = sub_21DEC6880();
  v41 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v37 = type metadata accessor for JSONSchema(0);
  v42 = *(v37 - 8);
  v16 = MEMORY[0x28223BE20](v37);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  v21 = *a1;
  swift_beginAccess();
  v39 = v2;
  v22 = *(v2 + 16);
  if (!*(v22 + 16))
  {
LABEL_5:
    v35 = v7;
    v36 = v3;
    type metadata accessor for NamedJSONSchema();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = [objc_opt_self() bundleForClass_];
    v27 = sub_21DEC6D80();

    v28 = sub_21DEC6D80();
    v40 = v26;
    v29 = [v26 URLForResource:v27 withExtension:v28];

    if (v29)
    {
      sub_21DEC6850();

      v30 = v41;
      v31 = v35;
      (*(v41 + 32))(v15, v13, v35);
      (*(v30 + 16))(v10, v15, v31);
      v32 = v36;
      JSONSchema.init(url:)(v10, v18);
      if (!v32)
      {
        v34 = v38;
        sub_21DEA9FD4(v18, v38);
        (*(v42 + 56))(v34, 0, 1, v37);
        swift_beginAccess();
        sub_21DEA9C4C(v34, v21);
        swift_endAccess();

        (*(v30 + 8))(v15, v31);
        goto LABEL_11;
      }

      (*(v30 + 8))(v15, v31);
    }

    else
    {
      sub_21DEA9F80();
      swift_allocError();
      *v33 = v21;
      swift_willThrow();
    }

    return;
  }

  v23 = sub_21DEA9EB0(v21);
  if ((v24 & 1) == 0)
  {

    goto LABEL_5;
  }

  sub_21DEA9FD4(*(v22 + 56) + *(v42 + 72) * v23, v20);

  v18 = v20;
LABEL_11:
  sub_21DEAA038(v18, v43);
}

uint64_t sub_21DEA9C4C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C20, &qword_21DED47C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for JSONSchema(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_21DEAA1D0(a1);
    v13 = sub_21DEA9EB0(a2 & 1);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_21DEAAAE4();
        v17 = v21;
      }

      sub_21DEAA038(*(v17 + 56) + *(v10 + 72) * v15, v8);
      sub_21DEAA59C(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_21DEAA1D0(v8);
  }

  else
  {
    sub_21DEAA038(a1, v12);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_21DEAA7B0(v12, a2 & 1, v18);
    *v2 = v21;
  }

  return result;
}

uint64_t NamedJSONSchema.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_21DEA9EB0(char a1)
{
  sub_21DEC7770();
  sub_21DEC6E90();

  v2 = sub_21DEC77B0();

  return sub_21DEAA994(a1 & 1, v2);
}

unint64_t sub_21DEA9F80()
{
  result = qword_27CE94C28;
  if (!qword_27CE94C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94C28);
  }

  return result;
}

uint64_t sub_21DEA9FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSONSchema(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DEAA038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSONSchema(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DEAA0A0()
{
  result = qword_27CE94C30;
  if (!qword_27CE94C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94C30);
  }

  return result;
}

unint64_t sub_21DEAA0F8()
{
  result = qword_27CE94C38;
  if (!qword_27CE94C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94C40, &qword_21DED4868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94C38);
  }

  return result;
}

uint64_t sub_21DEAA1D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C20, &qword_21DED47C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DEAA238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for JSONSchema(0);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C48, &qword_21DED4998);
  v36 = v4;
  result = sub_21DEC7420();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_21DEAA038(v24, v37);
      }

      else
      {
        sub_21DEA9FD4(v24, v37);
      }

      sub_21DEC7770();
      sub_21DEC6E90();

      result = sub_21DEC77B0();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_21DEAA038(v37, *(v9 + 56) + v23 * v17);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_21DEAA59C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DEC7290() + 1) & ~v5;
    while (1)
    {
      sub_21DEC7770();
      sub_21DEC6E90();

      result = sub_21DEC77B0();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for JSONSchema(0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21DEAA7B0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21DEA9EB0(a2 & 1);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_21DEAAAE4();
      goto LABEL_7;
    }

    sub_21DEAA238(v13, a3 & 1);
    v20 = sub_21DEA9EB0(a2 & 1);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_21DEC7700();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for JSONSchema(0) - 8) + 72) * v10;

    return sub_21DEAACF0(a1, v18);
  }

LABEL_13:

  return sub_21DEAA8FC(v10, a2 & 1, a1, v16);
}

uint64_t sub_21DEAA8FC(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = type metadata accessor for JSONSchema(0);
  result = sub_21DEAA038(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_21DEAA994(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 1667459446;
    }

    else
    {
      v6 = 0x7275746375727473;
    }

    if (a1)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xEE00747865546465;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 1667459446 : 0x7275746375727473;
      v9 = *(*(v2 + 48) + v4) ? 0xE400000000000000 : 0xEE00747865546465;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_21DEC7610();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_21DEAAAE4()
{
  v1 = v0;
  v2 = type metadata accessor for JSONSchema(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C48, &qword_21DED4998);
  v5 = *v0;
  v6 = sub_21DEC7410();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_21DEA9FD4(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + v20) = v21;
        result = sub_21DEAA038(v4, *(v7 + 56) + v22);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_21DEAACF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSONSchema(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DEAAD58(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94CA0, &unk_21DED4A90);
  MEMORY[0x28223BE20](v39);
  v40 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C58, &qword_21DED49A8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = sub_21DEC6950();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v36 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - v19;
  sub_21DE5C6E4(a1, v41, &qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
  v21 = swift_dynamicCast();
  v22 = *(v16 + 56);
  if (!v21)
  {
    v22(v14, 1, 1, v15);
    sub_21DE5CD00(v14, &qword_27CE94C58, &qword_21DED49A8);
    return 2;
  }

  v22(v14, 0, 1, v15);
  v35 = *(v16 + 32);
  v35(v20, v14, v15);
  (*(v16 + 16))(v12, v20, v15);
  v22(v12, 0, 1, v15);
  sub_21DE5C6E4(v38, v41, &qword_27CE94C50, &qword_21DED49A0);
  v23 = swift_dynamicCast();
  v22(v9, v23 ^ 1u, 1, v15);
  v24 = v40;
  v25 = *(v39 + 12);
  sub_21DE5C6E4(v12, v40, &qword_27CE94C58, &qword_21DED49A8);
  v39 = v9;
  sub_21DE5C6E4(v9, v24 + v25, &qword_27CE94C58, &qword_21DED49A8);
  v26 = *(v16 + 48);
  v27 = v24;
  if (v26(v24, 1, v15) != 1)
  {
    v30 = v24;
    v31 = v37;
    sub_21DE5C6E4(v30, v37, &qword_27CE94C58, &qword_21DED49A8);
    if (v26(v27 + v25, 1, v15) != 1)
    {
      v33 = v36;
      v35(v36, (v27 + v25), v15);
      sub_21DEAD438(&qword_27CE94CA8, MEMORY[0x277CC9610]);
      v28 = sub_21DEC6D70();
      v34 = *(v16 + 8);
      v34(v33, v15);
      sub_21DE5CD00(v12, &qword_27CE94C58, &qword_21DED49A8);
      v34(v20, v15);
      v34(v31, v15);
      sub_21DE5CD00(v27, &qword_27CE94C58, &qword_21DED49A8);
      goto LABEL_10;
    }

    sub_21DE5CD00(v12, &qword_27CE94C58, &qword_21DED49A8);
    v32 = *(v16 + 8);
    v32(v20, v15);
    v32(v31, v15);
    goto LABEL_8;
  }

  sub_21DE5CD00(v12, &qword_27CE94C58, &qword_21DED49A8);
  (*(v16 + 8))(v20, v15);
  if (v26(v24 + v25, 1, v15) != 1)
  {
LABEL_8:
    sub_21DE5CD00(v27, &qword_27CE94CA0, &unk_21DED4A90);
    v28 = 0;
    goto LABEL_10;
  }

  sub_21DE5CD00(v24, &qword_27CE94C58, &qword_21DED49A8);
  v28 = 1;
LABEL_10:
  sub_21DE5CD00(v39, &qword_27CE94C58, &qword_21DED49A8);
  return v28 & 1;
}

uint64_t sub_21DEAB314(uint64_t a1, uint64_t a2)
{
  sub_21DE5C6E4(a1, v6, &qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94448, &qword_21DED0E80);
  if (!swift_dynamicCast())
  {
    return 2;
  }

  sub_21DE5C6E4(a2, v6, &qword_27CE94C50, &qword_21DED49A0);
  if ((swift_dynamicCast() & 1) != 0 && v5)
  {

    v3 = sub_21DEAC078(v5, v5);
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_21DEAB43C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C58, &qword_21DED49A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  v7 = sub_21DEC6950();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEC77C0();
  if (!v2)
  {
    v15[1] = v10;
    v15[2] = v6;
    v15[3] = v8;
    v11 = v16;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    if (sub_21DEC7670())
    {
      v19 = 0u;
      v20 = 0u;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v12 = sub_21DEC7630();
      *(&v20 + 1) = MEMORY[0x277D839B0];
      LOBYTE(v19) = v12 & 1;
    }

    __swift_destroy_boxed_opaque_existential_0(v17);
    v13 = v20;
    *v11 = v19;
    v11[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21DEAB99C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C58, &qword_21DED49A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_21DEC6950();
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEC7800();
  sub_21DE5C6E4(v1, &v18, &qword_27CE94C50, &qword_21DED49A0);
  if (v19)
  {
    sub_21DEAD1D0(&v18, v20);
    sub_21DE56CD4(v20, &v18);
    if (swift_dynamicCast())
    {
      __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      sub_21DEC7690();
    }

    else
    {
      sub_21DE56CD4(v20, &v18);
      if (swift_dynamicCast())
      {
        __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
        sub_21DEC76B0();
      }

      else
      {
        sub_21DE56CD4(v20, &v18);
        if (swift_dynamicCast())
        {
          __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
          sub_21DEC76A0();
        }

        else
        {
          sub_21DE56CD4(v20, &v18);
          v9 = swift_dynamicCast();
          v10 = v16;
          v11 = *(v16 + 56);
          if (!v9)
          {
            v11(v5, 1, 1, v6);
            sub_21DE5CD00(v5, &qword_27CE94C58, &qword_21DED49A8);
            sub_21DE56CD4(v20, &v18);
            if (swift_dynamicCast())
            {
              __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
              sub_21DEC7680();
            }

            else
            {
              sub_21DE56CD4(v20, &v18);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C68, &unk_21DED49B0);
              if (swift_dynamicCast())
              {
                *&v18 = v17;
                __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
                sub_21DEAD2B8(&qword_27CE94C90, sub_21DEAD264, MEMORY[0x277D83948]);
              }

              else
              {
                sub_21DE56CD4(v20, &v18);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94448, &qword_21DED0E80);
                if (!swift_dynamicCast())
                {
                  v13 = sub_21DEC7360();
                  swift_allocError();
                  v15 = v14;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C78, &qword_21DED49C0);
                  sub_21DE56CD4(v20, v15);
                  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
                  sub_21DEC77F0();
                  sub_21DEC7330();
                  (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D841A8], v13);
                  swift_willThrow();
                  goto LABEL_11;
                }

                *&v18 = v17;
                __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
                sub_21DEAD1E0(&qword_27CE94C80, sub_21DEAD264, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
              }

              sub_21DEC76C0();
            }

            __swift_destroy_boxed_opaque_existential_0(v20);

            return __swift_destroy_boxed_opaque_existential_0(v21);
          }

          v11(v5, 0, 1, v6);
          (*(v10 + 32))(v8, v5, v6);
          __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
          sub_21DEAD438(&qword_27CE94C98, MEMORY[0x277CC95F8]);
          sub_21DEC76C0();
          (*(v10 + 8))(v8, v6);
        }
      }
    }

LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v20);
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }

  sub_21DE5CD00(&v18, &qword_27CE94C50, &qword_21DED49A0);
  __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  sub_21DEC76D0();
  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t sub_21DEAC078(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_12:
    v12 = v9 | (v4 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_21DEA7FD8(*(a1 + 56) + 32 * v12, &v35);
    v29 = v35;
    v30 = v36;

    if (!v14)
    {
      return 1;
    }

    v35 = v29;
    v36 = v30;
    v16 = sub_21DE7ADAC(v15, v14);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      sub_21DEAD408(&v35);
      return 0;
    }

    sub_21DEA7FD8(*(v2 + 56) + 32 * v16, v34);
    sub_21DE5C6E4(v34, v33, &qword_27CE94C50, &qword_21DED49A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
    if (swift_dynamicCast())
    {
      sub_21DE5C6E4(&v35, v33, &qword_27CE94C50, &qword_21DED49A0);
      if (!swift_dynamicCast())
      {
        if (LOBYTE(v31) != 2)
        {
          v20 = 0;
          goto LABEL_54;
        }

        v19 = 2;
LABEL_24:
        v20 = v19 == 2;
        goto LABEL_54;
      }

      v19 = LOBYTE(v31);
      if (LOBYTE(v31) == 2)
      {
        goto LABEL_24;
      }

      v20 = 1;
    }

    else
    {
      sub_21DE5C6E4(v34, v33, &qword_27CE94C50, &qword_21DED49A0);
      if (swift_dynamicCast())
      {
        sub_21DE5C6E4(&v35, v33, &qword_27CE94C50, &qword_21DED49A0);
        v21 = swift_dynamicCast();
        v22 = v31;
        if (!v21)
        {
          v22 = 0.0;
        }

        v23 = *&v31 == *&v22;
LABEL_29:
        if (v23)
        {
          v20 = v21;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_54;
      }

      sub_21DE5C6E4(v34, v33, &qword_27CE94C50, &qword_21DED49A0);
      if (swift_dynamicCast())
      {
        sub_21DE5C6E4(&v35, v33, &qword_27CE94C50, &qword_21DED49A0);
        v21 = swift_dynamicCast();
        v24 = v31;
        if (!v21)
        {
          v24 = 0.0;
        }

        v23 = v31 == v24;
        goto LABEL_29;
      }

      v25 = sub_21DEAAD58(v34, &v35);
      if (v25 == 2)
      {
        sub_21DE5C6E4(v34, v33, &qword_27CE94C50, &qword_21DED49A0);
        if (swift_dynamicCast())
        {
          sub_21DE5C6E4(&v35, v33, &qword_27CE94C50, &qword_21DED49A0);
          if (swift_dynamicCast())
          {
            if (v32)
            {
              v20 = 1;
              goto LABEL_45;
            }
          }

          else
          {
            v31 = 0.0;
            v32 = 0;
          }

          v20 = 0;
LABEL_45:

LABEL_53:

          goto LABEL_54;
        }

        sub_21DE5C6E4(v34, v33, &qword_27CE94C50, &qword_21DED49A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C68, &unk_21DED49B0);
        if (swift_dynamicCast())
        {
          sub_21DE5C6E4(&v35, v33, &qword_27CE94C50, &qword_21DED49A0);
          if (swift_dynamicCast())
          {
            if (v31 != 0.0)
            {

              v26 = sub_21DEAC704(*&v31, *&v31);
LABEL_50:
              v20 = v26;

              goto LABEL_53;
            }

            goto LABEL_52;
          }
        }

        else
        {
          sub_21DE5C6E4(v34, v33, &qword_27CE94C50, &qword_21DED49A0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94448, &qword_21DED0E80);
          if (!swift_dynamicCast())
          {
            goto LABEL_61;
          }

          sub_21DE5C6E4(&v35, v33, &qword_27CE94C50, &qword_21DED49A0);
          if (swift_dynamicCast())
          {
            if (v31 != 0.0)
            {

              v26 = sub_21DEAC078(*&v31, *&v31);
              goto LABEL_50;
            }

LABEL_52:

            v20 = 0;
            goto LABEL_53;
          }
        }

        v31 = 0.0;
        goto LABEL_52;
      }

      v20 = v25;
    }

LABEL_54:
    sub_21DEAD408(v34);
    sub_21DEAD408(&v35);
    if (!v20)
    {
      return 0;
    }

    v2 = a2;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(a1 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_61:
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  sub_21DEC72F0();
  MEMORY[0x223D4B2A0](0xD000000000000013, 0x800000021DEDA620);
  sub_21DEC73C0();
  MEMORY[0x223D4B2A0](0x65646E7520736920, 0xED000064656E6966);
  result = sub_21DEC73F0();
  __break(1u);
  return result;
}

uint64_t sub_21DEAC704(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  v4 = a2 + 32;
  while (1)
  {
    sub_21DEA7FD8(v3, v18);
    sub_21DEA7FD8(v4, v17);
    sub_21DE5C6E4(v18, v16, &qword_27CE94C50, &qword_21DED49A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
    if (!swift_dynamicCast())
    {
      break;
    }

    sub_21DE5C6E4(v17, v16, &qword_27CE94C50, &qword_21DED49A0);
    if (swift_dynamicCast())
    {
      v5 = LOBYTE(v14);
      if (LOBYTE(v14) != 2)
      {
        v6 = 1;
        goto LABEL_45;
      }

      goto LABEL_15;
    }

    if (LOBYTE(v14) == 2)
    {
      v5 = 2;
LABEL_15:
      v6 = v5 == 2;
      goto LABEL_45;
    }

    v6 = 0;
LABEL_45:
    sub_21DEAD408(v17);
    sub_21DEAD408(v18);
    if (v6)
    {
      v3 += 32;
      v4 += 32;
      if (--v2)
      {
        continue;
      }
    }

    return v6;
  }

  sub_21DE5C6E4(v18, v16, &qword_27CE94C50, &qword_21DED49A0);
  if (swift_dynamicCast())
  {
    sub_21DE5C6E4(v17, v16, &qword_27CE94C50, &qword_21DED49A0);
    v7 = swift_dynamicCast();
    v8 = v14;
    if (!v7)
    {
      v8 = 0.0;
    }

    v9 = *&v14 == *&v8;
LABEL_20:
    if (v9)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_45;
  }

  sub_21DE5C6E4(v18, v16, &qword_27CE94C50, &qword_21DED49A0);
  if (swift_dynamicCast())
  {
    sub_21DE5C6E4(v17, v16, &qword_27CE94C50, &qword_21DED49A0);
    v7 = swift_dynamicCast();
    v10 = v14;
    if (!v7)
    {
      v10 = 0.0;
    }

    v9 = v14 == v10;
    goto LABEL_20;
  }

  v11 = sub_21DEAAD58(v18, v17);
  if (v11 != 2)
  {
    v6 = v11;
    goto LABEL_45;
  }

  sub_21DE5C6E4(v18, v16, &qword_27CE94C50, &qword_21DED49A0);
  if (swift_dynamicCast())
  {
    sub_21DE5C6E4(v17, v16, &qword_27CE94C50, &qword_21DED49A0);
    if (swift_dynamicCast())
    {
      if (v15)
      {
        v6 = 1;
LABEL_36:

LABEL_44:

        goto LABEL_45;
      }
    }

    else
    {
      v14 = 0.0;
      v15 = 0;
    }

    v6 = 0;
    goto LABEL_36;
  }

  sub_21DE5C6E4(v18, v16, &qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C68, &unk_21DED49B0);
  if (swift_dynamicCast())
  {
    sub_21DE5C6E4(v17, v16, &qword_27CE94C50, &qword_21DED49A0);
    if (swift_dynamicCast())
    {
      if (v14 != 0.0)
      {

        v12 = sub_21DEAC704(*&v14, *&v14);
LABEL_41:
        v6 = v12;

        goto LABEL_44;
      }

      goto LABEL_43;
    }

    goto LABEL_42;
  }

  sub_21DE5C6E4(v18, v16, &qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94448, &qword_21DED0E80);
  if (swift_dynamicCast())
  {
    sub_21DE5C6E4(v17, v16, &qword_27CE94C50, &qword_21DED49A0);
    if (swift_dynamicCast())
    {
      if (v14 != 0.0)
      {

        v12 = sub_21DEAC078(*&v14, *&v14);
        goto LABEL_41;
      }

LABEL_43:

      v6 = 0;
      goto LABEL_44;
    }

LABEL_42:
    v14 = 0.0;
    goto LABEL_43;
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_21DEC72F0();
  MEMORY[0x223D4B2A0](0xD000000000000013, 0x800000021DEDA620);
  sub_21DEC73C0();
  MEMORY[0x223D4B2A0](0x65646E7520736920, 0xED000064656E6966);
  result = sub_21DEC73F0();
  __break(1u);
  return result;
}

uint64_t sub_21DEACCC0(uint64_t a1, uint64_t a2)
{
  sub_21DE5C6E4(a1, v12, &qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
  if (swift_dynamicCast())
  {
    sub_21DE5C6E4(a2, v12, &qword_27CE94C50, &qword_21DED49A0);
    if (swift_dynamicCast())
    {
      v4 = v10;
      if (v10 != 2)
      {
        LOBYTE(v5) = 1;
        return v5 & 1;
      }
    }

    else
    {
      if (v10 != 2)
      {
        LOBYTE(v5) = 0;
        return v5 & 1;
      }

      v4 = 2;
    }

    LOBYTE(v5) = v4 == 2;
    return v5 & 1;
  }

  sub_21DE5C6E4(a1, v12, &qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
  if (swift_dynamicCast())
  {
    sub_21DE5C6E4(a2, v12, &qword_27CE94C50, &qword_21DED49A0);
    v5 = swift_dynamicCast();
    v6 = v10;
    if (!v5)
    {
      v6 = 0;
    }

    if (v10 != v6)
    {
      LOBYTE(v5) = 0;
    }

    return v5 & 1;
  }

  sub_21DE5C6E4(a1, v12, &qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v5) = sub_21DEAAD58(a1, a2);
    if (v5 != 2)
    {
      return v5 & 1;
    }

    sub_21DE5C6E4(a1, v12, &qword_27CE94C50, &qword_21DED49A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
    if (swift_dynamicCast())
    {
      sub_21DE5C6E4(a2, v12, &qword_27CE94C50, &qword_21DED49A0);
      v8 = (swift_dynamicCast() & 1) != 0 && v11;
      goto LABEL_34;
    }

    sub_21DE5C6E4(a1, v12, &qword_27CE94C50, &qword_21DED49A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C68, &unk_21DED49B0);
    if (swift_dynamicCast())
    {
      sub_21DE5C6E4(a2, v12, &qword_27CE94C50, &qword_21DED49A0);
      if ((swift_dynamicCast() & 1) != 0 && *&v10 != 0.0)
      {

        v8 = sub_21DEAC704(v10, v10);

LABEL_34:

        LOBYTE(v5) = v8;
        return v5 & 1;
      }
    }

    else
    {
      LOBYTE(v5) = sub_21DEAB314(a1, a2);
      if (v5 != 2)
      {
        return v5 & 1;
      }

      v12[0] = 0;
      v12[1] = 0xE000000000000000;
      sub_21DEC72F0();
      MEMORY[0x223D4B2A0](0xD000000000000013, 0x800000021DEDA620);
      sub_21DEC73C0();
      MEMORY[0x223D4B2A0](0x65646E7520736920, 0xED000064656E6966);
      sub_21DEC73F0();
      __break(1u);
    }

    v8 = 0;
    goto LABEL_34;
  }

  sub_21DE5C6E4(a2, v12, &qword_27CE94C50, &qword_21DED49A0);
  v5 = swift_dynamicCast();
  v7 = *&v10;
  if (!v5)
  {
    v7 = 0.0;
  }

  if (*&v10 != v7)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

_OWORD *sub_21DEAD1D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21DEAD1E0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94448, &qword_21DED0E80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21DEAD264()
{
  result = qword_27CE94C88;
  if (!qword_27CE94C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94C88);
  }

  return result;
}

uint64_t sub_21DEAD2B8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94C68, &unk_21DED49B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21DEAD348(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_21DEAD3A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_21DEAD438(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21DEC6950();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t JSONSchemaError.errorDescription.getter()
{
  sub_21DEAD780(v0, &v15);
  v2 = v15;
  v1 = v16;
  if (v19 <= 1u)
  {
    if (!v19)
    {
      v14[0] = v17;
      v14[1] = v18;
      v11[0] = 0;
      v11[1] = 0xE000000000000000;
      sub_21DEC72F0();

      v12 = 0xD000000000000015;
      v13 = 0x800000021DEDA770;
      MEMORY[0x223D4B2A0](v2, v1);

      MEMORY[0x223D4B2A0](0xD000000000000013, 0x800000021DEDA790);
      sub_21DE5C6E4(v14, v11, &qword_27CE94C50, &qword_21DED49A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
      v3 = sub_21DEC6E10();
      MEMORY[0x223D4B2A0](v3);

      v4 = v12;
      sub_21DE5CD00(v14, &qword_27CE94C50, &qword_21DED49A0);
      return v4;
    }

    sub_21DEC72F0();

    *&v14[0] = 0xD000000000000015;
    *(&v14[0] + 1) = 0x800000021DEDA750;
    MEMORY[0x223D4B2A0](v2, v1);
    goto LABEL_13;
  }

  if (v19 == 2)
  {
    v6 = v17.i64[0];
    sub_21DEC72F0();

    *&v14[0] = 0xD000000000000020;
    *(&v14[0] + 1) = 0x800000021DEDA720;
    v7 = sub_21DEC7150();
    v9 = v8;

    MEMORY[0x223D4B2A0](v7, v9);

    MEMORY[0x223D4B2A0](0x656A626F206E6920, 0xEB00000000207463);
    MEMORY[0x223D4B2A0](v1, v6);
LABEL_13:

    return *&v14[0];
  }

  if (v19 == 3)
  {
    sub_21DEC72F0();

    *&v14[0] = v2;
    *(&v14[0] + 1) = v1;
    MEMORY[0x223D4B2A0](0xD000000000000014, 0x800000021DEDA700);
    return *&v14[0];
  }

  v10 = vorrq_s8(v17, v18);
  if (*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | v16 | v15)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x2064696C61766E49;
  }
}

char *JSONSchema.rawString.getter()
{
  v1 = sub_21DEC6E00();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DEC6730();
  swift_allocObject();
  sub_21DEC6720();
  type metadata accessor for JSONSchema(0);
  sub_21DEB5F2C(&qword_27CE94CB0, type metadata accessor for JSONSchema, &protocol conformance descriptor for JSONSchema);
  v4 = sub_21DEC6710();
  if (!v0)
  {
    v6 = v4;
    v7 = v5;
    sub_21DEC6DF0();
    v3 = sub_21DEC6DD0();
    sub_21DE5636C(v6, v7);
  }

  return v3;
}

uint64_t JSONSchema.init(data:currentDirectory:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v32 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_21DEC73E0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  sub_21DEC66C0();
  swift_allocObject();
  sub_21DEC66B0();
  if (qword_27CEA3410 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_27CEA6720);
  v16 = *(v9 + 16);
  v16(v14, v15, v8);
  v27 = a3;
  sub_21DE5C6E4(a3, v7, &qword_27CE93F60, qword_21DECD138);
  v17 = sub_21DEC6880();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_21DE5CD00(v7, &qword_27CE93F60, qword_21DECD138);
    v30 = 0u;
    v31 = 0u;
  }

  else
  {
    *(&v31 + 1) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
    (*(v18 + 32))(boxed_opaque_existential_1, v7, v17);
  }

  v20 = sub_21DEC66A0();
  sub_21DEADD1C(&v30, v14);
  v20(v29, 0);
  if (qword_27CEA3418 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v8, qword_27CEA6738);
  v16(v12, v21, v8);
  *(&v31 + 1) = sub_21DEC6950();
  __swift_allocate_boxed_opaque_existential_1(&v30);
  sub_21DEC6940();
  v22 = sub_21DEC66A0();
  sub_21DEADD1C(&v30, v12);
  v22(v29, 0);
  type metadata accessor for JSONSchema(0);
  sub_21DEB5F2C(&qword_27CE94CB8, type metadata accessor for JSONSchema, &protocol conformance descriptor for JSONSchema);
  v23 = v28;
  v24 = v32;
  sub_21DEC6690();
  sub_21DE5CD00(v27, &qword_27CE93F60, qword_21DECD138);

  return sub_21DE5636C(v23, v24);
}

uint64_t sub_21DEADD1C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_21DEAD1D0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_21DEB6A80(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_21DEC73E0();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_21DE5CD00(a1, &qword_27CE94E60, &qword_21DED5E70);
    sub_21DEB5F74(a2, v9);
    v7 = sub_21DEC73E0();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_21DE5CD00(v9, &qword_27CE94E60, &qword_21DED5E70);
  }

  return result;
}

uint64_t JSONSchema.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_21DEC6890();
  if (v2)
  {
    v10 = sub_21DEC6880();
    return (*(*(v10 - 8) + 8))(a1, v10);
  }

  else
  {
    v12 = v8;
    v13 = v9;
    sub_21DEC6840();
    v14 = sub_21DEC6880();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v7, 0, 1, v14);
    JSONSchema.init(data:currentDirectory:)(v12, v13, v7, a2);
    return (*(v15 + 8))(a1, v14);
  }
}

uint64_t JSONSchema.validate(jsonData:)(uint64_t a1, uint64_t a2)
{
  sub_21DEC66C0();
  swift_allocObject();
  sub_21DEC66B0();
  sub_21DE834A4();
  sub_21DEC6690();

  if (!v2)
  {
    sub_21DEAE078(v4);
    return sub_21DEAD408(v4);
  }

  return result;
}

uint64_t sub_21DEAE078(uint64_t a1)
{
  v127 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v119 - v3;
  v5 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for JSONSchema.SchemaType.ObjectSchema(0);
  MEMORY[0x28223BE20](v11 - 8);
  v126 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for JSONSchema(0);
  v125 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v124 = &v119 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v119 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v119 - v22;
  v24 = type metadata accessor for JSONSchema.SchemaType.ArraySchema(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + 96);
  v28 = v27 >> 61;
  if ((v27 >> 61) <= 3)
  {
    if (v28 <= 1)
    {
      v29 = v127;
      v30 = v128;
      if (!v28)
      {
        v31 = swift_projectBox();
        sub_21DEBABEC(v31, v26, type metadata accessor for JSONSchema.SchemaType.ArraySchema);
        sub_21DE5C6E4(v29, &v130, &qword_27CE94C50, &qword_21DED49A0);
        if (v133)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C68, &unk_21DED49B0);
          if (swift_dynamicCast())
          {
            v32 = v129;
            result = sub_21DEBABEC(v26, v23, type metadata accessor for JSONSchema);
            v34 = *(v32 + 16);
            if (v34)
            {
              v35 = 0;
              v36 = v32 + 32;
              while (v35 < *(v32 + 16))
              {
                sub_21DEA7FD8(v36, &v130);
                sub_21DEAE078(&v130);
                if (v30)
                {

                  sub_21DEAD408(&v130);
                  goto LABEL_96;
                }

                ++v35;
                result = sub_21DEAD408(&v130);
                v36 += 32;
                if (v34 == v35)
                {
                  goto LABEL_11;
                }
              }

              goto LABEL_107;
            }

LABEL_11:

LABEL_96:
            sub_21DEBB17C(v26, type metadata accessor for JSONSchema.SchemaType.ArraySchema);
            v68 = type metadata accessor for JSONSchema;
            v69 = v23;
            return sub_21DEBB17C(v69, v68);
          }
        }

        else
        {
          sub_21DE5CD00(&v130, &qword_27CE94C50, &qword_21DED49A0);
        }

        sub_21DEBAE00();
        swift_allocError();
        v67 = v66;
        *v66 = 0x7961727261206E61;
        v66[1] = 0xE800000000000000;
        sub_21DE5C6E4(v29, (v66 + 2), &qword_27CE94C50, &qword_21DED49A0);
        *(v67 + 48) = 0;
        swift_willThrow();
        v68 = type metadata accessor for JSONSchema.SchemaType.ArraySchema;
        v69 = v26;
        return sub_21DEBB17C(v69, v68);
      }

      sub_21DE5C6E4(v127, &v130, &qword_27CE94C50, &qword_21DED49A0);
      if (v133)
      {
        result = swift_dynamicCast();
        if (result)
        {
          return result;
        }
      }

      else
      {
        sub_21DE5CD00(&v130, &qword_27CE94C50, &qword_21DED49A0);
      }

      sub_21DEBAE00();
      swift_allocError();
      v63 = v72;
      v73 = 0x61656C6F6F622061;
      v74 = 0xE90000000000006ELL;
      goto LABEL_63;
    }

    v29 = v127;
    if (v28 == 2)
    {
      sub_21DE5C6E4(v127, &v130, &qword_27CE94C50, &qword_21DED49A0);
      if (v133)
      {
        result = swift_dynamicCast();
        if (result)
        {
          return result;
        }
      }

      else
      {
        sub_21DE5CD00(&v130, &qword_27CE94C50, &qword_21DED49A0);
      }

      sub_21DEBAE00();
      swift_allocError();
      v63 = v72;
      v73 = 0x6765746E69206E61;
      v74 = 0xEA00000000007265;
      goto LABEL_63;
    }

    sub_21DE5C6E4(v127, &v130, &qword_27CE94C50, &qword_21DED49A0);
    if (v133)
    {
      result = swift_dynamicCast();
      if (result)
      {
        return result;
      }
    }

    else
    {
      sub_21DE5CD00(&v130, &qword_27CE94C50, &qword_21DED49A0);
    }

    sub_21DE5C6E4(v29, &v130, &qword_27CE94C50, &qword_21DED49A0);
    if (v133)
    {
      result = swift_dynamicCast();
      if (result)
      {
        return result;
      }
    }

    else
    {
      sub_21DE5CD00(&v130, &qword_27CE94C50, &qword_21DED49A0);
    }

    sub_21DEBAE00();
    swift_allocError();
    v63 = v72;
    v73 = 0x7265626D756E2061;
LABEL_62:
    v74 = 0xE800000000000000;
LABEL_63:
    *v72 = v73;
    v72[1] = v74;
    v64 = (v72 + 2);
    v65 = v29;
    goto LABEL_64;
  }

  if (v28 > 5)
  {
    if (v28 != 6)
    {
      v60 = v127;
      sub_21DE5C6E4(v127, &v130, &qword_27CE94C50, &qword_21DED49A0);
      v61 = v133;
      result = sub_21DE5CD00(&v130, &qword_27CE94C50, &qword_21DED49A0);
      if (!v61)
      {
        return result;
      }

      sub_21DEBAE00();
      swift_allocError();
      v63 = v62;
      *v62 = 1819047278;
      v62[1] = 0xE400000000000000;
      v64 = (v62 + 2);
      v65 = v60;
LABEL_64:
      sub_21DE5C6E4(v65, v64, &qword_27CE94C50, &qword_21DED49A0);
      *(v63 + 48) = 0;
      return swift_willThrow();
    }

    v29 = v127;
    sub_21DE5C6E4(v127, &v130, &qword_27CE94C50, &qword_21DED49A0);
    if (v133)
    {
      if (swift_dynamicCast())
      {
      }
    }

    else
    {
      sub_21DE5CD00(&v130, &qword_27CE94C50, &qword_21DED49A0);
    }

    sub_21DEBAE00();
    swift_allocError();
    v63 = v72;
    v73 = 0x676E697274732061;
    goto LABEL_62;
  }

  if (v28 != 4)
  {
    v55 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v54 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    v56 = *sub_21DEBD51C();
    v57 = sub_21DEC6880();
    (*(*(v57 - 8) + 56))(v4, 1, 1, v57);
    v58 = *(*v56 + 128);

    v59 = v128;
    v58(v55, v54, v4);
    if (v59)
    {
      sub_21DE5CD00(v4, &qword_27CE93F60, qword_21DECD138);
    }

    sub_21DE5CD00(v4, &qword_27CE93F60, qword_21DECD138);

    sub_21DEAE078(v127);
    v68 = type metadata accessor for JSONSchema;
    v69 = v16;
    return sub_21DEBB17C(v69, v68);
  }

  v37 = swift_projectBox();
  v38 = v126;
  sub_21DEBABEC(v37, v126, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
  v39 = v127;
  sub_21DE5C6E4(v127, &v130, &qword_27CE94C50, &qword_21DED49A0);
  if (!v133)
  {
    sub_21DE5CD00(&v130, &qword_27CE94C50, &qword_21DED49A0);
    goto LABEL_48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94448, &qword_21DED0E80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_48:
    sub_21DEBAE00();
    swift_allocError();
    v71 = v70;
    *v70 = 0x63656A626F206E61;
    v70[1] = 0xE900000000000074;
    sub_21DE5C6E4(v39, (v70 + 2), &qword_27CE94C50, &qword_21DED49A0);
    *(v71 + 48) = 0;
    swift_willThrow();
    v68 = type metadata accessor for JSONSchema.SchemaType.ObjectSchema;
    v69 = v38;
    return sub_21DEBB17C(v69, v68);
  }

  v40 = v129;
  sub_21DEBABEC(v38, v10, type metadata accessor for JSONSchema.SchemaType.ObjectType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v127 = v40;
  if (EnumCaseMultiPayload == 1)
  {
    sub_21DEBAC74(v10, v7, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
    v42 = v40 + 64;
    v43 = 1 << *(v40 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v40 + 64);
    v46 = (v43 + 63) >> 6;

    v47 = 0;
    if (v45)
    {
      while (1)
      {
        v48 = v47;
LABEL_24:
        v49 = __clz(__rbit64(v45)) | (v48 << 6);
        v50 = (*(v127 + 48) + 16 * v49);
        v51 = *v50;
        v52 = v50[1];
        sub_21DEA7FD8(*(v127 + 56) + 32 * v49, &v132);
        v130 = v51;
        v131 = v52;

        v53 = v128;
        sub_21DEAE078(&v132);
        v128 = v53;
        if (v53)
        {
          break;
        }

        v45 &= v45 - 1;
        result = sub_21DE5CD00(&v130, &qword_27CE94E50, &unk_21DED5E58);
        v47 = v48;
        if (!v45)
        {
          goto LABEL_21;
        }
      }

      sub_21DE5CD00(&v130, &qword_27CE94E50, &unk_21DED5E58);
LABEL_92:
      sub_21DEBB17C(v126, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);

      return sub_21DEBB17C(v7, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
    }

LABEL_21:
    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v48 >= v46)
      {

        goto LABEL_92;
      }

      v45 = *(v42 + 8 * v48);
      ++v47;
      if (v45)
      {
        goto LABEL_24;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    return result;
  }

  v75 = *v10;
  v123 = v10[1];
  v121 = v10[2];
  v76 = 1 << *(v75 + 32);
  v77 = -1;
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  v78 = v77 & *(v75 + 64);
  v79 = (v76 + 63) >> 6;

  v80 = 0;
  v122 = MEMORY[0x277D84F90];
  while (1)
  {
    v81 = v80;
    if (!v78)
    {
      break;
    }

LABEL_72:
    v82 = (*(v75 + 48) + ((v80 << 10) | (16 * __clz(__rbit64(v78)))));
    v84 = *v82;
    v83 = v82[1];
    v78 &= v78 - 1;
    v130 = *v82;
    v131 = v83;
    MEMORY[0x28223BE20](result);
    *(&v119 - 2) = &v130;

    v85 = v128;
    v86 = sub_21DE53140(sub_21DE821E8, (&v119 - 4), v123);
    v128 = v85;
    if (v86)
    {
      v87 = v122;
      result = swift_isUniquelyReferenced_nonNull_native();
      v134 = v87;
      if ((result & 1) == 0)
      {
        result = sub_21DE52560(0, *(v87 + 16) + 1, 1);
        v87 = v134;
      }

      v89 = *(v87 + 16);
      v88 = *(v87 + 24);
      v90 = v89 + 1;
      if (v89 >= v88 >> 1)
      {
        v122 = v89 + 1;
        v120 = v89;
        result = sub_21DE52560((v88 > 1), v89 + 1, 1);
        v90 = v122;
        v89 = v120;
        v87 = v134;
      }

      *(v87 + 16) = v90;
      v122 = v87;
      v91 = v87 + 16 * v89;
      *(v91 + 32) = v84;
      *(v91 + 40) = v83;
    }

    else
    {
    }
  }

  while (1)
  {
    v80 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      __break(1u);
      goto LABEL_105;
    }

    if (v80 >= v79)
    {
      break;
    }

    v78 = *(v75 + 64 + 8 * v80);
    ++v81;
    if (v78)
    {
      goto LABEL_72;
    }
  }

  v92 = sub_21DEB9B28(v122);

  v93 = v127;
  v95 = v127 + 64;
  v94 = *(v127 + 64);
  v129 = v92;
  v96 = 1 << *(v127 + 32);
  v97 = -1;
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  v98 = v97 & v94;
  v99 = (v96 + 63) >> 6;

  v100 = 0;
  if (!v98)
  {
LABEL_83:
    while (1)
    {
      v101 = v100 + 1;
      if (__OFADD__(v100, 1))
      {
        goto LABEL_106;
      }

      if (v101 >= v99)
      {

        v112 = v129;
        if (*(v129 + 16))
        {
          sub_21DEBAE00();
          swift_allocError();
          v114 = v113;

          v115 = sub_21DEC6D40();
          v117 = v116;

          *v114 = v112;
          *(v114 + 8) = v115;
          *(v114 + 16) = v117;
          *(v114 + 48) = 2;
          swift_willThrow();
          sub_21DEBB17C(v126, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
        }

        else
        {
          sub_21DEBB17C(v126, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
        }
      }

      v98 = *(v95 + 8 * v101);
      ++v100;
      if (v98)
      {
        goto LABEL_86;
      }
    }
  }

  while (1)
  {
    v101 = v100;
LABEL_86:
    v102 = __clz(__rbit64(v98)) | (v101 << 6);
    v103 = *(v93 + 56);
    v104 = (*(v93 + 48) + 16 * v102);
    v106 = *v104;
    v105 = v104[1];
    sub_21DEA7FD8(v103 + 32 * v102, &v132);
    v130 = v106;
    v131 = v105;
    v107 = *(v75 + 16);

    if (!v107 || (v108 = sub_21DE7ADAC(v106, v105), (v109 & 1) == 0))
    {
      sub_21DEBAE00();
      swift_allocError();
      *v118 = v106;
      *(v118 + 8) = v105;
      *(v118 + 48) = 1;
      swift_willThrow();

      goto LABEL_103;
    }

    v110 = v124;
    sub_21DEBABEC(*(v75 + 56) + *(v125 + 72) * v108, v124, type metadata accessor for JSONSchema);
    sub_21DEBAC74(v110, v21, type metadata accessor for JSONSchema);
    v111 = v128;
    sub_21DEAE078(&v132);
    v128 = v111;
    if (v111)
    {
      break;
    }

    v98 &= v98 - 1;
    sub_21DEB8274(v106, v105);

    sub_21DEBB17C(v21, type metadata accessor for JSONSchema);
    result = sub_21DE5CD00(&v130, &qword_27CE94E50, &unk_21DED5E58);
    v100 = v101;
    v93 = v127;
    if (!v98)
    {
      goto LABEL_83;
    }
  }

  sub_21DEBB17C(v21, type metadata accessor for JSONSchema);
LABEL_103:

  sub_21DE5CD00(&v130, &qword_27CE94E50, &unk_21DED5E58);
  sub_21DEBB17C(v126, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
}

uint64_t sub_21DEAF1EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x656C746974;
  v6 = 0xE700000000000000;
  v7 = 0x6E6F6973726576;
  if (a1 != 4)
  {
    v7 = 0x7470697263736564;
    v6 = 0xEB000000006E6F69;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x616D6568637324;
  if (a1 != 1)
  {
    v9 = 0x746E656D6D6F6324;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 6580516;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x656C746974)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E6F6973726576)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB000000006E6F69;
      if (v10 != 0x7470697263736564)
      {
LABEL_34:
        v13 = sub_21DEC7610();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x616D6568637324)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x746E656D6D6F6324)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v10 != 6580516)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_21DEAF3DC(unsigned __int8 a1)
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEAF4E0(uint64_t a1)
{
  sub_21DEC6E90();
}

uint64_t sub_21DEAF5D4(uint64_t a1, unsigned __int8 a2)
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

unint64_t sub_21DEAF6D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21DEB9CA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21DEAF704(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6580516;
  v5 = 0xE500000000000000;
  v6 = 0x656C746974;
  v7 = 0xE700000000000000;
  v8 = 0x6E6F6973726576;
  if (v2 != 4)
  {
    v8 = 0x7470697263736564;
    v7 = 0xEB000000006E6F69;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x616D6568637324;
  if (v2 != 1)
  {
    v10 = 0x746E656D6D6F6324;
    v9 = 0xE800000000000000;
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

uint64_t sub_21DEAF7C0()
{
  v1 = *v0;
  v2 = 6580516;
  v3 = 0x656C746974;
  v4 = 0x6E6F6973726576;
  if (v1 != 4)
  {
    v4 = 0x7470697263736564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x616D6568637324;
  if (v1 != 1)
  {
    v5 = 0x746E656D6D6F6324;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t sub_21DEAF878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DEB9CA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DEAF8A0(uint64_t a1)
{
  v2 = sub_21DEB9CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEAF8DC(uint64_t a1)
{
  v2 = sub_21DEB9CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEAF918(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94CC0, &qword_21DED4AA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEB9CF4();
  sub_21DEC7810();
  v8[15] = 0;
  sub_21DEC7540();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_21DEC7540();
  v8[13] = 2;
  sub_21DEC7540();
  v8[12] = 3;
  sub_21DEC7540();
  v8[11] = 4;
  sub_21DEC7540();
  v8[10] = 5;
  sub_21DEC7540();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21DEAFB18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_21DEB8574(v9, v10) & 1;
}

double sub_21DEAFB74@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_21DEB9D48(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_21DEAFBD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DEC6880();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v98 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E38, &qword_21DED5E40);
  MEMORY[0x28223BE20](v11);
  v13 = &v98 - v12;
  v14 = type metadata accessor for JSONSchema(0);
  v15 = *(v14 - 8);
  v127 = v14;
  v128 = v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v98 - v20);
  MEMORY[0x28223BE20](v19);
  v121 = &v98 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D40, &qword_21DED4AF0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v123 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v24);
  v122 = (&v98 - v27);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v111 = v11;
  v112 = v13;
  v106 = v10;
  v104 = v7;
  v113 = v4;
  v28 = 0;
  v29 = *(a1 + 64);
  v107 = a1 + 64;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v110 = (v5 + 48);
  v103 = (v5 + 32);
  v105 = (v5 + 8);
  v108 = v33;
  v109 = a1;
  v115 = a2;
  v34 = v123;
  if (v32)
  {
    do
    {
      v118 = (v32 - 1) & v32;
      v35 = __clz(__rbit64(v32)) | (v28 << 6);
LABEL_15:
      v40 = (*(a1 + 48) + 16 * v35);
      v42 = *v40;
      v41 = v40[1];
      v43 = v121;
      sub_21DEBABEC(*(a1 + 56) + *(v128 + 72) * v35, v121, type metadata accessor for JSONSchema);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D10, &unk_21DED4AD0);
      v45 = *(v44 + 48);
      *v34 = v42;
      v34[1] = v41;
      sub_21DEBAC74(v43, v34 + v45, type metadata accessor for JSONSchema);
      (*(*(v44 - 8) + 56))(v34, 0, 1, v44);

LABEL_16:
      v46 = v122;
      sub_21DE682A8(v34, v122, &qword_27CE94D40, &qword_21DED4AF0);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D10, &unk_21DED4AD0);
      v48 = 1;
      if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
      {
        return v48;
      }

      v49 = *v46;
      v50 = v46[1];
      sub_21DEBAC74(v46 + *(v47 + 48), v21, type metadata accessor for JSONSchema);
      v51 = v115;
      v52 = sub_21DE7ADAC(v49, v50);
      v54 = v53;

      if ((v54 & 1) == 0)
      {
        goto LABEL_75;
      }

      sub_21DEBABEC(*(v51 + 56) + *(v128 + 72) * v52, v18, type metadata accessor for JSONSchema);
      v55 = v18[1];
      v56 = v18[2];
      v58 = v18[3];
      v57 = v18[4];
      v60 = v18[5];
      v59 = v18[6];
      v62 = v18[7];
      v61 = v18[8];
      v63 = v18[9];
      v117 = v18[10];
      v125 = v18[11];
      v64 = v21[1];
      v65 = v21[2];
      v67 = v21[3];
      v66 = v21[4];
      v68 = v21[5];
      v69 = v21[6];
      v71 = v21[7];
      v70 = v21[8];
      v119 = v61;
      v120 = v70;
      v72 = v21[10];
      v126 = v21[9];
      v116 = v72;
      v124 = v21[11];
      if (v55)
      {
        if (!v64)
        {
          goto LABEL_74;
        }

        if (*v18 != *v21 || v55 != v64)
        {
          v102 = v62;
          v114 = v63;
          v101 = v71;
          v73 = v59;
          v74 = v69;
          v98 = v60;
          v75 = v57;
          v100 = v68;
          v76 = v66;
          v99 = v56;
          v77 = v65;
          v78 = sub_21DEC7610();
          v65 = v77;
          v56 = v99;
          v66 = v76;
          v68 = v100;
          v57 = v75;
          v60 = v98;
          v69 = v74;
          v59 = v73;
          v71 = v101;
          v63 = v114;
          v62 = v102;
          if ((v78 & 1) == 0)
          {
            goto LABEL_74;
          }
        }
      }

      else if (v64)
      {
        goto LABEL_74;
      }

      if (v58)
      {
        if (!v67)
        {
          goto LABEL_74;
        }

        if (v56 != v65 || v58 != v67)
        {
          v114 = v63;
          v79 = v59;
          v80 = v57;
          v81 = v68;
          v102 = v66;
          v82 = sub_21DEC7610();
          v66 = v102;
          v68 = v81;
          v57 = v80;
          v59 = v79;
          v63 = v114;
          if ((v82 & 1) == 0)
          {
            goto LABEL_74;
          }
        }
      }

      else if (v67)
      {
        goto LABEL_74;
      }

      if (v60)
      {
        if (!v68)
        {
          goto LABEL_74;
        }

        if (v57 != v66 || v60 != v68)
        {
          v83 = v63;
          v84 = v59;
          v85 = sub_21DEC7610();
          v59 = v84;
          v63 = v83;
          if ((v85 & 1) == 0)
          {
            goto LABEL_74;
          }
        }
      }

      else if (v68)
      {
        goto LABEL_74;
      }

      if (v62)
      {
        if (!v71)
        {
          goto LABEL_74;
        }

        if (v59 != v69 || v62 != v71)
        {
          v86 = v63;
          v87 = sub_21DEC7610();
          v63 = v86;
          if ((v87 & 1) == 0)
          {
            goto LABEL_74;
          }
        }
      }

      else if (v71)
      {
        goto LABEL_74;
      }

      if (v63)
      {
        if (!v126 || (v119 != v120 || v63 != v126) && (sub_21DEC7610() & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      else if (v126)
      {
        goto LABEL_74;
      }

      if (v125)
      {
        if (!v124 || (v117 != v116 || v125 != v124) && (sub_21DEC7610() & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      else if (v124)
      {
        goto LABEL_74;
      }

      if ((sub_21DEB9120(v18[12], v21[12]) & 1) == 0 || (sub_21DEAAD54() & 1) == 0 || (sub_21DEC6930() & 1) == 0)
      {
        goto LABEL_74;
      }

      v88 = *(v127 + 32);
      v89 = v112;
      v90 = *(v111 + 48);
      sub_21DE5C6E4(v18 + v88, v112, &qword_27CE93F60, qword_21DECD138);
      sub_21DE5C6E4(v21 + v88, v89 + v90, &qword_27CE93F60, qword_21DECD138);
      v91 = *v110;
      v92 = v113;
      if ((*v110)(v89, 1, v113) == 1)
      {
        if (v91(v89 + v90, 1, v92) != 1)
        {
          goto LABEL_73;
        }

        sub_21DE5CD00(v89, &qword_27CE93F60, qword_21DECD138);
      }

      else
      {
        v93 = v106;
        sub_21DE5C6E4(v89, v106, &qword_27CE93F60, qword_21DECD138);
        if (v91(v89 + v90, 1, v92) == 1)
        {
          (*v105)(v93, v92);
LABEL_73:
          sub_21DE5CD00(v89, &qword_27CE94E38, &qword_21DED5E40);
LABEL_74:
          sub_21DEBB17C(v18, type metadata accessor for JSONSchema);
LABEL_75:
          sub_21DEBB17C(v21, type metadata accessor for JSONSchema);
          return 0;
        }

        v94 = v104;
        (*v103)(v104, v89 + v90, v92);
        sub_21DEB5F2C(&qword_27CE94E40, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v95 = sub_21DEC6D70();
        v96 = *v105;
        (*v105)(v94, v92);
        v96(v93, v92);
        sub_21DE5CD00(v89, &qword_27CE93F60, qword_21DECD138);
        if ((v95 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      sub_21DEBB17C(v18, type metadata accessor for JSONSchema);
      result = sub_21DEBB17C(v21, type metadata accessor for JSONSchema);
      v33 = v108;
      a1 = v109;
      v32 = v118;
      v34 = v123;
    }

    while (v118);
  }

  if (v33 <= v28 + 1)
  {
    v36 = v28 + 1;
  }

  else
  {
    v36 = v33;
  }

  v37 = v36 - 1;
  while (1)
  {
    v38 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v38 >= v33)
    {
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D10, &unk_21DED4AD0);
      (*(*(v97 - 8) + 56))(v34, 1, 1, v97);
      v118 = 0;
      v28 = v37;
      goto LABEL_16;
    }

    v39 = *(v107 + 8 * v38);
    ++v28;
    if (v39)
    {
      v118 = (v39 - 1) & v39;
      v35 = __clz(__rbit64(v39)) | (v38 << 6);
      v28 = v38;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21DEB06B8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_21DE7ADAC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_21DEC7610();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21DEB085C(uint64_t result, uint64_t a2)
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
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21DEB08B8(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_21DEC7610() & 1) == 0)
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

uint64_t sub_21DEB0948(uint64_t result, uint64_t a2)
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

uint64_t sub_21DEB09A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_21DEB0A18(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_21DEAFBD8(*a1, *a2) & 1) == 0 || (sub_21DEB08B8(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_21DEB06B8(v3, v5);
}

uint64_t sub_21DEB0AA4()
{
  if (*v0)
  {
    return 0x736D65744978616DLL;
  }

  else
  {
    return 0x736D6574496E696DLL;
  }
}

uint64_t sub_21DEB0AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736D6574496E696DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736D65744978616DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DEB0BB4(uint64_t a1)
{
  v2 = sub_21DEBA2F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEB0BF0(uint64_t a1)
{
  v2 = sub_21DEBA2F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEB0CB8()
{
  if (*v0)
  {
    return 0x65706F725078616DLL;
  }

  else
  {
    return 0x65706F72506E696DLL;
  }
}

uint64_t sub_21DEB0CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65706F72506E696DLL && a2 == 0xED00007365697472;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65706F725078616DLL && a2 == 0xED00007365697472)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DEB0DDC(uint64_t a1)
{
  v2 = sub_21DEBA34C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEB0E18(uint64_t a1)
{
  v2 = sub_21DEBA34C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEB0F28()
{
  if (*v0)
  {
    return 0x74676E654C78616DLL;
  }

  else
  {
    return 0x74676E654C6E696DLL;
  }
}

uint64_t sub_21DEB0F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74676E654C6E696DLL && a2 == 0xE900000000000068;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74676E654C78616DLL && a2 == 0xE900000000000068)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DEB1044(uint64_t a1)
{
  v2 = sub_21DEBA570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEB1080(uint64_t a1)
{
  v2 = sub_21DEBA570();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEB10BC(void *a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v17[2] = a2;
  v18 = a5;
  v17[1] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8();
  sub_21DEC7810();
  v20 = 0;
  v15 = v17[3];
  sub_21DEC7570();
  if (!v15)
  {
    v19 = 1;
    sub_21DEC7570();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_21DEB129C@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  result = sub_21DEBA3A0(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    *(a6 + 8) = v9 & 1;
    *(a6 + 16) = v10;
    *(a6 + 24) = v11 & 1;
  }

  return result;
}

uint64_t sub_21DEB1330(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_21DEB139C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DEBA66C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DEB13C4(uint64_t a1)
{
  v2 = sub_21DEBA5C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEB1400(uint64_t a1)
{
  v2 = sub_21DEBA5C4();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_21DEB14C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_21DEB889C(v7, v9);
}

unint64_t sub_21DEB1520()
{
  v1 = *v0;
  v2 = 0x6D756D696E696DLL;
  v3 = 0xD000000000000010;
  v4 = 0x6D756D6978616DLL;
  if (v1 != 3)
  {
    v4 = 0x656C7069746C756DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21DEB15C8(uint64_t a1)
{
  v2 = sub_21DEBA618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEB1604(uint64_t a1)
{
  v2 = sub_21DEBA618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEB1640(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_21DEC7810();
  v18 = 0;
  v11 = v13[1];
  sub_21DEC7560();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v17 = 1;
  sub_21DEC7560();
  v16 = 2;
  sub_21DEC7560();
  v15 = 3;
  sub_21DEC7560();
  v14 = 4;
  sub_21DEC7560();
  return (*(v8 + 8))(v10, v7);
}

__n128 sub_21DEB1880@<Q0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a6@<X8>)
{
  sub_21DEBA838(a1, a2, a3, a4, v10);
  if (!v6)
  {
    v9 = v11[0];
    *(a6 + 32) = v10[2];
    *(a6 + 48) = v9;
    *(a6 + 57) = *(v11 + 9);
    result = v10[1];
    *a6 = v10[0];
    *(a6 + 16) = result;
  }

  return result;
}

BOOL sub_21DEB193C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_21DEB878C(v13, v14);
}

BOOL sub_21DEB19A4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_21DEB8970(v13, v14);
}

uint64_t sub_21DEB1A10(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21DEC7610();
  }
}

BOOL sub_21DEB1A40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_21DEB8A80(v7, v8);
}

unint64_t sub_21DEB1A9C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1701869940;
    v7 = 0xD000000000000014;
    v8 = 0x69747265706F7270;
    if (a1 != 3)
    {
      v8 = 0x6465726975716572;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x736D657469;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x746C7561666564;
    v2 = 0x73656C706D617865;
    if (a1 != 9)
    {
      v2 = 1836412517;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x616C707369642D78;
    v4 = 1717924388;
    if (a1 != 6)
    {
      v4 = 0x7366656424;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21DEB1BE8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21DEB1A9C(*a1);
  v5 = v4;
  if (v3 == sub_21DEB1A9C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DEC7610();
  }

  return v8 & 1;
}

uint64_t sub_21DEB1C70()
{
  v1 = *v0;
  sub_21DEC7770();
  sub_21DEB1A9C(v1);
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEB1CD4(uint64_t a1)
{
  sub_21DEB1A9C(*v1);
  sub_21DEC6E90();
}

uint64_t sub_21DEB1D28(uint64_t a1)
{
  v2 = *v1;
  sub_21DEC7770();
  sub_21DEB1A9C(v2);
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

unint64_t sub_21DEB1D88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21DEBAD30(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_21DEB1DB8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21DEB1A9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_21DEB1E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DEBAD30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DEB1E34(uint64_t a1)
{
  v2 = sub_21DEBAD7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEB1E70(uint64_t a1)
{
  v2 = sub_21DEBAD7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JSONSchema.init(from:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D10, &unk_21DED4AD0);
  MEMORY[0x28223BE20](v79);
  v78 = &v69 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C58, &qword_21DED49A8);
  MEMORY[0x28223BE20](v6 - 8);
  v81 = (&v69 - v7);
  v82 = sub_21DEC6950();
  v83 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D18, &qword_21DED4AE0);
  v84 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - v11;
  v13 = type metadata accessor for JSONSchema(0);
  v77 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_21DEBAD7C();
  v16 = v94;
  sub_21DEC77E0();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v74 = v9;
  v94 = v12;
  v75 = v10;
  sub_21DE5CC9C(a1, &v87);
  sub_21DEB9D48(&v87, v93);
  v18 = v93[3];
  v19 = v15;
  v15[2] = v93[2];
  v15[3] = v18;
  v20 = v93[5];
  v15[4] = v93[4];
  v15[5] = v20;
  v21 = v93[1];
  *v15 = v93[0];
  v15[1] = v21;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_21DEC77C0();
  __swift_project_boxed_opaque_existential_1(&v87, *(&v88 + 1));
  sub_21DE834A4();
  sub_21DEC7660();
  i = 0;
  v26 = v86;
  *(v15 + 104) = v85;
  *(v15 + 120) = v26;
  __swift_destroy_boxed_opaque_existential_0(&v87);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v27 = sub_21DEC77D0();
  v28 = v75;
  if (qword_27CEA3418 != -1)
  {
    swift_once();
  }

  v29 = sub_21DEC73E0();
  v30 = __swift_project_value_buffer(v29, qword_27CEA6738);
  v31 = v82;
  v32 = v74;
  v33 = v81;
  if (!*(v27 + 16) || (v34 = sub_21DEB6050(v30), (v35 & 1) == 0))
  {

    (*(v83 + 56))(v33, 1, 1, v31);
LABEL_17:
    sub_21DE5CD00(v33, &qword_27CE94C58, &qword_21DED49A8);
    sub_21DEBAE00();
    swift_allocError();
    *v45 = 1;
    *(v45 + 8) = 0u;
    *(v45 + 24) = 0u;
    *(v45 + 40) = 0;
    *(v45 + 48) = 4;
    swift_willThrow();
    (*(v84 + 8))(v94, v28);
    v22 = 0;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(a1);
    v23 = *(v19 + 48);
    v89 = *(v19 + 32);
    v90 = v23;
    v24 = *(v19 + 80);
    v91 = *(v19 + 64);
    v92 = v24;
    v25 = *(v19 + 16);
    v87 = *v19;
    v88 = v25;
    sub_21DEBADD0(&v87);
    result = sub_21DEAD408(v19 + 104);
    if (v22)
    {
      (*(v83 + 8))(v19 + *(v13 + 28), v82);
      return sub_21DE5CD00(v19 + *(v13 + 32), &qword_27CE93F60, qword_21DECD138);
    }

    return result;
  }

  sub_21DE56CD4(*(v27 + 56) + 32 * v34, &v87);

  v36 = swift_dynamicCast();
  v37 = v83;
  (*(v83 + 56))(v33, v36 ^ 1u, 1, v31);
  if ((*(v37 + 48))(v33, 1, v31) == 1)
  {
    goto LABEL_17;
  }

  (*(v37 + 32))(v32, v33, v31);
  (*(v37 + 16))(v19 + *(v13 + 28), v32, v31);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v38 = sub_21DEC77D0();
  if (qword_27CEA3410 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v39 = __swift_project_value_buffer(v29, qword_27CEA6720);
    v40 = v80;
    if (*(v38 + 16) && (v41 = sub_21DEB6050(v39), (v42 & 1) != 0))
    {
      sub_21DE56CD4(*(v38 + 56) + 32 * v41, &v87);

      v43 = sub_21DEC6880();
      v44 = swift_dynamicCast();
      (*(*(v43 - 8) + 56))(v40, v44 ^ 1u, 1, v43);
    }

    else
    {

      v46 = sub_21DEC6880();
      (*(*(v46 - 8) + 56))(v40, 1, 1, v46);
    }

    v47 = v82;
    sub_21DE682A8(v40, v19 + *(v13 + 32), &qword_27CE93F60, qword_21DECD138);
    v48 = v94;
    v49 = i;
    v50 = sub_21DEB2B9C(v94, a1, v32);
    v51 = v84;
    if (v49)
    {
      (*(v83 + 8))(v32, v47);
      (*(v51 + 8))(v48, v75);
      v22 = 1;
      goto LABEL_5;
    }

    *(v19 + 96) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D30, &qword_21DED4AE8);
    LOBYTE(v85) = 7;
    sub_21DEBAE54();
    sub_21DEC74E0();
    v38 = v83;
    if (!v87)
    {
      break;
    }

    v69 = a1;
    v52 = *(v87 + 64);
    v71 = v87 + 64;
    v53 = 1 << *(v87 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    a1 = v54 & v52;
    v70 = (v53 + 63) >> 6;
    v72 = v87;

    v55 = 0;
    v29 = v94;
    for (i = 0; a1; v29 = v94)
    {
      v56 = v55;
      v57 = v79;
      v32 = v78;
      v58 = v77;
LABEL_31:
      v59 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v60 = v59 | (v56 << 6);
      v61 = (*(v72 + 48) + 16 * v60);
      v62 = *v61;
      v63 = v61[1];
      v64 = v32 + *(v57 + 48);
      sub_21DEBABEC(*(v72 + 56) + *(v58 + 72) * v60, v64, type metadata accessor for JSONSchema);
      *v32 = v62;
      v32[1] = v63;

      v65 = sub_21DEBD51C();
      v66 = *(v13 + 28);
      v67 = **v65;
      v81 = *(v67 + 120);
      v80 = (v67 + 120);

      v81(v64, v62, v63, v64 + v66);

      sub_21DE5CD00(v32, &qword_27CE94D10, &unk_21DED4AD0);
      v47 = v82;
      v38 = v83;
    }

    v57 = v79;
    v32 = v78;
    v58 = v77;
    while (1)
    {
      v56 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v56 >= v70)
      {

        (*(v38 + 8))(v74, v47);
        (*(v84 + 8))(v29, v75);

        v68 = v76;
        a1 = v69;
        goto LABEL_35;
      }

      a1 = *(v71 + 8 * v56);
      ++v55;
      if (a1)
      {
        v55 = v56;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  (*(v83 + 8))(v32, v47);
  (*(v84 + 8))(v94, v75);
  v68 = v76;
LABEL_35:
  sub_21DEBABEC(v19, v68, type metadata accessor for JSONSchema);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21DEBB17C(v19, type metadata accessor for JSONSchema);
}

uint64_t sub_21DEB2B9C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v125 = a3;
  v6 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for JSONSchema(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v108 - v13;
  LOBYTE(v111) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D18, &qword_21DED4AE0);
  v15 = sub_21DEC74A0();
  if (v3)
  {
    return a1;
  }

  *&v110 = v12;
  v108 = v8;
  *(&v110 + 1) = a2;
  if (!v16)
  {
    LOBYTE(v111) = 6;
    v24 = sub_21DEC74A0();
    v26 = v25;
    if (v25)
    {
      v27 = v24;
      if (sub_21DEC6FD0())
      {
        *&v111 = sub_21DEC6920();
        *(&v111 + 1) = v28;

        MEMORY[0x223D4B2A0](47, 0xE100000000000000);

        MEMORY[0x223D4B2A0](v27, v26);

        v26 = *(&v111 + 1);
        v27 = v111;
      }

      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      *(v29 + 24) = v26;
      return v29 | 0xA000000000000000;
    }

    else
    {
      v41 = sub_21DEC7340();
      swift_allocError();
      v43 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94DD8, &qword_21DED5DF8);
      *(v43 + 24) = &type metadata for JSONSchema.CodingKeys;
      *(v43 + 32) = sub_21DEBAD7C();
      *v43 = 0;
      sub_21DEC7490();
      sub_21DEC7330();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84158], v41);
      swift_willThrow();
    }

    return a1;
  }

  v125 = 0;
  if (v15 == 0x7961727261 && v16 == 0xE500000000000000 || (v18 = v15, v109 = v16, (sub_21DEC7610() & 1) != 0))
  {

    LOBYTE(v111) = 1;
    sub_21DEB5F2C(&qword_27CE94CB8, type metadata accessor for JSONSchema, &protocol conformance descriptor for JSONSchema);
    v19 = v14;
    v20 = v125;
    sub_21DEC7510();
    if (!v20)
    {
      v21 = type metadata accessor for JSONSchema.SchemaType.ArraySchema(0);
      a1 = swift_allocBox();
      v125 = v22;
      v23 = v110;
      sub_21DEBABEC(v14, v110, type metadata accessor for JSONSchema);
      sub_21DE5CC9C(*(&v110 + 1), &v111);
      v33 = sub_21DEBA3A0(&v111, &qword_27CE94E28, &qword_21DED5E30, sub_21DEBA2F8, &type metadata for JSONSchema.SchemaType.ArrayValidations.CodingKeys);
      v35 = v34;
      v37 = v36;
      *(&v110 + 1) = v38;
      sub_21DEBB17C(v19, type metadata accessor for JSONSchema);
      v39 = v125;
      sub_21DEBAC74(v23, v125, type metadata accessor for JSONSchema);
      v40 = v39 + *(v21 + 20);
      *v40 = v33;
      *(v40 + 8) = v35 & 1;
      *(v40 + 16) = *(&v110 + 1);
      *(v40 + 24) = v37 & 1;
    }

    return a1;
  }

  if ((v18 != 0x6E61656C6F6F62 || v109 != 0xE700000000000000) && (sub_21DEC7610() & 1) == 0)
  {
    if (v18 == 0x72656765746E69 && v109 == 0xE700000000000000 || (sub_21DEC7610() & 1) != 0)
    {

      v45 = swift_allocObject();
      sub_21DE5CC9C(*(&v110 + 1), &v111);
      v46 = v125;
      sub_21DEBA838(&v111, &qword_27CE94E10, &qword_21DED5E18, sub_21DEBA5C4, &v117);
      if (v46)
      {
LABEL_24:
        a1 = v46;
LABEL_59:
        swift_deallocUninitializedObject();
        return a1;
      }

      LOBYTE(v111) = 8;
      v48 = sub_21DEC74D0();
      v51 = v50;
      *(&v110 + 1) = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D78, &qword_21DED4B18);
      LOBYTE(v116) = 9;
      sub_21DEBC7D8();
      sub_21DEC74E0();
      if (v111)
      {
        v52 = v111;
      }

      else
      {
        v52 = MEMORY[0x277D84F90];
      }

      LOBYTE(v111) = 10;
      sub_21DEC74E0();
      v125 = 0;
      v60 = v116;
      if (!v116 || (v61 = *(v116 + 16), v62 = , v63 = *(sub_21DEB9BC0(v62) + 16), , , v61 == v63))
      {
        v64 = v119;
        v113 = v119;
        v114[0] = v120[0];
        *(v114 + 9) = *(v120 + 9);
        v65 = v118;
        v111 = v117;
        v112 = v118;
        v115 = v51 & 1;
        *(v45 + 16) = v117;
        *(v45 + 32) = v65;
        v66 = v114[0];
        v67 = v114[1];
        *(v45 + 48) = v64;
        *(v45 + 64) = v66;
        *(v45 + 80) = v67;
        *(v45 + 96) = *(&v110 + 1);
        *(v45 + 104) = v51 & 1;
        a1 = v45 | 0x4000000000000000;
        *(v45 + 112) = v52;
        *(v45 + 120) = v60;
        return a1;
      }

      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_21DEC72F0();
      MEMORY[0x223D4B2A0](0xD000000000000038, 0x800000021DEDA7B0);
      v68 = MEMORY[0x223D4B400](v60, MEMORY[0x277D83B88]);
      v70 = v69;

      MEMORY[0x223D4B2A0](v68, v70);

      v72 = *(&v111 + 1);
      v71 = v111;
      sub_21DEBAB44();
    }

    else
    {
      v49 = *(&v110 + 1);
      if (v18 == 1819047278 && v109 == 0xE400000000000000 || (sub_21DEC7610() & 1) != 0)
      {

        return 0xE000000000000000;
      }

      if ((v18 != 0x7265626D756ELL || v109 != 0xE600000000000000) && (sub_21DEC7610() & 1) == 0)
      {
        if (v18 == 0x7463656A626FLL && v109 == 0xE600000000000000 || (sub_21DEC7610() & 1) != 0)
        {

          v56 = v108;
          v57 = v125;
          sub_21DEB3BE4(v49, v108);
          if (!v57)
          {
            type metadata accessor for JSONSchema.SchemaType.ObjectSchema(0);
            v58 = swift_allocBox();
            sub_21DEBAC74(v56, v59, type metadata accessor for JSONSchema.SchemaType.ObjectType);
            return v58 | 0x8000000000000000;
          }

          return a1;
        }

        if ((v18 != 0x676E69727473 || v109 != 0xE600000000000000) && (sub_21DEC7610() & 1) == 0)
        {
          sub_21DEBAE00();
          a1 = swift_allocError();
          v86 = v109;
          *v87 = v18;
          *(v87 + 8) = v86;
          *(v87 + 48) = 3;
          swift_willThrow();
          return a1;
        }

        v74 = swift_allocObject();
        sub_21DE5CC9C(*(&v110 + 1), &v111);
        v75 = v125;
        v125 = sub_21DEBA3A0(&v111, &qword_27CE94E18, &qword_21DED5E20, sub_21DEBA570, &type metadata for JSONSchema.SchemaType.StringValidations.CodingKeys);
        if (v75)
        {
          goto LABEL_59;
        }

        v79 = v76;
        v80 = v77;
        v81 = v78;
        LOBYTE(v111) = 8;
        *&v110 = sub_21DEC74A0();
        *(&v110 + 1) = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
        LOBYTE(v116) = 9;
        v109 = sub_21DEBC6A0();
        sub_21DEC74E0();
        v83 = v111;
        if (!v111)
        {
          v83 = MEMORY[0x277D84F90];
        }

        v108 = v83;
        LOBYTE(v111) = 10;
        v84 = sub_21DEC74E0();
        v100 = v116;
        if (v116 && *(&v110 + 1))
        {
          v111 = v110;
          MEMORY[0x28223BE20](v84);
          *(&v108 - 2) = &v111;

          if ((sub_21DE53140(sub_21DE821E8, (&v108 - 4), v100) & 1) == 0)
          {

            v102 = *(&v110 + 1);

            *&v111 = 0;
            *(&v111 + 1) = 0xE000000000000000;
            sub_21DEC72F0();
            MEMORY[0x223D4B2A0](0xD000000000000020, 0x800000021DEDA7F0);
            MEMORY[0x223D4B2A0](v110, v102);

            MEMORY[0x223D4B2A0](0xD000000000000039, 0x800000021DEDA820);
            v103 = MEMORY[0x223D4B400](v100, MEMORY[0x277D837D0]);
            v105 = v104;

            MEMORY[0x223D4B2A0](v103, v105);

            v106 = v111;
            sub_21DEBACDC();
            a1 = swift_allocError();
            *v107 = v106;
            swift_willThrow();
            goto LABEL_59;
          }
        }

        LOBYTE(v111) = v79 & 1;
        v115 = v81 & 1;
        *(v74 + 16) = v125;
        *(v74 + 24) = v79 & 1;
        *(v74 + 32) = v80;
        *(v74 + 40) = v81 & 1;
        v101 = *(&v110 + 1);
        *(v74 + 48) = v110;
        *(v74 + 56) = v101;
        a1 = v74 | 0xC000000000000000;
        *(v74 + 64) = v108;
        *(v74 + 72) = v100;
        return a1;
      }

      v53 = swift_allocObject();
      sub_21DE5CC9C(v49, &v111);
      v46 = v125;
      sub_21DEBA838(&v111, &qword_27CE94E08, &qword_21DED5E10, sub_21DEBA618, &v121);
      if (v46)
      {
        goto LABEL_24;
      }

      LOBYTE(v111) = 8;
      v54 = sub_21DEC74C0();
      DWORD2(v110) = v55;
      v125 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D68, &qword_21DED4B10);
      LOBYTE(v116) = 9;
      sub_21DEBC71C();
      sub_21DEC74E0();
      if (v111)
      {
        v85 = v111;
      }

      else
      {
        v85 = MEMORY[0x277D84F90];
      }

      LOBYTE(v111) = 10;
      sub_21DEC74E0();
      v88 = v116;
      if (!v116 || (v89 = *(v116 + 16), v90 = , v91 = *(sub_21DEB9C34(v90) + 16), , , v89 == v91))
      {
        v92 = v123;
        v113 = v123;
        v114[0] = v124[0];
        *(v114 + 9) = *(v124 + 9);
        v93 = v122;
        v111 = v121;
        v112 = v122;
        v94 = BYTE8(v110) & 1;
        v115 = BYTE8(v110) & 1;
        *(v53 + 16) = v121;
        *(v53 + 32) = v93;
        v95 = v114[0];
        v96 = v114[1];
        *(v53 + 48) = v92;
        *(v53 + 64) = v95;
        *(v53 + 80) = v96;
        *(v53 + 96) = v125;
        *(v53 + 104) = v94;
        a1 = v53 | 0x6000000000000000;
        *(v53 + 112) = v85;
        *(v53 + 120) = v88;
        return a1;
      }

      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_21DEC72F0();
      MEMORY[0x223D4B2A0](0xD000000000000038, 0x800000021DEDA7B0);
      v97 = MEMORY[0x223D4B400](v88, MEMORY[0x277D839F8]);
      v99 = v98;

      MEMORY[0x223D4B2A0](v97, v99);

      v72 = *(&v111 + 1);
      v71 = v111;
      sub_21DEBAB98();
    }

    a1 = swift_allocError();
    *v73 = v71;
    v73[1] = v72;
    swift_willThrow();
    goto LABEL_59;
  }

  v30 = swift_allocObject();
  LOBYTE(v111) = 8;
  v31 = v125;
  v32 = sub_21DEC74B0();
  if (v31)
  {
    goto LABEL_59;
  }

  v44 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D88, &qword_21DED4B20);
  LOBYTE(v116) = 9;
  sub_21DEBC854();
  sub_21DEC74E0();
  v47 = MEMORY[0x277D84F90];
  if (v111)
  {
    v47 = v111;
  }

  *(v30 + 16) = v44;
  *(v30 + 24) = v47;
  return v30 | 0x2000000000000000;
}

void *sub_21DEB3BE4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v34 = a2;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C20, &qword_21DED47C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for JSONSchema(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D30, &qword_21DED4AE8);
  v37 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D18, &qword_21DED4AE0);
  sub_21DEBAE54();
  result = sub_21DEC74E0();
  if (!v2)
  {
    v32 = v12;
    v33 = v10;
    v14 = v35;
    v15 = v36[0];
    if (v36[0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
      v37 = 4;
      sub_21DEBC6A0();
      sub_21DEC74E0();
      if (v36[0])
      {
        v17 = v36[0];
      }

      else
      {
        v17 = MEMORY[0x277D84F90];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D58, &qword_21DED4B08);
      v37 = 5;
      sub_21DEBC8D0(&qword_27CE94DF8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
      sub_21DEC74E0();
      v18 = v36[0];
      if (!v36[0])
      {
        v18 = sub_21DE98EB8(MEMORY[0x277D84F90]);
      }

      v19 = v34;
      *v34 = v15;
      v19[1] = v17;
      v19[2] = v18;
      type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      v36[0] = 2;
      sub_21DEB5F2C(&qword_27CE94CB8, type metadata accessor for JSONSchema, &protocol conformance descriptor for JSONSchema);
      sub_21DEC74E0();
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_21DE5CD00(v5, &qword_27CE94C20, &qword_21DED47C0);
        sub_21DEBAE00();
        swift_allocError();
        *v16 = 0u;
        *(v16 + 16) = 0u;
        *(v16 + 32) = 0u;
        *(v16 + 48) = 4;
        return swift_willThrow();
      }

      else
      {
        v20 = v32;
        sub_21DEBAC74(v5, v32, type metadata accessor for JSONSchema);
        v21 = v33;
        sub_21DEBABEC(v20, v33, type metadata accessor for JSONSchema);
        sub_21DE5CC9C(v14, v36);
        v22 = sub_21DEBA3A0(v36, &qword_27CE94E20, &qword_21DED5E28, sub_21DEBA34C, &type metadata for JSONSchema.SchemaType.ObjectValidations.CodingKeys);
        v24 = v23;
        v26 = v25;
        v28 = v27;
        sub_21DEBB17C(v20, type metadata accessor for JSONSchema);
        v29 = v34;
        sub_21DEBAC74(v21, v34, type metadata accessor for JSONSchema);
        v30 = v29 + *(type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0) + 20);
        *v30 = v22;
        v30[8] = v24 & 1;
        *(v30 + 2) = v26;
        v30[24] = v28 & 1;
        type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
        return swift_storeEnumTagMultiPayload();
      }
    }
  }

  return result;
}

uint64_t JSONSchema.encode(to:)(char *a1)
{
  v162 = type metadata accessor for JSONSchema(0);
  v164 = *(v162 - 8);
  v2 = MEMORY[0x28223BE20](v162);
  v160 = &v153 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v180 = &v153 - v5;
  MEMORY[0x28223BE20](v4);
  v167 = &v153 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D40, &qword_21DED4AF0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v166 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v165 = (&v153 - v10);
  v157 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  MEMORY[0x28223BE20](v157);
  v159 = (&v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  MEMORY[0x28223BE20](v161);
  v168 = (&v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for JSONSchema.SchemaType.ObjectSchema(0);
  MEMORY[0x28223BE20](v13 - 8);
  v163 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for JSONSchema.SchemaType.ArraySchema(0);
  MEMORY[0x28223BE20](v158);
  v16 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D48, &unk_21DED4AF8);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v153 - v19;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  sub_21DEBAD7C();
  v21 = v170;
  sub_21DEC7810();
  v22 = *(v21 + 48);
  v179[4] = *(v21 + 32);
  v179[5] = v22;
  v23 = *(v21 + 80);
  v179[6] = *(v21 + 64);
  v179[7] = v23;
  v24 = *(v21 + 16);
  v179[2] = *v21;
  v179[3] = v24;
  v25 = v169;
  sub_21DEAF918(a1);
  if (v25)
  {
    return (*(v18 + 8))(v20, v17);
  }

  v27 = v168;
  v28 = v163;
  v169 = a1;
  v155 = v17;
  v156 = v20;
  v154 = v18;
  v29 = *(v21 + 96);
  v30 = v29 >> 61;
  if ((v29 >> 61) > 3)
  {
    v32 = v169;
    if (v30 <= 5)
    {
      v158 = 0;
      if (v30 == 4)
      {
        v33 = swift_projectBox();
        a1 = v28;
        sub_21DEBABEC(v33, v28, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
        LOBYTE(v173) = 0;
        v35 = v155;
        v34 = v156;
        v36 = v158;
        sub_21DEC7590();
        if (v36)
        {
          sub_21DEBB17C(a1, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
          return (*(v154 + 8))(v34, v35);
        }

        sub_21DEBABEC(a1, v27, type metadata accessor for JSONSchema.SchemaType.ObjectType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v67 = v159;
          sub_21DEBAC74(v27, v159, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
          LOBYTE(v173) = 2;
          sub_21DEB5F2C(&qword_27CE94CB0, type metadata accessor for JSONSchema, &protocol conformance descriptor for JSONSchema);
          v68 = v155;
          sub_21DEC75D0();
          v69 = 0;
          goto LABEL_81;
        }

        v70 = v27[1];
        v71 = v27[2];
        v173 = *v27;
        LOBYTE(v171) = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D30, &qword_21DED4AE8);
        sub_21DEBAFAC();
        sub_21DEC75D0();
        if (*(v70 + 16))
        {
          v173 = v70;
          LOBYTE(v171) = 4;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
          sub_21DEBAF30();
          sub_21DEC75D0();
        }

        v158 = 0;
        if (*(v71 + 16))
        {
          v173 = v71;
          LOBYTE(v171) = 5;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D58, &qword_21DED4B08);
          sub_21DEBC8D0(&qword_27CE94D60, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
          v150 = v155;
          v151 = v156;
          v152 = v158;
          sub_21DEC75D0();
          v107 = v152;
          if (v152)
          {
            swift_bridgeObjectRelease_n();

            sub_21DEBB17C(a1, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
            return (*(v154 + 8))(v151, v150);
          }

LABEL_102:
          v158 = v107;
          swift_bridgeObjectRelease_n();

          goto LABEL_103;
        }

        sub_21DEBB17C(a1, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);

        goto LABEL_34;
      }

      v46 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v173 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v47 = v173;
      v174 = v46;
      swift_bridgeObjectRetain_n();
      v171 = sub_21DEC6920();
      v172 = v48;

      MEMORY[0x223D4B2A0](47, 0xE100000000000000);

      v50 = v171;
      v49 = v172;
      v51 = sub_21DEC6EA0();
      v52 = sub_21DEBB068(v51, v47, v46);
      v54 = v53;
      a1 = v55;
      v57 = v56;

      LOBYTE(v52) = sub_21DEBB104(v52, v54, a1, v57, v50, v49);

      if (v52)
      {
        v58 = sub_21DEC6EA0();

        sub_21DEB5BD8(v58);
        v171 = 35;
        v172 = 0xE100000000000000;
        MEMORY[0x223D4B2A0](v173, v174);
      }

      LOBYTE(v171) = 6;
      v64 = v155;
      v63 = v156;
      v65 = v158;
      sub_21DEC7590();
      v66 = v65;
      if (v65)
      {
        (*(v154 + 8))(v63, v64);
      }

      goto LABEL_33;
    }

    if (v30 != 6)
    {
      LOBYTE(v173) = 0;
      sub_21DEC7590();
      goto LABEL_29;
    }

    v168 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    LODWORD(v163) = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v161 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v43 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
    a1 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
    v44 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x48);
    LOBYTE(v173) = 0;

    sub_21DEC7590();
    v158 = a1;
    v159 = v44;
    LOBYTE(v173) = v163;
    LOBYTE(v171) = v43;
    sub_21DEB10BC(v169, v168, v163, v161, v43, &qword_27CE94CE0, &qword_21DED4AB8, sub_21DEBA570, &type metadata for JSONSchema.SchemaType.StringValidations.CodingKeys);
    LOBYTE(v173) = 8;
    sub_21DEC7540();
    v76 = v158;
    v77 = v159;

    if (v76[2])
    {
      v173 = v76;
      LOBYTE(v171) = 9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
      sub_21DEBAF30();
      sub_21DEC75D0();
    }

    v41 = v154;
    v42 = v155;
    v158 = 0;
    if (v77)
    {
      if (!*(v77 + 16))
      {
        goto LABEL_34;
      }

      v173 = v77;
      LOBYTE(v171) = 10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
      sub_21DEBAF30();
      v147 = v156;
      v149 = v158;
      sub_21DEC75D0();
      if (!v149)
      {
        v158 = 0;
        goto LABEL_34;
      }

      goto LABEL_91;
    }
  }

  else
  {
    if (v30 <= 1)
    {
      if (!v30)
      {
        v31 = swift_projectBox();
        sub_21DEBABEC(v31, v16, type metadata accessor for JSONSchema.SchemaType.ArraySchema);
        LOBYTE(v173) = 0;
        sub_21DEC7590();
        LOBYTE(v173) = 1;
        sub_21DEB5F2C(&qword_27CE94CB0, type metadata accessor for JSONSchema, &protocol conformance descriptor for JSONSchema);
        sub_21DEC75D0();
        v72 = &v16[*(v158 + 5)];
        v73 = *v72;
        v74 = *(v72 + 2);
        v75 = v72[24];
        LOBYTE(v173) = v72[8];
        LOBYTE(v171) = v75;
        sub_21DEB10BC(v169, v73, v173, v74, v75, &qword_27CE94CD0, &qword_21DED4AA8, sub_21DEBA2F8, &type metadata for JSONSchema.SchemaType.ArrayValidations.CodingKeys);
        sub_21DEBB17C(v16, type metadata accessor for JSONSchema.SchemaType.ArraySchema);
LABEL_29:
        v158 = 0;
        goto LABEL_35;
      }

      v45 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v173) = 0;

      sub_21DEC7590();
      LOBYTE(v173) = 8;
      sub_21DEC7550();
      v158 = 0;
      v78 = v154;
      if (!*(v45 + 16))
      {
        goto LABEL_34;
      }

      v173 = v45;
      LOBYTE(v171) = 9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D88, &qword_21DED4B20);
      sub_21DEBB2D4();
      v79 = v155;
      v80 = v156;
      v81 = v158;
      sub_21DEC75D0();
      v66 = v81;
      if (v81)
      {

        return (*(v78 + 8))(v80, v79);
      }

LABEL_33:
      v158 = v66;
LABEL_34:

      goto LABEL_35;
    }

    if (v30 == 2)
    {
      v37 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v177 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v178[0] = v37;
      *(v178 + 9) = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x49);
      v38 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v175 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v176 = v38;
      v39 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v40 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x78);
      LOBYTE(v173) = 0;

      sub_21DEC7590();
      sub_21DEB1640(v169, &qword_27CE94CE8, &qword_21DED4AC0, sub_21DEBA5C4, &type metadata for JSONSchema.SchemaType.IntValidations.CodingKeys);
      LOBYTE(v173) = 8;
      sub_21DEC7570();
      if (*(v39 + 16))
      {
        v173 = v39;
        LOBYTE(v171) = 9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D78, &qword_21DED4B18);
        sub_21DEBB258();
        sub_21DEC75D0();
      }

      v41 = v154;
      v42 = v155;
      v158 = 0;
      if (v40)
      {
        if (!*(v40 + 16))
        {
          goto LABEL_34;
        }

        v173 = v40;
        LOBYTE(v171) = 10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D78, &qword_21DED4B18);
        sub_21DEBB258();
        goto LABEL_90;
      }
    }

    else
    {
      v59 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v178[4] = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v179[0] = v59;
      *(v179 + 9) = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x49);
      v60 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v178[2] = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v178[3] = v60;
      v61 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v62 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x78);
      LOBYTE(v173) = 0;

      sub_21DEC7590();
      sub_21DEB1640(v169, &qword_27CE94CF0, &qword_21DED4AC8, sub_21DEBA618, &type metadata for JSONSchema.SchemaType.NumberValidations.CodingKeys);
      LOBYTE(v173) = 8;
      sub_21DEC7560();
      if (*(v61 + 16))
      {
        v173 = v61;
        LOBYTE(v171) = 9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D68, &qword_21DED4B10);
        sub_21DEBB1DC();
        sub_21DEC75D0();
      }

      v41 = v154;
      v42 = v155;
      v158 = 0;
      if (v62)
      {
        if (!*(v62 + 16))
        {
          goto LABEL_34;
        }

        v173 = v62;
        LOBYTE(v171) = 10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D68, &qword_21DED4B10);
        sub_21DEBB1DC();
LABEL_90:
        v147 = v156;
        v148 = v158;
        sub_21DEC75D0();
        if (!v148)
        {
          v158 = 0;
          goto LABEL_34;
        }

LABEL_91:
        (*(v41 + 8))(v147, v42);
      }
    }
  }

  while (1)
  {
LABEL_35:
    v173 = sub_21DEC6920();
    v174 = v82;

    MEMORY[0x223D4B2A0](0x73666564242F232FLL, 0xE90000000000002FLL);

    v84 = v173;
    v83 = v174;
    v85 = *(**sub_21DEBD51C() + 88);

    v87 = v85(v86);

    v88 = *(v87 + 64);
    v159 = (v87 + 64);
    v161 = v87;
    v89 = 1 << *(v87 + 32);
    v90 = -1;
    if (v89 < 64)
    {
      v90 = ~(-1 << v89);
    }

    v68 = v90 & v88;
    v91 = (v89 + 63) >> 6;
    v92 = HIBYTE(v83) & 0xF;
    v170 = v83;
    v93 = (v83 & 0x2000000000000000) == 0;
    v32 = v84;
    if (v93)
    {
      v92 = v84 & 0xFFFFFFFFFFFFLL;
    }

    v163 = v92;
    v157 = MEMORY[0x277D84F98];
    v67 = &qword_27CE94D10;
    v69 = v166;
    v94 = v167;
    v168 = v32;
    v162 = (v89 + 63) >> 6;
    v95 = 0;
    if (v68)
    {
      break;
    }

LABEL_41:
    if (v91 <= v95 + 1)
    {
      v97 = v95 + 1;
    }

    else
    {
      v97 = v91;
    }

    while (1)
    {
      v96 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        break;
      }

      if (v96 >= v91)
      {
        v169 = v97 - 1;
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D10, &unk_21DED4AD0);
        (*(*(v117 - 8) + 56))(v69, 1, 1, v117);
        v68 = 0;
        goto LABEL_48;
      }

      v68 = v159[v96];
      v95 = (v95 + 1);
      if (v68)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_81:
    v142 = v67 + *(v157 + 20);
    v143 = *v142;
    v144 = *(v142 + 2);
    v145 = v142[24];
    LOBYTE(v173) = v142[8];
    LOBYTE(v171) = v145;
    sub_21DEB10BC(v32, v143, v173, v144, v145, &qword_27CE94CD8, &qword_21DED4AB0, sub_21DEBA34C, &type metadata for JSONSchema.SchemaType.ObjectValidations.CodingKeys);
    v146 = v154;
    if (v69)
    {
      sub_21DEBB17C(v67, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
      sub_21DEBB17C(a1, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
      return (*(v146 + 8))(v156, v68);
    }

    v158 = 0;
    sub_21DEBB17C(v67, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
LABEL_103:
    sub_21DEBB17C(a1, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
  }

  while (1)
  {
    v96 = v95;
LABEL_47:
    v98 = __clz(__rbit64(v68));
    v68 &= v68 - 1;
    v99 = v98 | (v96 << 6);
    v100 = (*(v161 + 48) + 16 * v99);
    v102 = *v100;
    v101 = v100[1];
    sub_21DEBABEC(*(v161 + 56) + *(v164 + 72) * v99, v94, type metadata accessor for JSONSchema);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D10, &unk_21DED4AD0);
    v104 = *(v103 + 48);
    *v69 = v102;
    v69[1] = v101;
    sub_21DEBAC74(v94, v69 + v104, type metadata accessor for JSONSchema);
    (*(*(v103 - 8) + 56))(v69, 0, 1, v103);

    v169 = v96;
LABEL_48:
    v105 = v165;
    sub_21DE682A8(v69, v165, &qword_27CE94D40, &qword_21DED4AF0);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D10, &unk_21DED4AD0);
    if ((*(*(v106 - 8) + 48))(v105, 1, v106) == 1)
    {
      break;
    }

    v107 = *v105;
    a1 = v105[1];
    sub_21DEBAC74(v105 + *(v106 + 48), v180, type metadata accessor for JSONSchema);

    if (sub_21DEC6EA0() < 0)
    {
      __break(1u);
      goto LABEL_102;
    }

    sub_21DEC6ED0();
    v108 = sub_21DEC7010();
    v110 = v109;
    v112 = v111;
    v114 = v113;

    v115 = v108 >> 16;
    v32 = v168;
    if (v112 == v168 && v114 == v170 && !v115 && (v110 >> 16) == v163)
    {

LABEL_59:
      v173 = v107;
      v174 = a1;
      v118 = sub_21DEC6EA0();
      v119 = v180;
      if (v118)
      {
        if (v118 < 0)
        {
          goto LABEL_109;
        }

        sub_21DEC6ED0();
        if (v120)
        {
          goto LABEL_111;
        }

        sub_21DEC6E50();
        v107 = v173;
        a1 = v174;
      }

      sub_21DEBABEC(v119, v160, type metadata accessor for JSONSchema);
      v121 = v157;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v171 = v121;
      v123 = sub_21DE7ADAC(v107, a1);
      v125 = *(v121 + 16);
      v126 = (v124 & 1) == 0;
      v127 = __OFADD__(v125, v126);
      v128 = v125 + v126;
      if (v127)
      {
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        result = sub_21DEC7700();
        __break(1u);
        return result;
      }

      v129 = v124;
      v130 = v164;
      if (*(v121 + 24) < v128)
      {
        sub_21DEB6454(v128, isUniquelyReferenced_nonNull_native);
        v123 = sub_21DE7ADAC(v107, a1);
        if ((v129 & 1) != (v131 & 1))
        {
          goto LABEL_112;
        }

LABEL_68:
        v132 = v180;
        if (v129)
        {
          goto LABEL_69;
        }

        goto LABEL_71;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_68;
      }

      v134 = v123;
      sub_21DEB7134();
      v123 = v134;
      v130 = v164;
      v132 = v180;
      if (v129)
      {
LABEL_69:
        v133 = v123;

        v157 = v171;
        sub_21DEAACF0(v160, *(v171 + 56) + *(v130 + 72) * v133);
        sub_21DEBB17C(v132, type metadata accessor for JSONSchema);
        goto LABEL_73;
      }

LABEL_71:
      v135 = v171;
      *(v171 + 8 * (v123 >> 6) + 64) |= 1 << v123;
      v136 = (v135[6] + 16 * v123);
      *v136 = v107;
      v136[1] = a1;
      sub_21DEBAC74(v160, v135[7] + *(v130 + 72) * v123, type metadata accessor for JSONSchema);
      sub_21DEBB17C(v132, type metadata accessor for JSONSchema);
      v137 = v135[2];
      v127 = __OFADD__(v137, 1);
      v138 = v137 + 1;
      if (v127)
      {
        goto LABEL_110;
      }

      v157 = v135;
      v135[2] = v138;
LABEL_73:
      v69 = v166;
      v94 = v167;
      v91 = v162;
      v67 = &qword_27CE94D10;
      v95 = v169;
      if (!v68)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v116 = sub_21DEC75F0();

      if (v116)
      {
        goto LABEL_59;
      }

      sub_21DEBB17C(v180, type metadata accessor for JSONSchema);

      v95 = v169;
      v69 = v166;
      v94 = v167;
      v91 = v162;
      v67 = &qword_27CE94D10;
      if (!v68)
      {
        goto LABEL_41;
      }
    }
  }

  if (*(v157 + 16))
  {
    v173 = v157;
    LOBYTE(v171) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D30, &qword_21DED4AE8);
    sub_21DEBAFAC();
    v139 = v155;
    v140 = v156;
    sub_21DEC7580();
    v141 = v154;

    return (*(v141 + 8))(v140, v139);
  }

  else
  {
    (*(v154 + 8))(v156, v155);
  }
}

uint64_t sub_21DEB5BD8(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_21DEC6ED0();
  if (v1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return sub_21DEC6E50();
}

uint64_t sub_21DEB5C94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E58, &qword_21DED5E68);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_21DEC73E0();
  __swift_allocate_value_buffer(v3, qword_27CEA6720);
  v4 = __swift_project_value_buffer(v3, qword_27CEA6720);
  sub_21DEC73D0();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21DEB5DFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E58, &qword_21DED5E68);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_21DEC73E0();
  __swift_allocate_value_buffer(v3, qword_27CEA6738);
  v4 = __swift_project_value_buffer(v3, qword_27CEA6738);
  sub_21DEC73D0();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_21DEB5F2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_21DEB5F74@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21DEB6050(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21DEB6EB0();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_21DEC73E0();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_21DEAD1D0((*(v9 + 56) + 32 * v7), a2);
    sub_21DEB67CC(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_21DEB6050(uint64_t a1)
{
  sub_21DEC73E0();
  v2 = sub_21DEC6D50();

  return sub_21DEB6D18(a1, v2);
}

uint64_t sub_21DEB60B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_21DEC73E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E68, &qword_21DED5E78);
  v39 = v4;
  result = sub_21DEC7420();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_21DEAD1D0((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_21DE56CD4(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_21DEC6D50();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_21DEAD1D0(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_21DEB6454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for JSONSchema(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94DD0, &qword_21DED5DF0);
  v40 = v4;
  result = sub_21DEC7420();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_21DEBAC74(v28, v41, type metadata accessor for JSONSchema);
      }

      else
      {
        sub_21DEBABEC(v28, v41, type metadata accessor for JSONSchema);
      }

      sub_21DEC7770();
      sub_21DEC6E90();
      result = sub_21DEC77B0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_21DEBAC74(v41, *(v9 + 56) + v27 * v17, type metadata accessor for JSONSchema);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_21DEB67CC(int64_t a1, uint64_t a2)
{
  v4 = sub_21DEC73E0();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_21DEC7290();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_21DEC6D50();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_21DEB6A80(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21DEC73E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_21DEB6050(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_21DEB6EB0();
      goto LABEL_7;
    }

    sub_21DEB60B4(v17, a3 & 1);
    v23 = sub_21DEB6050(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_21DEB6C58(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_21DEC7700();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_0(v21);

  return sub_21DEAD1D0(a1, v21);
}

_OWORD *sub_21DEB6C58(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_21DEC73E0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_21DEAD1D0(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_21DEB6D18(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_21DEC73E0();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_21DEC6D70();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_21DEB6EB0()
{
  v1 = v0;
  v26 = sub_21DEC73E0();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E68, &qword_21DED5E78);
  v3 = *v0;
  v4 = sub_21DEC7410();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_21DE56CD4(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_21DEAD1D0(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_21DEB7134()
{
  v1 = v0;
  v2 = type metadata accessor for JSONSchema(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94DD0, &qword_21DED5DF0);
  v4 = *v0;
  v5 = sub_21DEC7410();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_21DEBABEC(*(v4 + 56) + v26, v30, type metadata accessor for JSONSchema);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_21DEBAC74(v25, *(v27 + 56) + v26, type metadata accessor for JSONSchema);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_21DEB738C(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_21DEC7760();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_21DEB79B8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_21DEB746C(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_21DEC7760();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_21DEB7AD8(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_21DEB7560(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94438, &unk_21DED0E60);
  result = sub_21DEC72B0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_21DEC7760();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21DEB7784(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E00, &unk_21DED5E00);
  result = sub_21DEC72B0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_21DEC7760();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21DEB79B8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21DEB7560(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_21DEB7C04();
      a2 = v7;
      goto LABEL_12;
    }

    sub_21DEB7E84(v5 + 1);
  }

  v8 = *v3;
  result = sub_21DEC7760();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DEC76F0();
  __break(1u);
  return result;
}

unint64_t sub_21DEB7AD8(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_21DEB7784(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_21DEB7D44();
      result = v7;
      goto LABEL_12;
    }

    sub_21DEB8074(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_21DEC7760();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DEC76F0();
  __break(1u);
  return result;
}

void *sub_21DEB7C04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94438, &unk_21DED0E60);
  v2 = *v0;
  v3 = sub_21DEC72A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21DEB7D44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E00, &unk_21DED5E00);
  v2 = *v0;
  v3 = sub_21DEC72A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}