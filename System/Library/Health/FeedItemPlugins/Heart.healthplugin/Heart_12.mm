unint64_t sub_29D7D9528()
{
  result = qword_2A17B52F0;
  if (!qword_2A17B52F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B52F0);
  }

  return result;
}

unint64_t sub_29D7D9580()
{
  result = qword_2A17B52F8;
  if (!qword_2A17B52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B52F8);
  }

  return result;
}

BOOL sub_29D7D9654(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = a2 < 0x40u && a1 == a2;
  v4 = ((a2 ^ a1) & 1) == 0;
  if ((a2 & 0xC0) != 0x40)
  {
    v4 = 0;
  }

  v5 = ((a2 ^ a1) & 0x3F) == 0;
  if ((a2 & 0xC0) != 0x80)
  {
    v5 = 0;
  }

  if (a1 >> 6 == 1)
  {
    v5 = v4;
  }

  if (a1 >> 6)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_29D7D96A8(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_29D7D96B8(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_29D933DA8();
  if (v4 == 1)
  {
    v8 = sub_29D933D88();
    v9 = sub_29D933DB8();
    (*(*(v9 - 8) + 8))(a1, v9);
    if (v8 == 1)
    {
      v10 = 65;
    }

    else
    {
      v10 = -4;
    }

    if (v8)
    {
      return v10;
    }

    else
    {
      return 64;
    }
  }

  else if (v4)
  {
    v11 = sub_29D933DB8();
    (*(*(v11 - 8) + 8))(a1, v11);
    return 252;
  }

  else
  {
    v5 = sub_29D933D88();
    v6 = sub_29D933DB8();
    result = (*(*(v6 - 8) + 8))(a1, v6);
    if (a2 == 4)
    {
      goto LABEL_14;
    }

    if (a2 + 1 == v5)
    {
      return a2 | 0xFFFFFF80;
    }

    v12 = v5 > a2;
    v13 = __OFSUB__(v5, v12);
    v5 -= v12;
    if (v13)
    {
      __break(1u);
    }

    else
    {
LABEL_14:
      if (v5 >= 4)
      {
        return 4294967292;
      }

      else
      {
        return v5;
      }
    }
  }

  return result;
}

void (*sub_29D7D9818(uint64_t a1))(_BYTE *, void)
{
  v2 = v1;
  v3 = sub_29D933DB8();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v30[-v10];
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v30[-v14];
  v16 = sub_29D7D6A20(v31);
  v18 = v17;
  v19 = sub_29D935AB8();
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    sub_29D935A28();
  }

  (v16)(v31, 0);
  v20 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_29D7D9B18(v2 + v20, v15);
  sub_29D7D8280(0, v15, v31);
  sub_29D7DA48C(v15, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  MEMORY[0x29ED64160](0, 0);
  v21 = *(v2 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_visiblePicker);
  if (v21 != 4)
  {
    v22 = sub_29D933D88() > v21;
    result = sub_29D933D78();
    if (__OFADD__(*v24, v22))
    {
      __break(1u);
      return result;
    }

    *v24 += v22;
    result(v30, 0);
  }

  (*(v4 + 32))(v11, v8, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v27 = v32;
    v28 = v33;
    v29 = sub_29D693E2C(v31, v32);
    sub_29D8256BC(v11, v29, v26, v27, *(v28 + 8));
    sub_29D936978();
  }

  (*(v4 + 8))(v11, v3);
  return sub_29D69417C(v31);
}

uint64_t sub_29D7D9B18(uint64_t a1, uint64_t a2)
{
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*sub_29D7D9B98(void *a1, void (*a2)(void *), int a3, uint64_t a4))(_BYTE *, void)
{
  v38 = a4;
  v37 = a3;
  v36 = a2;
  v5 = v4;
  v7 = sub_29D933DB8();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v35 - v14;
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v19 = &v35 - v18;
  v20 = sub_29D7D6A20(v40);
  v22 = v21;
  v23 = sub_29D935AB8();
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    v24 = a1;
    v36(a1);
  }

  (v20)(v40, 0);
  v25 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_29D7D9B18(v5 + v25, v19);
  sub_29D7D8280(v37, v19, v40);
  sub_29D7DA48C(v19, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  MEMORY[0x29ED64160](v38, 0);
  v26 = *(v5 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_visiblePicker);
  if (v26 != 4)
  {
    v27 = sub_29D933D88() > v26;
    result = sub_29D933D78();
    if (__OFADD__(*v29, v27))
    {
      __break(1u);
      return result;
    }

    *v29 += v27;
    result(v39, 0);
  }

  (*(v8 + 32))(v15, v12, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v32 = v41;
    v33 = v42;
    v34 = sub_29D693E2C(v40, v41);
    sub_29D8256BC(v15, v34, v31, v32, *(v33 + 8));
    sub_29D936978();
  }

  (*(v8 + 8))(v15, v7);
  return sub_29D69417C(v40);
}

void (*sub_29D7D9EAC(uint64_t a1))(char *, void)
{
  v2 = v1;
  v4 = sub_29D933DB8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v40 - v11;
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v40 - v15;
  sub_29D7DA298(0, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v20 = &v40 - v19;
  v21 = sub_29D7D6A20(v43);
  v23 = v22;
  v24 = sub_29D935AB8();
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    v25 = sub_29D933318();
    v41 = v4;
    v26 = v25;
    v27 = a1;
    v28 = *(v25 - 8);
    (*(v28 + 16))(v20, v27, v25);
    v29 = v26;
    v4 = v41;
    (*(v28 + 56))(v20, 0, 1, v29);
    sub_29D935A68();
  }

  (v21)(v43, 0);
  v30 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_29D7D9B18(v2 + v30, v16);
  sub_29D7D8280(1u, v16, v43);
  sub_29D7DA48C(v16, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  MEMORY[0x29ED64160](1, 0);
  v31 = *(v2 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_visiblePicker);
  if (v31 != 4)
  {
    v32 = sub_29D933D88() > v31;
    result = sub_29D933D78();
    if (__OFADD__(*v34, v32))
    {
      __break(1u);
      return result;
    }

    *v34 += v32;
    result(v42, 0);
  }

  (*(v5 + 32))(v12, v9, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v38 = v44;
    v37 = v45;
    v39 = sub_29D693E2C(v43, v44);
    sub_29D8256BC(v12, v39, v36, v38, *(v37 + 8));
    sub_29D936978();
  }

  (*(v5 + 8))(v12, v4);
  return sub_29D69417C(v43);
}

void sub_29D7DA298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_29D7DA320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D7DA368(uint64_t a1, uint64_t a2)
{
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7DA3E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6[1] = *(v2 + 16);
  result = sub_29D823698(sub_29D7DA2EC, v6, v4);
  *a2 = result;
  return result;
}

void sub_29D7DA43C()
{
  if (!qword_2A17B5370)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5370);
    }
  }
}

uint64_t sub_29D7DA48C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D7DA298(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D7DA4FC()
{
  result = qword_2A17B5378;
  if (!qword_2A17B5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5378);
  }

  return result;
}

uint64_t sub_29D7DA554@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v8 = sub_29D933F58();
  v42 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D9340F8();
  v43 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D933FE8();
  v17 = sub_29D933FD8();

  if ((v17 & 1) == 0 || v4 > 0xFDu)
  {
LABEL_11:
    v24 = *(v43 + 56);

    return v24(a4, 1, 1, v12);
  }

  if (v4 >> 6)
  {
    if (v4 >> 6 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (a2)
  {
LABEL_7:
    v18 = sub_29D934278();
    goto LABEL_9;
  }

  v18 = sub_29D934268();
LABEL_9:
  v20 = v18;
  v21 = v19;
  v22 = sub_29D7DADB4(a2, v4);
  if (v23 >> 60 == 15)
  {

    goto LABEL_11;
  }

  v38 = v20;
  v40 = v23;
  v41 = v22;
  if (qword_2A1A23538 != -1)
  {
    swift_once();
  }

  v26 = qword_2A1A2BDC0;
  sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
  v39 = v26;
  v27 = sub_29D93A0F8();
  sub_29D6CBFE8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 32) = v38;
  v29 = inited + 32;
  *(inited + 40) = v21;
  v38 = sub_29D7DB014(inited, v27);
  swift_setDeallocating();
  sub_29D6AA360(v29);
  v37 = "puteCompleteDate";
  type metadata accessor for CardioFitnessRetroComputeTipTileViewController(0);
  sub_29D933FF8();
  v36[1] = v30;
  v31 = v40;
  v32 = v41;
  sub_29D6AA230(v41, v40);
  if (qword_2A1A23548 != -1)
  {
    swift_once();
  }

  v33 = sub_29D69C6C0(v8, qword_2A1A23550);
  (*(v42 + 16))(v11, v33, v8);
  v34 = a1;
  sub_29D9340A8();
  sub_29D935E88();
  sub_29D9340B8();
  sub_29D934078();
  v35 = sub_29D9340C8();
  sub_29D7A6488(v38);
  v35(v44, 0);
  sub_29D71847C(v32, v31);
  (*(v43 + 32))(a4, v15, v12);
  return (*(v43 + 56))(a4, 0, 1, v12);
}

void sub_29D7DA984()
{
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = *MEMORY[0x29EDBA970];
  v2 = [ObjCClassFromMetadata quantityTypeForIdentifier_];

  v7 = v2;
  v3 = MEMORY[0x29EDCA190];
  v6 = MEMORY[0x29EDCA190];
  if (v2)
  {
    v4 = v2;
    MEMORY[0x29ED6A300]();
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D939F78();
    }

    sub_29D939FA8();
    v3 = v6;
  }

  sub_29D7C3D5C(&v7);
  v5 = sub_29D7AF2C4(v3);

  qword_2A1A2BDC0 = v5;
}

uint64_t sub_29D7DAAA0()
{
  v0 = sub_29D934148();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D934178();
  sub_29D6FD494(v5, qword_2A1A2BDA8);
  sub_29D69C6C0(v5, qword_2A1A2BDA8);
  sub_29D933FE8();
  sub_29D7C3E9C(0);
  v6 = sub_29D933F58();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29D93DDB0;
  if (qword_2A1A23548 != -1)
  {
    swift_once();
  }

  v10 = sub_29D69C6C0(v6, qword_2A1A23550);
  (*(v7 + 16))(v9 + v8, v10, v6);
  sub_29D6E4080(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  if (qword_2A1A23538 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v4, *MEMORY[0x29EDC3898], v0);
  sub_29D935E88();
  return sub_29D934168();
}

uint64_t sub_29D7DAD2C()
{
  v0 = sub_29D933F58();
  sub_29D6FD494(v0, qword_2A1A23550);
  v1 = sub_29D69C6C0(v0, qword_2A1A23550);
  v2 = *MEMORY[0x29EDC3750];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_29D7DADB4(uint64_t a1, char a2)
{
  v2 = sub_29D937898();
  MEMORY[0x2A1C7C4A8](v2, v3);
  sub_29D933108();
  swift_allocObject();
  sub_29D9330F8();
  sub_29D7DB094();
  v4 = sub_29D9330E8();

  return v4;
}

uint64_t sub_29D7DB014(uint64_t a1, uint64_t a2)
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
      sub_29D935E88();
      sub_29D7ABF08(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

unint64_t sub_29D7DB094()
{
  result = qword_2A17B5380;
  if (!qword_2A17B5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5380);
  }

  return result;
}

id sub_29D7DB0E8(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x29ED6AE30](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_29D7AC058(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = sub_29D93A928();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

void *sub_29D7DB1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_29D68F5B0(0, 2, 0, MEMORY[0x29EDCA190]);
  sub_29D934F58();
  v7 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v8 = sub_29D939D28();

  type metadata accessor for Key(0);
  sub_29D7DB4F4();
  v9 = sub_29D939C58();

  v10 = [v7 initWithString:v8 attributes:v9];

  v12 = v6[2];
  v11 = v6[3];
  if (v12 >= v11 >> 1)
  {
    v6 = sub_29D68F5B0((v11 > 1), v12 + 1, 1, v6);
  }

  v13 = sub_29D7DB54C();
  v30 = v13;
  v31 = MEMORY[0x29EDC2CE0];
  *&v29 = v10;
  v6[2] = v12 + 1;
  v14 = sub_29D6959E8(&v29, &v6[5 * v12 + 4]);
  MEMORY[0x29ED65380](v14);
  v15 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v16 = sub_29D939D28();

  v17 = sub_29D939C58();

  v18 = [v15 initWithString:v16 attributes:v17];

  v20 = v6[2];
  v19 = v6[3];
  if (v20 >= v19 >> 1)
  {
    v6 = sub_29D68F5B0((v19 > 1), v20 + 1, 1, v6);
  }

  v21 = MEMORY[0x29EDC2CE0];
  v30 = v13;
  v31 = MEMORY[0x29EDC2CE0];
  *&v29 = v18;
  v6[2] = v20 + 1;
  sub_29D6959E8(&v29, &v6[5 * v20 + 4]);
  sub_29D934FA8();
  v22 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v23 = sub_29D939D28();

  v24 = sub_29D939C58();

  v25 = [v22 initWithString:v23 attributes:v24];

  v27 = v6[2];
  v26 = v6[3];
  if (v27 >= v26 >> 1)
  {
    v6 = sub_29D68F5B0((v26 > 1), v27 + 1, 1, v6);
  }

  v30 = v13;
  v31 = v21;
  *&v29 = v25;
  v6[2] = v27 + 1;
  sub_29D6959E8(&v29, &v6[5 * v27 + 4]);
  return v6;
}

unint64_t sub_29D7DB4F4()
{
  result = qword_2A17B1048;
  if (!qword_2A17B1048)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1048);
  }

  return result;
}

unint64_t sub_29D7DB54C()
{
  result = qword_2A17B47E8;
  if (!qword_2A17B47E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B47E8);
  }

  return result;
}

uint64_t sub_29D7DB5A8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{

  return sub_29D7DB6B8(a1, a2, a3, a4, type metadata accessor for AFibBurdenNotificationInteractionAnalyticsEvent, &qword_2A17B5390, type metadata accessor for AFibBurdenNotificationInteractionAnalyticsEvent);
}

uint64_t sub_29D7DB630(void *a1, void *a2, uint64_t a3, uint64_t a4)
{

  return sub_29D7DB6B8(a1, a2, a3, a4, type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent, &qword_2A17B5388, type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent);
}

uint64_t sub_29D7DB6B8(void *a1, void *a2, char a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v53[1] = *MEMORY[0x29EDCA608];
  v12 = [a1 featureAvailabilityProviderForIdentifier_];
  if (v12)
  {
    v53[0] = 0;
    v13 = [v12 featureOnboardingRecordWithError_];
    if (v13)
    {
      v14 = v13;
      v15 = v53[0];
      v16 = [v14 onboardingCompletion];
      if (v16)
      {
        v17 = v16;
        [v16 version];
        v18 = HKHRAFibBurdenAnalyticsPropertyValueForVersion();
        v19 = sub_29D939D68();
        sub_29D936978();
      }

      else if (a3)
      {
        sub_29D936978();

        return 0;
      }

      else
      {
        v45 = sub_29D937878();
        v46 = sub_29D93A298();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v53[0] = v48;
          *v47 = 136446210;
          a5(0);
          sub_29D7DBC00(0, a6, a7);
          v49 = sub_29D939DA8();
          v51 = sub_29D6C2364(v49, v50, v53);

          *(v47 + 4) = v51;
          _os_log_impl(&dword_29D677000, v45, v46, "[%{public}s] analytics event logged but feature not onboarded", v47, 0xCu);
          sub_29D69417C(v48);
          MEMORY[0x29ED6BE30](v48, -1, -1);
          MEMORY[0x29ED6BE30](v47, -1, -1);
        }

        v19 = sub_29D939D68();
        sub_29D936978();
      }
    }

    else
    {
      v31 = v53[0];
      v32 = sub_29D933598();

      swift_willThrow();
      v33 = v32;
      v34 = sub_29D937878();
      v35 = sub_29D93A288();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v53[0] = v37;
        *v36 = 136446466;
        a5(0);
        sub_29D7DBC00(0, a6, a7);
        v38 = sub_29D939DA8();
        v40 = sub_29D6C2364(v38, v39, v53);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2082;
        v41 = v32;
        sub_29D6A0CD0();
        v42 = sub_29D939DA8();
        v44 = sub_29D6C2364(v42, v43, v53);

        *(v36 + 14) = v44;
        _os_log_impl(&dword_29D677000, v34, v35, "[%{public}s] Error retrieving onboarding record: %{public}s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v37, -1, -1);
        MEMORY[0x29ED6BE30](v36, -1, -1);
      }

      v19 = sub_29D939D68();
      sub_29D936978();
    }
  }

  else
  {
    v20 = a2;
    v21 = sub_29D937878();
    v22 = sub_29D93A298();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v53[0] = v24;
      *v23 = 136446466;
      a5(0);
      sub_29D7DBC00(0, a6, a7);
      v25 = sub_29D939DA8();
      v27 = sub_29D6C2364(v25, v26, v53);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      v28 = sub_29D93A518();
      v30 = sub_29D6C2364(v28, v29, v53);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_29D677000, v21, v22, "[%{public}s] No feature availability manager for feature %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v24, -1, -1);
      MEMORY[0x29ED6BE30](v23, -1, -1);
    }

    return sub_29D939D68();
  }

  return v19;
}

uint64_t sub_29D7DBC00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_29D7DBC4C()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  result = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  *(v0 + 32) = result;
  qword_2A1A2BD58 = v0;
  return result;
}

void *sub_29D7DBCDC(uint64_t a1)
{
  v41 = *v1;
  v3 = sub_29D9341E8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v39 = v6;
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C3178(0);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D934148();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29D934178();
  v14 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 16);
  v47 = v1;
  v45 = v3;
  v35 = v18;
  v18(v1 + OBJC_IVAR____TtC5Heart47AFibBurdenNotificationSettingsGeneratorPipeline_context, a1, v3);
  v46 = a1;
  v34 = sub_29D9341B8();
  sub_29D7CA0B0(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v19 = sub_29D933F58();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29D93DDB0;
  (*(v20 + 104))(v22 + v21, *MEMORY[0x29EDC3780], v19);
  if (qword_2A1A22FE0 != -1)
  {
    swift_once();
  }

  if (qword_2A1A2BD58 >> 62)
  {
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
    sub_29D935E88();
    sub_29D93AB48();
  }

  else
  {
    sub_29D935E88();
    sub_29D93AD88();
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
  }

  (*(v37 + 104))(v13, *MEMORY[0x29EDC3898], v38);
  sub_29D934158();
  v23 = v47;
  (*(v14 + 32))(v47 + OBJC_IVAR____TtC5Heart47AFibBurdenNotificationSettingsGeneratorPipeline_domain, v17, v36);
  v24 = v40;
  v26 = v45;
  v25 = v46;
  v35(v40, v46, v45);
  v27 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v28 = (v39 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v4 + 32))(v29 + v27, v24, v26);
  *(v29 + v28) = v41;
  sub_29D6C320C(0);
  sub_29D7DDE18(&qword_2A1A24AE0, sub_29D6C320C, MEMORY[0x29EDB8A00]);
  v30 = v42;
  sub_29D938378();
  sub_29D7DDE18(&qword_2A1A24A20, sub_29D6C3178, MEMORY[0x29EDB8AE8]);
  v31 = v44;
  v32 = sub_29D938418();
  (*(v4 + 8))(v25, v26);
  (*(v43 + 8))(v30, v31);
  *(v23 + OBJC_IVAR____TtC5Heart47AFibBurdenNotificationSettingsGeneratorPipeline_publisher) = v32;
  return v23;
}

uint64_t sub_29D7DC2E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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

  if (v12 == 1 && (v13 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v10]) != 0)
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
  v16 = sub_29D7DC52C(a1, v15);

  *a2 = v16;
  return result;
}

uint64_t sub_29D7DC52C(uint64_t a1, uint64_t a2)
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
    sub_29D7DDE18(&qword_2A1A224E0, sub_29D6C3390, MEMORY[0x29EDB8940]);
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

  sub_29D7DDE18(&qword_2A1A22618, sub_29D6C3488, MEMORY[0x29EDB8908]);
  v22 = v30;
  v23 = sub_29D938418();
  (*(v29 + 8))(v16, v22);
  return v23;
}

uint64_t sub_29D7DC93C@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v45 = a2;
  v53 = a3;
  sub_29D6C36A4(0);
  v5 = v4;
  MEMORY[0x2A1C7C4A8](v4, v6);
  v54 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D934148();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D934178();
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v52 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_29D9341E8();
  v14 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44, v15);
  v55 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  v46 = v17;
  v19 = MEMORY[0x2A1C7C4A8](v17, v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v43 - v23;
  v25 = sub_29D7DDF0C();
  v27 = v26;
  v28 = sub_29D937198();
  v29 = sub_29D9371B8();
  v30 = [v29 areAllRequirementsSatisfied];

  v31 = sub_29D9340F8();
  (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
  v47 = v27;
  v48 = v25;
  if ((v28 & 1) != 0 && v30)
  {
    v43 = v5;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v32, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v45;
    v56 = 0;
    sub_29D9371C8();

    sub_29D7DD0FC(a1, v25, v27, v21);
    sub_29D754518(v24);
    sub_29D6C37D4(v21, v24);
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v33, qword_2A1A2BF58);
    v34 = swift_allocObject();
    *(v34 + 16) = v28 & 1;
    *(v34 + 17) = v30;
    *(v34 + 24) = v45;
    v56 = 0;
    sub_29D9371C8();
  }

  (*(v14 + 16))(v55, a1, v44);
  sub_29D9341B8();
  sub_29D7CA0B0(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v35 = sub_29D933F58();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_29D93DDB0;
  (*(v36 + 104))(v38 + v37, *MEMORY[0x29EDC3780], v35);
  if (qword_2A1A22FE0 != -1)
  {
    swift_once();
  }

  if (qword_2A1A2BD58 >> 62)
  {
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
    sub_29D935E88();
    sub_29D93AB48();
  }

  else
  {
    sub_29D935E88();
    sub_29D93AD88();
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
  }

  (*(v50 + 104))(v49, *MEMORY[0x29EDC3898], v51);
  sub_29D934158();
  sub_29D6D0B8C(v24, v21);
  sub_29D938338();
  v39 = sub_29D934228();
  v40 = MEMORY[0x29EDC38C8];
  v41 = v53;
  v53[3] = v39;
  v41[4] = v40;
  sub_29D693F78(v41);
  sub_29D7DDE18(&qword_2A1A22360, sub_29D6C36A4, MEMORY[0x29EDB8AB8]);
  sub_29D934218();
  return sub_29D754518(v24);
}

uint64_t sub_29D7DD034(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000041, 0x800000029D963DE0);
  MEMORY[0x29ED6A240](0xD000000000000029, 0x800000029D963E30);
  return 91;
}

uint64_t sub_29D7DD0FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v44 = a2;
  v54 = a1;
  v57 = a4;
  v4 = sub_29D9349C8();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D933F58();
  v53 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7, v8);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v41 - v12;
  v43 = sub_29D935108();
  v41 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D935788();
  v55 = *(v17 - 8);
  v56 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AFibBurdenNotificationSettingsDisclosureCellViewController(0);
  v50 = sub_29D933FF8();
  v51 = v21;
  LODWORD(v52) = v22;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9350E8();
  sub_29D9334A8();
  sub_29D935758();
  v23 = v53;
  (*(v53 + 104))(v13, *MEMORY[0x29EDC3780], v7);
  v24 = sub_29D9341B8();
  v25 = v7;
  v26 = sub_29D935778();
  v28 = v27;
  (*(v23 + 16))(v42, v13, v7);
  sub_29D935E88();
  sub_29D6AA230(v26, v28);
  v54 = v24;
  v49 = v13;
  v29 = v26;
  v30 = v57;
  v52 = v29;
  sub_29D9340A8();
  sub_29D935768();
  sub_29D9350F8();
  (*(v41 + 8))(v16, v43);
  sub_29D934098();
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 32) = sub_29D934298();
  *(inited + 40) = v32;
  sub_29D6E35C8(inited);
  swift_setDeallocating();
  sub_29D6AA360(inited + 32);
  sub_29D9340D8();
  v33 = v46;
  v34 = v47;
  v35 = v48;
  (*(v47 + 104))(v46, *MEMORY[0x29EDC1990], v48);
  sub_29D9349B8();
  (*(v34 + 8))(v33, v35);
  sub_29D9340E8();
  sub_29D934088();
  v36 = v49;
  if (qword_2A1A22FE0 != -1)
  {
    swift_once();
  }

  v37 = sub_29D935E88();
  v38 = sub_29D7AF37C(v37);

  sub_29D8E8624(v38);

  sub_29D9340B8();

  sub_29D6AA284(v52, v28);
  (*(v23 + 8))(v36, v25);
  (*(v55 + 8))(v20, v56);
  v39 = sub_29D9340F8();
  return (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
}

uint64_t sub_29D7DD84C(char a1, char a2, uint64_t a3)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v5 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v5);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000041, 0x800000029D963DE0);
  MEMORY[0x29ED6A240](0xD00000000000003BLL, 0x800000029D963E60);
  if (a1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (a1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x29ED6A240](v6, v7);

  MEMORY[0x29ED6A240](0x6C69617641736920, 0xEE00203A656C6261);
  if (a2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (a2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x29ED6A240](v8, v9);

  return 0;
}

uint64_t sub_29D7DD9BC(void *a1, uint64_t a2)
{
  sub_29D93AA18();

  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000034, 0x800000029D963D80);
  MEMORY[0x29ED6A240](0xD00000000000001CLL, 0x800000029D963DC0);
  v4 = a1;
  sub_29D6B7370(0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
  v5 = sub_29D939DB8();
  MEMORY[0x29ED6A240](v5);

  return 91;
}

uint64_t sub_29D7DDAD4()
{
  v1 = OBJC_IVAR____TtC5Heart47AFibBurdenNotificationSettingsGeneratorPipeline_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Heart47AFibBurdenNotificationSettingsGeneratorPipeline_context;
  v4 = sub_29D9341E8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenNotificationSettingsGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A22FC0;
  if (!qword_2A1A22FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7DDC14(uint64_t a1)
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

uint64_t sub_29D7DDD00@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart47AFibBurdenNotificationSettingsGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D7DDD7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_29D7DC2E4(v4, a1);
}

uint64_t sub_29D7DDE18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D7DDE60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D7DC93C((v1 + v4), v5, a1);
}

unint64_t sub_29D7DDF0C()
{
  v0 = sub_29D933A58();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
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

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_29D93AA18();

  v12 = 0xD000000000000027;
  v13 = 0x800000029D963EA0;
  MEMORY[0x29ED6A240](v8, v10);

  return v12;
}

double sub_29D7DE0AC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_29D7DE0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = a3;
  sub_29D7DED2C(0, &qword_2A17B1620, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = v22 - v7;
  sub_29D7DED2C(0, &qword_2A17B53D0, MEMORY[0x29EDC1B80], MEMORY[0x29EDC1E70]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = v22 - v13;
  sub_29D7DEB70(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  sub_29D7DED90(a2, v8);
  sub_29D7DEE24(&qword_2A17B53D8, sub_29D7DEB70, MEMORY[0x29EDC1B90]);
  sub_29D934E88();
  sub_29D7DEE24(&qword_2A17B53B8, sub_29D7DEB70, MEMORY[0x29EDC1B88]);
  sub_29D939308();
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_29D7DE37C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_29D7DED2C(0, &qword_2A17B15F0, MEMORY[0x29EDC1D90], MEMORY[0x29EDBC388]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_29D7DE400()
{
  sub_29D68B77C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_29D7DE494()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_29D7DE4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v25 = a4;
  sub_29D7DE9D4(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7DEC04(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = a3;
  v28 = a2;
  sub_29D7DEABC(0);
  sub_29D7DEB70(255);
  v20 = v19;
  v21 = sub_29D7DEE24(&qword_2A17B53B8, sub_29D7DEB70, MEMORY[0x29EDC1B88]);
  v29 = v20;
  v30 = v21;
  swift_getOpaqueTypeConformance2();
  sub_29D938F28();
  type metadata accessor for NonHighlightingPlatformBackgroundView(0);
  sub_29D7DEE24(&qword_2A17B15D8, type metadata accessor for NonHighlightingPlatformBackgroundView, &unk_29D94EF48);
  sub_29D938F08();
  (*(v9 + 8))(v12, v8);
  sub_29D9390D8();
  v22 = v25;
  v25[3] = v14;
  v22[4] = sub_29D7DEE24(&qword_2A17B53C8, sub_29D7DEC04, MEMORY[0x29EDBC030]);
  sub_29D693F78(v22);
  sub_29D938F18();
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_29D7DE85C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D936978();
}

void (*sub_29D7DE8BC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_29D7DE950;
}

void sub_29D7DE950(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    sub_29D936978();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_29D936978();
  }

  free(v3);
}

void sub_29D7DE9D4(uint64_t a1)
{
  if (!qword_2A17B5398)
  {
    sub_29D7DEABC(255);
    sub_29D7DEB70(255);
    sub_29D7DEE24(&qword_2A17B53B8, sub_29D7DEB70, MEMORY[0x29EDC1B88]);
    swift_getOpaqueTypeConformance2();
    v1 = sub_29D938F38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5398);
    }
  }
}

void sub_29D7DEABC(uint64_t a1)
{
  if (!qword_2A17B53A0)
  {
    sub_29D7DEB70(255);
    sub_29D7DEE24(&qword_2A17B53B8, sub_29D7DEB70, MEMORY[0x29EDC1B88]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B53A0);
    }
  }
}

void sub_29D7DEB70(uint64_t a1)
{
  if (!qword_2A17B53A8)
  {
    type metadata accessor for CompletedBloodPressureJournalTileActionHandler(255);
    sub_29D7DEE24(&qword_2A17B53B0, type metadata accessor for CompletedBloodPressureJournalTileActionHandler, &unk_29D94F15C);
    v1 = sub_29D934C38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B53A8);
    }
  }
}

void sub_29D7DEC04(uint64_t a1)
{
  if (!qword_2A17B53C0)
  {
    sub_29D7DEABC(255);
    type metadata accessor for NonHighlightingPlatformBackgroundView(255);
    sub_29D7DEB70(255);
    sub_29D7DEE24(&qword_2A17B53B8, sub_29D7DEB70, MEMORY[0x29EDC1B88]);
    swift_getOpaqueTypeConformance2();
    sub_29D7DEE24(&qword_2A17B15D8, type metadata accessor for NonHighlightingPlatformBackgroundView, &unk_29D94EF48);
    v1 = sub_29D938F38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B53C0);
    }
  }
}

void sub_29D7DED2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7DED90(uint64_t a1, uint64_t a2)
{
  sub_29D7DED2C(0, &qword_2A17B1620, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7DEE24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for HypertensionNotificationsPregnancyWarning(uint64_t a1)
{
  result = qword_2A17B53F0;
  if (!qword_2A17B53F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7DEF0C()
{
  v1 = (v0 + qword_2A17B53E0);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + qword_2A17B53E8) = 0;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();

  return sub_29D936C78();
}

id sub_29D7DF050()
{
  v1 = qword_2A17B53E8;
  v2 = *(v0 + qword_2A17B53E8);
  if (v2)
  {
    v3 = *(v0 + qword_2A17B53E8);
  }

  else
  {
    v4 = sub_29D7DF0B4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D7DF0B4(uint64_t a1)
{
  v2 = [objc_opt_self() linkButton];
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v3 = sub_29D939D28();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:a1 action:sel_setUpLaterButtonTapped_ forControlEvents:64];
  return v2;
}

void sub_29D7DF1CC()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243E1C0);
    swift_arrayDestroy();
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243E200);
    swift_arrayDestroy();
    v5 = sub_29D939D28();

    [v4 setTitleAccessibilityIdentifier_];

    v6 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243E240);
    swift_arrayDestroy();
    v7 = sub_29D939D28();

    [v6 setDetailTextAccessibilityIdentifier_];

    v8 = sub_29D8381D8();
    if (v8)
    {
      v9 = v8;
      v10 = [v0 headerView];
      [v10 setAllowFullWidthIcon_];

      v11 = [v0 headerView];
      [v11 setIcon:v9 accessibilityLabel:0];
    }

    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243E280);
    swift_arrayDestroy();
    sub_29D936C58();

    v12 = [v0 buttonTray];
    v13 = sub_29D7DF050();
    [v12 addButton_];

    v14 = *&v0[qword_2A17B53E8];
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243E2C0);
    swift_arrayDestroy();
    v15 = sub_29D939D28();

    [v14 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D7DF4F4(void *a1)
{
  v1 = a1;
  sub_29D7DF1CC();
}

void sub_29D7DF53C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_29D93A868();
  sub_29D936978();
  if (*&v4[qword_2A17B53E0])
  {
    v5 = swift_unknownObjectRetain();
    sub_29D7DF7A4(v5);

    sub_29D936978();
    sub_29D69417C(v6);
  }

  else
  {
    sub_29D69417C(v6);
  }
}

void sub_29D7DF5CC()
{
  v1 = *&v0[qword_2A17B53E0];
  if (v1)
  {
    swift_unknownObjectRetain();
    sub_29D8FD2D8(v0, v1);

    sub_29D936978();
  }
}

void sub_29D7DF62C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_29D93A868();
  sub_29D936978();
  v5 = *&v4[qword_2A17B53E0];
  if (v5)
  {
    swift_unknownObjectRetain();
    sub_29D8FD2D8(v4, v5);

    sub_29D936978();
    sub_29D69417C(v6);
  }

  else
  {
    sub_29D69417C(v6);
  }
}

void sub_29D7DF6F4()
{
  sub_29D936978();
  v1 = *(v0 + qword_2A17B53E8);
}

void sub_29D7DF734(uint64_t a1)
{
  sub_29D936978();
  v2 = *(a1 + qword_2A17B53E8);
}

uint64_t sub_29D7DF788(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B53E0);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D7DF7A4(uint64_t a1)
{
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2C008);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446466;
    nullsub_1();
    v6 = sub_29D93AF08();
    v8 = sub_29D6C2364(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_29D6C2364(0xD000000000000032, 0x800000029D964010, &v10);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s.%{public}s]: User pressed Set Up Later button", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  sub_29D8E5640(1, 0, 0, 0);
  return sub_29D8E5270(4, 4, 5);
}

void static String.bloodPressureJournalAccessibilityIdentifier(with:)(uint64_t a1)
{
  v1 = sub_29D935E88();
  sub_29D88BBC8(v1);
  v2 = sub_29D939F18();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    sub_29D939D68();
  }

  else
  {
    __break(1u);
  }
}

void *sub_29D7DFA00()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Heart16HeartAppDelegate____lazy_storage___articleIdentifiersByUrl);
  if (v1)
  {
    sub_29D935E88();
    return v1;
  }

  v31 = OBJC_IVAR____TtC5Heart16HeartAppDelegate____lazy_storage___articleIdentifiersByUrl;
  v1 = sub_29D73F5E0(MEMORY[0x29EDCA190]);
  v2 = 0;
  while (1)
  {
    v4 = byte_2A243E300[v2++ + 32];
    v5 = v4 - 5;
    v6 = 0xD000000000000014;
    if ((v4 - 8) >= 3)
    {
      v6 = 0x6472754262694641;
    }

    v7 = 0x800000029D956CF0;
    if ((v4 - 8) >= 3)
    {
      v7 = 0xEA00000000006E65;
    }

    v8 = v5 >= 3;
    if (v5 >= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xD000000000000019;
    }

    v10 = 0x800000029D95FDD0;
    if (v8)
    {
      v10 = v7;
    }

    v11 = 1651066433;
    if (v4 == 2)
    {
      v11 = 0xD000000000000010;
    }

    v12 = 0x800000029D964530;
    if (v4 != 2)
    {
      v12 = 0xE400000000000000;
    }

    v13 = 0xD000000000000015;
    if (!v4)
    {
      v13 = 0x7461527472616548;
    }

    v14 = 0xE900000000000065;
    if (v4)
    {
      v14 = 0x800000029D964550;
    }

    if (v4 <= 1)
    {
      v11 = v13;
      v12 = v14;
    }

    v15 = v4 <= 3 ? v11 : v9;
    v16 = v4 <= 3 ? v12 : v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_29D6907F0(v15, v16);
    v20 = v1[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (v1[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v29 = v18;
      sub_29D6936A0();
      v18 = v29;
      if (v24)
      {
        goto LABEL_4;
      }

LABEL_37:
      v1[(v18 >> 6) + 8] |= 1 << v18;
      v26 = (v1[6] + 16 * v18);
      *v26 = v15;
      v26[1] = v16;
      *(v1[7] + v18) = v4;
      v27 = v1[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_45;
      }

      v1[2] = v28;
      if (v2 == 11)
      {
LABEL_42:
        *(v0 + v31) = v1;
        sub_29D935E88();

        return v1;
      }
    }

    else
    {
      sub_29D691704(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_29D6907F0(v15, v16);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_46;
      }

LABEL_36:
      if ((v24 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_4:
      v3 = v18;

      *(v1[7] + v3) = v4;
      if (v2 == 11)
      {
        goto LABEL_42;
      }
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_29D93ADC8();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for HeartInternalSettingsViewController(uint64_t a1)
{
  result = qword_2A17B5410;
  if (!qword_2A17B5410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D7DFDD0()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_29D7DFE18(unint64_t a1)
{
  result = 0;
  if (a1 <= 0x10 && ((1 << a1) & 0x10310) != 0)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_29D7DFE60(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2A1C63378](ObjectType, a2);
}

uint64_t sub_29D7DFE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D936378();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D936388();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_29D936368() & 0xFE) == 2)
  {
    type metadata accessor for AFibBurdenSharingDataTypeDetailConfigurationProvider();
    swift_initStackObject();
    sub_29D71BC44(v15);
    v16 = sub_29D936028();
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent();
    v17 = swift_allocObject();
    v31 = v11;
    v18 = a3;
    v19 = v17;
    *(v17 + 16) = 0;
    v20 = HKHRAFibBurdenLogForCategory();
    v30 = a2;
    v21 = v20;
    v22 = sub_29D936338();
    v23 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v21 healthDataSource:v22];
    v29 = v6;
    v24 = v23;

    v25 = swift_allocObject();
    *(v25 + 16) = v18;
    aBlock[4] = sub_29D7ED284;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D8E44F0;
    aBlock[3] = &unk_2A2446A00;
    v26 = _Block_copy(aBlock);

    [v24 submitEvent:v19 completion:v26];
    _Block_release(v26);

    (*(v7 + 16))(v10, a1, v29);
    type metadata accessor for AFibBurdenDataTypeDetailConfigurationProvider(0);
    swift_allocObject();
    sub_29D771614(v10);
    sub_29D7718EC(v15);
    v16 = sub_29D936028();

    (*(v12 + 8))(v15, v31);
  }

  return v16;
}

uint64_t sub_29D7E0220()
{
  v50 = *MEMORY[0x29EDCA608];
  swift_getObjectType();
  v0 = sub_29D933A58();
  v44 = *(v0 - 8);
  v45 = v0;
  MEMORY[0x2A1C7C4A8](v0, v1);
  v43 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29D935DA8();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v41 - v10;
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v41 - v13;
  sub_29D7E9C48(0, &qword_2A17B1078, &qword_2A17B1080, MEMORY[0x29EDC1910], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  v46 = xmmword_29D93DDB0;
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 56) = v3;
  v16 = sub_29D7ED64C(&qword_2A17B54E8, 255, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23F0]);
  *(inited + 64) = v16;
  v17 = sub_29D693F78((inited + 32));
  sub_29D7E0908(v17);
  sub_29D7E0FC4(v14);
  v18 = sub_29D68FAC0(1, 2, 1, inited);
  v48 = v3;
  v49 = v16;
  v19 = sub_29D693F78(&v47);
  v20 = *(v4 + 16);
  v20(v19, v14, v3);
  v18[2] = 2;
  sub_29D679D3C(&v47, (v18 + 9));
  v21 = *(v4 + 8);
  v41 = v4 + 8;
  v21(v14, v3);
  v22 = v11;
  sub_29D7E1610(v11);
  v24 = v18[2];
  v23 = v18[3];
  if (v24 >= v23 >> 1)
  {
    v18 = sub_29D68FAC0((v23 > 1), v24 + 1, 1, v18);
  }

  v48 = v3;
  v49 = v16;
  v25 = sub_29D693F78(&v47);
  v20(v25, v22, v3);
  v18[2] = v24 + 1;
  sub_29D679D3C(&v47, &v18[5 * v24 + 4]);
  v21(v22, v3);
  v26 = v42;
  sub_29D7E1C5C(v42);
  v28 = v18[2];
  v27 = v18[3];
  if (v28 >= v27 >> 1)
  {
    v18 = sub_29D68FAC0((v27 > 1), v28 + 1, 1, v18);
  }

  v48 = v3;
  v49 = v16;
  v29 = sub_29D693F78(&v47);
  v20(v29, v26, v3);
  v18[2] = v28 + 1;
  sub_29D679D3C(&v47, &v18[5 * v28 + 4]);
  v21(v26, v3);
  sub_29D7ED440(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29D9359D8();
  *(swift_allocObject() + 16) = v46;
  sub_29D775BD0(v18);

  v30 = v43;
  sub_29D933A48();
  sub_29D933A18();
  v31 = v45;
  v32 = *(v44 + 8);
  v32(v30, v45);
  sub_29D9359C8();
  *&v47 = 0x3C53447961727241;
  *(&v47 + 1) = 0xE800000000000000;
  sub_29D933A48();
  v33 = sub_29D933A18();
  v35 = v34;
  v32(v30, v31);
  MEMORY[0x29ED6A240](v33, v35);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  sub_29D9351D8();
  swift_allocObject();
  sub_29D9351C8();
  sub_29D935588();
  sub_29D7E9A60(0);
  sub_29D7ED64C(&qword_2A17B5500, 255, sub_29D7E9A60, MEMORY[0x29EDC1E90]);
  v36 = sub_29D9355C8();

  sub_29D935F88();
  sub_29D7E9AC0(0);
  v37 = swift_allocObject();
  *(v37 + 16) = v46;
  v38 = sub_29D7ED64C(&qword_2A17B5508, 255, sub_29D7E9B2C, MEMORY[0x29EDC2110]);
  *(v37 + 32) = v36;
  *(v37 + 40) = v38;

  sub_29D935FA8();
  v39 = sub_29D936D88();

  return v39;
}

uint64_t sub_29D7E0908@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_29D936BE8();
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v45 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D935C78();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v42 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9C68];
  sub_29D7ED440(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v41 = v36 - v10;
  sub_29D7ED440(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v7);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v38 = v36 - v13;
  v14 = sub_29D937928();
  v39 = *(v14 - 8);
  v40 = v14;
  MEMORY[0x2A1C7C4A8](v14, v15);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D9378C8();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D937B88();
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v27 = v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  sub_29D937B48();
  v28 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  sub_29D9342C8();
  v29 = v28;
  v36[0] = sub_29D9342B8();
  v36[1] = " Notifications Room";
  v37 = v23;
  v49[3] = v23;
  v49[4] = MEMORY[0x29EDC7800];
  v30 = sub_29D693F78(v49);
  (*(v24 + 16))(v30, v27, v23);
  sub_29D7ED440(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29D937948();
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  (*(v19 + 104))(v22, *MEMORY[0x29EDC7768], v18);
  v31 = sub_29D9378D8();
  (*(*(v31 - 8) + 56))(v38, 1, 1, v31);
  sub_29D937918();
  sub_29D937908();
  (*(v39 + 8))(v17, v40);
  (*(v19 + 8))(v22, v18);
  v32 = swift_allocObject();
  v33 = v36[0];
  *(v32 + 16) = v29;
  *(v32 + 24) = v33;
  v34 = sub_29D9379E8();
  (*(*(v34 - 8) + 56))(v41, 1, 1, v34);
  (*(v43 + 104))(v42, *MEMORY[0x29EDC22C8], v44);
  (*(v46 + 104))(v45, *MEMORY[0x29EDC2A38], v47);
  sub_29D935D98();
  return (*(v24 + 8))(v27, v37);
}

uint64_t sub_29D7E0FC4@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_29D936BE8();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D935C78();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9C68];
  sub_29D7ED440(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v36 = &v33 - v10;
  sub_29D7ED440(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v7);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v33 - v13;
  v15 = sub_29D937928();
  v34 = *(v15 - 8);
  v35 = v15;
  MEMORY[0x2A1C7C4A8](v15, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D9378C8();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D937B88();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v28 = &v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  sub_29D937B48();
  v33 = "Blood Pressure Camera Scanner";
  v44[3] = v24;
  v44[4] = MEMORY[0x29EDC7800];
  v29 = sub_29D693F78(v44);
  (*(v25 + 16))(v29, v28, v24);
  sub_29D7ED440(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29D937948();
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  (*(v20 + 104))(v23, *MEMORY[0x29EDC7768], v19);
  v30 = sub_29D9378D8();
  (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
  sub_29D937918();
  sub_29D937908();
  (*(v34 + 8))(v18, v35);
  (*(v20 + 8))(v23, v19);
  v31 = sub_29D9379E8();
  (*(*(v31 - 8) + 56))(v36, 1, 1, v31);
  (*(v38 + 104))(v37, *MEMORY[0x29EDC22C8], v39);
  (*(v41 + 104))(v40, *MEMORY[0x29EDC2A38], v42);
  sub_29D935D98();
  return (*(v25 + 8))(v28, v24);
}

uint64_t sub_29D7E1610@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_29D936BE8();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D935C78();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9C68];
  sub_29D7ED440(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v36 = &v33 - v10;
  sub_29D7ED440(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v7);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v33 - v13;
  v15 = sub_29D937928();
  v34 = *(v15 - 8);
  v35 = v15;
  MEMORY[0x2A1C7C4A8](v15, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D9378C8();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D937B88();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v28 = &v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  sub_29D937B48();
  v33 = "CardioFitnessOnboardingViewItem";
  v44[3] = v24;
  v44[4] = MEMORY[0x29EDC7800];
  v29 = sub_29D693F78(v44);
  (*(v25 + 16))(v29, v28, v24);
  sub_29D7ED440(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29D937948();
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  (*(v20 + 104))(v23, *MEMORY[0x29EDC7768], v19);
  v30 = sub_29D9378D8();
  (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
  sub_29D937918();
  sub_29D937908();
  (*(v34 + 8))(v18, v35);
  (*(v20 + 8))(v23, v19);
  v31 = sub_29D9379E8();
  (*(*(v31 - 8) + 56))(v36, 1, 1, v31);
  (*(v38 + 104))(v37, *MEMORY[0x29EDC22C8], v39);
  (*(v41 + 104))(v40, *MEMORY[0x29EDC2A38], v42);
  sub_29D935D98();
  return (*(v25 + 8))(v28, v24);
}

uint64_t sub_29D7E1C5C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = sub_29D936BE8();
  v1 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7ED440(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v22 - v7;
  v9 = sub_29D935C78();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D937B88();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  sub_29D937B48();
  v25[3] = v14;
  v25[4] = MEMORY[0x29EDC7800];
  v19 = sub_29D693F78(v25);
  (*(v15 + 16))(v19, v18, v14);
  *v13 = 1;
  (*(v10 + 104))(v13, *MEMORY[0x29EDC22C0], v9);
  v20 = sub_29D9379E8();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC2A38], v23);
  sub_29D935D98();
  return (*(v15 + 8))(v18, v14);
}

id sub_29D7E1FE0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for HeartInternalSettingsViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

void sub_29D7E205C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedInstanceForHealthStore_];
  v6 = objc_allocWithZone(type metadata accessor for AtrialFibrillationDataTypeDetailViewController());

  sub_29D7E9D10(v5, a3, 4, v6);
  v10 = v7;
  v8 = [a1 navigationController];
  if (v8)
  {
    v9 = v8;
    [v8 pushViewController:v10 animated:1];
  }
}

uint64_t sub_29D7E2138(void *a1)
{
  v2 = sub_29D933A58();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7E9BC4(0);
  v7 = swift_allocObject();
  v20 = xmmword_29D93DDB0;
  *(v7 + 16) = xmmword_29D93DDB0;
  sub_29D7E9C48(0, &qword_2A17B1138, &qword_2A17B1140, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = v20;
  *(v8 + 56) = &type metadata for ViewSandboxCollectionViewItem;
  *(v8 + 64) = sub_29D7E9CB4();
  *(v7 + 32) = v8;
  v21 = 0x3C53447961727241;
  v22 = 0xE800000000000000;
  sub_29D933A48();
  v9 = sub_29D933A18();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x29ED6A240](v9, v11);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  sub_29D9351D8();
  swift_allocObject();
  sub_29D9351E8();
  sub_29D935588();

  sub_29D7E9A60(0);
  sub_29D7ED64C(&qword_2A17B5500, 255, sub_29D7E9A60, MEMORY[0x29EDC1E90]);
  v12 = sub_29D9355C8();

  sub_29D935F88();
  sub_29D7E9AC0(0);
  v13 = swift_allocObject();
  *(v13 + 16) = v20;
  v14 = sub_29D7ED64C(&qword_2A17B5508, 255, sub_29D7E9B2C, MEMORY[0x29EDC2110]);
  *(v13 + 32) = v12;
  *(v13 + 40) = v14;

  sub_29D935FA8();
  v15 = objc_allocWithZone(sub_29D936D98());
  v16 = sub_29D936D88();
  v17 = [a1 navigationController];
  if (v17)
  {
    v18 = v17;
    [v17 pushViewController:v16 animated:1];
  }
}

uint64_t sub_29D7E24AC()
{
  type metadata accessor for ViewSandboxCollectionViewCell();
  sub_29D7ED64C(&qword_2A17B5548, 255, type metadata accessor for ViewSandboxCollectionViewCell, &unk_29D956858);
  return sub_29D93A348();
}

uint64_t sub_29D7E2520(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D935D08();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CC8();
  v7 = sub_29D935CF8();
  (*(v3 + 8))(v6, v2);
  return v7;
}

void sub_29D7E25F4(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v3 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingViewController());
  v4 = sub_29D827BF4(v2, 0);
  [a1 presentViewController:v4 animated:1 completion:0];
}

id sub_29D7E26EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeartInternalSettingsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D7E272C(uint64_t a1)
{
  v1 = [objc_allocWithZone(type metadata accessor for BPCameraScannerFlowViewController(0)) init];
  sub_29D936708();
  sub_29D9366E8();
}

uint64_t sub_29D7E279C(void *a1, uint64_t a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000003BLL, 0x800000029D964600);
  MEMORY[0x29ED6A240](0xD000000000000040, 0x800000029D964640);
  v4 = a1;
  sub_29D695734(0, &qword_2A1A24850, MEMORY[0x29EDC9F18], 1);
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  return 0;
}

void sub_29D7E28BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (sub_29D939D68() == a1 && v9 == a2)
  {
    goto LABEL_12;
  }

  v11 = sub_29D93AD78();

  if (v11)
  {
LABEL_13:
    v15 = HKLogBloodPressureJournal();
    v16 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    v17 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v15 healthDataSource:v16];

    v18 = [objc_allocWithZone(MEMORY[0x29EDC5200]) initWithEventSubmissionManager_];
    v19 = [a3 notification];
    v20 = [v19 request];

    v21 = [v20 content];
    v22 = [v21 userInfo];

    v23 = sub_29D939C68();
    v37 = sub_29D939D68();
    v38 = v24;
    sub_29D93A9A8();
    if (*(v23 + 16) && (v25 = sub_29D6908F8(v36), (v26 & 1) != 0))
    {
      sub_29D694294(*(v23 + 56) + 32 * v25, v39);
      sub_29D69466C(v36);

      sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
      if (swift_dynamicCast())
      {
        v27 = v37;
LABEL_19:
        v28 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
        v29 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];

        v30 = swift_allocObject();
        v30[2] = a3;
        v30[3] = v18;
        v30[4] = v27;
        v30[5] = v4;
        v30[6] = ObjectType;
        v36[4] = sub_29D7ED694;
        v36[5] = v30;
        v36[0] = MEMORY[0x29EDCA5F8];
        v36[1] = 1107296256;
        v36[2] = sub_29D6C1F54;
        v36[3] = &unk_2A2446B68;
        v31 = _Block_copy(v36);
        v32 = a3;
        v33 = v18;
        v34 = v27;
        v35 = v4;

        [v29 fetchActiveJournalWithCompletion_];
        _Block_release(v31);

        return;
      }
    }

    else
    {

      sub_29D69466C(v36);
    }

    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    v27 = sub_29D93A6E8();
    goto LABEL_19;
  }

  if (sub_29D939D68() == a1 && v12 == a2)
  {
LABEL_12:

    goto LABEL_13;
  }

  v14 = sub_29D93AD78();

  if (v14)
  {
    goto LABEL_13;
  }
}

void sub_29D7E2CB8(int a1, id a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v10 = a2;
    if (*a4 != -1)
    {
      swift_once();
    }

    v11 = sub_29D937898();
    sub_29D69C6C0(v11, a5);
    v12 = a2;
    v13 = sub_29D937878();
    v14 = sub_29D93A288();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      v25 = a3;
      *v15 = 136446466;
      swift_getMetatypeMetadata();
      v17 = sub_29D939DA8();
      v19 = sub_29D6C2364(v17, v18, &v24);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v25 = a2;
      v20 = a2;
      sub_29D695734(0, &qword_2A1A24850, MEMORY[0x29EDC9F18], 1);
      v21 = sub_29D939DA8();
      v23 = sub_29D6C2364(v21, v22, &v24);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s] Error when submitting analytics event: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v16, -1, -1);
      MEMORY[0x29ED6BE30](v15, -1, -1);
    }

    else
    {
    }
  }
}

id sub_29D7E2EFC(uint64_t a1, int a2, id a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = [a3 actionIdentifier];
  v13 = sub_29D939D68();
  v15 = v14;

  if (v13 == sub_29D939D68() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_29D93AD78();

    if ((v18 & 1) == 0)
    {
      v19 = [a3 actionIdentifier];
      v20 = sub_29D939D68();
      v22 = v21;

      if (v20 == sub_29D939D68() && v22 == v23)
      {
      }

      else
      {
        v25 = sub_29D93AD78();

        if ((v25 & 1) == 0)
        {
          v26 = [a3 actionIdentifier];
          v27 = sub_29D939D68();
          v29 = v28;

          if (v27 == sub_29D939D68() && v29 == v30)
          {
          }

          else
          {
            v36 = sub_29D93AD78();

            if ((v36 & 1) == 0)
            {
              return result;
            }
          }

          v34 = a4;
          v35 = 1;
          goto LABEL_20;
        }
      }

      v34 = a4;
      v35 = 2;
LABEL_20:

      return [v34 submitAnalyticsEvent:v35 forJournal:a1 windowType:a5];
    }
  }

  [a4 submitAnalyticsEvent:3 forJournal:a1 windowType:a5];
  v31 = [a3 notification];
  v32 = swift_allocObject();
  *(v32 + 16) = a7;
  sub_29D7EC3F4(v31, sub_29D7ED6A4, v32);
}

void sub_29D7E31F0(int a1, NSObject *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v5 = sub_29D937898();
    sub_29D69C6C0(v5, qword_2A1A2BF10);
    v6 = a2;
    v7 = sub_29D937878();
    v8 = sub_29D93A288();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v9 = 136315650;
      v12 = sub_29D93AF08();
      v14 = sub_29D6C2364(v12, v13, &v26);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_29D6C2364(0xD000000000000041, 0x800000029D9646B0, &v26);
      *(v9 + 22) = 2112;
      v15 = a2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 24) = v16;
      *v10 = v16;
      _os_log_impl(&dword_29D677000, v7, v8, "[%s.%s]: Unable to snooze notification for blood pressure journal notification: %@", v9, 0x20u);
      sub_29D7ED010(v10, &qword_2A1A21FC0, &qword_2A1A21FD0, 0x29EDC9738, sub_29D6F9FC4);
      MEMORY[0x29ED6BE30](v10, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v11, -1, -1);
      MEMORY[0x29ED6BE30](v9, -1, -1);

      return;
    }

    v24 = a2;
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v17 = sub_29D937898();
    sub_29D69C6C0(v17, qword_2A1A2BF10);
    oslog = sub_29D937878();
    v18 = sub_29D93A2A8();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315394;
      v21 = sub_29D93AF08();
      v23 = sub_29D6C2364(v21, v22, &v26);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_29D6C2364(0xD000000000000041, 0x800000029D9646B0, &v26);
      _os_log_impl(&dword_29D677000, oslog, v18, "[%s.%s]: Snoozed notification for blood pressure journal for 10 minutes", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v20, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);

      return;
    }

    v24 = oslog;
  }
}

id sub_29D7E35D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v5 = sub_29D9371A8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:a1 healthStore:a3 currentCountryCode:0];
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  v11 = sub_29D9371B8();
  v12 = [v11 areAllRequirementsSatisfied];

  (*(v6 + 8))(v9, v5);
  return v12;
}

uint64_t sub_29D7E3908(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  a8(v16, a7, v14);
}

uint64_t sub_29D7E39C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_29D9336F8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_29D939FF8();
  v5[7] = sub_29D939FE8();
  v8 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D7E3ABC, v8, v7);
}

uint64_t sub_29D7E3ABC()
{
  v30 = v0;

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A1A2C008);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_29D937878();
  v7 = sub_29D93A2A8();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136446722;
    v14 = sub_29D93AF08();
    v16 = sub_29D6C2364(v14, v15, &v29);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29D6C2364(0xD000000000000010, 0x800000029D964690, &v29);
    *(v12 + 22) = 2082;
    v17 = sub_29D933688();
    v19 = v18;
    (*(v10 + 8))(v9, v11);
    v20 = sub_29D6C2364(v17, v19, &v29);

    *(v12 + 24) = v20;
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s.%{public}s] Attempting to navigate to: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = objc_opt_self();
  v22 = [v21 sharedApplication];
  v23 = [v22 delegate];

  if (v23)
  {
    if ([v23 respondsToSelector_])
    {
      v24 = [v21 sharedApplication];
      sub_29D73F7BC(MEMORY[0x29EDCA190]);
      v25 = sub_29D9336B8();
      type metadata accessor for OpenURLOptionsKey(0);
      sub_29D7ED64C(&unk_2A17B55C0, 255, type metadata accessor for OpenURLOptionsKey, &unk_29D93F3A4);
      v26 = sub_29D939C58();
      [v23 application:v24 openURL:v25 options:v26];
    }

    sub_29D936978();
  }

  v27 = v0[1];

  return v27();
}

void sub_29D7E3E60(void *a1, char *a2, void (*a3)(char *, uint64_t))
{
  ObjectType = swift_getObjectType();
  v6 = sub_29D936378();
  v135 = *(v6 - 8);
  v136 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v134 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9336F8();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v132 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v131 = &v127 - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v129 = &v127 - v19;
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v127 - v21;
  v23 = sub_29D935E38();
  sub_29D7ECE30(a1, v23, a3);

  v24 = *(a3 + 3);
  v138 = a3;
  sub_29D693E2C(a3, v24);
  v25 = sub_29D935448();
  v26 = sub_29D933698();
  v27 = HKHRCardioFitnessEventOnboardingDeepLink();
  sub_29D9336D8();

  v28 = sub_29D933698();
  v137 = v10;
  v29 = *(v10 + 8);
  v29(v22, v9);
  v30 = sub_29D696F08(v28, v26);

  if (v30)
  {

    sub_29D7E4D00(a1, a2, v25);

    return;
  }

  v127 = a1;
  v128 = a2;
  v130 = v25;
  v31 = HKHRCardioFitnessDetailRoomBaseLink();
  sub_29D9336D8();

  v32 = sub_29D933698();
  v29(v22, v9);
  v33 = sub_29D696F08(v32, v26);

  if (v33)
  {

    v34 = v130;
    sub_29D7E5118(v127, v128, v130);

    return;
  }

  v35 = v9;
  v36 = HKHRAFibBurdenOnboardingDeepLink();
  sub_29D9336D8();

  v37 = sub_29D933698();
  v29(v22, v9);
  v38 = sub_29D696F08(v37, v26);

  if (v38)
  {

    v39 = v130;
    sub_29D7E5E20(v127, v128, v130);

    return;
  }

  v40 = HKHRAFibBurdenDetailRoomBaseLink();
  sub_29D9336D8();

  v41 = sub_29D933698();
  v29(v22, v9);
  v42 = sub_29D696F08(v41, v26);

  if (v42)
  {

    v43 = v130;
    sub_29D7E6820(v127, v128, v130);

    return;
  }

  v44 = HKHRHypertensionNotificationsOnboardingDeepLink();
  sub_29D9336D8();

  v45 = sub_29D933698();
  v29(v22, v9);
  v46 = sub_29D696F08(v45, v26);

  if (v46)
  {

    v47 = *MEMORY[0x29EDBA6F0];
    v48 = *MEMORY[0x29EDBA578];
    v49 = v128;
    v50 = sub_29D935E18();
    LOBYTE(v47) = sub_29D7E35D0(v47, v48, v50);

    if (v47)
    {
      v51 = v130;
      sub_29D7E6AF8(v127, v49, v130);

      return;
    }

    goto LABEL_20;
  }

  v52 = HKHRHypertensionNotificationsDetailRoomBaseLink();
  sub_29D9336D8();

  v53 = sub_29D933698();
  v29(v22, v9);
  v54 = sub_29D696F08(v53, v26);

  if (v54)
  {
    v55 = [objc_opt_self() sharedBehavior];
    if (v55)
    {
      v56 = v55;
      v57 = [v55 features];

      v58 = v130;
      if (v57)
      {

        v59 = [v57 hermit];

        if (v59)
        {
          sub_29D7E7118(v127, v128, v58);
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v60 = HKHRBloodPressureDetailRoomBaseLink();
  sub_29D9336D8();

  v61 = sub_29D933698();
  v29(v22, v9);
  v62 = sub_29D696F08(v61, v26);

  if (v62)
  {
    sub_29D7E74E4(v127, v128, v138);
LABEL_20:

    return;
  }

  v64 = v127;
  v63 = v128;
  v65 = v130;
  if (sub_29D7E7AA8(v127, v128, v130) & 1) != 0 || (sub_29D7E8330(v64, v63))
  {
LABEL_36:

    return;
  }

  v66 = sub_29D9336B8();
  v67 = _HKSampleTypeFromURL();

  if (!v67)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v86 = sub_29D937898();
    sub_29D69C6C0(v86, qword_2A1A2C008);
    v87 = v132;
    (*(v137 + 16))(v132, v64, v9);
    v67 = sub_29D937878();
    v88 = sub_29D93A288();
    if (!os_log_type_enabled(v67, v88))
    {

      v29(v87, v9);
      return;
    }

    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v138 = v29;
    v91 = v90;
    v140 = v90;
    *v89 = 136446722;
    v92 = sub_29D93AF08();
    v94 = sub_29D6C2364(v92, v93, &v140);

    *(v89 + 4) = v94;
    *(v89 + 12) = 2082;
    *(v89 + 14) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D9642A0, &v140);
    *(v89 + 22) = 2082;
    v95 = sub_29D933688();
    v97 = v96;
    v138(v87, v35);
    v98 = sub_29D6C2364(v95, v97, &v140);

    *(v89 + 24) = v98;
    _os_log_impl(&dword_29D677000, v67, v88, "[%{public}s.%{public}s] Failed to resolve HKSampleType from URL: %{public}s", v89, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v91, -1, -1);
    MEMORY[0x29ED6BE30](v89, -1, -1);
    goto LABEL_35;
  }

  v138 = v29;
  v68 = v134;
  sub_29D935DF8();
  sub_29D84D948(v67, v68);
  v70 = v69;
  (*(v135 + 8))(v68, v136);
  if (!v70)
  {
LABEL_35:

    goto LABEL_36;
  }

  v71 = sub_29D935E38();
  v72 = [v71 presentedViewController];

  if (!v72)
  {
LABEL_39:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v99 = sub_29D937898();
    sub_29D69C6C0(v99, qword_2A1A2C008);
    v100 = v131;
    (*(v137 + 16))(v131, v64, v35);
    v101 = sub_29D937878();
    v102 = sub_29D93A2A8();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v139 = v70;
      v140 = v104;
      v105 = v104;
      *v103 = 136446722;
      v106 = sub_29D93AF08();
      v108 = sub_29D6C2364(v106, v107, &v140);
      v136 = v67;
      v109 = v108;

      *(v103 + 4) = v109;
      *(v103 + 12) = 2082;
      *(v103 + 14) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D9642A0, &v140);
      *(v103 + 22) = 2082;
      v110 = sub_29D933688();
      v112 = v111;
      v138(v100, v35);
      v113 = sub_29D6C2364(v110, v112, &v140);
      v67 = v136;

      *(v103 + 24) = v113;
      _os_log_impl(&dword_29D677000, v101, v102, "[%{public}s.%{public}s] Opening URL: %{public}s", v103, 0x20u);
      swift_arrayDestroy();
      v114 = v105;
      v70 = v139;
      MEMORY[0x29ED6BE30](v114, -1, -1);
      MEMORY[0x29ED6BE30](v103, -1, -1);
    }

    else
    {

      v138(v100, v35);
    }

    if (v65)
    {
      [v65 pushViewController:v70 animated:0];
    }

    return;
  }

  if ((sub_29D7E8B78() & 1) == 0)
  {

    goto LABEL_39;
  }

  v139 = v70;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v136 = v67;
  v73 = sub_29D937898();
  sub_29D69C6C0(v73, qword_2A1A2C008);
  v74 = v129;
  (*(v137 + 16))(v129, v64, v35);
  v75 = sub_29D937878();
  v76 = sub_29D93A2A8();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v140 = v78;
    *v77 = 136446722;
    v79 = sub_29D93AF08();
    v81 = sub_29D6C2364(v79, v80, &v140);

    *(v77 + 4) = v81;
    *(v77 + 12) = 2082;
    *(v77 + 14) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D9642A0, &v140);
    *(v77 + 22) = 2082;
    v82 = sub_29D933688();
    v84 = v83;
    v138(v74, v35);
    v85 = sub_29D6C2364(v82, v84, &v140);

    *(v77 + 24) = v85;
    _os_log_impl(&dword_29D677000, v75, v76, "%{public}s.%{public}s ECG/IRN on-boarding is showing for url %{public}s. We will not disrupt this flow.", v77, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v78, -1, -1);
    MEMORY[0x29ED6BE30](v77, -1, -1);
  }

  else
  {

    v138(v74, v35);
  }

  objc_opt_self();
  v115 = v136;
  v116 = swift_dynamicCastObjCClass();
  v117 = v130;
  if (v116)
  {
    if (sub_29D7E8D18())
    {
      if (v117)
      {
        v118 = v130;
        v119 = v139;
        [v130 pushViewController:v139 animated:0];
      }

      else
      {
      }

      return;
    }

LABEL_59:

    return;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_59;
  }

  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v121 = v115;
  v122 = [ObjCClassFromMetadata atrialFibrillationEventType];
  if (!v122)
  {

    goto LABEL_62;
  }

  v123 = v122;
  v124 = sub_29D93A708();

  if ((v124 & 1) == 0)
  {
LABEL_62:

    goto LABEL_20;
  }

  if ((sub_29D7E8DE0() & 1) == 0)
  {

    goto LABEL_20;
  }

  if (v130)
  {
    v125 = v130;
    v126 = v139;
    [v130 pushViewController:v139 animated:0];
  }

  else
  {
  }
}

void sub_29D7E4D00(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = a1;
  v35 = a3;
  v33[1] = swift_getObjectType();
  v4 = sub_29D9336F8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D936378();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v14 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA970]);
  v36 = a2;
  sub_29D935DF8();
  sub_29D84D948(v14, v13);
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  if (v16)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v17 = sub_29D937898();
    sub_29D69C6C0(v17, qword_2A1A2C008);
    (*(v5 + 16))(v8, v34, v4);
    v18 = sub_29D937878();
    v19 = sub_29D93A2A8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37 = v34;
      *v20 = 136446722;
      v21 = sub_29D93AF08();
      v23 = sub_29D6C2364(v21, v22, &v37);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_29D6C2364(0xD00000000000003ELL, 0x800000029D9642C0, &v37);
      *(v20 + 22) = 2082;
      v24 = sub_29D933688();
      v26 = v25;
      (*(v5 + 8))(v8, v4);
      v27 = sub_29D6C2364(v24, v26, &v37);

      *(v20 + 24) = v27;
      _os_log_impl(&dword_29D677000, v18, v19, "[%{public}s.%{public}s]: Opening URL: %{public}s", v20, 0x20u);
      v28 = v34;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v28, -1, -1);
      MEMORY[0x29ED6BE30](v20, -1, -1);

      v29 = v35;
      if (!v35)
      {
        goto LABEL_9;
      }
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      v29 = v35;
      if (!v35)
      {
LABEL_9:
        v30 = sub_29D935E18();
        v31 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingViewController());
        v32 = sub_29D827BF4(v30, 1);
        [v16 presentViewController:v32 animated:0 completion:0];

        v14 = v32;
        goto LABEL_10;
      }
    }

    [v29 pushViewController:v16 animated:0];
    goto LABEL_9;
  }

LABEL_10:
}

void sub_29D7E5118(uint64_t a1, uint64_t a2, void *a3)
{
  v110 = a3;
  v111 = a2;
  ObjectType = swift_getObjectType();
  v114 = sub_29D936378();
  v4 = *(v114 - 8);
  MEMORY[0x2A1C7C4A8](v114, v5);
  v116 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D9336F8();
  v118 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7, v8);
  v11 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v113 = &v102 - v14;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v102 - v16;
  v18 = sub_29D933218();
  v19 = *(v18 - 8);
  v108 = v18;
  v109 = v19;
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7ED440(0, &qword_2A17B5E70, MEMORY[0x29EDB9940], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v23 - 8, v24);
  v26 = &v102 - v25;
  v27 = sub_29D933278();
  v28 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27, v29);
  v31 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a1;
  sub_29D933248();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_29D7ED010(v26, &qword_2A17B5E70, MEMORY[0x29EDB9940], MEMORY[0x29EDC9C68], sub_29D7ED440);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v32 = sub_29D937898();
    sub_29D69C6C0(v32, qword_2A1A2C008);
    v33 = v118;
    (v118)[2](v11, v117, v7);
    v34 = sub_29D937878();
    v35 = sub_29D93A288();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v119[0] = v37;
      *v36 = 136446722;
      v38 = sub_29D93AF08();
      v40 = sub_29D6C2364(v38, v39, v119);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_29D6C2364(0xD00000000000003ELL, 0x800000029D964300, v119);
      *(v36 + 22) = 2082;
      v41 = sub_29D933688();
      v43 = v42;
      (v33[1])(v11, v7);
      v44 = sub_29D6C2364(v41, v43, v119);

      *(v36 + 24) = v44;
      _os_log_impl(&dword_29D677000, v34, v35, "[%{public}s.%{public}s]: Failed to initialize url components for url %{public}s", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v37, -1, -1);
      MEMORY[0x29ED6BE30](v36, -1, -1);
    }

    else
    {

      (v33[1])(v11, v7);
    }

    return;
  }

  v105 = v28;
  v106 = v27;
  (*(v28 + 32))(v31, v26, v27);
  v45 = sub_29D933228();
  v46 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  v47 = v118;
  v48 = v4;
  v107 = v4;
  v104 = v31;
  if (!v45)
  {
    goto LABEL_20;
  }

  if (!*(v45 + 16))
  {

LABEL_20:
    if (v46[227] != -1)
    {
      swift_once();
    }

    v62 = sub_29D937898();
    sub_29D69C6C0(v62, qword_2A1A2C008);
    (v47)[2](v17, v117, v7);
    v63 = sub_29D937878();
    v64 = sub_29D93A2A8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v119[0] = v66;
      *v65 = 136446722;
      v67 = sub_29D93AF08();
      v69 = sub_29D6C2364(v67, v68, v119);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2082;
      *(v65 + 14) = sub_29D6C2364(0xD00000000000003ELL, 0x800000029D964300, v119);
      *(v65 + 22) = 2082;
      v70 = sub_29D933688();
      v72 = v71;
      (v118[1])(v17, v7);
      v73 = sub_29D6C2364(v70, v72, v119);
      v47 = v118;

      *(v65 + 24) = v73;
      _os_log_impl(&dword_29D677000, v63, v64, "[%{public}s.%{public}s]: Unable to extract chart context for url %{public}s", v65, 0x20u);
      swift_arrayDestroy();
      v74 = v66;
      v48 = v107;
      MEMORY[0x29ED6BE30](v74, -1, -1);
      MEMORY[0x29ED6BE30](v65, -1, -1);
    }

    else
    {

      (v47[1])(v17, v7);
    }

    v101 = 0;
    goto LABEL_26;
  }

  v103 = v7;
  v49 = v108;
  v50 = v109;
  (*(v109 + 16))(v22, v45 + ((*(v109 + 80) + 32) & ~*(v109 + 80)), v108);

  v51 = sub_29D9331F8();
  v53 = v52;
  v54 = HKHRCardioFitnessChartContextQueryName();
  v55 = sub_29D939D68();
  v57 = v56;

  if (v51 == v55 && v53 == v57)
  {

    v7 = v103;
    v48 = v107;
  }

  else
  {
    v58 = sub_29D93AD78();

    v7 = v103;
    v48 = v107;
    if ((v58 & 1) == 0)
    {
      (*(v50 + 8))(v22, v49);
      v47 = v118;
      v46 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      goto LABEL_20;
    }
  }

  sub_29D933208();
  v46 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  if (!v59)
  {
    (*(v50 + 8))(v22, v49);
    v47 = v118;
    goto LABEL_20;
  }

  v102 = sub_29D933708();
  v61 = v60;

  v103 = v61;
  if (v61 >> 60 == 15)
  {
    (*(v109 + 8))(v22, v49);
    v47 = v118;
    goto LABEL_20;
  }

  sub_29D9330D8();
  swift_allocObject();
  sub_29D9330C8();
  sub_29D935038();
  sub_29D7ED64C(&unk_2A17B5560, 255, MEMORY[0x29EDC1CE8], MEMORY[0x29EDC1CF8]);
  sub_29D9330B8();
  v47 = v118;
  (*(v109 + 8))(v22, v49);

  sub_29D71847C(v102, v103);
  v101 = v119[0];
LABEL_26:
  v75 = v116;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v76 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA970]);
  sub_29D935DF8();
  v77 = v101;
  sub_29D936308();
  sub_29D84D948(v76, v75);
  v79 = v113;
  if (v78)
  {
    v80 = v78;
    v112 = v77;
    v118 = v76;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v81 = sub_29D937898();
    sub_29D69C6C0(v81, qword_2A1A2C008);
    (v47)[2](v79, v117, v7);
    v82 = sub_29D937878();
    v83 = sub_29D93A2A8();
    v84 = os_log_type_enabled(v82, v83);
    v85 = v104;
    if (v84)
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v103 = v7;
      v88 = v87;
      v119[0] = v87;
      *v86 = 136446722;
      v89 = sub_29D93AF08();
      v91 = v85;
      v92 = sub_29D6C2364(v89, v90, v119);

      *(v86 + 4) = v92;
      *(v86 + 12) = 2082;
      *(v86 + 14) = sub_29D6C2364(0xD00000000000003ELL, 0x800000029D964300, v119);
      *(v86 + 22) = 2082;
      v93 = sub_29D933688();
      v95 = v94;
      (v47[1])(v79, v103);
      v96 = sub_29D6C2364(v93, v95, v119);
      v85 = v91;
      v97 = v114;
      v75 = v116;

      *(v86 + 24) = v96;
      _os_log_impl(&dword_29D677000, v82, v83, "[%{public}s.%{public}s]: Opening detail room URL: %{public}s", v86, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v88, -1, -1);
      v98 = v86;
      v48 = v107;
      MEMORY[0x29ED6BE30](v98, -1, -1);

      v100 = v105;
      v99 = v106;
    }

    else
    {

      (v47[1])(v79, v7);
      v100 = v105;
      v99 = v106;
      v97 = v114;
    }

    [v110 pushViewController:v80 animated:0];

    (*(v48 + 8))(v75, v97);
    (*(v100 + 8))(v85, v99);
  }

  else
  {

    (*(v48 + 8))(v75, v114);
    (*(v105 + 8))(v104, v106);
  }
}

void sub_29D7E5E20(void *a1, char *a2, void *a3)
{
  v76 = a3;
  v74 = a1;
  ObjectType = swift_getObjectType();
  v77 = type metadata accessor for AFibBurdenOnboardingPresentationContext(0);
  v5 = MEMORY[0x2A1C7C4A8](v77, v4);
  v79 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v81 = v72 - v8;
  v73 = sub_29D9336F8();
  v9 = *(v73 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v73, v11);
  v12 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D936378();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v18 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  v78 = a2;
  sub_29D935DF8();
  v80 = v18;
  sub_29D84D948(v18, v17);
  v20 = v19;
  (*(v14 + 8))(v17, v13);
  if (v20)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v21, qword_2A1A2BF58);
    v22 = v73;
    (*(v9 + 16))(v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v74, v73);
    v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    (*(v9 + 32))(v25 + v23, v12, v22);
    *(v25 + v24) = ObjectType;
    v90[0] = 0;
    sub_29D9371C8();

    if (v76)
    {
      [v76 pushViewController:v20 animated:0];
    }

    v26 = sub_29D935E18();
    sub_29D935E08();
    sub_29D935E28();
    swift_storeEnumTagMultiPayload();
    v27 = type metadata accessor for AFibBurdenOnboardingController();
    v28 = objc_allocWithZone(v27);
    *&v28[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = 0;
    v28[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_navigateToDetailRoomUponOnboardingCompletion] = 0;
    v88.receiver = v28;
    v88.super_class = v27;
    v78 = objc_msgSendSuper2(&v88, sel_initWithNibName_bundle_, 0, 0);
    [v78 setModalPresentationStyle_];
    v29 = *MEMORY[0x29EDBA6B0];
    v30 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v26];
    v31 = *MEMORY[0x29EDBA6F8];
    v32 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
    v73 = v26;
    v33 = [v32 initWithFeatureIdentifier:v31 healthStore:v26];
    v34 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
    v35 = v30;
    v76 = v35;
    v36 = [v34 initWithFeatureIdentifier:v29 healthStore:v26];
    sub_29D6945AC(v89, &v85);
    v77 = v33;
    v37 = sub_29D71B714(v35, v36, v77, &v85);
    ObjectType = v37;

    sub_29D6945AC(v90, &v85);
    sub_29D6945AC(v89, &v82);
    type metadata accessor for AFibBurdenOnboardingViewControllerFactory();
    v38 = swift_allocObject();
    sub_29D679D3C(&v85, v38 + 16);
    sub_29D679D3C(&v82, v38 + 64);
    *(v38 + 56) = 2;
    v39 = sub_29D933F18();

    v40 = sub_29D933F08();
    v41 = type metadata accessor for AFibBurdenOnboardingFlowManager();
    v86 = v41;
    v87 = &off_2A244DAB0;
    *&v85 = v37;
    v83 = v39;
    v84 = &off_2A24417F8;
    *&v82 = v40;
    v42 = type metadata accessor for AFibBurdenOnboardingModel();
    v43 = swift_allocObject();
    v44 = sub_29D693DDC(&v85, v41);
    MEMORY[0x2A1C7C4A8](v44, v44);
    v46 = (v72 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46);
    v48 = sub_29D693DDC(&v82, v83);
    v74 = v20;
    MEMORY[0x2A1C7C4A8](v48, v48);
    v50 = (v72 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v50);
    v52 = *v46;
    v53 = *v50;
    v43[5] = v41;
    v43[6] = &off_2A244DAB0;
    v43[2] = v52;
    v43[10] = v39;
    v43[11] = &off_2A24417F8;
    v43[7] = v53;
    sub_29D69417C(&v82);
    sub_29D69417C(&v85);
    v54 = v81;
    v55 = v79;
    sub_29D71B998(v81, v79);

    v56 = HKHRAFibBurdenLogForCategory();
    v57 = objc_allocWithZone(MEMORY[0x29EDBAA00]);
    v58 = v73;
    v59 = [v57 initWithLoggingCategory:v56 healthDataSource:v73];

    v86 = v42;
    v87 = &off_2A2441928;
    *&v85 = v43;
    type metadata accessor for AFibBurdenOnboardingCoordinator(0);
    v60 = swift_allocObject();
    v61 = sub_29D693DDC(&v85, v42);
    v72[1] = v72;
    MEMORY[0x2A1C7C4A8](v61, v61);
    v63 = (v72 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v64 + 16))(v63);
    v65 = *v63;
    v83 = v42;
    v84 = &off_2A2441928;
    *&v82 = v65;
    *(v60 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber) = 0;
    v66 = v60 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
    *(v60 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController + 8) = 0;
    swift_unknownObjectWeakInit();
    sub_29D6945AC(&v82, v60 + 16);
    sub_29D71B998(v55, v60 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext);
    *(v66 + 8) = &off_2A24497D8;
    v67 = v78;
    swift_unknownObjectWeakAssign();

    *(v60 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_viewFactory) = v38;
    *(v60 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_healthStore) = v58;
    *(v60 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager) = v59;

    v68 = v58;
    v69 = v59;
    sub_29D862C98();

    sub_29D71B9FC(v55);
    sub_29D69417C(&v82);
    sub_29D69417C(&v85);

    sub_29D71B9FC(v54);
    sub_29D69417C(v89);
    sub_29D69417C(v90);
    *&v67[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = v60;

    v70 = v67;

    v71 = v74;
    [v74 presentViewController:v67 animated:0 completion:0];
  }

  else
  {
    v70 = v80;
  }
}

void sub_29D7E6820(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v19 = a1;
  ObjectType = swift_getObjectType();
  v20 = sub_29D9336F8();
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v20, v5);
  v6 = sub_29D936378();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v11 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D935DF8();
  sub_29D84D948(v11, v10);
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  if (v13)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v14, qword_2A1A2BF58);
    v15 = v20;
    (*(v3 + 16))(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v20);
    v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v17 = swift_allocObject();
    (*(v3 + 32))(v17 + v16, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
    *(v17 + ((v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    v23 = 0;
    sub_29D9371C8();

    if (v22)
    {
      [v22 pushViewController:v13 animated:0];
    }

    v11 = v13;
  }
}

void sub_29D7E6AF8(uint64_t a1, uint64_t a2, void *a3)
{
  v51 = a3;
  ObjectType = swift_getObjectType();
  v5 = sub_29D9336F8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D936378();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v15 = [swift_getObjCClassFromMetadata() hypertensionEventType];
  if (v15)
  {
    v16 = v15;
    v48[1] = a2;
    sub_29D935DF8();
    sub_29D84D948(v16, v14);
    v18 = v17;
    (*(v11 + 8))(v14, v10);
    if (v18)
    {
      v49 = v18;
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v19 = sub_29D937898();
      sub_29D69C6C0(v19, qword_2A1A2C008);
      (*(v6 + 16))(v9, a1, v5);
      v20 = sub_29D937878();
      v21 = sub_29D93A2A8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v52 = v23;
        *v22 = 136446722;
        v24 = sub_29D93AF08();
        v26 = sub_29D6C2364(v24, v25, &v52);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2082;
        *(v22 + 14) = sub_29D6C2364(0xD00000000000004ALL, 0x800000029D964400, &v52);
        *(v22 + 22) = 2082;
        v27 = sub_29D933688();
        v29 = v28;
        (*(v6 + 8))(v9, v5);
        v30 = sub_29D6C2364(v27, v29, &v52);

        *(v22 + 24) = v30;
        _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s.%{public}s]: Opening URL: %{public}s", v22, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v23, -1, -1);
        MEMORY[0x29ED6BE30](v22, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v9, v5);
      }

      if (v51)
      {
        [v51 pushViewController:v49 animated:0];
      }

      v31 = sub_29D935E18();
      v32 = type metadata accessor for HypertensionNotificationsOnboardingViewController();
      v33 = objc_allocWithZone(v32);
      *&v33[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = 0;
      v33[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_navigateToDetailRoomUponOnboardingCompletion] = 1;
      v34 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F0] healthStore:v31];
      type metadata accessor for HypertensionNotificationsOnboardingFlowManager();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      sub_29D933F18();

      v36 = sub_29D933F08();
      v37 = sub_29D6C9F00(v35, v36);
      type metadata accessor for HypertensionNotificationsOnboardingViewControllerFactory();
      v38 = swift_allocObject();
      *(v38 + 16) = 1;
      v54.receiver = v33;
      v54.super_class = v32;
      v39 = objc_msgSendSuper2(&v54, sel_initWithNibName_bundle_, 0, 0);
      [v39 setModalPresentationStyle_];
      v40 = type metadata accessor for HypertensionNotificationsOnboardingCoordinator();
      v41 = objc_allocWithZone(v40);
      *&v41[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_rootViewController + 8] = 0;
      *(swift_unknownObjectWeakInit() + 8) = &off_2A244D708;
      swift_unknownObjectWeakAssign();
      *&v41[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_model] = v37;
      *&v41[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_factory] = v38;
      v42 = v37;

      v43 = HKLogHeartRateCategory();
      v44 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v43 healthDataSource:v31];

      *&v41[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_eventSubmissionManager] = v44;
      v41[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_provenance] = 3;
      v53.receiver = v41;
      v53.super_class = v40;
      v45 = objc_msgSendSuper2(&v53, sel_init);
      sub_29D8E53B0();
      sub_29D8E5270(0, 0, 5);

      v46 = *&v39[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator];
      *&v39[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = v45;

      v47 = v49;
      [v49 presentViewController:v39 animated:0 completion:0];

      v16 = v39;
    }
  }
}

void sub_29D7E7118(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = a3;
  v31[1] = swift_getObjectType();
  v4 = sub_29D9336F8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D936378();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v14 = [swift_getObjCClassFromMetadata() hypertensionEventType];
  if (v14)
  {
    v15 = v14;
    sub_29D935DF8();
    sub_29D84D948(v15, v13);
    v17 = v16;
    (*(v10 + 8))(v13, v9);
    if (!v17)
    {
LABEL_11:

      return;
    }

    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v18 = sub_29D937898();
    sub_29D69C6C0(v18, qword_2A1A2C008);
    (*(v5 + 16))(v8, a1, v4);
    v19 = sub_29D937878();
    v20 = sub_29D93A2A8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      v33 = v31[0];
      *v21 = 136446722;
      v22 = sub_29D93AF08();
      v24 = sub_29D6C2364(v22, v23, &v33);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_29D6C2364(0xD00000000000004ALL, 0x800000029D964450, &v33);
      *(v21 + 22) = 2082;
      v25 = sub_29D933688();
      v27 = v26;
      (*(v5 + 8))(v8, v4);
      v28 = sub_29D6C2364(v25, v27, &v33);

      *(v21 + 24) = v28;
      _os_log_impl(&dword_29D677000, v19, v20, "[%{public}s.%{public}s]: Opening detail room URL: %{public}s", v21, 0x20u);
      v29 = v31[0];
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v29, -1, -1);
      MEMORY[0x29ED6BE30](v21, -1, -1);

      v30 = v32;
      if (!v32)
      {
        goto LABEL_10;
      }
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      v30 = v32;
      if (!v32)
      {
LABEL_10:

        v15 = v17;
        goto LABEL_11;
      }
    }

    [v30 pushViewController:v17 animated:0];
    goto LABEL_10;
  }
}

void sub_29D7E74E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v53 = a3;
  v54 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_29D935168();
  v55 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9336F8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v15 = sub_29D937898();
  v16 = sub_29D69C6C0(v15, qword_2A1A2C008);
  (*(v11 + 16))(v14, a1, v10);
  v52 = v16;
  v17 = sub_29D937878();
  v18 = sub_29D93A2A8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v50 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v51 = v6;
    v49 = v21;
    v57 = v21;
    *v20 = 136315650;
    v22 = sub_29D93AF08();
    v24 = sub_29D6C2364(v22, v23, &v57);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_29D6C2364(0xD000000000000043, 0x800000029D9644A0, &v57);
    *(v20 + 22) = 2080;
    sub_29D7ED64C(&qword_2A17B5570, 255, MEMORY[0x29EDB9B18], MEMORY[0x29EDB9B40]);
    v25 = sub_29D93AD38();
    v27 = v26;
    (*(v11 + 8))(v14, v10);
    v28 = sub_29D6C2364(v25, v27, &v57);

    *(v20 + 24) = v28;
    _os_log_impl(&dword_29D677000, v17, v18, "[%s.%s]: Opening Blood Pressure Detail Room and presenting Add Data modal from URL: %s", v20, 0x20u);
    v29 = v49;
    swift_arrayDestroy();
    v6 = v51;
    MEMORY[0x29ED6BE30](v29, -1, -1);
    v30 = v20;
    v4 = v50;
    MEMORY[0x29ED6BE30](v30, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v31 = sub_29D693E2C(v53, v53[3]);
  MEMORY[0x2A1C7C4A8](v31, v32);
  v33 = v54;
  *(&v48 - 2) = v4;
  *(&v48 - 1) = v33;
  type metadata accessor for BloodPressureDataTypeDetailViewController(0);
  v34 = v55;
  (*(v55 + 104))(v9, *MEMORY[0x29EDC1E10], v6);
  v35 = sub_29D935468();
  v37 = v36;
  (*(v34 + 8))(v9, v6);
  v37[qword_2A17B51B8] = 1;
  sub_29D7D0ED8(1);
  v38 = sub_29D937878();
  v39 = sub_29D93A2A8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v57 = v41;
    *v40 = 136315650;
    v42 = sub_29D93AF08();
    v44 = sub_29D6C2364(v42, v43, &v57);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_29D6C2364(0xD000000000000043, 0x800000029D9644A0, &v57);
    *(v40 + 22) = 2080;
    if (v35)
    {
      v45 = 7824750;
    }

    else
    {
      v45 = 0x676E697473697865;
    }

    if (v35)
    {
      v46 = 0xE300000000000000;
    }

    else
    {
      v46 = 0xE800000000000000;
    }

    v47 = sub_29D6C2364(v45, v46, &v57);

    *(v40 + 24) = v47;
    _os_log_impl(&dword_29D677000, v38, v39, "[%s.%s]: Presented Add Data modal from %s room.", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v41, -1, -1);
    MEMORY[0x29ED6BE30](v40, -1, -1);
  }
}

uint64_t sub_29D7E7AA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v89 = v4;
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x29EDC9C68];
  sub_29D7ED440(0, &unk_2A17B5578, MEMORY[0x29EDC2B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v76 - v11;
  v13 = sub_29D936378();
  v87 = *(v13 - 8);
  v88 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v86 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D9336F8();
  v91 = *(v16 - 8);
  v92 = v16;
  MEMORY[0x2A1C7C4A8](v16, v17);
  v90 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7ED440(0, &unk_2A17B55A8, MEMORY[0x29EDB9C08], v8);
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v22 = &v76 - v21;
  v23 = sub_29D933A58();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v27 = MEMORY[0x2A1C7C4A8](v23, v26);
  v84 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v30 = &v76 - v29;
  v31 = sub_29D933698();
  v32 = v31;
  if (v31[2] != 3)
  {
    goto LABEL_9;
  }

  v82 = a3;
  v83 = a2;
  v33 = v23;
  v81 = v12;
  v35 = v31[6];
  v34 = v31[7];
  if (v35 == sub_29D939D68() && v34 == v36)
  {

    goto LABEL_6;
  }

  v37 = sub_29D93AD78();

  if ((v37 & 1) == 0)
  {
LABEL_9:

    return 0;
  }

LABEL_6:
  if (v32[2] < 3uLL)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_12;
  }

  sub_29D935E88();

  sub_29D933A08();

  v35 = v33;
  if ((*(v24 + 48))(v22, 1, v33) == 1)
  {
    sub_29D7ED010(v22, &unk_2A17B55A8, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68], sub_29D7ED440);
    return 0;
  }

  v39 = *(v24 + 32);
  v32 = v30;
  v79 = v24 + 32;
  v80 = v39;
  v39(v30, v22, v33);
  v33 = v24;
  if (qword_2A1A25718 != -1)
  {
    goto LABEL_26;
  }

LABEL_12:
  v40 = sub_29D937898();
  sub_29D69C6C0(v40, qword_2A1A2C008);
  v41 = v90;
  v42 = v91;
  v43 = v92;
  (*(v91 + 16))(v90, a1, v92);
  v44 = sub_29D937878();
  v45 = sub_29D93A2A8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v78 = v33;
    v47 = v32;
    v48 = v42;
    v49 = v46;
    v77 = swift_slowAlloc();
    v93 = v77;
    *v49 = 136446722;
    v50 = sub_29D93AF08();
    LODWORD(ObjectType) = v45;
    v52 = sub_29D6C2364(v50, v51, &v93);

    *(v49 + 4) = v52;
    *(v49 + 12) = 2082;
    *(v49 + 14) = sub_29D6C2364(0xD00000000000004DLL, 0x800000029D964570, &v93);
    *(v49 + 22) = 2082;
    v53 = sub_29D933688();
    v55 = v54;
    (*(v48 + 8))(v41, v43);
    v32 = v47;
    v33 = v78;
    v56 = sub_29D6C2364(v53, v55, &v93);

    *(v49 + 24) = v56;
    _os_log_impl(&dword_29D677000, v44, ObjectType, "[%{public}s.%{public}s]: Opening detail room URL: %{public}s", v49, 0x20u);
    v57 = v77;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v57, -1, -1);
    MEMORY[0x29ED6BE30](v49, -1, -1);
  }

  else
  {

    (*(v42 + 8))(v41, v43);
  }

  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v58 = [swift_getObjCClassFromMetadata() hypertensionEventType];
  if (!v58)
  {
    goto LABEL_23;
  }

  v59 = v58;
  v60 = v86;
  sub_29D935DF8();
  sub_29D84D948(v59, v60);
  v62 = v61;
  (*(v87 + 8))(v60, v88);
  if (!v62)
  {
    (*(v33 + 8))(v32, v35);

    return 0;
  }

  type metadata accessor for HypertensionNotificationsRoomViewController(0);
  v63 = swift_dynamicCastClass();
  if (!v63)
  {

LABEL_23:
    (*(v33 + 8))(v32, v35);
    return 0;
  }

  v64 = v63;
  v65 = v62;
  v66 = sub_29D935E18();
  v67 = *(v33 + 16);
  v68 = v32;
  v76 = v32;
  v69 = v84;
  v67(v84, v68, v35);
  v70 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v71 = v33;
  v72 = (v25 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v80(v73 + v70, v69, v35);
  *(v73 + v72) = v66;
  v74 = v81;
  sub_29D936DD8();
  v75 = sub_29D936DE8();
  (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
  sub_29D936E18();
  sub_29D936E38();

  if (v82)
  {
    [v82 pushViewController:v64 animated:0];

    (*(v71 + 8))(v76, v35);
  }

  else
  {
    (*(v71 + 8))(v76, v35);
  }

  return 1;
}

uint64_t sub_29D7E8330(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v2 = sub_29D936378();
  v66 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v3);
  v5 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D935DD8();
  v65 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7ED440(0, &qword_2A17B5E70, MEMORY[0x29EDB9940], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = v57 - v12;
  v14 = sub_29D933278();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933248();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_29D7ED010(v13, &qword_2A17B5E70, MEMORY[0x29EDB9940], MEMORY[0x29EDC9C68], sub_29D7ED440);
    return 0;
  }

  v64 = v6;
  (*(v15 + 32))(v18, v13, v14);
  sub_29D933268();
  v19 = sub_29D939D28();

  v20 = [v19 pathComponents];

  v21 = sub_29D939F38();
  if (v21[2] != 2 || (v21[4] == 47 ? (v22 = v21[5] == 0xE100000000000000) : (v22 = 0), !v22 && (sub_29D93AD78() & 1) == 0))
  {
    (*(v15 + 8))(v18, v14);

    return 0;
  }

  v23 = v21[6];
  v24 = v21[7];
  sub_29D935E88();

  v25 = sub_29D7DFA00();
  if (!v25[2])
  {

    goto LABEL_18;
  }

  v26 = sub_29D6907F0(v23, v24);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_18:

    (*(v15 + 8))(v18, v14);
    return 0;
  }

  v29 = *(v25[7] + v26);

  v30 = sub_29D935E38();
  v31 = sub_29D93A378();

  v59 = v9;
  if (!v31)
  {
    v31 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  }

  sub_29D899F00(v31, v29, v69);
  sub_29D693E2C(v69, v70);
  v63 = sub_29D934588();
  sub_29D69417C(v69);
  v62 = v31;
  LODWORD(v60) = v29;
  sub_29D899F00(v31, v29, v69);
  sub_29D693E2C(v69, v70);
  sub_29D934578();
  sub_29D69417C(v69);
  v32 = objc_allocWithZone(sub_29D934568());
  v33 = sub_29D934558();
  v34 = objc_allocWithZone(MEMORY[0x29EDC4750]);
  v61 = v33;
  v35 = [v34 initWithRootViewController_];
  v36 = sub_29D935E38();
  v37 = [v36 navigationController];

  v63 = v37;
  if (!v37)
  {
    v45 = sub_29D935E38();
    [v45 presentViewController:v35 animated:0 completion:0];
    v40 = v61;
    v39 = v62;
LABEL_37:

    (*(v15 + 8))(v18, v14);
    return 1;
  }

  v58 = v35;
  v38 = sub_29D89A248(v60);
  v40 = v61;
  v39 = v62;
  if (!v38)
  {
LABEL_36:
    v35 = v63;
    v45 = v58;
    [v63 presentViewController:v58 animated:0 completion:0];
    goto LABEL_37;
  }

  v41 = v38;
  v42 = v59;
  sub_29D935DC8();
  sub_29D935DF8();
  v43 = sub_29D935DB8();
  v60 = v41;
  v46 = v43;
  (*(v66 + 8))(v5, v2);
  v47 = [v63 viewControllers];
  v48 = sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
  v49 = sub_29D939F38();

  if (v49 >> 62)
  {
    result = sub_29D93A928();
  }

  else
  {
    result = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57[1] = 0;
  v67 = v48;
  if (!result)
  {

    v51 = 0;
LABEL_29:
    v68[4] = v51;
    v68[5] = v46;
    v69[0] = MEMORY[0x29EDCA190];
    v52 = v46;
    for (i = 0; i != 2; ++i)
    {
      v54 = v68[i + 4];
      if (v54)
      {
        v55 = v54;
        MEMORY[0x29ED6A300]();
        if (*((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D939F78();
        }

        sub_29D939FA8();
      }
    }

    sub_29D6F9FC4(0, &qword_2A17B55A0, &unk_2A17B3720, 0x29EDC7DA8);
    swift_arrayDestroy();
    v56 = sub_29D939F18();

    [v63 setViewControllers:v56 animated:0];

    (*(v65 + 8))(v42, v64);
    v40 = v61;
    v39 = v62;
    goto LABEL_36;
  }

  if ((v49 & 0xC000000000000001) != 0)
  {
    v50 = MEMORY[0x29ED6AE30](0, v49);
    goto LABEL_27;
  }

  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v50 = *(v49 + 32);
LABEL_27:
    v51 = v50;

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D7E8B78()
{
  objc_opt_self();
  i = swift_dynamicCastObjCClass();
  if (i)
  {
    v2 = v0;
    v3 = [i childViewControllers];
    sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
    v4 = sub_29D939F38();

    if (v4 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
    {
      v11 = v2;
      v5 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x29ED6AE30](v5, v4);
        }

        else
        {
          if (v5 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v6 = *(v4 + 8 * v5 + 32);
        }

        v7 = v6;
        v2 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          break;
        }

        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = [v8 isOnboarding];

          if (v9)
          {
            i = 1;
LABEL_16:
            v2 = v11;
            goto LABEL_17;
          }
        }

        else
        {
        }

        ++v5;
        if (v2 == i)
        {
          i = 0;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_17:
  }

  return i;
}

uint64_t sub_29D7E8D18()
{
  v0 = sub_29D7E98E8();
  if (v0)
  {
    v1 = v0;
    v2 = [v1 description];
    sub_29D939D68();

    sub_29D69AB60();
    v3 = sub_29D93A838();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_29D7E8DE0()
{
  v0 = sub_29D7E98E8();
  if (v0)
  {
    v1 = v0;
    v2 = [v1 description];
    sub_29D939D68();

    sub_29D69AB60();
    v3 = sub_29D93A838();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id sub_29D7E8EA8()
{
  v0 = sub_29D936378();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() bloodPressureType];
  if (result)
  {
    v6 = result;
    sub_29D935DF8();
    v7 = sub_29D7EB100(v6, v4);

    (*(v1 + 8))(v4, v0);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_29D7E8FB8(void *a1)
{
  v1 = [a1 request];
  v2 = [v1 content];

  v3 = [v2 userInfo];
  v4 = MEMORY[0x29EDC9D48];
  v5 = sub_29D939C68();

  v6 = 0;
  v7 = v5 + 64;
  v35 = v5;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = MEMORY[0x29EDCA198];
  while (2)
  {
    if (!v10)
    {
LABEL_8:
      if (v11 <= v6 + 1)
      {
        v16 = v6 + 1;
      }

      else
      {
        v16 = v11;
      }

      v17 = v16 - 1;
      while (1)
      {
        v15 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v15 >= v11)
        {
          v10 = 0;
          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          v6 = v17;
          v39 = 0u;
          v40 = 0u;
          goto LABEL_17;
        }

        v10 = *(v7 + 8 * v15);
        ++v6;
        if (v10)
        {
          v6 = v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    while (1)
    {
      v15 = v6;
LABEL_16:
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v19 = v18 | (v15 << 6);
      sub_29D694610(*(v35 + 48) + 40 * v19, v37);
      sub_29D694294(*(v35 + 56) + 32 * v19, v36);
      v39 = v37[0];
      v40 = v37[1];
      *&v41 = v38;
      sub_29D6940E0(v36, (&v41 + 8));
LABEL_17:
      v46[0] = v41;
      v46[1] = v42;
      v47 = v43;
      v44 = v39;
      v45 = v40;
      if (!*(&v40 + 1))
      {

        return v12;
      }

      sub_29D6940E0((v46 + 8), v37);
      v39 = v44;
      v40 = v45;
      *&v41 = *&v46[0];
      if (swift_dynamicCast())
      {
        break;
      }

      sub_29D69417C(v37);
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v20 = v4;
    v21 = v36[0];
    sub_29D694294(v37, &v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = v12;
    v23 = sub_29D6907F0(v21, *(&v21 + 1));
    v25 = v12[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_34;
    }

    v29 = v24;
    if (v12[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v23;
        sub_29D6932D4();
        v23 = v33;
        if ((v29 & 1) == 0)
        {
LABEL_28:
          v12 = *&v36[0];
          *(*&v36[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
          *(v12[6] + 16 * v23) = v21;
          sub_29D6940E0(&v39, (v12[7] + 32 * v23));
          sub_29D69417C(v37);
          v31 = v12[2];
          v27 = __OFADD__(v31, 1);
          v32 = v31 + 1;
          if (!v27)
          {
            v12[2] = v32;
            goto LABEL_5;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_4:
        v13 = v23;

        v12 = *&v36[0];
        v14 = (*(*&v36[0] + 56) + 32 * v13);
        sub_29D69417C(v14);
        sub_29D6940E0(&v39, v14);
        sub_29D69417C(v37);
LABEL_5:
        v4 = v20;
        continue;
      }

LABEL_27:
      if ((v29 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_4;
    }

    break;
  }

  sub_29D691114(v28, isUniquelyReferenced_nonNull_native);
  v23 = sub_29D6907F0(v21, *(&v21 + 1));
  if ((v29 & 1) == (v30 & 1))
  {
    goto LABEL_27;
  }

LABEL_36:
  result = sub_29D93ADC8();
  __break(1u);
  return result;
}

uint64_t sub_29D7E9354(uint64_t a1, uint64_t a2)
{
  sub_29D93AA18();

  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000003BLL, 0x800000029D964340);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D964380);
  v3 = sub_29D933688();
  MEMORY[0x29ED6A240](v3);

  return 91;
}

uint64_t sub_29D7E9448(uint64_t a1, uint64_t a2)
{
  sub_29D93AA18();

  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000003BLL, 0x800000029D9643A0);
  MEMORY[0x29ED6A240](0xD00000000000001CLL, 0x800000029D9643E0);
  v3 = sub_29D933688();
  MEMORY[0x29ED6A240](v3);

  return 91;
}

uint64_t sub_29D7E953C(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  v5 = [a1 objectType];
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = v5;
  v8 = [ObjCClassFromMetadata hypertensionEventType];
  if (v8)
  {
    v9 = v8;
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
    v10 = v7;
    v11 = sub_29D93A708();

    if (v11)
    {

      return type metadata accessor for HypertensionEventListDataProvider();
    }
  }

  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v13 = [swift_getObjCClassFromMetadata() hypertensiveMeasurementType];

  if (v13)
  {
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
    v14 = sub_29D93A708();

    if (v14)
    {
      if (a2)
      {
        return type metadata accessor for HypertensivePatternMeasurementListDailyAggregatedDataProvider();
      }

      else
      {
        return type metadata accessor for HypertensivePatternMeasurementListDataProvider();
      }
    }
  }

  else
  {
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v15 = sub_29D937898();
  sub_29D69C6C0(v15, qword_2A1A2C008);
  v16 = a1;
  v17 = sub_29D937878();
  v18 = sub_29D93A288();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    v31 = ObjectType;
    *v19 = 136446466;
    swift_getMetatypeMetadata();
    v21 = sub_29D939DA8();
    v23 = sub_29D6C2364(v21, v22, &v30);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v24 = v16;
    v25 = [v24 description];
    v26 = sub_29D939D68();
    v28 = v27;

    v29 = sub_29D6C2364(v26, v28, &v30);

    *(v19 + 14) = v29;
    _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s] Unexpected type passed to Heart plugin for data list data provider: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v20, -1, -1);
    MEMORY[0x29ED6BE30](v19, -1, -1);
  }

  return 0;
}

void *sub_29D7E98E8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    v4 = [v2 childViewControllers];
    sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
    v5 = sub_29D939F38();

    if (v5 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x29ED6AE30](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          return v9;
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

void sub_29D7E9A60(uint64_t a1)
{
  if (!qword_2A17B54F8)
  {
    sub_29D9351D8();
    v1 = sub_29D935208();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B54F8);
    }
  }
}

void sub_29D7E9AC0(uint64_t a1)
{
  if (!qword_2A17B1088)
  {
    sub_29D695734(255, &qword_2A17B1090, MEMORY[0x29EDC2040], 0);
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1088);
    }
  }
}

void sub_29D7E9B2C(uint64_t a1)
{
  if (!qword_2A17B5510)
  {
    sub_29D7E9A60(255);
    sub_29D7ED64C(&qword_2A17B5500, 255, sub_29D7E9A60, MEMORY[0x29EDC1E90]);
    v1 = sub_29D9357B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5510);
    }
  }
}

void sub_29D7E9BC4(uint64_t a1)
{
  if (!qword_2A17B5530)
  {
    sub_29D7E9C48(255, &qword_2A17B42A0, &qword_2A17B1140, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9A40]);
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5530);
    }
  }
}

void sub_29D7E9C48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D695734(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29D7E9CB4()
{
  result = qword_2A17B5540;
  if (!qword_2A17B5540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5540);
  }

  return result;
}

void sub_29D7E9D10(void *a1, uint64_t a2, char a3, _BYTE *a4)
{
  sub_29D7ED440(0, &unk_2A17B5550, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v51 - v10;
  v55[3] = sub_29D9342C8();
  v55[4] = MEMORY[0x29EDC3970];
  v55[0] = a2;
  v12 = &a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_consumedHealthExperienceStore];
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v14 = [ObjCClassFromMetadata atrialFibrillationEventType];
  if (!v14)
  {
    __break(1u);
    goto LABEL_22;
  }

  v15 = OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_objectType;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_objectType] = v14;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_favoritesObserver] = 0;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource] = 0;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems] = MEMORY[0x29EDCA190];
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_cancellables] = MEMORY[0x29EDCA1A0];
  v16 = [a1 profile];
  v17 = [v16 healthStore];

  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_providedHealthStore] = v17;
  sub_29D6945AC(v55, &a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager]);
  v18 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (!v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = v18;
  v20 = [v18 displayTypeForObjectType_];

  if (!v20)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType] = v20;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_viewControllerFactory] = a1;
  v22 = a1;
  v23 = [v22 profile];
  v24 = [v23 healthStore];

  if (!v24)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v25 = [v24 profileIdentifier];

  v26 = [v25 type];
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_profileType] = v26;
  if (a3 != 4)
  {
    a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_mode] = a3;
    v32 = qword_29D94AE48[a3];
LABEL_10:
    v33 = *&a4[v21];
    v34 = [v22 profile];
    v35 = type metadata accessor for AtrialFibrillationDataTypeDetailViewController();
    v54.receiver = a4;
    v54.super_class = v35;
    v36 = objc_msgSendSuper2(&v54, sel_initWithDisplayType_profile_mode_, v33, v34, v32);

    v37 = v36;
    sub_29D77F838();
    if ([*&v37[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType] allowsManualEntry])
    {
      v38 = sub_29D9354E8();
      v40 = v39;
      if (v38 == sub_29D9354E8() && v40 == v41)
      {
      }

      else
      {
        v44 = sub_29D93AD78();

        if ((v44 & 1) == 0)
        {
LABEL_20:

          sub_29D69417C(v55);
          return;
        }
      }

      v45 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:4 target:v37 action:sel_showAddDataVC];
      v52 = 0;
      v53 = 0xE000000000000000;
      v46 = v45;
      sub_29D93AA18();

      v52 = sub_29D939D68();
      v53 = v47;
      MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D95B180);
      v48 = sub_29D939D28();

      [v46 setAccessibilityIdentifier_];

      v49 = qword_2A1A257A0;
      v42 = v46;
      if (v49 != -1)
      {
        swift_once();
      }

      sub_29D9334A8();
      v50 = sub_29D939D28();

      [v42 setAccessibilityValue_];

      v43 = [v37 navigationItem];
      [v43 setRightBarButtonItem_];
    }

    else
    {
      v42 = v22;
      v43 = v37;
    }

    v22 = v43;
    goto LABEL_20;
  }

  v27 = [v22 profile];
  v28 = [v27 healthStore];

  if (v28)
  {
    v29 = [v28 profileIdentifier];

    v30 = sub_29D9350C8();
    (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
    v31 = MEMORY[0x29ED658D0](v29, v11);

    sub_29D7ED010(v11, &unk_2A17B5550, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9C68], sub_29D7ED440);
    v32 = 0;
    a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_mode] = v31;
    goto LABEL_10;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_29D7EA420(uint64_t a1)
{
  v21 = a1;
  v1 = sub_29D936378();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D936138();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D936388();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v14 = *MEMORY[0x29EDBA918];
  v15 = MEMORY[0x29ED6A6C0]();
  sub_29D936148();

  v24[3] = &type metadata for HeartRateVariabilityDataTypeDetailConfigurationProvider.HeartbeatSeriesComponent;
  v24[4] = sub_29D7ED2D8();
  sub_29D936178();
  (*(v5 + 104))(v8, *MEMORY[0x29EDC2618], v4);
  sub_29D936BB8();

  (*(v5 + 8))(v8, v4);
  sub_29D69417C(v24);
  v16 = v21;
  sub_29D936028();
  (*(v10 + 8))(v13, v9);
  (*(v22 + 16))(v20, v16, v23);
  MEMORY[0x29ED6A6C0](v14);
  v17 = objc_allocWithZone(sub_29D9364C8());
  return sub_29D936488();
}

id sub_29D7EA730(void *a1, uint64_t a2)
{
  sub_29D7ED440(0, &unk_2A17B5578, MEMORY[0x29EDC2B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v31 - v6;
  v8 = sub_29D936378();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CardioFitnessDataTypeDetailDataSourceProvider();
  inited = swift_initStackObject();
  result = [objc_opt_self() _quantityTypeWithCode_];
  if (result)
  {
    v15 = result;
    *(inited + 16) = result;
    sub_29D807090(a2);
    (*(v9 + 16))(v12, a2, v8);
    v16 = objc_allocWithZone(sub_29D936E58());
    v17 = a1;
    v18 = sub_29D936E48();
    v19 = [v17 identifier];
    v31 = sub_29D939D68();

    v20 = sub_29D936338();
    v21 = *MEMORY[0x29EDBA6C0];
    v22 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
    v23 = v20;
    v24 = [v22 initWithFeatureIdentifier:v21 healthStore:v23 currentCountryCode:0];
    v33 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
    v34 = MEMORY[0x29EDC2EA8];
    *&v32 = v24;
    v25 = type metadata accessor for LowCardioFitnessArticleDataProvider(0);
    v26 = swift_allocObject();
    v27 = OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___featureStatus;
    sub_29D7ED440(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
    (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
    *(v26 + OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___showBridgeLink) = 2;
    *(v26 + 16) = v23;
    sub_29D679D3C(&v32, v26 + 24);
    v33 = v25;
    v34 = sub_29D7ED64C(qword_2A1A25918, 255, type metadata accessor for LowCardioFitnessArticleDataProvider, &unk_29D9542F0);
    v35 = sub_29D7ED64C(&qword_2A1A25910, 255, type metadata accessor for LowCardioFitnessArticleDataProvider, &unk_29D954288);

    *&v32 = v26;
    v29 = sub_29D936338();
    sub_29D936DC8();

    sub_29D69417C(&v32);
    v30 = sub_29D936DE8();
    (*(*(v30 - 8) + 56))(v7, 0, 1, v30);
    sub_29D936E18();

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D7EAB68(uint64_t a1)
{
  v2 = sub_29D936378();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedBehavior];
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [v7 features];

  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = [v9 hermit];

  if (v10)
  {
    (*(v3 + 16))(v6, a1, v2);
    v11 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsRoomViewController(0));
    sub_29D8388F0(v6);
  }

  else
  {
    sub_29D7ED32C();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_29D7EAD44(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void (*a5)(void *))
{
  v35 = a5;
  sub_29D7ED440(0, &unk_2A17B5578, MEMORY[0x29EDC2B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v34 - v11;
  v13 = sub_29D936378();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D936388();
  v38 = *(v18 - 8);
  v39 = v18;
  MEMORY[0x2A1C7C4A8](v18, v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a3(0);
  v36 = *(v22 - 8);
  v37 = v22;
  v24 = MEMORY[0x2A1C7C4A8](v22, v23);
  v26 = &v34 - v25;
  a4(v24);
  v35(a1);
  sub_29D936028();
  (*(v14 + 16))(v17, a2, v13);
  v27 = objc_allocWithZone(sub_29D936E58());
  v28 = a1;
  v29 = sub_29D936E48();
  v30 = [v28 identifier];
  sub_29D939D68();

  v40[3] = &type metadata for HeartRateArticleDataProvider;
  v40[4] = sub_29D7ED1DC();
  v40[5] = sub_29D7ED230();
  v31 = sub_29D936338();
  sub_29D936DC8();

  sub_29D69417C(v40);
  v32 = sub_29D936DE8();
  (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
  sub_29D936E18();
  (*(v38 + 8))(v21, v39);
  (*(v36 + 8))(v26, v37);
  return v29;
}

uint64_t sub_29D7EB100(void *a1, uint64_t a2)
{
  v4 = sub_29D936378();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v23 - v11;
  v13 = sub_29D936388();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_29D936368() & 0xFE) == 2)
  {
    sub_29D7600D0(a1);
  }

  else
  {
    sub_29D75F3D4(a1, v17);
  }

  sub_29D936028();
  (*(v14 + 8))(v17, v13);
  v18 = *(v5 + 16);
  v18(v12, a2, v4);
  v19 = objc_allocWithZone(type metadata accessor for BloodPressureDataTypeDetailViewController(0));
  v19[qword_2A17B51B8] = 0;
  *&v19[qword_2A17B51C0] = 0;
  v19[qword_2A17B51C8] = 0;
  v19[qword_2A17B51D0] = 0;
  v18(v9, v12, v4);
  v20 = a1;
  v21 = sub_29D936488();
  (*(v5 + 8))(v12, v4);
  return v21;
}

uint64_t sub_29D7EB368(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v155 = *MEMORY[0x29EDCA608];
  ObjectType = swift_getObjectType();
  v6 = MEMORY[0x29EDC9C68];
  sub_29D7ED440(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v136 = &v134 - v9;
  sub_29D7ED440(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], v6);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v137 = &v134 - v12;
  v13 = sub_29D9336F8();
  v14 = *(v13 - 8);
  v139 = v13;
  v140 = v14;
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v135 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v17;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v138 = &v134 - v19;
  v146 = sub_29D933DF8();
  v148 = *(v146 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v146, v20);
  v23 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = &v134 - v25;
  v27 = [a1 notification];
  v28 = [v27 request];

  v29 = [v28 content];
  v30 = [v29 categoryIdentifier];

  v31 = sub_29D939D68();
  v33 = v32;

  v34 = sub_29D939D68();
  v149 = v31;
  v147 = a2;
  v143 = a3;
  if (v31 != v34 || v33 != v35)
  {
    v36 = sub_29D93AD78();

    if (v36)
    {
      goto LABEL_5;
    }

    if (v149 != sub_29D939D68() || v33 != v98)
    {
      v99 = sub_29D93AD78();

      if ((v99 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  v141 = v23;
  v142 = v26;
  v37 = HKHRAFibBurdenLogForCategory();
  v38 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v39 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v37 healthDataSource:v38];

  v40 = a1;
  v41 = a1;
  v42 = [v41 notification];
  v43 = [v42 request];

  v44 = [v41 actionIdentifier];
  v45 = sub_29D939D68();
  v47 = v46;

  v152 = &type metadata for BiomeFocusModeOnDeterminer;
  v153 = &off_2A244ABA0;
  type metadata accessor for AFibBurdenNotificationInteractionAnalyticsEvent();
  v48 = swift_allocObject();
  sub_29D693DDC(aBlock, &type metadata for BiomeFocusModeOnDeterminer);
  v48[8] = &type metadata for BiomeFocusModeOnDeterminer;
  v48[9] = &off_2A244ABA0;

  v48[2] = v43;
  v48[3] = v45;
  v48[4] = v47;
  sub_29D69417C(aBlock);
  aBlock[0] = 0;
  if ([v39 submitEvent:v48 error:aBlock])
  {
    v49 = aBlock[0];
  }

  else
  {
    v50 = aBlock[0];
    v51 = sub_29D933598();

    swift_willThrow();

    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v52, qword_2A1A2BF58);
    v53 = swift_allocObject();
    v54 = ObjectType;
    *(v53 + 16) = v51;
    *(v53 + 24) = v54;
    aBlock[0] = 0;
    v55 = v51;
    sub_29D9371E8();
  }

  a2 = v147;
  a1 = v40;
  v23 = v141;
  v26 = v142;
LABEL_11:
  v56 = v149;
  sub_29D7E28BC(v149, v33, a1);
  if (v56 == sub_29D939D68() && v33 == v57)
  {
    v58 = v148;
LABEL_14:

    goto LABEL_16;
  }

  v59 = sub_29D93AD78();

  v58 = v148;
  if (v59)
  {
    goto LABEL_16;
  }

  if (v149 == sub_29D939D68() && v33 == v100)
  {
    goto LABEL_14;
  }

  v101 = sub_29D93AD78();

  if ((v101 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  v60 = a1;
  v61 = *(v58 + 104);
  v61(v26, *MEMORY[0x29EDC5100], v146);
  v62 = v60;
  v63 = [v60 actionIdentifier];
  v64 = sub_29D939D68();
  v66 = v65;

  if (v64 == sub_29D939D68() && v66 == v67)
  {
    v68 = MEMORY[0x29EDC50F0];
LABEL_19:

LABEL_22:
    v70 = v146;
    v71 = v148;
    goto LABEL_23;
  }

  v69 = sub_29D93AD78();

  if (v69)
  {
    v68 = MEMORY[0x29EDC50F0];
    goto LABEL_22;
  }

  v113 = [v62 actionIdentifier];
  v114 = sub_29D939D68();
  v116 = v115;

  if (v114 == sub_29D939D68() && v116 == v117)
  {
    v68 = MEMORY[0x29EDC50F8];
    goto LABEL_19;
  }

  v124 = sub_29D93AD78();

  v70 = v146;
  v71 = v148;
  if ((v124 & 1) == 0)
  {
    goto LABEL_24;
  }

  v68 = MEMORY[0x29EDC50F8];
LABEL_23:
  (*(v71 + 8))(v26, v70);
  v61(v26, *v68, v70);
LABEL_24:
  (*(v71 + 16))(v23, v26, v70);
  sub_29D933DE8();
  swift_allocObject();
  v72 = v70;
  sub_29D935E88();
  v73 = sub_29D933DD8();
  v74 = HKLogHeartRateCategory();
  v75 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v76 = v26;
  v77 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v74 healthDataSource:v75];

  v78 = swift_allocObject();
  *(v78 + 16) = ObjectType;
  v153 = sub_29D7ED608;
  v154 = v78;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D8E44F0;
  v152 = &unk_2A2446AF0;
  v79 = _Block_copy(aBlock);

  [v77 submitEvent:v73 completion:v79];
  _Block_release(v79);

  (*(v71 + 8))(v76, v72);
  a1 = v62;
  a2 = v147;
LABEL_25:
  v80 = [a1 actionIdentifier];
  v81 = sub_29D939D68();
  v83 = v82;

  if (v81 == sub_29D939D68() && v83 == v84)
  {

LABEL_29:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v86 = sub_29D937898();
    sub_29D69C6C0(v86, qword_2A1A2C008);
    sub_29D935E88();
    v87 = v145;
    v88 = sub_29D937878();
    v89 = sub_29D93A2A8();

    if (!os_log_type_enabled(v88, v89))
    {

      goto LABEL_35;
    }

    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    aBlock[0] = v91;
    *v90 = 136446723;
    v150 = swift_getObjectType();
    sub_29D7ED5C4();
    v92 = sub_29D939DA8();
    v94 = sub_29D6C2364(v92, v93, aBlock);

    *(v90 + 4) = v94;
    *(v90 + 12) = 2082;
    *(v90 + 14) = sub_29D6C2364(0xD00000000000003BLL, 0x800000029D964600, aBlock);
    *(v90 + 22) = 2081;
    v95 = sub_29D6C2364(v149, v33, aBlock);

    *(v90 + 24) = v95;
    _os_log_impl(&dword_29D677000, v88, v89, "[%{public}s.%{public}s] Notification with identifier %{private}s dismissed", v90, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v91, -1, -1);
    v96 = v90;
LABEL_33:
    MEMORY[0x29ED6BE30](v96, -1, -1);
LABEL_35:

    return a2();
  }

  v85 = sub_29D93AD78();

  if (v85)
  {
    goto LABEL_29;
  }

  v102 = [a1 notification];
  v103 = v137;
  sub_29D93A2D8();

  v105 = v139;
  v104 = v140;
  if ((*(v140 + 48))(v103, 1, v139) == 1)
  {
    sub_29D7ED010(v103, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D7ED440);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v106 = sub_29D937898();
    sub_29D69C6C0(v106, qword_2A1A2C008);
    v88 = sub_29D937878();
    v107 = sub_29D93A288();
    if (!os_log_type_enabled(v88, v107))
    {
      goto LABEL_35;
    }

    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    aBlock[0] = v109;
    *v108 = 136315394;
    v110 = sub_29D93AF08();
    v112 = sub_29D6C2364(v110, v111, aBlock);

    *(v108 + 4) = v112;
    *(v108 + 12) = 2080;
    *(v108 + 14) = sub_29D6C2364(0xD00000000000003BLL, 0x800000029D964600, aBlock);
    _os_log_impl(&dword_29D677000, v88, v107, "[%s.%s] Unable to resolve notification. No URL present.", v108, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v109, -1, -1);
    v96 = v108;
    goto LABEL_33;
  }

  v118 = *(v104 + 32);
  v118(v138, v103, v105);
  v119 = [a1 actionIdentifier];
  v120 = sub_29D939D68();
  v122 = v121;

  if (v120 == sub_29D939D68() && v122 == v123)
  {
  }

  else
  {
    v125 = sub_29D93AD78();

    if ((v125 & 1) == 0)
    {
      v126 = sub_29D93A028();
      (*(*(v126 - 8) + 56))(v136, 1, 1, v126);
      v127 = v140;
      v128 = v135;
      v129 = v138;
      (*(v140 + 16))(v135, v138, v105);
      sub_29D939FF8();
      v149 = sub_29D939FE8();
      v130 = (*(v127 + 80) + 32) & ~*(v127 + 80);
      v131 = (v134 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
      v132 = swift_allocObject();
      v133 = MEMORY[0x29EDCA390];
      *(v132 + 16) = v149;
      *(v132 + 24) = v133;
      v118((v132 + v130), v128, v105);
      *(v132 + v131) = ObjectType;
      sub_29D6BEBA4(0, 0, v136, &unk_29D94AD28, v132);

      (*(v127 + 8))(v129, v105);
      return a2();
    }
  }

  (*(v140 + 8))(v138, v105);
  return a2();
}

void sub_29D7EC3F4(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = sub_29D9339F8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v11 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];

  v12 = [a1 request];
  v13 = [v12 content];

  v14 = [v13 userInfo];
  v15 = sub_29D939C68();

  v27 = sub_29D939D68();
  v28 = v16;
  sub_29D93A9A8();
  if (*(v15 + 16) && (v17 = sub_29D6908F8(aBlock), (v18 & 1) != 0))
  {
    sub_29D694294(*(v15 + 56) + 32 * v17, v29);
    sub_29D69466C(aBlock);

    if (swift_dynamicCast())
    {
      v24 = v27;
      sub_29D7E8FB8(a1);
      v19 = [a1 request];
      v20 = [v19 identifier];

      if (!v20)
      {
        sub_29D939D68();
        v20 = sub_29D939D28();
      }

      v21 = sub_29D939C58();

      sub_29D9339E8();
      v22 = sub_29D933958();
      (*(v6 + 8))(v9, v5);
      aBlock[4] = v25;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D8E44F0;
      aBlock[3] = &unk_2A2446BB8;
      v23 = _Block_copy(aBlock);

      [v11 snoozeJournalNotificationWithIdentifier:v20 journalType:v24 userInfo:v21 onDate:v22 completion:v23];

      _Block_release(v23);
    }

    else
    {
    }
  }

  else
  {

    sub_29D69466C(aBlock);
  }
}

void sub_29D7EC788(void *a1, void (*a2)(void, __n128))
{
  swift_getObjectType();
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
    v8 = a2;
    v9 = swift_slowAlloc();
    v50 = v9;
    *v7 = 136446466;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v50);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_29D6C2364(0xD00000000000003CLL, 0x800000029D9645C0, &v50);
    _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s.%{public}s]", v7, 0x16u);
    swift_arrayDestroy();
    v13 = v9;
    a2 = v8;
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  v14 = [a1 request];
  v15 = [v14 content];

  v16 = [v15 categoryIdentifier];
  v17 = sub_29D939D68();
  v19 = v18;

  if (v17 == sub_29D939D68() && v19 == v20)
  {
    goto LABEL_12;
  }

  v22 = sub_29D93AD78();

  if (v22)
  {
LABEL_13:
    (a2)(26);
    goto LABEL_14;
  }

  if (v17 == sub_29D939D68() && v19 == v23)
  {
LABEL_12:

    goto LABEL_13;
  }

  v39 = sub_29D93AD78();

  if (v39)
  {
    goto LABEL_13;
  }

LABEL_14:
  v24 = [objc_opt_self() sharedBehavior];
  if (!v24)
  {
    goto LABEL_28;
  }

  v25 = v24;
  v26 = [v24 features];

  if (v26)
  {
    v27 = [v26 chutney];

    if (v27)
    {
      v28 = *MEMORY[0x29EDBA6B8];
      v29 = *MEMORY[0x29EDBA5A0];
      v30 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
      LOBYTE(v28) = sub_29D7E35D0(v28, v29, v30);

      if (v28)
      {
        if (v17 != sub_29D939D68() || v19 != v31)
        {
          v40 = sub_29D93AD78();

          if (v40)
          {
            goto LABEL_27;
          }

          if (v17 != sub_29D939D68() || v19 != v47)
          {
            v48 = sub_29D93AD78();

            if ((v48 & 1) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }
        }

LABEL_27:
        (a2)(26);
        goto LABEL_28;
      }

      v32 = sub_29D937878();
      v33 = sub_29D93A2A8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v50 = v35;
        *v34 = 136446466;
        v36 = sub_29D93AF08();
        v38 = sub_29D6C2364(v36, v37, &v50);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2082;
        *(v34 + 14) = sub_29D6C2364(0xD00000000000003CLL, 0x800000029D9645C0, &v50);
        _os_log_impl(&dword_29D677000, v32, v33, "[%{public}s.%{public}s] bloodPressureJournal notifications will not be displayed because usage requirements are unfulfilled", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v35, -1, -1);
        MEMORY[0x29ED6BE30](v34, -1, -1);
      }
    }

LABEL_28:
    if (v17 != sub_29D939D68() || v19 != v41)
    {
      v42 = sub_29D93AD78();

      if (v42)
      {
        goto LABEL_32;
      }

      if (v17 != sub_29D939D68() || v19 != v44)
      {
        v45 = sub_29D93AD78();

        if (v45)
        {
          goto LABEL_32;
        }

        if (v17 != sub_29D939D68() || v19 != v46)
        {
          v49 = sub_29D93AD78();

          if (v49)
          {
            v43 = 26;
          }

          else
          {
            v43 = 0;
          }

          goto LABEL_33;
        }
      }
    }

LABEL_32:

    v43 = 26;
LABEL_33:
    (a2)(v43);
    (a2)(0);
    return;
  }

  __break(1u);
}

void sub_29D7ECE30(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_29D9336F8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D933698();
  v11 = HKHRBloodPressureDetailRoomBaseLink();
  sub_29D9336D8();

  v12 = sub_29D933698();
  (*(v6 + 8))(v9, v5);
  LOBYTE(v5) = sub_29D696F08(v10, v12);

  if ((v5 & 1) == 0)
  {
    v13 = [a2 presentedViewController];
    if (!v13)
    {
      goto LABEL_10;
    }

    v14 = v13;
    v15 = sub_29D9336B8();
    v16 = _HKSampleTypeFromURL();

    if (v16)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v17 = sub_29D7E8D18();

        if (v17)
        {
          return;
        }

LABEL_10:
        sub_29D693E2C(a3, a3[3]);
        sub_29D935458();
        return;
      }
    }

    else
    {
      v16 = v14;
    }

    goto LABEL_10;
  }
}

uint64_t sub_29D7ED010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D7ED088()
{
  v1 = sub_29D9336F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D7ED134(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_29D9336F8() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_29D7ED1DC()
{
  result = qword_2A1A25790;
  if (!qword_2A1A25790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A25790);
  }

  return result;
}

unint64_t sub_29D7ED230()
{
  result = qword_2A1A25788;
  if (!qword_2A1A25788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A25788);
  }

  return result;
}

uint64_t sub_29D7ED2C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D7ED2D8()
{
  result = qword_2A17B5588;
  if (!qword_2A17B5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5588);
  }

  return result;
}

unint64_t sub_29D7ED32C()
{
  result = qword_2A17B5598;
  if (!qword_2A17B5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5598);
  }

  return result;
}

void sub_29D7ED380(void *a1)
{
  v3 = *(sub_29D933A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29D83A3F8(a1, v1 + v4, v5);
}

void sub_29D7ED440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7ED4A4(uint64_t a1)
{
  v4 = *(sub_29D9336F8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D6AC948;

  return sub_29D7E39C8(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_29D7ED5C4()
{
  result = qword_2A17B55B8;
  if (!qword_2A17B55B8)
  {
    type metadata accessor for HeartAppDelegate();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B55B8);
  }

  return result;
}

uint64_t sub_29D7ED64C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_29D7ED6C4()
{
  result = qword_2A17B55D0;
  if (!qword_2A17B55D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B55D0);
  }

  return result;
}

uint64_t sub_29D7ED738()
{
  sub_29D7ED8A0(v14);
  sub_29D7EDB6C(v11);
  sub_29D7EE4B0(0, &qword_2A17B3CA0, &qword_2A17B3CA8, MEMORY[0x29EDC2208], MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D93F680;
  v1 = v15;
  v2 = v16;
  v3 = sub_29D693E2C(v14, v15);
  *(v0 + 56) = v1;
  *(v0 + 64) = *(v2 + 8);
  v4 = sub_29D693F78((v0 + 32));
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  v5 = v12;
  v6 = v13;
  v7 = sub_29D693E2C(v11, v12);
  *(v0 + 96) = v5;
  *(v0 + 104) = *(v6 + 8);
  v8 = sub_29D693F78((v0 + 72));
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  v9 = sub_29D935E88();

  sub_29D69417C(v11);
  sub_29D69417C(v14);
  return v9;
}

uint64_t sub_29D7ED8A0@<X0>(uint64_t *a1@<X8>)
{
  sub_29D7EF974(0, &qword_2A17B55E0, MEMORY[0x29EDC2C30], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = sub_29D934D98();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D934FB8();
  v11 = sub_29D936FC8();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_29D934F28();
  sub_29D934F58();
  sub_29D934F08();
  v12 = sub_29D934D88();
  MEMORY[0x2A1C7C4A8](v12, v13);
  v14 = sub_29D935728();
  v15 = MEMORY[0x29EDC20B8];
  a1[3] = v14;
  a1[4] = v15;
  sub_29D693F78(a1);
  sub_29D935718();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29D7EDB6C@<X0>(uint64_t *a1@<X8>)
{
  sub_29D7EF974(0, &qword_2A17B55E0, MEMORY[0x29EDC2C30], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = sub_29D934D98();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D934FC8();
  v11 = sub_29D936FC8();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_29D934F38();
  sub_29D934F58();
  sub_29D934F08();
  v12 = sub_29D934D88();
  MEMORY[0x2A1C7C4A8](v12, v13);
  v14 = sub_29D935728();
  v15 = MEMORY[0x29EDC20B8];
  a1[3] = v14;
  a1[4] = v15;
  sub_29D693F78(a1);
  sub_29D935718();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29D7EDE3C(uint64_t a1)
{
  sub_29D7EE4B0(0, &qword_2A17B3CA0, &qword_2A17B3CA8, MEMORY[0x29EDC2208], MEMORY[0x29EDC9E90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29D93DDB0;
  sub_29D6945AC(a1, v2 + 32);
  v3 = sub_29D935E88();

  return v3;
}

uint64_t sub_29D7EDED0()
{
  v0 = sub_29D935378();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D936F78();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D934F58();
  (*(v1 + 104))(v4, *MEMORY[0x29EDC1F60], v0);
  sub_29D936F68();
  sub_29D7EF974(0, &qword_2A17B55E8, sub_29D7EF828, MEMORY[0x29EDC9E90]);
  v10 = swift_allocObject();
  v11 = MEMORY[0x29EDC2BE8];
  *(v10 + 16) = xmmword_29D93DDB0;
  *(v10 + 56) = v5;
  *(v10 + 64) = v11;
  *(v10 + 72) = MEMORY[0x29EDC2BE0];
  v12 = sub_29D693F78((v10 + 32));
  (*(v6 + 16))(v12, v9, v5);
  v13 = sub_29D935E88();

  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_29D7EE180()
{
  v0 = sub_29D935378();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D934EB8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7EF32C();
  (*(v1 + 104))(v4, *MEMORY[0x29EDC1F60], v0);
  sub_29D934F98();
  sub_29D934F48();
  sub_29D934EC8();
  sub_29D7EF974(0, &qword_2A17B55E8, sub_29D7EF828, MEMORY[0x29EDC9E90]);
  v10 = swift_allocObject();
  v11 = MEMORY[0x29EDC1CA8];
  *(v10 + 16) = xmmword_29D93DDB0;
  *(v10 + 56) = v5;
  *(v10 + 64) = v11;
  *(v10 + 72) = MEMORY[0x29EDC1CA0];
  v12 = sub_29D693F78((v10 + 32));
  (*(v6 + 16))(v12, v9, v5);
  v13 = sub_29D935E88();

  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_29D7EE3C0(uint64_t a1)
{
  v2 = sub_29D934D98();
  v8[3] = v2;
  v8[4] = MEMORY[0x29EDC1C48];
  v3 = sub_29D693F78(v8);
  (*(*(v2 - 8) + 16))(v3, a1, v2);
  v4 = sub_29D935808();
  sub_29D69417C(v8);
  sub_29D7EF904(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D93DDB0;
  *(v5 + 32) = v4;
  v6 = MEMORY[0x29ED65BE0]();

  return v6;
}

void sub_29D7EE4B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D6B7370(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_29D7EE518(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EE928(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29D7EE538(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EEF5C(a1, a2, a3, *v3, &qword_2A17B1138, &qword_2A17B1140, MEMORY[0x29EDC18F8]);
  *v3 = result;
  return result;
}

void *sub_29D7EE570(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EEB98(a1, a2, a3, *v3, &qword_2A17B5610, &qword_2A17B42A8, &qword_2A17B1080, MEMORY[0x29EDC1910]);
  *v3 = result;
  return result;
}

void *sub_29D7EE5B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EED34(a1, a2, a3, *v3, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC2240]);
  *v3 = result;
  return result;
}

char *sub_29D7EE600(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EEA74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29D7EE620(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EEB98(a1, a2, a3, *v3, &qword_2A17B5530, &qword_2A17B42A0, &qword_2A17B1140, MEMORY[0x29EDC18F8]);
  *v3 = result;
  return result;
}

void *sub_29D7EE660(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EED34(a1, a2, a3, *v3, &qword_2A17B10E0, type metadata accessor for BloodPressurePDFSampleInterval, type metadata accessor for BloodPressurePDFSampleInterval);
  *v3 = result;
  return result;
}

void *sub_29D7EE6B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EEF5C(a1, a2, a3, *v3, &qword_2A17B1078, &qword_2A17B1080, MEMORY[0x29EDC1910]);
  *v3 = result;
  return result;
}

void *sub_29D7EE6E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EED34(a1, a2, a3, *v3, &qword_2A17B10D0, type metadata accessor for PregnancyModel, type metadata accessor for PregnancyModel);
  *v3 = result;
  return result;
}

void *sub_29D7EE738(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EED34(a1, a2, a3, *v3, &qword_2A17B1388, type metadata accessor for BloodPressureDayCoordinate, type metadata accessor for BloodPressureDayCoordinate);
  *v3 = result;
  return result;
}

void *sub_29D7EE788(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EEF5C(a1, a2, a3, *v3, &qword_2A17B5620, &unk_2A17B13A0, MEMORY[0x29EDC2160]);
  *v3 = result;
  return result;
}

void *sub_29D7EE7C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EEF5C(a1, a2, a3, *v3, &qword_2A17B1018, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  *v3 = result;
  return result;
}

char *sub_29D7EE7F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EF0C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29D7EE818(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EED34(a1, a2, a3, *v3, &qword_2A17B1438, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BC8]);
  *v3 = result;
  return result;
}

void *sub_29D7EE868(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EF1E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29D7EE888(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EED34(a1, a2, a3, *v3, &qword_2A17B5600, sub_29D73F6F0, sub_29D73F6F0);
  *v3 = result;
  return result;
}

void *sub_29D7EE8D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D7EED34(a1, a2, a3, *v3, &qword_2A17B5608, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState);
  *v3 = result;
  return result;
}

void *sub_29D7EE928(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D7EF974(0, &qword_2A17B18F0, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29D7EEA74(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D7546B8(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29D7EEB98(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7, uint64_t a8)
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    sub_29D7EF904(0, a5, a6, a7, a8);
    v17 = swift_allocObject();
    v18 = j__malloc_size(v17);
    v19 = v18 - 32;
    if (v18 < 32)
    {
      v19 = v18 - 25;
    }

    v17[2] = v15;
    v17[3] = 2 * (v19 >> 3);
  }

  else
  {
    v17 = MEMORY[0x29EDCA190];
  }

  if (v12)
  {
    if (v17 != a4 || v17 + 4 >= &a4[v15 + 4])
    {
      memmove(v17 + 4, a4 + 4, 8 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D7EE4B0(0, a6, a7, a8, MEMORY[0x29EDC9A40]);
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_29D7EED34(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29D7EF974(0, a5, a6, MEMORY[0x29EDC9E90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_29D7EEF5C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_29D7EE4B0(0, a5, a6, a7, MEMORY[0x29EDC9E90]);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x29EDCA190];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D6B7370(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *sub_29D7EF0C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D7546B8(0, &qword_2A17B5618, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_29D7EF1E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D7EF974(0, &qword_2A17B5628, sub_29D7EF9D8, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D7EF9D8(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_29D7EF32C()
{
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v0 = v41;
  v40 = sub_29D9334A8();
  v41[0] = v1;
  v41[1] = sub_29D9334A8();
  v41[2] = v2;
  v3 = sub_29D9334A8();
  v5 = v4;
  v6 = sub_29D9334A8();
  v8 = v7;
  MEMORY[0x29ED6A240](32, 0xE100000000000000);
  MEMORY[0x29ED6A240](v6, v8);

  v41[3] = v3;
  v41[4] = v5;
  v9 = sub_29D9334A8();
  v11 = v10;
  v12 = sub_29D9334A8();
  v14 = v13;
  MEMORY[0x29ED6A240](32, 0xE100000000000000);
  MEMORY[0x29ED6A240](v12, v14);

  v41[5] = v9;
  v41[6] = v11;
  v41[7] = sub_29D9334A8();
  v41[8] = v15;
  v38 = MEMORY[0x29EDCA190];
  sub_29D7EE600(0, 5, 0);
  v16 = v38;
  for (i = 1; i != 6; ++i)
  {
    v18 = *v0;
    v37 = *(v0 - 1);
    sub_29D935E88();
    sub_29D9334A8();
    sub_29D7EE4B0(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_29D93F680;
    sub_29D7EF894();
    v20 = sub_29D93A848();
    v21 = v16;
    v23 = v22;
    v24 = v0;
    v25 = MEMORY[0x29EDC99B0];
    *(v19 + 56) = MEMORY[0x29EDC99B0];
    v26 = sub_29D69AD24();
    *(v19 + 32) = v20;
    *(v19 + 40) = v23;
    v16 = v21;
    *(v19 + 96) = v25;
    *(v19 + 104) = v26;
    *(v19 + 64) = v26;
    *(v19 + 72) = v37;
    *(v19 + 80) = v18;
    sub_29D935E88();
    v27 = sub_29D939D88();
    v29 = v28;

    v39 = v21;
    v30 = *(v21 + 16);
    v31 = *(v16 + 24);
    if (v30 >= v31 >> 1)
    {
      sub_29D7EE600((v31 > 1), v30 + 1, 1);
      v16 = v39;
    }

    *(v16 + 16) = v30 + 1;
    v32 = v16 + 16 * v30;
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;
    v0 = v24 + 2;
  }

  v33 = MEMORY[0x29EDC99B0];
  swift_arrayDestroy();
  sub_29D7546B8(0, &qword_2A17B3628, v33, MEMORY[0x29EDC9A40]);
  sub_29D738398(v34);
  v35 = sub_29D939CA8();

  return v35;
}

unint64_t sub_29D7EF828()
{
  result = qword_2A17B55F0;
  if (!qword_2A17B55F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B55F0);
  }

  return result;
}

unint64_t sub_29D7EF894()
{
  result = qword_2A17B55F8;
  if (!qword_2A17B55F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B55F8);
  }

  return result;
}

void sub_29D7EF904(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_29D7EE4B0(255, a3, a4, a5, MEMORY[0x29EDC9A40]);
    v6 = sub_29D93AD48();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D7EF974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for AFibBurdenLifeFactorDetailViewController(uint64_t a1)
{
  result = qword_2A17B5638;
  if (!qword_2A17B5638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D7EFAA0(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AFibBurdenLifeFactorDetailViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemGroupedBackgroundColor];
    [v3 setBackgroundColor_];

    sub_29D7EFB64();
  }

  else
  {
    __break(1u);
  }
}

void sub_29D7EFB64()
{
  v1 = [v0 navigationItem];
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v2 = sub_29D939D28();

  [v1 setTitle_];

  v3 = [v0 navigationItem];
  [v3 setLargeTitleDisplayMode_];

  v4 = [v0 navigationItem];
  v5 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v0 action:sel_doneButtonTapped];
  [v4 setRightBarButtonItem_];
}

void sub_29D7EFD08()
{
  sub_29D936D98();
  v1 = sub_29D936DA8();
  v1();
  sub_29D936D78();
  v2 = sub_29D935F38();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x29EDC2040];
    v6 = MEMORY[0x29EDC27C8];
    v9 = v2;
    while (v4 < *(v2 + 16))
    {
      v12 = *(v2 + 16 * v4 + 32);
      sub_29D695734(0, &qword_2A17B1090, v5, 0);
      sub_29D695734(0, &qword_2A17B5648, v6, 1);
      swift_unknownObjectRetain_n();
      if (swift_dynamicCast())
      {
        sub_29D679D3C(v10, v13);
        sub_29D693E2C(v13, v13[3]);
        v7 = [v0 collectionView];
        if (!v7)
        {
          goto LABEL_14;
        }

        v8 = v7;
        sub_29D936568();

        sub_29D936978();
        sub_29D69417C(v13);
        v2 = v9;
      }

      else
      {
        sub_29D936978();
        v11 = 0;
        memset(v10, 0, sizeof(v10));
        sub_29D7F0078(v10);
      }

      if (v3 == ++v4)
      {

        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
  }
}

id sub_29D7EFF70(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AFibBurdenLifeFactorDetailViewController(0);
  return objc_msgSendSuper2(&v5, sel_initWithCollectionViewLayout_, a3);
}

id sub_29D7EFFBC(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AFibBurdenLifeFactorDetailViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D7F0038()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenLifeFactorDetailViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D7F0078(uint64_t a1)
{
  sub_29D7F00D4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D7F00D4(uint64_t a1)
{
  if (!qword_2A17B5650)
  {
    sub_29D695734(255, &qword_2A17B5648, MEMORY[0x29EDC27C8], 1);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5650);
    }
  }
}

uint64_t sub_29D7F0140(uint64_t a1)
{
  swift_getObjectType();
  sub_29D694294(a1, v15);
  sub_29D69567C(0, &qword_2A17B4920, 0x29EDBAE18);
  if (swift_dynamicCast())
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA078]) init];
    [v14 dataCount];
    v3 = sub_29D93A138();
    v4 = [v2 stringFromNumber:v3];

    if (v4)
    {
      v5 = sub_29D939D68();

      return v5;
    }
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v2 = sub_29D937878();
    v8 = sub_29D93A288();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v9 = 136446210;
      v11 = sub_29D93AF08();
      v13 = sub_29D6C2364(v11, v12, v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_29D677000, v2, v8, "[%{public}s] Object is not an instance of HKStatistics", v9, 0xCu);
      sub_29D69417C(v10);
      MEMORY[0x29ED6BE30](v10, -1, -1);
      MEMORY[0x29ED6BE30](v9, -1, -1);
    }
  }

  return 0;
}

id sub_29D7F084C(void *a1)
{
  v3 = type metadata accessor for DefaultSampleMetadataObject();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC5Heart27DefaultSampleMetadataObject_sample] = a1;
  v13.receiver = v4;
  v13.super_class = v3;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v13, sel_init);
  v7 = [v1 unitController];
  v8 = [objc_allocWithZone(MEMORY[0x29EDC4640]) initWithSample:v5 unitPreferenceController:v7];

  v9 = [v1 displayTypeController];
  v10 = [v1 unitController];
  v11 = [objc_allocWithZone(MEMORY[0x29EDC4648]) initWithMetadataObject:v6 metadataDataSource:v8 displayTypeController:v9 unitController:v10];

  return v11;
}

uint64_t sub_29D7F0DD4(uint64_t a1)
{
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D694294(a1, v15);
  sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
  if (swift_dynamicCast())
  {
    v7 = v14;
    v8 = [v14 endDate];
    sub_29D933998();

    v9 = sub_29D933958();
    (*(v3 + 8))(v6, v2);
    v10 = HKFormattedStringForDate();

    if (v10)
    {
      v11 = sub_29D939D68();
    }

    else
    {

      return 0;
    }

    return v11;
  }

  else
  {
    result = sub_29D93AB28();
    __break(1u);
  }

  return result;
}

void *sub_29D7F0FBC()
{
  swift_getKeyPath();
  sub_29D7F2D98(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
  sub_29D933E18();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_29D7F1064(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v10);
    sub_29D7F2D98(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
    sub_29D933E08();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_29D69567C(0, &qword_2A1A221D0, 0x29EDC51F0);
  v5 = v4;
  v6 = a1;
  v7 = sub_29D93A708();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

void sub_29D7F11F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  v3 = a2;
}

uint64_t sub_29D7F1278@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_29D7F2D98(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
  sub_29D933E18();

  v6 = *a2;
  swift_beginAccess();
  v7 = sub_29D9339F8();
  return (*(*(v7 - 8) + 16))(a3, v9 + v6, v7);
}

uint64_t sub_29D7F1398(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a3;
  v20[1] = a4;
  v6 = v4;
  v8 = sub_29D9339F8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  swift_beginAccess();
  v14 = *(v9 + 16);
  v14(v12, v6 + v13, v8);
  sub_29D7F2D98(&qword_2A17B4C90, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
  v21 = a1;
  LOBYTE(a1) = sub_29D939CF8();
  v15 = *(v9 + 8);
  v15(v12, v8);
  if (a1)
  {
    v14(v12, v21, v8);
    swift_beginAccess();
    (*(v9 + 40))(v6 + v13, v12, v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v17);
    v18 = v21;
    v20[-2] = v6;
    v20[-1] = v18;
    v22 = v6;
    sub_29D7F2D98(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
    sub_29D933E08();
  }

  return (v15)(v21, v8);
}

uint64_t sub_29D7F1628(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = sub_29D9339F8();
  (*(*(v6 - 8) + 24))(a1 + v5, a2, v6);
  return swift_endAccess();
}

uint64_t sub_29D7F1720(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_29D7F2D98(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
  sub_29D933E18();

  return *(v2 + *a2);
}

uint64_t sub_29D7F17E8(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v6);
    sub_29D7F2D98(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
    sub_29D933E08();
  }

  return result;
}

uint64_t sub_29D7F1984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29D7F2CE4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v34 - v8;
  v10 = sub_29D933318();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x2A1C7C4A8](a1, v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v19 = &v34 - v18;
  v38 = a3;
  v39 = v11;
  if (v17)
  {
    v20 = [v17 timeIntervals];
    if (v20)
    {
      sub_29D69567C(0, &qword_2A17B4DB8, 0x29EDC5208);
      v21 = sub_29D939F38();

      v36 = v10;
      v37 = v9;
      v35 = a2;
      if (v21 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
      {
        v23 = 0;
        while (1)
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x29ED6AE30](v23, v21);
          }

          else
          {
            if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v24 = *(v21 + 8 * v23 + 32);
          }

          v20 = v24;
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (![v24 dayWindowType])
          {

            goto LABEL_20;
          }

          ++v23;
          if (v25 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      v20 = 0;
LABEL_20:
      v10 = v36;
      v9 = v37;
      v11 = v39;
      a2 = v35;
    }
  }

  else
  {
    v20 = 0;
  }

  (*(v11 + 16))(v19, a2, v10);
  if (v20)
  {
    v26 = [v20 scheduledTime];
    sub_29D933298();

    sub_29D9332C8();
    v27 = *(v11 + 8);
    v27(v15, v10);
    sub_29D9332D8();
    v28 = [v20 scheduledTime];
    sub_29D933298();

    sub_29D9332E8();
    v29 = v10;
    v27(v15, v10);
  }

  else
  {
    v29 = v10;
    sub_29D9332D8();
  }

  sub_29D9332F8();
  sub_29D9332B8();
  v30 = sub_29D9339F8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  if (v32(v9, 1, v30) == 1)
  {
    sub_29D9339E8();

    (*(v39 + 8))(v19, v29);
    result = v32(v9, 1, v30);
    if (result != 1)
    {
      return sub_29D6A0D34(v9);
    }
  }

  else
  {
    (*(v39 + 8))(v19, v29);

    return (*(v31 + 32))(v38, v9, v30);
  }

  return result;
}

uint64_t sub_29D7F1DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29D7F2CE4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v34 - v8;
  v10 = sub_29D933318();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x2A1C7C4A8](a1, v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v19 = &v34 - v18;
  v38 = a3;
  v39 = v11;
  if (v17)
  {
    v20 = [v17 timeIntervals];
    if (v20)
    {
      sub_29D69567C(0, &qword_2A17B4DB8, 0x29EDC5208);
      v21 = sub_29D939F38();

      v36 = v10;
      v37 = v9;
      v35 = a2;
      if (v21 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
      {
        v23 = 0;
        while (1)
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x29ED6AE30](v23, v21);
          }

          else
          {
            if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v24 = *(v21 + 8 * v23 + 32);
          }

          v20 = v24;
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if ([v24 dayWindowType] == 1)
          {

            goto LABEL_20;
          }

          ++v23;
          if (v25 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      v20 = 0;
LABEL_20:
      v10 = v36;
      v9 = v37;
      v11 = v39;
      a2 = v35;
    }
  }

  else
  {
    v20 = 0;
  }

  (*(v11 + 16))(v19, a2, v10);
  if (v20)
  {
    v26 = [v20 scheduledTime];
    sub_29D933298();

    sub_29D9332C8();
    v27 = *(v11 + 8);
    v27(v15, v10);
    sub_29D9332D8();
    v28 = [v20 scheduledTime];
    sub_29D933298();

    sub_29D9332E8();
    v29 = v10;
    v27(v15, v10);
  }

  else
  {
    v29 = v10;
    sub_29D9332D8();
  }

  sub_29D9332F8();
  sub_29D9332B8();
  v30 = sub_29D9339F8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  if (v32(v9, 1, v30) == 1)
  {
    sub_29D9339E8();

    (*(v39 + 8))(v19, v29);
    result = v32(v9, 1, v30);
    if (result != 1)
    {
      return sub_29D6A0D34(v9);
    }
  }

  else
  {
    (*(v39 + 8))(v19, v29);

    return (*(v31 + 32))(v38, v9, v30);
  }

  return result;
}

void *sub_29D7F2248()
{
  v1 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v16 - v10;
  swift_getKeyPath();
  v17 = v0;
  sub_29D7F2D98(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
  sub_29D933E18();

  result = *(v0 + 16);
  if (result)
  {
    if ([result journalType] > 1)
    {
      return 0;
    }

    else
    {
      swift_getKeyPath();
      v17 = v0;
      sub_29D933E18();

      sub_29D939D08();
      if (qword_2A1A242C0 != -1)
      {
        swift_once();
      }

      v13 = qword_2A1A2BE98;
      (*(v4 + 16))(v8, v11, v3);
      sub_29D935E88();
      v14 = v13;
      sub_29D933A98();
      v15 = sub_29D939D98();
      (*(v4 + 8))(v11, v3);
      return v15;
    }
  }

  return result;
}

uint64_t sub_29D7F25BC()
{
  v1 = OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__wakeupTime;
  v2 = sub_29D9339F8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__bedTime, v2);
  v4 = OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel___observationRegistrar;
  v5 = sub_29D933E38();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BloodPressureJournalSettingsViewModel(uint64_t a1)
{
  result = qword_2A17B5778;
  if (!qword_2A17B5778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7F2724(uint64_t a1)
{
  result = sub_29D9339F8();
  if (v2 <= 0x3F)
  {
    result = sub_29D933E38();
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

uint64_t sub_29D7F280C(void *a1, int a2)
{
  v42 = a2;
  v4 = sub_29D9339F8();
  v40 = *(v4 - 8);
  v41 = v4;
  v6 = MEMORY[0x2A1C7C4A8](v4, v5);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v38 = &v37 - v9;
  sub_29D7F2CE4(0, &qword_2A17B3428, MEMORY[0x29EDB9D58]);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v37 - v12;
  v14 = sub_29D933AB8();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7F2CE4(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18]);
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v22 = &v37 - v21;
  v37 = sub_29D933318();
  v23 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37, v24);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  *(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isJournalComplete) = 0;
  *(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__notificationsAreDisabled) = 0;
  *(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__hasValidSamples) = 0;
  sub_29D933E28();
  v27 = *(v2 + 16);
  v28 = a1;

  *(v2 + 16) = a1;
  (*(v15 + 104))(v18, *MEMORY[0x29EDB9C78], v14);
  sub_29D933AC8();
  (*(v15 + 8))(v18, v14);
  v29 = sub_29D933CE8();
  (*(*(v29 - 8) + 56))(v22, 0, 1, v29);
  sub_29D933D28();
  v30 = sub_29D933D38();
  (*(*(v30 - 8) + 56))(v13, 0, 1, v30);
  sub_29D933308();
  v31 = v38;
  sub_29D7F1984(a1, v26, v38);
  v32 = v39;
  sub_29D7F1DE4(a1, v26, v39);
  (*(v23 + 8))(v26, v37);
  v33 = *(v40 + 32);
  v34 = v31;
  v35 = v41;
  v33(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__wakeupTime, v34, v41);
  v33(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__bedTime, v32, v35);
  *(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isPresentedModally) = v42;
  return v2;
}

void sub_29D7F2CE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_29D7F2D98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D7F2E28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

unint64_t sub_29D7F2E74()
{
  result = qword_2A1A24478;
  if (!qword_2A1A24478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24478);
  }

  return result;
}

uint64_t sub_29D7F2F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D7F2FA0(char a1)
{
  if (a1)
  {
    [objc_opt_self() tachycardiaThresholdHeartRate];
    v1 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    v2 = sub_29D93A6E8();
    v3 = sub_29D8EFDF0(v2, v1);
    v5 = v4;

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29D93DDB0;
    v7 = MEMORY[0x29EDC99B0];
    *(v6 + 56) = MEMORY[0x29EDC99B0];
    *(v6 + 64) = sub_29D69AD24();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v8 = sub_29D939D38();
    v10 = v9;

    sub_29D9334A8();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_29D93DDB0;
    v12 = *MEMORY[0x29EDC5260];
    v13 = MEMORY[0x29EDC9C10];
    *(v11 + 56) = MEMORY[0x29EDC9BA8];
    *(v11 + 64) = v13;
    *(v11 + 32) = v12;
    v14 = sub_29D939D38();
    v16 = v15;

    sub_29D6AA3B4(0, &qword_2A1A21F18, v7);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_29D93F680;
    *(v17 + 32) = v8;
    *(v17 + 40) = v10;
    *(v17 + 48) = v14;
  }

  else
  {
    sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_29D93F680;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    *(v17 + 32) = sub_29D9334A8();
    *(v17 + 40) = v18;
    v19 = sub_29D9334A8();
    v16 = v20;
    *(v17 + 48) = v19;
  }

  *(v17 + 56) = v16;
  return v17;
}

uint64_t sub_29D7F334C(char a1, char a2)
{
  if (a1)
  {
    [objc_opt_self() tachycardiaThresholdHeartRate];
    v3 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    v4 = sub_29D93A6E8();
    v5 = sub_29D8EFDF0(v4, v3);
    v7 = v6;

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_29D93DDB0;
    *(v8 + 56) = MEMORY[0x29EDC99B0];
    *(v8 + 64) = sub_29D69AD24();
    *(v8 + 32) = v5;
    *(v8 + 40) = v7;
    v9 = sub_29D939D38();
    v11 = v10;

    if (a2)
    {
      if (qword_2A17B0D80 == -1)
      {
        goto LABEL_13;
      }
    }

    else if (qword_2A17B0D80 == -1)
    {
LABEL_13:
      sub_29D9334A8();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_29D93DDB0;
      v18 = *MEMORY[0x29EDC5260];
      v19 = MEMORY[0x29EDC9C10];
      *(v17 + 56) = MEMORY[0x29EDC9BA8];
      *(v17 + 64) = v19;
      *(v17 + 32) = v18;
      v20 = sub_29D939D38();
      v16 = v21;

      sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_29D93F680;
      *(v12 + 32) = v9;
      *(v12 + 40) = v11;
      *(v12 + 48) = v20;
      goto LABEL_14;
    }

    swift_once();
    goto LABEL_13;
  }

  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D93F680;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  *(v12 + 32) = sub_29D9334A8();
  *(v12 + 40) = v13;
  if (qword_2A17B0D80 != -1)
  {
    swift_once();
  }

  v14 = sub_29D9334A8();
  v16 = v15;
  *(v12 + 48) = v14;
LABEL_14:
  *(v12 + 56) = v16;
  return v12;
}

uint64_t sub_29D7F37B8@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v25 - v5;
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v2);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v25 - v9;
  v11 = sub_29D9346E8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D9371B8();
  v17 = [v16 areAllRequirementsSatisfied];

  if (v17)
  {
    sub_29D7F2FA0(1);
  }

  else
  {
    v18 = [objc_opt_self() tachycardiaThresholdHeartRate] < *MEMORY[0x29EDC5258];
    sub_29D7F334C(1, v18);
  }

  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v19 = qword_2A1A2C038;
  sub_29D9334A8();
  (*(v12 + 104))(v15, *MEMORY[0x29EDC1760], v11);
  v20 = v19;
  sub_29D934788();
  v21 = sub_29D934798();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  sub_29D934818();
  v22 = sub_29D934358();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  sub_29D934988();
  v23 = sub_29D9349A8();
  return (*(*(v23 - 8) + 56))(a1, 0, 1, v23);
}

uint64_t sub_29D7F3BBC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v28 - v4;
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v28 - v8;
  v10 = sub_29D9346E8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D9371B8();
  v16 = [v15 areAllRequirementsSatisfied];

  if (v16)
  {
    sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_29D93F680;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v18 = qword_2A1A2C038;
    *(v17 + 32) = sub_29D9334A8();
    *(v17 + 40) = v19;
  }

  else
  {
    [objc_opt_self() tachycardiaThresholdHeartRate];
    sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_29D93F680;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v18 = qword_2A1A2C038;
    *(v17 + 32) = sub_29D9334A8();
    *(v17 + 40) = v20;
    if (qword_2A17B0D80 != -1)
    {
      swift_once();
    }
  }

  *(v17 + 48) = sub_29D9334A8();
  *(v17 + 56) = v21;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  (*(v11 + 104))(v14, *MEMORY[0x29EDC1768], v10);
  v22 = v18;
  sub_29D934788();
  v23 = sub_29D934798();
  (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
  sub_29D9347E8();
  sub_29D934818();
  v24 = sub_29D934358();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  v25 = v29;
  sub_29D934988();
  v26 = sub_29D9349A8();
  return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
}

void sub_29D7F41A4(char *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v107 = &v99 - v7;
  v8 = sub_29D9346B8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], v4);
  v15 = MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v108 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v99 - v18;
  v20 = sub_29D9346E8();
  v109 = *(v20 - 8);
  v22 = MEMORY[0x2A1C7C4A8](v20, v21);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v99 - v26;
  v111 = [a1 highestPriorityUnsatisfiedRequirement];
  if (!v111)
  {
    __break(1u);
    goto LABEL_52;
  }

  v110 = a2;
  v28 = sub_29D939D68();
  v30 = v29;
  if (v28 == sub_29D939D68() && v30 == v31)
  {

LABEL_6:
    v33 = sub_29D9349A8();
    (*(*(v33 - 8) + 56))(v110, 1, 1, v33);
    v34 = v111;

    return;
  }

  v32 = sub_29D93AD78();

  if (v32)
  {
    goto LABEL_6;
  }

  v35 = sub_29D939D68();
  v37 = v36;
  if (v35 == sub_29D939D68() && v37 == v38)
  {

    goto LABEL_14;
  }

  v39 = sub_29D93AD78();

  if ((v39 & 1) == 0)
  {
    v58 = sub_29D939D68();
    v60 = v59;
    if (v58 == sub_29D939D68() && v60 == v61)
    {

      goto LABEL_24;
    }

    v62 = sub_29D93AD78();

    if (v62)
    {

LABEL_24:
      v40 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      if (qword_2A1A257A0 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_49;
    }

    v63 = sub_29D939D68();
    v65 = v64;
    if (v63 == sub_29D939D68() && v65 == v66)
    {

LABEL_31:
      v111 = sub_29D934848();
      v69 = v68;
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v105 = qword_2A1A2C038;
      v106 = sub_29D9334A8();
      sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
      v70 = swift_allocObject();
      v103 = xmmword_29D93DDB0;
      *(v70 + 16) = xmmword_29D93DDB0;
      *(v70 + 56) = MEMORY[0x29EDC99B0];
      *(v70 + 64) = sub_29D69AD24();
      *(v70 + 32) = v111;
      *(v70 + 40) = v69;
      v104 = v69;
      sub_29D935E88();
      v106 = sub_29D939D38();
      v72 = v71;

      (*(v109 + 104))(v27, *MEMORY[0x29EDC1758], v20);
      sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
      v73 = swift_allocObject();
      *(v73 + 16) = v103;
      *(v73 + 32) = v106;
      *(v73 + 40) = v72;
      v102 = v72;
      *&v103 = v73;
      sub_29D935E88();
      v74 = sub_29D934828();
      v100 = v75;
      v101 = v74;
      (*(v9 + 104))(v12, *MEMORY[0x29EDC1720], v8);
      sub_29D934698();
      (*(v9 + 8))(v12, v8);
LABEL_34:
      v40 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      v48 = v111;
      goto LABEL_16;
    }

    v67 = sub_29D93AD78();

    if (v67)
    {

      goto LABEL_31;
    }

    v76 = sub_29D939D68();
    v78 = v77;
    if (v76 == sub_29D939D68() && v78 == v79)
    {

LABEL_39:
      v111 = sub_29D934858();
      v82 = v81;
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v105 = qword_2A1A2C038;
      v106 = sub_29D9334A8();
      sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
      v83 = swift_allocObject();
      v103 = xmmword_29D93DDB0;
      *(v83 + 16) = xmmword_29D93DDB0;
      *(v83 + 56) = MEMORY[0x29EDC99B0];
      *(v83 + 64) = sub_29D69AD24();
      *(v83 + 32) = v111;
      *(v83 + 40) = v82;
      v104 = v82;
      sub_29D935E88();
      v106 = sub_29D939D38();
      v85 = v84;

      (*(v109 + 104))(v27, *MEMORY[0x29EDC1758], v20);
      sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
      v86 = swift_allocObject();
      *(v86 + 16) = v103;
      *(v86 + 32) = v106;
      *(v86 + 40) = v85;
      v102 = v85;
      *&v103 = v86;
      sub_29D935E88();
      v87 = sub_29D934828();
      v100 = v88;
      v101 = v87;
      (*(v9 + 104))(v12, *MEMORY[0x29EDC1728], v8);
      sub_29D934698();
      (*(v9 + 8))(v12, v8);
      goto LABEL_34;
    }

    v80 = sub_29D93AD78();

    if (v80)
    {
      goto LABEL_39;
    }

    if ((sub_29D9347F8() & 1) == 0)
    {
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v89 = qword_2A1A2C038;
      goto LABEL_48;
    }

    if (qword_2A1A257A0 == -1)
    {
LABEL_44:
      v89 = qword_2A1A2C038;
LABEL_48:
      v105 = v89;
      v90 = sub_29D9334A8();
      v92 = v91;
      (*(v109 + 104))(v27, *MEMORY[0x29EDC1750], v20);
      sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_29D93DDB0;
      *(v93 + 32) = v90;
      *(v93 + 40) = v92;
      *&v103 = v93;
      sub_29D935E88();
      v94 = sub_29D934808();
      v100 = v95;
      v101 = v94;
      v106 = MEMORY[0x29ED64C30](v90, v92);
      v102 = v96;

      v48 = sub_29D934808();
      v104 = v97;
      v98 = [objc_opt_self() tachycardiaLearnMoreLink];
      sub_29D939D68();

      sub_29D9336E8();

      v40 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      goto LABEL_16;
    }

LABEL_52:
    swift_once();
    goto LABEL_44;
  }

LABEL_14:
  v40 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  if (qword_2A1A257A0 != -1)
  {
LABEL_49:
    swift_once();
  }

LABEL_15:
  v105 = qword_2A1A2C038;
  v41 = sub_29D9334A8();
  v43 = v42;
  (*(v109 + 104))(v27, *MEMORY[0x29EDC1750], v20);
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_29D93DDB0;
  *(v44 + 32) = v41;
  *(v44 + 40) = v43;
  *&v103 = v44;
  sub_29D935E88();
  v45 = sub_29D934808();
  v100 = v46;
  v101 = v45;
  v106 = MEMORY[0x29ED64C30](v41, v43);
  v102 = v47;

  v48 = sub_29D934808();
  v104 = v49;
  v50 = [objc_opt_self() tachycardiaLearnMoreLink];
  sub_29D939D68();

  sub_29D9336E8();

LABEL_16:
  v111 = v48;
  v51 = v110;
  if (v40[244] != -1)
  {
    swift_once();
  }

  v52 = v105;
  sub_29D9334A8();
  v53 = v109;
  (*(v109 + 16))(v24, v27, v20);
  v54 = v52;
  v55 = v107;
  sub_29D934788();
  v56 = sub_29D934798();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  sub_29D6D962C(v19, v108);
  sub_29D934978();
  sub_29D6D96C0(v19);
  (*(v53 + 8))(v27, v20);
  v57 = sub_29D9349A8();
  (*(*(v57 - 8) + 56))(v51, 0, 1, v57);
}

uint64_t sub_29D7F51D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1860];
  v3 = sub_29D934898();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D7F5248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D7F54F8();

  return MEMORY[0x2A1C60FD8](a1, a2, a3, v6);
}

uint64_t sub_29D7F529C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D7F54F8();

  return MEMORY[0x2A1C60FC0](a1, a2, v4);
}

unint64_t sub_29D7F52F4()
{
  result = qword_2A1A24480;
  if (!qword_2A1A24480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24480);
  }

  return result;
}

uint64_t sub_29D7F5348()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D941B10;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA458]);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA908]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D7F543C(uint64_t a1)
{
  v2 = sub_29D7F52F4();

  return MEMORY[0x2A1C61000](a1, v2);
}

uint64_t sub_29D7F5488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D7F52F4();

  return MEMORY[0x2A1C60FF8](a1, a2, a3, v6);
}

unint64_t sub_29D7F54F8()
{
  result = qword_2A1A24488;
  if (!qword_2A1A24488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24488);
  }

  return result;
}

uint64_t sub_29D7F555C(uint64_t a1)
{
  v2[93] = v1;
  v2[92] = a1;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D7FF488(0, &qword_2A17B3C78, MEMORY[0x29EDC1C50], MEMORY[0x29EDC9C68]);
  v2[94] = swift_task_alloc();
  v4 = sub_29D935C18();
  v2[95] = v4;
  v2[96] = *(v4 - 8);
  v2[97] = swift_task_alloc();
  v2[98] = type metadata accessor for BloodPressurePDFViewModel(0);
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = *(type metadata accessor for PregnancyModel(0) - 8);
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v5 = sub_29D933CC8();
  v2[105] = v5;
  v2[106] = *(v5 - 8);
  v2[107] = swift_task_alloc();
  v6 = sub_29D933CE8();
  v2[108] = v6;
  v2[109] = *(v6 - 8);
  v2[110] = swift_task_alloc();
  sub_29D7FF488(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], v3);
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();
  v7 = sub_29D9339F8();
  v2[113] = v7;
  v2[114] = *(v7 - 8);
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  v8 = sub_29D935EB8();
  v2[125] = v8;
  v2[126] = *(v8 - 8);
  v2[127] = swift_task_alloc();
  sub_29D7FF488(0, &qword_2A17B2D20, MEMORY[0x29EDB9950], v3);
  v2[128] = swift_task_alloc();
  v9 = sub_29D9363E8();
  v2[129] = v9;
  v2[130] = *(v9 - 8);
  v2[131] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7F5A08, 0, 0);
}

uint64_t sub_29D7F5A08()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[93];
  sub_29D6945AC((v4 + 1), (v0 + 53));
  sub_29D9363D8();
  v0[132] = sub_29D9359A8();
  (*(v2 + 8))(v1, v3);
  v5 = v4[4];
  v6 = v4[5];
  sub_29D693E2C(v4 + 1, v5);
  v7 = swift_task_alloc();
  v0[133] = v7;
  *v7 = v0;
  v7[1] = sub_29D7F5B1C;
  v8 = v0[127];

  return MEMORY[0x2A1C62868](v8, v5, v6);
}

uint64_t sub_29D7F5B1C()
{
  *(*v1 + 1072) = v0;

  if (v0)
  {
    v2 = sub_29D7F8BF4;
  }

  else
  {
    v2 = sub_29D7F5C30;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D7F5C30()
{
  v46 = v0;
  v1 = v0[127];
  v2 = v0[126];
  v3 = v0[125];
  v41 = v0[114];
  v43 = v0[113];
  v4 = v0[110];
  v5 = v0[109];
  v39 = v0[112];
  v40 = v0[108];
  v6 = v0[107];
  v7 = v0[106];
  v38 = v0[105];
  v8 = v0[93];
  sub_29D935EA8();
  (*(v2 + 8))(v1, v3);
  sub_29D9339E8();
  v9 = *v8;
  v0[135] = *v8;
  v37 = v9;
  sub_29D702278();
  sub_29D933C88();
  (*(v7 + 104))(v6, *MEMORY[0x29EDB9CA0], v38);
  sub_29D933C38();
  (*(v7 + 8))(v6, v38);
  v10 = *(v5 + 8);
  v0[136] = v10;
  v0[137] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v40);
  if ((*(v41 + 48))(v39, 1, v43) == 1)
  {
    sub_29D7FF984(v0[112], &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v11 = sub_29D937898();
    sub_29D69C6C0(v11, qword_2A1A2BF10);
    v12 = sub_29D937878();
    v13 = sub_29D93A288();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[128];
    v16 = v0[124];
    v44 = v0[123];
    v17 = v0[114];
    v18 = v0[113];
    if (v14)
    {
      v42 = v0[124];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v45);
      _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s] Could not adjust date for Blood Pressure PDF - Chart", v19, 0xCu);
      sub_29D69417C(v20);
      MEMORY[0x29ED6BE30](v20, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);

      sub_29D7FF984(v15, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
      v21 = *(v17 + 8);
      v21(v44, v18);
      v22 = v42;
    }

    else
    {

      sub_29D7FF984(v15, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
      v21 = *(v17 + 8);
      v21(v44, v18);
      v22 = v16;
    }

    v21(v22, v18);
    v34 = v0[92];
    v35 = sub_29D934E78();
    (*(*(v35 - 8) + 56))(v34, 1, 1, v35);

    v36 = v0[1];

    return v36();
  }

  else
  {
    v23 = v0[122];
    v24 = v0[119];
    v25 = v0[114];
    v26 = v0[113];
    v27 = v0[112];
    v28 = v0[110];
    v29 = v0[108];
    v30 = *(v25 + 32);
    v0[138] = v30;
    v0[139] = (v25 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v30(v23, v27, v26);
    sub_29D933C88();
    sub_29D933AD8();
    v10(v28, v29);
    sub_29D933C88();
    sub_29D933948();
    sub_29D933AD8();
    v31 = *(v25 + 8);
    v0[140] = v31;
    v0[141] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v24, v26);
    v10(v28, v29);
    v32 = swift_task_alloc();
    v0[142] = v32;
    *v32 = v0;
    v32[1] = sub_29D7F62F4;

    return sub_29D7FA874();
  }
}

uint64_t sub_29D7F62F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1144) = a1;
  *(v3 + 1152) = v1;

  if (v1)
  {
    v4 = sub_29D7F8DBC;
  }

  else
  {
    v4 = sub_29D7F640C;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D7F640C()
{
  v39 = v0;
  v1 = *(v0 + 1144);
  v2 = *(v0 + 992);
  v3 = *(v0 + 968);
  v4 = *(v0 + 944);
  v5 = *(v0 + 936);
  v6 = *(v0 + 912);
  v7 = *(v0 + 904);
  v8 = *(v6 + 16);
  *(v0 + 1160) = v8;
  *(v0 + 1168) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v3, v7);
  v8(v5, v2, v7);
  if (v1)
  {
    v9 = qword_2A1A24658;
    v10 = *(v0 + 1144);
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_29D937898();
    sub_29D69C6C0(v11, qword_2A1A2BF10);
    v12 = sub_29D937878();
    v13 = sub_29D93A2A8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v38 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v38);
      _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s] Referencing start date from active Blood Pressure journal", v14, 0xCu);
      sub_29D69417C(v15);
      MEMORY[0x29ED6BE30](v15, -1, -1);
      MEMORY[0x29ED6BE30](v14, -1, -1);
    }

    v16 = *(v0 + 1120);
    v37 = *(v0 + 1104);
    v36 = *(v0 + 1088);
    v17 = *(v0 + 952);
    v18 = *(v0 + 944);
    v19 = *(v0 + 928);
    v20 = *(v0 + 904);
    v21 = *(v0 + 880);
    v35 = *(v0 + 864);
    sub_29D933C88();
    v22 = [v10 startDate];
    sub_29D933998();

    sub_29D933AD8();
    v16(v19, v20);
    v36(v21, v35);
    v16(v18, v20);
    v37(v18, v17, v20);
    v23 = [v10 endDate];
    if (v23)
    {
      v24 = *(v0 + 1120);
      v25 = *(v0 + 1104);
      v26 = *(v0 + 936);
      v27 = *(v0 + 920);
      v28 = *(v0 + 904);
      v29 = v23;
      sub_29D933998();

      v24(v26, v28);
      v25(v26, v27, v28);
    }

    else
    {
    }
  }

  v30 = swift_task_alloc();
  *(v0 + 1176) = v30;
  *v30 = v0;
  v30[1] = sub_29D7F6764;
  v31 = *(v0 + 1080);
  v32 = *(v0 + 992);
  v33 = *(v0 + 984);

  return sub_29D701254(v33, v32, 0, v31);
}

uint64_t sub_29D7F6764(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1184) = a1;
  *(v3 + 1192) = v1;

  if (v1)
  {
    v4 = sub_29D7F9018;
  }

  else
  {
    v4 = sub_29D7F687C;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D7F687C()
{
  v55 = v0;
  v1 = v0[74].u64[0];
  if (v1)
  {
    v52 = v0[67].i64[1];
    v48 = v0[62].i64[0];
    v50 = v0[61].i64[1];
    v2 = v0[59].i64[0];
    v3 = swift_task_alloc();
    v3[1] = vextq_s8(v0[60], v0[60], 8uLL);
    sub_29D935E88();
    v4 = sub_29D9297D4(sub_29D7FF4EC, v3, v1);

    v0[44].i64[0] = v4;
    swift_getKeyPath();
    sub_29D7FF50C(0, &qword_2A17B1378, &qword_2A17B1380, 0x29EDBAB10, MEMORY[0x29EDC9A40]);
    sub_29D702E94();
    sub_29D7FF878(&qword_2A17B4730, MEMORY[0x29EDB9BE0]);
    v5 = sub_29D939E98();

    v0[75].i64[0] = sub_29D702068(v5);
    v6 = swift_task_alloc();
    *(v6 + 16) = v2;
    *(v6 + 24) = v48;
    sub_29D935E88();
    v7 = sub_29D9297D4(sub_29D7FFA08, v6, v1);

    v0[44].i64[1] = v7;
    swift_getKeyPath();
    v8 = sub_29D939E98();

    v0[75].i64[1] = sub_29D702068(v8);
    v9 = swift_task_alloc();
    *(v9 + 16) = v50;
    *(v9 + 24) = v2;
    v10 = sub_29D9297D4(sub_29D7FFA08, v9, v1);

    v0[45].i64[0] = v10;
    swift_getKeyPath();
    v11 = sub_29D939E98();

    v0[76].i64[0] = sub_29D702068(v11);
    v12 = type metadata accessor for BloodPressurePDFIntervalDataSource();
    v13 = swift_allocObject();
    v0[76].i64[1] = v13;
    *(v13 + 16) = v52;
    v0[30].i64[1] = v12;
    v0[31].i64[0] = &off_2A244ECF0;
    v0[29].i64[0] = v13;
    type metadata accessor for BloodPressurePDFIntervalCalculator();
    inited = swift_initStackObject();
    v0[77].i64[0] = inited;
    v15 = v0[30].i64[1];
    v16 = sub_29D693DDC(v0[29].i64, v15);
    v17 = *(v15 - 8);
    v18 = swift_task_alloc();
    (*(v17 + 16))(v18, v16, v15);
    v19 = *v18;
    inited[5] = v12;
    inited[6] = &off_2A244ECF0;
    inited[2] = v19;
    v20 = v52;

    sub_29D69417C(v0[29].i64);

    v21 = swift_task_alloc();
    v0[77].i64[1] = v21;
    *v21 = v0;
    v21[1] = sub_29D7F709C;
    v22 = v0[62].i64[0];
    v23 = v0[61].i64[1];

    return sub_29D929BD8(v23, v22);
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v25 = sub_29D937898();
    sub_29D69C6C0(v25, qword_2A1A2BF10);
    v26 = sub_29D937878();
    v27 = sub_29D93A288();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[70].i64[0];
    v30 = v0[67].i64[1];
    v49 = v0[71].i64[1];
    v51 = v0[64].i64[0];
    v31 = v0[62].i64[0];
    v32 = v0[61].i64[1];
    v47 = v0[61].i64[0];
    v53 = v0[59].i64[0];
    v46 = v0[58].i64[1];
    v33 = v0[56].i64[1];
    if (v28)
    {
      v45 = v0[62].i64[0];
      v34 = swift_slowAlloc();
      v44 = v32;
      v35 = swift_slowAlloc();
      v54 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v54);
      _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s] Could not populate data to create Blood Pressure PDF", v34, 0xCu);
      sub_29D69417C(v35);
      MEMORY[0x29ED6BE30](v35, -1, -1);
      MEMORY[0x29ED6BE30](v34, -1, -1);

      v29(v46, v33);
      v29(v47, v33);
      sub_29D7FF984(v51, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
      v29(v53, v33);
      v29(v44, v33);
      v36 = v45;
    }

    else
    {

      v29(v46, v33);
      v29(v47, v33);
      sub_29D7FF984(v51, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
      v29(v53, v33);
      v29(v32, v33);
      v36 = v31;
    }

    v29(v36, v33);
    v37 = v0[70].i64[0];
    v38 = v0[60].i64[1];
    v39 = v0[60].i64[0];
    v40 = v0[56].i64[1];
    v41 = v0[46].i64[0];
    v42 = sub_29D934E78();
    (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
    v37(v39, v40);
    v37(v38, v40);

    v43 = v0->i64[1];

    return v43();
  }
}