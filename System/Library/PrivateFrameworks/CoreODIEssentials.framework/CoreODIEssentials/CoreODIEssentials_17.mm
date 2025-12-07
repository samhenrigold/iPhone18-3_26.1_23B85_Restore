uint64_t sub_1DB08D2D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB08D34C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1DB08D3A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DB08D424()
{
  result = qword_1ECC0FDE8;
  if (!qword_1ECC0FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FDE8);
  }

  return result;
}

unint64_t sub_1DB08D47C()
{
  result = qword_1ECC0FDF0;
  if (!qword_1ECC0FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FDF0);
  }

  return result;
}

unint64_t sub_1DB08D4D4()
{
  result = qword_1ECC0FDF8;
  if (!qword_1ECC0FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FDF8);
  }

  return result;
}

unint64_t sub_1DB08D52C()
{
  result = qword_1ECC0FE00;
  if (!qword_1ECC0FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE00);
  }

  return result;
}

unint64_t sub_1DB08D584()
{
  result = qword_1ECC0FE08;
  if (!qword_1ECC0FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE08);
  }

  return result;
}

unint64_t sub_1DB08D5DC()
{
  result = qword_1ECC0FE10;
  if (!qword_1ECC0FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE10);
  }

  return result;
}

unint64_t sub_1DB08D634()
{
  result = qword_1ECC0FE18;
  if (!qword_1ECC0FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE18);
  }

  return result;
}

unint64_t sub_1DB08D68C()
{
  result = qword_1ECC0FE20;
  if (!qword_1ECC0FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE20);
  }

  return result;
}

unint64_t sub_1DB08D6E4()
{
  result = qword_1ECC0FE28;
  if (!qword_1ECC0FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE28);
  }

  return result;
}

unint64_t sub_1DB08D73C()
{
  result = qword_1ECC0FE30;
  if (!qword_1ECC0FE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE30);
  }

  return result;
}

unint64_t sub_1DB08D794()
{
  result = qword_1ECC0FE38;
  if (!qword_1ECC0FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE38);
  }

  return result;
}

unint64_t sub_1DB08D7EC()
{
  result = qword_1ECC0FE40;
  if (!qword_1ECC0FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE40);
  }

  return result;
}

unint64_t sub_1DB08D844()
{
  result = qword_1ECC0FE48;
  if (!qword_1ECC0FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE48);
  }

  return result;
}

unint64_t sub_1DB08D89C()
{
  result = qword_1ECC0FE50;
  if (!qword_1ECC0FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE50);
  }

  return result;
}

unint64_t sub_1DB08D8F4()
{
  result = qword_1ECC0FE58;
  if (!qword_1ECC0FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE58);
  }

  return result;
}

unint64_t sub_1DB08D94C()
{
  result = qword_1ECC0FE60;
  if (!qword_1ECC0FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE60);
  }

  return result;
}

unint64_t sub_1DB08D9A4()
{
  result = qword_1ECC0FE68;
  if (!qword_1ECC0FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE68);
  }

  return result;
}

unint64_t sub_1DB08D9FC()
{
  result = qword_1ECC0FE70;
  if (!qword_1ECC0FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE70);
  }

  return result;
}

unint64_t sub_1DB08DA54()
{
  result = qword_1ECC0FE78;
  if (!qword_1ECC0FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE78);
  }

  return result;
}

unint64_t sub_1DB08DAAC()
{
  result = qword_1ECC0FE80;
  if (!qword_1ECC0FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE80);
  }

  return result;
}

unint64_t sub_1DB08DB04()
{
  result = qword_1ECC0FE88;
  if (!qword_1ECC0FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE88);
  }

  return result;
}

unint64_t sub_1DB08DB5C()
{
  result = qword_1ECC0FE90;
  if (!qword_1ECC0FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE90);
  }

  return result;
}

unint64_t sub_1DB08DBB4()
{
  result = qword_1ECC0FE98;
  if (!qword_1ECC0FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE98);
  }

  return result;
}

unint64_t sub_1DB08DC0C()
{
  result = qword_1ECC0FEA0;
  if (!qword_1ECC0FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEA0);
  }

  return result;
}

unint64_t sub_1DB08DC64()
{
  result = qword_1ECC0FEA8;
  if (!qword_1ECC0FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEA8);
  }

  return result;
}

unint64_t sub_1DB08DCBC()
{
  result = qword_1ECC0FEB0;
  if (!qword_1ECC0FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEB0);
  }

  return result;
}

unint64_t sub_1DB08DD14()
{
  result = qword_1ECC0FEB8;
  if (!qword_1ECC0FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEB8);
  }

  return result;
}

unint64_t sub_1DB08DD6C()
{
  result = qword_1ECC0FEC0;
  if (!qword_1ECC0FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEC0);
  }

  return result;
}

unint64_t sub_1DB08DDC4()
{
  result = qword_1ECC0FEC8;
  if (!qword_1ECC0FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEC8);
  }

  return result;
}

unint64_t sub_1DB08DE1C()
{
  result = qword_1ECC0FED0;
  if (!qword_1ECC0FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FED0);
  }

  return result;
}

unint64_t sub_1DB08DE74()
{
  result = qword_1ECC0FED8;
  if (!qword_1ECC0FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FED8);
  }

  return result;
}

unint64_t sub_1DB08DECC()
{
  result = qword_1ECC0FEE0;
  if (!qword_1ECC0FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEE0);
  }

  return result;
}

unint64_t sub_1DB08DF24()
{
  result = qword_1ECC0FEE8;
  if (!qword_1ECC0FEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEE8);
  }

  return result;
}

unint64_t sub_1DB08DF7C()
{
  result = qword_1ECC0FEF0;
  if (!qword_1ECC0FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEF0);
  }

  return result;
}

unint64_t sub_1DB08DFD4()
{
  result = qword_1ECC0FEF8;
  if (!qword_1ECC0FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEF8);
  }

  return result;
}

unint64_t sub_1DB08E02C()
{
  result = qword_1ECC0FF00;
  if (!qword_1ECC0FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF00);
  }

  return result;
}

unint64_t sub_1DB08E084()
{
  result = qword_1ECC0FF08;
  if (!qword_1ECC0FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF08);
  }

  return result;
}

unint64_t sub_1DB08E0DC()
{
  result = qword_1ECC0FF10;
  if (!qword_1ECC0FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF10);
  }

  return result;
}

unint64_t sub_1DB08E134()
{
  result = qword_1ECC0FF18;
  if (!qword_1ECC0FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF18);
  }

  return result;
}

uint64_t sub_1DB08E188(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1E12801C0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      sub_1DB081F4C(&v12, v11, a4);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_1DB08E208(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7272456F6ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61567465736E75 && a2 == 0xEA00000000006575 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6974704F6C696ELL && a2 == 0xEB000000006C616ELL || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465696E6564 && a2 == 0xE600000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7463657078656E75 && a2 == 0xEF726F7272456465 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DB0CB590 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E69646F636E65 && a2 == 0xED0000726F727245 || (sub_1DB09E254() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DB0CB5B0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6369447974706D65 && a2 == 0xEF7972616E6F6974 || (sub_1DB09E254() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F727245636170 && a2 == 0xE800000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1DB09E254();

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

unint64_t sub_1DB08E57C()
{
  result = qword_1ECC0FF20;
  if (!qword_1ECC0FF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E448, &qword_1DB0A3110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF20);
  }

  return result;
}

uint64_t sub_1DB08E5F8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAF4062C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB08E648(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1DB08E6B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB08E718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DB08E778()
{
  result = qword_1ECC0FF40;
  if (!qword_1ECC0FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF40);
  }

  return result;
}

unint64_t sub_1DB08E7CC()
{
  result = qword_1ECC0FF70;
  if (!qword_1ECC0FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF70);
  }

  return result;
}

unint64_t sub_1DB08E820()
{
  result = qword_1ECC0FF88;
  if (!qword_1ECC0FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF88);
  }

  return result;
}

unint64_t sub_1DB08E874()
{
  result = qword_1ECC0FFB8;
  if (!qword_1ECC0FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FFB8);
  }

  return result;
}

unint64_t sub_1DB08E8C8()
{
  result = qword_1ECC0FFD0;
  if (!qword_1ECC0FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FFD0);
  }

  return result;
}

uint64_t sub_1DB08E91C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DB08E984()
{
  result = qword_1ECC10018;
  if (!qword_1ECC10018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10018);
  }

  return result;
}

unint64_t sub_1DB08E9D8()
{
  result = qword_1ECC10048;
  if (!qword_1ECC10048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10048);
  }

  return result;
}

unint64_t sub_1DB08EA2C()
{
  result = qword_1ECC10078;
  if (!qword_1ECC10078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10078);
  }

  return result;
}

unint64_t sub_1DB08EAB0()
{
  result = qword_1ECC10090;
  if (!qword_1ECC10090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10090);
  }

  return result;
}

unint64_t sub_1DB08EB04()
{
  result = qword_1ECC100A8;
  if (!qword_1ECC100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC100A8);
  }

  return result;
}

unint64_t sub_1DB08EB88()
{
  result = qword_1ECC100C0;
  if (!qword_1ECC100C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC100C0);
  }

  return result;
}

unint64_t sub_1DB08EC0C()
{
  result = qword_1ECC100D8;
  if (!qword_1ECC100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC100D8);
  }

  return result;
}

unint64_t sub_1DB08EC90()
{
  result = qword_1ECC100F0;
  if (!qword_1ECC100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC100F0);
  }

  return result;
}

unint64_t sub_1DB08ED14()
{
  result = qword_1ECC10120;
  if (!qword_1ECC10120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10120);
  }

  return result;
}

unint64_t sub_1DB08ED98()
{
  result = qword_1ECC10138;
  if (!qword_1ECC10138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10138);
  }

  return result;
}

uint64_t sub_1DB08EE24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C62756F44 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69727453 && a2 == 0xE600000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7630409 && a2 == 0xE300000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125892 && a2 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1819242306 && a2 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7961727241 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1819047246 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1DB08F060(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x645F73656E757469 && a2 == 0xEB00000000646973;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x645F64756F6C6369 && a2 == 0xEB00000000646973 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C707061 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB08F184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726556646C697562 && a2 == 0xEC0000006E6F6973;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6169726573 && a2 == 0xE600000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684628597 && a2 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684628325 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB08F2E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628325 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684628851 && a2 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB08F400(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6469636369 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1769172329 && a2 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6572506D69537369 && a2 == 0xEC000000746E6573)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB08F560(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61636F6C5F737067 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DB0CC0C0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0C1160 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0C1180 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1DB08F7B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697665447369 && a2 == 0xEE0064656B636F4CLL;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DB0C1300 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB0C1320 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614C656369766564 && a2 == 0xEE0065676175676ELL || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0C0FC0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DB08F980(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001DB0C1350 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DB0C1370 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DB0C1390 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1DB09E254();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DB08FAA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974614C656D6F68 && a2 == 0xEC00000065647574;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6F4C656D6F68 && a2 == 0xED00006564757469 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0CC060 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB0CC080 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C676E696C6C6962 && a2 == 0xEF65647574697461 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0CC0A0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746974614C636F64 && a2 == 0xEB00000000656475 || (sub_1DB09E254() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69676E6F4C636F64 && a2 == 0xEC00000065647574)
  {

    return 7;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1DB08FD5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x66657250656D616ELL && a2 == 0xEA00000000007869;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x66667553656D616ELL && a2 == 0xEA00000000007869 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D614E72656570 && a2 == 0xEE00786966657250 || (sub_1DB09E254() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696D614672656570 && a2 == 0xEE00656D614E796CLL || (sub_1DB09E254() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6576694772656570 && a2 == 0xED0000656D614E6ELL || (sub_1DB09E254() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6464694D72656570 && a2 == 0xEE00656D614E656CLL || (sub_1DB09E254() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656D614E72656570 && a2 == 0xEE00786966667553 || (sub_1DB09E254() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6B63694E72656570 && a2 == 0xEC000000656D616ELL)
  {

    return 11;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB09017C(void *a1)
{
  [a1 coordinate];
  v3 = v2;
  if (qword_1ECC0DFD8 != -1)
  {
    swift_once();
  }

  v4 = 0x64696C61766E69;
  v5 = qword_1ECC0E9F0;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v7 = [v5 stringFromNumber_];

  if (v7)
  {
    v8 = sub_1DB09D6C4();
  }

  else
  {
    v8 = 0x64696C61766E69;
  }

  MEMORY[0x1E127FE90](44, 0xE100000000000000);
  [a1 coordinate];
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v11 = [v5 stringFromNumber_];

  if (v11)
  {
    v4 = sub_1DB09D6C4();
    v13 = v12;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  MEMORY[0x1E127FE90](v4, v13);

  return v8;
}

uint64_t sub_1DB090324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF63DEC;

  return sub_1DB06B9B4(a1, v4, v5, v6);
}

unint64_t sub_1DB090428()
{
  result = qword_1ECC10150;
  if (!qword_1ECC10150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10150);
  }

  return result;
}

unint64_t sub_1DB09047C()
{
  result = qword_1ECC10158;
  if (!qword_1ECC10158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10158);
  }

  return result;
}

uint64_t sub_1DB0904D0(uint64_t a1)
{
  v4 = v1[3];
  v11 = v1[2];
  v5 = v1[4];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB075DEC(a1, v11, v4, v5, (v1 + 5), v6, v7, v8);
}

uint64_t sub_1DB090620(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DAF63DEC;

  return sub_1DB07DA08(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB090710(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAF63DEC;

  return sub_1DB07D274(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DB0907E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAF63DEC;

  return sub_1DB07C3D0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_240Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB090900(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAF63DEC;

  return sub_1DB07B0C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DB0909D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB07AE04(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DB090A9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB07A4E8(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_1DB090B70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB079BCC(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_1DB090C44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF63DEC;

  return sub_1DB079774(a1, v4, v5, v6);
}

uint64_t sub_1DB090CF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[18];
  v8 = v1[19];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB0790F0(a1, v4, v5, (v1 + 4), v6, (v1 + 13), v7, v8);
}

uint64_t sub_1DB090DD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB0787D4(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t objectdestroy_256Tm()
{
  swift_unknownObjectRelease();

  sub_1DB041AD8(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1DB090F54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB077CC4(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t objectdestroy_218Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, 40, 7);
}

uint64_t sub_1DB091080(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF63DEC;

  return sub_1DB077B28(a1, v4, v5, v6);
}

uint64_t sub_1DB091134(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAF63DEC;

  return sub_1DB0771F4(a1, v4, v5, v6, v7, (v1 + 6), v8, v9);
}

uint64_t sub_1DB09120C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF63DEC;

  return sub_1DB077A8C(a1, v4, v1 + 24);
}

uint64_t sub_1DB0912D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DAF63DEC;

  return sub_1DB0785F4(a1, v1);
}

uint64_t sub_1DB09136C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DEC;

  return sub_1DB079060();
}

uint64_t objectdestroy_288Tm()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB091448(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF63DEC;

  return sub_1DB0796D8(a1, v4, v1 + 24);
}

uint64_t sub_1DB0914F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DEC;

  return sub_1DB07A458();
}

uint64_t sub_1DB091590()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DEC;

  return sub_1DB07AD74();
}

uint64_t sub_1DB09162C(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF62CC4;

  return sub_1DB07BDF0(a1);
}

uint64_t sub_1DB0916DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DAF63DEC;

  return sub_1DB07CE64(a1, v1);
}

uint64_t sub_1DB091778()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DEC;

  return sub_1DB07D978();
}

uint64_t sub_1DB091814(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAF63DEC;

  return sub_1DB07E5A0(a1, v4, v5, v1 + 32);
}

uint64_t sub_1DB0918C4(uint64_t a1)
{
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF63DEC;

  return sub_1DB076400(a1, (v1 + 2), v4, v5, v6, v7);
}

unint64_t sub_1DB0919B0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;

  v4 = sub_1DB08E188(v3, sub_1DB09324C, &type metadata for GeocoderSource.AddressType, sub_1DB082DA0);

  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_1DAFF6FC4(*(v4 + 16), 0);
  v7 = sub_1DAFF7F6C();
  sub_1DAF333A4(v250[0]);
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:

    v6 = MEMORY[0x1E69E7CC0];
  }

  v8 = sub_1DAF3FDB4(MEMORY[0x1E69E7CC0]);
  v9 = v6[2];
  if (!v9)
  {
LABEL_312:

    return v8;
  }

  v10 = 32;
  v231 = v6;
  while (1)
  {
    if (*(v6 + v10) <= 1u)
    {
      if (!*(v6 + v10))
      {
        if (*(v2 + 16) && (v14 = sub_1DAF35210(0x31746565727473, 0xE700000000000000), (v15 & 1) != 0))
        {
          sub_1DAF3523C(*(v2 + 56) + 40 * v14, &v242);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
          v16 = swift_dynamicCast();
          if (v16)
          {
            v17 = v235;
          }

          else
          {
            v17 = 0;
          }

          if (v16)
          {
            v18 = *(&v235 + 1);
          }

          else
          {
            v18 = 0;
          }

          *&v224 = v17;
          *(&v224 + 1) = v18;
          if (!*(v2 + 16))
          {
            goto LABEL_85;
          }
        }

        else
        {
          v224 = 0uLL;
          if (!*(v2 + 16))
          {
            goto LABEL_85;
          }
        }

        v34 = sub_1DAF35210(0x32746565727473, 0xE700000000000000);
        if (v35)
        {
          sub_1DAF3523C(*(v2 + 56) + 40 * v34, &v242);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
          v36 = swift_dynamicCast();
          v37 = v235;
          if (!v36)
          {
            v37 = 0;
          }

          v222 = v37;
          if (v36)
          {
            v38 = *(&v235 + 1);
          }

          else
          {
            v38 = 0;
          }

LABEL_86:
          v223 = v8;
          if (*(v2 + 16) && (v54 = sub_1DAF35210(2037672291, 0xE400000000000000), (v55 & 1) != 0))
          {
            sub_1DAF3523C(*(v2 + 56) + 40 * v54, &v242);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
            v56 = swift_dynamicCast();
            v57 = v235;
            if (!v56)
            {
              v57 = 0;
            }

            v218 = v57;
            if (v56)
            {
              v58 = *(&v235 + 1);
            }

            else
            {
              v58 = 0;
            }

            if (!*(v2 + 16))
            {
              goto LABEL_159;
            }
          }

          else
          {
            v218 = 0;
            v58 = 0;
            if (!*(v2 + 16))
            {
              goto LABEL_159;
            }
          }

          v74 = sub_1DAF35210(0x6574617473, 0xE500000000000000);
          if (v75)
          {
            sub_1DAF3523C(*(v2 + 56) + 40 * v74, &v242);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
            v76 = swift_dynamicCast();
            if (v76)
            {
              v77 = v235;
            }

            else
            {
              v77 = 0;
            }

            if (v76)
            {
              v78 = *(&v235 + 1);
            }

            else
            {
              v78 = 0;
            }

            if (!*(v2 + 16))
            {
              goto LABEL_197;
            }

            goto LABEL_160;
          }

LABEL_159:
          v77 = 0;
          v78 = 0;
          if (!*(v2 + 16))
          {
            goto LABEL_197;
          }

LABEL_160:
          v94 = sub_1DAF35210(0x6F436C6174736F70, 0xEA00000000006564);
          if (v95)
          {
            sub_1DAF3523C(*(v2 + 56) + 40 * v94, &v242);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
            v96 = swift_dynamicCast();
            if (v96)
            {
              v97 = v235;
            }

            else
            {
              v97 = 0;
            }

            if (v96)
            {
              v98 = *(&v235 + 1);
            }

            else
            {
              v98 = 0;
            }

            v99 = *(v2 + 16);
            if (!v99)
            {
LABEL_254:
              v119 = 0;
              if (*(&v224 + 1))
              {
                goto LABEL_262;
              }

LABEL_255:
              if (v38 || v58 || v98 || v119)
              {
                goto LABEL_262;
              }

              v247 = 0u;
              v248 = 0u;
              v245 = 0u;
              v246 = 0u;
              v243 = 0u;
              v244 = 0u;
              v242 = 0u;
              sub_1DB0931F8(&v242);
              v8 = v223;
              v150 = sub_1DAF35670(0);
              if ((v151 & 1) == 0)
              {
                goto LABEL_311;
              }

              v152 = v150;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v234[0] = v223;
              v6 = v231;
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_297;
              }

LABEL_261:
              sub_1DAF3DC18();
              v8 = *&v234[0];
LABEL_297:
              v174 = (*(v8 + 56) + 112 * v152);
              v176 = v174[1];
              v175 = v174[2];
              v235 = *v174;
              v236 = v176;
              v237 = v175;
              v177 = v174[3];
              v178 = v174[4];
              v179 = v174[6];
              v240 = v174[5];
              v241 = v179;
              v238 = v177;
              v239 = v178;
              sub_1DB0810B0(v152, v8);
              sub_1DB0931F8(&v235);
              goto LABEL_10;
            }

LABEL_198:
            v116 = sub_1DAF35210(0x437972746E756F63, 0xEB0000000065646FLL);
            if ((v117 & 1) == 0)
            {
              v99 = 0;
              goto LABEL_254;
            }

            sub_1DAF3523C(*(v2 + 56) + 40 * v116, &v242);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
            v118 = swift_dynamicCast();
            v119 = *(&v235 + 1);
            v99 = v235;
            if (!v118)
            {
              v99 = 0;
              v119 = 0;
            }

            if (!*(&v224 + 1))
            {
              goto LABEL_255;
            }

LABEL_262:
            v235 = v224;
            *&v236 = v222;
            *(&v236 + 1) = v38;
            *&v237 = v218;
            *(&v237 + 1) = v58;
            *&v238 = v77;
            *(&v238 + 1) = v78;
            *&v239 = v97;
            *(&v239 + 1) = v98;
            *&v240 = v99;
            *(&v240 + 1) = v119;
            v241 = 0uLL;
            v242 = v224;
            *&v243 = v222;
            *(&v243 + 1) = v38;
            *&v244 = v218;
            *(&v244 + 1) = v58;
            *&v245 = v77;
            *(&v245 + 1) = v78;
            *&v246 = v97;
            *(&v246 + 1) = v98;
            *&v247 = v99;
            *(&v247 + 1) = v119;
            v248 = 0uLL;
            sub_1DAF406C8(&v235, v234);
            sub_1DB0931F8(&v242);
            v154 = swift_isUniquelyReferenced_nonNull_native();
            v233 = v223;
            v155 = sub_1DAF35670(0);
            v157 = v223[2];
            v158 = (v156 & 1) == 0;
            v159 = __OFADD__(v157, v158);
            v160 = v157 + v158;
            if (v159)
            {
              goto LABEL_314;
            }

            v161 = v156;
            if (v223[3] >= v160)
            {
              if ((v154 & 1) == 0)
              {
                v199 = v155;
                sub_1DAF3DC18();
                v155 = v199;
                if (v161)
                {
                  goto LABEL_305;
                }

                goto LABEL_300;
              }
            }

            else
            {
              sub_1DAF3AACC(v160, v154);
              v155 = sub_1DAF35670(0);
              if ((v161 & 1) != (v162 & 1))
              {
                goto LABEL_317;
              }
            }

            if (v161)
            {
              goto LABEL_305;
            }

LABEL_300:
            v8 = v223;
            v223[(v155 >> 6) + 8] |= 1 << v155;
            *(v223[6] + v155) = 0;
            v180 = (v223[7] + 112 * v155);
            v182 = v236;
            v181 = v237;
            *v180 = v235;
            v180[1] = v182;
            v180[2] = v181;
            v183 = v238;
            v184 = v239;
            v185 = v241;
            v180[5] = v240;
            v180[6] = v185;
            v180[3] = v183;
            v180[4] = v184;
            v186 = v223[2];
            v159 = __OFADD__(v186, 1);
            v187 = v186 + 1;
            if (v159)
            {
              goto LABEL_315;
            }

            goto LABEL_310;
          }

LABEL_197:
          v97 = 0;
          v98 = 0;
          v99 = *(v2 + 16);
          if (!v99)
          {
            goto LABEL_254;
          }

          goto LABEL_198;
        }

LABEL_85:
        v222 = 0;
        v38 = 0;
        goto LABEL_86;
      }

      if (*(v2 + 16) && (v24 = sub_1DAF35210(0xD000000000000016, 0x80000001DB0C1D20), (v25 & 1) != 0))
      {
        sub_1DAF3523C(*(v2 + 56) + 40 * v24, &v242);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
        v26 = swift_dynamicCast();
        v27 = v235;
        if (!v26)
        {
          v27 = 0;
        }

        v220 = v27;
        if (v26)
        {
          v28 = *(&v235 + 1);
        }

        else
        {
          v28 = 0;
        }

        v229 = v28;
        if (!*(v2 + 16))
        {
          goto LABEL_104;
        }
      }

      else
      {
        v220 = 0;
        v229 = 0;
        if (!*(v2 + 16))
        {
          goto LABEL_104;
        }
      }

      v44 = sub_1DAF35210(0xD000000000000016, 0x80000001DB0C1D40);
      if (v45)
      {
        sub_1DAF3523C(*(v2 + 56) + 40 * v44, &v242);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
        v46 = swift_dynamicCast();
        v47 = v235;
        if (!v46)
        {
          v47 = 0;
        }

        v216 = v47;
        if (v46)
        {
          v48 = *(&v235 + 1);
        }

        else
        {
          v48 = 0;
        }

        v226 = v48;
        if (!*(v2 + 16))
        {
          goto LABEL_141;
        }

        goto LABEL_105;
      }

LABEL_104:
      v216 = 0;
      v226 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_141;
      }

LABEL_105:
      v64 = sub_1DAF35210(0xD000000000000013, 0x80000001DB0C1CA0);
      if (v65)
      {
        sub_1DAF3523C(*(v2 + 56) + 40 * v64, &v242);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
        v66 = swift_dynamicCast();
        v67 = v235;
        if (!v66)
        {
          v67 = 0;
        }

        v213 = v67;
        if (v66)
        {
          v68 = *(&v235 + 1);
        }

        else
        {
          v68 = 0;
        }

        if (!*(v2 + 16))
        {
          goto LABEL_179;
        }

        goto LABEL_142;
      }

LABEL_141:
      v213 = 0;
      v68 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_179;
      }

LABEL_142:
      v84 = sub_1DAF35210(0xD000000000000014, 0x80000001DB0C1CC0);
      if (v85)
      {
        sub_1DAF3523C(*(v2 + 56) + 40 * v84, &v242);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
        v86 = swift_dynamicCast();
        v87 = v235;
        if (!v86)
        {
          v87 = 0;
        }

        v210 = v87;
        if (v86)
        {
          v88 = *(&v235 + 1);
        }

        else
        {
          v88 = 0;
        }

        if (!*(v2 + 16))
        {
          goto LABEL_213;
        }

LABEL_180:
        v106 = sub_1DAF35210(0xD000000000000019, 0x80000001DB0C1C80);
        if (v107)
        {
          sub_1DAF3523C(*(v2 + 56) + 40 * v106, &v242);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
          v108 = swift_dynamicCast();
          if (v108)
          {
            v109 = v235;
          }

          else
          {
            v109 = 0;
          }

          if (v108)
          {
            v110 = *(&v235 + 1);
          }

          else
          {
            v110 = 0;
          }

LABEL_214:
          v232 = v9;
          if (*(v2 + 16))
          {
            v105 = v8;
            v126 = sub_1DAF35210(0xD000000000000016, 0x80000001DB0C1CE0);
            if (v127)
            {
              sub_1DAF3523C(*(v2 + 56) + 40 * v126, &v242);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
              v128 = swift_dynamicCast();
              if (v128)
              {
                v129 = v235;
              }

              else
              {
                v129 = 0;
              }

              if (v128)
              {
                v130 = *(&v235 + 1);
              }

              else
              {
                v130 = 0;
              }

              v131 = *(v2 + 16);
              if (!v131)
              {
                goto LABEL_288;
              }

              goto LABEL_248;
            }
          }

          else
          {
            v105 = v8;
          }

          v129 = 0;
          v130 = 0;
          v131 = *(v2 + 16);
          if (!v131)
          {
            goto LABEL_288;
          }

LABEL_248:
          v146 = sub_1DAF35210(0xD00000000000001ALL, 0x80000001DB0C1D00);
          if (v147)
          {
            sub_1DAF3523C(*(v2 + 56) + 40 * v146, &v242);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
            v148 = swift_dynamicCast();
            v149 = *(&v235 + 1);
            v131 = v235;
            if (!v148)
            {
              v131 = 0;
              v149 = 0;
            }

            if (v229)
            {
LABEL_7:
              v249[0] = v220;
              v249[1] = v229;
              v249[2] = v216;
              v249[3] = v226;
              v249[4] = v213;
              v249[5] = v68;
              v249[6] = v210;
              v249[7] = v88;
              v249[8] = v109;
              v249[9] = v110;
              v249[10] = v129;
              v249[11] = v130;
              v249[12] = v131;
              v249[13] = v149;
              *&v242 = v220;
              *(&v242 + 1) = v229;
              *&v243 = v216;
              *(&v243 + 1) = v226;
              *&v244 = v213;
              *(&v244 + 1) = v68;
              *&v245 = v210;
              *(&v245 + 1) = v88;
              *&v246 = v109;
              *(&v246 + 1) = v110;
              *&v247 = v129;
              *(&v247 + 1) = v130;
              *&v248 = v131;
              *(&v248 + 1) = v149;
              sub_1DAF406C8(v249, &v235);
              sub_1DB0931F8(&v242);
              v11 = swift_isUniquelyReferenced_nonNull_native();
              *&v235 = v105;
              v12 = v249;
              v13 = 1;
LABEL_8:
              sub_1DAF3BF7C(v12, v13, v11);
              v8 = v235;
              goto LABEL_9;
            }

            goto LABEL_289;
          }

          v131 = 0;
LABEL_288:
          v149 = 0;
          if (v229)
          {
            goto LABEL_7;
          }

LABEL_289:
          if (v226 || v68 || v110 || v130 || v149)
          {
            goto LABEL_7;
          }

          v247 = 0u;
          v248 = 0u;
          v245 = 0u;
          v246 = 0u;
          v243 = 0u;
          v244 = 0u;
          v242 = 0u;
          sub_1DB0931F8(&v242);
          v163 = 1;
          goto LABEL_295;
        }

LABEL_213:
        v109 = 0;
        v110 = 0;
        goto LABEL_214;
      }

LABEL_179:
      v210 = 0;
      v88 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_213;
      }

      goto LABEL_180;
    }

    v232 = v9;
    if (*(v6 + v10) != 2)
    {
      break;
    }

    if (*(v2 + 16) && (v19 = sub_1DAF35210(0xD000000000000015, 0x80000001DB0C1C10), (v20 & 1) != 0))
    {
      sub_1DAF3523C(*(v2 + 56) + 40 * v19, &v242);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
      v21 = swift_dynamicCast();
      v22 = v235;
      if (!v21)
      {
        v22 = 0;
      }

      v219 = v22;
      if (v21)
      {
        v23 = *(&v235 + 1);
      }

      else
      {
        v23 = 0;
      }

      v228 = v23;
      if (!*(v2 + 16))
      {
LABEL_95:
        v215 = 0;
        v225 = 0;
        if (!*(v2 + 16))
        {
          goto LABEL_132;
        }

        goto LABEL_96;
      }
    }

    else
    {
      v219 = 0;
      v228 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_95;
      }
    }

    v39 = sub_1DAF35210(0xD000000000000015, 0x80000001DB0C1C30);
    if ((v40 & 1) == 0)
    {
      goto LABEL_95;
    }

    sub_1DAF3523C(*(v2 + 56) + 40 * v39, &v242);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    v41 = swift_dynamicCast();
    v42 = v235;
    if (!v41)
    {
      v42 = 0;
    }

    v215 = v42;
    if (v41)
    {
      v43 = *(&v235 + 1);
    }

    else
    {
      v43 = 0;
    }

    v225 = v43;
    if (!*(v2 + 16))
    {
LABEL_132:
      v212 = 0;
      v63 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_169;
      }

      goto LABEL_133;
    }

LABEL_96:
    v59 = sub_1DAF35210(0xD000000000000012, 0x80000001DB0C1B90);
    if ((v60 & 1) == 0)
    {
      goto LABEL_132;
    }

    sub_1DAF3523C(*(v2 + 56) + 40 * v59, &v242);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    v61 = swift_dynamicCast();
    v62 = v235;
    if (!v61)
    {
      v62 = 0;
    }

    v212 = v62;
    if (v61)
    {
      v63 = *(&v235 + 1);
    }

    else
    {
      v63 = 0;
    }

    if (!*(v2 + 16))
    {
LABEL_169:
      v209 = 0;
      v83 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_203;
      }

      goto LABEL_170;
    }

LABEL_133:
    v79 = sub_1DAF35210(0xD000000000000013, 0x80000001DB0C1BB0);
    if ((v80 & 1) == 0)
    {
      goto LABEL_169;
    }

    sub_1DAF3523C(*(v2 + 56) + 40 * v79, &v242);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    v81 = swift_dynamicCast();
    v82 = v235;
    if (!v81)
    {
      v82 = 0;
    }

    v209 = v82;
    if (v81)
    {
      v83 = *(&v235 + 1);
    }

    else
    {
      v83 = 0;
    }

    if (!*(v2 + 16))
    {
LABEL_203:
      v103 = 0;
      v104 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_178;
      }

      goto LABEL_204;
    }

LABEL_170:
    v100 = sub_1DAF35210(0xD000000000000018, 0x80000001DB0C1B70);
    if ((v101 & 1) == 0)
    {
      goto LABEL_203;
    }

    sub_1DAF3523C(*(v2 + 56) + 40 * v100, &v242);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    v102 = swift_dynamicCast();
    if (v102)
    {
      v103 = v235;
    }

    else
    {
      v103 = 0;
    }

    if (v102)
    {
      v104 = *(&v235 + 1);
    }

    else
    {
      v104 = 0;
    }

    if (!*(v2 + 16))
    {
LABEL_178:
      v105 = v8;
      goto LABEL_234;
    }

LABEL_204:
    v105 = v8;
    v120 = sub_1DAF35210(0xD000000000000015, 0x80000001DB0C1BD0);
    if (v121)
    {
      sub_1DAF3523C(*(v2 + 56) + 40 * v120, &v242);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
      v122 = swift_dynamicCast();
      if (v122)
      {
        v123 = v235;
      }

      else
      {
        v123 = 0;
      }

      if (v122)
      {
        v124 = *(&v235 + 1);
      }

      else
      {
        v124 = 0;
      }

      v125 = *(v2 + 16);
      if (!v125)
      {
        goto LABEL_267;
      }

      goto LABEL_235;
    }

LABEL_234:
    v123 = 0;
    v124 = 0;
    v125 = *(v2 + 16);
    if (!v125)
    {
      goto LABEL_267;
    }

LABEL_235:
    v138 = sub_1DAF35210(0xD000000000000019, 0x80000001DB0C1BF0);
    if (v139)
    {
      sub_1DAF3523C(*(v2 + 56) + 40 * v138, &v242);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
      v140 = swift_dynamicCast();
      v141 = *(&v235 + 1);
      v125 = v235;
      if (!v140)
      {
        v125 = 0;
        v141 = 0;
      }

      if (v228)
      {
LABEL_274:
        v250[0] = v219;
        v250[1] = v228;
        v250[2] = v215;
        v250[3] = v225;
        v250[4] = v212;
        v250[5] = v63;
        v250[6] = v209;
        v250[7] = v83;
        v250[8] = v103;
        v250[9] = v104;
        v250[10] = v123;
        v250[11] = v124;
        v250[12] = v125;
        v250[13] = v141;
        *&v242 = v219;
        *(&v242 + 1) = v228;
        *&v243 = v215;
        *(&v243 + 1) = v225;
        *&v244 = v212;
        *(&v244 + 1) = v63;
        *&v245 = v209;
        *(&v245 + 1) = v83;
        *&v246 = v103;
        *(&v246 + 1) = v104;
        *&v247 = v123;
        *(&v247 + 1) = v124;
        *&v248 = v125;
        *(&v248 + 1) = v141;
        sub_1DAF406C8(v250, &v235);
        sub_1DB0931F8(&v242);
        v11 = swift_isUniquelyReferenced_nonNull_native();
        *&v235 = v105;
        v12 = v250;
        v13 = 2;
        goto LABEL_8;
      }

      goto LABEL_268;
    }

    v125 = 0;
LABEL_267:
    v141 = 0;
    if (v228)
    {
      goto LABEL_274;
    }

LABEL_268:
    if (v225 || v63 || v104 || v124 || v141)
    {
      goto LABEL_274;
    }

    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    sub_1DB0931F8(&v242);
    v163 = 2;
LABEL_295:
    v8 = v105;
    v171 = sub_1DAF35670(v163);
    if (v172)
    {
      v152 = v171;
      v173 = swift_isUniquelyReferenced_nonNull_native();
      *&v234[0] = v105;
      v6 = v231;
      v9 = v232;
      if (v173)
      {
        goto LABEL_297;
      }

      goto LABEL_261;
    }

LABEL_9:
    v6 = v231;
    v9 = v232;
LABEL_10:
    ++v10;
    if (!--v9)
    {
      goto LABEL_312;
    }
  }

  if (*(v2 + 16) && (v29 = sub_1DAF35210(0xD000000000000010, 0x80000001DB0C1990), (v30 & 1) != 0))
  {
    sub_1DAF3523C(*(v2 + 56) + 40 * v29, &v242);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    v31 = swift_dynamicCast();
    v32 = v235;
    if (!v31)
    {
      v32 = 0;
    }

    v221 = v32;
    if (v31)
    {
      v33 = *(&v235 + 1);
    }

    else
    {
      v33 = 0;
    }

    v230 = v33;
    if (!*(v2 + 16))
    {
LABEL_113:
      v217 = 0;
      v227 = 0;
      if (*(v2 + 16))
      {
        goto LABEL_114;
      }

LABEL_150:
      v214 = 0;
      v73 = 0;
      if (*(v2 + 16))
      {
        goto LABEL_151;
      }

LABEL_187:
      v211 = 0;
      v93 = 0;
      if (*(v2 + 16))
      {
        goto LABEL_188;
      }

LABEL_224:
      v114 = 0;
      v115 = 0;
      if (*(v2 + 16))
      {
        goto LABEL_225;
      }

LABEL_196:
      v105 = v8;
      goto LABEL_240;
    }
  }

  else
  {
    v221 = 0;
    v230 = 0;
    if (!*(v2 + 16))
    {
      goto LABEL_113;
    }
  }

  v49 = sub_1DAF35210(0xD000000000000010, 0x80000001DB0C19B0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_113;
  }

  sub_1DAF3523C(*(v2 + 56) + 40 * v49, &v242);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v51 = swift_dynamicCast();
  v52 = v235;
  if (!v51)
  {
    v52 = 0;
  }

  v217 = v52;
  if (v51)
  {
    v53 = *(&v235 + 1);
  }

  else
  {
    v53 = 0;
  }

  v227 = v53;
  if (!*(v2 + 16))
  {
    goto LABEL_150;
  }

LABEL_114:
  v69 = sub_1DAF35210(0x746E656D75636F64, 0xED0000797469632ELL);
  if ((v70 & 1) == 0)
  {
    goto LABEL_150;
  }

  sub_1DAF3523C(*(v2 + 56) + 40 * v69, &v242);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v71 = swift_dynamicCast();
  v72 = v235;
  if (!v71)
  {
    v72 = 0;
  }

  v214 = v72;
  if (v71)
  {
    v73 = *(&v235 + 1);
  }

  else
  {
    v73 = 0;
  }

  if (!*(v2 + 16))
  {
    goto LABEL_187;
  }

LABEL_151:
  v89 = sub_1DAF35210(0x746E656D75636F64, 0xEE0065746174732ELL);
  if ((v90 & 1) == 0)
  {
    goto LABEL_187;
  }

  sub_1DAF3523C(*(v2 + 56) + 40 * v89, &v242);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v91 = swift_dynamicCast();
  v92 = v235;
  if (!v91)
  {
    v92 = 0;
  }

  v211 = v92;
  if (v91)
  {
    v93 = *(&v235 + 1);
  }

  else
  {
    v93 = 0;
  }

  if (!*(v2 + 16))
  {
    goto LABEL_224;
  }

LABEL_188:
  v111 = sub_1DAF35210(0xD000000000000013, 0x80000001DB0C19E0);
  if ((v112 & 1) == 0)
  {
    goto LABEL_224;
  }

  sub_1DAF3523C(*(v2 + 56) + 40 * v111, &v242);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v113 = swift_dynamicCast();
  if (v113)
  {
    v114 = v235;
  }

  else
  {
    v114 = 0;
  }

  if (v113)
  {
    v115 = *(&v235 + 1);
  }

  else
  {
    v115 = 0;
  }

  if (!*(v2 + 16))
  {
    goto LABEL_196;
  }

LABEL_225:
  v105 = v8;
  v132 = sub_1DAF35210(0xD000000000000010, 0x80000001DB0C1A00);
  if ((v133 & 1) == 0)
  {
LABEL_240:
    v135 = 0;
    v136 = 0;
    v137 = *(v2 + 16);
    if (v137)
    {
      goto LABEL_241;
    }

    goto LABEL_276;
  }

  sub_1DAF3523C(*(v2 + 56) + 40 * v132, &v242);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v134 = swift_dynamicCast();
  if (v134)
  {
    v135 = v235;
  }

  else
  {
    v135 = 0;
  }

  if (v134)
  {
    v136 = *(&v235 + 1);
  }

  else
  {
    v136 = 0;
  }

  v137 = *(v2 + 16);
  if (!v137)
  {
    goto LABEL_276;
  }

LABEL_241:
  v142 = sub_1DAF35210(0xD000000000000017, 0x80000001DB0C1A40);
  if ((v143 & 1) == 0)
  {
    v137 = 0;
LABEL_276:
    v145 = 0;
    if (v230)
    {
      goto LABEL_283;
    }

    goto LABEL_277;
  }

  sub_1DAF3523C(*(v2 + 56) + 40 * v142, &v242);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v144 = swift_dynamicCast();
  v145 = *(&v235 + 1);
  v137 = v235;
  if (!v144)
  {
    v137 = 0;
    v145 = 0;
  }

  if (!v230)
  {
LABEL_277:
    if (v227 || v73 || v115 || v136 || v145)
    {
      goto LABEL_283;
    }

    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    sub_1DB0931F8(&v242);
    v163 = 3;
    goto LABEL_295;
  }

LABEL_283:
  *&v235 = v221;
  *(&v235 + 1) = v230;
  *&v236 = v217;
  *(&v236 + 1) = v227;
  *&v237 = v214;
  *(&v237 + 1) = v73;
  *&v238 = v211;
  *(&v238 + 1) = v93;
  *&v239 = v114;
  *(&v239 + 1) = v115;
  *&v240 = v135;
  *(&v240 + 1) = v136;
  *&v241 = v137;
  *(&v241 + 1) = v145;
  *&v242 = v221;
  *(&v242 + 1) = v230;
  *&v243 = v217;
  *(&v243 + 1) = v227;
  *&v244 = v214;
  *(&v244 + 1) = v73;
  *&v245 = v211;
  *(&v245 + 1) = v93;
  *&v246 = v114;
  *(&v246 + 1) = v115;
  *&v247 = v135;
  *(&v247 + 1) = v136;
  *&v248 = v137;
  *(&v248 + 1) = v145;
  sub_1DAF406C8(&v235, v234);
  sub_1DB0931F8(&v242);
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v233 = v105;
  v155 = sub_1DAF35670(3);
  v166 = v105[2];
  v167 = (v165 & 1) == 0;
  v159 = __OFADD__(v166, v167);
  v168 = v166 + v167;
  if (!v159)
  {
    v169 = v165;
    if (v105[3] >= v168)
    {
      v9 = v232;
      if (v164)
      {
        goto LABEL_304;
      }

      v200 = v155;
      sub_1DAF3DC18();
      v155 = v200;
      if ((v169 & 1) == 0)
      {
        goto LABEL_309;
      }

LABEL_305:
      v8 = v233;
      v188 = (v233[7] + 112 * v155);
      v190 = v188[1];
      v189 = v188[2];
      v234[0] = *v188;
      v234[1] = v190;
      v234[2] = v189;
      v191 = v188[6];
      v193 = v188[3];
      v192 = v188[4];
      v234[5] = v188[5];
      v234[6] = v191;
      v234[3] = v193;
      v234[4] = v192;
      v194 = v235;
      v195 = v237;
      v188[1] = v236;
      v188[2] = v195;
      *v188 = v194;
      v196 = v238;
      v197 = v239;
      v198 = v241;
      v188[5] = v240;
      v188[6] = v198;
      v188[3] = v196;
      v188[4] = v197;
      sub_1DB0931F8(v234);
    }

    else
    {
      sub_1DAF3AACC(v168, v164);
      v155 = sub_1DAF35670(3);
      v9 = v232;
      if ((v169 & 1) != (v170 & 1))
      {
        goto LABEL_317;
      }

LABEL_304:
      if (v169)
      {
        goto LABEL_305;
      }

LABEL_309:
      v8 = v233;
      v233[(v155 >> 6) + 8] |= 1 << v155;
      *(v233[6] + v155) = 3;
      v201 = (v233[7] + 112 * v155);
      v203 = v236;
      v202 = v237;
      *v201 = v235;
      v201[1] = v203;
      v201[2] = v202;
      v204 = v238;
      v205 = v239;
      v206 = v241;
      v201[5] = v240;
      v201[6] = v206;
      v201[3] = v204;
      v201[4] = v205;
      v207 = v233[2];
      v159 = __OFADD__(v207, 1);
      v187 = v207 + 1;
      if (v159)
      {
        goto LABEL_316;
      }

LABEL_310:
      *(v8 + 16) = v187;
    }

LABEL_311:
    v6 = v231;
    goto LABEL_10;
  }

  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  result = sub_1DB09E2E4();
  __break(1u);
  return result;
}

unint64_t sub_1DB09324C()
{
  result = qword_1ECC10168;
  if (!qword_1ECC10168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10168);
  }

  return result;
}

uint64_t sub_1DB0932A0(uint64_t a1)
{
  v1 = *(a1 + 9);
  if (v1 <= 0xDB)
  {
    v2 = 219;
  }

  else
  {
    v2 = *(a1 + 9);
  }

  v3 = v2 - 219;
  if (v1 >= 0xD3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB0932C0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials21LocationProviderErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB0932FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB093358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1DB0934B8(uint64_t a1)
{
  result = sub_1DB09D154();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB093578(uint64_t a1)
{
  result = type metadata accessor for AnyODIKnownBinding.BindingContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB093630(void *a1)
{
  a1[1] = sub_1DB08E648(&qword_1ECC101A0, 255, type metadata accessor for AnyODIKnownBinding, &unk_1DB0BB4B4);
  a1[2] = sub_1DB08E648(&qword_1ECC101A8, 255, type metadata accessor for AnyODIKnownBinding, &unk_1DB0BB48C);
  result = sub_1DB08E648(&qword_1ECC101B0, 255, type metadata accessor for AnyODIKnownBinding, &unk_1DB0BB44C);
  a1[3] = result;
  return result;
}

unint64_t sub_1DB093738()
{
  result = qword_1ECC101C0;
  if (!qword_1ECC101C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101C0);
  }

  return result;
}

unint64_t sub_1DB093790()
{
  result = qword_1ECC101C8;
  if (!qword_1ECC101C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101C8);
  }

  return result;
}

unint64_t sub_1DB0937E8()
{
  result = qword_1ECC101D0;
  if (!qword_1ECC101D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101D0);
  }

  return result;
}

unint64_t sub_1DB093840()
{
  result = qword_1ECC101D8;
  if (!qword_1ECC101D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101D8);
  }

  return result;
}

unint64_t sub_1DB093898()
{
  result = qword_1ECC101E0;
  if (!qword_1ECC101E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101E0);
  }

  return result;
}

unint64_t sub_1DB0938F0()
{
  result = qword_1ECC101E8;
  if (!qword_1ECC101E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101E8);
  }

  return result;
}

unint64_t sub_1DB093948()
{
  result = qword_1ECC101F0;
  if (!qword_1ECC101F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101F0);
  }

  return result;
}

unint64_t sub_1DB0939A0()
{
  result = qword_1ECC101F8;
  if (!qword_1ECC101F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101F8);
  }

  return result;
}

unint64_t sub_1DB0939F8()
{
  result = qword_1ECC10200;
  if (!qword_1ECC10200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10200);
  }

  return result;
}

unint64_t sub_1DB093A50()
{
  result = qword_1ECC10208;
  if (!qword_1ECC10208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10208);
  }

  return result;
}

unint64_t sub_1DB093AA8()
{
  result = qword_1ECC10210;
  if (!qword_1ECC10210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10210);
  }

  return result;
}

unint64_t sub_1DB093B00()
{
  result = qword_1ECC10218;
  if (!qword_1ECC10218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10218);
  }

  return result;
}

unint64_t sub_1DB093B58()
{
  result = qword_1ECC10220;
  if (!qword_1ECC10220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10220);
  }

  return result;
}

unint64_t sub_1DB093BB0()
{
  result = qword_1ECC10228;
  if (!qword_1ECC10228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10228);
  }

  return result;
}

unint64_t sub_1DB093C08()
{
  result = qword_1ECC10230;
  if (!qword_1ECC10230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10230);
  }

  return result;
}

unint64_t sub_1DB093C60()
{
  result = qword_1ECC10238;
  if (!qword_1ECC10238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10238);
  }

  return result;
}

unint64_t sub_1DB093CB8()
{
  result = qword_1ECC10240;
  if (!qword_1ECC10240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10240);
  }

  return result;
}

unint64_t sub_1DB093D10()
{
  result = qword_1ECC10248;
  if (!qword_1ECC10248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10248);
  }

  return result;
}

unint64_t sub_1DB093D68()
{
  result = qword_1ECC10250;
  if (!qword_1ECC10250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10250);
  }

  return result;
}

unint64_t sub_1DB093DC0()
{
  result = qword_1ECC10258;
  if (!qword_1ECC10258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10258);
  }

  return result;
}

unint64_t sub_1DB093E18()
{
  result = qword_1ECC10260;
  if (!qword_1ECC10260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10260);
  }

  return result;
}

unint64_t sub_1DB093E70()
{
  result = qword_1ECC10268;
  if (!qword_1ECC10268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10268);
  }

  return result;
}

unint64_t sub_1DB093EC8()
{
  result = qword_1ECC10270;
  if (!qword_1ECC10270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10270);
  }

  return result;
}

unint64_t sub_1DB093F20()
{
  result = qword_1ECC10278;
  if (!qword_1ECC10278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10278);
  }

  return result;
}

unint64_t sub_1DB093F78()
{
  result = qword_1ECC10280;
  if (!qword_1ECC10280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10280);
  }

  return result;
}

unint64_t sub_1DB093FD0()
{
  result = qword_1ECC10288;
  if (!qword_1ECC10288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10288);
  }

  return result;
}

unint64_t sub_1DB094028()
{
  result = qword_1ECC10290;
  if (!qword_1ECC10290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10290);
  }

  return result;
}

unint64_t sub_1DB094080()
{
  result = qword_1ECC10298;
  if (!qword_1ECC10298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10298);
  }

  return result;
}

unint64_t sub_1DB0940D8()
{
  result = qword_1ECC102A0;
  if (!qword_1ECC102A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102A0);
  }

  return result;
}

unint64_t sub_1DB094130()
{
  result = qword_1ECC102A8;
  if (!qword_1ECC102A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102A8);
  }

  return result;
}

unint64_t sub_1DB094188()
{
  result = qword_1ECC102B0;
  if (!qword_1ECC102B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102B0);
  }

  return result;
}

unint64_t sub_1DB0941E0()
{
  result = qword_1ECC102B8;
  if (!qword_1ECC102B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102B8);
  }

  return result;
}

unint64_t sub_1DB094238()
{
  result = qword_1ECC102C0;
  if (!qword_1ECC102C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102C0);
  }

  return result;
}

unint64_t sub_1DB094290()
{
  result = qword_1ECC102C8;
  if (!qword_1ECC102C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102C8);
  }

  return result;
}

unint64_t sub_1DB0942E8()
{
  result = qword_1ECC102D0;
  if (!qword_1ECC102D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102D0);
  }

  return result;
}

unint64_t sub_1DB094340()
{
  result = qword_1ECC102D8;
  if (!qword_1ECC102D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102D8);
  }

  return result;
}

unint64_t sub_1DB094398()
{
  result = qword_1ECC102E0;
  if (!qword_1ECC102E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102E0);
  }

  return result;
}

unint64_t sub_1DB0943F0()
{
  result = qword_1ECC102E8;
  if (!qword_1ECC102E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102E8);
  }

  return result;
}

unint64_t sub_1DB094448()
{
  result = qword_1ECC102F0;
  if (!qword_1ECC102F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102F0);
  }

  return result;
}

unint64_t sub_1DB0944A0()
{
  result = qword_1ECC102F8;
  if (!qword_1ECC102F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102F8);
  }

  return result;
}

unint64_t sub_1DB0944F8()
{
  result = qword_1ECC10300;
  if (!qword_1ECC10300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10300);
  }

  return result;
}

unint64_t sub_1DB094550()
{
  result = qword_1ECC10308;
  if (!qword_1ECC10308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10308);
  }

  return result;
}

unint64_t sub_1DB0945A8()
{
  result = qword_1ECC10310;
  if (!qword_1ECC10310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10310);
  }

  return result;
}

unint64_t sub_1DB094600()
{
  result = qword_1ECC10318;
  if (!qword_1ECC10318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10318);
  }

  return result;
}

unint64_t sub_1DB094658()
{
  result = qword_1ECC10320;
  if (!qword_1ECC10320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10320);
  }

  return result;
}

unint64_t sub_1DB0946B0()
{
  result = qword_1ECC10328;
  if (!qword_1ECC10328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10328);
  }

  return result;
}

unint64_t sub_1DB094708()
{
  result = qword_1ECC10330;
  if (!qword_1ECC10330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10330);
  }

  return result;
}

unint64_t sub_1DB09475C()
{
  result = qword_1ECC10378;
  if (!qword_1ECC10378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10378);
  }

  return result;
}

unint64_t sub_1DB0947B0()
{
  result = qword_1ECC10380;
  if (!qword_1ECC10380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10380);
  }

  return result;
}

unint64_t sub_1DB094804()
{
  result = qword_1ECC10388;
  if (!qword_1ECC10388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10388);
  }

  return result;
}

unint64_t sub_1DB094858()
{
  result = qword_1ECC103A0;
  if (!qword_1ECC103A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC103A0);
  }

  return result;
}

unint64_t sub_1DB0948AC()
{
  result = qword_1ECC103A8;
  if (!qword_1ECC103A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC103A8);
  }

  return result;
}

unint64_t sub_1DB094900()
{
  result = qword_1ECC103B0;
  if (!qword_1ECC103B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC103B0);
  }

  return result;
}

unint64_t sub_1DB094954()
{
  result = qword_1ECC103B8;
  if (!qword_1ECC103B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC103B8);
  }

  return result;
}

unint64_t sub_1DB0949A8()
{
  result = qword_1ECC103C0;
  if (!qword_1ECC103C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC103C0);
  }

  return result;
}

uint64_t sub_1DB0949FC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC10390, &qword_1DB0BC678);
    sub_1DB08E648(a2, 255, type metadata accessor for AnyODIKnownBinding, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB094A9C()
{
  result = qword_1ECC10418;
  if (!qword_1ECC10418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10418);
  }

  return result;
}

unint64_t sub_1DB094B84()
{
  result = qword_1ECC10438;
  if (!qword_1ECC10438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10438);
  }

  return result;
}

unint64_t sub_1DB094BDC()
{
  result = qword_1ECC10440;
  if (!qword_1ECC10440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10440);
  }

  return result;
}

unint64_t sub_1DB094C34()
{
  result = qword_1ECC10448;
  if (!qword_1ECC10448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10448);
  }

  return result;
}

unint64_t sub_1DB094C8C()
{
  result = qword_1ECC10450;
  if (!qword_1ECC10450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10450);
  }

  return result;
}

unint64_t sub_1DB094CE4()
{
  result = qword_1ECC10458;
  if (!qword_1ECC10458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10458);
  }

  return result;
}

unint64_t sub_1DB094D3C()
{
  result = qword_1ECC10460;
  if (!qword_1ECC10460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10460);
  }

  return result;
}

unint64_t sub_1DB094D94()
{
  result = qword_1ECC10468;
  if (!qword_1ECC10468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10468);
  }

  return result;
}

unint64_t sub_1DB094DEC()
{
  result = qword_1ECC10470;
  if (!qword_1ECC10470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10470);
  }

  return result;
}

unint64_t sub_1DB094E44()
{
  result = qword_1ECC10478;
  if (!qword_1ECC10478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10478);
  }

  return result;
}

unint64_t sub_1DB094E9C()
{
  result = qword_1ECC10480;
  if (!qword_1ECC10480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10480);
  }

  return result;
}

unint64_t sub_1DB094EF4()
{
  result = qword_1ECC10488;
  if (!qword_1ECC10488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10488);
  }

  return result;
}

unint64_t sub_1DB094F4C()
{
  result = qword_1ECC10490;
  if (!qword_1ECC10490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10490);
  }

  return result;
}

unint64_t sub_1DB094FA4()
{
  result = qword_1ECC10498;
  if (!qword_1ECC10498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10498);
  }

  return result;
}

unint64_t sub_1DB094FFC()
{
  result = qword_1ECC104A0;
  if (!qword_1ECC104A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104A0);
  }

  return result;
}

unint64_t sub_1DB095054()
{
  result = qword_1ECC104A8;
  if (!qword_1ECC104A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104A8);
  }

  return result;
}

unint64_t sub_1DB0950AC()
{
  result = qword_1ECC104B0;
  if (!qword_1ECC104B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104B0);
  }

  return result;
}

unint64_t sub_1DB095104()
{
  result = qword_1ECC104B8;
  if (!qword_1ECC104B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104B8);
  }

  return result;
}

unint64_t sub_1DB09515C()
{
  result = qword_1ECC104C0;
  if (!qword_1ECC104C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104C0);
  }

  return result;
}

unint64_t sub_1DB0951B4()
{
  result = qword_1ECC104C8;
  if (!qword_1ECC104C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104C8);
  }

  return result;
}

unint64_t sub_1DB09520C()
{
  result = qword_1ECC104D0;
  if (!qword_1ECC104D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104D0);
  }

  return result;
}

unint64_t sub_1DB095264()
{
  result = qword_1ECC104D8;
  if (!qword_1ECC104D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104D8);
  }

  return result;
}

unint64_t sub_1DB0952BC()
{
  result = qword_1ECC104E0;
  if (!qword_1ECC104E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104E0);
  }

  return result;
}

unint64_t sub_1DB095314()
{
  result = qword_1ECC104E8;
  if (!qword_1ECC104E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104E8);
  }

  return result;
}

unint64_t sub_1DB09536C()
{
  result = qword_1ECC104F0;
  if (!qword_1ECC104F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104F0);
  }

  return result;
}

unint64_t sub_1DB0953C4()
{
  result = qword_1ECC104F8;
  if (!qword_1ECC104F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104F8);
  }

  return result;
}

unint64_t sub_1DB09541C()
{
  result = qword_1ECC10500;
  if (!qword_1ECC10500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10500);
  }

  return result;
}

uint64_t sub_1DB0954E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1DB09D3A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE301470 != -1)
  {
    swift_once();
  }

  v28[0] = xmmword_1EE30A010;
  v28[1] = *&byte_1EE30A020;
  v29 = byte_1EE30A030;
  result = sub_1DAFA5558(a1, a2, v28, v10);
  if (!v3)
  {
    sub_1DB096208();
    v12 = sub_1DB09D374();
    if (v13 >> 60 == 15)
    {
      sub_1DB096674();
      swift_allocError();
      *v14 = 5;
      swift_willThrow();
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      if (qword_1ECC0E108 != -1)
      {
        v21 = v12;
        v22 = v13;
        swift_once();
        v12 = v21;
        v13 = v22;
      }

      v26[0] = xmmword_1ECC25DE8;
      v26[1] = *&byte_1ECC25DF8;
      v27 = byte_1ECC25E08;
      v15 = v12;
      v16 = v13;
      sub_1DAFA577C(v12, v13, v26, v24);
      (*(v8 + 8))(v10, v7);
      result = sub_1DAF4AC40(v15, v16);
      v17 = v24[7];
      *(a3 + 96) = v24[6];
      *(a3 + 112) = v17;
      *(a3 + 128) = v25;
      v18 = v24[3];
      *(a3 + 32) = v24[2];
      *(a3 + 48) = v18;
      v19 = v24[5];
      *(a3 + 64) = v24[4];
      *(a3 + 80) = v19;
      v20 = v24[1];
      *a3 = v24[0];
      *(a3 + 16) = v20;
    }
  }

  return result;
}

uint64_t sub_1DB0957B4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E424();
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  sub_1DB09E214();
  if (!v5)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_1DAF40674(a2, a3);
    sub_1DAFEA608();
    sub_1DB09E224();
    sub_1DAF40780(a2, a3);
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_1DB09E224();
    sub_1DAF40780(0, 0xC000000000000000);
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_1DAF40674(a4, a5);
    sub_1DB09E224();
    sub_1DAF40780(a4, a5);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t sub_1DB095970()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0x65746365746F7270;
  }
}

uint64_t sub_1DB0959B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746365746F7270 && a2 == 0xE900000000000064;
  if (v6 || (sub_1DB09E254() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();

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

uint64_t sub_1DB095A94(uint64_t a1)
{
  v2 = sub_1DB096C40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB095AD0(uint64_t a1)
{
  v2 = sub_1DB096C40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB095B0C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DB096A14(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

__SecKey *sub_1DB095B5C(__SecCertificate *a1)
{
  result = SecCertificateCopyKey(a1);
  if (result)
  {
    v2 = result;
    v3 = SecKeyCopyAttributes(result);
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      v5 = 0;
      sub_1DB09D614();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DB095D90(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v44 = a1;
  v45 = a2;
  v37 = sub_1DB09D5F4();
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v43 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB09D564();
  v38 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DB09D584();
  v42 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DB09D5B4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a3;
  v47 = a4;
  sub_1DAF40674(a3, a4);
  result = sub_1DB09D5A4();
  if (!v6)
  {
    v20 = v43;
    v35 = v18;
    v36 = v16;
    v33 = v12;
    v34 = v13;
    v46 = v44;
    v47 = v45;
    sub_1DAF40674(v44, v45);
    sub_1DB09671C();
    v21 = v48;
    sub_1DB09D574();
    sub_1DB096770(&qword_1ECC0FAB8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    v22 = v20;
    v23 = v37;
    sub_1DB09D554();
    v25 = v40;
    v24 = v41;
    sub_1DAF40674(v40, v41);
    sub_1DB040F20(v25, v24, v22);
    sub_1DAF40780(v25, v24);
    v26 = v33;
    sub_1DB09D544();
    (*(v39 + 8))(v22, v23);
    sub_1DB096770(&qword_1ECC0FAB0, MEMORY[0x1E69663E0], MEMORY[0x1E69663D8]);
    v27 = v10;
    v28 = v35;
    v29 = sub_1DB09D594();
    v30 = v36;
    if ((v29 & 1) == 0)
    {
      sub_1DB096674();
      swift_allocError();
      *v31 = 4;
      swift_willThrow();
    }

    (*(v38 + 8))(v26, v27);
    (*(v42 + 8))(v21, v34);
    return (*(v30 + 8))(v28, v15);
  }

  return result;
}

void sub_1DB096208()
{
  v1 = sub_1DB09D394();
  if (v1)
  {
    v2 = sub_1DB009AC8(v1);
    if (v0)
    {
    }

    else
    {
      v4 = v2;

      sub_1DAF3EF40(MEMORY[0x1E69E7CC0]);
      v5 = sub_1DAFA7D80(v4, 10, 0);

      v6 = SecTrustCopyCertificateChain(v5);
      if (v6)
      {
        v7 = v6;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          type metadata accessor for SecCertificate(0);
          sub_1DB09D924();
        }
      }

      sub_1DB096674();
      swift_allocError();
      *v8 = 7;
      swift_willThrow();
    }
  }

  else
  {
    sub_1DB096674();
    swift_allocError();
    *v3 = 6;
    swift_willThrow();
  }
}

unint64_t sub_1DB096674()
{
  result = qword_1ECC10508;
  if (!qword_1ECC10508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10508);
  }

  return result;
}

unint64_t sub_1DB0966C8()
{
  result = qword_1ECC10510;
  if (!qword_1ECC10510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10510);
  }

  return result;
}

unint64_t sub_1DB09671C()
{
  result = qword_1ECC10518;
  if (!qword_1ECC10518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10518);
  }

  return result;
}

uint64_t sub_1DB096770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DB0967B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DB09680C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for COSEError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for COSEError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DB0969C0()
{
  result = qword_1ECC10520;
  if (!qword_1ECC10520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10520);
  }

  return result;
}

uint64_t sub_1DB096A14(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10528, &qword_1DB0BDA58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1DB096C40();
  sub_1DB09E414();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v14 = 0;
    sub_1DAFEA408();
    sub_1DB09E0C4();
    v7 = v12;
    v9 = v13;
    v14 = 1;
    sub_1DB09E0C4();
    (*(v4 + 8))(v6, v3);
    v10 = v12;
    v11 = v13;
    sub_1DAF40674(v7, v9);
    sub_1DAF40674(v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1DAF40780(v7, v9);
    sub_1DAF40780(v10, v11);
  }

  return v7;
}

unint64_t sub_1DB096C40()
{
  result = qword_1ECC10530;
  if (!qword_1ECC10530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10530);
  }

  return result;
}

unint64_t sub_1DB096CA8()
{
  result = qword_1ECC10538;
  if (!qword_1ECC10538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10538);
  }

  return result;
}

unint64_t sub_1DB096D00()
{
  result = qword_1ECC10540;
  if (!qword_1ECC10540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10540);
  }

  return result;
}

unint64_t sub_1DB096D58()
{
  result = qword_1ECC10548;
  if (!qword_1ECC10548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10548);
  }

  return result;
}

Swift::Bool __swiftcall NSUserDefaults.internalBool(forKey:)(Swift::String forKey)
{
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 != 1)
  {
    return 0;
  }

  v2 = sub_1DB09D6B4();
  v3 = [v1 BOOLForKey_];

  return v3;
}

Swift::String_optional __swiftcall NSUserDefaults.internalString(forKey:)(Swift::String forKey)
{
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 == 1 && (v2 = sub_1DB09D6B4(), v3 = [v1 stringForKey_], v2, v3))
  {
    v4 = sub_1DB09D6C4();
    v6 = v5;

    v7 = v6;
    v8 = v4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_1DB096F24(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 != 1)
  {
    return 0;
  }

  v4 = sub_1DB09D6B4();
  v5 = [v3 stringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1DB09D6C4();

  return v6;
}

Swift::Int_optional __swiftcall NSUserDefaults.internalInt(forKey:)(Swift::String forKey)
{
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 == 1)
  {
    v2 = sub_1DB09D6B4();
    v3 = [v1 stringForKey_];

    if (v3)
    {
      v4 = sub_1DB09D6C4();
      v6 = v5;

      v8 = HIBYTE(v6) & 0xF;
      v9 = v4 & 0xFFFFFFFFFFFFLL;
      if ((v6 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v6) & 0xF;
      }

      else
      {
        v10 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        if ((v6 & 0x1000000000000000) != 0)
        {
          v33 = 0;
          v12 = sub_1DB04059C(v4, v6, 10);
          v30 = v31;
LABEL_67:

          if (v30)
          {
            v7 = 0;
          }

          else
          {
            v7 = v12;
          }

          goto LABEL_72;
        }

        if ((v6 & 0x2000000000000000) != 0)
        {
          v32[0] = v4;
          v32[1] = v6 & 0xFFFFFFFFFFFFFFLL;
          if (v4 == 43)
          {
            if (v8)
            {
              if (--v8)
              {
                v12 = 0;
                v22 = v32 + 1;
                while (1)
                {
                  v23 = *v22 - 48;
                  if (v23 > 9)
                  {
                    break;
                  }

                  v24 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    break;
                  }

                  v12 = v24 + v23;
                  if (__OFADD__(v24, v23))
                  {
                    break;
                  }

                  ++v22;
                  if (!--v8)
                  {
                    goto LABEL_66;
                  }
                }
              }

              goto LABEL_65;
            }

LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          if (v4 != 45)
          {
            if (v8)
            {
              v12 = 0;
              v27 = v32;
              while (1)
              {
                v28 = *v27 - 48;
                if (v28 > 9)
                {
                  break;
                }

                v29 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  break;
                }

                v12 = v29 + v28;
                if (__OFADD__(v29, v28))
                {
                  break;
                }

                ++v27;
                if (!--v8)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_65;
          }

          if (v8)
          {
            if (--v8)
            {
              v12 = 0;
              v16 = v32 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  break;
                }

                v18 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  break;
                }

                v12 = v18 - v17;
                if (__OFSUB__(v18, v17))
                {
                  break;
                }

                ++v16;
                if (!--v8)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_65;
          }
        }

        else
        {
          if ((v4 & 0x1000000000000000) != 0)
          {
            v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v7 = sub_1DB09DEC4();
          }

          v11 = *v7;
          if (v11 == 43)
          {
            if (v9 >= 1)
            {
              v8 = v9 - 1;
              if (v9 != 1)
              {
                v12 = 0;
                if (v7)
                {
                  v19 = v7 + 1;
                  while (1)
                  {
                    v20 = *v19 - 48;
                    if (v20 > 9)
                    {
                      goto LABEL_65;
                    }

                    v21 = 10 * v12;
                    if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                    {
                      goto LABEL_65;
                    }

                    v12 = v21 + v20;
                    if (__OFADD__(v21, v20))
                    {
                      goto LABEL_65;
                    }

                    ++v19;
                    if (!--v8)
                    {
                      goto LABEL_66;
                    }
                  }
                }

                goto LABEL_57;
              }

              goto LABEL_65;
            }

            goto LABEL_77;
          }

          if (v11 != 45)
          {
            if (v9)
            {
              v12 = 0;
              if (v7)
              {
                while (1)
                {
                  v25 = *v7 - 48;
                  if (v25 > 9)
                  {
                    goto LABEL_65;
                  }

                  v26 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    goto LABEL_65;
                  }

                  v12 = v26 + v25;
                  if (__OFADD__(v26, v25))
                  {
                    goto LABEL_65;
                  }

                  ++v7;
                  if (!--v9)
                  {
                    goto LABEL_57;
                  }
                }
              }

              goto LABEL_57;
            }

LABEL_65:
            v12 = 0;
            LOBYTE(v8) = 1;
            goto LABEL_66;
          }

          if (v9 >= 1)
          {
            v8 = v9 - 1;
            if (v9 != 1)
            {
              v12 = 0;
              if (v7)
              {
                v13 = v7 + 1;
                while (1)
                {
                  v14 = *v13 - 48;
                  if (v14 > 9)
                  {
                    goto LABEL_65;
                  }

                  v15 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    goto LABEL_65;
                  }

                  v12 = v15 - v14;
                  if (__OFSUB__(v15, v14))
                  {
                    goto LABEL_65;
                  }

                  ++v13;
                  if (!--v8)
                  {
                    goto LABEL_66;
                  }
                }
              }

LABEL_57:
              LOBYTE(v8) = 0;
LABEL_66:
              v33 = v8;
              v30 = v8;
              goto LABEL_67;
            }

            goto LABEL_65;
          }

          __break(1u);
        }

        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }
    }
  }

  v7 = 0;
  v30 = 1;
LABEL_72:
  LOBYTE(v9) = v30 & 1;
LABEL_79:
  result.is_nil = v9;
  result.value = v7;
  return result;
}

void __swiftcall NSUserDefaults.internalFloat(forKey:)(Swift::Float_optional *__return_ptr retstr, Swift::String forKey)
{
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 == 1)
  {
    v3 = sub_1DB09D6B4();
    v4 = [v2 stringForKey_];

    if (v4)
    {
      v5 = sub_1DB09D6C4();
      v7 = v6;

      v8 = 0;
      sub_1DB09761C(v5, v7, &v8);
    }
  }
}

uint64_t static NSUserDefaults.globalInternalBool(forKey:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EE301DD8 != -1)
  {
    v10 = a1;
    v11 = a2;
    swift_once();
    a1 = v10;
    a2 = v11;
  }

  if (byte_1EE30A140 == 1)
  {
    v2 = a1;
    v3 = a2;
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = [v4 persistentDomainForName_];

    if (v5)
    {
      v6 = sub_1DB09D624();

      if (v6)
      {
        if (*(v6 + 16) && (v7 = sub_1DAF35210(v2, v3), (v8 & 1) != 0))
        {
          sub_1DAF409DC(*(v6 + 56) + 32 * v7, v13);

          if (swift_dynamicCast())
          {
            return v12;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

BOOL sub_1DB09761C(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1DB09DE14();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_1DB097714@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
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

void sub_1DB098C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB098E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB099178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB0993EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB099650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB0999CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_1DB099C58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1DB099F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DB09A20C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1DB09A5B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1DB09A9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB09AC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB09AEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB09B12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB09B37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB09B5CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1DB09B7F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1DB09BA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}