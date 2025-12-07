uint64_t sub_26D1DA4A0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a1 <= 3u)
  {
    v7 = 1635017060;
    v8 = 0xD000000000000010;
    v9 = 0x800000026D23A100;
    if (a1 != 2)
    {
      v8 = 0x7A69732D656C6966;
      v9 = 0xE900000000000065;
    }

    if (a1)
    {
      v7 = 1701869940;
    }

    if (a1 <= 1u)
    {
      v5 = v7;
    }

    else
    {
      v5 = v8;
    }

    if (a1 <= 1u)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = v9;
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v5 = 0x6D616E2D656C6966;
    }

    else
    {
      v5 = 0x2D746E65746E6F63;
    }

    if (a1 == 4)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0xEC00000065707974;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x6C69746E75;
    if (a1 != 7)
    {
      v4 = 0xD000000000000011;
      v3 = 0x800000026D23A140;
    }

    if (a1 == 6)
    {
      v5 = 7107189;
    }

    else
    {
      v5 = v4;
    }

    if (a1 == 6)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = v3;
    }
  }

  v10 = *(a2 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (*(v10 + 16))
  {

    v12 = sub_26D1BDEEC(v5, v6);
    if (v13)
    {
      v14 = (*(v10 + 56) + 16 * v12);
      v15 = *v14;
      v16 = v14[1];

      return sub_26D1BCF54(v15, v16, a3);
    }
  }

  sub_26D1B7F48();
  swift_allocError();
  *v18 = v5;
  *(v18 + 8) = v6;
  *(v18 + 16) = 0;
  *(v18 + 24) = 2;
  return swift_willThrow();
}

uint64_t sub_26D1DA6A0@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = (a1 & 1) == 0;
  if (a1)
  {
    v10 = 0x65756C6176;
  }

  else
  {
    v10 = 1701667182;
  }

  if (v9)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = *(a2 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v12 + 16))
  {
    goto LABEL_12;
  }

  v13 = sub_26D1BDEEC(v10, v11);
  if ((v14 & 1) == 0)
  {

LABEL_12:
    sub_26D1B7F48();
    swift_allocError();
    v20 = 2;
    goto LABEL_13;
  }

  v15 = (*(v12 + 56) + 16 * v13);
  v10 = *v15;
  v16 = v15[1];

  sub_26D22CCD4();
  v17 = sub_26D22CCE4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    sub_26D1B950C(v8, &qword_2804E0890, &qword_26D230770);
    sub_26D1B7F48();
    swift_allocError();
    v20 = 4;
    v11 = v16;
LABEL_13:
    *v19 = v10;
    *(v19 + 8) = v11;
    *(v19 + 16) = 0;
    *(v19 + 24) = v20;
    return swift_willThrow();
  }

  return (*(v18 + 32))(a3, v8, v17);
}

uint64_t sub_26D1DA8FC(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = 0x65756C6176;
  }

  else
  {
    v4 = 1701667182;
  }

  if (a1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (*(v6 + 16))
  {

    v9 = sub_26D1BDEEC(v4, v5);
    if (v10)
    {
      v11 = (*(v6 + 56) + 16 * v9);
      v12 = *v11;
      v13 = v11[1];

      return a4(v12, v13, a2);
    }
  }

  sub_26D1B7F48();
  swift_allocError();
  *v15 = v4;
  *(v15 + 8) = v5;
  *(v15 + 16) = 0;
  *(v15 + 24) = 2;
  return swift_willThrow();
}

void *sub_26D1DAA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_26D22D294();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B68, &qword_26D230D48);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v27 = &v25 - v17;
  if ((a3 & 1) == 0)
  {
    v35 = a1;
    v36 = a2;
    sub_26D1E74AC(&qword_2804E0B70, MEMORY[0x277CF2120], MEMORY[0x277CF2128]);

    sub_26D22E554();
    if ((*(v10 + 48))(v16, 1, v9) != 1)
    {

      return (*(v10 + 32))(a4, v16, v9);
    }

    goto LABEL_15;
  }

  v26 = a4;
  v29 = a1;
  v30 = a2;
  sub_26D1E74AC(&qword_2804E0B78, MEMORY[0x277CF2120], MEMORY[0x277CF2130]);
  result = sub_26D22E764();
  v19 = v37;
  v20 = *(v37 + 16);
  if (v20)
  {
    v25 = v4;
    v21 = 0;
    v28 = v10 + 16;
    while (v21 < *(v19 + 16))
    {
      (*(v10 + 16))(v12, v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21, v9);
      sub_26D1E74AC(&qword_2804E0B70, MEMORY[0x277CF2120], MEMORY[0x277CF2128]);
      sub_26D22E544();
      v33 = v35;
      v34 = v36;
      v31 = v29;
      v32 = v30;
      sub_26D1B1F48();
      v22 = sub_26D22E6D4();

      if (!v22)
      {
        v16 = v27;
        (*(v10 + 32))(v27, v12, v9);
        v23 = 0;
        goto LABEL_13;
      }

      ++v21;
      result = (*(v10 + 8))(v12, v9);
      if (v20 == v21)
      {
        v23 = 1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 1;
LABEL_11:
    v16 = v27;
LABEL_13:
    (*(v10 + 56))(v16, v23, 1, v9);

    if ((*(v10 + 48))(v16, 1, v9) == 1)
    {
      a1 = v29;
      a2 = v30;
LABEL_15:
      sub_26D1B950C(v16, &qword_2804E0B68, &qword_26D230D48);
      sub_26D1B7F48();
      swift_allocError();
      *v24 = a1;
      *(v24 + 8) = a2;
      *(v24 + 16) = 0;
      *(v24 + 24) = 3;
      return swift_willThrow();
    }

    return (*(v10 + 32))(v26, v16, v9);
  }

  return result;
}

void *sub_26D1DAE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_26D22D5F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B40, &qword_26D230D30);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v27 = &v25 - v17;
  if ((a3 & 1) == 0)
  {
    v35 = a1;
    v36 = a2;
    sub_26D1E74AC(&qword_2804E0B48, MEMORY[0x277CF2488], MEMORY[0x277CF2490]);

    sub_26D22E554();
    if ((*(v10 + 48))(v16, 1, v9) != 1)
    {

      return (*(v10 + 32))(a4, v16, v9);
    }

    goto LABEL_15;
  }

  v26 = a4;
  v29 = a1;
  v30 = a2;
  sub_26D1E74AC(&qword_2804E0B50, MEMORY[0x277CF2488], MEMORY[0x277CF2498]);
  result = sub_26D22E764();
  v19 = v37;
  v20 = *(v37 + 16);
  if (v20)
  {
    v25 = v4;
    v21 = 0;
    v28 = v10 + 16;
    while (v21 < *(v19 + 16))
    {
      (*(v10 + 16))(v12, v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21, v9);
      sub_26D1E74AC(&qword_2804E0B48, MEMORY[0x277CF2488], MEMORY[0x277CF2490]);
      sub_26D22E544();
      v33 = v35;
      v34 = v36;
      v31 = v29;
      v32 = v30;
      sub_26D1B1F48();
      v22 = sub_26D22E6D4();

      if (!v22)
      {
        v16 = v27;
        (*(v10 + 32))(v27, v12, v9);
        v23 = 0;
        goto LABEL_13;
      }

      ++v21;
      result = (*(v10 + 8))(v12, v9);
      if (v20 == v21)
      {
        v23 = 1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 1;
LABEL_11:
    v16 = v27;
LABEL_13:
    (*(v10 + 56))(v16, v23, 1, v9);

    if ((*(v10 + 48))(v16, 1, v9) == 1)
    {
      a1 = v29;
      a2 = v30;
LABEL_15:
      sub_26D1B950C(v16, &qword_2804E0B40, &qword_26D230D30);
      sub_26D1B7F48();
      swift_allocError();
      *v24 = a1;
      *(v24 + 8) = a2;
      *(v24 + 16) = 0;
      *(v24 + 24) = 3;
      return swift_willThrow();
    }

    return (*(v10 + 32))(v26, v16, v9);
  }

  return result;
}

void sub_26D1DB2D4(char a1, uint64_t a2, uint64_t a3)
{
  sub_26D1DE66C(a1 & 1, a3);
  v8 = v3;
  if (!v3)
  {
    if (v6)
    {
      v12 = v7;
      sub_26D1DA8FC(1, a2, v12, sub_26D1DAA24);

      return;
    }

    if (a1)
    {
      v13 = 0x5473736572646441;
    }

    else
    {
      v13 = 0x73736572646441;
    }

    if (a1)
    {
      v14 = 0xEB00000000657079;
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    sub_26D1B7F48();
    v8 = swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    swift_willThrow();
  }

  if (a1)
  {
    v9 = 0x5473736572646441;
  }

  else
  {
    v9 = 0x73736572646441;
  }

  if (a1)
  {
    v10 = 0xEB00000000657079;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  MEMORY[0x26D6B6C70](v9, v10);

  MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
  sub_26D1B7F48();
  swift_allocError();
  *v11 = 0x6D616E5B6D726170;
  *(v11 + 8) = 0xEB00000000273D65;
  *(v11 + 16) = v8;
  *(v11 + 24) = 7;
  swift_willThrow();
}

void sub_26D1DB4B0(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1;
  sub_26D1DEE5C(a1, a2);
  v8 = v3;
  if (!v3)
  {
    if (v6)
    {
      v11 = v7;
      sub_26D1DA6A0(1, v11, a3);

      return;
    }

    v13 = *&aFqdn_0[8 * v4];
    v14 = *&aIdProvi_0[8 * v4 + 8];
    sub_26D1B7F48();
    v8 = swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    swift_willThrow();
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v9 = 0x64692D707061;
    }

    else
    {
      v9 = 0x69766F72702D6469;
    }

    if (v4 == 1)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xEB00000000726564;
    }
  }

  else
  {
    v10 = 0xE400000000000000;
    v9 = 1852076390;
  }

  MEMORY[0x26D6B6C70](v9, v10);

  MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
  sub_26D1B7F48();
  swift_allocError();
  *v12 = 0x6D616E5B6D726170;
  *(v12 + 8) = 0xEB00000000273D65;
  *(v12 + 16) = v8;
  *(v12 + 24) = 7;
  swift_willThrow();
}

void sub_26D1DB684(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1;
  sub_26D1DF5E4(a1, a2);
  v8 = v3;
  if (!v3)
  {
    if (v6)
    {
      v11 = v7;
      sub_26D1DA6A0(1, v11, a3);

      return;
    }

    v13 = *&aMaxsize[8 * v4];
    v14 = *&aSwitchovexplod[8 * v4 + 16];
    sub_26D1B7F48();
    v8 = swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    swift_willThrow();
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v9 = 0x766F686374697753;
    }

    else
    {
      v9 = 0x7265646F6C707865;
    }

    if (v4 == 1)
    {
      v10 = 0xEE00657A69537265;
    }

    else
    {
      v10 = 0xEC0000006972752DLL;
    }
  }

  else
  {
    v10 = 0xE700000000000000;
    v9 = 0x657A695378614DLL;
  }

  MEMORY[0x26D6B6C70](v9, v10);

  MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
  sub_26D1B7F48();
  swift_allocError();
  *v12 = 0x6D616E5B6D726170;
  *(v12 + 8) = 0xEB00000000273D65;
  *(v12 + 16) = v8;
  *(v12 + 24) = 7;
  swift_willThrow();
}

uint64_t sub_26D1DB870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0BA0, &qword_26D230D78);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  sub_26D1D7C94(a1, a2);
  v11 = v3;
  if (v3)
  {
    goto LABEL_8;
  }

  v12 = *&v10[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
  v13 = *(v12 + 16);
  v14 = v10;
  if (v13)
  {

    v15 = sub_26D1BDEEC(0x65756C6176, 0xE500000000000000);
    if (v16)
    {
      v17 = (*(v12 + 56) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];
      swift_bridgeObjectRetain_n();

      v38 = sub_26D1BA284(v18, v19);
      v43 = v18;
      v39 = sub_26D22D664();
      v41 = v38;
      sub_26D1E74AC(&qword_2804E0BA8, MEMORY[0x277CF2528], MEMORY[0x277CF2530]);
      sub_26D22E554();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v9, 1, v39) != 1)
      {

        return (*(v40 + 32))(a3, v9, v39);
      }

      sub_26D1B950C(v9, &qword_2804E0BA0, &qword_26D230D78);
      sub_26D1B7F48();
      v11 = swift_allocError();
      *v20 = v43;
      *(v20 + 8) = v19;
      *(v20 + 16) = 0;
      v21 = 3;
      goto LABEL_7;
    }
  }

  sub_26D1B7F48();
  v11 = swift_allocError();
  *v20 = xmmword_26D230470;
  *(v20 + 16) = 0;
  v21 = 2;
LABEL_7:
  *(v20 + 24) = v21;
  swift_willThrow();

LABEL_8:
  v41 = 0x6D616E5B6D726170;
  v42 = 0xEB00000000273D65;
  if (a1 <= 3u)
  {
    v30 = 0xE800000000000000;
    v31 = 0x6874754174616843;
    if (a1 != 2)
    {
      v31 = 0x61684370756F7247;
      v30 = 0xED00006874754174;
    }

    v32 = 0xD000000000000010;
    v33 = 0x800000026D23B360;
    if (a1)
    {
      v32 = 0xD00000000000001BLL;
      v33 = 0x800000026D23B340;
    }

    if (a1 <= 1u)
    {
      v28 = v32;
    }

    else
    {
      v28 = v31;
    }

    if (a1 <= 1u)
    {
      v29 = v33;
    }

    else
    {
      v29 = v30;
    }
  }

  else
  {
    v22 = 0xEE00687475416873;
    v23 = 0x7550636F6C6F6567;
    v24 = 0x800000026D23B300;
    v25 = 7632965;
    if (a1 == 7)
    {
      v25 = 0xD000000000000010;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    if (a1 != 6)
    {
      v23 = v25;
      v22 = v24;
    }

    v26 = 0xE600000000000000;
    v27 = 0xD000000000000011;
    if (a1 == 4)
    {
      v27 = 0x687475417466;
    }

    else
    {
      v26 = 0x800000026D23B320;
    }

    if (a1 <= 5u)
    {
      v28 = v27;
    }

    else
    {
      v28 = v23;
    }

    if (a1 <= 5u)
    {
      v29 = v26;
    }

    else
    {
      v29 = v22;
    }
  }

  MEMORY[0x26D6B6C70](v28, v29);

  MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
  v34 = v41;
  v35 = v42;
  sub_26D1B7F48();
  swift_allocError();
  *v36 = v34;
  *(v36 + 8) = v35;
  *(v36 + 16) = v11;
  *(v36 + 24) = 7;
  return swift_willThrow();
}

void sub_26D1DBD84(unsigned __int8 a1@<W0>, void (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>, uint64_t a5@<X1>)
{
  sub_26D1DFB8C(a1, a5);
  v12 = v5;
  if (!v5)
  {
    if (!v10)
    {
      v19 = a3(0);
      (*(*(v19 - 8) + 56))(a4, 1, 1, v19);
      return;
    }

    v14 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v13 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v15 = v14 == 0x6574636172616863 && v13 == 0xEE00636974736972;
    if (v15 || (v16 = v11, v17 = sub_26D22E964(), v11 = v16, (v17 & 1) != 0))
    {
      v18 = v11;
      a2();

      v20 = a3(0);
      (*(*(v20 - 8) + 56))(a4, 0, 1, v20);
      return;
    }

    sub_26D1B7F48();
    v12 = swift_allocError();
    *v21 = v14;
    *(v21 + 8) = v13;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    swift_willThrow();
  }

  v36 = v12;
  v22 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (!swift_dynamicCast())
  {
    goto LABEL_28;
  }

  if (v35 != 7)
  {
    sub_26D1B7E60(v32, v33, v34, v35);
LABEL_28:

    swift_willThrow();
    return;
  }

  v23 = 0xE500000000000000;
  v24 = 0x4449707041;
  v25 = 0xE800000000000000;
  v26 = 0x5345434956524553;
  v27 = 0x4E4947415353454DLL;
  v28 = 0xEC00000059524556;
  if (a1 == 3)
  {
    v28 = 0xE900000000000047;
  }

  else
  {
    v27 = 0x4F43534944504143;
  }

  if (a1 != 2)
  {
    v26 = v27;
    v25 = v28;
  }

  if (a1)
  {
    v24 = 0x65527070412D6F54;
    v23 = 0xE900000000000066;
  }

  if (a1 <= 1u)
  {
    v29 = v24;
  }

  else
  {
    v29 = v26;
  }

  if (a1 <= 1u)
  {
    v30 = v23;
  }

  else
  {
    v30 = v25;
  }

  MEMORY[0x26D6B6C70](v29, v30);

  MEMORY[0x26D6B6C70](3038503, 0xE300000000000000);

  MEMORY[0x26D6B6C70]();

  sub_26D1B7F48();
  swift_allocError();
  *v31 = 0xD000000000000015;
  *(v31 + 8) = 0x800000026D23B050;
  *(v31 + 16) = v34;
  *(v31 + 24) = 7;
  swift_willThrow();
}

void sub_26D1DC128(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0898, &qword_26D230D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v45 - v8;
  sub_26D1DFB8C(v5, a2);
  v12 = v3;
  if (!v3)
  {
    if (!v10)
    {
      v27 = sub_26D22D844();
      (*(*(v27 - 8) + 56))(a3, 1, 1, v27);
      return;
    }

    v14 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v13 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v15 = v14 == 0x6574636172616863 && v13 == 0xEE00636974736972;
    if (v15 || (v16 = v11, v17 = sub_26D22E964(), v11 = v16, (v17 & 1) != 0))
    {
      v18 = v11;
      v19 = sub_26D1E1120();
      v20 = sub_26D1E68D8(v19);

      sub_26D1C7F68(0, 0, v20);
      v51 = sub_26D1C8174(1, 0, v20);
      v21 = sub_26D1C8174(2, 0, v20);
      v49 = v22;
      v50 = v21;
      v23 = sub_26D1C8174(3, 0, v20);
      v47 = v24;
      v48 = v23;
      v25 = sub_26D1C8174(4, 0, v20);
      v45[3] = v26;
      v46 = v25;
      sub_26D1C838C(5, 0, v20, v9);

      sub_26D22D834();

      v44 = sub_26D22D844();
      (*(*(v44 - 8) + 56))(a3, 0, 1, v44);
      return;
    }

    sub_26D1B7F48();
    v12 = swift_allocError();
    *v28 = v14;
    *(v28 + 8) = v13;
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    swift_willThrow();
  }

  v58 = v12;
  v29 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (!swift_dynamicCast())
  {
    goto LABEL_28;
  }

  v31 = v54;
  v30 = v55;
  v32 = v56;
  if (v57 != 7)
  {
    sub_26D1B7E60(v54, v55, v56, v57);
LABEL_28:

    swift_willThrow();
    return;
  }

  v52 = 0xD000000000000015;
  v53 = 0x800000026D23B050;
  v33 = 0xE500000000000000;
  v34 = 0x4449707041;
  v35 = 0xE800000000000000;
  v36 = 0x5345434956524553;
  v37 = 0x4E4947415353454DLL;
  v38 = 0xEC00000059524556;
  if (v5 == 3)
  {
    v38 = 0xE900000000000047;
  }

  else
  {
    v37 = 0x4F43534944504143;
  }

  if (v5 != 2)
  {
    v36 = v37;
    v35 = v38;
  }

  if (v5)
  {
    v34 = 0x65527070412D6F54;
    v33 = 0xE900000000000066;
  }

  if (v5 <= 1u)
  {
    v39 = v34;
  }

  else
  {
    v39 = v36;
  }

  if (v5 <= 1u)
  {
    v40 = v33;
  }

  else
  {
    v40 = v35;
  }

  MEMORY[0x26D6B6C70](v39, v40);

  MEMORY[0x26D6B6C70](3038503, 0xE300000000000000);

  MEMORY[0x26D6B6C70](v31, v30);

  v41 = v52;
  v42 = v53;
  sub_26D1B7F48();
  swift_allocError();
  *v43 = v41;
  *(v43 + 8) = v42;
  *(v43 + 16) = v32;
  *(v43 + 24) = 7;
  swift_willThrow();
}

void sub_26D1DC66C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = a1;
  v8 = sub_26D22D624();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D1DFD88(v6, a2);
  if (!v3)
  {
    if (!v12)
    {
      (*(v9 + 56))(a3, 1, 1, v8);
      return;
    }

    v38[1] = v12;
    v15 = *&v13[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v14 = *&v13[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v16 = v15 == 0x6574636172616863 && v14 == 0xEE00636974736972;
    if (v16 || (v17 = v13, v18 = sub_26D22E964(), v13 = v17, (v18 & 1) != 0))
    {
      v19 = v13;
      v20 = sub_26D1E1120();
      v21 = sub_26D1E68D8(v20);

      v38[0] = sub_26D1E6E74(0, v21);
      sub_26D1E6E74(1, v21);

      sub_26D22D614();

      (*(v9 + 32))(a3, v11, v8);
      (*(v9 + 56))(a3, 0, 1, v8);
      return;
    }

    sub_26D1B7F48();
    v4 = swift_allocError();
    *v22 = v15;
    *(v22 + 8) = v14;
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    swift_willThrow();
  }

  v45 = v4;
  v23 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (!swift_dynamicCast())
  {
    goto LABEL_27;
  }

  v25 = v41;
  v24 = v42;
  v26 = v43;
  if (v44 != 7)
  {
    sub_26D1B7E60(v41, v42, v43, v44);
LABEL_27:

    swift_willThrow();
    return;
  }

  v39 = 0xD000000000000015;
  v40 = 0x800000026D23B050;
  v27 = 0xE400000000000000;
  v28 = 1397900630;
  v29 = 0xEE004C4F52544E4FLL;
  v30 = 0x432D535345434341;
  v31 = 0xE400000000000000;
  v32 = 1380275029;
  if (v6 != 3)
  {
    v32 = 0x544143494C505041;
    v31 = 0xEB000000004E4F49;
  }

  if (v6 != 2)
  {
    v30 = v32;
    v29 = v31;
  }

  if (v6)
  {
    v28 = 0x4E454B4F54;
    v27 = 0xE500000000000000;
  }

  if (v6 <= 1u)
  {
    v33 = v28;
  }

  else
  {
    v33 = v30;
  }

  if (v6 <= 1u)
  {
    v34 = v27;
  }

  else
  {
    v34 = v29;
  }

  MEMORY[0x26D6B6C70](v33, v34);

  MEMORY[0x26D6B6C70](3038503, 0xE300000000000000);

  MEMORY[0x26D6B6C70](v25, v24);

  v35 = v39;
  v36 = v40;
  sub_26D1B7F48();
  swift_allocError();
  *v37 = v35;
  *(v37 + 8) = v36;
  *(v37 + 16) = v26;
  *(v37 + 24) = 7;
  swift_willThrow();
}

void sub_26D1DCAD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  sub_26D1DFD88(a1, a2);
  v8 = v3;
  if (!v3)
  {
    if (!v6)
    {
      v15 = sub_26D22D874();
      (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
      return;
    }

    v10 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v9 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v11 = v10 == 0x6574636172616863 && v9 == 0xEE00636974736972;
    if (v11 || (v12 = v7, v13 = sub_26D22E964(), v7 = v12, (v13 & 1) != 0))
    {
      v14 = v7;
      sub_26D1CB788(v14);

      v16 = sub_26D22D874();
      (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
      return;
    }

    sub_26D1B7F48();
    v8 = swift_allocError();
    *v17 = v10;
    *(v17 + 8) = v9;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    swift_willThrow();
  }

  v32 = v8;
  v18 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (!swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (v31 != 7)
  {
    sub_26D1B7E60(v28, v29, v30, v31);
LABEL_27:

    swift_willThrow();
    return;
  }

  v19 = 0xE400000000000000;
  v20 = 1397900630;
  v21 = 0xEE004C4F52544E4FLL;
  v22 = 0x432D535345434341;
  v23 = 0xE400000000000000;
  v24 = 1380275029;
  if (v4 != 3)
  {
    v24 = 0x544143494C505041;
    v23 = 0xEB000000004E4F49;
  }

  if (v4 != 2)
  {
    v22 = v24;
    v21 = v23;
  }

  if (v4)
  {
    v20 = 0x4E454B4F54;
    v19 = 0xE500000000000000;
  }

  if (v4 <= 1u)
  {
    v25 = v20;
  }

  else
  {
    v25 = v22;
  }

  if (v4 <= 1u)
  {
    v26 = v19;
  }

  else
  {
    v26 = v21;
  }

  MEMORY[0x26D6B6C70](v25, v26);

  MEMORY[0x26D6B6C70](3038503, 0xE300000000000000);

  MEMORY[0x26D6B6C70]();

  sub_26D1B7F48();
  swift_allocError();
  *v27 = 0xD000000000000015;
  *(v27 + 8) = 0x800000026D23B050;
  *(v27 + 16) = v30;
  *(v27 + 24) = 7;
  swift_willThrow();
}

void sub_26D1DCE58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(uint64_t)@<X4>, void (*a6)(uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v60 = a6;
  v10 = v7;
  v12 = a1;
  v14 = a3(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - v16;
  v59 = v12;
  sub_26D1DFD88(v12, a2);
  if (!v7)
  {
    v20 = a7;
    v55 = v17;
    v57 = v14;
    v58 = v15;
    v21 = v60;
    if (!v18)
    {
      (*(v58 + 56))(v20, 1, 1, v57);
      return;
    }

    v22 = a4;
    v54 = v20;
    v56 = v18;
    v24 = *&v19[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v23 = *&v19[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v25 = v24 == 0x6574636172616863 && v23 == 0xEE00636974736972;
    if (v25 || (v26 = v19, v27 = sub_26D22E964(), v19 = v26, (v27 & 1) != 0))
    {
      v28 = v19;
      sub_26D1E1120();
      v29 = v22();

      v31 = a5(v29);
      v33 = v32;

      v34 = v55;
      v21(v31, v33);

      v51 = v57;
      v50 = v58;
      v52 = v54;
      (*(v58 + 32))(v54, v34, v57);
      (*(v50 + 56))(v52, 0, 1, v51);
      return;
    }

    sub_26D1B7F48();
    v10 = swift_allocError();
    *v30 = v24;
    *(v30 + 8) = v23;
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    swift_willThrow();
  }

  v67 = v10;
  v35 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (!swift_dynamicCast())
  {
    goto LABEL_27;
  }

  v37 = v63;
  v36 = v64;
  v38 = v65;
  if (v66 != 7)
  {
    sub_26D1B7E60(v63, v64, v65, v66);
LABEL_27:

    swift_willThrow();
    return;
  }

  v61 = 0xD000000000000015;
  v62 = 0x800000026D23B050;
  v39 = 0xE400000000000000;
  v40 = 1397900630;
  v41 = 0xEE004C4F52544E4FLL;
  v42 = 0x432D535345434341;
  v43 = 0xE400000000000000;
  v44 = 1380275029;
  if (v59 != 3)
  {
    v44 = 0x544143494C505041;
    v43 = 0xEB000000004E4F49;
  }

  if (v59 != 2)
  {
    v42 = v44;
    v41 = v43;
  }

  if (v59)
  {
    v40 = 0x4E454B4F54;
    v39 = 0xE500000000000000;
  }

  if (v59 <= 1u)
  {
    v45 = v40;
  }

  else
  {
    v45 = v42;
  }

  if (v59 <= 1u)
  {
    v46 = v39;
  }

  else
  {
    v46 = v41;
  }

  MEMORY[0x26D6B6C70](v45, v46);

  MEMORY[0x26D6B6C70](3038503, 0xE300000000000000);

  MEMORY[0x26D6B6C70](v37, v36);

  v47 = v61;
  v48 = v62;
  sub_26D1B7F48();
  swift_allocError();
  *v49 = v47;
  *(v49 + 8) = v48;
  *(v49 + 16) = v38;
  *(v49 + 24) = 7;
  swift_willThrow();
}

void sub_26D1DD300(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v7 = sub_26D22CCE4();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26D22D894();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D1DFFC8(v5, a2);
  v16 = v3;
  if (!v3)
  {
    if (!v14)
    {
      (*(v11 + 56))(a3, 1, 1, v10);
      return;
    }

    v50 = a3;
    v51 = v14;
    v18 = *&v15[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v17 = *&v15[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v19 = v18 == 0x6574636172616863 && v17 == 0xEE00636974736972;
    if (v19 || (v20 = v15, v21 = sub_26D22E964(), v15 = v20, (v21 & 1) != 0))
    {
      v22 = v15;
      v23 = sub_26D1E1120();
      v24 = sub_26D1E68D8(v23);

      sub_26D1E6B18(0, v24);
      v25 = sub_26D1C90BC(1, 0, v24);
      v48[1] = v26;
      v49 = v25;
      sub_26D1DB684(2, v24, v9);

      sub_26D22D884();

      v47 = v50;
      (*(v11 + 32))(v50, v13, v10);
      (*(v11 + 56))(v47, 0, 1, v10);
      return;
    }

    sub_26D1B7F48();
    v16 = swift_allocError();
    *v27 = v18;
    *(v27 + 8) = v17;
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    swift_willThrow();
  }

  v58 = v16;
  v28 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (!swift_dynamicCast())
  {
    goto LABEL_27;
  }

  v30 = v54;
  v29 = v55;
  v31 = v56;
  if (v57 != 7)
  {
    sub_26D1B7E60(v54, v55, v56, v57);
LABEL_27:

    swift_willThrow();
    return;
  }

  v52 = 0xD000000000000015;
  v53 = 0x800000026D23B050;
  if (v5 <= 3u)
  {
    v40 = 0xED000067734D656ELL;
    v41 = 0x6F6C61646E617453;
    v42 = 0x800000026D23B200;
    if (v5 == 2)
    {
      v43 = 0xD000000000000014;
    }

    else
    {
      v43 = 0xD000000000000013;
    }

    if (v5 != 2)
    {
      v42 = 0x800000026D23B1E0;
    }

    if (v5)
    {
      v41 = 1952540739;
      v40 = 0xE400000000000000;
    }

    if (v5 <= 1u)
    {
      v38 = v41;
    }

    else
    {
      v38 = v43;
    }

    if (v5 <= 1u)
    {
      v39 = v40;
    }

    else
    {
      v39 = v42;
    }
  }

  else
  {
    v32 = 0xEC00000072656673;
    v33 = 0x6E617254656C6946;
    v34 = 0xE700000000000000;
    v35 = 0x746F6274616843;
    if (v5 != 7)
    {
      v35 = 0xD00000000000001DLL;
      v34 = 0x800000026D23B180;
    }

    if (v5 != 6)
    {
      v33 = v35;
      v32 = v34;
    }

    v36 = 0x800000026D23B1C0;
    v37 = 0xD000000000000019;
    if (v5 != 4)
    {
      v37 = 0xD000000000000013;
      v36 = 0x800000026D23B1A0;
    }

    if (v5 <= 5u)
    {
      v38 = v37;
    }

    else
    {
      v38 = v33;
    }

    if (v5 <= 5u)
    {
      v39 = v36;
    }

    else
    {
      v39 = v32;
    }
  }

  MEMORY[0x26D6B6C70](v38, v39);

  MEMORY[0x26D6B6C70](3038503, 0xE300000000000000);

  MEMORY[0x26D6B6C70](v30, v29);

  v44 = v52;
  v45 = v53;
  sub_26D1B7F48();
  swift_allocError();
  *v46 = v44;
  *(v46 + 8) = v45;
  *(v46 + 16) = v31;
  *(v46 + 24) = 7;
  swift_willThrow();
}

void sub_26D1DD8EC(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  sub_26D1DFFC8(a1, a2);
  v12 = v5;
  if (!v5)
  {
    if (!v10)
    {
      v19 = a4(0);
      (*(*(v19 - 8) + 56))(a5, 1, 1, v19);
      return;
    }

    v14 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v13 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v15 = v14 == 0x6574636172616863 && v13 == 0xEE00636974736972;
    if (v15 || (v16 = v11, v17 = sub_26D22E964(), v11 = v16, (v17 & 1) != 0))
    {
      v18 = v11;
      a3();

      v20 = a4(0);
      (*(*(v20 - 8) + 56))(a5, 0, 1, v20);
      return;
    }

    sub_26D1B7F48();
    v12 = swift_allocError();
    *v21 = v14;
    *(v21 + 8) = v13;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    swift_willThrow();
  }

  v40 = v12;
  v22 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (!swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (v39 != 7)
  {
    sub_26D1B7E60(v36, v37, v38, v39);
LABEL_27:

    swift_willThrow();
    return;
  }

  if (v8 <= 3u)
  {
    v31 = 0xED000067734D656ELL;
    v32 = 0x6F6C61646E617453;
    v33 = 0x800000026D23B200;
    if (v8 == 2)
    {
      v34 = 0xD000000000000014;
    }

    else
    {
      v34 = 0xD000000000000013;
    }

    if (v8 != 2)
    {
      v33 = 0x800000026D23B1E0;
    }

    if (v8)
    {
      v32 = 1952540739;
      v31 = 0xE400000000000000;
    }

    if (v8 <= 1u)
    {
      v29 = v32;
    }

    else
    {
      v29 = v34;
    }

    if (v8 <= 1u)
    {
      v30 = v31;
    }

    else
    {
      v30 = v33;
    }
  }

  else
  {
    v23 = 0xEC00000072656673;
    v24 = 0x6E617254656C6946;
    v25 = 0xE700000000000000;
    v26 = 0x746F6274616843;
    if (v8 != 7)
    {
      v26 = 0xD00000000000001DLL;
      v25 = 0x800000026D23B180;
    }

    if (v8 != 6)
    {
      v24 = v26;
      v23 = v25;
    }

    v27 = 0x800000026D23B1C0;
    v28 = 0xD000000000000019;
    if (v8 != 4)
    {
      v28 = 0xD000000000000013;
      v27 = 0x800000026D23B1A0;
    }

    if (v8 <= 5u)
    {
      v29 = v28;
    }

    else
    {
      v29 = v24;
    }

    if (v8 <= 5u)
    {
      v30 = v27;
    }

    else
    {
      v30 = v23;
    }
  }

  MEMORY[0x26D6B6C70](v29, v30);

  MEMORY[0x26D6B6C70](3038503, 0xE300000000000000);

  MEMORY[0x26D6B6C70]();

  sub_26D1B7F48();
  swift_allocError();
  *v35 = 0xD000000000000015;
  *(v35 + 8) = 0x800000026D23B050;
  *(v35 + 16) = v38;
  *(v35 + 24) = 7;
  swift_willThrow();
}

void sub_26D1DDD4C(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  sub_26D1E01B4(a1, a3);
  v8 = v3;
  if (!v3)
  {
    if (!v6)
    {
      v15 = sub_26D22D814();
      (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
      return;
    }

    v10 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v9 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v11 = v10 == 0x6574636172616863 && v9 == 0xEE00636974736972;
    if (v11 || (v12 = v7, v13 = sub_26D22E964(), v7 = v12, (v13 & 1) != 0))
    {
      v14 = v7;
      sub_26D1EC640(v14);

      v16 = sub_26D22D814();
      (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
      return;
    }

    sub_26D1B7F48();
    v8 = swift_allocError();
    *v17 = v10;
    *(v17 + 8) = v9;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    swift_willThrow();
  }

  v35 = v8;
  v18 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (!swift_dynamicCast())
  {
    goto LABEL_25;
  }

  if (v34 != 7)
  {
    sub_26D1B7E60(v31, v32, v33, v34);
LABEL_25:

    swift_willThrow();
    return;
  }

  if (a1 <= 3u)
  {
    v19 = 0xE800000000000000;
    v27 = 0x6874754174616843;
    if (a1 != 2)
    {
      v27 = 0x61684370756F7247;
      v19 = 0xED00006874754174;
    }

    v23 = 0x800000026D23B360;
    v28 = 0xD00000000000001BLL;
    if (a1)
    {
      v23 = 0x800000026D23B340;
    }

    else
    {
      v28 = 0xD000000000000010;
    }

    v25 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v26 = v28;
    }

    else
    {
      v26 = v27;
    }
  }

  else
  {
    v19 = 0xEE00687475416873;
    v20 = 0x7550636F6C6F6567;
    v21 = 0x800000026D23B300;
    v22 = 7632965;
    if (a1 == 7)
    {
      v22 = 0xD000000000000010;
    }

    else
    {
      v21 = 0xE300000000000000;
    }

    if (a1 != 6)
    {
      v20 = v22;
      v19 = v21;
    }

    v23 = 0xE600000000000000;
    v24 = 0x687475417466;
    if (a1 != 4)
    {
      v24 = 0xD000000000000011;
      v23 = 0x800000026D23B320;
    }

    v25 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v26 = v24;
    }

    else
    {
      v26 = v20;
    }
  }

  if (v25)
  {
    v29 = v23;
  }

  else
  {
    v29 = v19;
  }

  MEMORY[0x26D6B6C70](v26, v29);

  MEMORY[0x26D6B6C70](3038503, 0xE300000000000000);

  MEMORY[0x26D6B6C70]();

  sub_26D1B7F48();
  swift_allocError();
  *v30 = 0xD000000000000015;
  *(v30 + 8) = 0x800000026D23B050;
  *(v30 + 16) = v33;
  *(v30 + 24) = 7;
  swift_willThrow();
}

void sub_26D1DE1D0(char a1@<W0>, void (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>, uint64_t a5@<X1>)
{
  sub_26D1E0524(a1, a5);
  v12 = v5;
  if (!v5)
  {
    if (!v10)
    {
      v19 = a3(0);
      (*(*(v19 - 8) + 56))(a4, 1, 1, v19);
      return;
    }

    v14 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v13 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v15 = v14 == 0x6574636172616863 && v13 == 0xEE00636974736972;
    if (v15 || (v16 = v11, v17 = sub_26D22E964(), v11 = v16, (v17 & 1) != 0))
    {
      v18 = v11;
      a2();

      v20 = a3(0);
      (*(*(v20 - 8) + 56))(a4, 0, 1, v20);
      return;
    }

    sub_26D1B7F48();
    v12 = swift_allocError();
    *v21 = v14;
    *(v21 + 8) = v13;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    swift_willThrow();
  }

  v22 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {
    if (v28 == 7)
    {

      v23 = sub_26D1D9FBC(a1);
      MEMORY[0x26D6B6C70](v23);

      MEMORY[0x26D6B6C70](3038503, 0xE300000000000000);

      MEMORY[0x26D6B6C70]();

      sub_26D1B7F48();
      swift_allocError();
      *v24 = 0xD000000000000015;
      *(v24 + 8) = 0x800000026D23B050;
      *(v24 + 16) = v27;
      *(v24 + 24) = 7;
      swift_willThrow();

      return;
    }

    sub_26D1B7E60(v25, v26, v27, v28);
  }

  swift_willThrow();
}

void *sub_26D1DE4DC(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 1635017060;
    v13 = 0xD000000000000010;
    v14 = 0x800000026D23A100;
    if (a1 != 2)
    {
      v13 = 0x7A69732D656C6966;
      v14 = 0xE900000000000065;
    }

    if (a1)
    {
      v12 = 1701869940;
    }

    if (a1 <= 1u)
    {
      v10 = v12;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = v14;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_30;
    }
  }

  else
  {
    v4 = 0xE300000000000000;
    v5 = 7107189;
    v6 = 0xE500000000000000;
    v7 = 0x6C69746E75;
    if (a1 != 7)
    {
      v7 = 0xD000000000000011;
      v6 = 0x800000026D23A140;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x6D616E2D656C6966;
    v9 = 0xE900000000000065;
    if (a1 != 4)
    {
      v8 = 0x2D746E65746E6F63;
      v9 = 0xEC00000065707974;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_30;
    }
  }

  v15 = sub_26D1BDEEC(v10, v11);
  if ((v16 & 1) == 0 || (v17 = *(*(a2 + 56) + 8 * v15), !*(v17 + 16)))
  {
LABEL_30:
    v18 = 0;
    goto LABEL_31;
  }

  v18 = *(v17 + 32);
  v19 = v18;
LABEL_31:

  return v18;
}

uint64_t sub_26D1DE66C(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xEB00000000657079;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  if (*(a2 + 16) && ((a1 & 1) == 0 ? (v4 = 0x73736572646441) : (v4 = 0x5473736572646441), (v5 = sub_26D1BDEEC(v4, v2), (v6 & 1) != 0) && (v7 = *(*(a2 + 56) + 8 * v5), v7[2])))
  {
    v8 = v7[4];
    v9 = v7[6];

    v10 = v9;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void *sub_26D1DE740(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  if (*(a2 + 16) && ((a1 & 1) == 0 ? (v4 = 1684632674) : (v4 = 0x656D69746566696CLL), (v5 = sub_26D1BDEEC(v4, v2), (v6 & 1) != 0) && (v7 = *(*(a2 + 56) + 8 * v5), *(v7 + 16))))
  {
    v8 = *(v7 + 32);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void *sub_26D1DE7E0(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xE900000000000070;
  }

  else
  {
    v2 = 0xEB00000000746E61;
  }

  if (*(a2 + 16) && ((a1 & 1) == 0 ? (v4 = 0x7069636974726170) : (v4 = 0x6D617473656D6974), (v5 = sub_26D1BDEEC(v4, v2), (v6 & 1) != 0) && (v7 = *(*(a2 + 56) + 8 * v5), *(v7 + 16))))
  {
    v8 = *(v7 + 32);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void *sub_26D1DE894(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xEA00000000006174;
  }

  else
  {
    v2 = 0xE200000000000000;
  }

  if (*(a2 + 16) && ((a1 & 1) == 0 ? (v4 = 25705) : (v4 = 0x61642D70756F7267), (v5 = sub_26D1BDEEC(v4, v2), (v6 & 1) != 0) && (v7 = *(*(a2 + 56) + 8 * v5), *(v7 + 16))))
  {
    v8 = *(v7 + 32);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_26D1DE934(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1 > 4u)
  {
    v12 = 0x800000026D23B690;
    v13 = 0xEA00000000007265;
    v14 = 0xD000000000000015;
    if (a1 == 8)
    {
      v14 = 0x6767697254736663;
    }

    else
    {
      v13 = 0x800000026D23B670;
    }

    if (a1 == 7)
    {
      v14 = 0xD000000000000013;
    }

    else
    {
      v12 = v13;
    }

    v15 = 0xE700000000000000;
    v16 = 0x657A695378614DLL;
    if (a1 != 5)
    {
      v16 = 0x6F76655274616843;
      v15 = 0xEF72656D6954656BLL;
    }

    if (a1 <= 6u)
    {
      v10 = v16;
    }

    else
    {
      v10 = v14;
    }

    if (v3 <= 6)
    {
      v11 = v15;
    }

    else
    {
      v11 = v12;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v4 = 0xED00006972752D79;
    v5 = 0x7463662D666E6F63;
    v6 = 0xE900000000000074;
    v7 = 0x7065636341747541;
    v8 = 0x800000026D23B6B0;
    v9 = 0x6C644972656D6954;
    if (a1 == 3)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v8 = 0xE900000000000065;
    }

    if (a1 != 2)
    {
      v7 = v9;
      v6 = v8;
    }

    if (!a1)
    {
      v5 = 0xD000000000000014;
      v4 = 0x800000026D23B6D0;
    }

    if (a1 <= 1u)
    {
      v10 = v5;
    }

    else
    {
      v10 = v7;
    }

    if (v3 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v6;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_35;
    }
  }

  v17 = sub_26D1BDEEC(v10, v11);
  if ((v18 & 1) == 0 || (v19 = *(*(a2 + 56) + 8 * v17), !v19[2]))
  {
LABEL_35:
    v20 = 0;
    goto LABEL_36;
  }

  v20 = v19[4];
  v21 = v19[6];

  v22 = v21;
LABEL_36:

  return v20;
}

uint64_t sub_26D1DEB3C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_26D22D244();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 1)
    {
      v11 = 0x69616E626D756874;
    }

    else
    {
      v11 = 0x656C69662D736C6DLL;
    }

    if (a1 == 1)
    {
      v12 = 0xE90000000000006CLL;
    }

    else
    {
      v12 = 0xE800000000000000;
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    v11 = 1701603686;
  }

  result = sub_26D1E0F48(v11, v12, v10);
  if (!v3)
  {
    if (*(a2 + 16) && (v14 = sub_26D1E304C(v10), (v15 & 1) != 0) && (v16 = *(*(a2 + 56) + 8 * v14), *(v16 + 16)))
    {
      v17 = sub_26D22D264();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a3, v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v17);
      (*(v8 + 8))(v10, v7);
      return (*(v18 + 56))(a3, 0, 1, v17);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      v19 = sub_26D22D264();
      return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
    }
  }

  return result;
}

void *sub_26D1DED94(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x69616E626D756874;
    }

    else
    {
      v4 = 0x656C69662D736C6DLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE90000000000006CLL;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701603686;
    if (!*(a2 + 16))
    {
LABEL_14:
      v9 = 0;
      goto LABEL_15;
    }
  }

  v6 = sub_26D1BDEEC(v4, v5);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(*(a2 + 56) + 8 * v6);
  if (!*(v8 + 16))
  {
    goto LABEL_14;
  }

  v9 = *(v8 + 32);
  v10 = v9;
LABEL_15:

  return v9;
}

uint64_t sub_26D1DEE5C(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x64692D707061;
    }

    else
    {
      v4 = 0x69766F72702D6469;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEB00000000726564;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1852076390;
    if (!*(a2 + 16))
    {
LABEL_14:
      v9 = 0;
      goto LABEL_15;
    }
  }

  v6 = sub_26D1BDEEC(v4, v5);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(*(a2 + 56) + 8 * v6);
  if (!v8[2])
  {
    goto LABEL_14;
  }

  v9 = v8[4];
  v10 = v8[6];

  v11 = v10;
LABEL_15:

  return v9;
}

uint64_t sub_26D1DEF48(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xEF746F6F524E4451;
  v4 = 0x466F666E69746F42;
  v5 = 0x800000026D23B220;
  v6 = 0xD000000000000018;
  v7 = 0xEE00656C62617369;
  v8 = 0x4479636176697250;
  if (a1 != 4)
  {
    v8 = 0x4D746F6274616843;
    v7 = 0xEE00686365546773;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (a1 != 1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x800000026D23B240;
  }

  if (!a1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000026D23B260;
  }

  if (a1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*(a2 + 16) && (v12 = sub_26D1BDEEC(v9, v10), (v13 & 1) != 0) && (v14 = *(*(a2 + 56) + 8 * v12), v14[2]))
  {
    v15 = v14[4];
    v16 = v14[6];

    v17 = v16;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_26D1DF0C4(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  if (*(a2 + 16) && ((a1 & 1) == 0 ? (v4 = 0x6E6F6973726576) : (v4 = 0x79746964696C6176), (v5 = sub_26D1BDEEC(v4, v2), (v6 & 1) != 0) && (v7 = *(*(a2 + 56) + 8 * v5), v7[2])))
  {
    v8 = v7[4];
    v9 = v7[6];

    v10 = v9;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void *sub_26D1DF190(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x6574617473;
  v5 = 0xEB00000000657079;
  v6 = 0x74746E65746E6F63;
  if (a1 != 2)
  {
    v6 = 0x68736572666572;
    v5 = 0xE700000000000000;
  }

  if (a1)
  {
    v4 = 0x697463617473616CLL;
    v3 = 0xEA00000000006576;
  }

  if (a1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*(a2 + 16) && (v10 = sub_26D1BDEEC(v7, v8), (v11 & 1) != 0) && (v12 = *(*(a2 + 56) + 8 * v10), *(v12 + 16)))
  {
    v13 = *(v12 + 32);
    v14 = v13;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_26D1DF280(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xED00007972697078;
  v4 = 0x456F666E49706163;
  v5 = 0xD00000000000001DLL;
  v6 = 0x800000026D23B120;
  v7 = 0x800000026D23B100;
  v8 = 0xD000000000000013;
  if (a1 != 4)
  {
    v8 = 0x44746C7561666564;
    v7 = 0xEB00000000637369;
  }

  if (a1 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  if (a1 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000026D23B140;
  }

  if (!a1)
  {
    v4 = 0xD00000000000001DLL;
    v3 = 0x800000026D23B160;
  }

  if (a1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v6;
  }

  if (*(a2 + 16) && (v12 = sub_26D1BDEEC(v9, v10), (v13 & 1) != 0) && (v14 = *(*(a2 + 56) + 8 * v12), v14[2]))
  {
    v15 = v14[4];
    v16 = v14[6];

    v17 = v16;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_26D1DF3E8(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xEA0000000000657ALL;
    v13 = 0x69536E7261577466;
    v14 = 0xEB00000000747065;
    v15 = 0x6363417475417466;
    if (a1 != 2)
    {
      v15 = 0x5343505454487466;
      v14 = 0xEB00000000495255;
    }

    if (a1)
    {
      v13 = 0x46657A695378614DLL;
      v12 = 0xED00007254656C69;
    }

    if (a1 <= 1u)
    {
      v10 = v13;
    }

    else
    {
      v10 = v15;
    }

    if (v3 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v14;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_30;
    }
  }

  else
  {
    v4 = 0xEB00000000647750;
    v5 = 0x5343505454487466;
    v6 = 0xEE006B6361626C6CLL;
    v7 = 0x6146505454487466;
    if (a1 != 7)
    {
      v7 = 0xD000000000000016;
      v6 = 0x800000026D23B280;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x4C44505454487466;
    v9 = 0xEB00000000495255;
    if (a1 != 4)
    {
      v8 = 0x5343505454487466;
      v9 = 0xEC00000072657355;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_30;
    }
  }

  v16 = sub_26D1BDEEC(v10, v11);
  if ((v17 & 1) == 0 || (v18 = *(*(a2 + 56) + 8 * v16), !v18[2]))
  {
LABEL_30:
    v19 = 0;
    goto LABEL_31;
  }

  v19 = v18[4];
  v20 = v18[6];

  v21 = v20;
LABEL_31:

  return v19;
}

uint64_t sub_26D1DF5E4(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x766F686374697753;
    }

    else
    {
      v4 = 0x7265646F6C707865;
    }

    if (v3 == 1)
    {
      v5 = 0xEE00657A69537265;
    }

    else
    {
      v5 = 0xEC0000006972752DLL;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x657A695378614DLL;
    if (!*(a2 + 16))
    {
LABEL_14:
      v9 = 0;
      goto LABEL_15;
    }
  }

  v6 = sub_26D1BDEEC(v4, v5);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(*(a2 + 56) + 8 * v6);
  if (!v8[2])
  {
    goto LABEL_14;
  }

  v9 = v8[4];
  v10 = v8[6];

  v11 = v10;
LABEL_15:

  return v9;
}

void *sub_26D1DF6E8(char a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x65636E6F6ELL;
    }

    else
    {
      v3 = 0x6469706176;
    }

    v4 = 0xE500000000000000;
    if (!*(a2 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0xE600000000000000;
    v3 = 0x646F6874656DLL;
    if (!*(a2 + 16))
    {
LABEL_11:
      v8 = 0;
      goto LABEL_12;
    }
  }

  v5 = sub_26D1BDEEC(v3, v4);
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = *(*(a2 + 56) + 8 * v5);
  if (!*(v7 + 16))
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 32);
  v9 = v8;
LABEL_12:

  return v8;
}

uint64_t sub_26D1DF7A8(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xEA00000000006666;
  v4 = 0x4F61746144736D6DLL;
  if (a1 != 2)
  {
    v4 = 0x61746144636E7973;
    v3 = 0xEB0000000066664FLL;
  }

  v5 = 0x800000026D23B2E0;
  if (a1)
  {
    v5 = 0x800000026D23B2C0;
  }

  if (a1 <= 1u)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = v4;
  }

  if (v2 <= 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (*(a2 + 16) && (v9 = sub_26D1BDEEC(v6, v7), (v10 & 1) != 0) && (v11 = *(*(a2 + 56) + 8 * v9), v11[2]))
  {
    v12 = v11[4];
    v13 = v11[6];

    v14 = v13;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_26D1DF8C8(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xEC000000676E696CLL;
    v13 = 0x6C616E6769537370;
    v14 = 0x6964654D54527370;
    v15 = 0xE900000000000061;
    if (a1 != 2)
    {
      v14 = 0xD000000000000013;
      v15 = 0x800000026D23B0E0;
    }

    if (a1)
    {
      v13 = 0x616964654D7370;
      v12 = 0xE700000000000000;
    }

    if (a1 <= 1u)
    {
      v10 = v13;
    }

    else
    {
      v10 = v14;
    }

    if (v3 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v15;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_30;
    }
  }

  else
  {
    v4 = 0xEE00676E696C6C61;
    v5 = 0x6E67695369666977;
    v6 = 0x6964654D69666977;
    v7 = 0xE900000000000061;
    if (a1 != 7)
    {
      v6 = 0x654D545269666977;
      v7 = 0xEB00000000616964;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0xEE00676E696D616FLL;
    v9 = 0x52616964654D7370;
    if (a1 != 4)
    {
      v9 = 0xD000000000000010;
      v8 = 0x800000026D23B0C0;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_30;
    }
  }

  v16 = sub_26D1BDEEC(v10, v11);
  if ((v17 & 1) == 0 || (v18 = *(*(a2 + 56) + 8 * v16), !v18[2]))
  {
LABEL_30:
    v19 = 0;
    goto LABEL_31;
  }

  v19 = v18[4];
  v20 = v18[6];

  v21 = v20;
LABEL_31:

  return v19;
}

void *sub_26D1DFAB8(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xEA00000000004449;
  v4 = 0x2D6567617373654DLL;
  v5 = 0xE400000000000000;
  v6 = 1836020294;
  if (a1 != 2)
  {
    v6 = 28500;
    v5 = 0xE200000000000000;
  }

  if (a1)
  {
    v4 = 0x746C75736572;
    v3 = 0xE600000000000000;
  }

  if (a1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*(a2 + 16) && (v10 = sub_26D1BDEEC(v7, v8), (v11 & 1) != 0) && (v12 = *(*(a2 + 56) + 8 * v10), *(v12 + 16)))
  {
    v13 = *(v12 + 32);
    v14 = v13;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_26D1DFB8C(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x4449707041;
  v5 = 0xE800000000000000;
  v6 = 0x5345434956524553;
  v7 = 0x4E4947415353454DLL;
  v8 = 0xEC00000059524556;
  if (a1 == 3)
  {
    v8 = 0xE900000000000047;
  }

  else
  {
    v7 = 0x4F43534944504143;
  }

  if (a1 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (a1)
  {
    v4 = 0x65527070412D6F54;
    v3 = 0xE900000000000066;
  }

  if (a1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 1)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*(a2 + 16) && (v12 = sub_26D1BDEEC(v9, v10), (v13 & 1) != 0) && (v14 = *(*(a2 + 56) + 8 * v12), v14[2]))
  {
    v15 = v14[4];
    v16 = v14[6];

    v17 = v16;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_26D1DFCC0(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  if (*(a2 + 16) && ((a1 & 1) == 0 ? (v4 = 0x544C5541464544) : (v4 = 0x524556524553), (v5 = sub_26D1BDEEC(v4, v2), (v6 & 1) != 0) && (v7 = *(*(a2 + 56) + 8 * v5), v7[2])))
  {
    v8 = v7[4];
    v9 = v7[6];

    v10 = v9;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_26D1DFD88(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 1397900630;
  v5 = 0xEE004C4F52544E4FLL;
  v6 = 0x432D535345434341;
  v7 = 0xE400000000000000;
  v8 = 1380275029;
  if (a1 != 3)
  {
    v8 = 0x544143494C505041;
    v7 = 0xEB000000004E4F49;
  }

  if (a1 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (a1)
  {
    v4 = 0x4E454B4F54;
    v3 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 1)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*(a2 + 16) && (v12 = sub_26D1BDEEC(v9, v10), (v13 & 1) != 0) && (v14 = *(*(a2 + 56) + 8 * v12), v14[2]))
  {
    v15 = v14[4];
    v16 = v14[6];

    v17 = v16;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void *sub_26D1DFEB4(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xEA00000000006469;
  v4 = 0x2D6567617373656DLL;
  v5 = 0xED00006972752D74;
  v6 = 0x6E65697069636572;
  if (a1 != 2)
  {
    v6 = 0xD000000000000016;
    v5 = 0x800000026D23A5F0;
  }

  if (a1)
  {
    v4 = 0x656D697465746164;
    v3 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*(a2 + 16) && (v10 = sub_26D1BDEEC(v7, v8), (v11 & 1) != 0) && (v12 = *(*(a2 + 56) + 8 * v10), *(v12 + 16)))
  {
    v13 = *(v12 + 32);
    v14 = v13;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_26D1DFFC8(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xED000067734D656ELL;
    v13 = 0x6F6C61646E617453;
    v14 = 0x800000026D23B200;
    if (a1 == 2)
    {
      v15 = 0xD000000000000014;
    }

    else
    {
      v15 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v14 = 0x800000026D23B1E0;
    }

    if (a1)
    {
      v13 = 1952540739;
      v12 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v10 = v13;
    }

    else
    {
      v10 = v15;
    }

    if (v3 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v14;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_33;
    }
  }

  else
  {
    v4 = 0xEC00000072656673;
    v5 = 0x6E617254656C6946;
    v6 = 0xE700000000000000;
    v7 = 0x746F6274616843;
    if (a1 != 7)
    {
      v7 = 0xD00000000000001DLL;
      v6 = 0x800000026D23B180;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x800000026D23B1C0;
    v9 = 0xD000000000000019;
    if (a1 != 4)
    {
      v9 = 0xD000000000000013;
      v8 = 0x800000026D23B1A0;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_33;
    }
  }

  v16 = sub_26D1BDEEC(v10, v11);
  if ((v17 & 1) == 0 || (v18 = *(*(a2 + 56) + 8 * v16), !v18[2]))
  {
LABEL_33:
    v19 = 0;
    goto LABEL_34;
  }

  v19 = v18[4];
  v20 = v18[6];

  v21 = v20;
LABEL_34:

  return v19;
}

uint64_t sub_26D1E01B4(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xE800000000000000;
    v13 = 0x6874754174616843;
    if (a1 != 2)
    {
      v13 = 0x61684370756F7247;
      v12 = 0xED00006874754174;
    }

    v14 = 0xD000000000000010;
    v15 = 0x800000026D23B360;
    if (a1)
    {
      v14 = 0xD00000000000001BLL;
      v15 = 0x800000026D23B340;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = v15;
    }

    else
    {
      v11 = v12;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v4 = 0xEE00687475416873;
    v5 = 0x7550636F6C6F6567;
    v6 = 0x800000026D23B300;
    v7 = 7632965;
    if (a1 == 7)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xE300000000000000;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xE600000000000000;
    v9 = 0xD000000000000011;
    if (a1 == 4)
    {
      v9 = 0x687475417466;
    }

    else
    {
      v8 = 0x800000026D23B320;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_32;
    }
  }

  v16 = sub_26D1BDEEC(v10, v11);
  if ((v17 & 1) == 0 || (v18 = *(*(a2 + 56) + 8 * v16), !v18[2]))
  {
LABEL_32:
    v19 = 0;
    goto LABEL_33;
  }

  v19 = v18[4];
  v20 = v18[6];

  v21 = v20;
LABEL_33:

  return v19;
}

uint64_t sub_26D1E0398(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x666552707041;
  v5 = 0xEE006F746F725074;
  v6 = 0x726F70736E617274;
  if (a1 != 5)
  {
    v6 = 0x6C61565F64697575;
    v5 = 0xEA00000000006575;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656D614E72657355;
  if (a1 != 3)
  {
    v8 = 0x64775072657355;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6570795468747541;
  if (a1 != 1)
  {
    v10 = 0x6D6C616552;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (*(a2 + 16) && (v14 = sub_26D1BDEEC(v11, v12), (v15 & 1) != 0) && (v16 = *(*(a2 + 56) + 8 * v14), v16[2]))
  {
    v17 = v16[4];
    v18 = v16[6];

    v19 = v18;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t sub_26D1E0524(char a1, uint64_t a2)
{
  v3 = sub_26D1D9FBC(a1);
  if (*(a2 + 16) && (v5 = sub_26D1BDEEC(v3, v4), (v6 & 1) != 0) && (v7 = *(*(a2 + 56) + 8 * v5), v7[2]))
  {
    v8 = v7[4];
    v9 = v7[6];

    v10 = v9;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void *sub_26D1E05C0(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x797469746E65;
  v5 = 0xE600000000000000;
  v6 = 0x737574617473;
  v7 = 0x800000026D23A210;
  v8 = 0xD000000000000014;
  if (a1 != 3)
  {
    v8 = 0x6574617473;
    v7 = 0xE500000000000000;
  }

  if (a1 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (a1)
  {
    v4 = 0x6465727265666572;
    v3 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 1)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*(a2 + 16) && (v12 = sub_26D1BDEEC(v9, v10), (v13 & 1) != 0) && (v14 = *(*(a2 + 56) + 8 * v12), *(v14 + 16)))
  {
    v15 = *(v14 + 32);
    v16 = v15;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void *sub_26D1E06C0(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xEB00000000747865;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  if (*(a2 + 16) && ((a1 & 1) == 0 ? (v4 = 0x7463656A627573) : (v4 = 0x2D7463656A627573), (v5 = sub_26D1BDEEC(v4, v2), (v6 & 1) != 0) && (v7 = *(*(a2 + 56) + 8 * v5), *(v7 + 16))))
  {
    v8 = *(v7 + 32);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void *sub_26D1E0770(char a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x7372657375;
    }

    else
    {
      v3 = 0x6574617473;
    }

    v4 = 0xE500000000000000;
    if (!*(a2 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0x800000026D23A190;
    v3 = 0xD000000000000016;
    if (!*(a2 + 16))
    {
LABEL_11:
      v8 = 0;
      goto LABEL_12;
    }
  }

  v5 = sub_26D1BDEEC(v3, v4);
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = *(*(a2 + 56) + 8 * v5);
  if (!*(v7 + 16))
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 32);
  v9 = v8;
LABEL_12:

  return v8;
}

void *sub_26D1E0838(unsigned __int8 a1, uint64_t a2)
{
  v5 = sub_26D22D6F4();
  v6 = *(v5 - 8);
  v36 = v5;
  v37 = v6;
  MEMORY[0x28223BE20](v5);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0xE400000000000000;
  v9 = 1397900630;
  v10 = 0xEE004C4F52544E4FLL;
  v11 = 0x432D535345434341;
  v12 = 0xE400000000000000;
  v13 = 1380275029;
  if (a1 != 3)
  {
    v13 = 0x544143494C505041;
    v12 = 0xEB000000004E4F49;
  }

  if (a1 != 2)
  {
    v11 = v13;
    v10 = v12;
  }

  if (a1)
  {
    v9 = 0x4E454B4F54;
    v8 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    v14 = v9;
  }

  else
  {
    v14 = v11;
  }

  if (a1 <= 1u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v10;
  }

  if (!*(a2 + 16) || (v16 = sub_26D1BDEEC(v14, v15), (v17 & 1) == 0))
  {

    return 0;
  }

  v18 = *(*(a2 + 56) + 8 * v16);

  v19 = *(v18 + 16);
  if (!v19)
  {

    return MEMORY[0x277D84F90];
  }

  v39 = MEMORY[0x277D84F90];
  result = sub_26D1E4948(0, v19, 0);
  v21 = 0;
  v22 = v39;
  v35 = v37 + 32;
  v23 = (v18 + 48);
  while (v21 < *(v18 + 16))
  {
    v24 = v18;
    v25 = *v23;
    v26 = (*v23 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name);
    v27 = *v26 == 0x6574636172616863 && v26[1] == 0xEE00636974736972;
    if (!v27 && (sub_26D22E964() & 1) == 0)
    {
      v31 = v25;

      v33 = *v26;
      v32 = v26[1];
      sub_26D1B7F48();
      swift_allocError();
      *v34 = v33;
      *(v34 + 8) = v32;
      *(v34 + 16) = 0;
      *(v34 + 24) = 0;
      swift_willThrow();

      goto LABEL_33;
    }

    v28 = v25;

    sub_26D1C09D0(v28, v38);
    if (v2)
    {

LABEL_33:

      return v22;
    }

    v39 = v22;
    v30 = *(v22 + 16);
    v29 = *(v22 + 24);
    v18 = v24;
    if (v30 >= v29 >> 1)
    {
      sub_26D1E4948((v29 > 1), v30 + 1, 1);
      v22 = v39;
    }

    ++v21;
    *(v22 + 16) = v30 + 1;
    result = (*(v37 + 32))(v22 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v30, v38, v36);
    v23 += 3;
    if (v19 == v21)
    {

      return v22;
    }
  }

  __break(1u);
  return result;
}

void sub_26D1E0BF8(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_26D22D294();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_26D22D2B4();
  v27 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = *&a1[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
  v12 = *(v11 + 16);
  v13 = a1;
  if (!v12)
  {
    goto LABEL_11;
  }

  v14 = sub_26D1BDEEC(1701869940, 0xE400000000000000);
  if ((v15 & 1) == 0)
  {

LABEL_11:
    sub_26D1B7F48();
    swift_allocError();
    *v23 = xmmword_26D22F4F0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 2;
LABEL_12:
    swift_willThrow();
    goto LABEL_15;
  }

  v26 = a2;
  v16 = (*(v11 + 56) + 16 * v14);
  v17 = *v16;
  v18 = v16[1];

  v19 = v17 == 1162104654 && v18 == 0xE400000000000000;
  if (!v19 && (sub_26D22E964() & 1) == 0)
  {
    sub_26D1B7F48();
    swift_allocError();
    *v24 = v17;
    *(v24 + 8) = v18;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    goto LABEL_12;
  }

  v13 = v13;
  v20 = v28;
  v21 = sub_26D1E1120();
  if (!v20)
  {
    v22 = sub_26D1E68D8(v21);

    sub_26D1E6128(0, v22);
    sub_26D1DB2D4(1, 1, v22);

    sub_26D22D2A4();

    v25 = *(v27 + 32);
    v25(v10, v8, v5);
    v25(v26, v10, v5);
    return;
  }

LABEL_15:
}

uint64_t sub_26D1E0F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0508, &qword_26D230DE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  v9 = sub_26D22D244();
  v13[0] = a1;
  v13[1] = a2;
  sub_26D1E74AC(&qword_2804E0510, MEMORY[0x277CF1F78], MEMORY[0x277CF1F90]);
  swift_bridgeObjectRetain_n();
  sub_26D22E554();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26D1B950C(v8, &qword_2804E0508, &qword_26D230DE0);
    sub_26D1B7F48();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = 0;
    *(v11 + 24) = 3;
    swift_willThrow();
  }

  else
  {
    swift_bridgeObjectRelease_n();
    return (*(v10 + 32))(a3, v8, v9);
  }
}

char *sub_26D1E1120()
{
  v1 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v37 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26D22E814())
  {

    v4 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D6B6F50](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *&v6[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 1836212592 && *&v6[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xE400000000000000;
      if (v9 || (sub_26D22E964() & 1) != 0)
      {
        sub_26D22E7B4();
        sub_26D22E7E4();
        sub_26D22E7F4();
        sub_26D22E7C4();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v10 = v37;
        v4 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_20:

  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    v2 = sub_26D22E814();
    if (v2)
    {
      goto LABEL_23;
    }

LABEL_51:

    return MEMORY[0x277D84F90];
  }

  v2 = *(v10 + 16);
  if (!v2)
  {
    goto LABEL_51;
  }

LABEL_23:
  v37 = v4;
  result = sub_26D1E469C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = v4;
    v35 = v10;
    v36 = v10 & 0xC000000000000001;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_47;
      }

      if (v36)
      {
        v15 = MEMORY[0x26D6B6F50](v12, v10);
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_48;
        }

        v15 = *(v10 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = &v15[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v18 = *&v15[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 1836212592 && *&v15[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xE400000000000000;
      if (!v18 && (sub_26D22E964() & 1) == 0)
      {
        break;
      }

      v19 = *&v16[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
      v20 = *(v19 + 16);
      v21 = v16;
      if (!v20)
      {
        goto LABEL_42;
      }

      v22 = sub_26D1BDEEC(1701667182, 0xE400000000000000);
      if ((v23 & 1) == 0)
      {

LABEL_42:

        sub_26D1B7F48();
        swift_allocError();
        *v31 = xmmword_26D22F780;
        *(v31 + 16) = 0;
        *(v31 + 24) = 2;
        swift_willThrow();

LABEL_44:
        return v13;
      }

      v24 = (*(v19 + 56) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];

      v37 = v13;
      v28 = *(v13 + 16);
      v27 = *(v13 + 24);
      v29 = v13;
      if (v28 >= v27 >> 1)
      {
        sub_26D1E469C((v27 > 1), v28 + 1, 1);
        v29 = v13;
      }

      *(v29 + 16) = v28 + 1;
      v30 = (v29 + 24 * v28);
      v30[4] = v25;
      v30[5] = v26;
      v30[6] = v21;
      ++v12;
      v10 = v35;
      v13 = v29;
      if (v14 == v2)
      {

        return v13;
      }
    }

    v32 = *v17;
    v33 = *(v17 + 1);
    sub_26D1B7F48();
    swift_allocError();
    *v34 = v32;
    *(v34 + 8) = v33;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    swift_willThrow();

    goto LABEL_44;
  }

  __break(1u);
  return result;
}

void *sub_26D1E1540()
{
  v2 = v1;
  v3 = sub_26D22D264();
  v32 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v34 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26D22E814())
  {
    v31 = v3;

    v8 = MEMORY[0x277D84F90];
    if (i)
    {
      v30 = v2;
      v9 = 0;
      v2 = v6 & 0xC000000000000001;
      while (1)
      {
        if (v2)
        {
          v10 = MEMORY[0x26D6B6F50](v9, v6);
        }

        else
        {
          if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v10 = *(v6 + 8 * v9 + 32);
        }

        v3 = v10;
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v12 = *&v10[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 0x666E692D656C6966 && *&v10[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xE90000000000006FLL;
        if (v12 || (sub_26D22E964() & 1) != 0)
        {
          sub_26D22E7B4();
          sub_26D22E7E4();
          sub_26D22E7F4();
          sub_26D22E7C4();
        }

        else
        {
        }

        ++v9;
        if (v11 == i)
        {
          v13 = v34;
          v2 = v30;
          v8 = MEMORY[0x277D84F90];
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_20:

    if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
    {
      v6 = *(v13 + 16);
      v14 = v31;
      if (!v6)
      {
        break;
      }

      goto LABEL_23;
    }

    v6 = sub_26D22E814();
    v14 = v31;
    if (!v6)
    {
      break;
    }

LABEL_23:
    v34 = v8;
    result = sub_26D1E47A0(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = 0;
    v17 = v34;
    v30 = v32 + 32;
    v31 = v13 & 0xC000000000000001;
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v31)
      {
        v19 = MEMORY[0x26D6B6F50](v16, v13);
      }

      else
      {
        if (v16 >= *(v13 + 16))
        {
          goto LABEL_45;
        }

        v19 = *(v13 + 8 * v16 + 32);
      }

      v20 = v19;
      v21 = &v19[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v22 = *&v19[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 0x666E692D656C6966 && *&v19[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xE90000000000006FLL;
      if (!v22 && (sub_26D22E964() & 1) == 0)
      {

        v27 = *v21;
        v26 = *(v21 + 1);
        sub_26D1B7F48();
        swift_allocError();
        *v28 = v27;
        *(v28 + 8) = v26;
        *(v28 + 16) = 0;
        *(v28 + 24) = 0;
        swift_willThrow();

        return v17;
      }

      v23 = v20;
      sub_26D1B85F0(v23, v33);
      if (v2)
      {

        return v17;
      }

      v34 = v17;
      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      v3 = (v25 + 1);
      if (v25 >= v24 >> 1)
      {
        sub_26D1E47A0((v24 > 1), v25 + 1, 1);
        v17 = v34;
      }

      *(v17 + 16) = v3;
      (*(v32 + 32))(v17 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v25, v33, v14);
      ++v16;
      if (v18 == v6)
      {

        return v17;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_26D1E19A4()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B60, &qword_26D230D40);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v30 - v5;
  v6 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v33 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26D22E814())
  {
    v31 = v4;

    v9 = MEMORY[0x277D84F90];
    if (i)
    {
      v30 = v2;
      v10 = 0;
      v2 = v7 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x26D6B6F50](v10, v7);
        }

        else
        {
          if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v11 = *(v7 + 8 * v10 + 32);
        }

        v4 = v11;
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v13 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 0x6574636172616863 && *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xEE00636974736972;
        if (v13 || (sub_26D22E964() & 1) != 0)
        {
          sub_26D22E7B4();
          sub_26D22E7E4();
          sub_26D22E7F4();
          sub_26D22E7C4();
        }

        else
        {
        }

        ++v10;
        if (v12 == i)
        {
          v14 = v33;
          v2 = v30;
          v9 = MEMORY[0x277D84F90];
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_20:

    if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
    {
      v7 = *(v14 + 16);
      v15 = v31;
      if (!v7)
      {
        break;
      }

      goto LABEL_23;
    }

    v7 = sub_26D22E814();
    v15 = v31;
    if (!v7)
    {
      break;
    }

LABEL_23:
    v33 = v9;
    result = sub_26D1E486C(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v17 = 0;
    v18 = v33;
    v31 = v14 & 0xC000000000000001;
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v31)
      {
        v20 = MEMORY[0x26D6B6F50](v17, v14);
      }

      else
      {
        if (v17 >= *(v14 + 16))
        {
          goto LABEL_45;
        }

        v20 = *(v14 + 8 * v17 + 32);
      }

      v21 = v20;
      v22 = &v20[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v23 = *&v20[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 0x6574636172616863 && *&v20[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xEE00636974736972;
      if (!v23 && (sub_26D22E964() & 1) == 0)
      {

        v28 = *v22;
        v27 = *(v22 + 1);
        sub_26D1B7F48();
        swift_allocError();
        *v29 = v28;
        *(v29 + 8) = v27;
        *(v29 + 16) = 0;
        *(v29 + 24) = 0;
        swift_willThrow();

        return v18;
      }

      v24 = v21;
      sub_26D1E0BF8(v24, v32);
      if (v2)
      {

        return v18;
      }

      v33 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      v4 = (v26 + 1);
      if (v26 >= v25 >> 1)
      {
        sub_26D1E486C((v25 > 1), v26 + 1, 1);
        v18 = v33;
      }

      *(v18 + 16) = v4;
      sub_26D1E743C(v32, v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v26);
      ++v17;
      if (v19 == v7)
      {

        return v18;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_26D1E1E00()
{
  v1 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v79 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_77;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26D22E814())
  {

    v4 = MEMORY[0x277D84F90];
    if (i)
    {
      v5 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x26D6B6F50](v5, v2);
        }

        else
        {
          if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_74;
          }

          v6 = *&v2[8 * v5 + 32];
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_73;
        }

        v9 = *&v6[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 0x6574636172616863 && *&v6[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xEE00636974736972;
        if (v9 || (sub_26D22E964() & 1) != 0)
        {
          sub_26D22E7B4();
          sub_26D22E7E4();
          sub_26D22E7F4();
          sub_26D22E7C4();
        }

        else
        {
        }

        ++v5;
        if (v8 == i)
        {
          v10 = v79;
          v4 = MEMORY[0x277D84F90];
          goto LABEL_20;
        }
      }
    }

    v10 = MEMORY[0x277D84F90];
LABEL_20:

    v2 = v10;
    if ((v10 & 0x8000000000000000) == 0 && (v10 & 0x4000000000000000) == 0)
    {
      v11 = *(v10 + 16);
      if (!v11)
      {
        break;
      }

      goto LABEL_23;
    }

    v11 = sub_26D22E814();
    if (!v11)
    {
      break;
    }

LABEL_23:
    v79 = v4;
    sub_26D1E48AC(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
LABEL_82:
      result = sub_26D22E984();
      __break(1u);
      return result;
    }

    v12 = 0;
    v13 = v4;
    v70 = v10 & 0xC000000000000001;
    v67 = v10 + 32;
    v68 = v11;
    v69 = v10;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_75;
      }

      v73 = v13;
      if (v70)
      {
        v15 = MEMORY[0x26D6B6F50]();
      }

      else
      {
        if (v12 >= *(v2 + 2))
        {
          goto LABEL_76;
        }

        v15 = *(v67 + 8 * v12);
      }

      v13 = v15;
      v16 = (v15 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name);
      v17 = *(v15 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name) == 0x6574636172616863 && *(v15 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8) == 0xEE00636974736972;
      if (!v17 && (sub_26D22E964() & 1) == 0)
      {

        v63 = *v16;
        v62 = v16[1];
        sub_26D1B7F48();
        swift_allocError();
        *v64 = v63;
        *(v64 + 8) = v62;
        *(v64 + 16) = 0;
        *(v64 + 24) = 0;
        swift_willThrow();

        goto LABEL_68;
      }

      v72 = v14;
      v18 = *(v13 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
      v19 = v18[2];
      v20 = v13;
      if (!v19)
      {
        goto LABEL_64;
      }

      v13 = v18;
      v21 = sub_26D1BDEEC(1701869940, 0xE400000000000000);
      if ((v22 & 1) == 0)
      {

LABEL_64:

        sub_26D1B7F48();
        swift_allocError();
        *v61 = xmmword_26D22F4F0;
        *(v61 + 16) = 0;
        *(v61 + 24) = 2;
LABEL_65:
        swift_willThrow();

        return v13;
      }

      v23 = (v18[7] + 16 * v21);
      v24 = *v23;
      v13 = v23[1];

      v25 = v24 == 1162104654 && v13 == 0xE400000000000000;
      if (!v25 && (sub_26D22E964() & 1) == 0)
      {

        sub_26D1B7F48();
        swift_allocError();
        *v65 = v24;
        *(v65 + 8) = v13;
        *(v65 + 16) = 0;
        *(v65 + 24) = 0;
        goto LABEL_65;
      }

      v13 = v20;
      v26 = sub_26D1E1120();
      if (v74)
      {

LABEL_68:
        return v13;
      }

      v27 = v26;
      v71 = v13;

      v28 = MEMORY[0x277D84F98];
      v77 = *(v27 + 2);
      v78 = MEMORY[0x277D84F98];
      if (v77)
      {
        break;
      }

LABEL_59:

      v55 = sub_26D1E5F70(v28);
      v57 = v56;

      v13 = v73;
      v79 = v73;
      v59 = v73[2];
      v58 = v73[3];
      if (v59 >= v58 >> 1)
      {
        sub_26D1E48AC((v58 > 1), v59 + 1, 1);
        v13 = v73;
      }

      v13[2] = v59 + 1;
      v60 = &v13[2 * v59];
      v60[4] = v55;
      v60[5] = v57;
      v12 = v72;
      v2 = v69;
      if (v72 == v68)
      {

        return v13;
      }
    }

    v29 = 0;
    v2 = v27 + 48;
    v76 = v27;
    while (v29 < *(v27 + 2))
    {
      v32 = *(v2 - 2);
      v31 = *(v2 - 1);
      v33 = *v2;
      swift_bridgeObjectRetain_n();
      v34 = v33;
      v36 = sub_26D1BDEEC(v32, v31);
      v37 = v28[2];
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_71;
      }

      v40 = v35;
      if (v28[3] < v39)
      {
        sub_26D1E37E0(v39, 1, &qword_2804E0B20, &qword_26D230D08);
        v28 = v78;
        v41 = sub_26D1BDEEC(v32, v31);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_82;
        }

        v36 = v41;
      }

      if (v40)
      {

        v43 = v28[7];
        v44 = *(v43 + 8 * v36);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v43 + 8 * v36) = v44;
        v75 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = sub_26D22B9C4(0, *(v44 + 2) + 1, 1, v44);
          *(v43 + 8 * v36) = v44;
        }

        v47 = *(v44 + 2);
        v46 = *(v44 + 3);
        v48 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          v49 = sub_26D22B9C4((v46 > 1), v47 + 1, 1, v44);
          v48 = v47 + 1;
          v44 = v49;
          *(v75 + 8 * v36) = v49;
        }

        v27 = v76;
        *(v44 + 2) = v48;
        v30 = &v44[24 * v47];
        *(v30 + 4) = v32;
        *(v30 + 5) = v31;
        *(v30 + 6) = v34;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07F0, &qword_26D230D00);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_26D22F360;
        *(v50 + 32) = v32;
        *(v50 + 40) = v31;
        *(v50 + 48) = v34;
        v28[(v36 >> 6) + 8] |= 1 << v36;
        v51 = (v28[6] + 16 * v36);
        *v51 = v32;
        v51[1] = v31;
        *(v28[7] + 8 * v36) = v50;
        v52 = v28[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_72;
        }

        v28[2] = v54;
        v27 = v76;
      }

      ++v29;
      v2 += 24;
      if (v77 == v29)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_26D1E25A8()
{
  v1 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v36 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26D22E814())
  {

    v4 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D6B6F50](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *&v6[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 0x6574636172616863 && *&v6[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xEE00636974736972;
      if (v9 || (sub_26D22E964() & 1) != 0)
      {
        sub_26D22E7B4();
        sub_26D22E7E4();
        sub_26D22E7F4();
        sub_26D22E7C4();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v10 = v36;
        v4 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_20:

  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    v2 = sub_26D22E814();
    if (v2)
    {
      goto LABEL_23;
    }

LABEL_51:

    return MEMORY[0x277D84F90];
  }

  v2 = *(v10 + 16);
  if (!v2)
  {
    goto LABEL_51;
  }

LABEL_23:
  v36 = v4;
  result = sub_26D1E48CC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = v4;
    v34 = v10;
    v35 = v10 & 0xC000000000000001;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_47;
      }

      if (v35)
      {
        v15 = MEMORY[0x26D6B6F50](v12, v10);
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_48;
        }

        v15 = *(v10 + 8 * v12 + 32);
      }

      v16 = &v15[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v17 = *&v15[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 0x6574636172616863 && *&v15[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xEE00636974736972;
      if (!v17 && (sub_26D22E964() & 1) == 0)
      {
        break;
      }

      v18 = *&v15[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
      v19 = *(v18 + 16);
      v20 = v15;
      if (!v19)
      {
        goto LABEL_42;
      }

      v21 = sub_26D1BDEEC(1701869940, 0xE400000000000000);
      if ((v22 & 1) == 0)
      {

LABEL_42:

        sub_26D1B7F48();
        swift_allocError();
        *v30 = xmmword_26D22F4F0;
        *(v30 + 16) = 0;
        *(v30 + 24) = 2;
        swift_willThrow();

LABEL_44:
        return v13;
      }

      v23 = (*(v18 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];

      v36 = v13;
      v27 = *(v13 + 16);
      v26 = *(v13 + 24);
      v28 = v13;
      if (v27 >= v26 >> 1)
      {
        sub_26D1E48CC((v26 > 1), v27 + 1, 1);
        v28 = v13;
      }

      *(v28 + 16) = v27 + 1;
      v29 = (v28 + 24 * v27);
      v29[4] = v24;
      v29[5] = v25;
      v29[6] = v20;
      ++v12;
      v10 = v34;
      v13 = v28;
      if (v14 == v2)
      {

        return v13;
      }
    }

    v32 = *v16;
    v31 = *(v16 + 1);
    sub_26D1B7F48();
    swift_allocError();
    *v33 = v32;
    *(v33 + 8) = v31;
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    swift_willThrow();

    goto LABEL_44;
  }

  __break(1u);
  return result;
}

void sub_26D1E2A18(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0AF8, &qword_26D230CD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B00, &qword_26D230CD8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B08, &qword_26D230CE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B10, &qword_26D230CE8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - v13;
  v15 = sub_26D22D6F4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v22 = a1;
  v23 = v57;
  v24 = sub_26D1E25A8();
  if (v23)
  {

    return;
  }

  v57 = v19;
  v51 = v15;
  v52 = v22;
  v47 = v11;
  v48 = v8;
  v45 = v14;
  v46 = v5;
  v25 = sub_26D1E5550(v24);

  v26 = sub_26D1E0838(4u, v25);
  v44 = v25;
  v27 = v52;
  if (!v26)
  {
    goto LABEL_18;
  }

  v43 = 0;
  v56 = v26[2];
  if (!v56)
  {
LABEL_17:

    v23 = v43;
LABEL_18:
    v39 = v44;
    sub_26D1DC66C(0, v44, v45);
    v40 = v46;
    v41 = v48;
    if (v23)
    {
    }

    else
    {
      sub_26D1DCE58(1, v39, MEMORY[0x277CF23E8], sub_26D1E75E8, sub_26D1E7028, MEMORY[0x277CF23E0], v47);
      sub_26D1DCAD8(2, v39, v41);
      sub_26D1DCE58(3, v39, MEMORY[0x277CF23A0], sub_26D1E75E8, sub_26D1E7280, MEMORY[0x277CF2398], v40);

      sub_26D22D7E4();
    }

    return;
  }

  v28 = 0;
  v53 = (v16 + 32);
  v54 = v16 + 16;
  v49 = (v16 + 8);
  v29 = MEMORY[0x277D84F90];
  v30 = v51;
  v55 = v26;
  while (v28 < v26[2])
  {
    v31 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v32 = *(v16 + 72);
    (*(v16 + 16))(v21, v26 + v31 + v32 * v28, v30);
    if (sub_26D22D6E4())
    {
      (*v49)(v21, v30);
    }

    else
    {
      v33 = *v53;
      (*v53)(v57, v21, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26D1E4948(0, *(v29 + 16) + 1, 1);
        v29 = v58;
      }

      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      v37 = v29;
      if (v36 >= v35 >> 1)
      {
        sub_26D1E4948((v35 > 1), v36 + 1, 1);
        v37 = v58;
      }

      *(v37 + 16) = v36 + 1;
      v38 = v37 + v31 + v36 * v32;
      v30 = v51;
      v33(v38, v57, v51);
      v27 = v52;
      v29 = v37;
    }

    ++v28;
    v26 = v55;
    if (v56 == v28)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

unint64_t sub_26D1E304C(uint64_t a1)
{
  sub_26D22D244();
  sub_26D1E74AC(&qword_2804E0798, MEMORY[0x277CF1F78], MEMORY[0x277CF1F80]);
  v2 = sub_26D22E374();

  return sub_26D1E4390(a1, v2);
}

unint64_t sub_26D1E30E4(char a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  v2 = sub_26D22EA04();

  return sub_26D1E4550(a1 & 1, v2);
}

uint64_t sub_26D1E329C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26D22D244();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0C10, &qword_26D230DE8);
  v39 = v4;
  result = sub_26D22E834();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
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
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_26D1E74AC(&qword_2804E0798, MEMORY[0x277CF1F78], MEMORY[0x277CF1F80]);
      result = sub_26D22E374();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
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
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
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

uint64_t sub_26D1E37E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_26D22E834();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_26D22E9E4();
      sub_26D22E454();
      result = sub_26D22EA04();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_26D1E3A80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A08, &qword_26D230E30);
  v32 = v4;
  result = sub_26D22E834();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v33 = *v22;
      if ((v32 & 1) == 0)
      {
      }

      sub_26D22E9E4();
      sub_26D22E454();

      result = sub_26D22EA04();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v33;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26D1E3D6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_26D22D1D4();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0C50, &qword_26D230E38);
  v42 = v4;
  result = sub_26D22E834();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_26D22E9E4();
      sub_26D22E454();
      result = sub_26D22EA04();
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
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
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

uint64_t sub_26D1E40EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0BC0, &qword_26D230D98);
  v35 = v4;
  result = sub_26D22E834();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_26D22E9E4();
      sub_26D22E454();
      result = sub_26D22EA04();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_26D1E4390(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_26D22D244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_26D1E74AC(&qword_2804E0C08, MEMORY[0x277CF1F78], MEMORY[0x277CF1F88]);
      v15 = sub_26D22E3A4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_26D1E4550(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0xD000000000000019;
    }

    else
    {
      v6 = 0x2D746E65746E6F43;
    }

    if (a1)
    {
      v7 = 0x800000026D23A0B0;
    }

    else
    {
      v7 = 0xEC00000065707954;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000019 : 0x2D746E65746E6F43;
      v9 = *(*(v2 + 48) + v4) ? 0x800000026D23A0B0 : 0xEC00000065707954;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_26D22E964();

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

char *sub_26D1E469C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D1E4DDC(a1, a2, a3, *v3, &qword_2804E07F0, &qword_26D230D00, &type metadata for ProvisioningCharacteristicParameter);
  *v3 = result;
  return result;
}

void *sub_26D1E46D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D1E4EFC(a1, a2, a3, *v3, &qword_2804E0CC8, &qword_26D230EB0, MEMORY[0x277CF21B0]);
  *v3 = result;
  return result;
}

void *sub_26D1E4718(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D1E4EFC(a1, a2, a3, *v3, &qword_2804E0CA0, &qword_26D230E88, MEMORY[0x277CF2240]);
  *v3 = result;
  return result;
}

void *sub_26D1E475C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D1E4EFC(a1, a2, a3, *v3, &qword_2804E0C90, &qword_26D230E78, MEMORY[0x277CF2290]);
  *v3 = result;
  return result;
}

void *sub_26D1E47A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D1E4EFC(a1, a2, a3, *v3, &qword_2804E07B0, qword_26D22FF80, MEMORY[0x277CF1F98]);
  *v3 = result;
  return result;
}

void *sub_26D1E47E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D1E4EFC(a1, a2, a3, *v3, &qword_2804E0B28, &unk_26D230D10, MEMORY[0x277CF2358]);
  *v3 = result;
  return result;
}

void *sub_26D1E4828(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D1E4EFC(a1, a2, a3, *v3, &qword_2804E0B58, &qword_26D230D38, MEMORY[0x277CF2138]);
  *v3 = result;
  return result;
}

void *sub_26D1E486C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D1E49AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D1E488C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D1E4B9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26D1E48AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D1E4CA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D1E48CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D1E4DDC(a1, a2, a3, *v3, &qword_2804E07D0, &qword_26D230D80, &type metadata for ProvisioningCharacteristic);
  *v3 = result;
  return result;
}

void *sub_26D1E4904(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D1E4EFC(a1, a2, a3, *v3, &qword_2804E0B30, &qword_26D230D20, MEMORY[0x277CF2428]);
  *v3 = result;
  return result;
}

void *sub_26D1E4948(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D1E4EFC(a1, a2, a3, *v3, &qword_2804E0B18, &unk_26D230CF0, MEMORY[0x277CF2638]);
  *v3 = result;
  return result;
}

char *sub_26D1E498C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D1E50D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26D1E49AC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B80, &unk_26D230D50);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B60, &qword_26D230D40) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B60, &qword_26D230D40) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26D1E4B9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B88, &unk_26D239C20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_26D1E4CA8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B90, &qword_26D230D60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B98, &qword_26D230D68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D1E4DDC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_26D1E4EFC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

char *sub_26D1E50D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0C48, &qword_26D230E28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26D1E52EC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_26D1BDEEC(0xD000000000000010, 0x800000026D23ABA0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 56) + 8 * v2);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = *(v4 + 32);
  v6 = v5;
  return v5;
}

void *sub_26D1E53C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_26D1BDEEC(a2, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a1 + 56) + 8 * v4);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = *(v6 + 32);
  v8 = v7;
  return v7;
}

unint64_t sub_26D1E5430(char a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 1701667182;
    }

    else
    {
      v2 = 0x6D61726170;
    }

    if (a1 == 1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0xE200000000000000;
    v2 = 25705;
  }

  v4 = *(a2 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (*(v4 + 16))
  {

    v5 = sub_26D1BDEEC(v2, v3);
    if (v6)
    {
      v7 = (*(v4 + 56) + 16 * v5);
      v8 = *v7;
      v9 = v7[1];

      return sub_26D1BA284(v8, v9);
    }
  }

  sub_26D1B7F48();
  swift_allocError();
  *v11 = v2;
  *(v11 + 8) = v3;
  *(v11 + 16) = 0;
  *(v11 + 24) = 2;
  return swift_willThrow();
}

void *sub_26D1E5550(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v6 = *(i - 2);
    v5 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();
    v8 = v7;
    v10 = sub_26D1BDEEC(v6, v5);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_26D1E37E0(v13, 1, &qword_2804E0B38, &qword_26D230D28);
      v1 = v31;
      v15 = sub_26D1BDEEC(v6, v5);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {

      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      v30 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_26D22BA58(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = sub_26D22BA58((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v30 + 8 * v10) = v23;
      }

      *(v18 + 2) = v22;
      v4 = &v18[24 * v21];
      *(v4 + 4) = v6;
      *(v4 + 5) = v5;
      *(v4 + 6) = v8;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07D0, &qword_26D230D80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_26D22F360;
      *(v24 + 32) = v6;
      *(v24 + 40) = v5;
      *(v24 + 48) = v8;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = (v1[6] + 16 * v10);
      *v25 = v6;
      v25[1] = v5;
      *(v1[7] + 8 * v10) = v24;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

uint64_t sub_26D1E57BC(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0x65756C6176;
  }

  else
  {
    v2 = 1701667182;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v4 = *(a2 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v4 + 16))
  {
    goto LABEL_11;
  }

  v5 = sub_26D1BDEEC(v2, v3);
  if ((v6 & 1) == 0)
  {

LABEL_11:
    sub_26D1B7F48();
    swift_allocError();
    *v11 = v2;
    *(v11 + 8) = v3;
    *(v11 + 16) = 0;
    *(v11 + 24) = 2;
    v10 = swift_willThrow();
    return v10 & 1;
  }

  v7 = (*(v4 + 56) + 16 * v5);
  v8 = *v7;
  v9 = v7[1];

  v10 = sub_26D1BA5CC(v8, v9);
  return v10 & 1;
}

uint64_t sub_26D1E58CC(char a1, uint64_t a2)
{
  sub_26D1E0524(a1, a2);
  v6 = v2;
  if (!v2)
  {
    if (v4)
    {
      v10 = v5;
      LOBYTE(v6) = sub_26D1E57BC(1, v10);

      return v6 & 1;
    }

    v11 = sub_26D1D9FBC(a1);
    v13 = v12;
    sub_26D1B7F48();
    v6 = swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v13;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    swift_willThrow();
  }

  v7 = sub_26D1D9FBC(a1);
  MEMORY[0x26D6B6C70](v7);

  MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
  sub_26D1B7F48();
  swift_allocError();
  *v8 = 0x6D616E5B6D726170;
  *(v8 + 8) = 0xEB00000000273D65;
  *(v8 + 16) = v6;
  *(v8 + 24) = 7;
  swift_willThrow();
  return v6 & 1;
}

unint64_t sub_26D1E5A44(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0x65756C6176;
  }

  else
  {
    v2 = 1701667182;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v4 = *(a2 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (*(v4 + 16))
  {

    v5 = sub_26D1BDEEC(v2, v3);
    if (v6)
    {
      v7 = (*(v4 + 56) + 16 * v5);
      v8 = *v7;
      v9 = v7[1];

      return sub_26D1BA284(v8, v9);
    }
  }

  sub_26D1B7F48();
  swift_allocError();
  *v11 = v2;
  *(v11 + 8) = v3;
  *(v11 + 16) = 0;
  *(v11 + 24) = 2;
  return swift_willThrow();
}

unint64_t sub_26D1E5B50(char a1, uint64_t a2)
{
  sub_26D1E0524(a1, a2);
  v6 = v2;
  if (!v2)
  {
    if (v4)
    {
      v10 = v5;
      v6 = sub_26D1E5A44(1, v10);

      return v6;
    }

    v11 = sub_26D1D9FBC(a1);
    v13 = v12;
    sub_26D1B7F48();
    v6 = swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v13;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    swift_willThrow();
  }

  v7 = sub_26D1D9FBC(a1);
  MEMORY[0x26D6B6C70](v7);

  MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
  sub_26D1B7F48();
  swift_allocError();
  *v8 = 0x6D616E5B6D726170;
  *(v8 + 8) = 0xEB00000000273D65;
  *(v8 + 16) = v6;
  *(v8 + 24) = 7;
  swift_willThrow();
  return v6;
}

uint64_t sub_26D1E5CC8(char a1, uint64_t a2)
{
  sub_26D1E0524(a1, a2);
  if (v2)
  {
    v6 = v2;
LABEL_10:
    v18 = sub_26D1D9FBC(a1);
    MEMORY[0x26D6B6C70](v18);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v12 = 0x6D616E5B6D726170;
    sub_26D1B7F48();
    swift_allocError();
    *v19 = 0x6D616E5B6D726170;
    *(v19 + 8) = 0xEB00000000273D65;
    *(v19 + 16) = v6;
    *(v19 + 24) = 7;
    swift_willThrow();
    return v12;
  }

  if (!v4)
  {
    v13 = sub_26D1D9FBC(a1);
    v15 = v14;
    sub_26D1B7F48();
    v6 = swift_allocError();
    *v16 = v13;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    *(v16 + 24) = 1;
    swift_willThrow();
    goto LABEL_10;
  }

  v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
  v8 = *(v7 + 16);
  v9 = v5;
  if (!v8)
  {
LABEL_9:
    sub_26D1B7F48();
    v6 = swift_allocError();
    *v17 = xmmword_26D230470;
    *(v17 + 16) = 0;
    *(v17 + 24) = 2;
    swift_willThrow();

    goto LABEL_10;
  }

  v10 = sub_26D1BDEEC(0x65756C6176, 0xE500000000000000);
  if ((v11 & 1) == 0)
  {

    goto LABEL_9;
  }

  v12 = *(*(v7 + 56) + 16 * v10);

  return v12;
}

uint64_t sub_26D1E5EC4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_26D1BDEEC(0xD000000000000014, 0x800000026D23B030);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 56) + 8 * v2);
  if (!v4[2])
  {
    return 0;
  }

  v5 = v4[4];
  v6 = v4[6];

  v7 = v6;
  return v5;
}

unint64_t sub_26D1E5F70(uint64_t a1)
{
  v2 = 0xD000000000000014;
  sub_26D1E5EC4(a1);
  v5 = v1;
  if (v1)
  {
    goto LABEL_9;
  }

  if (!v3)
  {
    sub_26D1B7F48();
    v5 = swift_allocError();
    *v11 = 0xD000000000000014;
    *(v11 + 8) = 0x800000026D23B030;
    *(v11 + 16) = 0;
    *(v11 + 24) = 1;
    swift_willThrow();
LABEL_9:
    sub_26D1B7F48();
    swift_allocError();
    *v13 = 0xD000000000000021;
    *(v13 + 8) = 0x800000026D23B640;
    *(v13 + 16) = v5;
    *(v13 + 24) = 7;
    swift_willThrow();
    return v2;
  }

  v6 = *&v4[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
  v7 = *(v6 + 16);
  v8 = v4;
  if (!v7)
  {
LABEL_8:
    sub_26D1B7F48();
    v5 = swift_allocError();
    *v12 = xmmword_26D230470;
    *(v12 + 16) = 0;
    *(v12 + 24) = 2;
    swift_willThrow();

    goto LABEL_9;
  }

  v9 = sub_26D1BDEEC(0x65756C6176, 0xE500000000000000);
  if ((v10 & 1) == 0)
  {

    goto LABEL_8;
  }

  v2 = *(*(v6 + 56) + 16 * v9);

  return v2;
}

uint64_t sub_26D1E6128(char a1, uint64_t a2)
{
  sub_26D1DE66C(a1 & 1, a2);
  if (v2)
  {
    v6 = v2;
  }

  else if (v4)
  {
    v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
    v8 = *(v7 + 16);
    v9 = v5;
    if (v8)
    {

      v10 = sub_26D1BDEEC(0x65756C6176, 0xE500000000000000);
      if (v11)
      {
        v12 = *(*(v7 + 56) + 16 * v10);

        return v12;
      }
    }

    sub_26D1B7F48();
    v6 = swift_allocError();
    *v16 = xmmword_26D230470;
    *(v16 + 16) = 0;
    *(v16 + 24) = 2;
    swift_willThrow();
  }

  else
  {
    if (a1)
    {
      v13 = 0x5473736572646441;
    }

    else
    {
      v13 = 0x73736572646441;
    }

    if (a1)
    {
      v14 = 0xEB00000000657079;
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    sub_26D1B7F48();
    v6 = swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    swift_willThrow();
  }

  if (a1)
  {
    v17 = 0x5473736572646441;
  }

  else
  {
    v17 = 0x73736572646441;
  }

  if (a1)
  {
    v18 = 0xEB00000000657079;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  MEMORY[0x26D6B6C70](v17, v18);

  MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
  v12 = 0x6D616E5B6D726170;
  sub_26D1B7F48();
  swift_allocError();
  *v19 = 0x6D616E5B6D726170;
  *(v19 + 8) = 0xEB00000000273D65;
  *(v19 + 16) = v6;
  *(v19 + 24) = 7;
  swift_willThrow();
  return v12;
}

uint64_t sub_26D1E6390(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_26D1D7E44(a1, a2);
  v5 = v2;
  if (!v2)
  {
    v6 = *&v4[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
    v7 = *(v6 + 16);
    v8 = v4;
    if (v7)
    {

      v9 = sub_26D1BDEEC(0x65756C6176, 0xE500000000000000);
      if (v10)
      {
        v11 = *(*(v6 + 56) + 16 * v9);

        return v11;
      }
    }

    sub_26D1B7F48();
    v5 = swift_allocError();
    *v12 = xmmword_26D230470;
    *(v12 + 16) = 0;
    *(v12 + 24) = 2;
    swift_willThrow();
  }

  v13 = 0xE600000000000000;
  v14 = 0x666552707041;
  v15 = 0xEE006F746F725074;
  v16 = 0x726F70736E617274;
  if (v3 != 5)
  {
    v16 = 0x6C61565F64697575;
    v15 = 0xEA00000000006575;
  }

  v17 = 0xE800000000000000;
  v18 = 0x656D614E72657355;
  if (v3 != 3)
  {
    v18 = 0x64775072657355;
    v17 = 0xE700000000000000;
  }

  if (v3 <= 4u)
  {
    v16 = v18;
    v15 = v17;
  }

  v19 = 0xE800000000000000;
  v20 = 0x6570795468747541;
  if (v3 != 1)
  {
    v20 = 0x6D6C616552;
    v19 = 0xE500000000000000;
  }

  if (v3)
  {
    v14 = v20;
    v13 = v19;
  }

  if (v3 <= 2u)
  {
    v21 = v14;
  }

  else
  {
    v21 = v16;
  }

  if (v3 <= 2u)
  {
    v22 = v13;
  }

  else
  {
    v22 = v15;
  }

  MEMORY[0x26D6B6C70](v21, v22);

  MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
  v11 = 0x6D616E5B6D726170;
  sub_26D1B7F48();
  swift_allocError();
  *v23 = 0x6D616E5B6D726170;
  *(v23 + 8) = 0xEB00000000273D65;
  *(v23 + 16) = v5;
  *(v23 + 24) = 7;
  swift_willThrow();
  return v11;
}

uint64_t sub_26D1E6610(signed __int8 a1, uint64_t a2)
{
  sub_26D1DFB8C(a1, a2);
  v6 = v2;
  if (!v2)
  {
    if (v4)
    {
      v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
      v8 = *(v7 + 16);
      v9 = v5;
      if (v8)
      {

        v10 = sub_26D1BDEEC(0x65756C6176, 0xE500000000000000);
        if (v11)
        {
          v12 = *(*(v7 + 56) + 16 * v10);

          return v12;
        }
      }

      sub_26D1B7F48();
      v6 = swift_allocError();
      *v16 = xmmword_26D230470;
      *(v16 + 16) = 0;
      *(v16 + 24) = 2;
      swift_willThrow();
    }

    else
    {
      v13 = *&aAppid[8 * a1];
      v14 = *&aToAppreservice[8 * a1 + 32];
      sub_26D1B7F48();
      v6 = swift_allocError();
      *v15 = v13;
      *(v15 + 8) = v14;
      *(v15 + 16) = 0;
      *(v15 + 24) = 1;
      swift_willThrow();
    }
  }

  v17 = 0xE500000000000000;
  v18 = 0x4449707041;
  v19 = 0xE800000000000000;
  v20 = 0x5345434956524553;
  v21 = 0x4E4947415353454DLL;
  v22 = 0xEC00000059524556;
  if (a1 == 3)
  {
    v22 = 0xE900000000000047;
  }

  else
  {
    v21 = 0x4F43534944504143;
  }

  if (a1 != 2)
  {
    v20 = v21;
    v19 = v22;
  }

  if (a1)
  {
    v18 = 0x65527070412D6F54;
    v17 = 0xE900000000000066;
  }

  if (a1 <= 1u)
  {
    v23 = v18;
  }

  else
  {
    v23 = v20;
  }

  if (a1 <= 1u)
  {
    v24 = v17;
  }

  else
  {
    v24 = v19;
  }

  MEMORY[0x26D6B6C70](v23, v24);

  MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
  v12 = 0x6D616E5B6D726170;
  sub_26D1B7F48();
  swift_allocError();
  *v25 = 0x6D616E5B6D726170;
  *(v25 + 8) = 0xEB00000000273D65;
  *(v25 + 16) = v6;
  *(v25 + 24) = 7;
  swift_willThrow();
  return v12;
}

void *sub_26D1E68D8(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v6 = *(i - 2);
    v5 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();
    v8 = v7;
    v10 = sub_26D1BDEEC(v6, v5);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_26D1E37E0(v13, 1, &qword_2804E0B20, &qword_26D230D08);
      v1 = v31;
      v15 = sub_26D1BDEEC(v6, v5);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {

      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      v30 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_26D22B9C4(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = sub_26D22B9C4((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v30 + 8 * v10) = v23;
      }

      *(v18 + 2) = v22;
      v4 = &v18[24 * v21];
      *(v4 + 4) = v6;
      *(v4 + 5) = v5;
      *(v4 + 6) = v8;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07F0, &qword_26D230D00);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_26D22F360;
      *(v24 + 32) = v6;
      *(v24 + 40) = v5;
      *(v24 + 48) = v8;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = (v1[6] + 16 * v10);
      *v25 = v6;
      v25[1] = v5;
      *(v1[7] + 8 * v10) = v24;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

unint64_t sub_26D1E6B18(unsigned __int8 a1, uint64_t a2)
{
  sub_26D1DF5E4(a1, a2);
  v6 = v2;
  if (!v2)
  {
    if (v4)
    {
      v9 = v5;
      v6 = sub_26D1E5A44(1, v9);

      return v6;
    }

    v12 = *&aMaxsize[8 * a1];
    v13 = *&aSwitchovexplod[8 * a1 + 16];
    sub_26D1B7F48();
    v6 = swift_allocError();
    *v14 = v12;
    *(v14 + 8) = v13;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    swift_willThrow();
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0x766F686374697753;
    }

    else
    {
      v7 = 0x7265646F6C707865;
    }

    if (a1 == 1)
    {
      v8 = 0xEE00657A69537265;
    }

    else
    {
      v8 = 0xEC0000006972752DLL;
    }
  }

  else
  {
    v8 = 0xE700000000000000;
    v7 = 0x657A695378614DLL;
  }

  MEMORY[0x26D6B6C70](v7, v8);

  MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
  sub_26D1B7F48();
  swift_allocError();
  *v10 = 0x6D616E5B6D726170;
  *(v10 + 8) = 0xEB00000000273D65;
  *(v10 + 16) = v6;
  *(v10 + 24) = 7;
  swift_willThrow();
  return v6;
}

unint64_t sub_26D1E6CFC(unsigned __int8 a1, uint64_t a2)
{
  sub_26D1DE934(a1, a2);
  v6 = v2;
  if (!v2)
  {
    if (v4)
    {
      v10 = v5;
      v6 = sub_26D1E5A44(1, v10);

      return v6;
    }

    v11 = sub_26D1D9E4C(a1);
    v13 = v12;
    sub_26D1B7F48();
    v6 = swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v13;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    swift_willThrow();
  }

  v7 = sub_26D1D9E4C(a1);
  MEMORY[0x26D6B6C70](v7);

  MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
  sub_26D1B7F48();
  swift_allocError();
  *v8 = 0x6D616E5B6D726170;
  *(v8 + 8) = 0xEB00000000273D65;
  *(v8 + 16) = v6;
  *(v8 + 24) = 7;
  swift_willThrow();
  return v6;
}

unint64_t sub_26D1E6E74(char a1, uint64_t a2)
{
  sub_26D1DF0C4(a1 & 1, a2);
  v6 = v2;
  if (!v2)
  {
    if (v4)
    {
      v11 = v5;
      v6 = sub_26D1E5A44(1, v11);

      return v6;
    }

    if (a1)
    {
      v12 = 0x79746964696C6176;
    }

    else
    {
      v12 = 0x6E6F6973726576;
    }

    if (a1)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    sub_26D1B7F48();
    v6 = swift_allocError();
    *v14 = v12;
    *(v14 + 8) = v13;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    swift_willThrow();
  }

  if (a1)
  {
    v7 = 0x79746964696C6176;
  }

  else
  {
    v7 = 0x6E6F6973726576;
  }

  if (a1)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  MEMORY[0x26D6B6C70](v7, v8);

  MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
  sub_26D1B7F48();
  swift_allocError();
  *v9 = 0x6D616E5B6D726170;
  *(v9 + 8) = 0xEB00000000273D65;
  *(v9 + 16) = v6;
  *(v9 + 24) = 7;
  swift_willThrow();
  return v6;
}

uint64_t sub_26D1E7028(uint64_t a1)
{
  sub_26D1E71E4(a1, 0x6E656B6F74, 0xE500000000000000);
  v5 = v1;
  if (v1)
  {
    goto LABEL_9;
  }

  if (!v3)
  {
    sub_26D1B7F48();
    v5 = swift_allocError();
    *v10 = xmmword_26D230CA0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    swift_willThrow();
LABEL_9:
    sub_26D1B7F48();
    swift_allocError();
    *v12 = 0xD000000000000012;
    *(v12 + 8) = 0x800000026D23B620;
    *(v12 + 16) = v5;
    *(v12 + 24) = 7;
    swift_willThrow();
    return v2;
  }

  v6 = *&v4[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
  v2 = *(v6 + 16);
  v7 = v4;
  if (!v2)
  {
LABEL_8:
    sub_26D1B7F48();
    v5 = swift_allocError();
    *v11 = xmmword_26D230470;
    *(v11 + 16) = 0;
    *(v11 + 24) = 2;
    swift_willThrow();

    goto LABEL_9;
  }

  v8 = sub_26D1BDEEC(0x65756C6176, 0xE500000000000000);
  if ((v9 & 1) == 0)
  {

    goto LABEL_8;
  }

  v2 = *(*(v6 + 56) + 16 * v8);

  return v2;
}

uint64_t sub_26D1E71E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_26D1BDEEC(a2, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a1 + 56) + 8 * v4);
  if (!v6[2])
  {
    return 0;
  }

  v7 = v6[4];
  v8 = v6[6];

  v9 = v8;
  return v7;
}

uint64_t sub_26D1E7280(uint64_t a1)
{
  sub_26D1E71E4(a1, 0x6E647369736DLL, 0xE600000000000000);
  v5 = v1;
  if (v1)
  {
    goto LABEL_9;
  }

  if (!v3)
  {
    sub_26D1B7F48();
    v5 = swift_allocError();
    *v10 = xmmword_26D230CB0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    swift_willThrow();
LABEL_9:
    sub_26D1B7F48();
    swift_allocError();
    *v12 = 0xD000000000000013;
    *(v12 + 8) = 0x800000026D23B600;
    *(v12 + 16) = v5;
    *(v12 + 24) = 7;
    swift_willThrow();
    return v2;
  }

  v6 = *&v4[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
  v2 = *(v6 + 16);
  v7 = v4;
  if (!v2)
  {
LABEL_8:
    sub_26D1B7F48();
    v5 = swift_allocError();
    *v11 = xmmword_26D230470;
    *(v11 + 16) = 0;
    *(v11 + 24) = 2;
    swift_willThrow();

    goto LABEL_9;
  }

  v8 = sub_26D1BDEEC(0x65756C6176, 0xE500000000000000);
  if ((v9 & 1) == 0)
  {

    goto LABEL_8;
  }

  v2 = *(*(v6 + 56) + 16 * v8);

  return v2;
}

uint64_t sub_26D1E743C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B60, &qword_26D230D40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D1E74AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26D1E7514(uint64_t a1, unsigned int a2)
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

uint64_t sub_26D1E755C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26D1E7650()
{
  result = qword_2804E0CD8;
  if (!qword_2804E0CD8)
  {
    sub_26D22D3A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0CD8);
  }

  return result;
}

uint64_t sub_26D1E76D0()
{
  v0 = sub_26D22CF14();
  __swift_allocate_value_buffer(v0, qword_2804E0CE0);
  __swift_project_value_buffer(v0, qword_2804E0CE0);
  return sub_26D22CF04();
}

void sub_26D1E774C(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for XMLTreeParser.ElementBuilder()) init];
  [a1 setDelegate_];
  if ([a1 parse])
  {
    v3 = *&v2[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser14ElementBuilder_rootElement];
    if (v3)
    {
      v3;

      return;
    }

    sub_26D1B7F48();
    swift_allocError();
    *(v7 + 16) = 0;
    *v7 = 1;
    goto LABEL_15;
  }

  v4 = *&v2[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser14ElementBuilder_errorContext];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 16);
LABEL_9:
    v10 = v5;
    v11 = v5;
    if (qword_2804E0470 != -1)
    {
      swift_once();
    }

    v12 = sub_26D22CF14();
    __swift_project_value_buffer(v12, qword_2804E0CE0);
    v13 = v6;
    v14 = sub_26D22CEF4();
    v15 = sub_26D22E5F4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v6;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_26D1AF000, v14, v15, "XML Parser encountered error: %@", v16, 0xCu);
      sub_26D1B1FF8(v17);
      MEMORY[0x26D6B7800](v17, -1, -1);
      MEMORY[0x26D6B7800](v16, -1, -1);
    }

    sub_26D1B7F48();
    swift_allocError();
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *v20 = v6;
    *(v20 + 24) = 6;
    swift_willThrow();

    goto LABEL_16;
  }

  v8 = [a1 parserError];
  if (v8)
  {
    v6 = v8;
    v9 = v8;
    v5 = 0;
    goto LABEL_9;
  }

  sub_26D1B7F48();
  swift_allocError();
  *(v7 + 16) = 0;
  *v7 = 0;
LABEL_15:
  *(v7 + 8) = 0;
  *(v7 + 24) = 8;
  swift_willThrow();
LABEL_16:
}

uint64_t sub_26D1E79FC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26D1E7B4C()
{
  v1 = *(v0 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name);

  return v1;
}

id sub_26D1E7C34(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26D1E7D54(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t, uint64_t, uint64_t))
{
  v13 = sub_26D22E3C4();
  v15 = v14;
  if (a5)
  {
    sub_26D22E3C4();
  }

  if (a6)
  {
    sub_26D22E3C4();
  }

  v16 = sub_26D22E364();
  v17 = a3;
  v18 = a1;
  a8(v17, v13, v15, v16);
}

void sub_26D1E7FBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser14ElementBuilder_rootElement;
  if (*(v4 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser14ElementBuilder_rootElement))
  {
    __break(1u);
  }

  else
  {
    v9 = *(v4 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser14ElementBuilder_errorContext);
    v10 = type metadata accessor for XMLTreeParser.Element();
    v11 = objc_allocWithZone(v10);
    swift_unknownObjectWeakInit();
    *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes] = MEMORY[0x277D84F98];
    *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children] = MEMORY[0x277D84F90];
    v12 = &v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
    *v12 = 0;
    *(v12 + 1) = 0;
    v13 = &v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    *v13 = a2;
    *(v13 + 1) = a3;
    *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_errorContext] = v9;
    swift_unknownObjectWeakAssign();
    v17.receiver = v11;
    v17.super_class = v10;

    v14 = objc_msgSendSuper2(&v17, sel_init);
    *&v14[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes] = a4;

    [a1 setDelegate_];
    v15 = *(v4 + v5);
    *(v4 + v5) = v14;
  }
}

void sub_26D1E811C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_errorContext);
  v9 = type metadata accessor for XMLTreeParser.Element();
  v10 = objc_allocWithZone(v9);
  swift_unknownObjectWeakInit();
  *&v10[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes] = MEMORY[0x277D84F98];
  *&v10[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children] = MEMORY[0x277D84F90];
  v11 = &v10[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v10[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
  *v12 = a2;
  *(v12 + 1) = a3;
  *&v10[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_errorContext] = v8;
  swift_unknownObjectWeakAssign();
  v17.receiver = v10;
  v17.super_class = v9;

  v13 = objc_msgSendSuper2(&v17, sel_init);
  *&v13[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes] = a4;

  [a1 setDelegate_];
  v14 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v15 = v13;
  MEMORY[0x26D6B6D60]();
  if (*((*(v4 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_26D22E5A4();
  }

  sub_26D22E5B4();
  swift_endAccess();
}

uint64_t sub_26D1E82DC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text);
  swift_beginAccess();
  if (v5[1])
  {
    v6 = sub_26D1E7B88(v9);
    if (*(v7 + 8))
    {
      MEMORY[0x26D6B6C70](a1, a2);
    }

    return (v6)(v9, 0);
  }

  else
  {
    *v5 = a1;
    v5[1] = a2;
  }
}

void sub_26D1E838C(void *a1)
{
  v2 = v1;
  if (qword_2804E0470 != -1)
  {
    swift_once();
  }

  v4 = sub_26D22CF14();
  __swift_project_value_buffer(v4, qword_2804E0CE0);
  v5 = a1;
  v6 = sub_26D22CEF4();
  v7 = sub_26D22E5F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_26D1AF000, v6, v7, "[ELEMENT] XML Parser encountered error: %@", v8, 0xCu);
    sub_26D1B1FF8(v9);
    MEMORY[0x26D6B7800](v9, -1, -1);
    MEMORY[0x26D6B7800](v8, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_errorContext);
  v13 = *(v12 + 16);
  *(v12 + 16) = a1;
  v14 = a1;
}

uint64_t get_enum_tag_for_layout_string_25TelephonyBlastDoorSupport13XMLTreeParserV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 24) & 0xF;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26D1E852C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 25))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 24);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26D1E8574(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_26D1E85BC(uint64_t result, unsigned int a2)
{
  v2 = a2 - 8;
  if (a2 >= 8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 8;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

void sub_26D1E85E8(char *a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E20, &qword_26D231368);
  v31 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E28, &qword_26D231370);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E30, &qword_26D231378);
  v32 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v29 = v26 - v13;
  v14 = &a1[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  if (!*(v14 + 1))
  {
    sub_26D1B7F48();
    swift_allocError();
    *v19 = 0xD000000000000022;
    *(v19 + 8) = 0x800000026D23B8B0;
    *(v19 + 16) = 0;
    *(v19 + 24) = 1;
    swift_willThrow();

    return;
  }

  v27 = v12;
  v28 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E38, &qword_26D231380);
  sub_26D22CEB4();
  sub_26D1E9200();
  sub_26D22CEA4();
  sub_26D22E534();

  v15 = v30;
  sub_26D22CED4();
  if (v15)
  {

    v16 = *(v31 + 8);
    v16(v6, v3);
    v16(v8, v3);
    v17 = v32;
    v18 = v27;
    (*(v32 + 56))(v11, 1, 1, v27);
  }

  else
  {

    v20 = *(v31 + 8);
    v20(v6, v3);
    v20(v8, v3);
    v18 = v27;
    v17 = v32;
  }

  if ((*(v17 + 48))(v11, 1, v18) == 1)
  {
    sub_26D1E9264(v11);
    sub_26D1B7F48();
    swift_allocError();
    *v21 = 0xD000000000000022;
    *(v21 + 8) = 0x800000026D23B8B0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 3;
    swift_willThrow();
LABEL_8:

    return;
  }

  v22 = v29;
  (*(v17 + 32))();
  swift_getKeyPath();
  sub_26D22CEE4();

  sub_26D22E5C4();
  if ((v23 & 1) == 0)
  {
    swift_getKeyPath();
    sub_26D22CEE4();

    sub_26D22E5C4();
    if ((v24 & 1) == 0)
    {
      sub_26D22E224();
      (*(v17 + 8))(v22, v18);
      goto LABEL_8;
    }
  }

  sub_26D1B7F48();
  swift_allocError();
  *v25 = 0xD000000000000022;
  *(v25 + 8) = 0x800000026D23B8B0;
  *(v25 + 16) = 0;
  *(v25 + 24) = 3;
  swift_willThrow();

  (*(v17 + 8))(v22, v18);
}

void sub_26D1E8C04(char *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_26D22E234();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v43 - v6;
  v7 = sub_26D22E1E4();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v47 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v12 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v53 = a1;
  v13 = *&a1[v12];
  v54 = v13 >> 62;
  v48 = v11;
  if (v13 >> 62)
  {
LABEL_44:
    v14 = sub_26D22E814();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v13 & 0xC000000000000001;
  v52 = v13 + 32;

  v16 = 0;
  while (v14 != v16)
  {
    if (v15)
    {
      v17 = MEMORY[0x26D6B6F50](v16, v13);
    }

    else
    {
      if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v17 = *(v13 + 8 * v16 + 32);
    }

    v18 = v17;

    v19 = sub_26D22E854();

    if (v19 < 2)
    {
      v14 = v16;
      break;
    }

    if (__OFADD__(v16++, 1))
    {
      goto LABEL_43;
    }
  }

  if (!v54)
  {
    if (v14 != *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_29:

    sub_26D1B7F48();
    swift_allocError();
    *v33 = 0xD00000000000001DLL;
    *(v33 + 8) = 0x800000026D23B890;
    *(v33 + 16) = 0;
    *(v33 + 24) = 1;
    swift_willThrow();

    return;
  }

  if (v14 == sub_26D22E814())
  {
    goto LABEL_29;
  }

LABEL_16:
  if (v15)
  {
    v21 = MEMORY[0x26D6B6F50](v14, v13);
  }

  else
  {
    if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_47;
    }

    v21 = *(v52 + 8 * v14);
  }

  v16 = v21;
  v22 = &v21[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];

  v23 = sub_26D22E854();

  if (!v23)
  {

    v34 = *v22;
    v24 = *(v22 + 1);
    v35 = *v22 == 0x6C637269433A7367 && v24 == 0xE900000000000065;
    if (v35 || (sub_26D22E964() & 1) != 0)
    {
      KeyPath = swift_getKeyPath();
      v28 = v16;
      v37 = sub_26D1BAC30(KeyPath, v28);

      v38 = v51;
      sub_26D1B76AC(v37, v49);
      v31 = v53;
      if (!v38)
      {

        v32 = v48;
        sub_26D22E214();

        v40 = MEMORY[0x277CF3058];
        goto LABEL_41;
      }

LABEL_36:

      return;
    }

    sub_26D1B7F48();
    swift_allocError();
    *v39 = v34;
LABEL_40:
    *(v39 + 8) = v24;
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    swift_willThrow();

    return;
  }

  if (v23 == 1)
  {

    v25 = *v22;
    v24 = *(v22 + 1);
    v26 = *v22 == 0x6E696F503A6C6D67 && v24 == 0xE900000000000074;
    if (v26 || (sub_26D22E964() & 1) != 0)
    {
      v27 = swift_getKeyPath();
      v28 = v16;
      v29 = sub_26D1BAC58(v27, v28);

      v30 = v51;
      sub_26D1B76AC(v29, v50);
      v31 = v53;
      if (!v30)
      {

        v32 = v47;
        sub_26D22E204();

        v40 = MEMORY[0x277CF3048];
LABEL_41:
        v42 = v44;
        v41 = v45;
        (*(v44 + 104))(v32, *v40, v45);
        (*(v42 + 32))(v46, v32, v41);
        return;
      }

      goto LABEL_36;
    }

    sub_26D1B7F48();
    swift_allocError();
    *v39 = v25;
    goto LABEL_40;
  }

LABEL_47:

  __break(1u);
}

unint64_t sub_26D1E9200()
{
  result = qword_2804E0E40;
  if (!qword_2804E0E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E0E20, &qword_26D231368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0E40);
  }

  return result;
}

uint64_t sub_26D1E9264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E28, &qword_26D231370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D1E92CC()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D1E9340(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D1E9464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D1E94FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D1E9554@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26D22E854();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_26D1E9620()
{
  result = qword_2804E0E48;
  if (!qword_2804E0E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0E48);
  }

  return result;
}

unint64_t sub_26D1E9678()
{
  result = qword_2804E0E50;
  if (!qword_2804E0E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0E50);
  }

  return result;
}

unint64_t sub_26D1E96D0()
{
  result = qword_2804E0E58;
  if (!qword_2804E0E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0E58);
  }

  return result;
}

unint64_t sub_26D1E9728()
{
  result = qword_2804E0E60;
  if (!qword_2804E0E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0E60);
  }

  return result;
}

unint64_t sub_26D1E9780()
{
  result = qword_2804E0E68;
  if (!qword_2804E0E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0E68);
  }

  return result;
}

unint64_t sub_26D1E9838()
{
  result = qword_2804E0E70;
  if (!qword_2804E0E70)
  {
    sub_26D22D284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0E70);
  }

  return result;
}

uint64_t sub_26D1E98FC()
{
  v0 = sub_26D22CF14();
  __swift_allocate_value_buffer(v0, qword_2804E0E78);
  __swift_project_value_buffer(v0, qword_2804E0E78);
  return sub_26D22CF04();
}

uint64_t sub_26D1E998C()
{
  v1 = *v0;
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](v1 + 1);
  return sub_26D22EA04();
}

uint64_t sub_26D1E9A04(uint64_t a1)
{
  v2 = *v1;
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](v2 + 1);
  return sub_26D22EA04();
}

uint64_t sub_26D1E9A48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D1EA044(*a1);
  *a2 = result;
  return result;
}

id sub_26D1E9A84(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_26D1EA9E4();
    v4 = sub_26D22E354();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_26D1E9B10(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26D1E9BDC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_26D1EA730(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26D1E9BDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26D1E9CE8(a5, a6);
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
    result = sub_26D22E7A4();
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

void *sub_26D1E9CE8(uint64_t a1, unint64_t a2)
{
  v3 = sub_26D1E9D34(a1, a2);
  sub_26D1E9E64(&unk_287E98D68);
  return v3;
}

void *sub_26D1E9D34(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26D1B988C(v5, 0);
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

  result = sub_26D22E7A4();
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
        v10 = sub_26D22E4B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26D1B988C(v10, 0);
        result = sub_26D22E724();
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

uint64_t sub_26D1E9E64(uint64_t result)
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

  result = sub_26D1E9F50(result, v11, 1, v3);
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

char *sub_26D1E9F50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0538, &qword_26D22F778);
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

uint64_t sub_26D1EA044(uint64_t a1)
{
  if ((a1 - 1) >= 0x10)
  {
    return 16;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_26D1EA058(uint64_t a1)
{
  if (sub_26D22D6A4() == a1)
  {
    return 0;
  }

  if (sub_26D22D534() == a1)
  {
    return 1;
  }

  if (sub_26D22D204() == a1)
  {
    return 2;
  }

  if (sub_26D22D914() == a1)
  {
    return 3;
  }

  if (sub_26D22D7F4() == a1)
  {
    return 4;
  }

  if (sub_26D22D7D4() == a1)
  {
    return 5;
  }

  if (sub_26D22D374() == a1)
  {
    return 6;
  }

  if (sub_26D22D4B4() == a1)
  {
    return 7;
  }

  if (sub_26D22D4F4() == a1)
  {
    return 8;
  }

  if (sub_26D22DED4() == a1)
  {
    return 9;
  }

  if (sub_26D22DAD4() == a1)
  {
    return 10;
  }

  if (sub_26D22D1E4() == a1)
  {
    return 11;
  }

  if (sub_26D22E294() == a1)
  {
    return 12;
  }

  return 16;
}

void sub_26D1EA1B0(uint64_t a1)
{
  v2 = type metadata accessor for RCSBlastDoorDecodingResultEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_2804E0478 != -1)
  {
    swift_once();
  }

  v5 = sub_26D22CF14();
  __swift_project_value_buffer(v5, qword_2804E0E78);
  v6 = sub_26D22CEF4();
  v7 = sub_26D22E5E4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_26D1E9B10(0xD00000000000002ELL, 0x800000026D23B920, aBlock);
    _os_log_impl(&dword_26D1AF000, v6, v7, "Sending event (lazily): %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D6B7800](v9, -1, -1);
    MEMORY[0x26D6B7800](v8, -1, -1);
  }

  else
  {
  }

  v10 = sub_26D22E3B4();
  sub_26D1EA78C(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_26D1EA90C(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  aBlock[4] = sub_26D1EA970;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26D1E9A84;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v13);
}

uint64_t sub_26D1EA464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSBlastDoorDecodingResultEvent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26D1EA058(a1);
  if (result != 16)
  {
    v8 = result;
    if (qword_2804E0478 != -1)
    {
      swift_once();
    }

    v9 = sub_26D22CF14();
    __swift_project_value_buffer(v9, qword_2804E0E78);
    v10 = sub_26D22CEF4();
    v11 = sub_26D22E5E4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315394;
      v14 = sub_26D22EA64();
      v16 = sub_26D1E9B10(v14, v15, &v18);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v8 + 1;
      _os_log_impl(&dword_26D1AF000, v10, v11, "Sending decoding result event for type: %s (%ld)", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x26D6B7800](v13, -1, -1);
      MEMORY[0x26D6B7800](v12, -1, -1);
    }

    sub_26D1EA664(a2, &v6[*(v4 + 20)]);
    *v6 = v8;
    sub_26D1EA1B0(v6);
    return sub_26D1EA6D4(v6);
  }

  return result;
}

uint64_t sub_26D1EA664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E90, &unk_26D231850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D1EA6D4(uint64_t a1)
{
  v2 = type metadata accessor for RCSBlastDoorDecodingResultEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D1EA730(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26D1EA78C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSBlastDoorDecodingResultEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D1EA7F0()
{
  v1 = type metadata accessor for RCSBlastDoorDecodingResultEvent(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 20);
  v7 = sub_26D22E2E4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6 + v4, 1, v7))
  {
    (*(v8 + 8))(v6 + v4, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26D1EA90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSBlastDoorDecodingResultEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26D1EA9E4()
{
  result = qword_2804E0E98;
  if (!qword_2804E0E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804E0E98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TelephonyPayloadType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TelephonyPayloadType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26D1EAB84()
{
  result = qword_2804E0EA0;
  if (!qword_2804E0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0EA0);
  }

  return result;
}