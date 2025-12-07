uint64_t sub_1C2126CD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24320, &unk_1C217A0C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C21272A0();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
  LOBYTE(v33) = 0;
  sub_1C20FD358(&qword_1EBF23E10, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1C21711D4();
  v31 = v38;
  LOBYTE(v33) = 1;
  sub_1C21711A4();
  v30 = v38;
  LOBYTE(v33) = 2;
  sub_1C20D8E24();
  sub_1C21711D4();
  v9 = v39;
  v29 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24330, &qword_1C217A0D0);
  LOBYTE(v33) = 3;
  sub_1C21273BC(&qword_1EBF24338, MEMORY[0x1E69E6190], MEMORY[0x1E69E6390], MEMORY[0x1E69E5E58]);
  sub_1C21711A4();
  v28 = v38;
  LOBYTE(v38) = 4;
  v27 = 0;
  v26 = sub_1C2171194();
  v48 = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24340, &qword_1C217A0D8);
  LOBYTE(v33) = 5;
  sub_1C21272F4(&qword_1EBF24348, MEMORY[0x1E69E6840], MEMORY[0x1E69E6330]);
  sub_1C21711A4();
  v25 = v38;
  v49 = 6;
  sub_1C21711A4();
  (*(v6 + 8))(v8, v5);
  v27 = v47;
  v11 = v9;
  v24 = v9;
  v12 = v31;
  v13 = v30;
  *&v33 = v31;
  *(&v33 + 1) = v30;
  v14 = v29;
  *&v34 = v29;
  *(&v34 + 1) = v11;
  v15 = v28;
  v16 = v26;
  *&v35 = v28;
  *(&v35 + 1) = v26;
  v17 = v48;
  LOBYTE(v36) = v48;
  v18 = v25;
  *(&v36 + 1) = v25;
  v37 = v47;
  sub_1C20EAF38(&v33, &v38);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v38 = v12;
  v39 = v13;
  v40 = v14;
  v41 = v24;
  v42 = v15;
  v43 = v16;
  v44 = v17;
  v45 = v18;
  v46 = v27;
  result = sub_1C20EAFE8(&v38);
  v20 = v36;
  v21 = v32;
  *(v32 + 32) = v35;
  *(v21 + 48) = v20;
  *(v21 + 64) = v37;
  v22 = v34;
  *v21 = v33;
  *(v21 + 16) = v22;
  return result;
}

unint64_t sub_1C21272A0()
{
  result = qword_1EBF24328;
  if (!qword_1EBF24328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24328);
  }

  return result;
}

uint64_t sub_1C21272F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF24340, &qword_1C217A0D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C21273BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF24330, &qword_1C217A0D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASCTAPGetInfoResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASCTAPGetInfoResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C2127580()
{
  result = qword_1EBF24368;
  if (!qword_1EBF24368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24368);
  }

  return result;
}

unint64_t sub_1C21275D8()
{
  result = qword_1EBF24370;
  if (!qword_1EBF24370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24370);
  }

  return result;
}

unint64_t sub_1C2127630()
{
  result = qword_1EBF24378;
  if (!qword_1EBF24378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24378);
  }

  return result;
}

id ASCPhoneNumber.__allocating_init(cnPhoneNumber:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ASCPhoneNumber.__allocating_init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  v4 = objc_allocWithZone(MEMORY[0x1E695CF50]);
  v5 = sub_1C21708F4();

  v6 = [v4 initWithStringValue_];

  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber] = v6;
  v8.receiver = v3;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1C2127780()
{
  sub_1C2171434();
  sub_1C21709B4();
  return sub_1C2171454();
}

uint64_t sub_1C21277FC(uint64_t a1)
{
  sub_1C2171434();
  sub_1C21709B4();
  return sub_1C2171454();
}

uint64_t sub_1C2127854@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1C2171134();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1C21278EC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C2171134();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C2127944(uint64_t a1)
{
  v2 = sub_1C2127D08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2127980(uint64_t a1)
{
  v2 = sub_1C2127D08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ASCPhoneNumber.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x1E695CF50]);
  v4 = sub_1C21708F4();

  v5 = [v3 initWithStringValue_];

  *&v2[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber] = v5;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ASCPhoneNumber();
  return objc_msgSendSuper2(&v7, sel_init);
}

id ASCPhoneNumber.init(cnPhoneNumber:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ASCPhoneNumber();
  return objc_msgSendSuper2(&v3, sel_init);
}

void *ASCPhoneNumber.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24388, &qword_1C217A280);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2127D08();
  sub_1C2171464();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for ASCPhoneNumber();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C21711B4();
    v10 = objc_allocWithZone(MEMORY[0x1E695CF50]);
    v11 = sub_1C21708F4();

    v12 = [v10 initWithStringValue_];

    (*(v6 + 8))(v8, v5);
    *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber) = v12;
    v13 = type metadata accessor for ASCPhoneNumber();
    v14.receiver = v1;
    v14.super_class = v13;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

unint64_t sub_1C2127D08()
{
  result = qword_1EBF24390;
  if (!qword_1EBF24390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24390);
  }

  return result;
}

uint64_t sub_1C2127D5C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24398, &qword_1C217A288);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2127D08();
  sub_1C2171484();
  v8 = [*(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber) stringValue];
  sub_1C2170914();

  sub_1C2171274();
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C2127ECC(uint64_t a1)
{
  sub_1C21282A8(a1, v18);
  if (!v19)
  {
    sub_1C2128318(v18);
    goto LABEL_13;
  }

  type metadata accessor for ASCPhoneNumber();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v15 = 0;
    return v15 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber);
  v3 = [v2 unformattedInternationalStringValue];
  if (!v3)
  {
    v3 = [v2 stringValue];
  }

  v4 = v3;
  v5 = sub_1C2170914();
  v7 = v6;

  v8 = *&v17[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber];
  v9 = [v8 unformattedInternationalStringValue];
  if (!v9)
  {
    v9 = [v8 stringValue];
  }

  v10 = v9;
  v11 = sub_1C2170914();
  v13 = v12;

  if (v5 == v11 && v7 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1C2171324();
  }

  return v15 & 1;
}

id sub_1C2128170(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber];
  v5 = a1;
  v6 = [v4 *a3];
  if (!v6)
  {
    v6 = [v4 stringValue];
  }

  v7 = v6;
  sub_1C2170914();

  v8 = sub_1C21708F4();

  return v8;
}

uint64_t sub_1C212822C(SEL *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber);
  v3 = [v2 *a1];
  if (!v3)
  {
    v3 = [v2 stringValue];
  }

  v4 = v3;
  v5 = sub_1C2170914();

  return v5;
}

uint64_t sub_1C21282A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243A0, &qword_1C217A290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2128318(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243A0, &qword_1C217A290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ASCPhoneNumber.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASCPhoneNumber.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCPhoneNumber();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C2128458@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ASCPhoneNumber());
  result = ASCPhoneNumber.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C21285FC()
{
  result = qword_1EBF243A8;
  if (!qword_1EBF243A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF243A8);
  }

  return result;
}

unint64_t sub_1C2128654()
{
  result = qword_1EBF243B0;
  if (!qword_1EBF243B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF243B0);
  }

  return result;
}

unint64_t sub_1C21286AC()
{
  result = qword_1EBF243B8;
  if (!qword_1EBF243B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF243B8);
  }

  return result;
}

uint64_t sub_1C2128700@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1C21289D8(a1, a2);
  if ((v7 & 0x100) != 0)
  {
    sub_1C212CC84();
    swift_allocError();
    *v9 = 256;
    return swift_willThrow();
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      v8 = 1;
      goto LABEL_7;
    }

    v13 = v7;
    sub_1C212CC84();
    swift_allocError();
    *v14 = v13;
    v14[1] = 0;
    return swift_willThrow();
  }

  v8 = 0;
LABEL_7:
  sub_1C21702A4();
  swift_allocObject();
  sub_1C2170294();
  if ((v8 & 1) == 0)
  {
    sub_1C20D865C(a1, a2);
    sub_1C2128BB4(1uLL, a1, a2, &v48);
    v10 = v48;
    v11 = v49;
    sub_1C212CD38();
    sub_1C2170274();
    if (!v3)
    {

      sub_1C20D3174(v10, v11);
      v45 = v31;
      v46 = v32;
      *v47 = v33;
      *&v47[16] = v34;
      v41 = v27;
      v42 = v28;
      v43 = v29;
      v44 = v30;
      v37 = v23;
      v38 = v24;
      v39 = v25;
      v40 = v26;
      v35 = v21;
      v36 = v22;
      result = sub_1C212CD8C(&v35);
      goto LABEL_15;
    }

LABEL_11:

    return sub_1C20D3174(v10, v11);
  }

  sub_1C20D865C(a1, a2);
  sub_1C2128BB4(1uLL, a1, a2, &v48);
  v10 = v48;
  v11 = v49;
  sub_1C212CCD8();
  sub_1C2170274();
  if (v3)
  {
    goto LABEL_11;
  }

  sub_1C20D3174(v10, v11);
  v41 = v27;
  v42 = v28;
  v43 = v29;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v35 = v21;
  v36 = v22;
  result = sub_1C212CD2C(&v35);
LABEL_15:
  v15 = v46;
  a3[10] = v45;
  a3[11] = v15;
  a3[12] = *v47;
  *(a3 + 201) = *&v47[9];
  v16 = v42;
  a3[6] = v41;
  a3[7] = v16;
  v17 = v44;
  a3[8] = v43;
  a3[9] = v17;
  v18 = v38;
  a3[2] = v37;
  a3[3] = v18;
  v19 = v40;
  a3[4] = v39;
  a3[5] = v19;
  v20 = v36;
  *a3 = v35;
  a3[1] = v20;
  return result;
}

uint64_t sub_1C21289D8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_1C2170134();
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t sub_1C2128A60(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 60) & 3;
  if (((a2 >> 60) & 3) <= 1)
  {
    if (!v3)
    {
      v5 = sub_1C20E7898(&unk_1F419CE68);
      v7 = v6;
      v21 = v5;
      v22 = v6;
      v19 = MEMORY[0x1E6969080];
      v20 = MEMORY[0x1E6969078];
      v17 = a1;
      v18 = a2;
      v8 = __swift_project_boxed_opaque_existential_1(&v17, MEMORY[0x1E6969080]);
      v9 = *v8;
      v10 = v8[1];
      sub_1C20D865C(v5, v7);
      sub_1C212CD94(a1, a2);
LABEL_8:
      sub_1C2106434(v9, v10, &v21);
      sub_1C20D3174(v5, v7);
      __swift_destroy_boxed_opaque_existential_0Tm(&v17);
      return v21;
    }

    v11 = a2 & 0xCFFFFFFFFFFFFFFFLL;
    v12 = &unk_1F419CE90;
LABEL_7:
    v5 = sub_1C20E7898(v12);
    v7 = v14;
    v21 = v5;
    v22 = v14;
    v19 = MEMORY[0x1E6969080];
    v20 = MEMORY[0x1E6969078];
    v17 = a1;
    v18 = v11;
    v15 = __swift_project_boxed_opaque_existential_1(&v17, MEMORY[0x1E6969080]);
    v9 = *v15;
    v10 = v15[1];
    sub_1C212CD94(a1, a2);
    sub_1C20D865C(v5, v7);
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v11 = a2 & 0xCFFFFFFFFFFFFFFFLL;
    v12 = &unk_1F419CEB8;
    goto LABEL_7;
  }

  return sub_1C20E7898(&unk_1F419CE40);
}

unint64_t sub_1C2128BB4@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_1C20FA9B8(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_1C20FAA6C(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = sub_1C2170124();
    v16 = v15;
    result = sub_1C20D3174(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

AuthenticationServicesCore::ASCTAPAuthenticatorMakeCredentialCommand::CodingKeys_optional __swiftcall ASCTAPAuthenticatorMakeCredentialCommand.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x6144746E65696C63 && stringValue._object == 0xEE00687361486174;
  if (v5 || (sub_1C2171324() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x50676E69796C6572 && object == 0xEC00000079747261 || (sub_1C2171324() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 1919251317 && object == 0xE400000000000000 || (sub_1C2171324() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0xD00000000000001DLL && 0x80000001C2186570 == object || (sub_1C2171324() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0x4C6564756C637865 && object == 0xEB00000000747369 || (sub_1C2171324() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x6F69736E65747865 && object == 0xEA0000000000736ELL || (sub_1C2171324() & 1) != 0)
  {

    v7 = 5;
  }

  else if (countAndFlagsBits == 0x736E6F6974706FLL && object == 0xE700000000000000)
  {

    v7 = 6;
  }

  else
  {
    v8 = sub_1C2171324();

    if (v8)
    {
      v7 = 6;
    }

    else
    {
      v7 = 7;
    }
  }

  *v4 = v7;
  return result;
}

AuthenticationServicesCore::ASCTAPAuthenticatorMakeCredentialCommand::CodingKeys_optional __swiftcall ASCTAPAuthenticatorMakeCredentialCommand.CodingKeys.init(intValue:)(Swift::Int intValue)
{
  v2 = 0x605040302010007uLL >> (8 * intValue);
  if (intValue >= 8)
  {
    LOBYTE(v2) = 7;
  }

  *v1 = v2;
  return intValue;
}

uint64_t ASCTAPAuthenticatorMakeCredentialCommand.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x6144746E65696C63;
  v3 = 0x6F69736E65747865;
  if (v1 != 5)
  {
    v3 = 0x736E6F6974706FLL;
  }

  v4 = 0xD00000000000001DLL;
  if (v1 != 3)
  {
    v4 = 0x4C6564756C637865;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x50676E69796C6572;
  if (v1 != 1)
  {
    v5 = 1919251317;
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

uint64_t sub_1C21290AC()
{
  v1 = *v0;
  v2 = 0x6144746E65696C63;
  v3 = 0x6F69736E65747865;
  if (v1 != 5)
  {
    v3 = 0x736E6F6974706FLL;
  }

  v4 = 0xD00000000000001DLL;
  if (v1 != 3)
  {
    v4 = 0x4C6564756C637865;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x50676E69796C6572;
  if (v1 != 1)
  {
    v5 = 1919251317;
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

uint64_t sub_1C21291AC(uint64_t a1)
{
  v2 = sub_1C212B5BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21291E8(uint64_t a1)
{
  v2 = sub_1C212B5BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCTAPAuthenticatorMakeCredentialCommand.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243C0, &qword_1C217A470);
  v59 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v40 = *(v1 + 24);
  v41 = v8;
  v9 = *(v1 + 32);
  v38 = *(v1 + 40);
  v39 = v9;
  v10 = *(v1 + 48);
  v36 = *(v1 + 56);
  v37 = v10;
  v11 = *(v1 + 64);
  v12 = *(v1 + 72);
  v13 = *(v1 + 88);
  v32 = *(v1 + 80);
  v33 = v12;
  v34 = v13;
  v35 = v11;
  v14 = *(v1 + 96);
  v30 = *(v1 + 104);
  v31 = v14;
  v29 = *(v1 + 112);
  v15 = *(v1 + 136);
  v53 = *(v1 + 120);
  v54 = v15;
  v16 = *(v1 + 152);
  v17 = *(v1 + 168);
  v18 = *(v1 + 200);
  v57 = *(v1 + 184);
  v58 = v18;
  v55 = v16;
  v56 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D865C(v6, v7);
  sub_1C212B5BC();
  sub_1C2171484();
  *&v47 = v6;
  v19 = v3;
  *(&v47 + 1) = v7;
  LOBYTE(v45[0]) = 0;
  sub_1C20D8CEC();
  v20 = v42;
  sub_1C2171294();
  if (v20)
  {
    sub_1C20D3174(v47, *(&v47 + 1));
    return (*(v59 + 8))(v5, v3);
  }

  else
  {
    v22 = v36;
    v23 = v37;
    v24 = v35;
    sub_1C20D3174(v47, *(&v47 + 1));
    *&v47 = v41;
    *(&v47 + 1) = v40;
    *&v48 = v39;
    *(&v48 + 1) = v38;
    LOBYTE(v45[0]) = 1;
    sub_1C212B610();
    sub_1C2171294();
    *&v47 = v23;
    *(&v47 + 1) = v22;
    *&v48 = v24;
    v25 = v24;
    v26 = v33;
    *(&v48 + 1) = v33;
    *&v49 = v32;
    *(&v49 + 1) = v34;
    LOBYTE(v45[0]) = 2;

    sub_1C20D865C(v25, v26);
    sub_1C212B664();

    sub_1C2171294();
    v27 = v48;

    sub_1C20D3174(v27, *(&v27 + 1));

    *&v47 = v31;
    LOBYTE(v45[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243E0, &qword_1C217A478);
    sub_1C212B944(&qword_1EBF243E8, sub_1C212B6B8, MEMORY[0x1E69E6300]);
    sub_1C2171294();
    *&v47 = v30;
    LOBYTE(v45[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243F8, &qword_1C217A480);
    sub_1C212B70C(&qword_1EBF24400, sub_1C212B784, MEMORY[0x1E69E6300]);
    sub_1C2171264();
    v28 = v59;
    v50 = v56;
    v51 = v57;
    v52 = v58;
    v47 = v53;
    v48 = v54;
    v49 = v55;
    v46 = 5;
    sub_1C212B7D8(&v53, v45);
    sub_1C212B848();
    sub_1C2171264();
    v45[2] = v49;
    v45[3] = v50;
    v45[4] = v51;
    v45[5] = v52;
    v45[0] = v47;
    v45[1] = v48;
    sub_1C20EB498(v45, &unk_1EBF23690, &qword_1C2176D38);
    v44 = v29;
    v43 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24330, &qword_1C217A0D0);
    sub_1C21273BC(&qword_1EBF24358, MEMORY[0x1E69E6160], MEMORY[0x1E69E6378], MEMORY[0x1E69E5E38]);
    sub_1C2171264();
    return (*(v28 + 8))(v5, v19);
  }
}

uint64_t ASCTAPAuthenticatorMakeCredentialCommand.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24418, &qword_1C217A488);
  v5 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v7 = &v29 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C212B5BC();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v8 = v5;
  v43 = a2;
  LOBYTE(v44) = 0;
  sub_1C20D8E24();
  sub_1C21711D4();
  v41 = v53;
  v42 = v52;
  LOBYTE(v44) = 1;
  sub_1C212B89C();
  sub_1C21711D4();
  v40 = v53;
  v9 = v54;
  v38 = v52;
  v39 = v55;
  LOBYTE(v44) = 2;
  sub_1C212B8F0();
  sub_1C21711D4();
  v30 = v52;
  v31 = v9;
  v37 = v54;
  v35 = v53;
  v36 = v55;
  v10 = v56;
  v33 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243E0, &qword_1C217A478);
  LOBYTE(v44) = 3;
  sub_1C212B944(&qword_1EBF24430, sub_1C212B9BC, MEMORY[0x1E69E6330]);
  sub_1C21711D4();
  v29 = v10;
  v11 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243F8, &qword_1C217A480);
  LOBYTE(v44) = 4;
  sub_1C212B70C(&qword_1EBF24440, sub_1C212BA10, MEMORY[0x1E69E6330]);
  sub_1C21711A4();
  v34 = v11;
  v32 = v52;
  v75 = 5;
  sub_1C212BA64();
  sub_1C21711A4();
  v84 = v78;
  v85 = v79;
  v86 = v80;
  v87 = v81;
  v82 = v76;
  v83 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24330, &qword_1C217A0D0);
  v73 = 6;
  sub_1C21273BC(&qword_1EBF24338, MEMORY[0x1E69E6190], MEMORY[0x1E69E6390], MEMORY[0x1E69E5E58]);
  v12 = v88;
  sub_1C21711A4();
  (*(v8 + 8))(v7, v12);
  v88 = v74;
  v13 = v41;
  *&v44 = v42;
  *(&v44 + 1) = v41;
  v14 = v39;
  v15 = v40;
  *&v45 = v38;
  *(&v45 + 1) = v40;
  *&v46 = v31;
  *(&v46 + 1) = v39;
  *&v47 = v30;
  *(&v47 + 1) = v35;
  *&v48 = v37;
  *(&v48 + 1) = v36;
  v16 = v33;
  *&v49 = v29;
  *(&v49 + 1) = v33;
  *&v50 = v34;
  *(&v50 + 1) = v32;
  *v51 = v74;
  *&v51[8] = v82;
  *&v51[24] = v83;
  *&v51[88] = v87;
  *&v51[72] = v86;
  *&v51[56] = v85;
  *&v51[40] = v84;
  v17 = v45;
  v18 = v43;
  *v43 = v44;
  v18[1] = v17;
  v19 = v46;
  v20 = v47;
  v21 = v49;
  v18[4] = v48;
  v18[5] = v21;
  v18[2] = v19;
  v18[3] = v20;
  v22 = v50;
  v23 = *v51;
  v24 = *&v51[32];
  v18[8] = *&v51[16];
  v18[9] = v24;
  v18[6] = v22;
  v18[7] = v23;
  v25 = *&v51[48];
  v26 = *&v51[64];
  v27 = *&v51[80];
  *(v18 + 26) = *&v51[96];
  v18[11] = v26;
  v18[12] = v27;
  v18[10] = v25;
  sub_1C212BAB8(&v44, &v52);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v52 = v42;
  v53 = v13;
  v54 = v38;
  v55 = v15;
  v56 = v31;
  v57 = v14;
  v58 = v30;
  v59 = v35;
  v60 = v37;
  v61 = v36;
  v62 = v29;
  v63 = v16;
  v64 = v34;
  v65 = v32;
  v66 = v88;
  v67 = v82;
  v68 = v83;
  v72 = v87;
  v71 = v86;
  v70 = v85;
  v69 = v84;
  return sub_1C212BAF0(&v52);
}

AuthenticationServicesCore::ASCTAPAuthenticatorGetAssertionCommand::CodingKeys_optional __swiftcall ASCTAPAuthenticatorGetAssertionCommand.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x50676E69796C6572 && stringValue._object == 0xEE00444979747261;
  if (v5 || (sub_1C2171324() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6144746E65696C63 && object == 0xEE00687361486174 || (sub_1C2171324() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x73694C776F6C6C61 && object == 0xE900000000000074 || (sub_1C2171324() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x6F69736E65747865 && object == 0xEA0000000000736ELL || (sub_1C2171324() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0x736E6F6974706FLL && object == 0xE700000000000000)
  {

    v7 = 4;
  }

  else
  {
    v8 = sub_1C2171324();

    if (v8)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }
  }

  *v4 = v7;
  return result;
}

AuthenticationServicesCore::ASCTAPAuthenticatorGetAssertionCommand::CodingKeys_optional __swiftcall ASCTAPAuthenticatorGetAssertionCommand.CodingKeys.init(intValue:)(Swift::Int intValue)
{
  v2 = 0x40302010005uLL >> (8 * intValue);
  if (intValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return intValue;
}

uint64_t ASCTAPAuthenticatorGetAssertionCommand.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x50676E69796C6572;
  v3 = 0x73694C776F6C6C61;
  v4 = 0x6F69736E65747865;
  if (v1 != 3)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6144746E65696C63;
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

uint64_t sub_1C212A21C()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v1 + 1);
  return sub_1C2171454();
}

uint64_t sub_1C212A264(uint64_t a1)
{
  v2 = *v1;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v2 + 1);
  return sub_1C2171454();
}

uint64_t sub_1C212A2B0()
{
  v1 = *v0;
  v2 = 0x50676E69796C6572;
  v3 = 0x73694C776F6C6C61;
  v4 = 0x6F69736E65747865;
  if (v1 != 3)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6144746E65696C63;
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

uint64_t sub_1C212A374(uint64_t a1)
{
  v2 = sub_1C212BE80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C212A3B0(uint64_t a1)
{
  v2 = sub_1C212BE80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCTAPAuthenticatorGetAssertionCommand.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24458, &qword_1C217A490);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v22 = *(v1 + 16);
  v23 = v7;
  v9 = *(v1 + 40);
  v20 = *(v1 + 32);
  v21 = v8;
  v19 = v9;
  v10 = *(v1 + 96);
  v36 = *(v1 + 80);
  v37 = v10;
  v11 = *(v1 + 128);
  v38 = *(v1 + 112);
  v39 = v11;
  v12 = *(v1 + 64);
  v34 = *(v1 + 48);
  v35 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C212BE80();
  sub_1C2171484();
  LOBYTE(v28) = 0;
  v13 = v6;
  v14 = v40;
  sub_1C2171274();
  if (v14)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = v19;
  v16 = v20;
  *&v28 = v22;
  *(&v28 + 1) = v21;
  LOBYTE(v26[0]) = 1;
  sub_1C20D865C(v22, v21);
  sub_1C20D8CEC();
  sub_1C2171294();
  sub_1C20D3174(v28, *(&v28 + 1));
  *&v28 = v16;
  LOBYTE(v26[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243F8, &qword_1C217A480);
  sub_1C212B70C(&qword_1EBF24400, sub_1C212B784, MEMORY[0x1E69E6300]);
  sub_1C2171264();
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v27 = 3;
  sub_1C212B7D8(&v34, v26);
  sub_1C212B848();
  sub_1C2171264();
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v26[5] = v33;
  v26[0] = v28;
  v26[1] = v29;
  sub_1C20EB498(v26, &unk_1EBF23690, &qword_1C2176D38);
  v25 = v17;
  v24 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24330, &qword_1C217A0D0);
  sub_1C21273BC(&qword_1EBF24358, MEMORY[0x1E69E6160], MEMORY[0x1E69E6378], MEMORY[0x1E69E5E38]);
  sub_1C2171264();
  return (*(v4 + 8))(v13, v3);
}

uint64_t ASCTAPAuthenticatorGetAssertionCommand.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24468, &qword_1C217A498);
  v5 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v24 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C212BE80();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v8 = v5;
  LOBYTE(v39) = 0;
  v9 = sub_1C21711B4();
  v11 = v10;
  v28 = v9;
  LOBYTE(v30) = 1;
  sub_1C20D8E24();
  sub_1C21711D4();
  v26 = v40;
  v27 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243F8, &qword_1C217A480);
  LOBYTE(v30) = 2;
  sub_1C212B70C(&qword_1EBF24440, sub_1C212BA10, MEMORY[0x1E69E6330]);
  sub_1C21711A4();
  v25 = v39;
  v65 = 3;
  sub_1C212BA64();
  sub_1C21711A4();
  v60 = v54;
  v61 = v55;
  v62 = v56;
  v63 = v57;
  v58 = v52;
  v59 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24330, &qword_1C217A0D0);
  v64 = 4;
  sub_1C21273BC(&qword_1EBF24338, MEMORY[0x1E69E6190], MEMORY[0x1E69E6390], MEMORY[0x1E69E5E58]);
  sub_1C21711A4();
  (*(v8 + 8))(v7, v29);
  v13 = v27;
  v12 = v28;
  v29 = v51;
  *&v30 = v28;
  *(&v30 + 1) = v11;
  *&v31 = v27;
  v14 = v25;
  v15 = v26;
  *(&v31 + 1) = v26;
  *&v32 = v25;
  *(&v32 + 1) = v51;
  v16 = v60;
  v17 = v61;
  v35 = v60;
  v36 = v61;
  v18 = v62;
  v19 = v63;
  v37 = v62;
  v38 = v63;
  v20 = v58;
  v21 = v59;
  v33 = v58;
  v34 = v59;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  a2[7] = v18;
  a2[8] = v19;
  a2[5] = v16;
  a2[6] = v17;
  a2[3] = v20;
  a2[4] = v21;
  a2[2] = v32;
  sub_1C212BED4(&v30, &v39);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v39 = v12;
  v40 = v11;
  v41 = v13;
  v42 = v15;
  v43 = v14;
  v44 = v29;
  v47 = v60;
  v48 = v61;
  v49 = v62;
  v50 = v63;
  v45 = v58;
  v46 = v59;
  return sub_1C212BF0C(&v39);
}

uint64_t sub_1C212ACA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF244E8, &qword_1C217B6B8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C212D1AC();
  sub_1C2171484();
  LOBYTE(v14) = 0;
  sub_1C2171274();
  if (!v5)
  {
    v14 = v12;
    v15 = v13;
    v16 = 1;
    sub_1C212D254();
    sub_1C2171294();
  }

  return (*(v8 + 8))(v10, v7);
}

void *sub_1C212AE30@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1C212AE3C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1C212AEF8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C2171324();
  }
}

uint64_t sub_1C212AF28()
{
  if (*v0)
  {
    return 0x5474736575716572;
  }

  else
  {
    return 0x6E696769726FLL;
  }
}

uint64_t sub_1C212AF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

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

uint64_t sub_1C212B044(uint64_t a1)
{
  v2 = sub_1C212D1AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C212B080(uint64_t a1)
{
  v2 = sub_1C212D1AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C212B0BC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1C212CFB8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

BOOL _s26AuthenticationServicesCore40ASCTAPAuthenticatorMakeCredentialCommandV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v58 = a1[7];
  v59 = a1[6];
  v54 = a1[9];
  v55 = a1[8];
  v50 = a1[11];
  v51 = a1[10];
  v47 = a1[12];
  v45 = a1[13];
  v43 = a1[14];
  v10 = *(a1 + 17);
  v86[0] = *(a1 + 15);
  v86[1] = v10;
  v11 = *(a1 + 19);
  v12 = *(a1 + 21);
  v13 = *(a1 + 25);
  v86[4] = *(a1 + 23);
  v86[5] = v13;
  v86[2] = v11;
  v86[3] = v12;
  v14 = *a2;
  v15 = *(a2 + 8);
  v17 = *(a2 + 16);
  v16 = *(a2 + 24);
  v19 = *(a2 + 32);
  v18 = *(a2 + 40);
  v56 = *(a2 + 56);
  v57 = *(a2 + 48);
  v52 = *(a2 + 72);
  v53 = *(a2 + 64);
  v48 = *(a2 + 88);
  v49 = *(a2 + 80);
  v46 = *(a2 + 96);
  v44 = *(a2 + 104);
  v20 = *(a2 + 136);
  v87[0] = *(a2 + 120);
  v87[1] = v20;
  v21 = *(a2 + 200);
  v87[4] = *(a2 + 184);
  v87[5] = v21;
  v22 = *(a2 + 168);
  v87[2] = *(a2 + 152);
  v87[3] = v22;
  v42 = *(a2 + 112);
  if (!sub_1C21068CC(v4, v5, v14, v15) || (v6 != v17 || v8 != v16) && (sub_1C2171324() & 1) == 0 || (v7 != v19 || v9 != v18) && (sub_1C2171324() & 1) == 0 || (v59 != v57 || v58 != v56) && (sub_1C2171324() & 1) == 0 || !sub_1C21068CC(v55, v54, v53, v52) || (v51 != v49 || v50 != v48) && (sub_1C2171324() & 1) == 0 || (sub_1C21548A4(v47, v46) & 1) == 0)
  {
    return 0;
  }

  if (v45)
  {
    if (!v44)
    {
      return 0;
    }

    v23 = sub_1C2153FC4(v45, v44);

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  if (!v43)
  {
    if (!v42)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v42)
  {
    return 0;
  }

  v24 = sub_1C213A9A8(v43, v42);

  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v25 = v86[0];
  v26 = v87[0];
  if (*(&v86[0] + 1) != 2)
  {
    v74 = v86[0];
    v30 = *(a1 + 19);
    v31 = *(a1 + 23);
    v77 = *(a1 + 21);
    v78 = v31;
    v79 = *(a1 + 25);
    v75 = *(a1 + 17);
    v76 = v30;
    v70 = v30;
    v71 = v77;
    v72 = v31;
    v73 = v79;
    v68 = v86[0];
    v69 = v75;
    if (*(&v87[0] + 1) != 2)
    {
      v38 = *(a2 + 152);
      v39 = *(a2 + 184);
      v65 = *(a2 + 168);
      v66 = v39;
      v67 = *(a2 + 200);
      v63 = *(a2 + 136);
      v64 = v38;
      v62 = v87[0];
      sub_1C212B7D8(v86, v61);
      sub_1C212B7D8(v87, v61);
      sub_1C212B7D8(&v74, v61);
      v29 = _s26AuthenticationServicesCore20ASCTAPExtensionInputV2eeoiySbAC_ACtFZ_0(&v68, &v62);
      v60[2] = v64;
      v60[3] = v65;
      v60[4] = v66;
      v60[5] = v67;
      v60[0] = v62;
      v60[1] = v63;
      sub_1C20D8758(v60);
      v61[2] = v70;
      v61[3] = v71;
      v61[4] = v72;
      v61[5] = v73;
      v61[0] = v68;
      v61[1] = v69;
      sub_1C20D8758(v61);
      v62 = v25;
      v40 = *(a1 + 19);
      v41 = *(a1 + 23);
      v65 = *(a1 + 21);
      v66 = v41;
      v67 = *(a1 + 25);
      v63 = *(a1 + 17);
      v64 = v40;
      sub_1C20EB498(&v62, &unk_1EBF23690, &qword_1C2176D38);
      return v29;
    }

    v64 = v76;
    v65 = v77;
    v66 = v78;
    v67 = v79;
    v62 = v74;
    v63 = v75;
    sub_1C212B7D8(v86, v61);
    sub_1C212B7D8(v87, v61);
    sub_1C212B7D8(&v74, v61);
    sub_1C20D8758(&v62);
    goto LABEL_32;
  }

  if (*(&v87[0] + 1) != 2)
  {
    sub_1C212B7D8(v86, &v74);
    sub_1C212B7D8(v87, &v74);
LABEL_32:
    v74 = v25;
    v32 = *(a1 + 19);
    v33 = *(a1 + 23);
    v77 = *(a1 + 21);
    v78 = v33;
    v79 = *(a1 + 25);
    v75 = *(a1 + 17);
    v76 = v32;
    v80 = v26;
    v34 = *(a2 + 200);
    v35 = *(a2 + 168);
    v84 = *(a2 + 184);
    v85 = v34;
    v36 = *(a2 + 136);
    v82 = *(a2 + 152);
    v83 = v35;
    v81 = v36;
    sub_1C20EB498(&v74, &qword_1EBF244C8, &unk_1C217B540);
    return 0;
  }

  *&v74 = *&v86[0];
  *(&v74 + 1) = 2;
  v27 = *(a1 + 19);
  v28 = *(a1 + 23);
  v77 = *(a1 + 21);
  v78 = v28;
  v79 = *(a1 + 25);
  v75 = *(a1 + 17);
  v76 = v27;
  sub_1C212B7D8(v86, &v68);
  sub_1C212B7D8(v87, &v68);
  sub_1C20EB498(&v74, &unk_1EBF23690, &qword_1C2176D38);
  return 1;
}

unint64_t sub_1C212B5BC()
{
  result = qword_1EBF243C8;
  if (!qword_1EBF243C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF243C8);
  }

  return result;
}

unint64_t sub_1C212B610()
{
  result = qword_1EBF243D0;
  if (!qword_1EBF243D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF243D0);
  }

  return result;
}

unint64_t sub_1C212B664()
{
  result = qword_1EBF243D8;
  if (!qword_1EBF243D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF243D8);
  }

  return result;
}

unint64_t sub_1C212B6B8()
{
  result = qword_1EBF243F0;
  if (!qword_1EBF243F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF243F0);
  }

  return result;
}

uint64_t sub_1C212B70C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF243F8, &qword_1C217A480);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C212B784()
{
  result = qword_1EBF24408;
  if (!qword_1EBF24408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24408);
  }

  return result;
}

uint64_t sub_1C212B7D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23690, &qword_1C2176D38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C212B848()
{
  result = qword_1EBF24410;
  if (!qword_1EBF24410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24410);
  }

  return result;
}

unint64_t sub_1C212B89C()
{
  result = qword_1EBF24420;
  if (!qword_1EBF24420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24420);
  }

  return result;
}

unint64_t sub_1C212B8F0()
{
  result = qword_1EBF24428;
  if (!qword_1EBF24428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24428);
  }

  return result;
}

uint64_t sub_1C212B944(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF243E0, &qword_1C217A478);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C212B9BC()
{
  result = qword_1EBF24438;
  if (!qword_1EBF24438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24438);
  }

  return result;
}

unint64_t sub_1C212BA10()
{
  result = qword_1EBF24448;
  if (!qword_1EBF24448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24448);
  }

  return result;
}

unint64_t sub_1C212BA64()
{
  result = qword_1EBF24450;
  if (!qword_1EBF24450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24450);
  }

  return result;
}

BOOL _s26AuthenticationServicesCore38ASCTAPAuthenticatorGetAssertionCommandV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 6);
  v66[2] = *(a1 + 5);
  v66[3] = v10;
  v11 = *(a1 + 8);
  v66[4] = *(a1 + 7);
  v66[5] = v11;
  v12 = *(a1 + 4);
  v66[0] = *(a1 + 3);
  v66[1] = v12;
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v18 = a2[4];
  v17 = a2[5];
  v19 = *(a2 + 8);
  v67[4] = *(a2 + 7);
  v67[5] = v19;
  v20 = *(a2 + 6);
  v67[2] = *(a2 + 5);
  v67[3] = v20;
  v21 = *(a2 + 4);
  v67[0] = *(a2 + 3);
  v67[1] = v21;
  if ((v4 != v13 || v5 != v14) && (sub_1C2171324() & 1) == 0 || !sub_1C21068CC(v6, v8, v15, v16))
  {
    return 0;
  }

  if (v7)
  {
    if (!v18)
    {
      return 0;
    }

    v22 = sub_1C2153FC4(v7, v18);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v9)
  {
    if (!v17)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  v23 = sub_1C213A9A8(v9, v17);

  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v24 = v66[0];
  v25 = v67[0];
  if (*(&v66[0] + 1) != 2)
  {
    v54 = v66[0];
    v30 = *(a1 + 7);
    v57 = *(a1 + 6);
    v58 = v30;
    v59 = *(a1 + 8);
    v31 = *(a1 + 5);
    v55 = *(a1 + 4);
    v56 = v31;
    v50 = v31;
    v51 = v57;
    v52 = v30;
    v53 = v59;
    v48 = v66[0];
    v49 = v55;
    if (*(&v67[0] + 1) != 2)
    {
      v36 = *(a2 + 7);
      v45 = *(a2 + 6);
      v46 = v36;
      v47 = *(a2 + 8);
      v37 = *(a2 + 5);
      v43 = *(a2 + 4);
      v44 = v37;
      v42 = v67[0];
      sub_1C212B7D8(v66, v41);
      sub_1C212B7D8(v67, v41);
      sub_1C212B7D8(&v54, v41);
      v28 = _s26AuthenticationServicesCore20ASCTAPExtensionInputV2eeoiySbAC_ACtFZ_0(&v48, &v42);
      v40[2] = v44;
      v40[3] = v45;
      v40[4] = v46;
      v40[5] = v47;
      v40[0] = v42;
      v40[1] = v43;
      sub_1C20D8758(v40);
      v41[2] = v50;
      v41[3] = v51;
      v41[4] = v52;
      v41[5] = v53;
      v41[0] = v48;
      v41[1] = v49;
      sub_1C20D8758(v41);
      v42 = v24;
      v38 = *(a1 + 7);
      v45 = *(a1 + 6);
      v46 = v38;
      v47 = *(a1 + 8);
      v39 = *(a1 + 5);
      v43 = *(a1 + 4);
      v44 = v39;
      sub_1C20EB498(&v42, &unk_1EBF23690, &qword_1C2176D38);
      return v28;
    }

    v44 = v56;
    v45 = v57;
    v46 = v58;
    v47 = v59;
    v42 = v54;
    v43 = v55;
    sub_1C212B7D8(v66, v41);
    sub_1C212B7D8(v67, v41);
    sub_1C212B7D8(&v54, v41);
    sub_1C20D8758(&v42);
    goto LABEL_22;
  }

  if (*(&v67[0] + 1) != 2)
  {
    sub_1C212B7D8(v66, &v54);
    sub_1C212B7D8(v67, &v54);
LABEL_22:
    v54 = v24;
    v32 = *(a1 + 7);
    v57 = *(a1 + 6);
    v58 = v32;
    v59 = *(a1 + 8);
    v33 = *(a1 + 5);
    v55 = *(a1 + 4);
    v56 = v33;
    v60 = v25;
    v34 = *(a2 + 8);
    v64 = *(a2 + 7);
    v65 = v34;
    v35 = *(a2 + 6);
    v62 = *(a2 + 5);
    v63 = v35;
    v61 = *(a2 + 4);
    sub_1C20EB498(&v54, &qword_1EBF244C8, &unk_1C217B540);
    return 0;
  }

  *&v54 = *&v66[0];
  *(&v54 + 1) = 2;
  v26 = *(a1 + 7);
  v57 = *(a1 + 6);
  v58 = v26;
  v59 = *(a1 + 8);
  v27 = *(a1 + 5);
  v55 = *(a1 + 4);
  v56 = v27;
  sub_1C212B7D8(v66, &v48);
  sub_1C212B7D8(v67, &v48);
  sub_1C20EB498(&v54, &unk_1EBF23690, &qword_1C2176D38);
  return 1;
}

unint64_t sub_1C212BE80()
{
  result = qword_1EBF24460;
  if (!qword_1EBF24460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24460);
  }

  return result;
}

unint64_t sub_1C212BF40()
{
  result = qword_1EBF24470;
  if (!qword_1EBF24470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24470);
  }

  return result;
}

unint64_t sub_1C212BF98()
{
  result = qword_1EBF24478;
  if (!qword_1EBF24478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24478);
  }

  return result;
}

unint64_t sub_1C212BFF0()
{
  result = qword_1EBF24480;
  if (!qword_1EBF24480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24480);
  }

  return result;
}

unint64_t sub_1C212C048()
{
  result = qword_1EBF24488;
  if (!qword_1EBF24488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24488);
  }

  return result;
}

unint64_t sub_1C212C0A0()
{
  result = qword_1EBF24490;
  if (!qword_1EBF24490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24490);
  }

  return result;
}

unint64_t sub_1C212C0F8()
{
  result = qword_1EBF24498;
  if (!qword_1EBF24498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24498);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore29ASCTAPLargeBlobExtensionInputVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore23ASCTAPPRFExtensionInputVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore20ASCTAPExtensionInputVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1C212C1FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_1C212C244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_1C212C304(uint64_t a1, int a2)
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

uint64_t sub_1C212C34C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy217_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1C212C420(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 217))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 216);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C212C468(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 216) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 217) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 217) = 0;
    }

    if (a2)
    {
      *(result + 216) = -a2;
    }
  }

  return result;
}

BOOL sub_1C212C500(_OWORD *a1, __int128 *a2)
{
  v2 = a1[11];
  v3 = a1[9];
  v113 = a1[10];
  v114 = v2;
  v4 = a1[11];
  v115[0] = a1[12];
  *(v115 + 9) = *(a1 + 201);
  v5 = a1[7];
  v6 = a1[5];
  v109 = a1[6];
  v110 = v5;
  v7 = a1[7];
  v8 = a1[9];
  v111 = a1[8];
  v112 = v8;
  v9 = a1[3];
  v10 = a1[1];
  v105 = a1[2];
  v106 = v9;
  v11 = a1[3];
  v12 = a1[5];
  v107 = a1[4];
  v108 = v12;
  v13 = a1[1];
  v104[0] = *a1;
  v104[1] = v13;
  v14 = a2[11];
  v15 = a2[9];
  v126 = a2[10];
  v127 = v14;
  v16 = a2[11];
  v128[0] = a2[12];
  *(v128 + 9) = *(a2 + 201);
  v17 = a2[7];
  v18 = a2[5];
  v122 = a2[6];
  v123 = v17;
  v19 = a2[7];
  v20 = a2[9];
  v124 = a2[8];
  v125 = v20;
  v21 = a2[3];
  v22 = a2[1];
  v118 = a2[2];
  v119 = v21;
  v23 = a2[3];
  v24 = a2[5];
  v120 = a2[4];
  v121 = v24;
  v25 = a2[1];
  v116 = *a2;
  v117 = v25;
  v26 = a1[11];
  v129[10] = a1[10];
  v129[11] = v26;
  v130[0] = a1[12];
  *(v130 + 9) = *(a1 + 201);
  v27 = a1[7];
  v129[6] = a1[6];
  v129[7] = v27;
  v28 = a1[9];
  v129[8] = a1[8];
  v129[9] = v28;
  v29 = a1[3];
  v129[2] = a1[2];
  v129[3] = v29;
  v30 = a1[5];
  v129[4] = a1[4];
  v129[5] = v30;
  v31 = a1[1];
  v129[0] = *a1;
  v129[1] = v31;
  *(v131 + 9) = *(a2 + 201);
  v32 = a2[12];
  v130[13] = v16;
  v131[0] = v32;
  v130[9] = v19;
  v130[10] = v124;
  v130[12] = v126;
  v130[11] = v15;
  v130[5] = v23;
  v130[6] = v120;
  v130[8] = v122;
  v130[7] = v18;
  v130[2] = v116;
  v130[4] = v118;
  v130[3] = v22;
  v132[10] = v113;
  v132[11] = v4;
  v133[0] = a1[12];
  *(v133 + 9) = *(a1 + 201);
  v132[6] = v109;
  v132[7] = v7;
  v132[8] = v111;
  v132[9] = v3;
  v132[2] = v105;
  v132[3] = v11;
  v132[4] = v107;
  v132[5] = v6;
  v132[0] = v104[0];
  v132[1] = v10;
  if (sub_1C20E7ABC(v132) == 1)
  {
    nullsub_1();
    v34 = v33;
    v101 = v126;
    v102 = v127;
    v103[0] = v128[0];
    *(v103 + 9) = *(v128 + 9);
    v97 = v122;
    v98 = v123;
    v99 = v124;
    v100 = v125;
    v93 = v118;
    v94 = v119;
    v95 = v120;
    v96 = v121;
    v91 = v116;
    v92 = v117;
    if (sub_1C20E7ABC(&v91) == 1)
    {
      nullsub_1();
      v35 = v34[7];
      v82 = v34[6];
      v83 = v35;
      v84 = v34[8];
      v36 = v34[3];
      v78 = v34[2];
      v79 = v36;
      v37 = v34[5];
      v80 = v34[4];
      v81 = v37;
      v38 = v34[1];
      v76 = *v34;
      v77 = v38;
      v40 = v39[7];
      v68 = v39[6];
      v69 = v40;
      v70 = v39[8];
      v41 = v39[3];
      v64 = v39[2];
      v65 = v41;
      v42 = v39[5];
      v66 = v39[4];
      v67 = v42;
      v43 = v39[1];
      v62 = *v39;
      v63 = v43;
      sub_1C20EAEDC(&v116, v90);
      sub_1C20EAEDC(v104, v90);
      sub_1C20EAEDC(v104, v90);
      sub_1C20EAEDC(&v116, v90);
      AssertionCommandV2eeoiySbAC_ACtFZ_0 = _s26AuthenticationServicesCore38ASCTAPAuthenticatorGetAssertionCommandV2eeoiySbAC_ACtFZ_0(&v76, &v62);
LABEL_7:
      v47 = AssertionCommandV2eeoiySbAC_ACtFZ_0;
      sub_1C20EB498(v129, &qword_1EBF244A0, &qword_1C217B538);
      sub_1C212C9C8(&v116);
      sub_1C212C9C8(v104);
      return v47;
    }
  }

  else
  {
    nullsub_1();
    v46 = v45;
    v101 = v126;
    v102 = v127;
    v103[0] = v128[0];
    *(v103 + 9) = *(v128 + 9);
    v97 = v122;
    v98 = v123;
    v99 = v124;
    v100 = v125;
    v93 = v118;
    v94 = v119;
    v95 = v120;
    v96 = v121;
    v91 = v116;
    v92 = v117;
    if (sub_1C20E7ABC(&v91) != 1)
    {
      nullsub_1();
      v48 = v46[11];
      v86 = v46[10];
      v87 = v48;
      v88 = v46[12];
      v89 = *(v46 + 26);
      v49 = v46[7];
      v82 = v46[6];
      v83 = v49;
      v50 = v46[9];
      v84 = v46[8];
      v85 = v50;
      v51 = v46[3];
      v78 = v46[2];
      v79 = v51;
      v52 = v46[5];
      v80 = v46[4];
      v81 = v52;
      v53 = v46[1];
      v76 = *v46;
      v77 = v53;
      v55 = v54[11];
      v72 = v54[10];
      v73 = v55;
      v74 = v54[12];
      v75 = *(v54 + 26);
      v56 = v54[7];
      v68 = v54[6];
      v69 = v56;
      v57 = v54[9];
      v70 = v54[8];
      v71 = v57;
      v58 = v54[3];
      v64 = v54[2];
      v65 = v58;
      v59 = v54[5];
      v66 = v54[4];
      v67 = v59;
      v60 = v54[1];
      v62 = *v54;
      v63 = v60;
      sub_1C20EAEDC(&v116, v90);
      sub_1C20EAEDC(v104, v90);
      sub_1C20EAEDC(v104, v90);
      sub_1C20EAEDC(&v116, v90);
      AssertionCommandV2eeoiySbAC_ACtFZ_0 = _s26AuthenticationServicesCore40ASCTAPAuthenticatorMakeCredentialCommandV2eeoiySbAC_ACtFZ_0(&v76, &v62);
      goto LABEL_7;
    }
  }

  nullsub_1();
  sub_1C20EAEDC(v104, &v91);
  sub_1C20EAEDC(&v116, &v91);
  sub_1C20EB498(v129, &qword_1EBF244A0, &qword_1C217B538);
  return 0;
}

unint64_t sub_1C212C9F8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1C21709E4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1C2170AC4();
}

uint64_t sub_1C212CAA8(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      if (a1 != a1 >> 32)
      {
        goto LABEL_7;
      }
    }

    else if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    v6 = 0;
    v7 = 1;
LABEL_13:
    sub_1C212CC30();
    swift_allocError();
    *v8 = v6;
    v8[1] = v7;
    return swift_willThrow();
  }

  if (v4 != 2 || *(a1 + 16) == *(a1 + 24))
  {
    goto LABEL_12;
  }

LABEL_7:
  LOBYTE(result) = sub_1C2170134();
  v6 = result;
  v7 = 0;
  if (result > 1u)
  {
    if (result == 2 || result == 3)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (result)
  {
    if (result == 1)
    {
LABEL_10:
      sub_1C20D865C(a1, a2);
      sub_1C2128BB4(1uLL, a1, a2, &v9);
      return v9;
    }

    goto LABEL_13;
  }

  return result;
}

unint64_t sub_1C212CC30()
{
  result = qword_1EBF244A8;
  if (!qword_1EBF244A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244A8);
  }

  return result;
}

unint64_t sub_1C212CC84()
{
  result = qword_1EBF244B0;
  if (!qword_1EBF244B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244B0);
  }

  return result;
}

unint64_t sub_1C212CCD8()
{
  result = qword_1EBF244B8;
  if (!qword_1EBF244B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244B8);
  }

  return result;
}

unint64_t sub_1C212CD38()
{
  result = qword_1EBF244C0;
  if (!qword_1EBF244C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244C0);
  }

  return result;
}

uint64_t sub_1C212CD94(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (((a2 >> 60) & 3) <= 1)
  {
    if (v2)
    {
      a2 &= 0xCFFFFFFFFFFFFFFFLL;
    }

    return sub_1C20D865C(result, a2);
  }

  if (v2 == 2)
  {
    a2 &= 0xCFFFFFFFFFFFFFFFLL;
    return sub_1C20D865C(result, a2);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C212CDEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C212CE34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C212CE84(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *sub_1C212CF08(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_1C212CFB8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF244D0, &qword_1C217B6B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C212D1AC();
  sub_1C2171464();
  if (!v1)
  {
    v9[16] = 0;
    v7 = sub_1C21711B4();
    v9[15] = 1;
    sub_1C212D200();
    sub_1C21711D4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_1C212D1AC()
{
  result = qword_1EBF244D8;
  if (!qword_1EBF244D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244D8);
  }

  return result;
}

unint64_t sub_1C212D200()
{
  result = qword_1EBF244E0;
  if (!qword_1EBF244E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244E0);
  }

  return result;
}

unint64_t sub_1C212D254()
{
  result = qword_1EBF244F0;
  if (!qword_1EBF244F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244F0);
  }

  return result;
}

uint64_t sub_1C212D2B8(uint64_t a1, int a2)
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

uint64_t sub_1C212D300(uint64_t result, int a2, int a3)
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

unint64_t sub_1C212D350()
{
  result = qword_1EBF244F8;
  if (!qword_1EBF244F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244F8);
  }

  return result;
}

unint64_t sub_1C212D3A8()
{
  result = qword_1EBF24500;
  if (!qword_1EBF24500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24500);
  }

  return result;
}

unint64_t sub_1C212D400()
{
  result = qword_1EBF24508;
  if (!qword_1EBF24508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24508);
  }

  return result;
}

unint64_t sub_1C212D454()
{
  result = qword_1EBF24510;
  if (!qword_1EBF24510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24510);
  }

  return result;
}

__n128 ASCTAPExtensionInput.init(largeBlob:prf:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(a1 + 32);
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 56) = *a2;
  v6 = *(a2 + 32);
  *(a3 + 48) = *(a1 + 48);
  *(a3 + 72) = v5;
  *(a3 + 88) = v6;
  return result;
}

uint64_t ASCTAPExtensionInput.encode(for:)(char *a1)
{
  v3 = sub_1C21702C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = v1[3];
  v26 = v1[2];
  v27 = v8;
  v9 = v1[5];
  v28 = v1[4];
  v29 = v9;
  v10 = v1[1];
  v24 = *v1;
  v25 = v10;
  sub_1C2170314();
  swift_allocObject();
  sub_1C2170304();
  (*(v4 + 104))(v6, *MEMORY[0x1E698F6D8], v3);
  sub_1C21702D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24518, &qword_1C217B8B0);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24520, &unk_1C217B8B8) - 8);
  v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C21768E0;
  v14 = v11[14];
  if (qword_1EBF23138 != -1)
  {
    v22 = v13;
    swift_once();
    v13 = v22;
  }

  v15 = v13 + v12;
  v16 = v13 + v12 + v14;
  v17 = v13;
  v18 = sub_1C2171054();
  v19 = __swift_project_value_buffer(v18, qword_1EBF25218);
  (*(*(v18 - 8) + 16))(v15, v19, v18);
  *(v16 + 24) = &type metadata for CodingUserInfoKey.CBOREncodingFormat;
  *v16 = v7;
  sub_1C213EE5C(v17);
  swift_setDeallocating();
  sub_1C20EB498(v15, &qword_1EBF24520, &unk_1C217B8B8);
  swift_deallocClassInstance();
  sub_1C21702F4();
  v23[2] = v26;
  v23[3] = v27;
  v23[4] = v28;
  v23[5] = v29;
  v23[0] = v24;
  v23[1] = v25;
  sub_1C212B848();
  v20 = sub_1C21702E4();

  return v20;
}

uint64_t ASCTAPLargeBlobExtensionInput.init(support:read:uncompressedWrite:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a5;
  v10 = a5 >> 60;
  if (a5 >> 60 == 15)
  {
    v11 = 0;
LABEL_3:
    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = v7;
    *(a6 + 40) = v11;
    *(a6 + 48) = v10 > 0xE;
    return result;
  }

  v12 = result;
  v13 = a3;
  v14 = a6;
  v15 = sub_1C2170044();
  if (v6)
  {
    sub_1C20B23C8(a4, v7);
  }

  v17 = v7 >> 62;
  v21 = v16;
  v18 = v15;
  if ((v7 >> 62) > 1)
  {
    if (v17 != 2)
    {
LABEL_17:
      sub_1C20B23C8(a4, v7);
      v11 = 0;
      goto LABEL_18;
    }

    v19 = *(a4 + 16);
    v20 = *(a4 + 24);
    sub_1C20B23C8(a4, v7);
    v11 = v20 - v19;
    if (!__OFSUB__(v20, v19))
    {
LABEL_15:
      a6 = v14;
      a3 = v13;
      result = v12;
      a4 = v18;
      v7 = v21;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_3;
      }

      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v17)
  {
    sub_1C20B23C8(a4, v7);
    v11 = BYTE6(v7);
LABEL_18:
    a6 = v14;
    a3 = v13;
    result = v12;
    a4 = v18;
    v7 = v21;
    goto LABEL_3;
  }

  result = sub_1C20B23C8(a4, v7);
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v11 = HIDWORD(a4) - a4;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C212D9B0(uint64_t a1)
{
  v2 = sub_1C2170724();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23500, &qword_1C2176948);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  sub_1C20EB3E8(a1, &v17 - v8, &qword_1EBF23500, &qword_1C2176948);
  (*(v3 + 16))(v5, v9, v2);
  sub_1C213FAD0(&qword_1EBF24838, MEMORY[0x1E69663E0], MEMORY[0x1E69663F0]);
  sub_1C2170AD4();
  v10 = *&v9[*(v7 + 44)];
  sub_1C20EB498(v9, &qword_1EBF23500, &qword_1C2176948);
  result = v17;
  if (!v10 || (v12 = *(v17 + 16), v18 == v12))
  {
    v13 = 0;
LABEL_4:

LABEL_5:
    sub_1C20EB498(a1, &qword_1EBF23500, &qword_1C2176948);
    return v13;
  }

  if (v18 < v12)
  {
    v14 = v17 + 32;
    v13 = *(v17 + 32 + v18);
    if (v10 == 1 || v18 + 1 == v12)
    {
      goto LABEL_4;
    }

    if (v18 + 1 < v12)
    {
      v13 |= *(v14 + v18 + 1) << 8;
      if (v10 == 2 || v18 + 2 == v12)
      {
        goto LABEL_4;
      }

      if (v18 + 2 < v12)
      {
        v13 |= *(v14 + v18 + 2) << 16;
        if (v10 == 3 || v18 + 3 == v12)
        {
          goto LABEL_4;
        }

        if (v18 + 3 < v12)
        {
          v13 |= *(v14 + v18 + 3) << 24;
          if (v10 == 4 || v18 + 4 == v12)
          {
            goto LABEL_4;
          }

          if (v18 + 4 < v12)
          {
            v13 |= *(v14 + v18 + 4) << 32;
            if (v10 == 5 || v18 + 5 == v12)
            {
              goto LABEL_4;
            }

            if (v18 + 5 < v12)
            {
              v13 |= *(v14 + v18 + 5) << 40;
              if (v10 == 6 || v18 + 6 == v12)
              {
                goto LABEL_4;
              }

              if (v18 + 6 < v12)
              {
                v13 |= *(v14 + v18 + 6) << 48;
                if (v10 == 7)
                {
                  goto LABEL_4;
                }

                v15 = v18 + 7;
                if (v18 + 7 == v12)
                {
                  goto LABEL_4;
                }

                if (v15 < v12)
                {
                  v16 = *(v14 + v15);

                  v13 |= v16 << 56;
                  goto LABEL_5;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C212DC80(uint64_t a1)
{
  v1 = sub_1C21701A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C21701B4();
  sub_1C213FAD0(&qword_1EDD4ADA8, MEMORY[0x1E6969050], MEMORY[0x1E6969058]);
  sub_1C2170D74();
  if (v10)
  {
    v5 = 0;
  }

  else
  {
    v6 = v9;
    sub_1C2170D74();
    if (v10)
    {
      v5 = v6;
    }

    else
    {
      v5 = v6 | (v9 << 8);
    }
  }

  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1C212DE0C(uint64_t a1)
{
  v1 = sub_1C21701A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C21701B4();
  sub_1C213FAD0(&qword_1EDD4ADA8, MEMORY[0x1E6969050], MEMORY[0x1E6969058]);
  sub_1C2170D74();
  if (v9)
  {
    v5 = 0;
  }

  else
  {
    v5 = v8;
    sub_1C2170D74();
    if ((v9 & 1) == 0)
    {
      v5 |= v8 << 8;
      sub_1C2170D74();
      if ((v9 & 1) == 0)
      {
        v5 |= v8 << 16;
        sub_1C2170D74();
        if ((v9 & 1) == 0)
        {
          v5 |= v8 << 24;
          sub_1C2170D74();
          if ((v9 & 1) == 0)
          {
            v5 |= v8 << 32;
            sub_1C2170D74();
            if ((v9 & 1) == 0)
            {
              v5 |= v8 << 40;
              sub_1C2170D74();
              if ((v9 & 1) == 0)
              {
                v5 |= v8 << 48;
                sub_1C2170D74();
                if ((v9 & 1) == 0)
                {
                  v5 |= v8 << 56;
                }
              }
            }
          }
        }
      }
    }
  }

  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1C212E05C(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v36 = *MEMORY[0x1E69E9840];
  v33 = a1 >> 32;
  v34 = BYTE6(a2);
  if ((a2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = a1 >> 32;
  }

  else
  {
    v5 = BYTE6(a2);
  }

  v6 = 0;
  v7 = a1;
  v8 = -8;
  v31 = a1 >> 16;
  v32 = a1 >> 8;
  v29 = HIDWORD(a1);
  v30 = a1 >> 24;
  v27 = HIWORD(a1);
  v28 = a1 >> 40;
  v25 = a2 >> 8;
  v26 = HIBYTE(a1);
  v23 = a2 >> 24;
  v24 = a2 >> 16;
  v22 = HIDWORD(a2);
  v9 = a2 >> 40;
  do
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v10 = *(a1 + 16);
LABEL_14:
        if (v5 == v10)
        {
          break;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v10 = a1;
      if (v4)
      {
        goto LABEL_14;
      }
    }

    if (!v5)
    {
      break;
    }

LABEL_17:
    if (__OFSUB__(v5--, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    if (v4 > 1)
    {
      if (v4 != 2)
      {
        goto LABEL_45;
      }

      if (v5 < *(a1 + 16))
      {
        goto LABEL_40;
      }

      if (v5 >= *(a1 + 24))
      {
        goto LABEL_42;
      }

      v13 = sub_1C216FDD4();
      if (!v13)
      {
        goto LABEL_47;
      }

      v14 = v13;
      v15 = sub_1C216FE04();
      v16 = v5 - v15;
      if (__OFSUB__(v5, v15))
      {
        goto LABEL_44;
      }

      goto LABEL_33;
    }

    if (v4)
    {
      if (v5 < a1 || v5 >= v33)
      {
        goto LABEL_41;
      }

      v17 = sub_1C216FDD4();
      if (!v17)
      {
        goto LABEL_46;
      }

      v14 = v17;
      v18 = sub_1C216FE04();
      v16 = v5 - v18;
      if (__OFSUB__(v5, v18))
      {
        goto LABEL_43;
      }

LABEL_33:
      v12 = *(v14 + v16);
      goto LABEL_34;
    }

    if (v5 >= v34)
    {
      goto LABEL_39;
    }

    v35[0] = v7;
    v35[1] = v32;
    v35[2] = v31;
    v35[3] = v30;
    v35[4] = v29;
    v35[5] = v28;
    v35[6] = v27;
    v35[7] = v26;
    v35[8] = a2;
    v35[9] = v25;
    v35[10] = v24;
    v35[11] = v23;
    v35[12] = v22;
    v35[13] = v9;
    v12 = v35[v5];
LABEL_34:
    v19 = v12 << (v8 + 8);
    v20 = __CFADD__(v6, v19);
    v6 = (v6 + v19);
    if (v20)
    {
      goto LABEL_38;
    }

    v8 += 8;
  }

  while (v8 < 0x18);
  sub_1C20D3174(a1, a2);
  return v6;
}

uint64_t sub_1C212E2E8(char a1, unsigned __int16 a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = xmmword_1C2176980;
  do
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24860, &qword_1C217E150);
    v16[3] = v4;
    v16[4] = sub_1C20EB398(&qword_1EBF24868, &qword_1EBF24860, &qword_1C217E150, MEMORY[0x1E696A0B0]);
    LOBYTE(v16[0]) = v3;
    __swift_project_boxed_opaque_existential_1(v16, v4);
    sub_1C2170104();
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    v5 = v3 > 0xFF;
    v3 >>= 8;
  }

  while (v5);
  v7 = *(&v17 + 1);
  v6 = v17;
  if ((a1 & 1) == 0)
  {
    goto LABEL_19;
  }

  v8 = *(&v17 + 1) >> 62;
  if ((*(&v17 + 1) >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE14(v17);
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v11 = *(v17 + 16);
  v10 = *(v17 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_13:
    LODWORD(v9) = HIDWORD(v6) - v6;
    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_21;
    }

    v9 = v9;
  }

LABEL_16:
  v13 = 2 - v9;
  if (__OFSUB__(2, v9))
  {
    __break(1u);
LABEL_21:
    __break(1u);
  }

  if (v13 >= 1)
  {
    v14 = sub_1C2170B84();
    *(v14 + 16) = v13;
    bzero((v14 + 32), v13);
    sub_1C2170114();

    v7 = *(&v17 + 1);
    v6 = v17;
  }

LABEL_19:
  sub_1C20D865C(v6, v7);
  sub_1C20D3174(v6, v7);
  return v6;
}

uint64_t sub_1C212E50C(char a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = xmmword_1C2176980;
  do
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24860, &qword_1C217E150);
    v16[3] = v4;
    v16[4] = sub_1C20EB398(&qword_1EBF24868, &qword_1EBF24860, &qword_1C217E150, MEMORY[0x1E696A0B0]);
    LOBYTE(v16[0]) = a2;
    __swift_project_boxed_opaque_existential_1(v16, v4);
    sub_1C2170104();
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    v5 = a2 > 0xFF;
    a2 >>= 8;
  }

  while (v5);
  v7 = *(&v17 + 1);
  v6 = v17;
  if ((a1 & 1) == 0)
  {
    goto LABEL_19;
  }

  v8 = *(&v17 + 1) >> 62;
  if ((*(&v17 + 1) >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE14(v17);
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v11 = *(v17 + 16);
  v10 = *(v17 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_13:
    LODWORD(v9) = HIDWORD(v6) - v6;
    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_21;
    }

    v9 = v9;
  }

LABEL_16:
  v13 = 8 - v9;
  if (__OFSUB__(8, v9))
  {
    __break(1u);
LABEL_21:
    __break(1u);
  }

  if (v13 >= 1)
  {
    v14 = sub_1C2170B84();
    *(v14 + 16) = v13;
    bzero((v14 + 32), v13);
    sub_1C2170114();

    v7 = *(&v17 + 1);
    v6 = v17;
  }

LABEL_19:
  sub_1C20D865C(v6, v7);
  sub_1C20D3174(v6, v7);
  return v6;
}

uint64_t sub_1C212E730(char a1, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = xmmword_1C2176980;
  do
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24860, &qword_1C217E150);
    v16[3] = v4;
    v16[4] = sub_1C20EB398(&qword_1EBF24868, &qword_1EBF24860, &qword_1C217E150, MEMORY[0x1E696A0B0]);
    LOBYTE(v16[0]) = a2;
    __swift_project_boxed_opaque_existential_1(v16, v4);
    sub_1C2170104();
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    v5 = a2 > 0xFF;
    a2 >>= 8;
  }

  while (v5);
  v7 = *(&v17 + 1);
  v6 = v17;
  if ((a1 & 1) == 0)
  {
    goto LABEL_19;
  }

  v8 = *(&v17 + 1) >> 62;
  if ((*(&v17 + 1) >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE14(v17);
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v11 = *(v17 + 16);
  v10 = *(v17 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_13:
    LODWORD(v9) = HIDWORD(v6) - v6;
    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_21;
    }

    v9 = v9;
  }

LABEL_16:
  v13 = 4 - v9;
  if (__OFSUB__(4, v9))
  {
    __break(1u);
LABEL_21:
    __break(1u);
  }

  if (v13 >= 1)
  {
    v14 = sub_1C2170B84();
    *(v14 + 16) = v13;
    bzero((v14 + 32), v13);
    sub_1C2170114();

    v7 = *(&v17 + 1);
    v6 = v17;
  }

LABEL_19:
  sub_1C20D865C(v6, v7);
  sub_1C20D3174(v6, v7);
  return v6;
}

uint64_t sub_1C212E954(unsigned __int8 a1)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C212EA44(uint64_t a1, unsigned __int8 a2)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t ASCTAPAuthenticatorTransport.rawValue.getter()
{
  v1 = *v0;
  v2 = 6452085;
  v3 = 0x6C616E7265746E69;
  v4 = 0x646972627968;
  if (v1 != 4)
  {
    v4 = 0x61632D7472616D73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6514286;
  if (v1 != 1)
  {
    v5 = 6646882;
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

uint64_t ASCTAPUserVerificationRequirement.rawValue.getter()
{
  v1 = 0x6572726566657270;
  if (*v0 != 1)
  {
    v1 = 0x6172756F63736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465726975716572;
  }
}

char *sub_1C212EC3C(char a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 48);
  v29 = *(v1 + 64);
  v30 = *(v1 + 56);
  v27 = *(v1 + 80);
  v28 = *(v1 + 72);
  v9 = *(v1 + 88);
  v10 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs());
  sub_1C20D87AC(v3, v2, v4, v5, v7);
  v11 = [v10 init];
  if (v2 == 1)
  {
    v12 = 0;
    v13 = 0xB000000000000000;
  }

  else
  {
    *&v34 = v3;
    *(&v34 + 1) = v2;
    LOBYTE(v35) = v4;
    *(&v35 + 1) = v5;
    v36 = v7;
    v37 = v6;
    v38 = v8 & 1;
    sub_1C213360C(&v39);

    sub_1C20B23C8(v5, v7);
    v12 = v39;
    v13 = v40;
  }

  v14 = &v11[OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob];
  v15 = 1;
  swift_beginAccess();
  v16 = *v14;
  v17 = v14[1];
  *v14 = v12;
  v14[1] = v13;
  sub_1C2106BFC(v16, v17);
  if (v9 == 1)
  {
    v18 = 0;
    v31 = 0u;
    v33 = 0u;
  }

  else
  {
    v39 = v30;
    v40 = v29;
    v41 = v28;
    v42 = v27;
    v43 = v9;
    sub_1C20B22CC(v30, v29, v28, v27);

    sub_1C2133798(a1 & 1, &v34);
    sub_1C20B23DC(v30, v29, v28, v27);

    v31 = v35;
    v33 = v34;
    v18 = v36;
    v15 = v37;
  }

  v19 = &v11[OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf];
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];
  v24 = v19[4];
  v25 = v19[5];
  *v19 = v33;
  *(v19 + 1) = v31;
  v19[4] = v18;
  v19[5] = v15;
  sub_1C2106BB8(v20, v21, v22, v23, v24, v25);
  return v11;
}

_BYTE *sub_1C212EE38(char a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v29 = v1[8];
  v30 = v1[7];
  v27 = v1[10];
  v28 = v1[9];
  v7 = v1[11];
  v8 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs());
  sub_1C20D87AC(v2, v3, v4, v5, v6);
  v9 = [v8 init];
  if (!v3)
  {
    sub_1C20D8840(v2, 0, v4, v5, v6);
    v10 = 2;
    goto LABEL_11;
  }

  if (v3 == 1)
  {
    v10 = 2;
    goto LABEL_11;
  }

  if (v2 == 0x6572726566657270 && v3 == 0xE900000000000064)
  {
    v11 = 0x6572726566657270;
    v12 = 0xE900000000000064;
LABEL_10:
    sub_1C20D8840(v11, v12, v4, v5, v6);
    v10 = 1;
    goto LABEL_11;
  }

  if (sub_1C2171324())
  {
    v11 = v2;
    v12 = v3;
    goto LABEL_10;
  }

  if (v2 == 0x6465726975716572 && v3 == 0xE800000000000000)
  {
    sub_1C20D8840(0x6465726975716572, 0xE800000000000000, v4, v5, v6);
    v10 = 0;
  }

  else
  {
    v26 = sub_1C2171324();
    sub_1C20D8840(v2, v3, v4, v5, v6);
    if (v26)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }
  }

LABEL_11:
  v13 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  v14 = 1;
  swift_beginAccess();
  v9[v13] = v10;
  if (v7 == 1)
  {
    v15 = 0;
    v16 = 0;
    v31 = 0u;
    v33 = 0u;
  }

  else
  {
    sub_1C20B22CC(v30, v29, v28, v27);

    sub_1C21339F8(a1 & 1, v34);
    sub_1C20B23DC(v30, v29, v28, v27);

    v31 = v34[1];
    v33 = v34[0];
    v15 = v35;
    v16 = v36;
    v14 = v37;
  }

  v17 = &v9[OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf];
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];
  v21 = v17[3];
  v22 = v17[4];
  v23 = v17[5];
  v24 = v17[6];
  *v17 = v33;
  *(v17 + 1) = v31;
  v17[4] = v15;
  v17[5] = v16;
  v17[6] = v14;
  sub_1C20D86B0(v18, v19, v20, v21, v22, v23, v24);
  return v9;
}

_BYTE *sub_1C212F134()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BC8, &qword_1C21789D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v23 = *(v0 + 64);
  v24 = v8;
  v9 = *(v0 + 72);
  v21 = *(v0 + 80);
  v22 = v9;
  v10 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs(0));
  sub_1C213FE60(v4, v5, v6);
  v11 = [v10 init];
  v12 = v4;
  if (v4 == 3)
  {
    v12 = 2;
  }

  else
  {
    sub_1C213FF48(v4, v5, v6);
    if (v4 != 2)
    {
      v12 = v4 & 1;
    }
  }

  v13 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob;
  swift_beginAccess();
  v11[v13] = v12;
  if (v7 == 3)
  {
    v14 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  }

  else
  {
    v25[0] = v7;
    v16 = v23;
    v15 = v24;
    v26 = v24;
    v27 = v23;
    v18 = v21;
    v17 = v22;
    v28 = v22;
    v29 = v21;
    sub_1C20B22CC(v24, v23, v22, v21);
    sub_1C21371F4(v3);
    sub_1C20B23DC(v15, v16, v17, v18);
  }

  v19 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C21198A4(v3, &v11[v19], &qword_1EBF23BC8, &qword_1C21789D0);
  swift_endAccess();
  return v11;
}

char *sub_1C212F364()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v30 - v2;
  v5 = *v0;
  v4 = *(v0 + 8);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v34 = *(v0 + 48);
  v10 = *(v0 + 56);
  v32 = *(v0 + 64);
  v33 = v10;
  v11 = *(v0 + 72);
  v30 = *(v0 + 80);
  v31 = v11;
  v12 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0));
  sub_1C213FE60(v5, v4, v6);
  v13 = [v12 init];
  if (v5 == 3)
  {
    goto LABEL_2;
  }

  if (v7 == 2)
  {
    v35[0] = v5;
    v36 = v4;
    v37 = v6;
    LOBYTE(v38) = 2;
    v39 = v8;
    v40 = v9 & 1;
    v17 = ASCTAPLargeBlobExtensionOutput.uncompressedBlob.getter();
    if (v18 >> 60 == 15)
    {
      sub_1C213FF48(v5, v4, v6);
LABEL_2:
      v14 = 0;
      v15 = 0;
      v16 = -1;
      goto LABEL_8;
    }

    v14 = v17;
    v15 = v18;
    sub_1C213FF48(v5, v4, v6);
    v16 = 0;
  }

  else
  {
    sub_1C213FF48(v5, v4, v6);
    v15 = 0;
    v14 = v7 & 1;
    v16 = 1;
  }

LABEL_8:
  v19 = &v13[OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob];
  swift_beginAccess();
  v20 = *v19;
  v21 = *(v19 + 1);
  *v19 = v14;
  *(v19 + 1) = v15;
  v22 = v19[16];
  v19[16] = v16;
  sub_1C2142F40(v20, v21, v22);
  if (v34 == 3)
  {
    v23 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
    (*(*(v23 - 8) + 56))(v3, 1, 1, v23);
  }

  else
  {
    v35[0] = v34;
    v25 = v32;
    v24 = v33;
    v36 = v33;
    v37 = v32;
    v27 = v30;
    v26 = v31;
    v38 = v31;
    v39 = v30;
    sub_1C20B22CC(v33, v32, v31, v30);
    sub_1C213757C(v3);
    sub_1C20B23DC(v24, v25, v26, v27);
  }

  v28 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C21198A4(v3, &v13[v28], &qword_1EBF24840, &qword_1C217E130);
  swift_endAccess();
  return v13;
}

uint64_t static ASCTAPUserVerificationRequirement.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    return 0;
  }

  if (*a1 == 1)
  {
    if (*a2)
    {
      v2 = sub_1C2171324();

      return v2 & 1;
    }
  }

  return 1;
}

AuthenticationServicesCore::ASCTAPUserVerificationRequirement_optional __swiftcall ASCTAPUserVerificationRequirement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C2171134();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C212F754(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6572726566657270;
  v4 = 0xE900000000000064;
  if (v2 != 1)
  {
    v3 = 0x6172756F63736964;
    v4 = 0xEB00000000646567;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6465726975716572;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6572726566657270;
  v8 = 0xE900000000000064;
  if (*a2 != 1)
  {
    v7 = 0x6172756F63736964;
    v8 = 0xEB00000000646567;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6465726975716572;
  }

  if (*a2)
  {
    v10 = v8;
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
    v11 = sub_1C2171324();
  }

  return v11 & 1;
}

uint64_t sub_1C212F870()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C212F920(uint64_t a1)
{
  sub_1C21709B4();
}

uint64_t sub_1C212F9BC(uint64_t a1)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

void sub_1C212FA74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000064;
  v5 = 0x6572726566657270;
  if (v2 != 1)
  {
    v5 = 0x6172756F63736964;
    v4 = 0xEB00000000646567;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465726975716572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C212FAE0(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    return 0;
  }

  if (*a1 == 1)
  {
    if (*a2)
    {
      v2 = sub_1C2171324();

      return v2 & 1;
    }
  }

  return 1;
}

uint64_t sub_1C212FB9C(_BYTE *a1, _BYTE *a2)
{
  if (!*a2)
  {
    return 1;
  }

  if (*a2 != 1)
  {
    return 0;
  }

  if (*a1)
  {
    v2 = sub_1C2171324();

    v3 = v2 ^ 1;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1C212FC6C(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    return 1;
  }

  if (*a1 != 1)
  {
    return 0;
  }

  if (*a2)
  {
    v2 = sub_1C2171324();

    v3 = v2 ^ 1;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1C212FD3C(_BYTE *a1, _BYTE *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (*a2 == 1)
  {
    if (*a1)
    {
      v2 = sub_1C2171324();

      return v2 & 1;
    }
  }

  return 1;
}

AuthenticationServicesCore::ASCTAPAuthenticatorTransport_optional __swiftcall ASCTAPAuthenticatorTransport.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C2171134();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C212FEA4(uint64_t a1)
{
  sub_1C21709B4();
}

void sub_1C212FF90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6452085;
  v5 = 0xE800000000000000;
  v6 = 0x6C616E7265746E69;
  v7 = 0xE600000000000000;
  v8 = 0x646972627968;
  if (v2 != 4)
  {
    v8 = 0x61632D7472616D73;
    v7 = 0xEA00000000006472;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 6514286;
  if (v2 != 1)
  {
    v9 = 6646882;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE300000000000000;
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

AuthenticationServicesCore::ASWKCTAPAuthenticatorTransport_optional __swiftcall ASWKCTAPAuthenticatorTransport.init(rawValue:)(NSNumber rawValue)
{
  v3 = v1;
  sub_1C20DB8B8(0, &qword_1EDD4A9B0, 0x1E696AD98);
  v4 = rawValue.super.super.isa;
  v5 = sub_1C2170CD4();
  v6 = sub_1C2170CF4();

  if (v6)
  {

    v8 = 0;
  }

  else
  {
    v9 = v4;
    v10 = sub_1C2170CD4();
    v11 = sub_1C2170CF4();

    if (v11)
    {

      v8 = 1;
    }

    else
    {
      v12 = v9;
      v13 = sub_1C2170CD4();
      v14 = sub_1C2170CF4();

      if (v14)
      {

        v8 = 2;
      }

      else
      {
        v15 = v12;
        v16 = sub_1C2170CD4();
        v17 = sub_1C2170CF4();

        if (v17)
        {

          v8 = 3;
        }

        else
        {
          v18 = v15;
          v19 = sub_1C2170CD4();
          v20 = sub_1C2170CF4();

          if (v20)
          {

            v8 = 4;
          }

          else
          {
            v21 = v18;
            v22 = sub_1C2170CD4();
            v23 = sub_1C2170CF4();

            if (v23)
            {

              v8 = 5;
            }

            else
            {
              v24 = sub_1C2170CD4();
              v25 = sub_1C2170CF4();

              if (v25)
              {
                v8 = 6;
              }

              else
              {
                v8 = 7;
              }
            }
          }
        }
      }
    }
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1C2130270(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF247B8, &qword_1C217E0C8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141B28();
  sub_1C2171484();
  v14 = 0;
  sub_1C2171274();
  if (!v5)
  {
    v13 = 1;
    sub_1C2171274();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1C2130404(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF247C8, &qword_1C217E0D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141B7C();
  sub_1C2171484();
  LOBYTE(v12) = 0;
  sub_1C2171274();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v13 = v12;
    v11[23] = 1;
    sub_1C2127360(&v13, v11);
    sub_1C20D8CEC();
    sub_1C2171294();
    sub_1C20D3174(v12, *(&v12 + 1));
    LOBYTE(v12) = 2;
    sub_1C2171274();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C21305C0(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF247D8, &qword_1C217E0D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141BD0();
  sub_1C2171484();
  v14 = 0;
  sub_1C2171274();
  if (!v4)
  {
    v13 = 1;
    sub_1C21712A4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1C213075C()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C20EC01C(v3, v1);
  return sub_1C2171454();
}

uint64_t sub_1C21307AC(uint64_t a1)
{
  v2 = *v1;
  sub_1C2171434();
  sub_1C20EC01C(v4, v2);
  return sub_1C2171454();
}

uint64_t sub_1C21307F8@<X0>(uint64_t *a1@<X8>)
{
  result = ASWKCTAPAuthenticatorTransport.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C2130820()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1C2130848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

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

uint64_t sub_1C213091C(uint64_t a1)
{
  v2 = sub_1C2141B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2130958(uint64_t a1)
{
  v2 = sub_1C2141B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2130994@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1C2141FC4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1C21309E4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1C2171324(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1C2171324();
    }
  }

  return result;
}

uint64_t sub_1C2130A88()
{
  v1 = 25705;
  if (*v0 != 1)
  {
    v1 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1C2130AD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C21421A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C2130B00(uint64_t a1)
{
  v2 = sub_1C2141B7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2130B3C(uint64_t a1)
{
  v2 = sub_1C2141B7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C2130B78@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1C21422BC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1C2130BD4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C2171324() & 1) == 0 || !sub_1C21068CC(v2, v4, v6, v7))
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1C2171324();
}

uint64_t sub_1C2130CB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6777953;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6777953;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C2171324();
  }

  return v8 & 1;
}

uint64_t sub_1C2130D50()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2130DC4(uint64_t a1)
{
  sub_1C21709B4();
}

uint64_t sub_1C2130E24(uint64_t a1)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

void sub_1C2130EA0(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 6777953;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C2130ED0()
{
  if (*v0)
  {
    return 6777953;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1C2130F08(uint64_t a1)
{
  v2 = sub_1C2141BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2130F44(uint64_t a1)
{
  v2 = sub_1C2141BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2130F80@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1C214255C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

BOOL sub_1C2130FD0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1C2171324();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

BOOL sub_1C21310D0(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_1C2131100@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1C213112C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_1C2131224@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t static ASCTAPAuthData.test_rawAuthenticatorData(rpIDHash:flags:counter:credentialData:)(uint64_t a1, unint64_t a2, char *a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  v10 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232F0, &unk_1C2176950);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C21768E0;
  *(v11 + 32) = v10;
  v12 = sub_1C20E7898(v11);
  v14 = v13;

  v41 = a1;
  v42 = a2;
  v15 = MEMORY[0x1E6969080];
  v16 = MEMORY[0x1E6969078];
  v39 = MEMORY[0x1E6969080];
  v40 = MEMORY[0x1E6969078];
  v37 = v12;
  v38 = v14;
  v17 = __swift_project_boxed_opaque_existential_1(&v37, MEMORY[0x1E6969080]);
  v18 = *v17;
  v19 = v17[1];
  sub_1C20D865C(a1, a2);
  sub_1C20D865C(v12, v14);
  sub_1C2106434(v18, v19, &v41);
  sub_1C20D3174(v12, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(&v37);
  v20 = v41;
  v21 = v42;
  v22 = sub_1C212E730(1, a4);
  v24 = sub_1C20DE218(v22, v23);
  v26 = v25;
  v43 = v20;
  v44 = v21;
  v39 = v15;
  v40 = v16;
  v37 = v24;
  v38 = v25;
  v27 = __swift_project_boxed_opaque_existential_1(&v37, v15);
  v28 = *v27;
  v29 = v27[1];
  sub_1C20D865C(v20, v21);
  sub_1C20D865C(v24, v26);
  sub_1C2106434(v28, v29, &v43);
  sub_1C20D3174(v24, v26);
  sub_1C20D3174(v20, v21);
  __swift_destroy_boxed_opaque_existential_0Tm(&v37);
  result = v43;
  if (a6 >> 60 != 15)
  {
    v39 = v15;
    v40 = v16;
    v37 = a5;
    v38 = a6;
    v31 = v43;
    v32 = v44;
    v33 = __swift_project_boxed_opaque_existential_1(&v37, v15);
    v34 = *v33;
    v35 = v33[1];
    sub_1C20B22B8(a5, a6);
    sub_1C20D865C(v31, v32);
    sub_1C2106434(v34, v35, &v43);
    sub_1C20D3174(v31, v32);
    __swift_destroy_boxed_opaque_existential_0Tm(&v37);
    return v43;
  }

  return result;
}

uint64_t ASCTAPAuthData.rpIDHash.getter()
{
  v1 = *v0;
  sub_1C20D865C(*v0, *(v0 + 8));
  return v1;
}

void ASCTAPAuthData.attestedCredentialData.getter(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_1C20F4D00(v2, v3, v4, v5, v6, v7, sub_1C20D865C);
}

__n128 ASCTAPAuthData.init(rpIDHash:flags:counter:attestedCredentialData:extensions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a5 + 16);
  *(a8 + 24) = *a5;
  v9 = *a3;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v9;
  *(a8 + 20) = a4;
  *(a8 + 40) = v8;
  result = *(a5 + 32);
  *(a8 + 56) = result;
  *(a8 + 72) = a6;
  *(a8 + 80) = a7;
  return result;
}

uint64_t ASCTAPAuthData.validate(relyingParty:requiredFlags:disallowedFlags:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v56 = a2;
  v49 = a1;
  v7 = sub_1C2170844();
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1C2170724();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1C2170964();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = *a3;
  v16 = *a4;
  v17 = v4[3];
  v52 = v4[2];
  v53 = v17;
  v54 = v4[4];
  v55 = *(v4 + 10);
  v18 = v4[1];
  v50 = *v4;
  v51 = v18;
  sub_1C2170954();
  v19 = sub_1C2170924();
  v21 = v20;
  (*(v13 + 8))(v15, v12);
  if (v21 >> 60 == 15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24528, &qword_1C217B8C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C21768E0;
    *(inited + 32) = sub_1C2170914();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v23;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x80000001C2186590;
    v24 = @"com.apple.AuthenticationServicesCore.AuthorizationError";
    sub_1C213F614(inited);
    swift_setDeallocating();
    sub_1C20EB498(inited + 32, &unk_1EBF23908, &qword_1C217B8D0);
    v25 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v26 = sub_1C2170854();

    [v25 initWithDomain:v24 code:14 userInfo:v26];

    return swift_willThrow();
  }

  LODWORD(v56) = v16;
  sub_1C213FAD0(&qword_1EDD4A7A0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1C2170704();
  sub_1C20D865C(v19, v21);
  v28 = v44;
  sub_1C210656C(v19, v21, v9);
  sub_1C20B23C8(v19, v21);
  v29 = v45;
  sub_1C21706F4();
  v30 = (*(v46 + 8))(v9, v7);
  MEMORY[0x1EEE9AC00](v30);
  *&v42[-16] = &v50;
  sub_1C2170714();
  if (!v28)
  {
    if ((v43 & ~v51) != 0)
    {
      v31 = v19;
      v32 = v21;
      v33 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24528, &qword_1C217B8C8);
      v34 = swift_initStackObject();
      *(v34 + 16) = xmmword_1C21768E0;
      *(v34 + 32) = sub_1C2170914();
      v36 = v34 + 32;
      v37 = 0x80000001C21865B0;
      *(v34 + 72) = MEMORY[0x1E69E6158];
      v38 = 0xD000000000000024;
      goto LABEL_8;
    }

    if ((v51 & v56) != 0)
    {
      v31 = v19;
      v32 = v21;
      v33 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24528, &qword_1C217B8C8);
      v34 = swift_initStackObject();
      *(v34 + 16) = xmmword_1C21768E0;
      *(v34 + 32) = sub_1C2170914();
      v36 = v34 + 32;
      v37 = 0x80000001C21865E0;
      *(v34 + 72) = MEMORY[0x1E69E6158];
      v38 = 0xD00000000000002FLL;
LABEL_8:
      *(v34 + 40) = v35;
      *(v34 + 48) = v38;
      *(v34 + 56) = v37;
      v39 = @"com.apple.AuthenticationServicesCore.AuthorizationError";
      sub_1C213F614(v34);
      swift_setDeallocating();
      sub_1C20EB498(v36, &unk_1EBF23908, &qword_1C217B8D0);
      v40 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v41 = sub_1C2170854();

      [v40 initWithDomain:v39 code:14 userInfo:v41];

      swift_willThrow();
      sub_1C20B23C8(v31, v32);
      return (*(v47 + 8))(v33, v48);
    }
  }

  (*(v47 + 8))(v29, v48);
  return sub_1C20B23C8(v19, v21);
}

uint64_t sub_1C2131BFC(uint64_t a1, unint64_t a2, _BOOL8 *a3)
{
  v25 = MEMORY[0x1E69E6290];
  v26 = MEMORY[0x1E6969DF8];
  v23 = a1;
  v24 = a2;
  v4 = __swift_project_boxed_opaque_existential_1(&v23, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1C213F048(v5, v6);
      v9 = v21 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1C213F108(v5, v6);
      v9 = v22 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1C213F184(v5, v6);
      v9 = v20 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v23);
  if (!sub_1C21068CC(*a3, a3[1], v8, v9))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24528, &qword_1C217B8C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C21768E0;
    *(inited + 32) = sub_1C2170914();
    *(inited + 40) = v11;
    v23 = 0;
    v24 = 0xE000000000000000;
    v12 = @"com.apple.AuthenticationServicesCore.AuthorizationError";
    sub_1C2170F34();
    MEMORY[0x1C6913CB0](0xD000000000000031, 0x80000001C21866A0);
    v13 = sub_1C2170164();
    MEMORY[0x1C6913CB0](v13);

    MEMORY[0x1C6913CB0](0x3A646E756F66202CLL, 0xE900000000000020);
    v14 = sub_1C2170164();
    MEMORY[0x1C6913CB0](v14);

    MEMORY[0x1C6913CB0](46, 0xE100000000000000);
    v15 = v23;
    v16 = v24;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v15;
    *(inited + 56) = v16;
    sub_1C213F614(inited);
    swift_setDeallocating();
    sub_1C20EB498(inited + 32, &unk_1EBF23908, &qword_1C217B8D0);
    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v18 = sub_1C2170854();

    [v17 initWithDomain:v12 code:14 userInfo:v18];

    swift_willThrow();
  }

  return sub_1C20D3174(v8, v9);
}

uint64_t ASCTAPAuthData.test_webAuthnEncoded()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v37 = *(v0 + 20);
  v4 = *(v0 + 32);
  if (v4 >> 60 == 15)
  {
    v36 = 0;
    v5 = 0xF000000000000000;
  }

  else
  {
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v38 = *(v0 + 24);
    v39 = v4;
    v40 = v9;
    v41 = v8;
    v42 = v7;
    v43 = v6;
    sub_1C20D865C(v38, v4);
    sub_1C20D865C(v9, v8);
    sub_1C20D865C(v7, v6);
    v36 = sub_1C2132158();
    v5 = v10;
    sub_1C20D3174(v38, v4);
    sub_1C20D3174(v9, v8);
    sub_1C20D3174(v7, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232F0, &unk_1C2176950);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C21768E0;
  *(v11 + 32) = v3;
  v12 = sub_1C20E7898(v11);
  v14 = v13;

  v44 = v1;
  v45 = v2;
  v15 = MEMORY[0x1E6969080];
  v16 = MEMORY[0x1E6969078];
  v41 = MEMORY[0x1E6969080];
  v42 = MEMORY[0x1E6969078];
  v38 = v12;
  v39 = v14;
  v17 = __swift_project_boxed_opaque_existential_1(&v38, MEMORY[0x1E6969080]);
  v18 = *v17;
  v19 = v17[1];
  sub_1C20D865C(v1, v2);
  sub_1C20D865C(v12, v14);
  sub_1C2106434(v18, v19, &v44);
  sub_1C20D3174(v12, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(&v38);
  v20 = v44;
  v21 = v45;
  v22 = sub_1C212E730(1, v37);
  v24 = sub_1C20DE218(v22, v23);
  v26 = v25;
  v46 = v20;
  v47 = v21;
  v41 = v15;
  v42 = v16;
  v38 = v24;
  v39 = v25;
  v27 = __swift_project_boxed_opaque_existential_1(&v38, v15);
  v28 = *v27;
  v29 = v27[1];
  sub_1C20D865C(v20, v21);
  sub_1C20D865C(v24, v26);
  sub_1C2106434(v28, v29, &v46);
  sub_1C20D3174(v24, v26);
  sub_1C20D3174(v20, v21);
  __swift_destroy_boxed_opaque_existential_0Tm(&v38);
  result = v46;
  if (v5 >> 60 != 15)
  {
    v41 = v15;
    v42 = v16;
    v38 = v36;
    v39 = v5;
    v31 = v46;
    v32 = v47;
    v33 = __swift_project_boxed_opaque_existential_1(&v38, v15);
    v34 = *v33;
    v35 = v33[1];
    sub_1C20B22B8(v36, v5);
    sub_1C20D865C(v31, v32);
    sub_1C2106434(v34, v35, &v46);
    sub_1C20B23C8(v36, v5);
    sub_1C20D3174(v31, v32);
    __swift_destroy_boxed_opaque_existential_0Tm(&v38);
    return v46;
  }

  return result;
}

uint64_t sub_1C2132158()
{
  v32[2] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v32[0] = v1;
  v32[1] = v2;
  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    LODWORD(v8) = 0;
    if (v7 != 2)
    {
      goto LABEL_12;
    }

    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (!v11)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(v3) - v3;
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      goto LABEL_15;
    }

    v8 = v8;
LABEL_10:
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v8 >> 16))
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  if (v7)
  {
    goto LABEL_8;
  }

  LODWORD(v8) = BYTE6(v4);
LABEL_12:
  v27 = bswap32(v8) >> 16;
  sub_1C20D865C(v1, v2);
  v12 = sub_1C213F048(&v27, &v28);
  v13 = MEMORY[0x1E6969080];
  v14 = MEMORY[0x1E6969078];
  v16 = v15 & 0xFFFFFFFFFFFFFFLL;
  v30 = MEMORY[0x1E6969080];
  v31 = MEMORY[0x1E6969078];
  v28 = v12;
  v29 = v15 & 0xFFFFFFFFFFFFFFLL;
  v17 = __swift_project_boxed_opaque_existential_1(&v28, MEMORY[0x1E6969080]);
  v18 = *v17;
  v19 = v17[1];
  sub_1C20D865C(v12, v16);
  sub_1C2106434(v18, v19, v32);
  sub_1C20D3174(v12, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(&v28);
  v30 = v13;
  v31 = v14;
  v28 = v3;
  v29 = v4;
  v20 = __swift_project_boxed_opaque_existential_1(&v28, v13);
  v21 = *v20;
  v22 = v20[1];
  sub_1C20D865C(v3, v4);
  sub_1C2106434(v21, v22, v32);
  __swift_destroy_boxed_opaque_existential_0Tm(&v28);
  v30 = v13;
  v31 = v14;
  v28 = v5;
  v29 = v6;
  v23 = __swift_project_boxed_opaque_existential_1(&v28, v13);
  v24 = *v23;
  v25 = v23[1];
  sub_1C20D865C(v5, v6);
  sub_1C2106434(v24, v25, v32);
  __swift_destroy_boxed_opaque_existential_0Tm(&v28);
  return v32[0];
}

uint64_t ASCTAPAuthData.init(data:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 >= 37)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
    if (!v6)
    {
      if (BYTE6(a2) >= 0x25uLL)
      {
LABEL_11:
        sub_1C2132614(v30, &v31, 32, result, a2);
        v33 = *(&v30[0] + 1);
        v29 = *&v30[0];
        v32 = v31;
        v14 = sub_1C2132778();
        v16 = *(&v32 + 1);
        v15 = v32;
        sub_1C2132614(v30, &v31, 4, v32, *(&v32 + 1));
        sub_1C20D3174(v15, v16);
        v17 = v30[0];
        v19 = *(&v31 + 1);
        v18 = v31;
        v32 = v31;
        sub_1C20D865C(*&v30[0], *(&v30[0] + 1));
        v20 = sub_1C212E05C(v17, *(&v17 + 1));
        if ((v14 & 0x40) == 0)
        {
          sub_1C20D3174(v17, *(&v17 + 1));
          sub_1C20D3174(v5, a2);
          result = sub_1C20D3174(v18, v19);
          v21 = &unk_1C2176000;
          v22 = xmmword_1C21769B0;
          v23 = 0uLL;
          v24 = 0uLL;
LABEL_13:
          v25 = v33;
          *a3 = v29;
          *(a3 + 8) = v25;
          *(a3 + 16) = v14;
          *(a3 + 20) = v20;
          *(a3 + 24) = v22;
          *(a3 + 40) = v23;
          *(a3 + 56) = v24;
          *(a3 + 72) = v21[155];
          return result;
        }

        v26 = v19 >> 62;
        if ((v19 >> 62) > 1)
        {
          if (v26 != 2 || *(v18 + 16) == *(v18 + 24))
          {
            goto LABEL_23;
          }
        }

        else if (v26)
        {
          if (v18 == v18 >> 32)
          {
LABEL_23:
            sub_1C213F760();
            swift_allocError();
            *v27 = 1;
            swift_willThrow();
            sub_1C20D3174(v17, *(&v17 + 1));
            sub_1C20D3174(v5, a2);
            sub_1C20D3174(v32, *(&v32 + 1));
LABEL_24:
            v12 = v29;
            v13 = v33;
            return sub_1C20D3174(v12, v13);
          }
        }

        else if ((v19 & 0xFF000000000000) == 0)
        {
          goto LABEL_23;
        }

        sub_1C20D865C(v18, v19);
        sub_1C21328C0(v18, v19, v30);
        sub_1C20D3174(v17, *(&v17 + 1));
        sub_1C20D3174(v5, a2);
        result = sub_1C20D3174(v18, v19);
        if (!v3)
        {
          v22 = v30[0];
          v23 = v30[1];
          v24 = v30[2];
          v21 = &unk_1C2176000;
          goto LABEL_13;
        }

        goto LABEL_24;
      }

LABEL_8:
      sub_1C213F760();
      swift_allocError();
      *v11 = 0;
      swift_willThrow();
      v12 = v5;
      v13 = a2;
      return sub_1C20D3174(v12, v13);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 37)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2132614(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = BYTE6(a5);
  v9 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = sub_1C20FAA6C(*(a4 + 16), a3, a4, a5);
      result = *(a4 + 16);
      if (v10 < result)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }
  }

  else if (v9)
  {
    v10 = sub_1C20FAA6C(a4, a3, a4, a5);
    result = a4;
    if (v10 < a4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v10 = sub_1C20FAA6C(0, a3, a4, a5);
  if (v9 > 1)
  {
    result = 0;
    if (v10 < 0)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    if (v9)
    {
      result = a4;
    }

    else
    {
      result = 0;
    }

    if (v10 < result)
    {
      goto LABEL_25;
    }
  }

LABEL_15:
  result = sub_1C2170124();
  *a1 = result;
  a1[1] = v12;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v13 = *(a4 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else if (v9)
  {
    v13 = a4 >> 32;
  }

  else
  {
    v13 = v5;
  }

  if (v13 >= v10)
  {
    result = sub_1C2170124();
    *a2 = result;
    a2[1] = v14;
    return result;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C2132778()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(result + 16) == *(result + 24))
    {
      goto LABEL_29;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    if (v3)
    {
      v4 = result >> 32;
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == v4)
    {
      goto LABEL_29;
    }
  }

  result = sub_1C21289D8(result, v2);
  if ((result & 0x100) == 0)
  {
    v6 = result;
    v7 = *v0;
    v8 = *(v0 + 8);
    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      v10 = 0;
      if (v9 == 2)
      {
        v10 = *(v7 + 16);
      }
    }

    else
    {
      v10 = v7;
      if (!v9)
      {
        v10 = 0;
      }
    }

    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v12 = *(v7 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v9)
      {
        v12 = v7 >> 32;
      }

      else
      {
        v12 = BYTE6(v8);
      }

      sub_1C20D865C(*v0, *(v0 + 8));
      result = sub_1C20D3174(v7, v8);
      if (v12 >= v11)
      {
        v13 = sub_1C2170124();
        v15 = v14;
        sub_1C20D3174(v7, v8);
        *v0 = v13;
        *(v0 + 8) = v15;
        return v6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C21328C0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(result + 16);
      v6 = *(result + 24);
      v8 = __OFSUB__(v6, v7);
      v9 = v6 - v7;
      if (v8)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v9 >= 19)
      {
        goto LABEL_8;
      }
    }

LABEL_13:
    sub_1C2143014();
    swift_allocError();
    swift_willThrow();
    return sub_1C20D3174(v4, a2);
  }

  if (!v5)
  {
    if (BYTE6(a2) < 0x13uLL)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(result) - result < 19)
  {
    goto LABEL_13;
  }

LABEL_8:
  v26 = a3;
  sub_1C2132614(&v25, &v24, 16, result, a2);
  v10 = v25;
  v12 = *(&v24 + 1);
  v11 = v24;
  sub_1C2132614(&v25, &v24, 2, v24, *(&v24 + 1));
  sub_1C20D3174(v11, v12);
  v13 = v25;
  v15 = *(&v24 + 1);
  v14 = v24;
  sub_1C20D865C(v25, *(&v25 + 1));
  result = sub_1C212E05C(v13, *(&v13 + 1));
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      if (!result)
      {
        v20 = 0;
LABEL_25:
        sub_1C2132614(&v25, &v24, v20, v14, v15);
        sub_1C20D3174(v4, a2);
        sub_1C20D3174(v13, *(&v13 + 1));
        result = sub_1C20D3174(v14, v15);
        v21 = v24;
        v22 = v25;
        v23 = v26;
        *v26 = v10;
        v23[1] = v22;
        v23[2] = v21;
        return result;
      }

LABEL_23:
      sub_1C2143014();
      swift_allocError();
      swift_willThrow();
      sub_1C20D3174(v13, *(&v13 + 1));
      sub_1C20D3174(v4, a2);
      sub_1C20D3174(v14, v15);
      return sub_1C20D3174(v10, *(&v10 + 1));
    }

    v19 = *(v14 + 16);
    v18 = *(v14 + 24);
    v8 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (!v8)
    {
LABEL_20:
      v20 = result;
      if (v17 >= result)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(v15);
    goto LABEL_20;
  }

  LODWORD(v17) = HIDWORD(v14) - v14;
  if (!__OFSUB__(HIDWORD(v14), v14))
  {
    v17 = v17;
    goto LABEL_20;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t ASCTAPCredentialData.init(aaguid:credentialID:credentialPublicKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

BOOL static ASCTAPCredentialData.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (!sub_1C21068CC(*a1, a1[1], *a2, a2[1]) || !sub_1C21068CC(v2, v3, v6, v7))
  {
    return 0;
  }

  return sub_1C21068CC(v4, v5, v8, v9);
}

BOOL sub_1C2132BD0(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (!sub_1C21068CC(*a1, a1[1], *a2, a2[1]) || !sub_1C21068CC(v2, v3, v6, v7))
  {
    return 0;
  }

  return sub_1C21068CC(v4, v5, v8, v9);
}

uint64_t sub_1C2132C80(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF247E8, &unk_1C217E0E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141C24();
  sub_1C2171484();
  LOBYTE(v12) = 0;
  sub_1C2171274();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v13 = v12;
    v11[23] = 1;
    sub_1C2127360(&v13, v11);
    sub_1C20D8CEC();
    sub_1C2171294();
    sub_1C20D3174(v12, *(&v12 + 1));
    *&v12 = *(v3 + 32);
    v11[0] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
    sub_1C20FD358(&qword_1EBF239E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1C2171264();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C2132E8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  if (v2 != 1)
  {
    v4 = 0x726F70736E617274;
    v3 = 0xEA00000000007374;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701869940;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 25705;
  if (*a2 != 1)
  {
    v8 = 0x726F70736E617274;
    v7 = 0xEA00000000007374;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C2171324();
  }

  return v11 & 1;
}

uint64_t sub_1C2132F78()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C213300C(uint64_t a1)
{
  sub_1C21709B4();
}

uint64_t sub_1C213308C(uint64_t a1)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

unint64_t sub_1C213311C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C2142734(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C213314C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE200000000000000;
  v5 = 25705;
  if (v2 != 1)
  {
    v5 = 0x726F70736E617274;
    v4 = 0xEA00000000007374;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C213319C()
{
  v1 = 25705;
  if (*v0 != 1)
  {
    v1 = 0x726F70736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

unint64_t sub_1C21331E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C2142734(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C2133210(uint64_t a1)
{
  v2 = sub_1C2141C24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C213324C(uint64_t a1)
{
  v2 = sub_1C2141C24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C2133288@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1C2142780(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1C21332E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1C213EDDC(v5, v7) & 1;
}

uint64_t sub_1C2133334(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6713968;
  }

  else
  {
    v3 = 0x6F6C42656772616CLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000062;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6713968;
  }

  else
  {
    v5 = 0x6F6C42656772616CLL;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE900000000000062;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C2171324();
  }

  return v8 & 1;
}

uint64_t sub_1C21333D8()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2133458(uint64_t a1)
{
  sub_1C21709B4();
}

uint64_t sub_1C21334C4(uint64_t a1)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

void sub_1C213354C(uint64_t *a1@<X8>)
{
  v2 = 6713968;
  if (!*v1)
  {
    v2 = 0x6F6C42656772616CLL;
  }

  v3 = 0xE900000000000062;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C2133594(uint64_t a1)
{
  v2 = sub_1C213F7B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21335D0(uint64_t a1)
{
  v2 = sub_1C213F7B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C213360C(uint64_t *a1@<X8>)
{
  if (*(v1 + 16) == 2)
  {
    v2 = *(v1 + 32);
    if (v2 >> 60 == 15)
    {
      v3 = 0;
      v4 = 0xB000000000000000;
    }

    else
    {
      v5 = a1;
      v6 = *(v1 + 24);
      sub_1C20D865C(v6, *(v1 + 32));
      v3 = sub_1C2170054();
      v4 = v7;
      sub_1C20B23C8(v6, v2);
      a1 = v5;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  *a1 = v3;
  a1[1] = v4;
}

void *sub_1C2133798@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v5 = v2[1];
  v6 = v2[4];
  if (v5 >> 60 != 15)
  {
    v8 = v2[2];
    v9 = v2[3];
    v7 = *v2;
    sub_1C20D865C(v7, v5);
    sub_1C20B22B8(v8, v9);
    sub_1C20B23C8(0, 0xF000000000000000);
    v10 = a1 & 1;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_17:
    result = 0;
LABEL_18:
    *a2 = v7;
    a2[1] = v5;
    a2[2] = v8;
    a2[3] = v9;
    a2[4] = v10;
    a2[5] = result;
    return result;
  }

  v7 = 0;
  v5 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 2;
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_3:
  v33 = v10;
  v34 = v8;
  v35 = v9;
  v36 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24848, &qword_1C217E138);
  result = sub_1C21710E4();
  v12 = 0;
  v13 = v6 + 64;
  v14 = 1 << *(v6 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v6 + 64);
  v17 = (v14 + 63) >> 6;
  v38 = a1 & 1;
  v37 = result + 8;
  v39 = result;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v40 = (v16 - 1) & v16;
LABEL_12:
      v21 = v18 | (v12 << 6);
      v22 = *(v6 + 56);
      v23 = v6;
      v24 = (*(v6 + 48) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = (v22 + 32 * v21);
      v41 = v27[1];
      v42 = *v27;
      sub_1C20D865C(v26, v25);
      sub_1C20D865C(v42, *(&v42 + 1));
      sub_1C20B22B8(v41, *(&v41 + 1));
      sub_1C20B23C8(0, 0xF000000000000000);
      *(v37 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = v39;
      v28 = (v39[6] + 16 * v21);
      *v28 = v26;
      v28[1] = v25;
      v29 = v39[7] + 40 * v21;
      *v29 = v42;
      *(v29 + 16) = v41;
      *(v29 + 32) = v38;
      v30 = v39[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v39[2] = v32;
      v6 = v23;
      v16 = v40;
      if (!v40)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        a2 = v36;
        v8 = v34;
        v9 = v35;
        v10 = v33;
        goto LABEL_18;
      }

      v20 = *(v13 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C21339F8@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v5 = v2[1];
  v6 = v2[4];
  if (v5 >> 60 != 15)
  {
    v8 = v2[2];
    v9 = v2[3];
    v7 = *v2;
    sub_1C20D865C(v7, v5);
    sub_1C20B22B8(v8, v9);
    sub_1C20B23C8(0, 0xF000000000000000);
    v10 = a1 & 1;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_17:
    result = 0;
LABEL_18:
    *a2 = 1;
    a2[1] = v7;
    a2[2] = v5;
    a2[3] = v8;
    a2[4] = v9;
    a2[5] = v10;
    a2[6] = result;
    return result;
  }

  v7 = 0;
  v5 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 2;
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_3:
  v33 = v10;
  v34 = v8;
  v35 = v9;
  v36 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24848, &qword_1C217E138);
  result = sub_1C21710E4();
  v12 = 0;
  v13 = v6 + 64;
  v14 = 1 << *(v6 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v6 + 64);
  v17 = (v14 + 63) >> 6;
  v38 = a1 & 1;
  v37 = result + 8;
  v39 = result;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v40 = (v16 - 1) & v16;
LABEL_12:
      v21 = v18 | (v12 << 6);
      v22 = *(v6 + 56);
      v23 = v6;
      v24 = (*(v6 + 48) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = (v22 + 32 * v21);
      v41 = v27[1];
      v42 = *v27;
      sub_1C20D865C(v26, v25);
      sub_1C20D865C(v42, *(&v42 + 1));
      sub_1C20B22B8(v41, *(&v41 + 1));
      sub_1C20B23C8(0, 0xF000000000000000);
      *(v37 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = v39;
      v28 = (v39[6] + 16 * v21);
      *v28 = v26;
      v28[1] = v25;
      v29 = v39[7] + 40 * v21;
      *v29 = v42;
      *(v29 + 16) = v41;
      *(v29 + 32) = v38;
      v30 = v39[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v39[2] = v32;
      v6 = v23;
      v16 = v40;
      if (!v40)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        a2 = v36;
        v8 = v34;
        v9 = v35;
        v10 = v33;
        goto LABEL_18;
      }

      v20 = *(v13 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ASCTAPExtensionInput.encode(to:)(void *a1)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24538, &qword_1C217B8D8);
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v18 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v11 = *(v1 + 64);
  v22 = *(v1 + 56);
  v23 = v7;
  v12 = *(v1 + 80);
  v20 = *(v1 + 72);
  v21 = v11;
  v18 = *(v1 + 88);
  v19 = v12;
  v13 = a1[3];
  v25 = a1[4];
  v36 = *(v1 + 48);
  v24 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v14 = v23;
  sub_1C20D87AC(v5, v6, v8, v23, v10);
  sub_1C213F7B4();
  sub_1C2171484();
  v29 = v5;
  v30 = v6;
  v31 = v8;
  v32 = v14;
  v33 = v10;
  v34 = v9;
  v35 = v36;
  v15 = v26;
  v37 = 0;
  sub_1C213F808();
  v16 = v27;
  sub_1C2171264();
  sub_1C20D8840(v29, v30, v31, v32, v33);
  if (!v16)
  {
    v29 = v22;
    v30 = v21;
    v31 = v20;
    v32 = v19;
    v33 = v18;
    v37 = 1;
    sub_1C20D87FC(v22, v21, v20, v19, v18);
    sub_1C213F85C();
    sub_1C2171264();
    sub_1C20D8890(v29, v30, v31, v32, v33);
  }

  return (*(v28 + 8))(v4, v15);
}

void ASCTAPExtensionInput.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24558, &qword_1C217B8E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C213F7B4();
  sub_1C2171464();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    LOBYTE(v27[0]) = 0;
    sub_1C213F8B0();
    sub_1C21711A4();
    v10 = v32;
    v9 = v33;
    v25 = v34;
    v26 = v35;
    v45 = v36;
    v46 = 1;
    sub_1C213F904();
    sub_1C21711A4();
    (*(v6 + 8))(v8, v5);
    v23 = v42;
    v21 = *(&v43 + 1);
    v22 = v43;
    v19 = *(&v44 + 1);
    v20 = v44;
    v24 = v10;
    *&v27[0] = v10;
    v11 = v9;
    *(&v27[0] + 1) = v9;
    v12 = v25;
    v27[1] = v25;
    v13 = *(&v25 + 1);
    v14 = v26;
    v28 = v26;
    v15 = *(&v26 + 1);
    LOBYTE(v10) = v45;
    LOBYTE(v29) = v45;
    *(&v29 + 1) = v42;
    v30 = v43;
    v31 = v44;
    v16 = v25;
    *a2 = v27[0];
    a2[1] = v16;
    v17 = v31;
    a2[4] = v30;
    a2[5] = v17;
    v18 = v29;
    a2[2] = v28;
    a2[3] = v18;
    sub_1C20EAE1C(v27, &v32);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v32 = v24;
    v33 = v11;
    *&v34 = v12;
    *(&v34 + 1) = v13;
    *&v35 = v14;
    *(&v35 + 1) = v15;
    v36 = v10;
    v37 = v23;
    v38 = v22;
    v39 = v21;
    v40 = v20;
    v41 = v19;
    sub_1C20D8758(&v32);
  }
}

uint64_t sub_1C213427C()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C213433C(uint64_t a1)
{
  sub_1C21709B4();
}

uint64_t sub_1C21343E8(uint64_t a1)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

unint64_t sub_1C21344A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C2142A6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C21344D4(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x74726F70707573;
  v4 = 0xE500000000000000;
  v5 = 0x6574697277;
  if (*v1 != 2)
  {
    v5 = 0x6C616E696769726FLL;
    v4 = 0xEC000000657A6953;
  }

  if (*v1)
  {
    v3 = 1684104562;
    v2 = 0xE400000000000000;
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

uint64_t sub_1C2134550()
{
  v1 = 0x74726F70707573;
  v2 = 0x6574697277;
  if (*v0 != 2)
  {
    v2 = 0x6C616E696769726FLL;
  }

  if (*v0)
  {
    v1 = 1684104562;
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

unint64_t sub_1C21345C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C2142A6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C21345F0(uint64_t a1)
{
  v2 = sub_1C213F958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C213462C(uint64_t a1)
{
  v2 = sub_1C213F958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCTAPLargeBlobExtensionInput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24570, &qword_1C217B8E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - v6;
  v8 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v9 = sub_1C213F958();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v46);
  }

  v10 = v5;
  v11 = v45;
  LOBYTE(v47) = 0;
  v44 = sub_1C2171164();
  v13 = v12;
  LOBYTE(v47) = 1;
  v49 = sub_1C2171174();
  v50 = 2;
  sub_1C20D8E24();
  sub_1C21711A4();
  v15 = v7;
  v17 = v47;
  v16 = v48;
  LOBYTE(v47) = 3;
  v18 = sub_1C2171194();
  v42 = v17;
  v43 = v15;
  if ((v19 & 1) == 0)
  {
    if (v16 >> 60 == 15)
    {

      v22 = sub_1C2170F74();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24580, &qword_1C217B8F0);
      *(v24 + 24) = &type metadata for ASCTAPLargeBlobExtensionInput.CodingKeys;
      *(v24 + 32) = v9;
      *v24 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24588, &qword_1C217B8F8);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1C21768E0;
      *(v25 + 56) = &type metadata for ASCTAPLargeBlobExtensionInput.CodingKeys;
      *(v25 + 64) = v9;
      *(v25 + 32) = 2;
      sub_1C2170F64();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF0], v22);
      swift_willThrow();
      (*(v10 + 8))(v43, v4);
      return __swift_destroy_boxed_opaque_existential_0Tm(v46);
    }

    v29 = v18;
    (*(v10 + 8))(v43, v4);
    v20 = v29;
    v21 = 0;
    goto LABEL_11;
  }

  if (v16 >> 60 == 15)
  {
    (*(v10 + 8))(v43, v4);
    v20 = 0;
    v21 = 1;
LABEL_11:
    v30 = v44;
    v31 = v49;
    v32 = v42;
LABEL_12:
    *v11 = v30;
    *(v11 + 8) = v13;
    *(v11 + 16) = v31;
    *(v11 + 24) = v32;
    *(v11 + 32) = v16;
    *(v11 + 40) = v20;
    *(v11 + 48) = v21;
    return __swift_destroy_boxed_opaque_existential_0Tm(v46);
  }

  v26 = v42;
  sub_1C20D865C(v42, v16);
  v27 = sub_1C2170044();
  v33 = v26;
  v32 = v27;
  v34 = v28;
  sub_1C20B23C8(v33, v16);
  (*(v10 + 8))(v43, v4);
  v35 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v35 != 2)
    {
      sub_1C20B23C8(v42, v16);
      v20 = 0;
      v21 = 0;
      goto LABEL_25;
    }

    v37 = *(v42 + 16);
    v36 = *(v42 + 24);
    result = sub_1C20B23C8(v42, v16);
    v20 = v36 - v37;
    if (!__OFSUB__(v36, v37))
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!v35)
  {
    sub_1C20B23C8(v42, v16);
    v21 = 0;
    v20 = BYTE6(v16);
LABEL_25:
    v16 = v34;
    v30 = v44;
    v31 = v49;
    goto LABEL_12;
  }

  v38 = v16;
  v39 = v42;
  v40 = HIDWORD(v42);
  result = sub_1C20B23C8(v42, v38);
  LODWORD(v20) = v40 - v39;
  if (__OFSUB__(v40, v39))
  {
    goto LABEL_27;
  }

  v20 = v20;
LABEL_22:
  v30 = v44;
  v31 = v49;
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v16 = v34;
    goto LABEL_12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t ASCTAPLargeBlobExtensionInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24590, &unk_1C217B900);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - v5;
  v39 = *(v1 + 16);
  v7 = *(v1 + 32);
  *&v33 = *(v1 + 24);
  *(&v33 + 1) = v7;
  v32 = *(v1 + 40);
  v31 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1C2171474();
  if (qword_1EBF23138 != -1)
  {
    swift_once();
  }

  v9 = sub_1C2171054();
  v10 = __swift_project_value_buffer(v9, qword_1EBF25218);
  v11 = v10;
  if (*(v8 + 16) && (v12 = sub_1C2122198(v10), (v13 & 1) != 0))
  {
    sub_1C20DA01C(*(v8 + 56) + 32 * v12, &v37);

    if (swift_dynamicCast())
    {
      v14 = v40;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1C213F958();
      sub_1C2171484();
      LOBYTE(v37) = 0;
      v15 = v34;
      v16 = v35;
      sub_1C2171224();
      if (v15)
      {
        return (*(v36 + 8))(v6, v16);
      }

      LOBYTE(v37) = 1;
      sub_1C2171234();
      v17 = *(&v33 + 1);
      if (*(&v33 + 1) >> 60 == 15)
      {
        return (*(v36 + 8))(v6, v16);
      }

      if (v14)
      {
        v25 = v33;
        sub_1C20D865C(v33, *(&v33 + 1));
        *&v37 = sub_1C2170054();
        *(&v37 + 1) = v27;
        v40 = 2;
        v28 = v37;
        v29 = v27;
        sub_1C20D8CEC();
        sub_1C2171294();
        (*(v36 + 8))(v6, v16);
        sub_1C20B23C8(v25, v17);
        return sub_1C20D3174(v28, v29);
      }

      else
      {
        v26 = v33;
        v37 = v33;
        v40 = 2;
        sub_1C20D865C(v33, *(&v33 + 1));
        sub_1C20D8CEC();
        sub_1C2171294();
        *&v37 = v32;
        BYTE8(v37) = v31;
        v40 = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF245A0, &qword_1C217B918);
        sub_1C213F9AC();
        sub_1C2171294();
        (*(v36 + 8))(v6, v16);
        return sub_1C20B23C8(v26, v17);
      }
    }
  }

  else
  {
  }

  v19 = sub_1C2170F94();
  swift_allocError();
  v21 = v20;
  v22 = sub_1C2171474();
  if (*(v22 + 16) && (v23 = sub_1C2122198(v11), (v24 & 1) != 0))
  {
    sub_1C20DA01C(*(v22 + 56) + 32 * v23, &v37);

    sub_1C20F5A58(&v37, v21);
  }

  else
  {

    v37 = 0u;
    v38 = 0u;
    *(v21 + 24) = MEMORY[0x1E69E6158];
    *v21 = 7104878;
    *(v21 + 8) = 0xE300000000000000;
    if (*(&v38 + 1))
    {
      sub_1C20EB498(&v37, &qword_1EBF243A0, &qword_1C217A290);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24598, &qword_1C217B910);
  sub_1C2170F64();
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B30], v19);
  return swift_willThrow();
}

uint64_t sub_1C2135114(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 1818326629;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x80000001C21844B0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 1818326629;
  }

  if (*a2)
  {
    v6 = 0x80000001C21844B0;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C2171324();
  }

  return v8 & 1;
}

uint64_t sub_1C21351B8()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2135238(uint64_t a1)
{
  sub_1C21709B4();
}

uint64_t sub_1C21352A4(uint64_t a1)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

void sub_1C213532C(unint64_t *a1@<X8>)
{
  v2 = 0x80000001C21844B0;
  v3 = 1818326629;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1C2135368()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1818326629;
  }
}

uint64_t sub_1C21353AC(uint64_t a1)
{
  v2 = sub_1C213FA28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21353E8(uint64_t a1)
{
  v2 = sub_1C213FA28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2135424(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646E6F636573;
  }

  else
  {
    v3 = 0x7473726966;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x646E6F636573;
  }

  else
  {
    v5 = 0x7473726966;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
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
    v8 = sub_1C2171324();
  }

  return v8 & 1;
}

uint64_t sub_1C21354C4()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2135540(uint64_t a1)
{
  sub_1C21709B4();
}

uint64_t sub_1C21355A8(uint64_t a1)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

void sub_1C213562C(uint64_t *a1@<X8>)
{
  v2 = 0x7473726966;
  if (*v1)
  {
    v2 = 0x646E6F636573;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C2135670@<X0>(char *a4@<X8>)
{
  v5 = sub_1C2171134();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1C21356D0(uint64_t a1)
{
  v2 = sub_1C2142CE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C213570C(uint64_t a1)
{
  v2 = sub_1C2142CE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2135748(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24828, &qword_1C217E118);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2142CE4();
  sub_1C2171484();
  v16 = a2;
  v17 = a3;
  v18 = 0;
  sub_1C20D865C(a2, a3);
  sub_1C20D8CEC();
  sub_1C2171294();
  sub_1C20D3174(v16, v17);
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_1C20B22B8(v14, v15);
    sub_1C2171264();
    sub_1C20B23C8(v16, v17);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1C2135908@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1C2142AB8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t ASCTAPPRFExtensionInput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF245B0, &qword_1C217B920);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v88 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF245B8, &qword_1C217B928);
  v111 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v88 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1C213FA28();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v6;
  v108 = v10;
  v109 = a1;
  LOBYTE(v114) = 0;
  v13 = sub_1C213FA7C();
  sub_1C21711A4();
  v107 = v112;
  v14 = v113;
  v15 = v9;
  v16 = sub_1C2170344();
  LOBYTE(v112) = 1;
  sub_1C213FAD0(&qword_1EBF245D0, MEMORY[0x1E698F6E0], MEMORY[0x1E698F6F0]);
  v17 = v6;
  sub_1C21711A4();
  v94 = v15;
  v95 = v7;
  v103 = v14;
  v18 = *(v16 - 8);
  if ((*(v18 + 48))(v17, 1, v16) == 1)
  {
    (*(v111 + 8))(v94, v95);
    sub_1C20EB498(v12, &qword_1EBF245B0, &qword_1C217B920);
    v19 = 0;
    v20 = v103;
    v21 = v109;
    v22 = v110;
    v23 = *(&v14 + 1);
LABEL_39:
    v79 = v107;
    *v22 = v107;
    *(v22 + 16) = v20;
    *(v22 + 24) = v23;
    *(v22 + 32) = v19;
    sub_1C20B22CC(v79, *(&v79 + 1), v20, v23);

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    sub_1C20B23DC(v79, *(&v79 + 1), v20, v23);
  }

  v101 = *(&v14 + 1);
  v24 = sub_1C2170334();
  (*(v18 + 8))(v17, v16);
  v25 = [v24 dictionary];

  if (!v25)
  {
    (*(v111 + 8))(v94, v95);
    v19 = 0;
    v23 = v101;
    v20 = v103;
    v21 = v109;
    v22 = v110;
    goto LABEL_39;
  }

  v90 = v13;
  v26 = sub_1C20DB8B8(0, &qword_1EBF241E8, 0x1E698F700);
  sub_1C213FB18();
  v88[2] = v26;
  v27 = sub_1C2170864();

  v106 = sub_1C213FB80(MEMORY[0x1E69E7CC0]);
  v23 = v101;
  v20 = v103;
  v22 = v110;
  v28 = v111;
  if ((v27 & 0xC000000000000001) != 0)
  {
    v29 = sub_1C2171074();
    v30 = 0;
    v31 = 0;
    v105 = 0;
    v96 = v29 | 0x8000000000000000;
  }

  else
  {
    v32 = -1 << *(v27 + 32);
    v31 = ~v32;
    v30 = v27 + 64;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v105 = v34 & *(v27 + 64);
    v96 = v27;
  }

  v88[1] = v27;

  v35 = 0;
  v36 = (v31 + 64) >> 6;
  v91 = v31;
  v93 = v30;
  v37 = v96;
  v89 = v36;
  v38 = v105;
  while ((v37 & 0x8000000000000000) != 0)
  {
    v53 = sub_1C21710A4();
    if (!v53)
    {
      goto LABEL_38;
    }

    v55 = v54;
    v114 = v53;
    swift_dynamicCast();
    v114 = v55;
    v52 = v112;
    swift_dynamicCast();
    v104 = v112;
    v49 = v35;
    v100 = v38;
LABEL_24:
    if (!v52)
    {
      v20 = v103;
      v28 = v111;
LABEL_38:
      (*(v28 + 8))(v94, v95);

      sub_1C213FCB4(v96);
      v21 = v109;
      v19 = v106;
      goto LABEL_39;
    }

    v56 = [v52 data];
    if (!v56)
    {

      v80 = sub_1C2170F74();
      swift_allocError();
      v81 = v52;
      v83 = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24588, &qword_1C217B8F8);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1C21768E0;
      v85 = v108;
      *(v84 + 56) = &type metadata for ASCTAPPRFExtensionInput.CodingKeys;
      *(v84 + 64) = v85;
      *(v84 + 32) = 1;
      sub_1C2170F64();
      (*(*(v80 - 8) + 104))(v83, *MEMORY[0x1E69E6B00], v80);
      swift_willThrow();
      sub_1C213FCB4(v96);

      (*(v111 + 8))(v94, v95);
      v86 = v103;
      v87 = v107;

      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      return sub_1C20B23DC(v87, *(&v87 + 1), v86, v23);
    }

    v57 = v56;
    v105 = sub_1C2170174();
    v59 = v58;

    sub_1C21702A4();
    swift_allocObject();
    sub_1C2170294();
    sub_1C2170284();
    v99 = v52;

    v60 = v106;
    if (!v106)
    {
      goto LABEL_44;
    }

    v102 = v113;
    v92 = v112;
    v98 = *(&v112 + 1);
    v61 = v112;
    sub_1C20D865C(v112, *(&v112 + 1));
    v97 = *(&v102 + 1);
    v62 = v102;
    sub_1C20B22B8(v102, *(&v102 + 1));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v112 = v60;
    v64 = v59;
    v66 = sub_1C21220D8(v105, v59);
    v67 = v60[2];
    v68 = (v65 & 1) == 0;
    v69 = v67 + v68;
    if (__OFADD__(v67, v68))
    {
      goto LABEL_42;
    }

    v70 = v65;
    if (v60[3] >= v69)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C213CEF8();
      }
    }

    else
    {
      sub_1C213B8EC(v69, isUniquelyReferenced_nonNull_native);
      v71 = sub_1C21220D8(v105, v64);
      if ((v70 & 1) != (v72 & 1))
      {
        goto LABEL_45;
      }

      v66 = v71;
    }

    v23 = v101;
    v106 = v112;
    if (v70)
    {
      v39 = (*(v112 + 56) + 32 * v66);
      v40 = *v39;
      v41 = v39[1];
      v42 = v39[2];
      v43 = v39[3];
      v44 = v98;
      *v39 = v61;
      v39[1] = v44;
      v45 = v97;
      v39[2] = v62;
      v39[3] = v45;
      sub_1C20D3174(v40, v41);
      sub_1C20B23C8(v42, v43);

      sub_1C20D3174(v105, v64);
      sub_1C20D3174(v61, v44);
      v46 = v45;
      v23 = v101;
      sub_1C20B23C8(v62, v46);
    }

    else
    {
      *(v112 + 8 * (v66 >> 6) + 64) |= 1 << v66;
      v73 = (v106[6] + 16 * v66);
      *v73 = v105;
      v73[1] = v64;
      v74 = (v106[7] + 32 * v66);
      v75 = v102;
      *v74 = v92;
      v74[1] = v75;

      sub_1C20D3174(v61, v98);
      sub_1C20B23C8(v62, v97);
      v76 = v106[2];
      v77 = __OFADD__(v76, 1);
      v78 = v76 + 1;
      if (v77)
      {
        goto LABEL_43;
      }

      v106[2] = v78;
    }

    v35 = v49;
    v38 = v100;
    v20 = v103;
    v22 = v110;
    v28 = v111;
    v30 = v93;
    v37 = v96;
    v36 = v89;
  }

  v47 = v35;
  v48 = v38;
  v49 = v35;
  if (v38)
  {
LABEL_21:
    v100 = (v48 - 1) & v48;
    v50 = (v49 << 9) | (8 * __clz(__rbit64(v48)));
    v51 = *(*(v37 + 56) + v50);
    v52 = *(*(v37 + 48) + v50);
    v104 = v51;
    goto LABEL_24;
  }

  while (1)
  {
    v49 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v49 >= v36)
    {
      v20 = v103;
      v28 = v111;
      goto LABEL_38;
    }

    v48 = *(v30 + 8 * v49);
    ++v47;
    if (v48)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1C2171374();
  __break(1u);
  return result;
}

uint64_t ASCTAPPRFExtensionInput.encode(to:)(void *a1)
{
  v73 = sub_1C2170344();
  v78 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF245E0, &qword_1C217B930);
  v79 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v66 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v80 = v1[4];
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_1C20B22CC(v7, v8, v9, v10);
  sub_1C213FA28();
  sub_1C2171484();
  *&v84 = v7;
  *(&v84 + 1) = v8;
  *&v85 = v9;
  *(&v85 + 1) = v10;
  v15 = v6;
  v86 = 0;
  v16 = sub_1C213FCBC();
  v17 = v83;
  sub_1C2171264();
  v18 = v17;
  sub_1C20B23DC(v84, *(&v84 + 1), v85, *(&v85 + 1));
  if (v17)
  {
    return (*(v79 + 8))(v15, v14);
  }

  v20 = v80;
  if (!v80)
  {
    return (*(v79 + 8))(v15, v14);
  }

  v67 = v15;
  v68 = v14;

  v21 = sub_1C213F208(MEMORY[0x1E69E7CC0]);
  v22 = 0;
  v23 = v20 + 64;
  v24 = 1 << *(v20 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v20 + 64);
  v27 = (v24 + 63) >> 6;
  v70 = v20 + 64;
  v69 = v27;
  v71 = v16;
  while (1)
  {
    v30 = v78;
    if (!v26)
    {
      break;
    }

    v31 = v22;
LABEL_15:
    v33 = __clz(__rbit64(v26)) | (v31 << 6);
    v34 = (*(v20 + 48) + 16 * v33);
    v36 = *v34;
    v35 = v34[1];
    v37 = (*(v20 + 56) + 32 * v33);
    v38 = *v37;
    v81 = v37[1];
    v82 = v38;
    sub_1C20D865C(v36, v35);
    sub_1C20D865C(v36, v35);
    v76 = v82;
    sub_1C20D865C(v82, *(&v82 + 1));
    v75 = *(&v81 + 1);
    v77 = v81;
    sub_1C20B22B8(v81, *(&v81 + 1));
    v39 = sub_1C2170154();
    v83 = [objc_opt_self() cborWithData_];

    sub_1C20D3174(v36, v35);
    sub_1C2170314();
    swift_allocObject();
    sub_1C2170304();
    v85 = v81;
    v84 = v82;
    v40 = sub_1C21702B4();
    if (v18)
    {
      (*(v79 + 8))(v67, v68);

      sub_1C20D3174(v36, v35);

      sub_1C20D3174(v76, *(&v76 + 1));
      return sub_1C20B23C8(v77, v75);
    }

    v41 = v40;

    *&v82 = 0;
    v74 = v35;
    if ((v21 & 0xC000000000000001) != 0)
    {
      if (v21 < 0)
      {
        v42 = v21;
      }

      else
      {
        v42 = v21 & 0xFFFFFFFFFFFFFF8;
      }

      v43 = v41;
      v44 = sub_1C2170E84();
      if (__OFADD__(v44, 1))
      {
        goto LABEL_36;
      }

      v21 = sub_1C213C3FC(v42, v44 + 1);
    }

    else
    {
      v45 = v41;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v84 = v21;
    v48 = sub_1C21221FC(v83);
    v49 = *(v21 + 16);
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_35;
    }

    v52 = v47;
    if (*(v21 + 24) >= v51)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C213CC28();
      }
    }

    else
    {
      sub_1C213B3DC(v51, isUniquelyReferenced_nonNull_native);
      v53 = sub_1C21221FC(v83);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_38;
      }

      v48 = v53;
    }

    v55 = v74;
    v56 = v75;
    v26 &= v26 - 1;
    v21 = v84;
    if (v52)
    {
      v28 = *(v84 + 56);
      v29 = *(v28 + 8 * v48);
      *(v28 + 8 * v48) = v41;

      sub_1C20D3174(v76, *(&v76 + 1));
      sub_1C20B23C8(v77, v56);

      sub_1C20D3174(v36, v55);
    }

    else
    {
      *(v84 + 8 * (v48 >> 6) + 64) |= 1 << v48;
      *(*(v21 + 48) + 8 * v48) = v83;
      *(*(v21 + 56) + 8 * v48) = v41;
      sub_1C20D3174(v76, *(&v76 + 1));
      sub_1C20B23C8(v77, v56);

      sub_1C20D3174(v36, v55);
      v57 = *(v21 + 16);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_37;
      }

      *(v21 + 16) = v59;
    }

    v22 = v31;
    v18 = v82;
    v20 = v80;
    v23 = v70;
    v27 = v69;
  }

  v32 = v79;
  while (1)
  {
    v31 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v31 >= v27)
    {

      sub_1C20DB8B8(0, &qword_1EBF241E8, 0x1E698F700);
      sub_1C213FB18();
      v60 = sub_1C2170854();

      v61 = [objc_opt_self() cborWithDictionary_];

      v62 = v72;
      sub_1C2170324();
      LOBYTE(v84) = 1;
      sub_1C213FAD0(&qword_1EBF245F0, MEMORY[0x1E698F6E0], MEMORY[0x1E698F6E8]);
      v63 = v68;
      v64 = v73;
      v65 = v67;
      sub_1C2171294();
      (*(v30 + 8))(v62, v64);
      return (*(v32 + 8))(v65, v63);
    }

    v26 = *(v23 + 8 * v31);
    ++v22;
    if (v26)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_1C20DB8B8(0, &qword_1EBF241E8, 0x1E698F700);
  result = sub_1C2171374();
  __break(1u);
  return result;
}

void ASCTAPPRFExtensionOutput.results.getter(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1C20B22CC(v2, v3, v4, v5);
}

uint64_t ASCTAPPRFExtensionOutput.Results.first.getter()
{
  v1 = *v0;
  sub_1C20D865C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASCTAPPRFExtensionOutput.Results.second.getter()
{
  v1 = *(v0 + 16);
  sub_1C20B22B8(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1C2136C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E6F636573 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

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

uint64_t sub_1C2136D50(uint64_t a1)
{
  v2 = sub_1C213FD10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2136D8C(uint64_t a1)
{
  v2 = sub_1C213FD10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCTAPPRFExtensionOutput.Results.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF245F8, &qword_1C217B938);
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v12 = v1[3];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D865C(v7, v8);
  sub_1C213FD10();
  sub_1C2171484();
  v15 = v7;
  v16 = v8;
  v17 = 0;
  sub_1C20D8CEC();
  sub_1C2171294();
  sub_1C20D3174(v15, v16);
  if (!v2)
  {
    v15 = v13;
    v16 = v12;
    v17 = 1;
    sub_1C20B22B8(v13, v12);
    sub_1C2171264();
    sub_1C20B23C8(v15, v16);
  }

  return (*(v14 + 8))(v6, v4);
}

uint64_t ASCTAPPRFExtensionOutput.Results.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24608, &qword_1C217B940);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C213FD10();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18 = 0;
  sub_1C20D8E24();
  sub_1C21711D4();
  v9 = v16;
  v15 = v17;
  v18 = 1;
  sub_1C21711A4();
  (*(v6 + 8))(v8, v5);
  v10 = v16;
  v11 = v17;
  v12 = v15;
  *a2 = v9;
  a2[1] = v12;
  a2[2] = v10;
  a2[3] = v11;
  sub_1C20D865C(v9, v12);
  sub_1C20B22B8(v10, v11);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  sub_1C20D3174(v9, v12);
  return sub_1C20B23C8(v10, v11);
}

uint64_t sub_1C21371F4@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = *v1;
  if (v9 == 2)
  {
    v10 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
    v11 = *(*(v10 - 8) + 56);
    v12 = v10;
    v13 = a1;
    v14 = 1;
LABEL_5:

    return v11(v13, v14, 1, v12);
  }

  v15 = v1[2];
  if (v15 >> 60 == 15)
  {
    v16 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
    v17 = *(v16 + 20);
    v18 = sub_1C2170764();
    v19 = *(*(v18 - 8) + 56);
    v19(&a1[v17], 1, 1, v18);
    v19(&a1[*(v16 + 24)], 1, 1, v18);
    *a1 = v9 & 1;
    v11 = *(*(v16 - 8) + 56);
    v13 = a1;
    v14 = 0;
    v12 = v16;
    goto LABEL_5;
  }

  v21 = v1[1];
  v23 = v1[3];
  v22 = v1[4];
  v29 = v21;
  v30 = v15;
  sub_1C20B22CC(v21, v15, v23, v22);
  sub_1C20D865C(v21, v15);
  sub_1C2170744();
  v24 = sub_1C2170764();
  v28 = *(*(v24 - 8) + 56);
  v28(v8, 0, 1, v24);
  if (v22 >> 60 == 15)
  {
    sub_1C20B23DC(v21, v15, v23, v22);
    v25 = 1;
  }

  else
  {
    v29 = v23;
    v30 = v22;
    sub_1C20B22B8(v23, v22);
    sub_1C20D865C(v23, v22);
    sub_1C2170744();
    sub_1C20B23DC(v21, v15, v23, v22);
    sub_1C20B23C8(v23, v22);
    v25 = 0;
  }

  v28(v6, v25, 1, v24);
  *a1 = v9 & 1;
  v26 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
  sub_1C210B21C(v8, &a1[*(v26 + 20)]);
  sub_1C210B21C(v6, &a1[*(v26 + 24)]);
  return (*(*(v26 - 8) + 56))(a1, 0, 1, v26);
}

uint64_t sub_1C213757C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1C2170764();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[2];
  if (v10 >> 60 == 15)
  {
    v11 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }

  else
  {
    v14 = v1[1];
    v16 = v1[3];
    v15 = v1[4];
    v19 = v14;
    v20 = v10;
    sub_1C20B22CC(v14, v10, v16, v15);
    sub_1C20D865C(v14, v10);
    sub_1C2170744();
    if (v15 >> 60 == 15)
    {
      sub_1C20B23DC(v14, v10, v16, v15);
      v17 = 1;
    }

    else
    {
      v19 = v16;
      v20 = v15;
      sub_1C20B22B8(v16, v15);
      sub_1C20D865C(v16, v15);
      sub_1C2170744();
      sub_1C20B23DC(v14, v10, v16, v15);
      sub_1C20B23C8(v16, v15);
      v17 = 0;
    }

    (*(v7 + 56))(v5, v17, 1, v6);
    (*(v7 + 32))(a1, v9, v6);
    v18 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
    sub_1C210B21C(v5, a1 + *(v18 + 20));
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }
}

uint64_t sub_1C2137864()
{
  if (*v0)
  {
    return 0x73746C75736572;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_1C2137898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

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

uint64_t sub_1C2137974(uint64_t a1)
{
  v2 = sub_1C213FD64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21379B0(uint64_t a1)
{
  v2 = sub_1C213FD64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCTAPPRFExtensionOutput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24610, &qword_1C217B948);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = v1[1];
  v12 = v1[2];
  v13 = v7;
  v8 = v1[4];
  v11 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C213FD64();
  sub_1C2171484();
  LOBYTE(v15) = 0;
  v9 = v14;
  sub_1C2171234();
  if (!v9)
  {
    v15 = v13;
    v16 = v12;
    v17 = v11;
    v18 = v8;
    v19 = 1;
    sub_1C20B22CC(v13, v12, v11, v8);
    sub_1C213FDB8();
    sub_1C2171264();
    sub_1C20B23DC(v15, v16, v17, v18);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ASCTAPPRFExtensionOutput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24628, &qword_1C217B950);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C213FD64();
  sub_1C2171464();
  if (!v2)
  {
    LOBYTE(v13[0]) = 0;
    v9 = sub_1C2171174();
    v14 = 1;
    sub_1C213FE0C();
    sub_1C21711A4();
    (*(v6 + 8))(v8, v5);
    v10 = v13[0];
    v11 = v13[1];
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 24) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t ASCTAPExtensionOutput.largeBlob.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 40);
  return sub_1C213FE60(v2, v3, v4);
}

void ASCTAPExtensionOutput.prf.getter(void *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_1C213FE7C(v2, v3, v4, v5, v6);
}

uint64_t sub_1C2137DDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 6713968;
  if (v2 != 1)
  {
    v4 = 0x6469707061;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6F6C42656772616CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000062;
  }

  v7 = 0xE300000000000000;
  v8 = 6713968;
  if (*a2 != 1)
  {
    v8 = 0x6469707061;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F6C42656772616CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000062;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C2171324();
  }

  return v11 & 1;
}

uint64_t sub_1C2137EC8()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2137F64(uint64_t a1)
{
  sub_1C21709B4();
}

uint64_t sub_1C2137FEC(uint64_t a1)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

unint64_t sub_1C2138084@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C2142D38(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C21380B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000062;
  v4 = 0xE300000000000000;
  v5 = 6713968;
  if (v2 != 1)
  {
    v5 = 0x6469707061;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F6C42656772616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C213810C()
{
  v1 = 6713968;
  if (*v0 != 1)
  {
    v1 = 0x6469707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6C42656772616CLL;
  }
}

unint64_t sub_1C2138160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C2142D38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C2138188(uint64_t a1)
{
  v2 = sub_1C213FEA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21381C4(uint64_t a1)
{
  v2 = sub_1C213FEA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

AuthenticationServicesCore::ASCPublicKeyCredentialRegistrationExtensionOutputs::LargeBlob_optional __swiftcall ASCTAPLargeBlobExtensionOutput.toASCRegistration()()
{
  v2 = *v1;
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 & 1;
  }

  *v0 = v3;
  return result;
}

void ASCTAPLargeBlobExtensionOutput.toASCAssertion()(uint64_t a7@<X8>)
{
  v9 = *(v7 + 24);
  if (v9 != 2)
  {
    *a7 = v9 & 1;
    *(a7 + 8) = 0;
    v12 = 1;
    goto LABEL_5;
  }

  v10 = ASCTAPLargeBlobExtensionOutput.uncompressedBlob.getter();
  if (v11 >> 60 == 15)
  {
    *a7 = 0;
    *(a7 + 8) = 0;
    v12 = -1;
LABEL_5:
    *(a7 + 16) = v12;
    return;
  }

  *a7 = v10;
  *(a7 + 8) = v11;
  *(a7 + 16) = 0;
}

uint64_t ASCTAPExtensionOutput.encode(to:)(void *a1)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24638, &qword_1C217B958);
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v23 = *(v1 + 56);
  v24 = v8;
  v9 = *(v1 + 64);
  v21 = *(v1 + 72);
  v22 = v9;
  v20 = *(v1 + 80);
  v35 = *(v1 + 88);
  v10 = a1[3];
  v25 = a1[4];
  v11 = *(v1 + 40);
  v12 = a1;
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(v12, v10);
  sub_1C213FE60(v3, v4, v5);
  sub_1C213FEA0();
  v15 = v26;
  sub_1C2171484();
  v29 = v3;
  v30 = v4;
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v34 = v11;
  v36 = 0;
  sub_1C213FEF4();
  v16 = v27;
  sub_1C2171264();
  sub_1C213FF48(v29, v30, v31);
  if (v16)
  {
    return (*(v28 + 8))(v14, v15);
  }

  v18 = v28;
  v29 = v24;
  v30 = v23;
  v31 = v22;
  v32 = v21;
  v33 = v20;
  v36 = 1;
  sub_1C213FE7C(v24, v23, v22, v21, v20);
  sub_1C213FF64();
  sub_1C2171264();
  sub_1C213FFB8(v29, v30, v31, v32, v33);
  LOBYTE(v29) = 2;
  sub_1C2171234();
  return (*(v18 + 8))(v14, v15);
}

uint64_t ASCTAPExtensionOutput.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24658, &qword_1C217B960);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C213FEA0();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v27) = 0;
  sub_1C213FFDC();
  sub_1C21711A4();
  v24 = *(&v32 + 1);
  v9 = v32;
  v25 = v33;
  v26 = v34;
  v40 = v35;
  LOBYTE(v27) = 1;
  sub_1C2140030();
  sub_1C21711A4();
  v21 = v32;
  v22 = v33;
  v23 = v34;
  v41 = 2;
  v10 = sub_1C2171174();
  (*(v6 + 8))(v8, v5);
  v20 = v9;
  *&v27 = v9;
  v11 = v24;
  *(&v27 + 1) = v24;
  v14 = v25;
  v12 = v14 >> 64;
  v13 = v14;
  v28 = v25;
  v15 = v26;
  *&v29 = v26;
  LOBYTE(v9) = v40;
  BYTE8(v29) = v40;
  v30 = v21;
  *v31 = v22;
  *&v31[16] = v23;
  v31[24] = v10;
  v16 = v21;
  a2[2] = v29;
  a2[3] = v16;
  a2[4] = *v31;
  *(a2 + 73) = *&v31[9];
  v17 = v28;
  *a2 = v27;
  a2[1] = v17;
  sub_1C20F4C50(&v27, &v32);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *&v32 = v20;
  *(&v32 + 1) = v11;
  v33 = __PAIR128__(v12, v13);
  v34 = v15;
  v35 = v9;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v10;
  return sub_1C20F4BA0(&v32);
}

uint64_t ASCTAPLargeBlobExtensionOutput.compressedBlob.getter()
{
  v1 = *(v0 + 8);
  sub_1C20B22B8(v1, *(v0 + 16));
  return v1;
}

uint64_t ASCTAPLargeBlobExtensionOutput.uncompressedBlob.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 >> 60 != 15)
  {
    sub_1C20D865C(*(v0 + 8), *(v0 + 16));
    v3 = sub_1C2170054();
    sub_1C20B23C8(v1, v2);
    return v3;
  }

  return v1;
}

uint64_t sub_1C2138BF0()
{
  v1 = 0x6574726F70707573;
  v2 = 0x6E657474697277;
  if (*v0 != 2)
  {
    v2 = 0x6C616E696769726FLL;
  }

  if (*v0)
  {
    v1 = 1651469410;
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

uint64_t sub_1C2138C70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C2142D84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C2138C98(uint64_t a1)
{
  v2 = sub_1C2140084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2138CD4(uint64_t a1)
{
  v2 = sub_1C2140084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCTAPLargeBlobExtensionOutput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24670, &qword_1C217B968);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - v6;
  v8 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v9 = sub_1C2140084();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v44);
  }

  v10 = v5;
  v11 = v43;
  LOBYTE(v45) = 0;
  v47 = sub_1C2171174();
  LOBYTE(v45) = 2;
  v42 = sub_1C2171174();
  v48 = 1;
  sub_1C20D8E24();
  sub_1C21711A4();
  v13 = v7;
  v14 = v45;
  v15 = v46;
  LOBYTE(v45) = 3;
  v16 = sub_1C2171194();
  v40 = v14;
  v41 = v13;
  if ((v17 & 1) == 0)
  {
    if (v15 >> 60 == 15)
    {
      v21 = sub_1C2170F74();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24580, &qword_1C217B8F0);
      *(v23 + 24) = &type metadata for ASCTAPLargeBlobExtensionOutput.CodingKeys;
      *(v23 + 32) = v9;
      *v23 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24588, &qword_1C217B8F8);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1C21768E0;
      *(v24 + 56) = &type metadata for ASCTAPLargeBlobExtensionOutput.CodingKeys;
      *(v24 + 64) = v9;
      *(v24 + 32) = 1;
      sub_1C2170F64();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF0], v21);
      swift_willThrow();
      (*(v10 + 8))(v41, v4);
      return __swift_destroy_boxed_opaque_existential_0Tm(v44);
    }

    v18 = v15;
    v28 = v16;
    (*(v10 + 8))(v41, v4);
    v19 = v28;
    v20 = 0;
    goto LABEL_11;
  }

  v18 = v15;
  if (v15 >> 60 == 15)
  {
    (*(v10 + 8))(v41, v4);
    v19 = 0;
    v20 = 1;
LABEL_11:
    v29 = v47;
    v30 = v42;
    v31 = v40;
LABEL_12:
    *v11 = v29;
    *(v11 + 8) = v31;
    *(v11 + 16) = v18;
    *(v11 + 24) = v30;
    *(v11 + 32) = v19;
    *(v11 + 40) = v20;
    return __swift_destroy_boxed_opaque_existential_0Tm(v44);
  }

  v25 = v40;
  sub_1C20D865C(v40, v15);
  v26 = sub_1C2170044();
  v32 = v25;
  v31 = v26;
  v33 = v27;
  sub_1C20B23C8(v32, v15);
  (*(v10 + 8))(v41, v4);
  v34 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v34 != 2)
    {
      sub_1C20B23C8(v40, v15);
      v19 = 0;
      v20 = 0;
      goto LABEL_25;
    }

    v36 = *(v40 + 16);
    v35 = *(v40 + 24);
    result = sub_1C20B23C8(v40, v15);
    v19 = v35 - v36;
    if (!__OFSUB__(v35, v36))
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!v34)
  {
    sub_1C20B23C8(v40, v15);
    v20 = 0;
    v19 = BYTE6(v15);
LABEL_25:
    v18 = v33;
    v29 = v47;
    v30 = v42;
    goto LABEL_12;
  }

  v37 = v40;
  v38 = HIDWORD(v40);
  result = sub_1C20B23C8(v40, v15);
  LODWORD(v19) = v38 - v37;
  if (__OFSUB__(v38, v37))
  {
    goto LABEL_27;
  }

  v19 = v19;
LABEL_22:
  v29 = v47;
  v30 = v42;
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v18 = v33;
    goto LABEL_12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}