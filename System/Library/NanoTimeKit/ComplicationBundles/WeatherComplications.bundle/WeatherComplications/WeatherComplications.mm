__n128 sub_23BD94EA0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23BD94EB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BD94ED0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_23BD94F20@<X0>(void *a1@<X8>)
{
  v36 = a1;
  v1 = sub_23BDC6010();
  v34 = *(v1 - 8);
  v35 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v32 = &v31 - v4;
  sub_23BD9628C(&qword_27E1C5670, &qword_23BDC8A00);
  v5 = *(sub_23BD9628C(&qword_27E1C5678, &qword_23BDC8A08) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v31 = 4 * v6;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23BDC88C0;
  v9 = v8 + v7;
  *(v8 + v7) = 2;
  v10 = objc_opt_self();
  v11 = [v10 milesPerHour];
  sub_23BD96820(0, &qword_27E1C5680, 0x277CCAE40);
  sub_23BDC5F40();
  *(v9 + v6) = 0;
  v12 = [v10 milesPerHour];
  sub_23BDC5F40();
  *(v9 + 2 * v6) = 15;
  v13 = [v10 milesPerHour];
  sub_23BDC5F40();
  *(v9 + 3 * v6) = 2;
  v14 = [v10 milesPerHour];
  sub_23BDC5F40();
  *(v9 + v31) = 0;
  v15 = [v10 milesPerHour];
  sub_23BDC5F40();
  v40 = 0;
  v41 = MEMORY[0x277D84F90];
  v16 = v32;
  sub_23BD9D208();
  v17 = v33;
  sub_23BDC5F80();
  v37 = &v40;
  v38 = v8;
  v39 = &v41;
  sub_23BDC5FD0();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v18 = v35;
  v19 = *(v34 + 8);
  v19(v17, v35);
  v19(v16, v18);
  v20 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
  sub_23BD96820(0, &qword_27E1C5688, 0x277D2C7C0);
  v21 = sub_23BDC6770();
  v22 = [v20 initWithEntries_];

  v23 = type metadata accessor for WindRectangularTemplateModel(0);
  v24 = v36;
  v25 = v36 + *(v23 + 20);
  sub_23BD9D208();
  v26 = type metadata accessor for WindTemplateModel(0);
  sub_23BD9D20C();
  v27 = *(v26 + 28);
  v28 = [v10 milesPerHour];
  sub_23BDC5F40();
  v29 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  (*(*(v29 - 8) + 56))(&v25[v27], 0, 1, v29);
  v25[*(v26 + 24)] = 2;
  sub_23BD9D208();
  sub_23BD9D20C();

  *v24 = v22;
  return result;
}

uint64_t sub_23BD953D8(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v7 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_23BDC6080();
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23BD9628C(&qword_27E1C5678, &qword_23BDC8A08);
  v14 = *(v31 - 8);
  v15 = MEMORY[0x28223BE20](v31);
  v32 = &v29 - v16;
  v17 = *a2;
  if (!*a2)
  {
    v23 = 0;
    v21 = 0;
    goto LABEL_6;
  }

  v30 = a4;
  a4 = a2;
  if (qword_27E1C55D8 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v18 = qword_27E1C5B78;
    v19 = sub_23BDC5FA0();
    v20 = [v18 stringFromDate_];

    v21 = sub_23BDC66F0();
    v23 = v22;

    v17 = *a4;
    if ((*a4 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v14 = v15;
      sub_23BDC6790();
      goto LABEL_14;
    }

    a2 = a4;
    a4 = v30;
LABEL_6:
    if (v17 >= *(a3 + 16))
    {
      goto LABEL_17;
    }

    v29 = v21;
    v30 = a2;
    sub_23BD96394(a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v17, v32, &qword_27E1C5678, &qword_23BDC8A08);
    sub_23BDC6490();
    sub_23BDC6070();
    sub_23BDC5F20();
    (*(v11 + 8))(v13, v10);
    v36 = v33;
    sub_23BD96334(&v36);
    v35 = v34;
    sub_23BD96334(&v35);
    sub_23BDC60B0();
    a3 = sub_23BDC60C0();
    v11 = *(a3 - 8);
    (*(v11 + 56))(v9, 0, 1, a3);
    v14 = sub_23BDC66C0();

    v10 = sub_23BDC66C0();

    if (v23)
    {
      v13 = sub_23BDC66C0();
    }

    else
    {
      v13 = 0;
    }

    if ((*(v11 + 48))(v9, 1, a3) == 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = sub_23BDC60A0();
      v25 = *(v11 + 8);
      v11 += 8;
      v25(v9, a3);
    }

    v9 = *(v31 + 48);
    [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v14 middleString:v10 bottomString:v13 isDay:1 timeZone:v24];

    v26 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
    v27 = (*(*(v26 - 8) + 8))(&v9[v32], v26);
    MEMORY[0x23EEBD070](v27);
    v15 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

LABEL_14:
    result = sub_23BDC67A0();
    if (!__OFADD__(*v30, 1))
    {
      break;
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  ++*v30;
  return result;
}

uint64_t sub_23BD958D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_23BDC6010();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *sub_23BD95950@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23BD95980(uint64_t a1)
{
  result = sub_23BD968B0(&unk_27E1C5650, type metadata accessor for WindRectangularTemplateModel, &unk_23BDC89B4);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for WindRectangularTemplateModel(uint64_t a1)
{
  result = qword_27E1C56A8;
  if (!qword_27E1C56A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BD95A2C(uint64_t a1, id *a2)
{
  result = sub_23BDC66D0();
  *a2 = 0;
  return result;
}

uint64_t sub_23BD95AA4(uint64_t a1, id *a2)
{
  v3 = sub_23BDC66E0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23BD95B24@<X0>(uint64_t *a2@<X8>)
{
  sub_23BDC66F0();
  v3 = sub_23BDC66C0();

  *a2 = v3;
  return result;
}

uint64_t sub_23BD95B68()
{
  v0 = sub_23BDC66F0();
  v1 = MEMORY[0x23EEBD060](v0);

  return v1;
}

uint64_t sub_23BD95BA4(uint64_t a1)
{
  sub_23BDC66F0();
  sub_23BDC6710();
}

uint64_t sub_23BD95BF8(uint64_t a1)
{
  sub_23BDC66F0();
  sub_23BDC69A0();
  sub_23BDC6710();
  v1 = sub_23BDC69B0();

  return v1;
}

uint64_t sub_23BD95C6C(void *a1, uint64_t *a2)
{
  v2 = sub_23BDC66F0();
  v4 = v3;
  if (v2 == sub_23BDC66F0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23BDC6980();
  }

  return v7 & 1;
}

uint64_t sub_23BD95CF4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23BDC66C0();

  *a2 = v3;
  return result;
}

uint64_t sub_23BD95D3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BDC66F0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23BD95D68(uint64_t a1)
{
  v2 = sub_23BD968B0(&qword_27E1C56F0, type metadata accessor for Key, &unk_23BDC8BF8);
  v3 = sub_23BD968B0(&qword_27E1C56F8, type metadata accessor for Key, &unk_23BDC8B4C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23BD95E24(uint64_t a1, uint64_t a2)
{
  v23[1] = a1;
  v3 = sub_23BDC6080();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v9 = sub_23BD9628C(&qword_27E1C5660, &qword_23BDC89F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  v12 = sub_23BD9628C(&qword_27E1C5668, &qword_23BDC89F8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v23 - v13;
  v15 = sub_23BDC64C0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BD96394(a2, v11, &qword_27E1C5660, &qword_23BDC89F0);
  v19 = sub_23BDC6280();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v11, 1, v19) == 1)
  {
    sub_23BD962D4(v11, &qword_27E1C5660, &qword_23BDC89F0);
    (*(v16 + 56))(v14, 1, 1, v15);
    sub_23BDC6180();
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_23BD962D4(v14, &qword_27E1C5668, &qword_23BDC89F8);
    }
  }

  else
  {
    sub_23BDC6260();
    (*(v20 + 8))(v11, v19);
    (*(v16 + 56))(v14, 0, 1, v15);
    (*(v16 + 32))(v18, v14, v15);
  }

  sub_23BDC64A0();
  v21 = sub_23BDC6490();
  sub_23BDC64B0();
  sub_23BDC6070();
  sub_23BDC5F20();
  (*(v26 + 8))(v5, v27);
  (*(v24 + 8))(v8, v25);
  (*(v16 + 8))(v18, v15);
  v31 = v28;
  sub_23BD96334(&v31);
  v30 = v29;
  sub_23BD96334(&v30);
  return v21;
}

uint64_t sub_23BD9628C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23BD962D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_23BD9628C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23BD96394(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23BD9628C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_23BD96410(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_23BD96470(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for WindTemplateModel(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_23BD965F0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for WindTemplateModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23BD9675C(uint64_t a1)
{
  result = sub_23BD96820(319, &qword_27E1C56B8, 0x277D2C7B8);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WindTemplateModel(319);
    if (v3 <= 0x3F)
    {
      result = sub_23BDC6010();
      if (v4 <= 0x3F)
      {
        result = sub_23BDC6590();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23BD96820(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_23BD968B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BD968F8(uint64_t a1)
{
  result = sub_23BD968B0(&unk_27E1C5D40, type metadata accessor for WindRectangularTemplateModel, &unk_23BDC8998);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BD96950(uint64_t a1)
{
  result = sub_23BD968B0(&qword_27E1C56D0, type metadata accessor for WindRectangularTemplateModel, &unk_23BDC8AA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BD96A80()
{
  type metadata accessor for UVTemplateFormatter();
  v0 = swift_allocObject();
  *(v0 + 16) = *sub_23BDC65F0();
  strcpy((v0 + 24), "sun.max.fill");
  *(v0 + 37) = 0;
  *(v0 + 38) = -5120;
  v2 = sub_23BD97B6C(&qword_27E1C5768, v1, type metadata accessor for UVTemplateFormatter, &unk_23BDC8C84);
  *&xmmword_27E1C7750 = v0;
  *(&xmmword_27E1C7750 + 1) = v2;
}

id sub_23BD96B30(uint64_t a1)
{
  v3 = type metadata accessor for UVTemplateModel(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BD97CA8(a1, v5);
  v6 = sub_23BDBA204();
  v7 = [objc_opt_self() systemCyanColor];
  [v6 setTintColor_];

  sub_23BD97D0C(v5);
  v8 = (*(**(v1 + 16) + 88))(*(a1 + *(v3 + 20)), *(a1 + *(v3 + 20) + 8), 2);
  v10 = v9;
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v11 = qword_27E1C5B70;
  v12 = sub_23BDC66C0();
  v13 = sub_23BDC66C0();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  sub_23BDC66F0();
  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23BDC8C40;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_23BD97C54();
  *(v15 + 32) = v8;
  *(v15 + 40) = v10;
  sub_23BDC6700();

  v16 = sub_23BDC66C0();

  v17 = objc_opt_self();
  v18 = [v17 textProviderWithText_];

  v19 = sub_23BDC66C0();

  v20 = [v17 textProviderWithText_];

  v21 = [objc_allocWithZone(MEMORY[0x277CBBA08]) initWithHeaderTextProvider:v6 body1TextProvider:v18 body2TextProvider:v20];
  return v21;
}

id sub_23BD96E84(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for UVTemplateModel(0);
  (*(*v3 + 88))(*(a1 + *(v4 + 20)), *(a1 + *(v4 + 20) + 8), 1);
  v5 = sub_23BDC66C0();

  v6 = [objc_opt_self() textProviderWithText_];

  v7 = v6;
  v8 = sub_23BD97994(a1);
  v9 = [objc_allocWithZone(MEMORY[0x277CBBA90]) initWithTextProvider:v7 imageProvider:v8];

  return v9;
}

id sub_23BD96F78(uint64_t a1)
{
  v3 = type metadata accessor for UVTemplateModel(0);
  v4 = (a1 + *(v3 + 20));
  if ((v4[1] & 1) != 0 || (v5 = (a1 + *(v3 + 24)), (v6 = v5[1]) == 0))
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v23 = qword_27E1C5B70;
    v24 = sub_23BDC66C0();
    v25 = sub_23BDC66C0();
    v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

    v20 = sub_23BDC66F0();
    v22 = v27;
  }

  else
  {
    v7 = *v4;
    v8 = *v5;
    v9 = qword_27E1C55D0;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = qword_27E1C5B70;
    v11 = sub_23BDC66C0();
    v12 = sub_23BDC66C0();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    sub_23BDC66F0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_23BDC8C50;
    v15 = (*(**(v1 + 16) + 88))(v7, 0, 0);
    v17 = v16;
    v18 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v19 = sub_23BD97C54();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    *(v14 + 96) = v18;
    *(v14 + 104) = v19;
    *(v14 + 64) = v19;
    *(v14 + 72) = v8;
    *(v14 + 80) = v6;
    v20 = sub_23BDC6700();
    v22 = v21;
  }

  v32 = v22;
  sub_23BD97C00();
  sub_23BDC6860();

  v28 = sub_23BDC66C0();

  v29 = [objc_opt_self() textProviderWithText_];

  v30 = [objc_allocWithZone(MEMORY[0x277CBBA80]) initWithTextProvider_];
  return v30;
}

id sub_23BD972FC(uint64_t a1, Class *a2, Class *a3)
{
  v3 = sub_23BD97658(a1);
  v31 = v4;
  v6 = v5;
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v7 = qword_27E1C5B70;
  v8 = sub_23BDC66C0();
  v9 = sub_23BDC66C0();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  v11 = sub_23BDC66F0();
  v13 = v12;

  v14 = v11 == 1702195828 && v13 == 0xE400000000000000;
  if (!v14 && (sub_23BDC6980() & 1) == 0)
  {
    if (v11 == 0x65736C6166 && v13 == 0xE500000000000000)
    {
    }

    else
    {
      v28 = sub_23BDC6980();

      if ((v28 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = v31;
    v26 = [objc_allocWithZone(*a3) initWithGaugeProvider:v3 bottomTextProvider:v6 centerTextProvider:v31];
    goto LABEL_12;
  }

LABEL_9:
  v15 = sub_23BDC66C0();
  v16 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v17 = sub_23BD9C038();
  [v16 setTintColor_];

  v18 = qword_27E1C5B70;
  v19 = v16;
  v20 = v18;
  v21 = sub_23BDC66C0();
  v22 = sub_23BDC66C0();
  v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

  if (!v23)
  {
    sub_23BDC66F0();
    v23 = sub_23BDC66C0();
  }

  [v19 setAccessibilityLabel_];

  v24 = objc_allocWithZone(*a2);
  v25 = v3;
  v26 = [v24 initWithGaugeProvider:v25 bottomImageProvider:v19 centerTextProvider:v31];

  v6 = v25;
  v3 = v19;
LABEL_12:

  return v26;
}

id sub_23BD97658(uint64_t a1)
{
  v3 = type metadata accessor for UVTemplateModel(0);
  v4 = a1 + *(v3 + 20);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = 0.0;
  if ((v6 & 1) == 0)
  {
    v8 = *(a1 + *(v3 + 36));
    v7 = (v5 / v8) > 0.0 ? v5 / v8 : 0.0;
    if (v7 >= 1.0)
    {
      v7 = 1.0;
    }
  }

  sub_23BD97BB4();
  v9 = sub_23BDC6770();
  v10 = objc_opt_self();
  *&v11 = v7;
  v12 = [v10 gaugeProviderWithStyle:0 gaugeColors:v9 gaugeColorLocations:0 fillFraction:v11];

  (*(**(v1 + 16) + 88))(v5, v6, 1);
  v13 = sub_23BDC66C0();

  v14 = objc_opt_self();
  [v14 textProviderWithText_];

  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v15 = qword_27E1C5B70;
  v16 = sub_23BDC66C0();
  v17 = sub_23BDC66C0();
  v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

  if (!v18)
  {
    sub_23BDC66F0();
    v18 = sub_23BDC66C0();
  }

  v19 = [v14 textProviderWithText_];

  v20 = sub_23BD9C038();
  [v19 setTintColor_];

  return v12;
}

uint64_t sub_23BD978E4()
{

  return swift_deallocClassInstance();
}

id sub_23BD97994(uint64_t a1)
{
  v2 = sub_23BDC66C0();
  v3 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v4 = *(type metadata accessor for UVTemplateModel(0) + 32);
  v5 = *(a1 + v4);
  if (v5)
  {
    v6 = *(a1 + v4);
  }

  else
  {
    v6 = [objc_opt_self() systemCyanColor];
  }

  v7 = v3;
  v8 = v5;
  [v7 setTintColor_];
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v9 = qword_27E1C5B70;
  v10 = sub_23BDC66C0();
  v11 = sub_23BDC66C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  if (!v12)
  {
    sub_23BDC66F0();
    v12 = sub_23BDC66C0();
  }

  [v7 setAccessibilityLabel_];

  return v7;
}

uint64_t sub_23BD97B6C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_23BD97BB4()
{
  result = qword_27E1C5770;
  if (!qword_27E1C5770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C5770);
  }

  return result;
}

unint64_t sub_23BD97C00()
{
  result = qword_27E1C57A0;
  if (!qword_27E1C57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C57A0);
  }

  return result;
}

unint64_t sub_23BD97C54()
{
  result = qword_27E1C5890;
  if (!qword_27E1C5890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5890);
  }

  return result;
}

uint64_t sub_23BD97CA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UVTemplateModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BD97D0C(uint64_t a1)
{
  v2 = type metadata accessor for UVTemplateModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BD97D9C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23BD97DF8()
{
  type metadata accessor for ConditionRectangularTemplateFormatter();
  v0 = swift_allocObject();
  result = sub_23BD99AA8(&qword_27E1C58E0, v1, type metadata accessor for ConditionRectangularTemplateFormatter, &unk_23BDC8D18);
  *&xmmword_27E1C7760 = v0;
  *(&xmmword_27E1C7760 + 1) = result;
  return result;
}

unint64_t sub_23BD97E68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_23BD9628C(&unk_27E1C58C0, &qword_23BDC8D70);
    v2 = sub_23BDC6960();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);
        sub_23BD96820(0, &qword_27E1C56B8, 0x277D2C7B8);

        v18 = v17;
        sub_23BD9628C(&unk_27E1C5880, &unk_23BDC97B0);
        swift_dynamicCast();
        result = sub_23BDB13C4(v16, v15);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          *(v2[7] + 8 * v10) = v24;
          result = swift_unknownObjectRelease();
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * result) = v24;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_23BD980A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_23BD9628C(&qword_27E1C58E8, &qword_23BDC8D88);
    v1 = sub_23BDC6960();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    sub_23BD96820(0, &qword_27E1C58F0, 0x277D74300);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_23BD99AF0(&v27[8], v25);
    sub_23BD99AF0(v25, v27);
    sub_23BDC66F0();
    sub_23BDC69A0();
    sub_23BDC6710();
    v16 = sub_23BDC69B0();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_23BD99AF0(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_23BD983CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BD9628C(&qword_27E1C58D8, &qword_23BDC8D80);
    v3 = sub_23BDC6960();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23BDB13C4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_23BD984E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BD9628C(&qword_27E1C58D0, &qword_23BDC8D78);
    v3 = sub_23BDC6960();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_23BDB13C4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
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

id sub_23BD985E4(void **a1)
{
  v2 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  *&v143 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v142 = &v131 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v131 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v131 - v10;
  v12 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v144 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v145 = &v131 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v131 - v18;
  v20 = type metadata accessor for ConditionTemplateModel(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *sub_23BDC65E0();
  v141 = type metadata accessor for ConditionRectangularTemplateModel(0);
  v24 = *(v141 + 20);
  v147 = a1;
  sub_23BD99928(a1 + v24, v22);
  sub_23BD9998C(&v22[v20[8]], v11);
  v25 = v13[6];
  v26 = v25(v11, 1, v12);
  v148 = v23;
  v146 = v22;
  if (v26 == 1)
  {

LABEL_7:
    sub_23BD962D4(v11, &qword_27E1C5790, &unk_23BDC92E0);
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v34 = qword_27E1C5B70;
    v35 = sub_23BDC66C0();
    v36 = sub_23BDC66C0();
    v37 = [v34 localizedStringForKey:v35 value:0 table:v36];

    v38 = sub_23BDC66F0();
    v40 = v39;

    v151 = v38;
    v152 = v40;
    sub_23BD97C00();
    sub_23BDC6860();

    v41 = qword_27E1C5B70;
    v42 = sub_23BDC66C0();
    v43 = sub_23BDC66C0();
    v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

    v45 = sub_23BDC66F0();
    v47 = v46;

    v149 = v45;
    v150 = v47;
    sub_23BDC6860();

    v48 = sub_23BDC66C0();

    v49 = sub_23BDC66C0();

    v50 = [objc_opt_self() textProviderWithText:v48 shortText:v49];

    v51 = objc_opt_self();
    v52 = v50;
    v53 = [v51 grayColor];
    [v52 setTintColor_];

    goto LABEL_10;
  }

  v27 = v11;
  v28 = v13[4];
  v28(v19, v27, v12);
  sub_23BD9998C(&v22[v20[10]], v9);
  if (v25(v9, 1, v12) == 1)
  {
    v29 = v13[1];

    v29(v19, v12);
    v11 = v9;
    goto LABEL_7;
  }

  v139 = v19;
  v140 = v13;
  v30 = v145;
  v28(v145, v9, v12);
  v31 = &v22[v20[9]];
  v32 = v142;
  sub_23BD9998C(v31, v142);
  if (v25(v32, 1, v12) == 1)
  {
    v33 = v140[1];

    v33(v30, v12);
    v33(v139, v12);
    v11 = v32;
    goto LABEL_7;
  }

  v28(v144, v32, v12);
  v65 = v140;
  v66 = v143;
  v137 = v140[2];
  v133 = v140 + 2;
  v137(v143, v139, v12);
  v136 = v65[7];
  (v136)(v66, 0, 1, v12);
  v67 = *(*v148 + 152);
  v68 = *v148 + 152;

  v135 = v67;
  v134 = v68;
  v69 = v67(v66, 1, 0);
  v71 = v70;
  sub_23BD962D4(v66, &qword_27E1C5790, &unk_23BDC92E0);
  v72 = v147 + *(v141 + 28);
  v73 = v72[*(sub_23BDC6590() + 28)] == 1;
  v142 = v12;
  if (v73)
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v74 = qword_27E1C5B70;
    v75 = sub_23BDC66C0();
    v76 = sub_23BDC66C0();
    v77 = [v74 localizedStringForKey:v75 value:0 table:v76];

    sub_23BDC66F0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_23BDC8C40;
    *(v78 + 56) = MEMORY[0x277D837D0];
    *(v78 + 64) = sub_23BD97C54();
    *(v78 + 32) = v69;
    *(v78 + 40) = v71;

    sub_23BDC6700();

    v79 = sub_23BDC66C0();

    v80 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
    v81 = NWCGlyphPrefixedTextProvider();
  }

  else
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v82 = qword_27E1C5B70;
    v83 = sub_23BDC66C0();
    v84 = sub_23BDC66C0();
    v85 = [v82 localizedStringForKey:v83 value:0 table:v84];

    sub_23BDC66F0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_23BDC8C40;
    *(v86 + 56) = MEMORY[0x277D837D0];
    *(v86 + 64) = sub_23BD97C54();
    *(v86 + 32) = v69;
    *(v86 + 40) = v71;

    sub_23BDC6700();

    v80 = sub_23BDC66C0();

    v81 = [objc_opt_self() textProviderWithText_];
  }

  v87 = sub_23BDC66C0();

  [v81 setAccessibilityLabel_];

  v131 = objc_opt_self();
  v88 = [v131 systemCyanColor];
  v138 = v81;
  [v81 setTintColor_];

  v89 = v143;
  v90 = v142;
  v91 = v137;
  v137(v143, v145, v142);
  v92 = v136;
  (v136)(v89, 0, 1, v90);
  v93 = v135;
  v141 = v135(v89, 1, 0);
  v132 = v94;
  sub_23BD962D4(v89, &qword_27E1C5790, &unk_23BDC92E0);
  v91(v89, v144, v90);
  (v92)(v89, 0, 1, v90);
  v95 = v93(v89, 1, 0);
  v97 = v96;
  sub_23BD962D4(v89, &qword_27E1C5790, &unk_23BDC92E0);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v98 = qword_27E1C5B70;
  v99 = sub_23BDC66C0();
  v136 = "uviFormatter";
  v100 = sub_23BDC66C0();
  v101 = [v98 localizedStringForKey:v99 value:0 table:v100];

  sub_23BDC66F0();
  v137 = sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v102 = swift_allocObject();
  v143 = xmmword_23BDC8C50;
  *(v102 + 16) = xmmword_23BDC8C50;
  v103 = MEMORY[0x277D837D0];
  *(v102 + 56) = MEMORY[0x277D837D0];
  v104 = sub_23BD97C54();
  v105 = v132;
  *(v102 + 32) = v141;
  *(v102 + 40) = v105;
  *(v102 + 96) = v103;
  *(v102 + 104) = v104;
  *(v102 + 64) = v104;
  *(v102 + 72) = v95;
  *(v102 + 80) = v97;

  sub_23BDC6700();

  v106 = sub_23BDC66C0();

  v107 = [objc_opt_self() textProviderWithText_];

  v108 = v107;
  v135 = v95;
  v109 = v108;
  v110 = [v131 whiteColor];
  [v109 setTintColor_];

  v111 = qword_27E1C5B70;
  v112 = sub_23BDC66C0();
  v113 = sub_23BDC66C0();
  v114 = [v111 localizedStringForKey:v112 value:0 table:v113];

  sub_23BDC66F0();
  v115 = swift_allocObject();
  *(v115 + 16) = v143;
  v116 = MEMORY[0x277D837D0];
  *(v115 + 56) = MEMORY[0x277D837D0];
  *(v115 + 64) = v104;
  *(v115 + 32) = v141;
  *(v115 + 40) = v105;
  *(v115 + 96) = v116;
  *(v115 + 104) = v104;
  *(v115 + 72) = v135;
  *(v115 + 80) = v97;
  sub_23BDC6700();

  v117 = sub_23BDC66C0();

  [v109 setAccessibilityLabel_];

  v118 = qword_27E1C5B70;
  v119 = sub_23BDC66C0();
  v120 = sub_23BDC66C0();
  v121 = [v118 localizedStringForKey:v119 value:0 table:v120];

  if (!v121)
  {
    sub_23BDC66F0();
    v121 = sub_23BDC66C0();
  }

  v122 = sub_23BD96820(0, &qword_27E1C5D30, 0x277CBBB88);
  inited = swift_initStackObject();
  *(inited + 16) = v143;
  *(inited + 56) = sub_23BD96820(0, &unk_27E1C58A0, 0x277CBBBA0);
  *(inited + 64) = sub_23BD99A58(&unk_27E1C5BB0, &unk_27E1C58A0, 0x277CBBBA0);
  v124 = v138;
  *(inited + 32) = v138;
  *(inited + 96) = v122;
  *(inited + 104) = sub_23BD99A58(&unk_27E1C58B0, &qword_27E1C5D30, 0x277CBBB88);
  *(inited + 72) = v109;
  v125 = v109;
  v126 = v124;
  v127 = sub_23BDC69C0();
  swift_setDeallocating();
  sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
  swift_arrayDestroy();
  v128 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v121 arguments:v127];

  v129 = v140[1];
  v130 = v142;
  v129(v144, v142);
  v129(v145, v130);
  v129(v139, v130);
  v52 = v128;
LABEL_10:
  sub_23BD96820(0, &qword_27E1C57A8, 0x277D2C7A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v55 = [objc_opt_self() fullColorImageProviderWithImageViewClass_];
  v56 = *v147;
  sub_23BD9628C(&unk_27E1C57B0, qword_23BDC9790);
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_23BDC8C40;
  *(v57 + 32) = sub_23BDC66F0();
  *(v57 + 40) = v58;
  *(v57 + 48) = v56;
  v59 = v56;
  v60 = sub_23BD984E0(v57);
  swift_setDeallocating();
  sub_23BD962D4(v57 + 32, &unk_27E1C5D20, qword_23BDC8D50);
  sub_23BD97E68(v60);

  sub_23BD9628C(&unk_27E1C5880, &unk_23BDC97B0);
  v61 = sub_23BDC6670();

  [v55 setMetadata_];

  v62 = [objc_allocWithZone(MEMORY[0x277CBB9B0]) initWithTextProvider:v52 imageProvider:v55];
  v63 = sub_23BDB1D54();

  sub_23BD999FC(v146);
  return v63;
}

uint64_t sub_23BD99928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionTemplateModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BD9998C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BD999FC(uint64_t a1)
{
  v2 = type metadata accessor for ConditionTemplateModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BD99A58(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_23BD96820(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BD99AA8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

_OWORD *sub_23BD99AF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_23BD99B00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BD9628C(&qword_27E1C58F8, &qword_23BDC8D90);
    v3 = sub_23BDC6960();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_23BDB143C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_23BD99BF8()
{
  v1 = (v0 + OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource____lazy_storage___rectangularFormatter);
  if (*(v0 + OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource____lazy_storage___rectangularFormatter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource____lazy_storage___rectangularFormatter);
  }

  else
  {
    if (qword_27E1C55E0 != -1)
    {
      swift_once();
    }

    v2 = qword_27E1C7790;
    v3 = *algn_27E1C7798;
    *v1 = qword_27E1C7790;
    v1[1] = v3;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

char *sub_23BD99D04(void *a1, uint64_t a2, void *a3)
{
  v7 = &v3[OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource____lazy_storage___rectangularFormatter];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_nhpLocationCache;
  if (qword_27E1C55B0 != -1)
  {
    swift_once();
  }

  *&v3[v8] = qword_27E1C5900;

  sub_23BDC6640();
  sub_23BDC6640();
  *&v3[OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_nhpFamilies] = &unk_284E8CEA0;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for ChanceRainDataSource(0);
  v9 = objc_msgSendSuper2(&v14, sel_initWithComplication_family_forDevice_, a1, a2, a3);
  v10 = qword_27E1C55F8;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v13 = xmmword_27E1C77C0;
  swift_unknownObjectRetain();

  *&v11[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter] = v13;
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_23BD99F30()
{
  sub_23BD9628C(&qword_27E1C5968, &unk_23BDC8E20);
  sub_23BDC63A0();
  *(swift_allocObject() + 16) = xmmword_23BDC8C50;
  sub_23BDC6390();
  sub_23BDC6380();
  sub_23BD9B810();
  sub_23BD9628C(&qword_27E1C5978, &qword_23BDC9520);
  sub_23BD9B868();
  return sub_23BDC6880();
}

uint64_t sub_23BD9A054@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BDC6010();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 family];
  sub_23BDC6000();
  LOBYTE(v7) = sub_23BD9A8F0(v7);
  (*(v4 + 8))(v6, v3);
  v8 = sub_23BDC6650();
  v9 = &OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_nhpLogger;
  if ((v7 & 1) == 0)
  {
    v9 = &OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_logger;
  }

  return (*(*(v8 - 8) + 16))(a1, &v1[*v9], v8);
}

uint64_t sub_23BD9A198()
{
  if ([v0 family] == 11)
  {
    return sub_23BD99BF8();
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23BD9A2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a2;
  v46 = a6;
  v44 = a5;
  v8 = sub_23BDC63A0();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x28223BE20](v8);
  v40 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = sub_23BD9628C(&qword_27E1C5958, &unk_23BDC8E10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - v17;
  v43 = sub_23BDC6010();
  v19 = *(v43 - 8);
  v20 = MEMORY[0x28223BE20](v43);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v40 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v40 - v26;
  if (sub_23BD9A8F0(a1))
  {
    sub_23BD96394(a4, v15, &qword_27E1C5960, &qword_23BDC8F50);
    v28 = sub_23BDC6240();
    if ((*(*(v28 - 8) + 48))(v15, 1, v28) == 1)
    {
      sub_23BD962D4(v15, &qword_27E1C5960, &qword_23BDC8F50);
      v29 = v43;
      (*(v19 + 56))(v18, 1, 1, v43);
      sub_23BDC6000();
      if ((*(v19 + 48))(v18, 1, v29) != 1)
      {
        sub_23BD962D4(v18, &qword_27E1C5958, &unk_23BDC8E10);
      }
    }

    else
    {
      sub_23BD9628C(&qword_27E1C5968, &unk_23BDC8E20);
      v31 = v41;
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_23BDC8C50;
      sub_23BDC6390();
      sub_23BDC6380();
      v47 = v32;
      sub_23BD9B810();
      sub_23BD9628C(&qword_27E1C5978, &qword_23BDC9520);
      sub_23BD9B868();
      v33 = v40;
      v34 = v42;
      sub_23BDC6880();
      sub_23BDC5F80();
      (*(v31 + 8))(v33, v34);
      sub_23BD962D4(v15, &qword_27E1C5960, &qword_23BDC8F50);
      v29 = v43;
      (*(v19 + 56))(v18, 0, 1, v43);
      (*(v19 + 32))(v27, v18, v29);
    }

    sub_23BDC5FE0();
  }

  else
  {
    sub_23BD96394(a4, v13, &qword_27E1C5960, &qword_23BDC8F50);
    v30 = sub_23BDC6240();
    if ((*(*(v30 - 8) + 48))(v13, 1, v30) == 1)
    {
      sub_23BD962D4(v13, &qword_27E1C5960, &qword_23BDC8F50);
      sub_23BDC6000();
      v29 = v43;
    }

    else
    {
      sub_23BD9628C(&qword_27E1C5968, &unk_23BDC8E20);
      v35 = v41;
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_23BDC8C50;
      sub_23BDC6390();
      sub_23BDC6380();
      v47 = v36;
      sub_23BD9B810();
      sub_23BD9628C(&qword_27E1C5978, &qword_23BDC9520);
      sub_23BD9B868();
      v37 = v40;
      v38 = v42;
      sub_23BDC6880();
      sub_23BDC5F80();
      (*(v35 + 8))(v37, v38);
      sub_23BD962D4(v13, &qword_27E1C5960, &qword_23BDC8F50);
      v29 = v43;
      (*(v19 + 32))(v25, v22, v43);
    }

    sub_23BDC5FD0();
    v27 = v25;
  }

  return (*(v19 + 8))(v27, v29);
}

BOOL sub_23BD9A8F0(uint64_t a1)
{
  v3 = sub_23BDC62A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BD9628C(&qword_27E1C5988, &qword_23BDC8E30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  v10 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v48 - v11;
  v13 = sub_23BD9628C(&qword_27E1C5958, &unk_23BDC8E10);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v48 - v16;
  MEMORY[0x28223BE20](v15);
  v20 = &v48 - v19;
  v21 = *(v1 + OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_nhpFamilies);
  v22 = *(v21 + 16);
  v23 = (v21 + 32);
  do
  {
    if (!v22)
    {
      return 0;
    }

    v24 = *v23++;
    --v22;
  }

  while (v24 != a1);
  v52 = v4;
  v53 = v18;
  sub_23BD96394(v1 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_forecast, v12, &qword_27E1C5960, &qword_23BDC8F50);
  v25 = sub_23BDC6240();
  v26 = 1;
  if (!(*(*(v25 - 8) + 48))(v12, 1, v25))
  {
    sub_23BDC6230();
    v27 = sub_23BD9628C(&qword_27E1C5990, &unk_23BDC8E38);
    if (!(*(*(v27 - 8) + 48))(v9, 1, v27))
    {
      sub_23BDC6530();
      sub_23BDC6290();
      (*(v52 + 8))(v6, v3);
      v26 = 0;
    }

    sub_23BD962D4(v9, &qword_27E1C5988, &qword_23BDC8E30);
  }

  sub_23BD962D4(v12, &qword_27E1C5960, &qword_23BDC8F50);
  v28 = sub_23BDC6010();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v20, v26, 1, v28);
  v30 = OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_location;
  v31 = (v1 + *(sub_23BDC6590() + 32) + v30);
  v32 = *v31;
  v33 = v31[1];
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_23BDC67D0();
  MEMORY[0x23EEBD040](44, 0xE100000000000000);
  sub_23BDC67D0();
  v35 = v54;
  v34 = v55;
  sub_23BD96394(v20, v17, &qword_27E1C5958, &unk_23BDC8E10);

  v36 = sub_23BDC6630();
  v37 = sub_23BDC6800();

  if (os_log_type_enabled(v36, v37))
  {
    v50 = v37;
    v51 = v35;
    v52 = v1;
    v38 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v54 = v49;
    *v38 = 136315395;
    v39 = v53;
    sub_23BD96394(v17, v53, &qword_27E1C5958, &unk_23BDC8E10);
    if ((*(v29 + 48))(v39, 1, v28) == 1)
    {
      sub_23BD962D4(v39, &qword_27E1C5958, &unk_23BDC8E10);
      v40 = 0xE300000000000000;
      v41 = 7104878;
    }

    else
    {
      v41 = sub_23BDC5F60();
      v40 = v43;
      (*(v29 + 8))(v39, v28);
    }

    sub_23BD962D4(v17, &qword_27E1C5958, &unk_23BDC8E10);
    v44 = sub_23BDB4C84(v41, v40, &v54);

    *(v38 + 4) = v44;
    *(v38 + 12) = 2081;
    v45 = sub_23BDB4C84(v51, v34, &v54);

    *(v38 + 14) = v45;
    _os_log_impl(&dword_23BD93000, v36, v50, "nhpDate: %s, coordinate: %{private}s", v38, 0x16u);
    v46 = v49;
    swift_arrayDestroy();
    MEMORY[0x23EEBD7D0](v46, -1, -1);
    MEMORY[0x23EEBD7D0](v38, -1, -1);
  }

  else
  {

    sub_23BD962D4(v17, &qword_27E1C5958, &unk_23BDC8E10);
  }

  v42 = sub_23BD9B344(v20, v32, v33);
  sub_23BD962D4(v20, &qword_27E1C5958, &unk_23BDC8E10);
  return v42;
}

uint64_t sub_23BD9B040()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_nhpLogger;
  v2 = sub_23BDC6650();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_logger, v2);
}

id sub_23BD9B108()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChanceRainDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BD9B234(uint64_t a1)
{
  result = sub_23BDC6650();
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

uint64_t sub_23BD9B2EC()
{
  type metadata accessor for NHPLocationCache(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  result = sub_23BDC5F70();
  qword_27E1C5900 = v0;
  return result;
}

BOOL sub_23BD9B344(uint64_t a1, double a2, double a3)
{
  v7 = sub_23BD9628C(&qword_27E1C5958, &unk_23BDC8E10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_23BDC6010();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  if ((*(v3 + 32) & 1) != 0 || (*(v3 + 16) == a2 ? (v20 = *(v3 + 24) == a3) : (v20 = 0), !v20))
  {
    *(v3 + 16) = a2;
    *(v3 + 24) = a3;
    *(v3 + 32) = 0;
    sub_23BDC5F70();
    v21 = OBJC_IVAR____TtC20WeatherComplicationsP33_C744A1176000CEBEC10BC3DB63BD29F816NHPLocationCache_lastNHPDate;
    swift_beginAccess();
    (*(v11 + 40))(v3 + v21, v19, v10);
    swift_endAccess();
  }

  sub_23BD96394(a1, v9, &qword_27E1C5958, &unk_23BDC8E10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_23BD962D4(v9, &qword_27E1C5958, &unk_23BDC8E10);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    v22 = OBJC_IVAR____TtC20WeatherComplicationsP33_C744A1176000CEBEC10BC3DB63BD29F816NHPLocationCache_lastNHPDate;
    swift_beginAccess();
    (*(v11 + 24))(v3 + v22, v17, v10);
    swift_endAccess();
    (*(v11 + 8))(v17, v10);
  }

  sub_23BDC6000();
  v23 = OBJC_IVAR____TtC20WeatherComplicationsP33_C744A1176000CEBEC10BC3DB63BD29F816NHPLocationCache_lastNHPDate;
  swift_beginAccess();
  (*(v11 + 16))(v14, v3 + v23, v10);
  sub_23BDC5F90();
  v25 = v24;
  v26 = *(v11 + 8);
  v26(v14, v10);
  v26(v19, v10);
  return v25 < 86400.0;
}

uint64_t sub_23BD9B678()
{
  v1 = OBJC_IVAR____TtC20WeatherComplicationsP33_C744A1176000CEBEC10BC3DB63BD29F816NHPLocationCache_lastNHPDate;
  v2 = sub_23BDC6010();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_23BD9B73C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BD9B774(uint64_t a1)
{
  result = sub_23BDC6010();
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

unint64_t sub_23BD9B810()
{
  result = qword_27E1C5970;
  if (!qword_27E1C5970)
  {
    sub_23BDC63A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5970);
  }

  return result;
}

unint64_t sub_23BD9B868()
{
  result = qword_27E1C5980;
  if (!qword_27E1C5980)
  {
    sub_23BD9B8CC(&qword_27E1C5978, &qword_23BDC9520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5980);
  }

  return result;
}

uint64_t sub_23BD9B8CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_23BD9B914(char *a1, uint64_t a2)
{
  v4 = sub_23BDC6010();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BDC6650();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 family];
  sub_23BDC6000();
  LOBYTE(v12) = sub_23BD9A8F0(v12);
  (*(v5 + 8))(v7, v4);
  v13 = &OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_nhpLogger;
  if ((v12 & 1) == 0)
  {
    v13 = &OBJC_IVAR____TtC20WeatherComplications20ChanceRainDataSource_logger;
  }

  (*(v9 + 16))(v11, &a1[*v13], v8);
  v14 = sub_23BDC6630();
  v15 = sub_23BDC6810();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_23BD93000, v14, v15, "Migrating to widget.", v16, 2u);
    MEMORY[0x23EEBD7D0](v16, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v17 = objc_allocWithZone(MEMORY[0x277CBBBD0]);
  v18 = sub_23BDC66C0();
  v19 = sub_23BDC66C0();
  v20 = sub_23BDC66C0();
  v21 = [v17 initWithExtensionBundleIdentifier:v18 containerBundleIdentifier:v19 kind:v20 intent:0];

  (*(a2 + 16))(a2, v21);
}

uint64_t sub_23BD9BC0C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23BDC6010();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&qword_27E1C5958, &unk_23BDC8E10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = [objc_opt_self() complicationDate];
  if (v9)
  {
    v10 = v9;
    sub_23BDC5FF0();

    v11 = *(v3 + 32);
    v11(v8, v5, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
    return (v11)(a1, v8, v2);
  }

  else
  {
    (*(v3 + 56))(v8, 1, 1, v2);
    sub_23BDC6000();
    result = (*(v3 + 48))(v8, 1, v2);
    if (result != 1)
    {
      return sub_23BD962D4(v8, &qword_27E1C5958, &unk_23BDC8E10);
    }
  }

  return result;
}

uint64_t sub_23BD9BE08()
{
  v0 = sub_23BDC6040();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23BDC60C0();
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v5 = qword_27E1C5B70;
  v6 = sub_23BDC66C0();
  v7 = sub_23BDC66C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  sub_23BDC66F0();
  sub_23BDC60B0();
  v9 = sub_23BDC6030();
  MEMORY[0x23EEBC930](v9);
  (*(v1 + 8))(v3, v0);
  return sub_23BDC6570();
}

id sub_23BD9C038()
{
  v1 = type metadata accessor for UVTemplateModel(0);
  v2 = *(v0 + v1[10]);
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
    v19 = v1;
    v20 = sub_23BDC6930();
    v1 = v19;
    if (v20 < 2)
    {
      goto LABEL_4;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_4:
    v5 = [objc_opt_self() whiteColor];

    return v5;
  }

  v4 = v0 + v1[5];
  if (*(v4 + 8))
  {
    goto LABEL_4;
  }

  v7 = *v4;
  if (v3)
  {
    v9 = v1;
    v8 = sub_23BDC6930();
    v1 = v9;
  }

  else
  {
    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v7 / *(v0 + v1[9]);
  v11 = fminf(v10, 1.0);
  v12 = v10 > 0.0;
  v13 = 0.0;
  if (v12)
  {
    v13 = v11;
  }

  v14 = v8 * v13;
  if (COERCE__INT64(fabs(v14)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v3)
  {
    v15 = sub_23BDC6930();
  }

  else
  {
    v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    goto LABEL_34;
  }

  if (v16 >= (v14 & ~(v14 >> 63)))
  {
    v17 = v14 & ~(v14 >> 63);
  }

  else
  {
    v17 = v15 - 1;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_35:

LABEL_40:
    JUMPOUT(0x23EEBD1D0);
  }

  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v17 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v18 = *(v2 + 8 * v17 + 32);

  return v18;
}

uint64_t sub_23BD9C258()
{
  v0 = sub_23BDC64D0();
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v6 = MEMORY[0x277D84F90];

    sub_23BDC6900();
    v4 = 40;
    do
    {
      v5 = *(v1 + v4);
      sub_23BDC68E0();
      sub_23BDC6910();
      sub_23BDC6920();
      sub_23BDC68F0();
      v4 += 16;
      --v2;
    }

    while (v2);

    return v6;
  }

  return result;
}

uint64_t sub_23BD9C318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_23BD9628C(&qword_27E1C59A0, &unk_23BDC8EB0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v54 = &v52 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v52 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v52 - v11;
  v13 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v52 - v14;
  v16 = sub_23BDC6010();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v60 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v52 - v20;
  v55 = type metadata accessor for TemplateData(0);
  v22 = *(v55 + 20);
  v58 = v17;
  v23 = *(v17 + 16);
  v61 = v16;
  v53 = v23;
  v23(v21, a1, v16);
  v62 = a1;
  sub_23BD96394(a1 + v22, v15, &qword_27E1C5960, &qword_23BDC8F50);
  v24 = sub_23BDC6240();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v15, 1, v24) == 1)
  {
    sub_23BD962D4(v15, &qword_27E1C5960, &qword_23BDC8F50);
    memset(v66, 0, sizeof(v66));
    v67 = 0;
  }

  else
  {
    sub_23BDC6200();
    (*(v25 + 8))(v15, v24);
  }

  sub_23BD96394(v66, v63, &qword_27E1C59A8, &unk_23BDC8EC0);
  v26 = v64;
  v57 = v21;
  if (v64)
  {
    v27 = v65;
    sub_23BD9CCFC(v63, v64);
    (*(v27 + 96))(v26, v27);
    v28 = sub_23BDC6520();
    (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
    sub_23BD9CD40(v63);
  }

  else
  {
    sub_23BD962D4(v63, &qword_27E1C59A8, &unk_23BDC8EC0);
    v28 = sub_23BDC6520();
    (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  }

  sub_23BD96394(v12, v10, &qword_27E1C59A0, &unk_23BDC8EB0);
  sub_23BDC6520();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v10, 1, v28) == 1)
  {
    sub_23BD962D4(v10, &qword_27E1C59A0, &unk_23BDC8EB0);
    v31 = 0;
  }

  else
  {
    sub_23BDC6510();
    (*(v29 + 8))(v10, v28);
    sub_23BDC64E0();
    sub_23BD97BB4();
    v31 = sub_23BDC6840();
    v32 = v31;
  }

  v53(v60, v62, v61);
  v33 = v54;
  sub_23BD96394(v12, v54, &qword_27E1C59A0, &unk_23BDC8EB0);
  v34 = v30(v33, 1, v28);
  if (v34 == 1)
  {
    sub_23BD962D4(v33, &qword_27E1C59A0, &unk_23BDC8EB0);
    v35 = 0;
  }

  else
  {
    v35 = sub_23BDC6500();
    (*(v29 + 8))(v33, v28);
  }

  v36 = v56;
  sub_23BD96394(v12, v56, &qword_27E1C59A0, &unk_23BDC8EB0);
  if (v30(v36, 1, v28) == 1)
  {
    sub_23BD962D4(v36, &qword_27E1C59A0, &unk_23BDC8EB0);
    v37 = 0;
    v38 = 0xE000000000000000;
  }

  else
  {
    sub_23BDC6510();
    (*(v29 + 8))(v36, v28);
    v37 = sub_23BDC64F0();
    v38 = v39;
  }

  v40 = v34 == 1;
  v41 = *(v55 + 24);
  v42 = type metadata accessor for UVTemplateModel(0);
  v43 = v62 + v41;
  v44 = v59;
  sub_23BD9CC98(v43, v59 + v42[7]);
  v45 = v58;
  v46 = v61;
  (*(v58 + 32))(v44, v60, v61);
  v47 = v44 + v42[5];
  *v47 = v35;
  *(v47 + 8) = v40;
  v48 = (v44 + v42[6]);
  *v48 = v37;
  v48[1] = v38;
  *(v44 + v42[8]) = v31;
  *(v44 + v42[9]) = 11;
  v49 = v42[10];
  v50 = sub_23BD9C258();

  sub_23BD962D4(v12, &qword_27E1C59A0, &unk_23BDC8EB0);
  sub_23BD962D4(v66, &qword_27E1C59A8, &unk_23BDC8EC0);
  result = (*(v45 + 8))(v57, v46);
  *(v44 + v49) = v50;
  return result;
}

uint64_t sub_23BD9CA14(uint64_t a1)
{
  if (*(v1 + *(a1 + 20) + 8))
  {
    v2 = 0xE200000000000000;
    v3 = 11565;
  }

  else
  {
    sub_23BD9CD8C();
    v3 = sub_23BDC6870();
    v2 = v4;
  }

  MEMORY[0x23EEBD040](v3, v2);

  MEMORY[0x23EEBD040](41, 0xE100000000000000);
  return 0x3A7865646E497675;
}

uint64_t sub_23BD9CABC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BD9BC0C(a2);
  v4 = sub_23BDC64F0();
  v6 = v5;
  sub_23BD9BE08();
  v7 = [objc_opt_self() orangeColor];
  v8 = a1[6];
  v9 = a2 + a1[5];
  *v9 = 6;
  *(v9 + 8) = 0;
  v10 = (a2 + v8);
  *v10 = v4;
  v10[1] = v6;
  v11 = a1[9];
  *(a2 + a1[8]) = v7;
  *(a2 + v11) = 11;
  v12 = a1[10];
  result = sub_23BD9C258();
  *(a2 + v12) = result;
  return result;
}

unint64_t sub_23BD9CB64(uint64_t a1)
{
  result = sub_23BD9CB8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BD9CB8C()
{
  result = qword_27E1C5998;
  if (!qword_27E1C5998)
  {
    type metadata accessor for UVTemplateModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5998);
  }

  return result;
}

uint64_t type metadata accessor for UVTemplateModel(uint64_t a1)
{
  result = qword_27E1C59B8;
  if (!qword_27E1C59B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BD9CC30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BDC6010();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23BD9CC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BDC6590();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_23BD9CCFC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23BD9CD40(void *a1)
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

unint64_t sub_23BD9CD8C()
{
  result = qword_27E1C59B0;
  if (!qword_27E1C59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C59B0);
  }

  return result;
}

uint64_t sub_23BD9CDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BDC6590();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23BD9CF14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_23BDC6590();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

void sub_23BD9D01C(uint64_t a1)
{
  sub_23BDC6010();
  if (v1 <= 0x3F)
  {
    sub_23BD9D15C(319, &qword_27E1C59C8, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      sub_23BD9D15C(319, &qword_27E1C59D0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_23BDC6590();
        if (v4 <= 0x3F)
        {
          sub_23BD9D1A8(319, &qword_27E1C59D8, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23BD9D1A8(319, &qword_27E1C59E0, MEMORY[0x277D83940]);
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

void sub_23BD9D15C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23BDC6850();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23BD9D1A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_23BD97BB4();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id sub_23BD9D210(char *a1, int a2)
{
  LODWORD(v140) = a2;
  v3 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  MEMORY[0x28223BE20](v3 - 8);
  v133 = v106 - v4;
  v5 = sub_23BD9628C(&qword_27E1C5660, &qword_23BDC89F0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v117 = v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v116 = v106 - v9;
  MEMORY[0x28223BE20](v8);
  v136 = v106 - v10;
  v11 = sub_23BDC61B0();
  v119 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23BD9628C(&qword_27E1C59F8, &qword_23BDC8F40);
  v128 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v118 = (v106 - v15);
  v16 = sub_23BD9628C(&qword_27E1C5A00, &qword_23BDC8F48);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v135 = v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v134 = v106 - v19;
  v141 = sub_23BDC60C0();
  v138 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v137 = v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v115 = v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v106 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v106 - v27;
  v29 = sub_23BDC6010();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v139 = v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v106 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = v106 - v36;
  (*(v30 + 16))(v106 - v36, a1, v29);
  if (v140)
  {
    v143 = MEMORY[0x277D84F90];
    v142 = 1;
    v38 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v38);
    v106[-4] = v130;
    v106[-3] = &v142;
    v106[-2] = &v143;
    sub_23BDC5FD0();
    v39 = *(v30 + 8);
    v39(v35, v29);
    v40 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BDA182C();
    v41 = sub_23BDC6770();

    v42 = [v40 initWithEntries_];

    v39(v37, v29);
    return v42;
  }

  v131 = v14;
  v132 = v11;
  v140 = type metadata accessor for TemplateData(0);
  sub_23BD96394(&a1[*(v140 + 20)], v28, &qword_27E1C5960, &qword_23BDC8F50);
  v114 = v28;
  sub_23BD96394(v28, v26, &qword_27E1C5960, &qword_23BDC8F50);
  v43 = sub_23BDC6240();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  v110 = v44 + 48;
  v109 = v45;
  v46 = v45(v26, 1, v43);
  v47 = MEMORY[0x277D84F90];
  if (v46 == 1)
  {
    sub_23BD962D4(v26, &qword_27E1C5960, &qword_23BDC8F50);
LABEL_38:
    v143 = v47;
    v142 = 1;
    v100 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v100);
    v106[-4] = v130;
    v106[-3] = &v142;
    v106[-2] = &v143;
    sub_23BDC5FD0();
    v101 = *(v30 + 8);
    v101(v35, v29);
    v102 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BDA182C();
    v103 = sub_23BDC6770();

    v42 = [v102 initWithEntries_];

    sub_23BD962D4(v114, &qword_27E1C5960, &qword_23BDC8F50);
    v101(v37, v29);
    return v42;
  }

  v129 = a1;
  v48 = sub_23BDC61F0();
  v50 = *(v44 + 8);
  v49 = v44 + 8;
  v107 = v50;
  v50(v26, v43);
  if (*(v48 + 16) != 5)
  {

    goto LABEL_38;
  }

  v113 = v48;
  v106[1] = v49;
  v108 = v43;
  v106[0] = v37;
  v143 = v47;
  v51 = &v129[*(v140 + 24)];
  v125 = sub_23BDC6590();
  v126 = v51;
  v52 = *(v125 + 24);
  v53 = v138 + 16;
  v124 = *(v138 + 16);
  result = v124(v137, &v51[v52], v141);
  v55 = 0;
  v111 = v119 + 16;
  v56 = v128;
  v128 += 6;
  v129 = (v56 + 7);
  v123 = (v119 + 32);
  v122 = (v53 + 40);
  v121 = (v53 + 32);
  v138 = v53;
  v112 = (v53 - 8);
  v130 = (v30 + 8);
  v120 = (v119 + 8);
  v127 = v29;
  v57 = v135;
  v58 = v136;
  v59 = v132;
  while (1)
  {
    v60 = v131;
    if (v55 == 5)
    {
      v61 = 1;
      v140 = 5;
      goto LABEL_12;
    }

    if ((v55 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v55 >= *(v113 + 16))
    {
      goto LABEL_42;
    }

    v62 = v55 + 1;
    v63 = v119;
    v64 = v113 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v55;
    v65 = *(v131 + 48);
    v66 = v118;
    *v118 = v55;
    (*(v63 + 16))(v66 + v65, v64, v59);
    sub_23BDA1D38(v66, v57, &qword_27E1C59F8, &qword_23BDC8F40);
    v61 = 0;
    v140 = v62;
LABEL_12:
    (*v129)(v57, v61, 1, v60);
    v67 = v134;
    sub_23BDA1D38(v57, v134, &qword_27E1C5A00, &qword_23BDC8F48);
    if ((*v128)(v67, 1, v60) == 1)
    {

      v104 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
      sub_23BDA182C();
      v105 = sub_23BDC6770();

      v42 = [v104 initWithEntries_];

      (*v112)(v137, v141);
      sub_23BD962D4(v114, &qword_27E1C5960, &qword_23BDC8F50);
      (*v130)(v106[0], v29);
      return v42;
    }

    v68 = *v67;
    (*v123)(v13, &v67[*(v60 + 48)], v59);
    sub_23BDC6170();
    if (!v68)
    {
      v75 = v115;
      sub_23BD96394(v114, v115, &qword_27E1C5960, &qword_23BDC8F50);
      v76 = v108;
      v77 = v109(v75, 1, v108);
      v78 = v117;
      v79 = v116;
      if (v77 == 1)
      {
        v80 = v75;
        v81 = &qword_27E1C5960;
        v82 = &qword_23BDC8F50;
        goto LABEL_21;
      }

      sub_23BDC6210();
      v107(v75, v76);
      v83 = sub_23BDC6280();
      v84 = *(v83 - 8);
      if ((*(v84 + 48))(v78, 1, v83) == 1)
      {
        v80 = v78;
        v81 = &qword_27E1C5660;
        v82 = &qword_23BDC89F0;
LABEL_21:
        sub_23BD962D4(v80, v81, v82);
        v85 = sub_23BDC6280();
        (*(*(v85 - 8) + 56))(v79, 1, 1, v85);
      }

      else
      {
        sub_23BDC65D0();
        (*(v84 + 8))(v78, v83);
      }

      sub_23BDA1D38(v79, v58, &qword_27E1C5660, &qword_23BDC89F0);
      v73 = 0;
      goto LABEL_24;
    }

    if (qword_27E1C55B8 != -1)
    {
      swift_once();
    }

    v69 = *(off_27E1C59E8 + 2);
    v70 = sub_23BDC5FA0();
    v71 = [v69 stringFromDate_];

    sub_23BDC66F0();
    v73 = v72;

    v74 = sub_23BDC6280();
    (*(*(v74 - 8) + 56))(v58, 1, 1, v74);
LABEL_24:
    sub_23BDC6820();
    sub_23BD95E24(v13, v58);
    v87 = v86;
    v89 = v88;
    v90 = v13;
    v91 = sub_23BDC6130();
    v92 = v133;
    v93 = v141;
    v124(v133, v137, v141);
    (*v122)(v92, 0, 1, v93);
    if (v87)
    {
      v94 = sub_23BDC66C0();

      v13 = v90;
      if (v89)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v94 = 0;
      v13 = v90;
      if (v89)
      {
LABEL_26:
        v95 = sub_23BDC66C0();

        v57 = v135;
        if (v73)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }
    }

    v95 = 0;
    v57 = v135;
    if (v73)
    {
LABEL_27:
      v96 = sub_23BDC66C0();

      goto LABEL_31;
    }

LABEL_30:
    v96 = 0;
LABEL_31:
    v97 = v141;
    if ((*v121)(v92, 1, v141) == 1)
    {
      v98 = 0;
    }

    else
    {
      v99 = v92;
      v98 = sub_23BDC60A0();
      (*v112)(v99, v97);
    }

    [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v94 middleString:v95 bottomString:v96 isDay:v91 & 1 timeZone:v98];

    MEMORY[0x23EEBD070]();
    if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23BDC6790();
    }

    sub_23BDC67A0();
    v58 = v136;
    sub_23BD962D4(v136, &qword_27E1C5660, &qword_23BDC89F0);
    v29 = v127;
    (*v130)(v139, v127);
    v59 = v132;
    result = (*v120)(v13, v132);
    v55 = v140;
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

id sub_23BD9E1D4(char *a1, int a2)
{
  LODWORD(v141) = a2;
  v3 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  MEMORY[0x28223BE20](v3 - 8);
  v134 = v107 - v4;
  v5 = sub_23BD9628C(&qword_27E1C5660, &qword_23BDC89F0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v118 = v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v117 = v107 - v9;
  MEMORY[0x28223BE20](v8);
  v137 = v107 - v10;
  v11 = sub_23BDC61B0();
  v120 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23BD9628C(&qword_27E1C59F8, &qword_23BDC8F40);
  v129 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v119 = (v107 - v15);
  v16 = sub_23BD9628C(&qword_27E1C5A00, &qword_23BDC8F48);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v136 = v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v135 = v107 - v19;
  v142 = sub_23BDC60C0();
  v139 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v138 = v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v116 = v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v107 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v107 - v27;
  v29 = sub_23BDC6010();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v140 = v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v107 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = v107 - v36;
  (*(v30 + 16))(v107 - v36, a1, v29);
  if (v141)
  {
    v144 = MEMORY[0x277D84F90];
    v143 = 1;
    v38 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v38);
    v107[-4] = v131;
    v107[-3] = &v143;
    v107[-2] = &v144;
    sub_23BDC5FD0();
    v39 = *(v30 + 8);
    v39(v35, v29);
    v40 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BDA182C();
    v41 = sub_23BDC6770();

    v42 = [v40 initWithEntries_];

    v39(v37, v29);
    return v42;
  }

  v132 = v14;
  v133 = v11;
  v141 = type metadata accessor for TemplateData(0);
  sub_23BD96394(&a1[*(v141 + 20)], v28, &qword_27E1C5960, &qword_23BDC8F50);
  v115 = v28;
  sub_23BD96394(v28, v26, &qword_27E1C5960, &qword_23BDC8F50);
  v43 = sub_23BDC6240();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  v111 = v44 + 48;
  v110 = v45;
  v46 = v45(v26, 1, v43);
  v47 = MEMORY[0x277D84F90];
  if (v46 == 1)
  {
    sub_23BD962D4(v26, &qword_27E1C5960, &qword_23BDC8F50);
LABEL_38:
    v144 = v47;
    v143 = 1;
    v101 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v101);
    v107[-4] = v131;
    v107[-3] = &v143;
    v107[-2] = &v144;
    sub_23BDC5FD0();
    v102 = *(v30 + 8);
    v102(v35, v29);
    v103 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BDA182C();
    v104 = sub_23BDC6770();

    v42 = [v103 initWithEntries_];

    sub_23BD962D4(v115, &qword_27E1C5960, &qword_23BDC8F50);
    v102(v37, v29);
    return v42;
  }

  v130 = a1;
  v48 = sub_23BDC61F0();
  v50 = *(v44 + 8);
  v49 = v44 + 8;
  v108 = v50;
  v50(v26, v43);
  if (*(v48 + 16) != 5)
  {

    goto LABEL_38;
  }

  v114 = v48;
  v107[1] = v49;
  v109 = v43;
  v107[0] = v37;
  v144 = v47;
  v51 = &v130[*(v141 + 24)];
  v126 = sub_23BDC6590();
  v127 = v51;
  v52 = *(v126 + 24);
  v53 = v139 + 16;
  v125 = *(v139 + 16);
  result = v125(v138, &v51[v52], v142);
  v55 = 0;
  v112 = v120 + 16;
  v56 = v129;
  v129 += 6;
  v130 = (v56 + 7);
  v124 = (v120 + 32);
  v123 = (v53 + 40);
  v122 = (v53 + 32);
  v139 = v53;
  v113 = (v53 - 8);
  v131 = (v30 + 8);
  v121 = (v120 + 8);
  v128 = v29;
  v57 = v136;
  v58 = v137;
  v59 = v133;
  while (1)
  {
    v60 = v132;
    if (v55 == 5)
    {
      v61 = 1;
      v141 = 5;
      goto LABEL_12;
    }

    if ((v55 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v55 >= *(v114 + 16))
    {
      goto LABEL_42;
    }

    v62 = v55 + 1;
    v63 = v120;
    v64 = v114 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v55;
    v65 = *(v132 + 48);
    v66 = v119;
    *v119 = v55;
    (*(v63 + 16))(v66 + v65, v64, v59);
    sub_23BDA1D38(v66, v57, &qword_27E1C59F8, &qword_23BDC8F40);
    v61 = 0;
    v141 = v62;
LABEL_12:
    (*v130)(v57, v61, 1, v60);
    v67 = v135;
    sub_23BDA1D38(v57, v135, &qword_27E1C5A00, &qword_23BDC8F48);
    if ((*v129)(v67, 1, v60) == 1)
    {

      v105 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
      sub_23BDA182C();
      v106 = sub_23BDC6770();

      v42 = [v105 initWithEntries_];

      (*v113)(v138, v142);
      sub_23BD962D4(v115, &qword_27E1C5960, &qword_23BDC8F50);
      (*v131)(v107[0], v29);
      return v42;
    }

    v68 = *v67;
    (*v124)(v13, &v67[*(v60 + 48)], v59);
    sub_23BDC6170();
    if (!v68)
    {
      v75 = v116;
      sub_23BD96394(v115, v116, &qword_27E1C5960, &qword_23BDC8F50);
      v76 = v109;
      v77 = v110(v75, 1, v109);
      v78 = v118;
      v79 = v117;
      if (v77 == 1)
      {
        v80 = v75;
        v81 = &qword_27E1C5960;
        v82 = &qword_23BDC8F50;
        goto LABEL_21;
      }

      sub_23BDC6210();
      v108(v75, v76);
      v83 = sub_23BDC6280();
      v84 = *(v83 - 8);
      if ((*(v84 + 48))(v78, 1, v83) == 1)
      {
        v80 = v78;
        v81 = &qword_27E1C5660;
        v82 = &qword_23BDC89F0;
LABEL_21:
        sub_23BD962D4(v80, v81, v82);
        v85 = sub_23BDC6280();
        (*(*(v85 - 8) + 56))(v79, 1, 1, v85);
      }

      else
      {
        sub_23BDC65D0();
        (*(v84 + 8))(v78, v83);
      }

      sub_23BDA1D38(v79, v58, &qword_27E1C5660, &qword_23BDC89F0);
      v73 = 0;
      goto LABEL_24;
    }

    if (qword_27E1C55B8 != -1)
    {
      swift_once();
    }

    v69 = *(off_27E1C59E8 + 2);
    v70 = sub_23BDC5FA0();
    v71 = [v69 stringFromDate_];

    sub_23BDC66F0();
    v73 = v72;

    v74 = sub_23BDC6280();
    (*(*(v74 - 8) + 56))(v58, 1, 1, v74);
LABEL_24:
    v86 = sub_23BDC6820();
    sub_23BDAF330(v13, v58, v86 & 1);
    v88 = v87;
    v90 = v89;
    v91 = v13;
    v92 = sub_23BDC6130();
    v93 = v134;
    v94 = v142;
    v125(v134, v138, v142);
    (*v123)(v93, 0, 1, v94);
    if (v88)
    {
      v95 = sub_23BDC66C0();

      v13 = v91;
      if (v90)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v95 = 0;
      v13 = v91;
      if (v90)
      {
LABEL_26:
        v96 = sub_23BDC66C0();

        v57 = v136;
        if (v73)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }
    }

    v96 = 0;
    v57 = v136;
    if (v73)
    {
LABEL_27:
      v97 = sub_23BDC66C0();

      goto LABEL_31;
    }

LABEL_30:
    v97 = 0;
LABEL_31:
    v98 = v142;
    if ((*v122)(v93, 1, v142) == 1)
    {
      v99 = 0;
    }

    else
    {
      v100 = v93;
      v99 = sub_23BDC60A0();
      (*v113)(v100, v98);
    }

    [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v95 middleString:v96 bottomString:v97 isDay:v92 & 1 timeZone:v99];

    MEMORY[0x23EEBD070]();
    if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23BDC6790();
    }

    sub_23BDC67A0();
    v58 = v137;
    sub_23BD962D4(v137, &qword_27E1C5660, &qword_23BDC89F0);
    v29 = v128;
    (*v131)(v140, v128);
    v59 = v133;
    result = (*v121)(v13, v133);
    v55 = v141;
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

id sub_23BD9F19C(void (**a1)(char *, char *, uint64_t), char a2)
{
  v4 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  MEMORY[0x28223BE20](v4 - 8);
  v136 = v108 - v5;
  v6 = sub_23BD9628C(&qword_27E1C5A20, &qword_23BDC8F68);
  MEMORY[0x28223BE20](v6 - 8);
  v135 = v108 - v7;
  v8 = sub_23BD9628C(&qword_27E1C5660, &qword_23BDC89F0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v111 = v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v117 = v108 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v108 - v13;
  v139 = sub_23BDC61B0();
  v119 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v147 = v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23BD9628C(&qword_27E1C59F8, &qword_23BDC8F40);
  v143 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v118 = (v108 - v17);
  v18 = sub_23BD9628C(&qword_27E1C5A00, &qword_23BDC8F48);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v138 = v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v137 = v108 - v21;
  v146 = sub_23BDC60C0();
  v141 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v140 = v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v116 = v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v108 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v108 - v29;
  v31 = sub_23BDC6010();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v145 = v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = v108 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = v108 - v38;
  (v32[2])(v108 - v38, a1, v31);
  if (a2)
  {
    v149 = MEMORY[0x277D84F90];
    v148 = 1;
    v40 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v40);
    v108[-4] = i;
    v108[-3] = &v148;
    v108[-2] = &v149;
    sub_23BDC5FD0();
    v41 = v32[1];
    v41(v37, v31);
    v42 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BDA182C();
    v43 = sub_23BDC6770();

    v44 = [v42 initWithEntries_];

    v41(v39, v31);
    return v44;
  }

  v132 = v32;
  v133 = v16;
  v134 = v14;
  v45 = type metadata accessor for TemplateData(0);
  sub_23BD96394(a1 + *(v45 + 20), v30, &qword_27E1C5960, &qword_23BDC8F50);
  sub_23BD96394(v30, v28, &qword_27E1C5960, &qword_23BDC8F50);
  v46 = sub_23BDC6240();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  v113 = v47 + 48;
  v112 = v48;
  v49 = v48(v28, 1, v46);
  v50 = MEMORY[0x277D84F90];
  if (v49 == 1)
  {
    sub_23BD962D4(v28, &qword_27E1C5960, &qword_23BDC8F50);
LABEL_38:
    v149 = v50;
    v148 = 1;
    v102 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v102);
    v108[-4] = i;
    v108[-3] = &v148;
    v108[-2] = &v149;
    sub_23BDC5FD0();
    v103 = v132[1];
    v103(v37, v31);
    v104 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BDA182C();
    v105 = sub_23BDC6770();

    v44 = [v104 initWithEntries_];

    sub_23BD962D4(v30, &qword_27E1C5960, &qword_23BDC8F50);
    v103(v39, v31);
    return v44;
  }

  v131 = v45;
  v142 = a1;
  v51 = sub_23BDC61F0();
  v53 = *(v47 + 8);
  v52 = v47 + 8;
  v109 = v53;
  v53(v28, v46);
  if (*(v51 + 16) != 5)
  {

    goto LABEL_38;
  }

  v115 = v51;
  v108[1] = v52;
  v110 = v46;
  v149 = v50;
  v54 = v142 + *(v131 + 24);
  v126 = sub_23BDC6590();
  v55 = *(v126 + 24);
  v57 = v141 + 16;
  v56 = *(v141 + 16);
  v127 = v54;
  v125 = v56;
  result = (v56)(v140, &v54[v55], v146);
  v59 = 0;
  v142 = (v119 + 16);
  v130 = (v143 + 48);
  v131 = v143 + 56;
  v124 = (v119 + 32);
  v123 = (v119 + 56);
  v122 = (v57 + 40);
  v121 = (v57 + 32);
  v141 = v57;
  v114 = (v57 - 8);
  ++v132;
  v120 = (v119 + 8);
  v60 = v133;
  v61 = v134;
  v63 = v138;
  v62 = v139;
  v129 = v30;
  v128 = v39;
LABEL_7:
  if ((v59 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v59 >= *(v115 + 16))
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v64 = v59 + 1;
  v65 = v119;
  v66 = v115 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v59;
  v67 = *(v60 + 48);
  v68 = v118;
  *v118 = v59;
  (*(v65 + 16))(v68 + v67, v66, v62);
  sub_23BDA1D38(v68, v63, &qword_27E1C59F8, &qword_23BDC8F40);
  v69 = 0;
  for (i = v64; ; i = 5)
  {
    (*v131)(v63, v69, 1, v60);
    v70 = v137;
    sub_23BDA1D38(v63, v137, &qword_27E1C5A00, &qword_23BDC8F48);
    if ((*v130)(v70, 1, v60) == 1)
    {
      break;
    }

    v71 = *v70;
    (*v124)(v147, &v70[*(v60 + 48)], v62);
    sub_23BDC6170();
    if (!v71)
    {
      v78 = v116;
      sub_23BD96394(v30, v116, &qword_27E1C5960, &qword_23BDC8F50);
      v79 = v110;
      if (v112(v78, 1, v110) == 1)
      {
        v80 = v78;
        v81 = &qword_27E1C5960;
        v82 = &qword_23BDC8F50;
        goto LABEL_19;
      }

      v83 = v111;
      sub_23BDC6210();
      v84 = v83;
      v109(v78, v79);
      v85 = sub_23BDC6280();
      v86 = *(v85 - 8);
      if ((*(v86 + 48))(v84, 1, v85) == 1)
      {
        v80 = v84;
        v81 = &qword_27E1C5660;
        v82 = &qword_23BDC89F0;
LABEL_19:
        sub_23BD962D4(v80, v81, v82);
        v87 = sub_23BDC6280();
        v88 = v117;
        (*(*(v87 - 8) + 56))(v117, 1, 1, v87);
      }

      else
      {
        v88 = v117;
        sub_23BDC65D0();
        (*(v86 + 8))(v84, v85);
      }

      sub_23BDA1D38(v88, v61, &qword_27E1C5660, &qword_23BDC89F0);
      v143 = 0;
      v76 = 0;
      goto LABEL_22;
    }

    if (qword_27E1C55B8 != -1)
    {
      swift_once();
    }

    v72 = *(off_27E1C59E8 + 2);
    v73 = sub_23BDC5FA0();
    v74 = [v72 stringFromDate_];

    v143 = sub_23BDC66F0();
    v76 = v75;

    v77 = sub_23BDC6280();
    (*(*(v77 - 8) + 56))(v61, 1, 1, v77);
LABEL_22:
    v89 = v31;
    sub_23BDC6820();
    if (qword_27E1C5630 != -1)
    {
      swift_once();
    }

    v90 = off_27E1C5E60;
    v91 = v135;
    (*v142)(v135, v147, v62);
    (*v123)(v91, 0, 1, v62);
    (*(*v90 + 144))(v91);
    sub_23BD962D4(v91, &qword_27E1C5A20, &qword_23BDC8F68);
    sub_23BDC6120();
    v93 = v92;
    v94 = sub_23BDC6130();
    v95 = v136;
    v96 = v146;
    v125(v136, v140, v146);
    (*v122)(v95, 0, 1, v96);
    v97 = sub_23BDC66C0();

    if (v93)
    {
      v98 = sub_23BDC66C0();
    }

    else
    {
      v98 = 0;
    }

    v31 = v89;
    v39 = v128;
    v30 = v129;
    if (v76)
    {
      v99 = sub_23BDC66C0();
    }

    else
    {
      v99 = 0;
    }

    v100 = v146;
    if ((*v121)(v95, 1, v146) == 1)
    {
      v101 = 0;
    }

    else
    {
      v101 = sub_23BDC60A0();
      (*v114)(v95, v100);
    }

    [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v97 middleString:v98 bottomString:v99 isDay:v94 & 1 timeZone:v101];

    MEMORY[0x23EEBD070]();
    if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23BDC6790();
    }

    sub_23BDC67A0();
    v61 = v134;
    sub_23BD962D4(v134, &qword_27E1C5660, &qword_23BDC89F0);
    (*v132)(v145, v31);
    v62 = v139;
    result = (*v120)(v147, v139);
    v60 = v133;
    v63 = v138;
    v59 = i;
    if (i != 5)
    {
      goto LABEL_7;
    }

    v69 = 1;
  }

  v106 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
  sub_23BDA182C();
  v107 = sub_23BDC6770();

  v44 = [v106 initWithEntries_];

  (*v114)(v140, v146);
  sub_23BD962D4(v30, &qword_27E1C5960, &qword_23BDC8F50);
  (*v132)(v39, v31);
  return v44;
}

void sub_23BDA0298()
{
  v1 = [*v0 hourlyEntryModels];
  sub_23BDA182C();
  v2 = sub_23BDC6780();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:

    sub_23BD9628C(&qword_27E1C5A08, &qword_23BDC8F58);
    sub_23BDA1DA0();
    v26 = sub_23BDC66A0();
    v28 = v27;

    MEMORY[0x23EEBD040](v26, v28);

    MEMORY[0x23EEBD040](93, 0xE100000000000000);
    return;
  }

  v3 = sub_23BDC6930();
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EEBD1D0](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 topString];
      if (v8)
      {
        v9 = v8;
        v10 = sub_23BDC66F0();
        v12 = v11;
      }

      else
      {
        v12 = 0xE300000000000000;
        v10 = 7104878;
      }

      MEMORY[0x23EEBD040](v10, v12);

      MEMORY[0x23EEBD040](8236, 0xE200000000000000);
      v13 = [v7 middleString];
      if (v13)
      {
        v14 = v13;
        v15 = sub_23BDC66F0();
        v17 = v16;
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      MEMORY[0x23EEBD040](v15, v17);

      MEMORY[0x23EEBD040](8236, 0xE200000000000000);
      v18 = [v7 bottomString];
      if (v18)
      {
        v19 = v18;
        v20 = sub_23BDC66F0();
        v22 = v21;
      }

      else
      {
        v22 = 0xE300000000000000;
        v20 = 7104878;
      }

      MEMORY[0x23EEBD040](v20, v22);

      MEMORY[0x23EEBD040](41, 0xE100000000000000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_23BDA1B20(0, *(v5 + 2) + 1, 1, v5);
      }

      v24 = *(v5 + 2);
      v23 = *(v5 + 3);
      if (v24 >= v23 >> 1)
      {
        v5 = sub_23BDA1B20((v23 > 1), v24 + 1, 1, v5);
      }

      ++v4;

      *(v5 + 2) = v24 + 1;
      v25 = &v5[16 * v24];
      *(v25 + 4) = v29;
      *(v25 + 5) = 0xE100000000000000;
    }

    while (v3 != v4);
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_23BDA05D8@<X0>(void (**a1)(char *, char *, uint64_t)@<X0>, char *a2@<X8>)
{
  v23 = type metadata accessor for TemplateData(0);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChanceRainTemplateModel(0);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v22 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = sub_23BDC6010();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  sub_23BDAC47C(a1, v11);
  v16 = v11[*(v7 + 32) + 8];
  v17 = sub_23BD9F19C(a1, v16);
  if ((sub_23BDAFFA8() & 1) != 0 && (v16 & 1) == 0)
  {
    sub_23BDA8A4C(v5);
    v18 = v22;
    sub_23BDAC47C(v5, v22);
    sub_23BDA1E90(v5, type metadata accessor for TemplateData);
    sub_23BDA1E90(v11, type metadata accessor for ChanceRainTemplateModel);
    sub_23BDA1E28(v18, v11, type metadata accessor for ChanceRainTemplateModel);
  }

  v19 = *(v23 + 24);
  v20 = type metadata accessor for ChanceRainRectangularTemplateModel(0);
  sub_23BD9CC98(a1 + v19, &a2[v20[7]]);
  *a2 = v17;
  sub_23BDA1E28(v11, &a2[v20[5]], type metadata accessor for ChanceRainTemplateModel);
  return (*(v13 + 32))(&a2[v20[6]], v15, v12);
}

uint64_t sub_23BDA088C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  v55 = type metadata accessor for TemplateData(0);
  MEMORY[0x28223BE20](v55);
  v49 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v9 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  v14 = type metadata accessor for ConditionTemplateModel(0);
  v15 = MEMORY[0x28223BE20](v14);
  v48 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  v19 = sub_23BDC6010();
  MEMORY[0x28223BE20](v19);
  v52 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v21;
  v22 = *(v21 + 16);
  v54 = v23;
  v22();
  v57 = a1;
  sub_23BDAD3F4(a1, v18);
  v24 = *(v14 + 24);
  sub_23BD96394(&v18[v24], v13, &qword_27E1C59F0, &unk_23BDC8F30);
  v25 = sub_23BDC62F0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  if (v27(v13, 1, v25) == 1)
  {
    sub_23BD962D4(v13, &qword_27E1C59F0, &unk_23BDC8F30);
  }

  else
  {
    sub_23BDC62B0();
    v29 = v28;
    (*(v26 + 8))(v13, v25);
    if (v29)
    {

      sub_23BD96394(&v18[*(v14 + 36)], v8, &qword_27E1C5790, &unk_23BDC92E0);
      v30 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
      v31 = (*(*(v30 - 8) + 48))(v8, 1, v30) == 1;
      sub_23BD962D4(v8, &qword_27E1C5790, &unk_23BDC92E0);
      v32 = v31;
      goto LABEL_6;
    }
  }

  v32 = 1;
LABEL_6:
  v33 = sub_23BD9E1D4(v57, v32);
  if (sub_23BDAFFA8())
  {
    v34 = v51;
    sub_23BD96394(&v18[v24], v51, &qword_27E1C59F0, &unk_23BDC8F30);
    if (v27(v34, 1, v25) == 1)
    {
      sub_23BD962D4(v34, &qword_27E1C59F0, &unk_23BDC8F30);
    }

    else
    {
      sub_23BDC62B0();
      v36 = v35;
      (*(v26 + 8))(v34, v25);
      if (v36)
      {

        v37 = v50;
        sub_23BD96394(&v18[*(v14 + 36)], v50, &qword_27E1C5790, &unk_23BDC92E0);
        v38 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
        v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
        sub_23BD962D4(v37, &qword_27E1C5790, &unk_23BDC92E0);
        if (v39 != 1)
        {
          v40 = v49;
          sub_23BDA8A4C(v49);
          v41 = v48;
          sub_23BDAD3F4(v40, v48);
          sub_23BDA1E90(v40, type metadata accessor for TemplateData);
          sub_23BDA1E90(v18, type metadata accessor for ConditionTemplateModel);
          sub_23BDA1E28(v41, v18, type metadata accessor for ConditionTemplateModel);
        }
      }
    }
  }

  v42 = *(v55 + 24);
  v43 = type metadata accessor for ConditionRectangularTemplateModel(0);
  v44 = &v57[v42];
  v45 = v56;
  sub_23BD9CC98(v44, v56 + v43[7]);
  *v45 = v33;
  sub_23BDA1E28(v18, v45 + v43[5], type metadata accessor for ConditionTemplateModel);
  return (*(v53 + 32))(v45 + v43[6], v52, v54);
}

uint64_t sub_23BDA0EB8@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v23 = type metadata accessor for TemplateData(0);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UVTemplateModel(0);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v22 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = sub_23BDC6010();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  sub_23BD9C318(a1, v11);
  v16 = v11[*(v7 + 28) + 8];
  v17 = sub_23BDA2920(a1, v16);
  if ((sub_23BDAFFA8() & 1) != 0 && (v16 & 1) == 0)
  {
    sub_23BDA8A4C(v5);
    v18 = v22;
    sub_23BD9C318(v5, v22);
    sub_23BDA1E90(v5, type metadata accessor for TemplateData);
    sub_23BDA1E90(v11, type metadata accessor for UVTemplateModel);
    sub_23BDA1E28(v18, v11, type metadata accessor for UVTemplateModel);
  }

  v19 = *(v23 + 24);
  v20 = type metadata accessor for UVRectangularTemplateModel(0);
  sub_23BD9CC98(&a1[v19], &a2[v20[7]]);
  *a2 = v17;
  sub_23BDA1E28(v11, &a2[v20[5]], type metadata accessor for UVTemplateModel);
  return (*(v13 + 32))(&a2[v20[6]], v15, v12);
}

uint64_t sub_23BDA116C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v43 = type metadata accessor for TemplateData(0);
  MEMORY[0x28223BE20](v43);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v9 = type metadata accessor for WindTemplateModel(0);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v15 = sub_23BDC6010();
  MEMORY[0x28223BE20](v15);
  v40 = v17;
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 16);
  v42 = v19;
  v18();
  sub_23BDA677C(a1, v14);
  v20 = *(v10 + 36);
  sub_23BD96394(&v14[v20], v8, &unk_27E1C5D50, &unk_23BDC8F70);
  v21 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v22 = *(*(v21 - 8) + 48);
  LODWORD(v10) = v22(v8, 1, v21) == 1;
  v23 = v8;
  v24 = a1;
  sub_23BD962D4(v23, &unk_27E1C5D50, &unk_23BDC8F70);
  v25 = sub_23BD9D210(a1, v10);
  if (sub_23BDAFFA8())
  {
    v26 = &v14[v20];
    v27 = v39;
    sub_23BD96394(v26, v39, &unk_27E1C5D50, &unk_23BDC8F70);
    v28 = v22(v27, 1, v21);
    sub_23BD962D4(v27, &unk_27E1C5D50, &unk_23BDC8F70);
    if (v28 != 1)
    {
      v29 = v38;
      sub_23BDA8A4C(v38);
      v30 = v37;
      sub_23BDA677C(v29, v37);
      sub_23BDA1E90(v29, type metadata accessor for TemplateData);
      sub_23BDA1E90(v14, type metadata accessor for WindTemplateModel);
      sub_23BDA1E28(v30, v14, type metadata accessor for WindTemplateModel);
    }
  }

  v31 = *(v43 + 24);
  v32 = type metadata accessor for WindRectangularTemplateModel(0);
  v33 = &v24[v31];
  v34 = v44;
  sub_23BD9CC98(v33, v44 + v32[7]);
  *v34 = v25;
  sub_23BDA1E28(v14, v34 + v32[5], type metadata accessor for WindTemplateModel);
  return (*(v40 + 32))(v34 + v32[6], v41, v42);
}

uint64_t sub_23BDA1574()
{
  v0 = sub_23BDA15BC();
  type metadata accessor for DateFormatterCache();
  result = swift_allocObject();
  *(result + 16) = v0;
  *(result + 24) = 10;
  off_27E1C59E8 = result;
  return result;
}

id sub_23BDA15BC()
{
  v0 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_23BDC6080();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_23BDC6050();
  v8 = sub_23BDC6060();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  v9 = sub_23BDC66C0();
  [v7 setDateFormat_];

  sub_23BDC6090();
  v10 = sub_23BDC60C0();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v2, 1, v10) != 1)
  {
    v12 = sub_23BDC60A0();
    (*(v11 + 8))(v2, v10);
  }

  [v7 setTimeZone_];

  return v7;
}

unint64_t sub_23BDA182C()
{
  result = qword_27E1C5688;
  if (!qword_27E1C5688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C5688);
  }

  return result;
}

uint64_t sub_23BDA1878(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v6 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  if (qword_27E1C55B8 != -1)
  {
    swift_once();
  }

  v9 = *(off_27E1C59E8 + 2);
  v10 = sub_23BDC5FA0();
  v11 = [v9 stringFromDate_];

  sub_23BDC66F0();
  v13 = v12;

  if (*a3 == 1)
  {

    v13 = 0;
    *a3 = 0;
  }

  sub_23BDC60B0();
  v14 = sub_23BDC60C0();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v8, 0, 1, v14);
  if (v13)
  {
    v16 = sub_23BDC66C0();
  }

  else
  {
    v16 = 0;
  }

  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_23BDC60A0();
    (*(v15 + 8))(v8, v14);
  }

  [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:0 middleString:0 bottomString:v16 isDay:1 timeZone:v17];

  MEMORY[0x23EEBD070]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23BDC6790();
  }

  return sub_23BDC67A0();
}

char *sub_23BDA1B20(char *result, int64_t a2, char a3, char *a4)
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
    sub_23BD9628C(&qword_27E1C5A18, &qword_23BDC8F60);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23BDA1C2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_23BD9628C(&qword_27E1C5A28, &unk_23BDC8F80);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23BDA1D38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23BD9628C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_23BDA1DA0()
{
  result = qword_27E1C5A10;
  if (!qword_27E1C5A10)
  {
    sub_23BD9B8CC(&qword_27E1C5A08, &qword_23BDC8F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5A10);
  }

  return result;
}

uint64_t sub_23BDA1E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BDA1E90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23BDA1EF8@<X0>(void *a1@<X8>)
{
  v55 = a1;
  v1 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v51 - v2;
  v4 = sub_23BDC6010();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  v11 = type metadata accessor for UVTemplateModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BD9D208();
  v14 = sub_23BDC64F0();
  v16 = v15;
  sub_23BD9D20C();
  v54 = objc_opt_self();
  v17 = [v54 orangeColor];
  v18 = &v13[v11[5]];
  *v18 = 6;
  v18[8] = 0;
  v19 = &v13[v11[6]];
  *v19 = v14;
  v19[1] = v16;
  *&v13[v11[8]] = v17;
  *&v13[v11[9]] = 11;
  v20 = v11[10];
  *&v13[v20] = sub_23BD9C258();
  v21 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  sub_23BD9D208();
  sub_23BDC5F80();
  v59 = &v62;
  sub_23BDC5FC0();
  v22 = *(v5 + 8);
  v22(v8, v4);
  result = (v22)(v10, v4);
  v61 = v21;
  v56 = v62;
  if (*(v62 + 16) < 7uLL)
  {
    __break(1u);
  }

  else
  {
    v52 = v11;
    v53 = v13;
    v24 = 0;
    v25 = 1;
    v26 = &qword_284E8CE68;
    v58 = v3;
    do
    {
      if (v25)
      {
        v60 = 6;
        sub_23BD9CD8C();
        sub_23BDC6870();
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v57 = *(v56 + v24 + 32);
      v60 = *v26;
      sub_23BD9CD8C();

      sub_23BDC6870();
      v29 = v58;
      sub_23BDC60B0();
      v30 = sub_23BDC60C0();
      v31 = *(v30 - 8);
      (*(v31 + 56))(v29, 0, 1, v30);
      if (v28)
      {
        v32 = sub_23BDC66C0();
      }

      else
      {
        v32 = 0;
      }

      v33 = sub_23BDC66C0();

      v34 = sub_23BDC66C0();

      v35 = v58;
      if ((*(v31 + 48))(v58, 1, v30) == 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = sub_23BDC60A0();
        (*(v31 + 8))(v35, v30);
      }

      [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v32 middleString:v33 bottomString:v34 isDay:1 timeZone:v36];

      MEMORY[0x23EEBD070]();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23BDC6790();
      }

      sub_23BDC67A0();
      v25 = 0;
      v24 += 16;
      ++v26;
    }

    while (v24 != 112);
    v37 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BD96820(0, &qword_27E1C5688, 0x277D2C7C0);
    v38 = sub_23BDC6770();

    v39 = [v37 initWithEntries_];

    v40 = type metadata accessor for UVRectangularTemplateModel(0);
    v41 = v55;
    v42 = v55 + *(v40 + 20);
    sub_23BD9D208();
    v43 = sub_23BDC64F0();
    v45 = v44;
    v46 = v52;
    sub_23BD9D20C();
    v47 = [v54 orangeColor];
    v48 = &v42[v46[5]];
    *v48 = 6;
    v48[8] = 0;
    v49 = &v42[v46[6]];
    *v49 = v43;
    v49[1] = v45;
    *&v42[v46[8]] = v47;
    *&v42[v46[9]] = 11;
    v50 = v46[10];
    *&v42[v50] = sub_23BD9C258();
    sub_23BD9D208();
    sub_23BD9D20C();
    sub_23BD97D0C(v53);

    *v41 = v39;
  }

  return result;
}

char *sub_23BDA24F8(uint64_t a1, char **a2)
{
  if (qword_27E1C55B8 != -1)
  {
    swift_once();
  }

  v3 = *(off_27E1C59E8 + 2);
  v4 = sub_23BDC5FA0();
  v5 = [v3 stringFromDate_];

  v6 = sub_23BDC66F0();
  v8 = v7;

  v9 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v9;
  if ((result & 1) == 0)
  {
    result = sub_23BDA1B20(0, *(v9 + 2) + 1, 1, v9);
    v9 = result;
    *a2 = result;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    result = sub_23BDA1B20((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
    *a2 = result;
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[16 * v12];
  *(v13 + 4) = v6;
  *(v13 + 5) = v8;
  return result;
}

uint64_t sub_23BDA2624(uint64_t a1)
{
  result = sub_23BDA3E28(&qword_27E1C5A30, type metadata accessor for UVRectangularTemplateModel, &unk_23BDC8FAC);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for UVRectangularTemplateModel(uint64_t a1)
{
  result = qword_27E1C5A48;
  if (!qword_27E1C5A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDA26C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  if (qword_27E1C55B8 != -1)
  {
    swift_once();
  }

  v7 = *(off_27E1C59E8 + 2);
  v8 = sub_23BDC5FA0();
  v9 = [v7 stringFromDate_];

  sub_23BDC66F0();
  sub_23BDC60B0();
  v10 = sub_23BDC60C0();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v6, 0, 1, v10);
  v12 = sub_23BDC66C0();

  v13 = 0;
  if ((*(v11 + 48))(v6, 1, v10) != 1)
  {
    v13 = sub_23BDC60A0();
    (*(v11 + 8))(v6, v10);
  }

  [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:0 middleString:0 bottomString:v12 isDay:1 timeZone:v13];

  MEMORY[0x23EEBD070]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23BDC6790();
  }

  return sub_23BDC67A0();
}

id sub_23BDA2920(char *a1, char a2)
{
  v4 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  MEMORY[0x28223BE20](v4 - 8);
  v120 = v99 - v5;
  v126 = sub_23BDC6520();
  i = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_23BDC6110();
  v118 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_23BD9628C(&qword_27E1C5A38, &qword_23BDC8FE8);
  v110 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v9 = v99 - v8;
  v10 = sub_23BD9628C(&qword_27E1C5A40, &unk_23BDC8FF0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v130 = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v121 = v99 - v13;
  v14 = sub_23BDC60C0();
  v15 = *(v14 - 8);
  v128 = v14;
  v129 = v15;
  MEMORY[0x28223BE20](v14);
  v127 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23BD9628C(&qword_27E1C5A20, &qword_23BDC8F68);
  MEMORY[0x28223BE20](v17 - 8);
  v113 = v99 - v18;
  v19 = sub_23BDC61B0();
  v114 = *(v19 - 8);
  v115 = v19;
  MEMORY[0x28223BE20](v19);
  v117 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v99 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v99 - v28;
  v30 = sub_23BDC6010();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = v99 - v35;
  (*(v31 + 16))(v99 - v35, a1, v30);
  if (a2)
  {
    v37 = type metadata accessor for UVRectangularTemplateModel(0);
    v132 = MEMORY[0x277D84F90];
    v38 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v38);
    v99[-2] = v37;
    v99[-1] = &v132;
    sub_23BDC5FC0();
    v39 = *(v31 + 8);
    v39(v34, v30);
    v40 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BD96820(0, &qword_27E1C5688, 0x277D2C7C0);
    v41 = sub_23BDC6770();

    v42 = [v40 initWithEntries_];

    v39(v36, v30);
    return v42;
  }

  v108 = v9;
  v116 = v36;
  v119 = v30;
  v109 = type metadata accessor for TemplateData(0);
  sub_23BDA38EC(&a1[*(v109 + 20)], v29);
  v112 = v29;
  sub_23BDA38EC(v29, v27);
  v43 = sub_23BDC6240();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  if (v45(v27, 1, v43) == 1)
  {
    sub_23BD962D4(v27, &qword_27E1C5960, &qword_23BDC8F50);
LABEL_9:
    v49 = v119;
    v50 = v116;
LABEL_10:
    v51 = type metadata accessor for UVRectangularTemplateModel(0);
    v132 = MEMORY[0x277D84F90];
    v52 = sub_23BDC5F80();
    MEMORY[0x28223BE20](v52);
    v99[-2] = v51;
    v99[-1] = &v132;
    sub_23BDC5FC0();
    v53 = *(v31 + 8);
    v53(v34, v49);
    v54 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
    sub_23BD96820(0, &qword_27E1C5688, 0x277D2C7C0);
    v55 = sub_23BDC6770();

    v42 = [v54 initWithEntries_];

    sub_23BD962D4(v112, &qword_27E1C5960, &qword_23BDC8F50);
    v53(v50, v49);
    return v42;
  }

  v107 = a1;
  v46 = sub_23BDC61D0();
  v47 = *(v44 + 8);
  v47(v27, v43);
  if (*(v46 + 16) != 7)
  {

    goto LABEL_9;
  }

  v101 = v46;
  sub_23BDA38EC(v112, v24);
  if (v45(v24, 1, v43) == 1)
  {

    sub_23BD962D4(v24, &qword_27E1C5960, &qword_23BDC8F50);
    v48 = v113;
    (*(v114 + 56))(v113, 1, 1, v115);
    v49 = v119;
    v50 = v116;
LABEL_14:
    sub_23BD962D4(v48, &qword_27E1C5A20, &qword_23BDC8F68);
    goto LABEL_10;
  }

  v48 = v113;
  v50 = v116;
  sub_23BDC61E0();
  v47(v24, v43);
  v58 = v114;
  v57 = v115;
  if ((*(v114 + 48))(v48, 1, v115) == 1)
  {

    v49 = v119;
    goto LABEL_14;
  }

  (*(v58 + 32))(v117, v48, v57);
  v132 = MEMORY[0x277D84F90];
  v59 = &v107[*(v109 + 24)];
  v60 = sub_23BDC6590();
  v61 = v129 + 16;
  v62 = &v59[*(v60 + 24)];
  v107 = *(v129 + 16);
  result = (v107)(v127, v62, v128);
  v63 = 0;
  v99[1] = v118 + 16;
  v64 = *(v101 + 16);
  v109 = (v110 + 7);
  v110 += 6;
  v106 = (v118 + 32);
  v102 = (i + 8);
  v113 = (v31 + 8);
  v105 = (v61 + 40);
  v104 = (v61 + 32);
  v129 = v61;
  v100 = (v61 - 8);
  v103 = (v118 + 8);
  v65 = v126;
  v67 = v123;
  v66 = v124;
  v68 = v122;
  v69 = v130;
  for (i = v64; ; v64 = i)
  {
    v70 = v125;
    if (v63 == v64)
    {
      v71 = 1;
      v63 = v64;
      goto LABEL_20;
    }

    if (v63 >= *(v101 + 16))
    {
      break;
    }

    v72 = v118;
    v73 = v101 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v63;
    v74 = *(v68 + 48);
    v75 = v108;
    *v108 = v63;
    (*(v72 + 16))(&v75[v74], v73, v66);
    v76 = v75;
    v69 = v130;
    sub_23BDA1D38(v76, v130, &qword_27E1C5A38, &qword_23BDC8FE8);
    v71 = 0;
    ++v63;
LABEL_20:
    (*v109)(v69, v71, 1, v68);
    v77 = v69;
    v78 = v121;
    sub_23BDA1D38(v77, v121, &qword_27E1C5A40, &unk_23BDC8FF0);
    if ((*v110)(v78, 1, v68) == 1)
    {

      v97 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
      sub_23BD96820(0, &qword_27E1C5688, 0x277D2C7C0);
      v98 = sub_23BDC6770();

      v42 = [v97 initWithEntries_];

      (*v100)(v127, v128);
      (*(v114 + 8))(v117, v115);
      sub_23BD962D4(v112, &qword_27E1C5960, &qword_23BDC8F50);
      (*v113)(v116, v119);
      return v42;
    }

    v79 = *v78;
    (*v106)(v67, &v78[*(v68 + 48)], v66);
    if (v79)
    {
      v80 = 0;
      v81 = v102;
    }

    else
    {
      sub_23BDC6190();
      v82 = sub_23BDC6500();
      v81 = v102;
      (*v102)(v70, v65);
      v131 = v82;
      sub_23BD9CD8C();
      sub_23BDC6870();
      v80 = v83;
    }

    sub_23BDC6100();
    v84 = sub_23BDC6500();
    (*v81)(v70, v65);
    v131 = v84;
    sub_23BD9CD8C();
    sub_23BDC6870();
    if (qword_27E1C55B8 != -1)
    {
      swift_once();
    }

    v85 = off_27E1C59E8;
    sub_23BDC60F0();
    v86 = v85[2];
    v87 = sub_23BDC5FA0();
    v88 = [v86 stringFromDate_];

    sub_23BDC66F0();
    (*v113)(v34, v119);
    v89 = v120;
    v90 = v128;
    (v107)(v120, v127, v128);
    (*v105)(v89, 0, 1, v90);
    if (v80)
    {
      v91 = sub_23BDC66C0();
    }

    else
    {
      v91 = 0;
    }

    v92 = sub_23BDC66C0();

    v93 = sub_23BDC66C0();

    v94 = (*v104)(v89, 1, v90);
    v95 = v90;
    v67 = v123;
    if (v94 == 1)
    {
      v96 = 0;
    }

    else
    {
      v96 = sub_23BDC60A0();
      (*v100)(v89, v95);
    }

    v65 = v126;
    v69 = v130;
    [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v91 middleString:v92 bottomString:v93 isDay:1 timeZone:v96];

    MEMORY[0x23EEBD070]();
    if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23BDC6790();
    }

    sub_23BDC67A0();
    v66 = v124;
    result = (*v103)(v67, v124);
    v68 = v122;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BDA38EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDA3980(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UVTemplateModel(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_23BDA3B00(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UVTemplateModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23BDA3C6C(uint64_t a1)
{
  result = sub_23BD96820(319, &qword_27E1C56B8, 0x277D2C7B8);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UVTemplateModel(319);
    if (v3 <= 0x3F)
    {
      result = sub_23BDC6010();
      if (v4 <= 0x3F)
      {
        result = sub_23BDC6590();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23BDA3D78(uint64_t a1)
{
  result = sub_23BDA3E28(&unk_27E1C5D00, type metadata accessor for UVRectangularTemplateModel, &unk_23BDC8F90);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BDA3DD0(uint64_t a1)
{
  result = sub_23BDA3E28(&qword_27E1C5A58, type metadata accessor for UVRectangularTemplateModel, &unk_23BDC901C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BDA3E28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BDA3E74()
{
  type metadata accessor for WeatherTemplateFormatter();
  v0 = swift_allocObject();
  *(v0 + 16) = *sub_23BDC65E0();
  v2 = sub_23BDA60AC(&qword_27E1C5A70, v1, type metadata accessor for WeatherTemplateFormatter, &unk_23BDC908C);
  *&xmmword_27E1C7770 = v0;
  *(&xmmword_27E1C7770 + 1) = v2;
}

id sub_23BDA3F04(uint64_t a1)
{
  v3 = type metadata accessor for WeatherTemplateModel(0);
  (*(**(v1 + 16) + 152))(a1 + *(v3 + 24), 1, 2);
  v4 = sub_23BDC66C0();

  v5 = [objc_opt_self() textProviderWithText_];

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemCyanColor];
  [v7 setTintColor_];

  v9 = [objc_allocWithZone(MEMORY[0x277CBBA60]) initWithTextProvider_];
  v10 = v9;
  v11 = [v6 systemCyanColor];
  [v10 setTintColor_];

  return v10;
}

id sub_23BDA4064(uint64_t a1)
{
  v2 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  MEMORY[0x28223BE20](v2 - 8);
  v97 = &v88 - v3;
  v4 = sub_23BDC62F0();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  v92 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v88 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v95 = &v88 - v11;
  MEMORY[0x28223BE20](v10);
  v98 = &v88 - v12;
  v13 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v89 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v94 = &v88 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v90 = &v88 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v101 = &v88 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v96 = &v88 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v88 - v24;
  v26 = sub_23BDC6590();
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for WeatherTemplateModel(0);
  MEMORY[0x28223BE20](v29);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a1;
  sub_23BDA60F4(a1, v31, type metadata accessor for WeatherTemplateModel);
  sub_23BDA60F4(&v31[v29[5]], v28, MEMORY[0x277D2C7F0]);
  sub_23BD96394(&v31[v29[6]], v25, &qword_27E1C5790, &unk_23BDC92E0);
  v102 = v7;
  v34 = *(v7 + 48);
  v32 = v7 + 48;
  v33 = v34;
  LODWORD(a1) = v34(v25, 1, v6);
  sub_23BD962D4(v25, &qword_27E1C5790, &unk_23BDC92E0);
  if (a1 != 1)
  {
    v35 = v96;
    sub_23BD96394(&v31[v29[8]], v96, &qword_27E1C5790, &unk_23BDC92E0);
    v33(v35, 1, v6);
    sub_23BD962D4(v35, &qword_27E1C5790, &unk_23BDC92E0);
  }

  v36 = sub_23BDBA204();
  sub_23BDA615C(v28, MEMORY[0x277D2C7F0]);
  v37 = [objc_opt_self() systemCyanColor];
  [v36 setTintColor_];

  sub_23BDA615C(v31, type metadata accessor for WeatherTemplateModel);
  v38 = v103;
  v39 = v101;
  sub_23BD96394(v103 + v29[6], v101, &qword_27E1C5790, &unk_23BDC92E0);
  v96 = v32;
  v93 = v33;
  if (v33(v39, 1, v6) == 1)
  {
    v40 = v6;
    sub_23BD962D4(v39, &qword_27E1C5790, &unk_23BDC92E0);
    v41 = v102;
    v42 = v29;
  }

  else
  {
    v41 = v102;
    v43 = v98;
    (*(v102 + 32))(v98, v39, v6);
    v44 = v97;
    sub_23BD96394(v38 + v29[7], v97, &qword_27E1C59F0, &unk_23BDC8F30);
    v45 = v99;
    v42 = v29;
    if ((*(v99 + 48))(v44, 1, v100) == 1)
    {
      v40 = v6;
      (*(v41 + 8))(v43, v6);
      sub_23BD962D4(v44, &qword_27E1C59F0, &unk_23BDC8F30);
    }

    else
    {
      v101 = v36;
      v46 = v92;
      (*(v45 + 32))();
      v47 = v90;
      (*(v41 + 16))(v90, v43, v6);
      (*(v41 + 56))(v47, 0, 1, v6);
      v48 = (*(**(v91 + 16) + 152))(v47, 1, 2);
      v97 = v6;
      v49 = v48;
      v51 = v50;
      sub_23BD962D4(v47, &qword_27E1C5790, &unk_23BDC92E0);
      if (qword_27E1C55D0 != -1)
      {
        swift_once();
      }

      v52 = qword_27E1C5B70;
      v53 = sub_23BDC66C0();
      v54 = sub_23BDC66C0();
      v55 = [v52 localizedStringForKey:v53 value:0 table:v54];

      sub_23BDC66F0();
      sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_23BDC8C50;
      v57 = MEMORY[0x277D837D0];
      *(v56 + 56) = MEMORY[0x277D837D0];
      v58 = sub_23BD97C54();
      *(v56 + 64) = v58;
      *(v56 + 32) = v49;
      *(v56 + 40) = v51;

      v59 = sub_23BDC62D0();
      *(v56 + 96) = v57;
      *(v56 + 104) = v58;
      *(v56 + 72) = v59;
      *(v56 + 80) = v60;
      sub_23BDC6700();

      (*(v99 + 8))(v46, v100);
      v41 = v102;
      v40 = v97;
      (*(v102 + 8))(v98, v97);
      v36 = v101;
    }
  }

  v61 = sub_23BDC66C0();

  v62 = sub_23BDC66C0();

  v63 = objc_opt_self();
  v64 = [v63 textProviderWithText:v61 shortText:v62];

  v65 = v103;
  if (!*(v103 + v42[10] + 8))
  {
    v101 = v64;
    v69 = v94;
    sub_23BD96394(v103 + v42[8], v94, &qword_27E1C5790, &unk_23BDC92E0);
    v70 = v40;
    v71 = v93;
    if (v93(v69, 1, v40) == 1)
    {
      v72 = v69;
    }

    else
    {
      v73 = v71;
      v74 = *(v41 + 32);
      v74(v95, v69, v70);
      v75 = v65 + v42[9];
      v72 = v89;
      sub_23BD96394(v75, v89, &qword_27E1C5790, &unk_23BDC92E0);
      if (v73(v72, 1, v70) != 1)
      {
        v78 = v88;
        v74(v88, v72, v70);
        v79 = v95;
        sub_23BDA58B0(v95, v78, 0xD000000000000029, 0x800000023BDC7A80);
        v80 = sub_23BDC66C0();

        v81 = [v63 textProviderWithText_];

        v68 = v81;
        sub_23BDA58B0(v79, v78, 0xD000000000000019, 0x800000023BDC7670);
        v82 = sub_23BDC66C0();

        [v68 setAccessibilityLabel_];

        [v68 setItalicized_];
        v83 = *(v41 + 8);
        v83(v78, v70);
        v83(v79, v70);
        goto LABEL_18;
      }

      (*(v41 + 8))(v95, v70);
    }

    sub_23BD962D4(v72, &qword_27E1C5790, &unk_23BDC92E0);
    v76 = sub_23BDC66C0();
    v77 = [v63 textProviderWithText_];

    v68 = v77;
LABEL_18:
    v64 = v101;
    goto LABEL_19;
  }

  v66 = sub_23BDC66C0();
  v67 = [v63 textProviderWithText_];

  v68 = v67;
LABEL_19:
  v84 = objc_allocWithZone(MEMORY[0x277CBBA08]);
  v85 = v64;
  v86 = [v84 initWithHeaderTextProvider:v36 body1TextProvider:v85 body2TextProvider:v68];

  return v86;
}

id sub_23BDA4C78(uint64_t a1)
{
  v3 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = type metadata accessor for WeatherTemplateModel(0);
  (*(**(v1 + 16) + 152))(a1 + *(v9 + 24), 1, 2);
  v10 = sub_23BDC66C0();

  v26 = [objc_opt_self() textProviderWithText_];

  v11 = *(v9 + 28);
  sub_23BD96394(a1 + v11, v8, &qword_27E1C59F0, &unk_23BDC8F30);
  v12 = sub_23BDC62F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v8, 1, v12) == 1)
  {
    sub_23BD962D4(v8, &qword_27E1C59F0, &unk_23BDC8F30);
  }

  else
  {
    sub_23BDC62B0();
    v16 = v15;
    (*(v13 + 8))(v8, v12);
    if (v16)
    {
      goto LABEL_5;
    }
  }

LABEL_5:
  v17 = sub_23BDC66C0();

  v18 = [objc_opt_self() symbolImageProviderWithSystemName_];

  sub_23BD96394(a1 + v11, v6, &qword_27E1C59F0, &unk_23BDC8F30);
  LODWORD(v17) = v14(v6, 1, v12);
  v19 = v18;
  if (v17 == 1)
  {
    sub_23BD962D4(v6, &qword_27E1C59F0, &unk_23BDC8F30);
    v20 = 0;
  }

  else
  {
    sub_23BDC62E0();
    (*(v13 + 8))(v6, v12);
    v20 = sub_23BDC66C0();
  }

  [v19 setAccessibilityLabel_];

  v21 = objc_allocWithZone(MEMORY[0x277CBBA90]);
  v22 = v26;
  v23 = [v21 initWithTextProvider:v22 imageProvider:v19];

  return v23;
}

id sub_23BDA4FEC(uint64_t a1)
{
  v2 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v57 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v53 - v5;
  v7 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v59 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v60 = v53 - v8;
  v9 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v53 - v10;
  v12 = sub_23BDC62F0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WeatherTemplateModel(0);
  sub_23BD96394(a1 + *(v16 + 28), v11, &qword_27E1C59F0, &unk_23BDC8F30);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v17 = &qword_27E1C59F0;
    v18 = &unk_23BDC8F30;
    v19 = v11;
LABEL_5:
    sub_23BD962D4(v19, v17, v18);
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v21 = qword_27E1C5B70;
    v22 = sub_23BDC66C0();
    v23 = sub_23BDC66C0();
    v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

    v25 = sub_23BDC66F0();
    v27 = v26;

    goto LABEL_11;
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_23BD96394(a1 + *(v16 + 24), v6, &qword_27E1C5790, &unk_23BDC92E0);
  v20 = v59;
  if ((*(v59 + 48))(v6, 1, v7) == 1)
  {
    (*(v13 + 8))(v15, v12);
    v17 = &qword_27E1C5790;
    v18 = &unk_23BDC92E0;
    v19 = v6;
    goto LABEL_5;
  }

  v55 = v12;
  v56 = a1;
  (*(v20 + 32))(v60, v6, v7);
  v28 = v20;
  v54 = v7;
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v29 = qword_27E1C5B70;
  v30 = sub_23BDC66C0();
  v31 = sub_23BDC66C0();
  v32 = [v29 localizedStringForKey:v30 value:0 table:v31];

  v33 = sub_23BDC66F0();
  v53[1] = v34;
  v53[2] = v33;

  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_23BDC8C50;
  v36 = v15;
  v37 = sub_23BDC62D0();
  v39 = v38;
  *(v35 + 56) = MEMORY[0x277D837D0];
  v40 = sub_23BD97C54();
  *(v35 + 64) = v40;
  *(v35 + 32) = v37;
  *(v35 + 40) = v39;
  v41 = *(v20 + 16);
  v42 = v57;
  v43 = v60;
  v44 = v54;
  v41(v57, v60, v54);
  (*(v28 + 56))(v42, 0, 1, v44);
  v45 = (*(**(v58 + 16) + 152))(v42, 1, 2);
  v47 = v46;
  sub_23BD962D4(v42, &qword_27E1C5790, &unk_23BDC92E0);
  *(v35 + 96) = MEMORY[0x277D837D0];
  *(v35 + 104) = v40;
  *(v35 + 72) = v45;
  *(v35 + 80) = v47;
  v25 = sub_23BDC6700();
  v27 = v48;

  (*(v28 + 8))(v43, v44);
  (*(v13 + 8))(v36, v55);
LABEL_11:
  v61 = v25;
  v62 = v27;
  sub_23BD97C00();
  sub_23BDC6860();

  v49 = sub_23BDC66C0();

  v50 = [objc_opt_self() textProviderWithText_];

  v51 = [objc_allocWithZone(MEMORY[0x277CBBA80]) initWithTextProvider_];
  return v51;
}

id sub_23BDA56E8(uint64_t a1, Class *a2)
{
  v5 = type metadata accessor for WeatherTemplateModel(0);
  (*(**(v2 + 16) + 152))(a1 + *(v5 + 24), 1, 1);
  v6 = sub_23BDC66C0();

  v7 = [objc_opt_self() textProviderWithText_];

  v8 = [objc_allocWithZone(*a2) initWithTextProvider_];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemCyanColor];
  [v10 setTintColor_];

  return v10;
}

uint64_t sub_23BDA5808()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23BDA58B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v5 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = *sub_23BDC65E0();
  v9 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(v7, a1, v9);
  v12 = *(v10 + 56);
  v12(v7, 0, 1, v9);
  v13 = *(*v8 + 152);

  v14 = v13(v7, 1, 1);
  v33 = v15;
  v34 = v14;
  sub_23BD962D4(v7, &qword_27E1C5790, &unk_23BDC92E0);
  v11(v7, v30, v9);
  v12(v7, 0, 1, v9);
  v16 = v13(v7, 1, 1);
  v18 = v17;
  sub_23BD962D4(v7, &qword_27E1C5790, &unk_23BDC92E0);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v19 = qword_27E1C5B70;
  v20 = sub_23BDC66C0();
  v21 = sub_23BDC66C0();
  v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

  sub_23BDC66F0();
  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23BDC8C50;
  v24 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v25 = sub_23BD97C54();
  v26 = v33;
  *(v23 + 32) = v34;
  *(v23 + 40) = v26;
  *(v23 + 96) = v24;
  *(v23 + 104) = v25;
  *(v23 + 64) = v25;
  *(v23 + 72) = v16;
  *(v23 + 80) = v18;
  v27 = sub_23BDC6700();

  return v27;
}

uint64_t sub_23BDA5BC8()
{
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1C5B70;
  v1 = sub_23BDC66C0();
  v2 = sub_23BDC66C0();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_23BDC66F0();
  v6 = v5;

  v7 = v4 == 1702195828 && v6 == 0xE400000000000000;
  if (v7 || (sub_23BDC6980() & 1) != 0)
  {

    v8 = 1;
  }

  else if (v4 == 0x65736C6166 && v6 == 0xE500000000000000)
  {

    v8 = 0;
  }

  else
  {
    v10 = sub_23BDC6980();

    v8 = v10 ^ 1;
  }

  return v8 & 1;
}

id sub_23BDA5D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherTemplateModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDA60F4(a2, v6, type metadata accessor for WeatherTemplateModel);
  sub_23BDBA208(v6, a1 == 8, &v32);
  v7 = sub_23BDC66C0();
  v8 = objc_opt_self();
  v9 = [v8 textProviderWithText_];

  v10 = sub_23BDC66C0();
  v11 = [v8 textProviderWithText_];

  v12 = v34;
  v13 = v11;
  [v13 setTintColor_];
  v14 = sub_23BDC66C0();
  v15 = [v8 textProviderWithText_];

  v16 = v33;
  v17 = v15;
  [v17 setTintColor_];
  v18 = v32;
  sub_23BD96820(0, &qword_27E1C5770, 0x277D75348);
  v19 = sub_23BDC6770();
  sub_23BD96820(0, &qword_27E1C5A68, 0x277CCABB0);
  v20 = sub_23BDC6770();
  v21 = objc_opt_self();
  LODWORD(v22) = v18;
  v23 = [v21 gaugeProviderWithStyle:0 gaugeColors:v19 gaugeColorLocations:v20 fillFraction:v22];

  if (a1 == 12)
  {
    v27 = MEMORY[0x277CBB950];
    goto LABEL_7;
  }

  if (a1 == 10)
  {
    v27 = MEMORY[0x277CBB868];
LABEL_7:
    v28 = objc_allocWithZone(v27);
    v25 = v23;
    v26 = [v28 initWithGaugeProvider:v25 leadingTextProvider:v13 trailingTextProvider:v17 centerTextProvider:v9];
    goto LABEL_8;
  }

  if (a1 != 8)
  {

    sub_23BDA6058(&v32);
    return 0;
  }

  v24 = objc_allocWithZone(MEMORY[0x277CBB8D0]);
  v25 = v23;
  v26 = [v24 initWithGaugeProvider:v25 leadingTextProvider:v13 trailingTextProvider:v17 outerTextProvider:v9];
LABEL_8:
  v29 = v26;

  sub_23BDA6058(&v32);
  return v29;
}

uint64_t sub_23BDA60AC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_23BDA60F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BDA615C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23BDA61BC()
{
  v1 = sub_23BDC6080();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v22 - v6;
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v8 = qword_27E1C5B70;
  v9 = sub_23BDC66C0();
  v10 = sub_23BDC66C0();
  v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

  v12 = sub_23BDC66F0();
  v14 = v13;

  if (v12 == 1702195828 && v14 == 0xE400000000000000)
  {

    v15 = 1;
  }

  else
  {
    v15 = sub_23BDC6980();
  }

  v16 = type metadata accessor for WindTemplateModel(0);
  sub_23BD96394(v0 + *(v16 + 28), v7, &unk_27E1C5D50, &unk_23BDC8F70);
  v17 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_23BD962D4(v7, &unk_27E1C5D50, &unk_23BDC8F70);
    v19 = 0;
    v20 = 0xE000000000000000;
    if (v15)
    {
      return v19;
    }

    goto LABEL_11;
  }

  sub_23BDC6070();
  sub_23BDC5F20();
  (*(v2 + 8))(v4, v1);
  (*(v18 + 8))(v7, v17);
  v19 = v24;
  v20 = v25;
  v28 = v23;
  sub_23BD96334(&v28);
  v27 = v26;
  sub_23BD96334(&v27);
  if ((v15 & 1) == 0)
  {
LABEL_11:
    v22[0] = v19;
    v22[1] = v20;
    sub_23BD97C00();
    v19 = sub_23BDC6860();
  }

  return v19;
}

uint64_t sub_23BDA6544()
{
  v1 = sub_23BDC6080();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  v16[0] = 40;
  v16[1] = 0xE100000000000000;
  v8 = type metadata accessor for WindTemplateModel(0);
  sub_23BD96394(v0 + *(v8 + 28), v7, &unk_27E1C5D50, &unk_23BDC8F70);
  v9 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_23BD962D4(v7, &unk_27E1C5D50, &unk_23BDC8F70);
    v11 = 0xE300000000000000;
    v12 = 7104878;
  }

  else
  {
    sub_23BDC6070();
    v13 = sub_23BDC5F10();
    v11 = v14;
    (*(v2 + 8))(v4, v1);
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  MEMORY[0x23EEBD040](v12, v11);

  MEMORY[0x23EEBD040](41, 0xE100000000000000);
  return v16[0];
}

uint64_t sub_23BDA677C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v39 - v4;
  v5 = sub_23BD9628C(&qword_27E1C5668, &qword_23BDC89F8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v13 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - v14;
  v16 = sub_23BDC6010();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for TemplateData(0);
  v43 = v16;
  v20 = *(v42 + 20);
  v41 = *(v17 + 16);
  v39 = v17 + 16;
  v41(v19, a1, v16);
  v46 = a1;
  sub_23BD96394(a1 + v20, v15, &qword_27E1C5960, &qword_23BDC8F50);
  v21 = sub_23BDC6240();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v15, 1, v21) == 1)
  {
    sub_23BD962D4(v15, &qword_27E1C5960, &qword_23BDC8F50);
    memset(v51, 0, sizeof(v51));
    v52 = 0;
  }

  else
  {
    sub_23BDC6200();
    (*(v22 + 8))(v15, v21);
  }

  sub_23BD96394(v51, v48, &qword_27E1C59A8, &unk_23BDC8EC0);
  v23 = v49;
  v40 = v19;
  if (v49)
  {
    v24 = v50;
    sub_23BD9CCFC(v48, v49);
    (*(v24 + 112))(v23, v24);
    v25 = sub_23BDC64C0();
    (*(*(v25 - 8) + 56))(v12, 0, 1, v25);
    sub_23BD9CD40(v48);
  }

  else
  {
    sub_23BD962D4(v48, &qword_27E1C59A8, &unk_23BDC8EC0);
    v25 = sub_23BDC64C0();
    (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  }

  sub_23BD96394(v12, v10, &qword_27E1C5668, &qword_23BDC89F8);
  sub_23BDC64C0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  if (v27(v10, 1, v25) == 1)
  {
    sub_23BD962D4(v10, &qword_27E1C5668, &qword_23BDC89F8);
    v28 = 1;
    v29 = v45;
  }

  else
  {
    v29 = v45;
    sub_23BDC64B0();
    (*(v26 + 8))(v10, v25);
    v28 = 0;
  }

  v30 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  (*(*(v30 - 8) + 56))(v29, v28, 1, v30);
  v31 = v44;
  sub_23BD96394(v12, v44, &qword_27E1C5668, &qword_23BDC89F8);
  if (v27(v31, 1, v25) == 1)
  {
    sub_23BD962D4(v12, &qword_27E1C5668, &qword_23BDC89F8);
    sub_23BD962D4(v51, &qword_27E1C59A8, &unk_23BDC8EC0);
    v32 = v43;
    (*(v17 + 8))(v40, v43);
    sub_23BD962D4(v31, &qword_27E1C5668, &qword_23BDC89F8);
    v33 = 16;
  }

  else
  {
    v33 = sub_23BDC64A0();
    sub_23BD962D4(v12, &qword_27E1C5668, &qword_23BDC89F8);
    sub_23BD962D4(v51, &qword_27E1C59A8, &unk_23BDC8EC0);
    v32 = v43;
    (*(v17 + 8))(v40, v43);
    (*(v26 + 8))(v31, v25);
  }

  v35 = v46;
  v34 = v47;
  v41(v47, v46, v32);
  v36 = *(v42 + 24);
  v37 = type metadata accessor for WindTemplateModel(0);
  sub_23BD9CC98(v35 + v36, &v34[v37[5]]);
  result = sub_23BDA6FB8(v29, &v34[v37[7]]);
  v34[v37[6]] = v33;
  return result;
}

uint64_t sub_23BDA6E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BD9D208();
  sub_23BD9D20C();
  v4 = *(a1 + 28);
  v5 = [objc_opt_self() milesPerHour];
  sub_23BDA7028();
  sub_23BDC5F40();
  v6 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  result = (*(*(v6 - 8) + 56))(a2 + v4, 0, 1, v6);
  *(a2 + *(a1 + 24)) = 2;
  return result;
}

unint64_t sub_23BDA6EEC(uint64_t a1)
{
  result = sub_23BDA6F14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BDA6F14()
{
  result = qword_27E1C5A78;
  if (!qword_27E1C5A78)
  {
    type metadata accessor for WindTemplateModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5A78);
  }

  return result;
}

uint64_t type metadata accessor for WindTemplateModel(uint64_t a1)
{
  result = qword_27E1C5A80;
  if (!qword_27E1C5A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDA6FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BDA7028()
{
  result = qword_27E1C5680;
  if (!qword_27E1C5680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C5680);
  }

  return result;
}

uint64_t sub_23BDA7088(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BDC6590();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 239)
  {
    v14 = *(a1 + a3[6]);
    if (v14 <= 0x10)
    {
      v15 = 16;
    }

    else
    {
      v15 = *(a1 + a3[6]);
    }

    v16 = v15 - 16;
    if (v14 >= 0x10)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[7];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_23BDA7220(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_23BDC6590();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 239)
  {
    *(a1 + a4[6]) = a2 + 16;
  }

  else
  {
    v15 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_23BDA739C(uint64_t a1)
{
  sub_23BDC6010();
  if (v1 <= 0x3F)
  {
    sub_23BDC6590();
    if (v2 <= 0x3F)
    {
      sub_23BDA7450();
      if (v3 <= 0x3F)
      {
        sub_23BDA74A0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23BDA7450()
{
  if (!qword_27E1C5A90)
  {
    v0 = sub_23BDC6850();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C5A90);
    }
  }
}

void sub_23BDA74A0(uint64_t a1)
{
  if (!qword_27E1C5A98)
  {
    sub_23BD9B8CC(&unk_27E1C5D70, &unk_23BDC9100);
    v1 = sub_23BDC6850();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1C5A98);
    }
  }
}

id sub_23BDA7508(int64_t a1, uint64_t a2)
{
  if (a1 <= 6)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v7 = sub_23BD96F78(a2);
        goto LABEL_27;
      }

      if (a1 != 4)
      {
        if (a1 != 6)
        {
          goto LABEL_30;
        }

LABEL_17:
        v7 = sub_23BD96E84(a2);
LABEL_27:
        v6 = v7;
        goto LABEL_34;
      }

      v24 = *(v2 + 16);
      v26 = type metadata accessor for UVTemplateModel(0);
      (*(*v24 + 88))(*(a2 + *(v26 + 20)), *(a2 + *(v26 + 20) + 8), 2);
      v27 = sub_23BDC66C0();

      v12 = [objc_opt_self() textProviderWithText_];

      v13 = sub_23BD97994(a2);
      v14 = MEMORY[0x277CBB7A0];
    }

    else
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v7 = sub_23BD96B30(a2);
          goto LABEL_27;
        }

        if (a1 != 2)
        {
LABEL_30:
          if (*MEMORY[0x277CBB668] == a1)
          {
            v28 = *(v2 + 16);
            v30 = type metadata accessor for UVTemplateModel(0);
            (*(*v28 + 88))(*(a2 + *(v30 + 20)), *(a2 + *(v30 + 20) + 8), 2);
            v31 = sub_23BDC66C0();

            v12 = [objc_opt_self() textProviderWithText_];

            v13 = sub_23BD97994(a2);
            v14 = MEMORY[0x277CBB758];
            goto LABEL_32;
          }

LABEL_33:
          v6 = 0;
          goto LABEL_34;
        }

        goto LABEL_17;
      }

      v8 = *(v2 + 16);
      v10 = type metadata accessor for UVTemplateModel(0);
      (*(*v8 + 88))(*(a2 + *(v10 + 20)), *(a2 + *(v10 + 20) + 8), 2);
      v11 = sub_23BDC66C0();

      v12 = [objc_opt_self() textProviderWithText_];

      v13 = sub_23BD97994(a2);
      v14 = MEMORY[0x277CBBA68];
    }

LABEL_32:
    v6 = [objc_allocWithZone(v14) initWithLine1ImageProvider:v13 line2TextProvider:v12];

    goto LABEL_34;
  }

  if (a1 > 9)
  {
    switch(a1)
    {
      case 10:
        v7 = sub_23BD972D4(a2);
        break;
      case 11:
        goto LABEL_33;
      case 12:
        v7 = sub_23BD972E8(a2);
        break;
      default:
        goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a1 == 7)
  {
    v15 = *(v2 + 16);
    v17 = type metadata accessor for UVTemplateModel(0);
    (*(*v15 + 88))(*(a2 + *(v17 + 20)), *(a2 + *(v17 + 20) + 8), 2);
    v18 = sub_23BDC66C0();

    v12 = [objc_opt_self() textProviderWithText_];

    v13 = sub_23BD97994(a2);
    v14 = MEMORY[0x277CBB800];
    goto LABEL_32;
  }

  if (a1 == 8)
  {
    v19 = sub_23BD97658(a2);
    v21 = v20;
    v23 = v22;
    v6 = [objc_allocWithZone(MEMORY[0x277CBB8D0]) initWithGaugeProvider:v19 leadingTextProvider:v22 trailingTextProvider:0 outerTextProvider:v20];
  }

  else
  {
    v4 = sub_23BD972D4(a2);
    if (!v4)
    {
      goto LABEL_33;
    }

    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277CBB810]) initWithCircularTemplate_];
    }
  }

LABEL_34:
  v32 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_284E8CA70, v32), vceqq_s64(unk_284E8CA80, v32)))) & 1) == 0 && qword_284E8CA90 != a1 && v6)
  {
    v33 = [objc_opt_self() clearColor];
    [v6 setTintColor_];
  }

  return v6;
}

id sub_23BDA79D0(int64_t a1, uint64_t a2)
{
  if (a1 <= 6)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v6 = sub_23BDA4FEC(a2);
        goto LABEL_33;
      }

      if (a1 == 4)
      {
        v6 = sub_23BDA56D0(a2);
        goto LABEL_33;
      }

      if (a1 != 6)
      {
LABEL_30:
        if (*MEMORY[0x277CBB668] == a1)
        {
          v9 = type metadata accessor for WeatherTemplateModel(0);
          (*(**(v2 + 16) + 152))(a2 + *(v9 + 24), 1, 1);
          v10 = sub_23BDC66C0();

          v11 = [objc_opt_self() textProviderWithText_];

          v6 = [objc_allocWithZone(MEMORY[0x277CBB798]) initWithTextProvider_];
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (!a1)
      {
        v6 = sub_23BDA3F04(a2);
        goto LABEL_33;
      }

      if (a1 == 1)
      {
        v6 = sub_23BDA4064(a2);
        goto LABEL_33;
      }

      if (a1 != 2)
      {
        goto LABEL_30;
      }
    }

    v6 = sub_23BDA4C78(a2);
    goto LABEL_33;
  }

  if (a1 > 9)
  {
    switch(a1)
    {
      case 10:
        v7 = 10;
        break;
      case 11:
        goto LABEL_32;
      case 12:
        v7 = 12;
        break;
      default:
        goto LABEL_30;
    }

LABEL_28:
    v6 = sub_23BDA5D60(v7, a2);
    goto LABEL_33;
  }

  if (a1 == 7)
  {
    v6 = sub_23BDA56DC(a2);
    goto LABEL_33;
  }

  if (a1 == 8)
  {
    v7 = 8;
    goto LABEL_28;
  }

  v4 = sub_23BDA5D60(10, a2);
  if (!v4)
  {
LABEL_32:
    v6 = 0;
    goto LABEL_33;
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CBB810]) initWithCircularTemplate_];
  }

LABEL_33:
  v12 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_284E8CAB8, v12), vceqq_s64(unk_284E8CAC8, v12)))) & 1) == 0 && qword_284E8CAD8 != a1 && v6 != 0)
  {
    v14 = [objc_opt_self() clearColor];
    [v6 setTintColor_];
  }

  return v6;
}

id sub_23BDA7C88(int64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 <= 6)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        goto LABEL_28;
      }

      if (a1 == 4)
      {
        v4 = sub_23BDAA664(a2);
        goto LABEL_27;
      }

      if (a1 != 6)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (!a1)
      {
        v4 = sub_23BDAA408(a2);
        goto LABEL_27;
      }

      if (a1 == 1)
      {
        goto LABEL_28;
      }

      if (a1 != 2)
      {
        goto LABEL_25;
      }
    }

    v4 = sub_23BDAA650(a2);
LABEL_27:
    v3 = v4;
    goto LABEL_28;
  }

  if (a1 <= 9)
  {
    if (a1 == 7)
    {
      v4 = sub_23BDAA88C(a2);
      goto LABEL_27;
    }

    if (a1 != 8)
    {
      v4 = sub_23BDAB084(a2);
      goto LABEL_27;
    }

    v5 = sub_23BDAAD4C(a2, 8uLL);
    v6 = [objc_allocWithZone(MEMORY[0x277CBB8B8]) initWithImageProvider_];
    v7 = sub_23BDB1C20();
LABEL_23:
    v3 = v7;

    goto LABEL_28;
  }

  switch(a1)
  {
    case 10:
      v5 = sub_23BDAAD4C(a2, 0xAuLL);
      v6 = [objc_allocWithZone(MEMORY[0x277CBB850]) initWithImageProvider_];
      v7 = sub_23BDB1C20();
      goto LABEL_23;
    case 11:
      goto LABEL_28;
    case 12:
      v5 = sub_23BDAAD4C(a2, 0xCuLL);
      v6 = [objc_allocWithZone(MEMORY[0x277CBB938]) initWithImageProvider_];
      v7 = sub_23BDB1C20();
      goto LABEL_23;
  }

LABEL_25:
  if (*MEMORY[0x277CBB668] == a1)
  {
    v4 = sub_23BDAA8A0(a2);
    goto LABEL_27;
  }

  v3 = 0;
LABEL_28:
  v8 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_284E8CB48, v8), vceqq_s64(unk_284E8CB58, v8)))) & 1) == 0 && qword_284E8CB68 != a1 && v3 != 0)
  {
    v10 = [objc_opt_self() clearColor];
    [v3 setTintColor_];
  }

  return v3;
}

id sub_23BDA7ED0(int64_t a1, uint64_t a2)
{
  if (a1 <= 6)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v6 = sub_23BDB9758(a2);
        goto LABEL_31;
      }

      if (a1 == 4)
      {
        v6 = sub_23BDB869C(a2);
        goto LABEL_31;
      }

      if (a1 != 6)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (!a1)
      {
        v6 = sub_23BDB8534(a2);
        goto LABEL_31;
      }

      if (a1 == 1)
      {
        v6 = sub_23BDB94B4(a2);
        goto LABEL_31;
      }

      if (a1 != 2)
      {
LABEL_29:
        if (*MEMORY[0x277CBB668] == a1)
        {
          v6 = sub_23BDB8E44(a2);
          goto LABEL_31;
        }

        goto LABEL_39;
      }
    }

    v6 = sub_23BDB8548(a2);
LABEL_31:
    v5 = v6;
    goto LABEL_32;
  }

  if (a1 > 9)
  {
    if (a1 == 10)
    {
      v6 = sub_23BDB88F4(a2);
      goto LABEL_31;
    }

    if (a1 != 11)
    {
      if (a1 != 12)
      {
        goto LABEL_29;
      }

      v6 = sub_23BDB8B9C(a2);
      goto LABEL_31;
    }

LABEL_39:
    v5 = 0;
    goto LABEL_32;
  }

  if (a1 == 7)
  {
    v6 = sub_23BDB86B0(a2);
    goto LABEL_31;
  }

  if (a1 == 8)
  {
    v6 = sub_23BDB86C4(a2);
    goto LABEL_31;
  }

  v3 = sub_23BDB88F4(a2);
  if (!v3)
  {
    goto LABEL_39;
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CBB810]) initWithCircularTemplate_];
  }

LABEL_32:
  v7 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_284E8CB90, v7), vceqq_s64(unk_284E8CBA0, v7)))) & 1) == 0 && qword_284E8CBB0 != a1 && v5 != 0)
  {
    v9 = [objc_opt_self() clearColor];
    [v5 setTintColor_];
  }

  return v5;
}

uint64_t sub_23BDA80DC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v19 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 104))(a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  v15 = (*(a6 + 32))(a1, v13, a5, a6);
  v16 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v20(v15, v16, v17);

  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_23BDA82AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(a3 + 168))(a1, a2, a3);
  v10 = (*(a3 + 32))(a1, v9, a2, a3);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v10;
}

uint64_t sub_23BDA83E4@<X0>(uint64_t a1@<X8>)
{
  sub_23BD9D208();
  v2 = sub_23BDC64F0();
  v4 = v3;
  v5 = type metadata accessor for UVTemplateModel(0);
  sub_23BD9D20C();
  v6 = [objc_opt_self() orangeColor];
  v7 = a1 + v5[5];
  *v7 = 6;
  *(v7 + 8) = 0;
  v8 = (a1 + v5[6]);
  *v8 = v2;
  v8[1] = v4;
  *(a1 + v5[8]) = v6;
  *(a1 + v5[9]) = 11;
  v9 = v5[10];
  result = sub_23BD9C258();
  *(a1 + v9) = result;
  return result;
}

uint64_t sub_23BDA8498@<X0>(uint64_t a1@<X8>)
{
  sub_23BD9D208();
  v2 = type metadata accessor for WeatherTemplateModel(0);
  sub_23BD9D20C();
  v3 = v2[6];
  v17 = objc_opt_self();
  v4 = [v17 fahrenheit];
  sub_23BDA9AD0();
  sub_23BDC5F40();
  v5 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v6 = *(*(v5 - 8) + 56);
  v6(a1 + v3, 0, 1, v5);
  v7 = v2[7];
  v8 = *MEMORY[0x277CE3250];
  v9 = sub_23BDC62F0();
  v10 = *(v9 - 8);
  (*(v10 + 104))(a1 + v7, v8, v9);
  (*(v10 + 56))(a1 + v7, 0, 1, v9);
  v11 = v2[8];
  v12 = [v17 fahrenheit];
  sub_23BDC5F40();
  v6(a1 + v11, 0, 1, v5);
  v13 = v2[9];
  v14 = [v17 fahrenheit];
  sub_23BDC5F40();
  result = (v6)(a1 + v13, 0, 1, v5);
  v16 = (a1 + v2[10]);
  *v16 = 0;
  v16[1] = 0;
  *(a1 + v2[11]) = 1;
  return result;
}

uint64_t sub_23BDA86D0@<X0>(uint64_t a1@<X8>)
{
  sub_23BD9D208();
  v2 = type metadata accessor for ConditionTemplateModel(0);
  sub_23BD9D20C();
  v3 = v2[6];
  v4 = *MEMORY[0x277CE3250];
  v5 = sub_23BDC62F0();
  v6 = *(v5 - 8);
  (*(v6 + 104))(a1 + v3, v4, v5);
  (*(v6 + 56))(a1 + v3, 0, 1, v5);
  v7 = v2[8];
  v8 = objc_opt_self();
  v9 = [v8 fahrenheit];
  sub_23BDA9AD0();
  sub_23BDC5F40();
  v10 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v11 = *(*(v10 - 8) + 56);
  v11(a1 + v7, 0, 1, v10);
  v12 = v2[9];
  v13 = [v8 fahrenheit];
  sub_23BDC5F40();
  v11(a1 + v12, 0, 1, v10);
  v14 = v2[10];
  v15 = [v8 fahrenheit];
  sub_23BDC5F40();
  result = (v11)(a1 + v14, 0, 1, v10);
  *(a1 + v2[7]) = 1;
  return result;
}

uint64_t sub_23BDA88EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(**sub_23BDC6620() + 136);

  v3 = v2(0x3FE3333333333333, 0, 1);
  v5 = v4;

  sub_23BD9D208();
  v6 = type metadata accessor for ChanceRainTemplateModel(0);
  result = sub_23BD9D20C();
  v8 = a1 + v6[6];
  *v8 = 0x3FE3333333333333;
  *(v8 + 8) = 0;
  v9 = (a1 + v6[7]);
  *v9 = v3;
  v9[1] = v5;
  *(a1 + v6[8]) = 1;
  v10 = (a1 + v6[9]);
  *v10 = 0xD000000000000013;
  v10[1] = 0x800000023BDC7AF0;
  return result;
}

BOOL sub_23BDA8A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_23BDA8A4C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_23BDC6590();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v12 = sub_23BDC6010();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v1, v12);
  v16 = sub_23BDC6240();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v25[1] = v17 + 56;
  v26 = v18;
  v18(v11, 1, 1, v16);
  v19 = type metadata accessor for TemplateData(0);
  sub_23BD9CC98(v1 + *(v19 + 24), v5);
  sub_23BDA38EC(v11, v9);
  v20 = &v5[*(v3 + 40)];
  if (*v20 == *MEMORY[0x277CE4278])
  {
    v21 = v20[1];
    v22 = *(MEMORY[0x277CE4278] + 8);
    sub_23BDA8EFC(v11);
    if (v21 == v22)
    {
      sub_23BDA8EFC(v9);
      v26(v9, 1, 1, v16);
    }
  }

  else
  {
    sub_23BDA8EFC(v11);
  }

  v23 = v27;
  (*(v13 + 32))(v27, v15, v12);
  sub_23BDA8F64(v9, v23 + *(v19 + 20));
  return sub_23BDA8FD4(v5, v23 + *(v19 + 24));
}

uint64_t sub_23BDA8DD8()
{
  v0 = type metadata accessor for WindTemplateModel(0);
  v1 = sub_23BDA9BE4();
  return (*(v1 + 40))(v0, v1);
}

uint64_t sub_23BDA8E2C@<X0>(uint64_t a1@<X8>)
{
  sub_23BD9D208();
  v2 = type metadata accessor for AQINonNumericalTemplateModel(0);
  result = sub_23BD9D20C();
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(a1 + v2[8]) = 0;
  *(a1 + v2[9]) = MEMORY[0x277D84F90];
  v6 = (a1 + v2[10]);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(a1 + v2[11]) = 0;
  return result;
}

uint64_t type metadata accessor for TemplateData(uint64_t a1)
{
  result = qword_27E1C5AA8;
  if (!qword_27E1C5AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDA8EFC(uint64_t a1)
{
  v2 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BDA8F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDA8FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BDC6590();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_23BDA9038(int64_t a1, uint64_t a2)
{
  if (a1 <= 6)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v6 = sub_23BDC1CB4(a2);
        goto LABEL_31;
      }

      if (a1 == 4)
      {
        v6 = sub_23BDC218C(a2);
        goto LABEL_31;
      }

      if (a1 != 6)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (!a1)
      {
        v6 = sub_23BDC0E0C(a2);
        goto LABEL_31;
      }

      if (a1 == 1)
      {
        v6 = sub_23BDC1248(a2);
        goto LABEL_31;
      }

      if (a1 != 2)
      {
LABEL_29:
        if (*MEMORY[0x277CBB668] == a1)
        {
          v6 = sub_23BDC3210(a2);
          goto LABEL_31;
        }

        goto LABEL_39;
      }
    }

    v6 = sub_23BDC18E0(a2);
LABEL_31:
    v5 = v6;
    goto LABEL_32;
  }

  if (a1 > 9)
  {
    if (a1 == 10)
    {
      v6 = sub_23BDC30D0(a2);
      goto LABEL_31;
    }

    if (a1 != 11)
    {
      if (a1 != 12)
      {
        goto LABEL_29;
      }

      v6 = sub_23BDC30EC(a2);
      goto LABEL_31;
    }

LABEL_39:
    v5 = 0;
    goto LABEL_32;
  }

  if (a1 == 7)
  {
    v6 = sub_23BDC2514(a2);
    goto LABEL_31;
  }

  if (a1 == 8)
  {
    v6 = sub_23BDC2928(a2);
    goto LABEL_31;
  }

  v3 = sub_23BDC30D0(a2);
  if (!v3)
  {
    goto LABEL_39;
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CBB810]) initWithCircularTemplate_];
  }

LABEL_32:
  v7 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_284E8CB00, v7), vceqq_s64(unk_284E8CB10, v7)))) & 1) == 0 && qword_284E8CB20 != a1 && v5 != 0)
  {
    v9 = [objc_opt_self() clearColor];
    [v5 setTintColor_];
  }

  return v5;
}

id sub_23BDA9240(int64_t a1, uint64_t a2)
{
  if (a1 > 6)
  {
    if (a1 > 9)
    {
      switch(a1)
      {
        case 10:
          v10 = sub_23BDC00F4(a2);
          v12 = v16;
          v14 = v17;
          v15 = MEMORY[0x277CBB870];
          break;
        case 11:
          goto LABEL_30;
        case 12:
          v10 = sub_23BDC00F4(a2);
          v12 = v11;
          v14 = v13;
          v15 = MEMORY[0x277CBB958];
          break;
        default:
          goto LABEL_28;
      }

      v18 = [objc_allocWithZone(v15) initWithGaugeProvider:v14 bottomTextProvider:v12 centerTextProvider:v10];
    }

    else
    {
      if (a1 == 7)
      {
        v9 = sub_23BDC00E8(a2);
        goto LABEL_31;
      }

      if (a1 != 8)
      {
        v3 = sub_23BDC00F4(a2);
        v5 = v4;
        v7 = v6;
        v8 = [objc_allocWithZone(MEMORY[0x277CBB870]) initWithGaugeProvider:v6 bottomTextProvider:v4 centerTextProvider:v3];

        v9 = [objc_allocWithZone(MEMORY[0x277CBB810]) initWithCircularTemplate_];
        goto LABEL_31;
      }

      v10 = sub_23BDC00F4(a2);
      v12 = v19;
      v14 = v20;
      v18 = [objc_allocWithZone(MEMORY[0x277CBB8D0]) initWithGaugeProvider:v20 leadingTextProvider:v19 trailingTextProvider:0 outerTextProvider:v10];
    }

    v9 = v18;

    goto LABEL_31;
  }

  if (a1 <= 2)
  {
    if (!a1)
    {
      v9 = sub_23BDBF4E0(a2);
      goto LABEL_31;
    }

    if (a1 == 1)
    {
      v9 = sub_23BDBF734(a2);
      goto LABEL_31;
    }

    if (a1 != 2)
    {
      goto LABEL_28;
    }

LABEL_14:
    v9 = sub_23BDBFB70(a2);
    goto LABEL_31;
  }

  switch(a1)
  {
    case 3:
      v9 = sub_23BDBFDC4(a2);
      goto LABEL_31;
    case 4:
      v9 = sub_23BDC00DC(a2);
      goto LABEL_31;
    case 6:
      goto LABEL_14;
  }

LABEL_28:
  if (*MEMORY[0x277CBB668] == a1)
  {
    v9 = sub_23BDC0378(a2);
    goto LABEL_31;
  }

LABEL_30:
  v9 = 0;
LABEL_31:
  v21 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_284E8CBD8, v21), vceqq_s64(unk_284E8CBE8, v21)))) & 1) == 0 && qword_284E8CBF8 != a1 && v9 != 0)
  {
    v23 = [objc_opt_self() clearColor];
    [v9 setTintColor_];
  }

  return v9;
}

id sub_23BDA9508(int64_t a1, uint64_t a2)
{
  if (a1 <= 6)
  {
    if (a1 > 2)
    {
      switch(a1)
      {
        case 3:
          v9 = sub_23BDC4FB0(a2);
          goto LABEL_31;
        case 4:
          v28 = objc_opt_self();

          type metadata accessor for AQINonNumericalTemplateModel(0);
          v29 = sub_23BDC66C0();
          v12 = [objc_opt_self() symbolImageProviderWithSystemName_];

          v30 = [v28 whiteColor];
          [v12 setTintColor_];

          v14 = MEMORY[0x277CBB790];
          goto LABEL_29;
        case 6:
          goto LABEL_14;
      }
    }

    else
    {
      switch(a1)
      {
        case 0:
          v9 = sub_23BDC4B04(a2);
          goto LABEL_31;
        case 1:
          v9 = sub_23BDC4C90(a2);
          goto LABEL_31;
        case 2:
LABEL_14:
          v10 = objc_opt_self();

          type metadata accessor for AQINonNumericalTemplateModel(0);
          v11 = sub_23BDC66C0();
          v12 = [objc_opt_self() symbolImageProviderWithSystemName_];

          v13 = [v10 whiteColor];
          [v12 setTintColor_];

          v14 = MEMORY[0x277CBBAC0];
LABEL_29:
          v9 = [objc_allocWithZone(v14) initWithImageProvider_];

          goto LABEL_31;
      }
    }

    goto LABEL_27;
  }

  if (a1 <= 9)
  {
    if (a1 == 7)
    {
      v21 = objc_opt_self();

      type metadata accessor for AQINonNumericalTemplateModel(0);
      v22 = sub_23BDC66C0();
      v12 = [objc_opt_self() symbolImageProviderWithSystemName_];

      v23 = [v21 whiteColor];
      [v12 setTintColor_];

      v14 = MEMORY[0x277CBB7F0];
      goto LABEL_29;
    }

    if (a1 != 8)
    {
      v3 = sub_23BDC51D4(10, a2);
      v5 = v4;
      v7 = v6;
      v8 = [objc_allocWithZone(MEMORY[0x277CBB888]) initWithImageProvider:v4 gaugeProvider:v6 textProvider:v3];

      v9 = [objc_allocWithZone(MEMORY[0x277CBB810]) initWithCircularTemplate_];
      goto LABEL_31;
    }

    v15 = sub_23BDC51D4(8, a2);
    v17 = v26;
    v19 = v27;
    v20 = MEMORY[0x277CBB8F8];
LABEL_25:
    v9 = [objc_allocWithZone(v20) initWithImageProvider:v17 gaugeProvider:v19 textProvider:v15];

    goto LABEL_31;
  }

  switch(a1)
  {
    case 10:
      v15 = sub_23BDC51D4(10, a2);
      v17 = v24;
      v19 = v25;
      v20 = MEMORY[0x277CBB888];
      goto LABEL_25;
    case 11:
      goto LABEL_30;
    case 12:
      v15 = sub_23BDC51D4(12, a2);
      v17 = v16;
      v19 = v18;
      v20 = MEMORY[0x277CBB970];
      goto LABEL_25;
  }

LABEL_27:
  if (*MEMORY[0x277CBB668] == a1)
  {
    v31 = objc_opt_self();

    type metadata accessor for AQINonNumericalTemplateModel(0);
    v32 = sub_23BDC66C0();
    v12 = [objc_opt_self() symbolImageProviderWithSystemName_];

    v33 = [v31 whiteColor];
    [v12 setTintColor_];

    v14 = MEMORY[0x277CBB748];
    goto LABEL_29;
  }

LABEL_30:
  v9 = 0;
LABEL_31:
  v34 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_284E8CC68, v34), vceqq_s64(unk_284E8CC78, v34)))) & 1) == 0 && qword_284E8CC88 != a1 && v9 != 0)
  {
    v36 = [objc_opt_self() clearColor];
    [v9 setTintColor_];
  }

  return v9;
}

unint64_t sub_23BDA9AD0()
{
  result = qword_27E1C5AA0;
  if (!qword_27E1C5AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C5AA0);
  }

  return result;
}

void *sub_23BDA9B1C(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), int64x2_t *a4, void *a5)
{
  if (a1 == 11)
  {
    v8 = a3(a2);
  }

  else
  {
    v8 = 0;
  }

  v9 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a4, v9), vceqq_s64(a4[1], v9)))) & 1) == 0 && *a5 != a1 && v8)
  {
    v10 = [objc_opt_self() clearColor];
    [v8 setTintColor_];
  }

  return v8;
}

unint64_t sub_23BDA9BE4()
{
  result = qword_27E1C56C0;
  if (!qword_27E1C56C0)
  {
    type metadata accessor for WindTemplateModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C56C0);
  }

  return result;
}

uint64_t sub_23BDA9C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_23BDA9DB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_23BDC6590();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_23BDA9F08(uint64_t a1)
{
  sub_23BDC6010();
  if (v1 <= 0x3F)
  {
    sub_23BDA9FA4(319);
    if (v2 <= 0x3F)
    {
      sub_23BDC6590();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BDA9FA4(uint64_t a1)
{
  if (!qword_27E1C5AB8)
  {
    sub_23BDC6240();
    v1 = sub_23BDC6850();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1C5AB8);
    }
  }
}

uint64_t sub_23BDAA004()
{
  type metadata accessor for ConditionTemplateFormatter();
  swift_allocObject();
  v0 = sub_23BDAA07C();
  result = sub_23BDAC434(&qword_27E1C5AC8, v1, type metadata accessor for ConditionTemplateFormatter, &unk_23BDC91EC);
  *&xmmword_27E1C7780 = v0;
  *(&xmmword_27E1C7780 + 1) = result;
  return result;
}

void *sub_23BDAA07C()
{
  sub_23BDC6600();
  v1 = sub_23BDC66C0();

  v2 = [objc_opt_self() textProviderWithText_];

  v0[2] = v2;
  sub_23BD9628C(&qword_27E1C5AD0, &qword_23BDC9210);
  v3 = sub_23BDC62F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23BDC9170;
  v8 = *(v4 + 104);
  v8(v7 + v6, *MEMORY[0x277CE32F0], v3);
  v8(v7 + v6 + v5, *MEMORY[0x277CE32C0], v3);
  v8(v7 + v6 + 2 * v5, *MEMORY[0x277CE3240], v3);
  v8(v7 + v6 + 3 * v5, *MEMORY[0x277CE32A0], v3);
  v9 = sub_23BDAC10C(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v0[3] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23BDC9180;
  v8(v10 + v6, *MEMORY[0x277CE3298], v3);
  v8(v10 + v6 + v5, *MEMORY[0x277CE3220], v3);
  v8(v10 + v6 + 2 * v5, *MEMORY[0x277CE3288], v3);
  v11 = sub_23BDAC10C(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v0[4] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23BDC9180;
  v8(v12 + v6, *MEMORY[0x277CE3250], v3);
  v8(v12 + v6 + v5, *MEMORY[0x277CE3230], v3);
  v8(v12 + v6 + 2 * v5, *MEMORY[0x277CE32B0], v3);
  v13 = sub_23BDAC10C(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v0[5] = v13;
  return v0;
}

id sub_23BDAA408(uint64_t a1)
{
  v3 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_23BDC62F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ConditionTemplateModel(0);
  sub_23BD96394(a1 + *(v10 + 24), v5, &qword_27E1C59F0, &unk_23BDC8F30);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_23BD962D4(v5, &qword_27E1C59F0, &unk_23BDC8F30);
    v11 = *(v1 + 16);
    v12 = [objc_opt_self() systemCyanColor];
    [v11 setTintColor_];

    return [objc_allocWithZone(MEMORY[0x277CBBA60]) initWithTextProvider_];
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14 = sub_23BDAA8B4(v9, *(a1 + *(v10 + 28)));
    v15 = [objc_allocWithZone(MEMORY[0x277CBBA50]) initWithImageProvider_];

    (*(v7 + 8))(v9, v6);
    return v15;
  }
}

id sub_23BDAA678(uint64_t a1, Class *a2, Class *a3)
{
  v18 = a3;
  v6 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_23BDC62F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ConditionTemplateModel(0);
  sub_23BD96394(a1 + *(v13 + 24), v8, &qword_27E1C59F0, &unk_23BDC8F30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_23BD962D4(v8, &qword_27E1C59F0, &unk_23BDC8F30);
    return [objc_allocWithZone(*v18) initWithTextProvider_];
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = sub_23BDAA8B4(v12, *(a1 + *(v13 + 28)));
    v16 = [objc_allocWithZone(*a2) initWithImageProvider_];

    (*(v10 + 8))(v12, v9);
    return v16;
  }
}

id sub_23BDAA8B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  sub_23BDC62B0();
  v6 = sub_23BDC66C0();

  v7 = [objc_opt_self() symbolImageProviderWithSystemName_];

  if (sub_23BDAAA70(a1, v3[3]))
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
  }

  else
  {
    if (sub_23BDAAA70(a1, v3[4]))
    {
      v9 = MEMORY[0x277D75348];
    }

    else
    {
      v10 = sub_23BDAAA70(a1, v3[5]);
      v9 = MEMORY[0x277D75348];
      if ((v10 & 1) == 0 || (v4 & 1) == 0)
      {
        v8 = [objc_opt_self() whiteColor];
        goto LABEL_8;
      }
    }

    v8 = [objc_allocWithZone(v9) initWithRed:0.992156863 green:0.839215686 blue:0.270588235 alpha:1.0];
  }

LABEL_8:
  v11 = v8;
  v12 = v7;
  [v12 setTintColor_];

  sub_23BDC62E0();
  v13 = sub_23BDC66C0();

  [v12 setAccessibilityLabel_];

  return v12;
}

uint64_t sub_23BDAAA70(uint64_t a1, uint64_t a2)
{
  v3 = sub_23BDC62F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_23BDAC434(&qword_27E1C5AE0, 255, MEMORY[0x277CE3328], MEMORY[0x277CE3338]), v7 = sub_23BDC6690(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v17 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v16 = ~v8;
    v10 = v4 + 16;
    v11 = *(v4 + 16);
    v12 = *(v10 + 56);
    v13 = (v10 - 8);
    do
    {
      v11(v6, *(a2 + 48) + v12 * v9, v3);
      sub_23BDAC434(&qword_27E1C5AE8, 255, MEMORY[0x277CE3328], MEMORY[0x277CE3340]);
      v14 = sub_23BDC66B0();
      (*v13)(v6, v3);
      if (v14)
      {
        break;
      }

      v9 = (v9 + 1) & v16;
    }

    while (((*(v17 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_23BDAAC8C()
{

  return swift_deallocClassInstance();
}

id sub_23BDAAD4C(uint64_t a1, unint64_t a2)
{
  v27 = a2;
  v3 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = *(type metadata accessor for ConditionTemplateModel(0) + 24);
  sub_23BD96394(a1 + v9, v8, &qword_27E1C59F0, &unk_23BDC8F30);
  v10 = sub_23BDC62F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) == 1)
  {
    sub_23BD962D4(v8, &qword_27E1C59F0, &unk_23BDC8F30);
LABEL_6:
    v19 = sub_23BDC35E0(v27);
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v22 = 0xE000000000000000;
    if (v20)
    {
      v22 = v20;
    }

    v28 = v21;
    v29 = v22;
    MEMORY[0x23EEBD040](0x726F7065722D6F6ELL, 0xE900000000000074);
    v23 = sub_23BDC66C0();

    v17 = NWCLocalizedImageNamed();

    v24 = [objc_allocWithZone(MEMORY[0x277CBBB10]) initWithFullColorImage:v17 monochromeFilterType:1];
    goto LABEL_14;
  }

  sub_23BDC62B0();
  v14 = v13;
  v26 = *(v11 + 8);
  v26(v8, v10);
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = sub_23BDC66C0();

  v16 = [objc_opt_self() symbolImageProviderWithSystemName_];

  sub_23BD96394(a1 + v9, v6, &qword_27E1C59F0, &unk_23BDC8F30);
  LODWORD(v15) = v12(v6, 1, v10);
  v17 = v16;
  if (v15 == 1)
  {
    sub_23BD962D4(v6, &qword_27E1C59F0, &unk_23BDC8F30);
    v18 = 0;
  }

  else
  {
    sub_23BDC62E0();
    v26(v6, v10);
    v18 = sub_23BDC66C0();
  }

  [v17 setAccessibilityLabel_];

  v24 = v17;
LABEL_14:

  return v24;
}

id sub_23BDAB084(uint64_t a1)
{
  v2 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v137 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v138 = &v122 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  *&v140 = &v122 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v122 - v9;
  v11 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v141 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v142 = &v122 - v16;
  MEMORY[0x28223BE20](v15);
  v143 = &v122 - v17;
  v18 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v122 - v19;
  v21 = *sub_23BDC65E0();
  v22 = type metadata accessor for ConditionTemplateModel(0);
  sub_23BD96394(a1 + v22[6], v20, &qword_27E1C59F0, &unk_23BDC8F30);
  v23 = sub_23BDC62F0();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v20, 1, v23) == 1)
  {

    v25 = &qword_27E1C59F0;
    v26 = &unk_23BDC8F30;
    v27 = v20;
LABEL_3:
    sub_23BD962D4(v27, v25, v26);
LABEL_8:
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v34 = qword_27E1C5B70;
    v35 = sub_23BDC66C0();
    v36 = sub_23BDC66C0();
    v37 = [v34 localizedStringForKey:v35 value:0 table:v36];

    if (!v37)
    {
      sub_23BDC66F0();
      v37 = sub_23BDC66C0();
    }

    v38 = [objc_opt_self() textProviderWithText_];

    goto LABEL_13;
  }

  v139 = v21;

  v28 = sub_23BDC62D0();
  v30 = v29;
  (*(v24 + 8))(v20, v23);
  sub_23BD96394(a1 + v22[8], v10, &qword_27E1C5790, &unk_23BDC92E0);
  v31 = *(v12 + 48);
  if (v31(v10, 1, v11) == 1)
  {
LABEL_7:

    sub_23BD962D4(v10, &qword_27E1C5790, &unk_23BDC92E0);
    goto LABEL_8;
  }

  v134 = v28;
  v136 = v30;
  v32 = *(v12 + 32);
  v33 = v143;
  v32(v143, v10, v11);
  v10 = v140;
  sub_23BD96394(a1 + v22[9], v140, &qword_27E1C5790, &unk_23BDC92E0);
  if (v31(v10, 1, v11) == 1)
  {
    (*(v12 + 8))(v33, v11);
    goto LABEL_7;
  }

  v135 = v12;
  v45 = v10;
  v46 = v142;
  v32(v142, v45, v11);
  v47 = a1 + v22[10];
  v48 = v138;
  sub_23BD96394(v47, v138, &qword_27E1C5790, &unk_23BDC92E0);
  v49 = v31(v48, 1, v11);
  v50 = v139;
  if (v49 == 1)
  {

    v51 = *(v135 + 8);
    v51(v46, v11);
    v51(v143, v11);
    v25 = &qword_27E1C5790;
    v26 = &unk_23BDC92E0;
    v27 = v48;
    goto LABEL_3;
  }

  v124 = a1;
  v32(v141, v48, v11);
  v52 = v135;
  v53 = *(v135 + 16);
  v54 = v137;
  v128 = v135 + 16;
  v138 = v53;
  (v53)(v137, v143, v11);
  v55 = *(v52 + 56);
  v132 = v52 + 56;
  v131 = v55;
  v55(v54, 0, 1, v11);
  v56 = (*v50 + 136);
  v130 = *v56;
  v126 = v56;
  v57 = v130(v54);
  v59 = v58;
  sub_23BD962D4(v54, &qword_27E1C5790, &unk_23BDC92E0);
  v133 = v11;
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v60 = qword_27E1C5B70;
  v61 = sub_23BDC66C0();
  v125 = "uviFormatter";
  v62 = sub_23BDC66C0();
  v63 = [v60 localizedStringForKey:v61 value:0 table:v62];

  sub_23BDC66F0();
  v127 = sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v64 = swift_allocObject();
  v140 = xmmword_23BDC8C50;
  *(v64 + 16) = xmmword_23BDC8C50;
  v65 = MEMORY[0x277D837D0];
  *(v64 + 56) = MEMORY[0x277D837D0];
  v66 = sub_23BD97C54();
  v129 = v66;
  *(v64 + 32) = v57;
  *(v64 + 40) = v59;
  *(v64 + 96) = v65;
  *(v64 + 104) = v66;
  v67 = v134;
  *(v64 + 64) = v66;
  *(v64 + 72) = v67;
  *(v64 + 80) = v136;

  sub_23BDC6700();

  v68 = sub_23BDC66C0();

  v69 = sub_23BDC66C0();

  v134 = objc_opt_self();
  v136 = [v134 textProviderWithText:v68 shortText:v69];

  v70 = qword_27E1C5B70;
  v71 = sub_23BDC66C0();
  v72 = sub_23BDC66C0();
  v73 = [v70 localizedStringForKey:v71 value:0 table:v72];

  v123 = sub_23BDC66F0();
  v122 = v74;

  v75 = swift_allocObject();
  *(v75 + 16) = v140;
  v76 = v133;
  (v138)(v54, v141, v133);
  v77 = v76;
  v78 = v131;
  v131(v54, 0, 1, v77);
  v79 = v130(v54);
  v81 = v80;
  sub_23BD962D4(v54, &qword_27E1C5790, &unk_23BDC92E0);
  v82 = v129;
  *(v75 + 56) = MEMORY[0x277D837D0];
  *(v75 + 64) = v82;
  *(v75 + 32) = v79;
  *(v75 + 40) = v81;
  v83 = v133;
  (v138)(v54, v142, v133);
  v84 = v83;
  v78(v54, 0, 1, v83);
  v85 = v130(v54);
  v87 = v86;
  sub_23BD962D4(v54, &qword_27E1C5790, &unk_23BDC92E0);
  *(v75 + 96) = MEMORY[0x277D837D0];
  *(v75 + 104) = v82;
  *(v75 + 72) = v85;
  *(v75 + 80) = v87;
  sub_23BDC6700();

  v88 = sub_23BDC66C0();

  v89 = [v134 textProviderWithText_];

  v90 = qword_27E1C5B70;
  v134 = v89;
  v91 = v90;
  v92 = sub_23BDC66C0();
  v93 = sub_23BDC66C0();
  v94 = [v91 localizedStringForKey:v92 value:0 table:v93];

  v123 = sub_23BDC66F0();
  v122 = v95;

  v96 = swift_allocObject();
  *(v96 + 16) = v140;
  v97 = v138;
  (v138)(v54, v141, v84);
  v131(v54, 0, 1, v84);
  v98 = v130;
  v99 = v130(v54);
  v101 = v100;
  sub_23BD962D4(v54, &qword_27E1C5790, &unk_23BDC92E0);
  v102 = v129;
  *(v96 + 56) = MEMORY[0x277D837D0];
  *(v96 + 64) = v102;
  *(v96 + 32) = v99;
  *(v96 + 40) = v101;
  v97(v54, v142, v84);
  v131(v54, 0, 1, v84);
  v103 = v98(v54);
  v105 = v104;
  sub_23BD962D4(v54, &qword_27E1C5790, &unk_23BDC92E0);
  v106 = v129;
  *(v96 + 96) = MEMORY[0x277D837D0];
  *(v96 + 104) = v106;
  *(v96 + 72) = v103;
  *(v96 + 80) = v105;
  v107 = v134;
  sub_23BDC6700();

  v108 = sub_23BDC66C0();

  [v107 setAccessibilityLabel_];

  v109 = qword_27E1C5B70;
  v110 = sub_23BDC66C0();
  v111 = sub_23BDC66C0();
  v112 = [v109 localizedStringForKey:v110 value:0 table:v111];

  if (!v112)
  {
    sub_23BDC66F0();
    v112 = sub_23BDC66C0();
  }

  v113 = sub_23BDAC0C0();
  inited = swift_initStackObject();
  *(inited + 16) = v140;
  *(inited + 56) = v113;
  v115 = sub_23BDAC434(&unk_27E1C58B0, 255, sub_23BDAC0C0, MEMORY[0x277D85388]);
  v116 = v136;
  *(inited + 32) = v136;
  *(inited + 96) = v113;
  *(inited + 104) = v115;
  *(inited + 64) = v115;
  *(inited + 72) = v107;
  v117 = v107;
  v118 = v116;
  v119 = sub_23BDC69C0();
  swift_setDeallocating();
  sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
  swift_arrayDestroy();
  v38 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v112 arguments:v119];

  v120 = *(v135 + 8);
  v121 = v133;
  v120(v141, v133);
  v120(v142, v121);
  v120(v143, v121);
  a1 = v124;
LABEL_13:
  v39 = v38;
  v40 = sub_23BDAAD4C(a1, 0xAuLL);
  v41 = [objc_allocWithZone(MEMORY[0x277CBB850]) initWithImageProvider_];
  v42 = sub_23BDB1C20();

  objc_opt_self();
  v43 = [objc_allocWithZone(MEMORY[0x277CBB810]) initWithCircularTemplate:swift_dynamicCastObjCClassUnconditional() textProvider:v39];

  return v43;
}

unint64_t sub_23BDAC0C0()
{
  result = qword_27E1C5D30;
  if (!qword_27E1C5D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C5D30);
  }

  return result;
}

uint64_t sub_23BDAC10C(uint64_t a1)
{
  v2 = sub_23BDC62F0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_23BD9628C(&qword_27E1C5AD8, &qword_23BDC9218);
    v9 = sub_23BDC6890();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_23BDAC434(&qword_27E1C5AE0, 255, MEMORY[0x277CE3328], MEMORY[0x277CE3338]);
      v16 = sub_23BDC6690();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_23BDAC434(&qword_27E1C5AE8, 255, MEMORY[0x277CE3328], MEMORY[0x277CE3340]);
          v23 = sub_23BDC66B0();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23BDAC434(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_23BDAC47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_23BDC62F0();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BDC6590();
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BDC6360();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7);
  v64 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BDC61B0();
  v76 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v60 - v13;
  v15 = sub_23BD9628C(&qword_27E1C5A20, &qword_23BDC8F68);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v72 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v60 - v21;
  v23 = sub_23BDC6010();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v77 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v60 - v27;
  v29 = *(v24 + 16);
  v73 = v30;
  v70 = v29;
  (v29)(&v60 - v27, a1);
  v68 = type metadata accessor for TemplateData(0);
  v31 = *(v68 + 20);
  v74 = a1;
  sub_23BD96394(a1 + v31, v14, &qword_27E1C5960, &qword_23BDC8F50);
  v32 = sub_23BDC6240();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v14, 1, v32) == 1)
  {
    sub_23BD962D4(v14, &qword_27E1C5960, &qword_23BDC8F50);
    v34 = v76;
    (*(v76 + 56))(v22, 1, 1, v9);
  }

  else
  {
    sub_23BDC61E0();
    (*(v33 + 8))(v14, v32);
    v34 = v76;
  }

  sub_23BD96394(v22, v20, &qword_27E1C5A20, &qword_23BDC8F68);
  v67 = *(v34 + 48);
  v69 = v67(v20, 1, v9);
  if (v69 == 1)
  {
    v71 = 0xD000000000000013;
    sub_23BD962D4(v20, &qword_27E1C5A20, &qword_23BDC8F68);
    v66 = "WIND_UNIT_AVOID_ALL_UPPERCASE";
    v35 = 0;
    goto LABEL_11;
  }

  (*(v34 + 32))(v11, v20, v9);
  sub_23BDC6160();
  v35 = v36;
  v37 = v64;
  sub_23BDC6150();
  v38 = (*(v65 + 88))(v37, v66);
  if (v38 == *MEMORY[0x277CE3388])
  {
    v71 = 0xD000000000000013;
    (*(v34 + 8))(v11, v9);
    v39 = "CHANCE_OF_HAIL_TEXT";
LABEL_8:
    v66 = v39 - 32;
    goto LABEL_11;
  }

  if (v38 != *MEMORY[0x277CE33B0])
  {
    v58 = *MEMORY[0x277CE33A0];
    v59 = v38;
    (*(v76 + 8))(v11, v9);
    v71 = 0xD000000000000013;
    if (v59 == v58)
    {
      v39 = "CHANCE_OF_SNOW_TEXT";
    }

    else
    {
      (*(v65 + 8))(v64, v66);
      v39 = "CHANCE_OF_RAIN_TEXT";
    }

    goto LABEL_8;
  }

  (*(v76 + 8))(v11, v9);
  v66 = "CHANCE_OF_SNOW_TEXT";
  v71 = 0xD000000000000014;
LABEL_11:
  v40 = *(**sub_23BDC6620() + 152);

  v41 = v40(v22, 0, 0, 1);
  v43 = v42;

  v44 = v73;
  v70(v77, v28, v73);
  sub_23BD9CC98(v74 + *(v68 + 24), v78);
  v45 = v72;
  sub_23BD96394(v22, v72, &qword_27E1C5A20, &qword_23BDC8F68);
  if (v67(v45, 1, v9) == 1)
  {
    sub_23BD962D4(v22, &qword_27E1C5A20, &qword_23BDC8F68);
    (*(v24 + 8))(v28, v44);
    sub_23BD962D4(v45, &qword_27E1C5A20, &qword_23BDC8F68);
    v46 = 0;
  }

  else
  {
    v47 = v45;
    v48 = v61;
    sub_23BDC61A0();
    v49 = (*(v76 + 8))(v47, v9);
    v46 = MEMORY[0x23EEBCBD0](v49);
    (*(v62 + 8))(v48, v63);
    sub_23BD962D4(v22, &qword_27E1C5A20, &qword_23BDC8F68);
    (*(v24 + 8))(v28, v44);
  }

  v50 = v69 == 1;
  v51 = v66 | 0x8000000000000000;
  v52 = v75;
  (*(v24 + 32))(v75, v77, v44);
  v53 = type metadata accessor for ChanceRainTemplateModel(0);
  result = sub_23BDA8FD4(v78, v52 + v53[5]);
  v55 = v52 + v53[6];
  *v55 = v35;
  *(v55 + 8) = v50;
  v56 = (v52 + v53[7]);
  *v56 = v41;
  v56[1] = v43;
  *(v52 + v53[8]) = v46 & 1;
  v57 = (v52 + v53[9]);
  *v57 = v71;
  v57[1] = v51;
  return result;
}

uint64_t sub_23BDACD38(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_23BDACD70@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(**sub_23BDC6620() + 136);

  v5 = v4(0x3FE3333333333333, 0, 1);
  v7 = v6;

  sub_23BD9D208();
  result = sub_23BD9D20C();
  v9 = a1[7];
  v10 = a2 + a1[6];
  *v10 = 0x3FE3333333333333;
  *(v10 + 8) = 0;
  v11 = (a2 + v9);
  *v11 = v5;
  v11[1] = v7;
  v12 = a1[9];
  *(a2 + a1[8]) = 1;
  v13 = (a2 + v12);
  *v13 = 0xD000000000000013;
  v13[1] = 0x800000023BDC7AF0;
  return result;
}

unint64_t sub_23BDACE64(uint64_t a1)
{
  result = sub_23BDACE8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BDACE8C()
{
  result = qword_27E1C5AF0;
  if (!qword_27E1C5AF0)
  {
    type metadata accessor for ChanceRainTemplateModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5AF0);
  }

  return result;
}

uint64_t type metadata accessor for ChanceRainTemplateModel(uint64_t a1)
{
  result = qword_27E1C5AF8;
  if (!qword_27E1C5AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDACF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BDC6590();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23BDAD068(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_23BDC6590();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_23BDAD174(uint64_t a1)
{
  sub_23BDC6010();
  if (v1 <= 0x3F)
  {
    sub_23BDC6590();
    if (v2 <= 0x3F)
    {
      sub_23BDAD224();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BDAD224()
{
  if (!qword_27E1C5B08)
  {
    v0 = sub_23BDC6850();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C5B08);
    }
  }
}

uint64_t sub_23BDAD274()
{
  v1 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  v4 = type metadata accessor for ConditionTemplateModel(0);
  sub_23BD96394(v0 + *(v4 + 24), v3, &qword_27E1C59F0, &unk_23BDC8F30);
  v5 = sub_23BDC62F0();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_23BD962D4(v3, &qword_27E1C59F0, &unk_23BDC8F30);
    v7 = 0xE200000000000000;
    v8 = 11565;
  }

  else
  {
    v9 = sub_23BDC62D0();
    v7 = v10;
    (*(v6 + 8))(v3, v5);
    v8 = v9;
  }

  MEMORY[0x23EEBD040](v8, v7);

  return v12[0];
}

uint64_t sub_23BDAD3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v79 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v78 = &v71 - v7;
  MEMORY[0x28223BE20](v6);
  v77 = &v71 - v8;
  v9 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  MEMORY[0x28223BE20](v9 - 8);
  v86 = &v71 - v10;
  v72 = sub_23BDC6590();
  MEMORY[0x28223BE20](v72);
  v85 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BD9628C(&qword_27E1C5B18, &unk_23BDC92F0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v76 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v74 = &v71 - v16;
  MEMORY[0x28223BE20](v15);
  v87 = &v71 - v17;
  v18 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v71 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v71 - v25;
  v27 = sub_23BDC6010();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v83 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v71 - v31;
  v75 = v28;
  v33 = *(v28 + 16);
  v84 = v34;
  v33(&v71 - v31, a1);
  v35 = type metadata accessor for TemplateData(0);
  v36 = *(v35 + 20);
  v73 = a1;
  sub_23BD96394(a1 + v36, v26, &qword_27E1C5960, &qword_23BDC8F50);
  v82 = v26;
  sub_23BD96394(v26, v24, &qword_27E1C5960, &qword_23BDC8F50);
  v37 = sub_23BDC6240();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v40 = v39(v24, 1, v37);
  v81 = v32;
  if (v40 == 1)
  {
    sub_23BD962D4(v24, &qword_27E1C5960, &qword_23BDC8F50);
    memset(v91, 0, sizeof(v91));
    v92 = 0;
  }

  else
  {
    sub_23BDC6200();
    (*(v38 + 8))(v24, v37);
  }

  sub_23BD96394(v82, v21, &qword_27E1C5960, &qword_23BDC8F50);
  if (v39(v21, 1, v37) == 1)
  {
    sub_23BD962D4(v21, &qword_27E1C5960, &qword_23BDC8F50);
    v41 = sub_23BDC6110();
    (*(*(v41 - 8) + 56))(v87, 1, 1, v41);
  }

  else
  {
    sub_23BDC61C0();
    (*(v38 + 8))(v21, v37);
  }

  v42 = v79;
  v43 = v77;
  v44 = v76;
  v45 = v73;
  v46 = v73 + *(v35 + 24);
  LODWORD(v79) = sub_23BDC6820();
  (v33)(v83, v45, v84);
  sub_23BD9CC98(v46, v85);
  sub_23BD96394(v91, v88, &qword_27E1C59A8, &unk_23BDC8EC0);
  v47 = v89;
  if (v89)
  {
    v48 = v90;
    sub_23BD9CCFC(v88, v89);
    v49 = v86;
    (*(v48 + 40))(v47, v48);
    v50 = sub_23BDC62F0();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    sub_23BD9CD40(v88);
  }

  else
  {
    sub_23BD962D4(v88, &qword_27E1C59A8, &unk_23BDC8EC0);
    v51 = sub_23BDC62F0();
    (*(*(v51 - 8) + 56))(v86, 1, 1, v51);
  }

  v52 = v78;
  sub_23BD96394(v91, v88, &qword_27E1C59A8, &unk_23BDC8EC0);
  v53 = v89;
  if (v89)
  {
    v54 = v90;
    sub_23BD9CCFC(v88, v89);
    (*(v54 + 88))(v53, v54);
    v55 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
    (*(*(v55 - 8) + 56))(v43, 0, 1, v55);
    sub_23BD9CD40(v88);
  }

  else
  {
    sub_23BD962D4(v88, &qword_27E1C59A8, &unk_23BDC8EC0);
    v56 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
    (*(*(v56 - 8) + 56))(v43, 1, 1, v56);
  }

  v57 = v74;
  sub_23BD96394(v87, v74, &qword_27E1C5B18, &unk_23BDC92F0);
  v58 = sub_23BDC6110();
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  if (v60(v57, 1, v58) == 1)
  {
    sub_23BD962D4(v57, &qword_27E1C5B18, &unk_23BDC92F0);
    v61 = 1;
  }

  else
  {
    sub_23BDC60D0();
    (*(v59 + 8))(v57, v58);
    v61 = 0;
  }

  v62 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  (*(*(v62 - 8) + 56))(v52, v61, 1, v62);
  v63 = v87;
  sub_23BD96394(v87, v44, &qword_27E1C5B18, &unk_23BDC92F0);
  if (v60(v44, 1, v58) == 1)
  {
    sub_23BD962D4(v63, &qword_27E1C5B18, &unk_23BDC92F0);
    sub_23BD962D4(v91, &qword_27E1C59A8, &unk_23BDC8EC0);
    sub_23BD962D4(v82, &qword_27E1C5960, &qword_23BDC8F50);
    v64 = v75;
    v65 = v84;
    (*(v75 + 8))(v81, v84);
    sub_23BD962D4(v44, &qword_27E1C5B18, &unk_23BDC92F0);
    v66 = 1;
  }

  else
  {
    sub_23BDC60E0();
    sub_23BD962D4(v63, &qword_27E1C5B18, &unk_23BDC92F0);
    sub_23BD962D4(v91, &qword_27E1C59A8, &unk_23BDC8EC0);
    sub_23BD962D4(v82, &qword_27E1C5960, &qword_23BDC8F50);
    v64 = v75;
    v65 = v84;
    (*(v75 + 8))(v81, v84);
    (*(v59 + 8))(v44, v58);
    v66 = 0;
  }

  v67 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  (*(*(v67 - 8) + 56))(v42, v66, 1, v67);
  v68 = v80;
  (*(v64 + 32))(v80, v83, v65);
  v69 = type metadata accessor for ConditionTemplateModel(0);
  sub_23BDA8FD4(v85, v68 + v69[5]);
  sub_23BDA1D38(v86, v68 + v69[6], &qword_27E1C59F0, &unk_23BDC8F30);
  *(v68 + v69[7]) = v79 & 1;
  sub_23BDA1D38(v43, v68 + v69[8], &qword_27E1C5790, &unk_23BDC92E0);
  sub_23BDA1D38(v52, v68 + v69[9], &qword_27E1C5790, &unk_23BDC92E0);
  return sub_23BDA1D38(v42, v68 + v69[10], &qword_27E1C5790, &unk_23BDC92E0);
}

unint64_t sub_23BDADF58(uint64_t a1)
{
  result = sub_23BDADF80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BDADF80()
{
  result = qword_27E1C5B10;
  if (!qword_27E1C5B10)
  {
    type metadata accessor for ConditionTemplateModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5B10);
  }

  return result;
}

uint64_t type metadata accessor for ConditionTemplateModel(uint64_t a1)
{
  result = qword_27E1C5B20;
  if (!qword_27E1C5B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDAE038(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BDC6590();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 254)
  {
    v16 = *(a1 + a3[7]);
    if (v16 >= 2)
    {
      return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_23BDAE22C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_23BDC6590();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 254)
  {
    *(a1 + a4[7]) = a2 + 1;
  }

  else
  {
    v17 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[8];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

void sub_23BDAE3FC(uint64_t a1)
{
  sub_23BDC6010();
  if (v1 <= 0x3F)
  {
    sub_23BDC6590();
    if (v2 <= 0x3F)
    {
      sub_23BDAE4C0(319);
      if (v3 <= 0x3F)
      {
        sub_23BDAE518(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23BDAE4C0(uint64_t a1)
{
  if (!qword_27E1C5B30)
  {
    sub_23BDC62F0();
    v1 = sub_23BDC6850();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1C5B30);
    }
  }
}

void sub_23BDAE518(uint64_t a1)
{
  if (!qword_27E1C5B38)
  {
    sub_23BD9B8CC(&qword_27E1C5798, &unk_23BDC8D40);
    v1 = sub_23BDC6850();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1C5B38);
    }
  }
}

uint64_t sub_23BDAE57C@<X0>(void *a1@<X8>)
{
  v77 = a1;
  v1 = sub_23BDC6010();
  v72 = *(v1 - 8);
  v73 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v70 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v68 = &v60 - v4;
  sub_23BD9628C(&qword_27E1C5B48, &qword_23BDC9370);
  v5 = sub_23BD9628C(&qword_27E1C5B50, &qword_23BDC9378);
  v65 = v5;
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v69 = 4 * v6;
  v8 = swift_allocObject();
  v67 = v8;
  *(v8 + 16) = xmmword_23BDC88C0;
  v9 = v8 + v7;
  v10 = *(v5 + 48);
  v11 = objc_opt_self();
  v12 = [v11 fahrenheit];
  v76 = sub_23BD96820(0, &qword_27E1C5AA0, 0x277CCAE48);
  sub_23BDC5F40();
  v13 = *MEMORY[0x277CE3250];
  v14 = sub_23BDC62F0();
  v71 = *(v14 - 8);
  v16 = v71 + 104;
  v15 = *(v71 + 104);
  v74 = v9;
  v75 = v13;
  v61 = v14;
  v15(v9 + v10, v13, v14);
  v62 = v6;
  v17 = v9 + v6;
  v18 = v65;
  v19 = *(v65 + 48);
  v20 = [v11 fahrenheit];
  sub_23BDC5F40();
  v64 = v16;
  v63 = v15;
  v15(v17 + v19, v13, v14);
  v21 = 2 * v6;
  v22 = v74;
  v23 = v74 + 2 * v6;
  v24 = *(v18 + 48);
  v25 = [v11 fahrenheit];
  sub_23BDC5F40();
  v26 = v23 + v24;
  v27 = v75;
  v28 = v61;
  v15(v26, v75, v61);
  v29 = v22 + v21 + v62;
  v30 = v22;
  v31 = v18;
  v32 = *(v18 + 48);
  v66 = v11;
  v33 = [v11 fahrenheit];
  sub_23BDC5F40();
  v34 = v28;
  v35 = v63;
  v63(v29 + v32, *MEMORY[0x277CE32B0], v28);
  v36 = v30 + v69;
  v37 = *(v31 + 48);
  v38 = [v11 fahrenheit];
  sub_23BDC5F40();
  v35(v36 + v37, v27, v34);
  v82 = 0;
  v83 = MEMORY[0x277D84F90];
  v39 = *sub_23BDC65E0();
  v69 = v39;

  v40 = v68;
  sub_23BD9D208();
  v41 = v70;
  sub_23BDC5F80();
  v78 = v39;
  v79 = v67;
  v80 = &v82;
  v81 = &v83;
  sub_23BDC5FD0();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v42 = v73;
  v43 = *(v72 + 8);
  v43(v41, v73);
  v43(v40, v42);
  v74 = v83;
  v44 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
  sub_23BD96820(0, &qword_27E1C5688, 0x277D2C7C0);
  v45 = sub_23BDC6770();
  v73 = [v44 initWithEntries_];

  v46 = v77 + *(type metadata accessor for ConditionRectangularTemplateModel(0) + 20);
  sub_23BD9D208();
  v47 = type metadata accessor for ConditionTemplateModel(0);
  sub_23BD9D20C();
  v48 = v47[6];
  v35(&v46[v48], v75, v34);
  (*(v71 + 56))(&v46[v48], 0, 1, v34);
  v49 = v47[8];
  v50 = v66;
  v51 = [v66 fahrenheit];
  sub_23BDC5F40();
  v52 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v53 = *(*(v52 - 8) + 56);
  v53(&v46[v49], 0, 1, v52);
  v54 = v47[9];
  v55 = [v50 fahrenheit];
  sub_23BDC5F40();
  v53(&v46[v54], 0, 1, v52);
  v56 = v47[10];
  v57 = [v50 fahrenheit];
  sub_23BDC5F40();
  v53(&v46[v56], 0, 1, v52);
  v46[v47[7]] = 1;
  v58 = v77;
  sub_23BD9D208();
  sub_23BD9D20C();

  *v58 = v73;
  return result;
}

uint64_t sub_23BDAECBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v10 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v47 - v11;
  v13 = sub_23BD9628C(&qword_27E1C5B50, &qword_23BDC9378);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v47 - v15;
  v17 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v47 - v18;
  v20 = *a4;
  if ((*a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v21 = *(a3 + 16);
  if (v20 >= v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v50 = a5;
  v51 = v12;
  v53 = v21;
  v22 = a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v12 = *(v14 + 72);
  v47[1] = a1;
  v48 = v22;
  sub_23BD96394(v22 + v12 * v20, v16, &qword_27E1C5B50, &qword_23BDC9378);
  v52 = *(v13 + 48);
  v23 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v24 = a4;
  a4 = *(v23 - 8);
  (a4[4])(v19, v16, v23);
  (a4[7])(v19, 0, 1, v23);
  v49 = (*(*a2 + 152))(v19, 1, 1);
  v26 = v25;
  sub_23BD962D4(v19, &qword_27E1C5790, &unk_23BDC92E0);
  v27 = sub_23BDC62F0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 8);
  v30 = v13;
  v13 = v28 + 8;
  v29(&v16[v52], v27);
  v31 = *v24;
  if (*v24 >= v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v53 = v26;
  sub_23BD96394(v48 + v31 * v12, v16, &qword_27E1C5B50, &qword_23BDC9378);
  v32 = *(v30 + 48);
  v52 = sub_23BDC62B0();
  v12 = v33;
  v29(&v16[v32], v27);
  (a4[1])(v16, v23);
  a4 = v24;
  if (!*v24)
  {
    v38 = 0;
    v13 = v51;
    goto LABEL_8;
  }

  v13 = v51;
  if (qword_27E1C55D8 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v34 = qword_27E1C5B78;
    v35 = sub_23BDC5FA0();
    v36 = [v34 stringFromDate_];

    sub_23BDC66F0();
    v38 = v37;

LABEL_8:
    sub_23BDC60B0();
    v39 = sub_23BDC60C0();
    v40 = *(v39 - 8);
    (*(v40 + 56))(v13, 0, 1, v39);
    v41 = sub_23BDC66C0();

    if (v12)
    {
      v42 = sub_23BDC66C0();

      if (v38)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v42 = 0;
      if (v38)
      {
LABEL_10:
        v43 = sub_23BDC66C0();

        goto LABEL_13;
      }
    }

    v43 = 0;
LABEL_13:
    if ((*(v40 + 48))(v13, 1, v39) == 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = sub_23BDC60A0();
      (*(v40 + 8))(v13, v39);
    }

    v12 = [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v41 middleString:v42 bottomString:v43 isDay:1 timeZone:v44];

    v45 = v50;
    MEMORY[0x23EEBD070]();
    if (*((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_22:
      sub_23BDC6790();
    }

    result = sub_23BDC67A0();
    if (!__OFADD__(*a4, 1))
    {
      break;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  ++*a4;
  return result;
}

uint64_t sub_23BDAF28C(uint64_t a1)
{
  result = sub_23BDAFE48(&qword_27E1C5B40, type metadata accessor for ConditionRectangularTemplateModel, &unk_23BDC933C);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ConditionRectangularTemplateModel(uint64_t a1)
{
  result = qword_27E1C5B58;
  if (!qword_27E1C5B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDAF330(uint64_t a1, uint64_t a2, int a3)
{
  v48 = a3;
  v39 = a1;
  v4 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v39 - v7;
  v8 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v39 - v9;
  v10 = sub_23BD9628C(&qword_27E1C5660, &qword_23BDC89F0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v39 - v17;
  v19 = sub_23BDC62F0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  sub_23BD96394(a2, v15, &qword_27E1C5660, &qword_23BDC89F0);
  v23 = sub_23BDC6280();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v26 = v25(v15, 1, v23);
  v41 = v22;
  if (v26 == 1)
  {
    sub_23BD962D4(v15, &qword_27E1C5660, &qword_23BDC89F0);
    (*(v20 + 56))(v18, 1, 1, v19);
    sub_23BDC61A0();
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      sub_23BD962D4(v18, &qword_27E1C59F0, &unk_23BDC8F30);
    }
  }

  else
  {
    sub_23BDC6270();
    (*(v24 + 8))(v15, v23);
    (*(v20 + 56))(v18, 0, 1, v19);
    (*(v20 + 32))(v22, v18, v19);
  }

  v45 = v19;
  sub_23BD96394(v40, v13, &qword_27E1C5660, &qword_23BDC89F0);
  if (v25(v13, 1, v23) == 1)
  {
    sub_23BD962D4(v13, &qword_27E1C5660, &qword_23BDC89F0);
    v27 = v42;
    v28 = v43;
    v29 = *(v43 + 56);
    v30 = v44;
    v29(v42, 1, 1, v44);
    v31 = v46;
    sub_23BDC6140();
    if ((*(v28 + 48))(v27, 1, v30) != 1)
    {
      sub_23BD962D4(v27, &qword_27E1C5790, &unk_23BDC92E0);
    }
  }

  else
  {
    v32 = v42;
    sub_23BDC6250();
    (*(v24 + 8))(v13, v23);
    v28 = v43;
    v30 = v44;
    v29 = *(v43 + 56);
    v29(v32, 0, 1, v44);
    v31 = v46;
    (*(v28 + 32))(v46, v32, v30);
  }

  v33 = *sub_23BDC65E0();
  v34 = v47;
  (*(v28 + 16))(v47, v31, v30);
  v29(v34, 0, 1, v30);
  v35 = *(*v33 + 152);

  v36 = v35(v34, 1, 1);
  sub_23BD962D4(v34, &qword_27E1C5790, &unk_23BDC92E0);
  v37 = v41;
  sub_23BDC62B0();

  (*(v28 + 8))(v31, v30);
  (*(v20 + 8))(v37, v45);
  return v36;
}

uint64_t sub_23BDAF9A0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for ConditionTemplateModel(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_23BDAFB20(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ConditionTemplateModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23BDAFC8C(uint64_t a1)
{
  result = sub_23BD96820(319, &qword_27E1C56B8, 0x277D2C7B8);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ConditionTemplateModel(319);
    if (v3 <= 0x3F)
    {
      result = sub_23BDC6010();
      if (v4 <= 0x3F)
      {
        result = sub_23BDC6590();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23BDAFD98(uint64_t a1)
{
  result = sub_23BDAFE48(&unk_27E1C5780, type metadata accessor for ConditionRectangularTemplateModel, &unk_23BDC9320);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BDAFDF0(uint64_t a1)
{
  result = sub_23BDAFE48(&qword_27E1C5B68, type metadata accessor for ConditionRectangularTemplateModel, &unk_23BDC93A4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BDAFE48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_23BDAFE90()
{
  type metadata accessor for NWCBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27E1C5B70 = result;
  return result;
}

id CLKTextProvider.init(nwcFormat:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_23BDC69C0();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_23BDC66C0();

  v6 = [ObjCClassFromMetadata textProviderWithFormat:v5 arguments:v3];

  return v6;
}

uint64_t sub_23BDAFFA8()
{
  v1 = [v0 hourlyEntryModels];
  sub_23BDA182C();
  v2 = sub_23BDC6780();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    return 1;
  }

  result = sub_23BDC6930();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEBD1D0](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;

    v6 = [v5 topString];
    if (v6)
    {
      v7 = v6;

      return 0;
    }

    v8 = [v5 middleString];
    if (v8)
    {

      return 0;
    }

    return 1;
  }

  __break(1u);
  return result;
}

void sub_23BDB00D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_23BDC66C0();
  [v0 setDateFormat_];

  qword_27E1C5B78 = v0;
}

char *sub_23BDB021C(void *a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR____TtC20WeatherComplications12UVDataSource_rectangularFormatter;
  if (qword_27E1C5608 != -1)
  {
    swift_once();
  }

  *&v3[v7] = xmmword_27E1C77D0;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for UVDataSource(0);
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2(&v13, sel_initWithComplication_family_forDevice_, a1, a2, a3);
  v9 = qword_27E1C55A0;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = xmmword_27E1C7750;
  swift_unknownObjectRetain();

  *&v10[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter] = v12;
  swift_unknownObjectRelease();
  return v10;
}

id sub_23BDB04EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UVDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UVDataSource(uint64_t a1)
{
  result = qword_27E1C5B88;
  if (!qword_27E1C5B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BDB05CC(uint64_t a1)
{
  v2 = sub_23BDC6650();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDC6640();
  v6 = sub_23BDC6630();
  v7 = sub_23BDC6810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23BD93000, v6, v7, "Migrating to widget.", v8, 2u);
    MEMORY[0x23EEBD7D0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = objc_allocWithZone(MEMORY[0x277CBBBD0]);
  v10 = sub_23BDC66C0();
  v11 = sub_23BDC66C0();
  v12 = sub_23BDC66C0();
  v13 = [v9 initWithExtensionBundleIdentifier:v10 containerBundleIdentifier:v11 kind:v12 intent:0];

  (*(a1 + 16))(a1, v13);
}

uint64_t sub_23BDB07EC()
{
  type metadata accessor for ChanceRainRectangularTemplateFormatter();
  v0 = swift_allocObject();
  *(v0 + 16) = *sub_23BDC6620();
  v2 = sub_23BDB137C(&unk_27E1C5BD0, v1, type metadata accessor for ChanceRainRectangularTemplateFormatter, &unk_23BDC9498);
  qword_27E1C7790 = v0;
  *algn_27E1C7798 = v2;
}